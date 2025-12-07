void sub_1BD53487C()
{
  v1 = v0;
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8, &qword_1BE0C8378);
  v6 = *v0;
  v7 = sub_1BE0537D4();
  v15 = v7;
  if (*(v6 + 16))
  {
    v16 = (v7 + 56);
    v17 = v6 + 56;
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v6 || v16 >= v17 + 8 * v18)
    {
      memmove(v16, (v6 + 56), 8 * v18);
    }

    v19 = 0;
    *(v15 + 16) = *(v6 + 16);
    v20 = 1 << *(v6 + 32);
    v21 = *(v6 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_14:
        v28 = *(v3 + 72) * (v25 | (v19 << 6));
        sub_1BD133398(*(v6 + 48) + v28, v5, type metadata accessor for AvailablePass);
        sub_1BD2AF470(v5, *(v15 + 48) + v28, type metadata accessor for AvailablePass);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_16;
      }

      v27 = *(v17 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v6, v8, v9, v10, v11, v12, v13, v14;
    *v1 = v15;
  }
}

void sub_1BD534A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708, &unk_1BE0DFB20);
  v2 = *v0;
  v3 = sub_1BE0537D4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 56 + 8 * v13)
    {
      memmove(v12, (v2 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v2 + 56);
    for (i = (v16 + 63) >> 6; v18; *(*(v11 + 48) + 8 * v21) = *(*(v2 + 48) + 8 * v21))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = v20 | (v15 << 6);
LABEL_17:
      ;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= i)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 56 + 8 * v15);
      ++v22;
      if (v23)
      {
        v18 = (v23 - 1) & v23;
        v21 = __clz(__rbit64(v23)) | (v15 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_1BD534C40(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1BE0537D4();
  v20 = v12;
  if (*(v11 + 16))
  {
    v34 = v6;
    v21 = (v12 + 56);
    v22 = ((1 << *(v20 + 32)) + 63) >> 6;
    if (v20 != v11 || v21 >= v11 + 56 + 8 * v22)
    {
      memmove(v21, (v11 + 56), 8 * v22);
    }

    v24 = 0;
    *(v20 + 16) = *(v11 + 16);
    v25 = 1 << *(v11 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v11 + 56);
    v28 = (v25 + 63) >> 6;
    v35 = v8 + 32;
    v36 = v8 + 16;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v32 = *(v8 + 72) * (v29 | (v24 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v32, v7);
      (*(v8 + 32))(*(v20 + 48) + v32, v10, v7);
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        v11, v13, v14, v15, v16, v17, v18, v19;
        v6 = v34;
        goto LABEL_21;
      }

      v31 = *(v11 + 56 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v11, v13, v14, v15, v16, v17, v18, v19;
LABEL_21:
    *v6 = v20;
  }
}

void sub_1BD534E8C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0537D4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 56 + 8 * v15)
    {
      memmove(v14, (v4 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v4 + 56);
    for (i = (v18 + 63) >> 6; v20; *(*(v13 + 48) + v23) = *(*(v4 + 48) + v23))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v23 = v22 | (v17 << 6);
LABEL_17:
      ;
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= i)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 56 + 8 * v17);
      ++v24;
      if (v25)
      {
        v20 = (v25 - 1) & v25;
        v23 = __clz(__rbit64(v25)) | (v17 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}

void sub_1BD534FE4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_1BE048C84();
    v15 = 0;
    if (v6)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1BD535538(*(*(a1 + 48) + (v17 | (v16 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v16);
      ++v15;
      if (v6)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    a1, v8, v9, v10, v11, v12, v13, v14;
  }
}

void sub_1BD5350D8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_1BE048C84();
    v15 = 0;
    if (v6)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * v17)));
        v19 = sub_1BD5357B0(v18);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v16);
      ++v15;
      if (v6)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    a1, v8, v9, v10, v11, v12, v13, v14;
  }
}

void sub_1BD5351F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - v4;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 64);
    v13 = (v10 + 63) >> 6;
    v24[0] = v7 + 8;
    v24[1] = v7 + 16;
    sub_1BE048C84();
    v21 = 0;
    while (v12)
    {
      v22 = v21;
LABEL_10:
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v23 | (v22 << 6)), v6);
      sub_1BD535CDC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1BD0DE53C(v5, &qword_1EBD39980, &qword_1BE0BF3C0);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v13)
      {
        a1, v14, v15, v16, v17, v18, v19, v20;
        return;
      }

      v12 = *(a1 + 64 + 8 * v22);
      ++v21;
      if (v12)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BD53540C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_1BE048C84();
    v15 = 0;
    if (v6)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = (*(a1 + 48) + ((v16 << 10) | (16 * v17)));
        v19 = *v18;
        v20 = v18[1];
        sub_1BE048C84();
        sub_1BD535BA0(v19, v20);
        v22 = v21;
        v20, v21, v23, v24, v25, v26, v27, v28;
        v22, v29, v30, v31, v32, v33, v34, v35;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v16);
      ++v15;
      if (v6)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    a1, v8, v9, v10, v11, v12, v13, v14;
  }
}

uint64_t sub_1BD535538(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1BE053D04();
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xEE00415049506165;
    }

    else
    {
      v5 = 0x80000001BE117610;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_1BE053D64();
  v20 = -1 << *(v4 + 32);
  v21 = v13 & ~v20;
  if (((*(v4 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 3;
  }

  v22 = ~v20;
  while (!*(*(v4 + 48) + v21))
  {
    v24 = 0xE400000000000000;
    v23 = 1919968359;
    v25 = a1;
    if (!a1)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v25 == 1)
    {
      v26 = 0x726F4B6874756F73;
    }

    else
    {
      v26 = 0xD000000000000010;
    }

    if (v25 == 1)
    {
      v27 = 0xEE00415049506165;
    }

    else
    {
      v27 = 0x80000001BE117610;
    }

    if (v23 == v26)
    {
      goto LABEL_23;
    }

LABEL_24:
    v28 = sub_1BE053B84();
    v24, v29, v30, v31, v32, v33, v34, v35;
    v27, v36, v37, v38, v39, v40, v41, v42;
    if (v28)
    {
      goto LABEL_28;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v4 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 3;
    }
  }

  if (*(*(v4 + 48) + v21) == 1)
  {
    v23 = 0x726F4B6874756F73;
    v24 = 0xEE00415049506165;
    v25 = a1;
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v23 = 0xD000000000000010;
  v24 = 0x80000001BE117610;
  v25 = a1;
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_22:
  v27 = 0xE400000000000000;
  v26 = 1919968359;
  if (v23 != 1919968359)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (v24 != v27)
  {
    goto LABEL_24;
  }

  v24, v14, v26, v15, v16, v17, v18, v19;
  v27, v44, v45, v46, v47, v48, v49, v50;
LABEL_28:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v2;
  v54 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD534E8C(&unk_1EBD40640, &qword_1BE0C82F8);
    v52 = v54;
  }

  v43 = *(*(v52 + 48) + v21);
  sub_1BD5360C4(v21);
  *v2 = v54;
  return v43;
}

uint64_t sub_1BD5357B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BE052434();
  v5 = v4;
  sub_1BE053D04();
  sub_1BE052524();
  v6 = sub_1BE053D64();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = -1 << *(v3 + 32);
  v15 = v6 & ~v14;
  if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = sub_1BE052434();
    v19 = v18;
    v21 = sub_1BE052434();
    v27 = v17;
    v28 = v20;
    if (v27 == v21 && v19 == v20)
    {
      break;
    }

    v30 = sub_1BE053B84();
    v19, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    if (v30)
    {
      goto LABEL_11;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  v19, v20, v21, v22, v23, v24, v25, v26;
  v28, v46, v47, v48, v49, v50, v51, v52;
LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v2;
  v56 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD534488(&unk_1EBD406A0, &unk_1BE0DF7E0);
    v54 = v56;
  }

  v45 = *(*(v54 + 48) + 8 * v15);
  sub_1BD5362E0(v15);
  *v2 = v56;
  return v45;
}

uint64_t sub_1BD535950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BE053D04();
  sub_1BD49C81C();
  v12 = v11;
  sub_1BE052524();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1BE053D64();
  v21 = -1 << *(v10 + 32);
  v22 = v20 & ~v21;
  if ((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v31 = v3;
    v32 = v6;
    v33 = a2;
    v23 = ~v21;
    v24 = *(v7 + 72);
    while (1)
    {
      sub_1BD133398(*(v10 + 48) + v24 * v22, v9, type metadata accessor for AvailablePass);
      v25 = sub_1BD498D50(v9, a1);
      sub_1BD2AF4D8(v9, type metadata accessor for AvailablePass);
      if (v25)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        v26 = 1;
        a2 = v33;
        goto LABEL_10;
      }
    }

    v27 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v27;
    v34 = *v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BD53487C();
      v29 = v34;
    }

    a2 = v33;
    sub_1BD2AF470(*(v29 + 48) + v24 * v22, v33, type metadata accessor for AvailablePass);
    sub_1BD5364C0(v22);
    v26 = 0;
    *v27 = v34;
LABEL_10:
    v6 = v32;
  }

  else
  {
    v26 = 1;
  }

  return (*(v7 + 56))(a2, v26, 1, v6);
}

uint64_t sub_1BD535BA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  sub_1BE052524();
  v6 = sub_1BE053D64();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BE053B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD5345C8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1BD5368F0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1BD535CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1BE052284();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1BD538AA4(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1BE052334();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BD534C40(MEMORY[0x1E69695A8], &qword_1EBD406F0, &qword_1BE0C8370);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1BD536AB4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1BD535FA8(uint64_t a1)
{
  v3 = *v1;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1);
  v4 = sub_1BE053D64();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD53474C(&qword_1EBD40678, &unk_1BE0C8320);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1BD536DBC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_1BD5360C4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(*(v3 + 48) + v6);
        sub_1BE053D04();
        if (v17)
        {
          if (v17 == 1)
          {
            v18 = 0xEE00415049506165;
          }

          else
          {
            v18 = 0x80000001BE117610;
          }
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        sub_1BE052524();
        v18, v19, v20, v21, v22, v23, v24, v25;
        v26 = sub_1BE053D64() & v7;
        if (v2 >= v16)
        {
          if (v26 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v26 >= v16)
        {
          goto LABEL_16;
        }

        if (v2 >= v26)
        {
LABEL_16:
          v27 = *(v3 + 48);
          v28 = (v27 + v2);
          v29 = (v27 + v6);
          if (v2 != v6 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v3 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v32;
    ++*(v3 + 36);
  }
}

void sub_1BD5362E0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v6);
        sub_1BE052434();
        v19 = v18;
        sub_1BE053D04();
        v20 = v17;
        sub_1BE052524();
        v21 = sub_1BE053D64();
        v19, v22, v23, v24, v25, v26, v27, v28;

        v29 = v21 & v7;
        if (v2 >= v16)
        {
          if (v29 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v29 >= v16)
        {
          goto LABEL_11;
        }

        if (v2 >= v29)
        {
LABEL_11:
          v30 = *(v3 + 48);
          v31 = (v30 + 8 * v2);
          v32 = (v30 + 8 * v6);
          if (v2 != v6 || v31 >= v32 + 1)
          {
            *v31 = *v32;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v3 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v35;
    ++*(v3 + 36);
  }
}

void sub_1BD5364C0(int64_t a1)
{
  v3 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v53);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for AvailablePass(0);
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    sub_1BE048964();
    v15 = sub_1BE053684();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v50 = (v15 + 1) & v14;
      v51 = v14;
      v23 = *(v7 + 72);
      v52 = v11;
      v49 = v23;
      while (1)
      {
        v24 = v23 * v13;
        sub_1BD133398(*(v10 + 48) + v23 * v13, v9, type metadata accessor for AvailablePass);
        sub_1BE053D04();
        sub_1BD133398(v9, v6, type metadata accessor for WrappedPass);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v26 = *v6;
          v27 = [*v6 passIdentifier];
          if (!v27)
          {
            goto LABEL_28;
          }

LABEL_12:
          v28 = v27;
          sub_1BE052434();
          v30 = v29;

          goto LABEL_14;
        }

        v31 = v47;
        sub_1BD2AF470(v6, v47, type metadata accessor for PlaceholderPass);
        v30 = *(v31 + 24);
        sub_1BE048C84();
        sub_1BD2AF4D8(v31, type metadata accessor for PlaceholderPass);
LABEL_14:
        sub_1BE052524();
        v30, v32, v33, v34, v35, v36, v37, v38;
        v39 = sub_1BE053D64();
        sub_1BD2AF4D8(v9, type metadata accessor for AvailablePass);
        v40 = v51;
        v41 = v39 & v51;
        if (a1 >= v50)
        {
          v11 = v52;
          v23 = v49;
          if (v41 < v50)
          {
            goto LABEL_6;
          }

LABEL_18:
          if (a1 < v41)
          {
            goto LABEL_6;
          }

          goto LABEL_19;
        }

        v11 = v52;
        v23 = v49;
        if (v41 < v50)
        {
          goto LABEL_18;
        }

LABEL_19:
        v42 = *(v10 + 48);
        v43 = v23 * a1;
        v16 = (v42 + v24);
        if (v23 * a1 < v24 || v42 + v23 * a1 >= &v16[v23])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v13;
          if (v43 == v24)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v13;
LABEL_6:
        v13 = (v13 + 1) & v40;
        if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v26 = *v6;
      v27 = [*v6 uniqueID];
      if (!v27)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

LABEL_23:
    v10, v16, v17, v18, v19, v20, v21, v22;
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v44 = *(v10 + 16);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v46;
    ++*(v10 + 36);
  }
}

void sub_1BD5368F0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1BE053D04();
        sub_1BE048C84();
        sub_1BE052524();
        v18 = sub_1BE053D64();
        v17, v19, v20, v21, v22, v23, v24, v25;
        v26 = v18 & v7;
        if (v2 >= v16)
        {
          if (v26 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v26 >= v16)
        {
          goto LABEL_11;
        }

        if (v2 >= v26)
        {
LABEL_11:
          v27 = *(v3 + 48);
          v28 = (v27 + 16 * v2);
          v29 = (v27 + 16 * v6);
          if (v2 != v6 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v3 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v32;
    ++*(v3 + 36);
  }
}

void sub_1BD536AB4(int64_t a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_1BE048964();
    v12 = sub_1BE053684();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v20 = v11;
      v21 = (v12 + 1) & v11;
      v41 = *(v4 + 16);
      v42 = v4 + 16;
      v22 = *(v4 + 72);
      v39 = (v4 + 8);
      v40 = v8;
      v23 = v22;
      do
      {
        v24 = v23;
        v25 = v23 * v10;
        v41(v6, *(v7 + 48) + v23 * v10, v3);
        v26 = v7;
        v27 = v21;
        v28 = v20;
        v29 = v26;
        sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v30 = sub_1BE052284();
        (*v39)(v6, v3);
        v31 = v30 & v28;
        v20 = v28;
        v21 = v27;
        if (a1 >= v27)
        {
          if (v31 >= v27 && a1 >= v31)
          {
LABEL_16:
            v7 = v29;
            v34 = *(v29 + 48);
            v23 = v24;
            v35 = v24 * a1;
            v13 = (v34 + v25);
            if (v24 * a1 < v25 || v34 + v24 * a1 >= &v13[v24])
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v35 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v31 >= v27 || a1 >= v31)
        {
          goto LABEL_16;
        }

        v7 = v29;
        v23 = v24;
LABEL_5:
        v10 = (v10 + 1) & v20;
        v8 = v40;
      }

      while (((*(v40 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    v7, v13, v14, v15, v16, v17, v18, v19;
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }
}

void sub_1BD536DBC(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_1BE048964();
    v8 = sub_1BE053684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v6);
        sub_1BE053D04();
        MEMORY[0x1BFB40DA0](v17);
        v18 = sub_1BE053D64() & v7;
        if (v2 >= v16)
        {
          if (v18 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v16)
        {
          goto LABEL_11;
        }

        if (v2 >= v18)
        {
LABEL_11:
          v19 = *(v3 + 48);
          v20 = (v19 + 8 * v2);
          v21 = (v19 + 8 * v6);
          if (v2 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }
}

uint64_t sub_1BD536FCC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1BFB3FAE0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1BD53704C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PKPaymentNetwork(0);
  v4 = v3;
  v5 = sub_1BD538AA4(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork, &unk_1BE0B2EBC);
  result = MEMORY[0x1BFB3FAE0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1BD2A5358(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1BD537108(uint64_t a1)
{
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BD538AA4(&qword_1EBD49BF0, type metadata accessor for AvailablePass, &unk_1BE0D9FC0);
  result = MEMORY[0x1BFB3FAE0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1BD133398(v12, v5, type metadata accessor for AvailablePass);
      sub_1BD2A5B2C(v8, v5);
      sub_1BD2AF4D8(v8, type metadata accessor for AvailablePass);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1BD537298(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB3FAE0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1BE048C84();
      sub_1BD2A5644(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1BD537330(uint64_t a1)
{
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BD538AA4(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1BFB3FAE0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_1BD2A60D0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BD5374CC(uint64_t a1)
{
  v2 = sub_1BE049B44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BD538AA4(&qword_1EBD40688, MEMORY[0x1E6967B20], MEMORY[0x1E6967B30]);
  result = MEMORY[0x1BFB3FAE0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_1BD2A63B0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BD537668(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v4 = sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
    v5 = sub_1BD538E04();
    result = MEMORY[0x1BFB3FAE0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BD2A6690(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BE053704();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD5377A8()
{
  v1 = sub_1BE0498D4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v3 = sub_1BE049C24();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v0[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v0[14] = swift_task_alloc();
  v4 = sub_1BE049B64();
  v0[15] = v4;
  v0[16] = *(v4 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5379D4, 0, 0);
}

uint64_t sub_1BD5379D4()
{
  v1 = v0[14];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1BE049B54();
  sub_1BE0490F4();
  v0[18] = sub_1BE0490B4();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1BD537B00;
  v4 = v0[17];
  v5 = v0[13];

  return MEMORY[0x1EEDC14B8](v5, v4);
}

uint64_t sub_1BD537B00()
{
  v2 = *(*v1 + 144);
  *(*v1 + 160) = v0;

  v2, v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1BD5380C8;
  }

  else
  {
    v10 = sub_1BD537C30;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

char *sub_1BD537C30()
{
  result = sub_1BE049C14();
  v9 = result;
  v66 = *(result + 2);
  if (v66)
  {
    v10 = 0;
    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    v61 = *MEMORY[0x1E6967908];
    v59 = (v12 + 8);
    v60 = (v12 + 104);
    v62 = v11;
    v57 = (v11 + 8);
    v58 = (v11 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v64 = result;
    while (v10 < *(v9 + 2))
    {
      v14 = *(v0 + 40);
      v15 = *(v0 + 32);
      v16 = *(v0 + 16);
      v17 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v18 = *(v62 + 72);
      (*(v62 + 16))(*(v0 + 80), &v9[v17 + v18 * v10], *(v0 + 48));
      sub_1BE049554();
      (*v60)(v15, v61, v16);
      sub_1BD538AA4(&qword_1EBD49BA8, MEMORY[0x1E6967920], MEMORY[0x1E6967928]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v19 = *v59;
      (*v59)(v15, v16);
      v19(v14, v16);
      if (*(v0 + 168) == *(v0 + 170))
      {
        v20 = *v58;
        (*v58)(*(v0 + 64), *(v0 + 80), *(v0 + 48));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD5321A8(0, *(v13 + 2) + 1, 1);
        }

        v9 = v64;
        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_1BD5321A8((v21 > 1), v22 + 1, 1);
        }

        v23 = *(v0 + 64);
        v24 = *(v0 + 48);
        *(v13 + 2) = v22 + 1;
        result = v20(&v13[v17 + v22 * v18], v23, v24);
      }

      else
      {
        result = (*v57)(*(v0 + 80), *(v0 + 48));
        v9 = v64;
      }

      if (v66 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v9, v2, v3, v4, v5, v6, v7, v8;
    v32 = *(v13 + 2);
    if (v32)
    {
      v33 = *(v0 + 56);
      v35 = *(v33 + 16);
      v34 = v33 + 16;
      v63 = v13;
      v36 = &v13[(*(v34 + 64) + 32) & ~*(v34 + 64)];
      v65 = *(v34 + 56);
      v67 = v35;
      v37 = MEMORY[0x1E69E7CC0];
      do
      {
        v39 = *(v0 + 72);
        v40 = *(v0 + 48);
        v67(v39, v36, v40);
        v41 = sub_1BE049534();
        v43 = v42;
        (*(v34 - 8))(v39, v40);
        if (v43)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1BD03B038(0, *(v37 + 2) + 1, 1, v37, v47, v48, v49, v50);
          }

          v52 = *(v37 + 2);
          v51 = *(v37 + 3);
          if (v52 >= v51 >> 1)
          {
            v37 = sub_1BD03B038((v51 > 1), v52 + 1, 1, v37, v47, v48, v49, v50);
          }

          *(v37 + 2) = v52 + 1;
          v38 = &v37[16 * v52];
          *(v38 + 4) = v41;
          *(v38 + 5) = v43;
        }

        v36 += v65;
        --v32;
      }

      while (v32);
      v63, v44, v45, v46, v47, v48, v49, v50;
    }

    else
    {
      v13, v25, v26, v27, v28, v29, v30, v31;
      v37 = MEMORY[0x1E69E7CC0];
    }

    v54 = *(v0 + 128);
    v53 = *(v0 + 136);
    v55 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v54 + 8))(v53, v55);

    v56 = *(v0 + 8);

    return v56(v37);
  }

  return result;
}

uint64_t sub_1BD5380C8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD5381A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v0[8] = swift_task_alloc();
  v1 = sub_1BE049CE4();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v3 = sub_1BE0498F4();
  v0[15] = v3;
  v0[16] = *(v3 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD538360, 0, 0);
}

uint64_t sub_1BD538360()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v0[16] + 104))(v1, *MEMORY[0x1E6967930], v0[15]);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *(v9 + 16) = v1;
  v0[7] = sub_1BE049A94();
  sub_1BE04B444();
  (*(v4 + 16))(v7, v2, v3);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_1BE049CD4();
  sub_1BE0490F4();
  v0[19] = sub_1BE0490B4();
  v10 = MEMORY[0x1E6967BC8];
  v0[5] = v8;
  v0[6] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, v5, v8);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1BD53853C;

  return MEMORY[0x1EEDC1518](v0 + 2);
}

uint64_t sub_1BD53853C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  *(*v2 + 168) = v1;

  v5, v6, v7, v8, v9, v10, v11, v12;
  if (v1)
  {
    v20 = sub_1BD538794;
  }

  else
  {
    *(v4 + 176) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16), v13, v14, v15, v16, v17, v18, v19);
    v20 = sub_1BD538690;
  }

  return MEMORY[0x1EEE6DFA0](v20, 0, 0);
}

uint64_t sub_1BD538690()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];
  v8 = v0[22];

  return v7(v8);
}

uint64_t sub_1BD538794()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16), v7, v8, v9, v10, v11, v12, v13);
  (*(v3 + 8))(v1, v2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t type metadata accessor for PKTransactionsPageBoundary(uint64_t a1)
{
  result = qword_1EBD498F0;
  if (!qword_1EBD498F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD538914(uint64_t a1)
{
  result = sub_1BE04AF64();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD5389FC()
{
  result = qword_1EBD49900;
  if (!qword_1EBD49900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49900);
  }

  return result;
}

unint64_t sub_1BD538A50()
{
  result = qword_1EBD49910;
  if (!qword_1EBD49910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49910);
  }

  return result;
}

uint64_t sub_1BD538AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD538AEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD5314D4(v2, v3, v5, v4);
}

uint64_t sub_1BD538BAC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD52AB44(v2);
}

uint64_t sub_1BD538C58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BD126968;

  return sub_1BD992B34(v2, v3, v4);
}

uint64_t objectdestroy_33Tm()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD538D58()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD126968;

  return sub_1BD52A14C(v2);
}

unint64_t sub_1BD538E04()
{
  result = qword_1EBD49A00;
  if (!qword_1EBD49A00)
  {
    sub_1BD0E5E8C(255, &qword_1EBD406D0, 0x1E69B92E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A00);
  }

  return result;
}

unint64_t sub_1BD538E6C()
{
  result = qword_1EBD49A80;
  if (!qword_1EBD49A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A78, &qword_1BE0DF968);
    sub_1BD5390C4(&qword_1EBD49A88, &qword_1EBD49A40, &qword_1BE0DF900, MEMORY[0x1E6968AE8]);
    sub_1BD53900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A80);
  }

  return result;
}

unint64_t sub_1BD538F24()
{
  result = qword_1EBD49A98;
  if (!qword_1EBD49A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A30, &qword_1BE0DF8E8);
    v1 = MEMORY[0x1E6969530];
    sub_1BD538AA4(&qword_1EBD49AA0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1BD538AA4(&qword_1EBD49AA8, v1, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49A98);
  }

  return result;
}

unint64_t sub_1BD53900C()
{
  result = qword_1EBD49AB0;
  if (!qword_1EBD49AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A28, &qword_1BE0DF8E0);
    sub_1BD5390C4(&qword_1EBD49AB8, &qword_1EBD49A20, &qword_1BE0DF8D8, MEMORY[0x1E6968D00]);
    sub_1BD53914C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AB0);
  }

  return result;
}

uint64_t sub_1BD5390C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1BD0FA424(&qword_1EBD49A90, &qword_1EBD49A38, &qword_1BE0DF8F8);
    sub_1BD538F24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD53914C()
{
  result = qword_1EBD49AC0;
  if (!qword_1EBD49AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A18, &qword_1BE0DF8D0);
    sub_1BD5391D8();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AC0);
  }

  return result;
}

unint64_t sub_1BD5391D8()
{
  result = qword_1EBD49AC8;
  if (!qword_1EBD49AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49A10, &qword_1BE0DF8C8);
    sub_1BD0FA424(&qword_1EBD49AD0, &qword_1EBD49A08, &qword_1BE0DF8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49AC8);
  }

  return result;
}

unint64_t sub_1BD539274()
{
  result = qword_1EBD49B00;
  if (!qword_1EBD49B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AF8, &unk_1BE0DF9B0);
    sub_1BD539300();
    sub_1BD0F9D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B00);
  }

  return result;
}

unint64_t sub_1BD539300()
{
  result = qword_1EBD49B08;
  if (!qword_1EBD49B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AE8, &qword_1BE0DF970);
    sub_1BD5393D4(&qword_1EBD49B10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1BD5393D4(&qword_1EBD49B18, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B08);
  }

  return result;
}

uint64_t sub_1BD5393D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49AF0, &qword_1BE0DF978);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD539440()
{
  result = qword_1EBD49B38;
  if (!qword_1EBD49B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B30, &unk_1BE0DF9F8);
    sub_1BD0FA28C();
    sub_1BD0F9F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B38);
  }

  return result;
}

unint64_t sub_1BD5394CC()
{
  result = qword_1EBD49B68;
  if (!qword_1EBD49B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B60, &qword_1BE0DFAA0);
    sub_1BD539558();
    sub_1BD5395FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B68);
  }

  return result;
}

unint64_t sub_1BD539558()
{
  result = qword_1EBD49B70;
  if (!qword_1EBD49B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B50, &qword_1BE0DFA38);
    sub_1BD273AD4();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0, &unk_1BE0B7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B70);
  }

  return result;
}

unint64_t sub_1BD5395FC()
{
  result = qword_1EBD49B78;
  if (!qword_1EBD49B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B48, &unk_1BE0DFA10);
    sub_1BD5396BC();
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B78);
  }

  return result;
}

unint64_t sub_1BD5396BC()
{
  result = qword_1EBD49B80;
  if (!qword_1EBD49B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49B40, &qword_1BE0DFA08);
    sub_1BD0DE4F4(&qword_1EBD49B88, &qword_1EBD38DF0, &unk_1BE0E8DB0, MEMORY[0x1E6969CA8]);
    sub_1BD0DE4F4(&qword_1EBD49B90, &qword_1EBD38DF0, &unk_1BE0E8DB0, MEMORY[0x1E6969CA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49B80);
  }

  return result;
}

uint64_t sub_1BD5397B8()
{
  swift_unknownObjectRelease();
  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UIFlowItemConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

uint64_t sub_1BD5398C0()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_1BD5399BC()
{
  result = qword_1EBD49C00;
  if (!qword_1EBD49C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C00);
  }

  return result;
}

unint64_t sub_1BD539A14()
{
  result = qword_1EBD49C08;
  if (!qword_1EBD49C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C08);
  }

  return result;
}

uint64_t sub_1BD539A68(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v15 = a1[9];
  v16 = a1[8];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v13 = a2[9];
  v14 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1BE053B84() & 1) == 0 || (v4 != v9 || v5 != v8) && (sub_1BE053B84() & 1) == 0 || (v17 != v11 || v18 != v10) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1BE053B84();
}

__n128 sub_1BD539BE0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 givenName];
  v5 = sub_1BE052434();
  v25 = v6;
  v26 = v5;

  v7 = [a1 familyName];
  v24 = sub_1BE052434();
  v9 = v8;

  v10 = [a1 phoneticGivenName];
  v11 = sub_1BE052434();
  v13 = v12;

  v14 = [a1 phoneticFamilyName];
  v15 = sub_1BE052434();
  v17 = v16;

  v18 = [a1 organizationName];
  v19 = sub_1BE052434();
  v21 = v20;

  *&v28 = v26;
  *(&v28 + 1) = v25;
  v29.n128_u64[0] = v24;
  v29.n128_u64[1] = v9;
  *&v30 = v11;
  *(&v30 + 1) = v13;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  *&v32 = v19;
  *(&v32 + 1) = v21;
  v33[0] = v26;
  v33[1] = v25;
  v33[2] = v24;
  v33[3] = v9;
  v33[4] = v11;
  v33[5] = v13;
  v33[6] = v15;
  v33[7] = v17;
  v33[8] = v19;
  v33[9] = v21;
  sub_1BD4F8278(&v28, v27);
  sub_1BD4F82D4(v33);
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  *(a2 + 64) = v32;
  result = v29;
  *a2 = v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD539D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v142 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C10, &qword_1BE0DFE48);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v121 - v3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C18, &qword_1BE0DFE50);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v121 - v4;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C20, &qword_1BE0DFE58);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v121 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C28, &qword_1BE0DFE60);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v121 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C30, &unk_1BE0DFE68);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v121 - v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371B0, &qword_1BE0B11D0);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v144 = &v121 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C38, &qword_1BE0DFE78);
  v126 = *(v145 - 1);
  MEMORY[0x1EEE9AC00](v145);
  v122 = &v121 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C40, &qword_1BE0DFE80);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v121 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C48, &qword_1BE0DFE88);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v121 - v12;
  v148 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C50, &qword_1BE0DFE90);
  sub_1BD0DE4F4(&qword_1EBD49C58, &qword_1EBD49C50, &qword_1BE0DFE90, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v14 = sub_1BE04F5B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F584();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C60, &qword_1BE0DFE98) + 36);
  (*(v15 + 16))(&v13[v18], v17, v14);
  v19 = *(v15 + 56);
  v19(&v13[v18], 0, 1, v14);
  KeyPath = swift_getKeyPath();
  v21 = &v13[*(v11 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v15 + 32))(v21 + v22, v17, v14);
  v19(v21 + v22, 0, 1, v14);
  *v21 = KeyPath;
  v23 = sub_1BE04F434();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, *MEMORY[0x1E697C438], v23, v25);
  v28 = sub_1BD53DF88();
  v29 = v123;
  sub_1BE050E84();
  (*(v24 + 8))(v27, v23);
  sub_1BD0DE53C(v13, &qword_1EBD49C48, &qword_1BE0DFE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0, &unk_1BE0E9000);
  sub_1BE04EE44();
  v30 = swift_allocObject();
  v30[1] = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v150 = v11;
  *(&v150 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v122;
  v33 = v124;
  MEMORY[0x1BFB3DEF0](0, v30, v124, OpaqueTypeConformance2);
  v30, v34, v35, v36, v37, v38, v39, v40;
  (*(v125 + 8))(v29, v33);
  v41 = v146;
  v147 = v146;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C88, &qword_1BE0DFEF0);
  *&v150 = v33;
  *(&v150 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
  v45 = sub_1BD53E12C();
  *&v150 = v44;
  *(&v150 + 1) = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v145;
  v125 = v42;
  v124 = v43;
  v123 = v46;
  sub_1BE051024();
  (v126[1])(v32, v47);
  sub_1BE0528A4();
  v48 = v41;
  sub_1BD53E1DC(v41, &v150);
  v49 = sub_1BE052894();
  v50 = swift_allocObject();
  v51 = MEMORY[0x1E69E85E0];
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  v52 = v48[1];
  *(v50 + 32) = *v48;
  *(v50 + 48) = v52;
  v53 = v48[3];
  *(v50 + 64) = v48[2];
  *(v50 + 80) = v53;
  v54 = sub_1BE0528D4();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v122 = sub_1BE04EAA4();
    v126 = &v121;
    v121 = *(v122 - 1);
    MEMORY[0x1EEE9AC00](v122);
    v59 = &v121 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v150 = 0;
    *(&v150 + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&v150 + 1), v60, v61, v62, v63, v64, v65, v66;
    *&v150 = 0xD000000000000038;
    *(&v150 + 1) = 0x80000001BE12DCD0;
    v149 = 78;
    v67 = sub_1BE053B24();
    v69 = v68;
    MEMORY[0x1BFB3F610](v67);
    v69, v70, v71, v72, v73, v74, v75, v76;
    v78 = MEMORY[0x1EEE9AC00](v77);
    (*(v55 + 16))(&v121 - v57, &v121 - v57, v54, v78);
    sub_1BE04EA94();
    (*(v55 + 8))(&v121 - v57, v54);
    v79 = v129;
    v80 = v128;
    (*(v127 + 32))(v129, v144, v128);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371B8, &qword_1BE0B11D8);
    v82 = (*(v121 + 32))(&v79[*(v81 + 36)], v59, v122);
  }

  else
  {
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371C0, &unk_1BE0B11E0);
    v79 = v129;
    v84 = &v129[*(v83 + 36)];
    v85 = sub_1BE04E7B4();
    (*(v55 + 32))(&v84[*(v85 + 20)], &v121 - v57, v54);
    *v84 = &unk_1BE0DFF10;
    *(v84 + 1) = v50;
    v80 = v128;
    v82 = (*(v127 + 32))(v79, v144, v128);
  }

  MEMORY[0x1EEE9AC00](v82);
  v86 = v146;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  *&v150 = v145;
  *(&v150 + 1) = v125;
  v151 = v124;
  v152 = v123;
  v87 = swift_getOpaqueTypeConformance2();
  *&v150 = v80;
  *(&v150 + 1) = v87;
  swift_getOpaqueTypeConformance2();
  sub_1BD53E2C0(&qword_1EBD3FA58, &qword_1EBD3FA48, &qword_1BE0C6AF0, sub_1BD279FA4);
  v88 = v132;
  v89 = v131;
  sub_1BE050954();
  (*(v130 + 8))(v79, v89);
  v90 = sub_1BE04EC54();
  v91 = sub_1BE050234();
  v92 = v135;
  (*(v133 + 32))(v135, v88, v134);
  v93 = v136;
  v94 = v92 + *(v136 + 36);
  *v94 = v90;
  *(v94 + 8) = v91;
  v95 = sub_1BE0501E4();
  v96 = sub_1BE04FC54();
  v145 = &v121;
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v121 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v100 = sub_1BD53E33C();
  v101 = v137;
  MEMORY[0x1BFB3DB30](v95, 0x406E000000000000, 0, v99, v93, v100);
  (*(v97 + 8))(v99, v96);
  sub_1BD0DE53C(v92, &qword_1EBD49C20, &qword_1BE0DFE58);
  v102 = swift_allocObject();
  v103 = v86[1];
  *(v102 + 16) = *v86;
  *(v102 + 32) = v103;
  v104 = v86[3];
  *(v102 + 48) = v86[2];
  *(v102 + 64) = v104;
  sub_1BD53E1DC(v86, &v150);
  *&v150 = v93;
  *(&v150 + 1) = v100;
  v105 = swift_getOpaqueTypeConformance2();
  v120 = sub_1BD0F9764();
  v106 = MEMORY[0x1E69E7DE0];
  v107 = v140;
  v108 = v139;
  sub_1BE050DC4();
  v102, v109, v110, v111, v112, v113, v114, v115;
  (*(v138 + 8))(v101, v108);
  v150 = v86[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v102) = v149;
  v116 = sub_1BE0501E4();
  *&v150 = v108;
  *(&v150 + 1) = v106;
  v151 = v105;
  v152 = v120;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = v143;
  MEMORY[0x1BFB3DE60]((v102 & 1) == 0, v116, v143, v117);
  return (*(v141 + 8))(v107, v118);
}

uint64_t sub_1BD53AF04@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50, &unk_1BE0E33D0);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v62 - v10;
  v11 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58, &qword_1BE0E33E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D60, &qword_1BE0DFFE0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D68, &qword_1BE0DFFE8);
  v68 = *(v21 - 8);
  v69 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v76 = a1;
  sub_1BD53BBD0(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D70, &qword_1BE0DFFF0);
  sub_1BD53E2C0(&qword_1EBD49D78, &qword_1EBD49D60, &qword_1BE0DFFE0, sub_1BD53E600);
  sub_1BD53E6E8();
  v26 = v25;
  sub_1BE051A24();
  v77 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v27 = v78;
  KeyPath = swift_getKeyPath();
  *&v77 = v27;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v36 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v27 + v36, v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v27, v37, v38, v39, v40, v41, v42, v43;
  v44 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v44 - 8) + 48))(v8, 1, v44))
  {
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    v45 = v67;
    (*(v65 + 56))(v67, 1, 1, v66);
  }

  else
  {
    v46 = v62;
    v47 = v63;
    v48 = &v8[*(v44 + 24)];
    v45 = v67;
    sub_1BD0DE19C(v48, v67, &qword_1EBD3F780, &unk_1BE0DFFD0);
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    if ((*(v65 + 48))(v45, 1, v66) != 1)
    {
      v59 = sub_1BD53E8A4(v45, v13, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      MEMORY[0x1EEE9AC00](v59);
      *(&v62 - 2) = v13;
      sub_1BD53C150(v47);
      type metadata accessor for FinanceKitTransactionHistoryView(0);
      sub_1BD53E7A4();
      sub_1BD53E85C(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView, &unk_1BE0F2EE4);
      sub_1BE051A24();
      v61 = v73;
      v60 = v74;
      v49 = v71;
      (*(v73 + 32))(v71, v46, v74);
      (*(v61 + 56))(v49, 0, 1, v60);
      sub_1BD53EC04(v13, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      goto LABEL_5;
    }
  }

  sub_1BD0DE53C(v45, &qword_1EBD3F780, &unk_1BE0DFFD0);
  v49 = v71;
  (*(v73 + 56))(v71, 1, 1, v74);
LABEL_5:
  v50 = v68;
  v51 = v69;
  v52 = *(v68 + 16);
  v53 = v70;
  v52(v70, v26, v69);
  v54 = v72;
  sub_1BD0DE19C(v49, v72, &qword_1EBD49D58, &qword_1BE0E33E0);
  v55 = v75;
  v52(v75, v53, v51);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DA8, &unk_1BE0E0008);
  sub_1BD0DE19C(v54, &v55[*(v56 + 48)], &qword_1EBD49D58, &qword_1BE0E33E0);
  sub_1BD0DE53C(v49, &qword_1EBD49D58, &qword_1BE0E33E0);
  v57 = *(v50 + 8);
  v57(v26, v51);
  sub_1BD0DE53C(v54, &qword_1EBD49D58, &qword_1BE0E33E0);
  return (v57)(v53, v51);
}

uint64_t sub_1BD53B778@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v47 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v50 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v20 = v51;
  KeyPath = swift_getKeyPath();
  *&v50 = v20;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v20 + v29, v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v20, v30, v31, v32, v33, v34, v35, v36;
  v37 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v37 - 8) + 48))(v8, 1, v37))
  {
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    v38 = 1;
    v40 = v48;
    v39 = v49;
  }

  else
  {
    sub_1BD53EB9C(&v8[*(v37 + 20)], v16, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    sub_1BD53E8A4(v16, v19, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD53EB9C(v19, v13, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v41 = v48;
    v42 = &v5[*(v48 + 20)];
    type metadata accessor for NavigationController();
    sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    *v42 = sub_1BE04EEC4();
    v42[1] = v43;
    sub_1BD53EB9C(v13, v10, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BE051694();
    sub_1BD53EC04(v13, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    sub_1BD53EC04(v19, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v44 = v49;
    sub_1BD53E8A4(v5, v49, type metadata accessor for FinanceKitSelectedTransactionView);
    v38 = 0;
    v39 = v44;
    v40 = v41;
  }

  return (*(v3 + 56))(v39, v38, 1, v40);
}

uint64_t sub_1BD53BBD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D88, &unk_1BE0DFFF8);
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v16 = v50;
  KeyPath = swift_getKeyPath();
  *&v52 = v16;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v16 + v25, v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v33 - 8) + 48))(v8, 1, v33))
  {
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_1BD0DE19C(&v8[*(v33 + 32)], v11, &qword_1EBD49D40, &unk_1BE0DFFB0);
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1BD53E8A4(v11, v15, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      sub_1BD53EB9C(v15, v5, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      v38 = type metadata accessor for FinanceKitMerchantHeaderView(0);
      v39 = &v5[*(v38 + 20)];
      v49 = 0;
      sub_1BE051694();
      v40 = v51;
      *v39 = v50;
      *(v39 + 1) = v40;
      v41 = &v5[*(v38 + 24)];
      v49 = 0;
      sub_1BE051694();
      sub_1BD53EC04(v15, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
      v42 = v51;
      *v41 = v50;
      *(v41 + 1) = v42;
      v44 = v47;
      v43 = v48;
      v45 = &v5[*(v47 + 36)];
      *v45 = 0u;
      *(v45 + 1) = 0u;
      v45[32] = 1;
      sub_1BD0DE204(v5, v43, &qword_1EBD49D88, &unk_1BE0DFFF8);
      v36 = v44;
      v35 = v43;
      v34 = 0;
      return (*(v3 + 56))(v35, v34, 1, v36);
    }
  }

  sub_1BD0DE53C(v11, &qword_1EBD49D40, &unk_1BE0DFFB0);
  v34 = 1;
  v36 = v47;
  v35 = v48;
  return (*(v3 + 56))(v35, v34, 1, v36);
}

uint64_t sub_1BD53C0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD53EB9C(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

int *sub_1BD53C150@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v7 = &v66 - v6;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v4, v1);
    v68 = v10;
    v69 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;
    v19 = sub_1BE0503D4();
    v20 = sub_1BE0505F4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v19, v21, v23, v25, v27, v28, v29, v30;
    sub_1BD0DDF10(v13, v15, (v9 & 1), v31, v32, v33, v34, v35);
    v18, v36, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BE0505D4();
    v45 = v44;
    LOBYTE(v9) = v46;
    v48 = v47;
    sub_1BD0DDF10(v20, v22, (v24 & 1), v47, v49, v50, v51, v52);
    v26, v53, v54, v55, v56, v57, v58, v59;
    v60 = &v7[*(v66 + 36)];
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v62 = sub_1BE0505C4();
    (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
    *v60 = swift_getKeyPath();
    *v7 = v43;
    *(v7 + 1) = v45;
    v7[16] = v9 & 1;
    *(v7 + 3) = v48;
    v63 = sub_1BE051464();
    v64 = v7;
    v65 = v67;
    sub_1BD0DE204(v64, v67, &qword_1EBD386A0, &qword_1BE0B6C30);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
    *(v65 + result[9]) = v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD53C468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3];
  v10 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CA8, &qword_1BE0DFF00);
  v6 = sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8, &qword_1BE0DFF00, MEMORY[0x1E697C5E0]);
  MEMORY[0x1BFB3E5A0](sub_1BD53E5E0, v9, v5, v6);
  v7 = sub_1BD53E12C();
  MEMORY[0x1BFB3CC50](v4, v2, v7);
  return sub_1BD0DE53C(v4, &qword_1EBD49C90, &qword_1BE0DFEF8);
}

uint64_t sub_1BD53C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD53C63C, v5, v4);
}

uint64_t sub_1BD53C63C()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD53C6FC;

  return sub_1BD57C030();
}

uint64_t sub_1BD53C6FC()
{
  v3 = *v1;
  v2 = *v1;

  v11 = *(v2 + 72);
  if (v0)
  {

    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = *(v3 + 56);
    v20 = *(v3 + 64);
    v21 = sub_1BD53EC64;
  }

  else
  {
    v11, v4, v5, v6, v7, v8, v9, v10;
    v19 = *(v3 + 56);
    v20 = *(v3 + 64);
    v21 = sub_1BD0F88DC;
  }

  return MEMORY[0x1EEE6DFA0](v21, v19, v20);
}

uint64_t sub_1BD53C840@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v31 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v7 = v32;
  KeyPath = swift_getKeyPath();
  *&v31 = v7;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v7 + v16, v6, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v7, v17, v18, v19, v20, v21, v22, v23;
  v24 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v24 - 8) + 48))(v6, 1, v24))
  {
    result = sub_1BD0DE53C(v6, &qword_1EBD49CB8, &qword_1BE0DFF20);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v30 = &v6[*(v24 + 28)];
    v26 = *v30;
    v27 = v30[1];
    v28 = v30[2];
    v29 = v30[3];
    sub_1BD2726F8(*v30, v27, v28, v29);
    result = sub_1BD0DE53C(v6, &qword_1EBD49CB8, &qword_1BE0DFF20);
    if (v27)
    {
      goto LABEL_5;
    }

    v26 = 0;
  }

  v28 = 0;
  v29 = 0;
LABEL_5:
  *a2 = v26;
  a2[1] = v27;
  a2[2] = v28;
  a2[3] = v29;
  return result;
}

uint64_t sub_1BD53CA68@<X0>(double *a1@<X8>)
{
  result = sub_1BE04E9E4();
  v4 = v3 / 114.0;
  if (v3 / 114.0 <= 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BD53CABC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD0, &qword_1BE0DFF58);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD8, &qword_1BE0DFF60);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = &v59 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE0, &qword_1BE0DFF68);
  v59 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v60 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - v10;
  v63 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v12 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0, &unk_1BE10FE80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v59 - v18;
  v19 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF8, &unk_1BE0DFF80);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  sub_1BE04FB34();
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D00, &unk_1BE10FE90);
  sub_1BD0DE4F4(&qword_1EBD49D08, &qword_1EBD49D00, &unk_1BE10FE90, MEMORY[0x1E69817F8]);
  sub_1BE04E424();
  v76 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v23 = v74;
  KeyPath = swift_getKeyPath();
  *&v76 = v23;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v40 - 8) + 48))(v8, 1, v40))
  {
    sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
    (*(v12 + 56))(v11, 1, 1, v63);
LABEL_4:
    sub_1BD0DE53C(v11, &qword_1EBD49CE8, &unk_1BE0DFF70);
    goto LABEL_5;
  }

  v42 = v61;
  v41 = v62;
  v43 = v60;
  sub_1BD0DE19C(&v8[*(v40 + 36)], v11, &qword_1EBD49CE8, &unk_1BE0DFF70);
  sub_1BD0DE53C(v8, &qword_1EBD49CB8, &qword_1BE0DFF20);
  if ((*(v12 + 48))(v11, 1, v63) == 1)
  {
    goto LABEL_4;
  }

  sub_1BD53E8A4(v11, v41, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  if (sub_1BD51FA14())
  {
    v53 = sub_1BE04FAE4();
    MEMORY[0x1EEE9AC00](v53);
    *(&v59 - 2) = v41;
    type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
    sub_1BD53E85C(&qword_1EBD49D18, type metadata accessor for FinanceKitMerchantBrandViewButtons, &unk_1BE0DEF94);
    sub_1BE04E424();
    v54 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0, &qword_1BE0DFF68, MEMORY[0x1E697BEF0]);
    v55 = v68;
    MEMORY[0x1BFB3CC50](v43, v68, v54);
    v56 = v67;
    v57 = v69;
    (*(v67 + 16))(v16, v42, v69);
    (*(v56 + 56))(v16, 0, 1, v57);
    v74 = v55;
    v75 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v66;
    MEMORY[0x1BFB3CC80](v16, v57, OpaqueTypeConformance2);
    sub_1BD0DE53C(v16, &qword_1EBD49CF0, &unk_1BE10FE80);
    (*(v56 + 8))(v42, v57);
    (*(v59 + 8))(v43, v55);
    sub_1BD53EC04(v62, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    goto LABEL_6;
  }

  sub_1BD53EC04(v41, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
LABEL_5:
  v44 = v66;
  v45 = v69;
  (*(v67 + 56))(v16, 1, 1, v69);
  v46 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0, &qword_1BE0DFF68, MEMORY[0x1E697BEF0]);
  v74 = v68;
  v75 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v16, v45, v47);
  sub_1BD0DE53C(v16, &qword_1EBD49CF0, &unk_1BE10FE80);
LABEL_6:
  v48 = v70;
  v49 = *(v71 + 48);
  v51 = v64;
  v50 = v65;
  (*(v64 + 16))(v70, v22, v65);
  sub_1BD0847E8(v44, &v48[v49]);
  sub_1BE04F854();
  sub_1BD0DE53C(v44, &qword_1EBD49CF0, &unk_1BE10FE80);
  return (*(v51 + 8))(v22, v50);
}

uint64_t sub_1BD53D46C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D20, &unk_1BE0DFF90);
  return sub_1BD53D4C4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD53D4C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D28, &unk_1BE10FEA0);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v64 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D30, &unk_1BE0DFFA0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D38, &unk_1BE10FEB0);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v77 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CC0, &qword_1BE0DFF28);
  sub_1BE0516A4();
  v23 = v76;
  KeyPath = swift_getKeyPath();
  *&v77 = v23;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v15, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = _s22MerchantBrandViewModelVMa(0);
  if ((*(*(v40 - 8) + 48))(v15, 1, v40))
  {
    sub_1BD0DE53C(v15, &qword_1EBD49CB8, &qword_1BE0DFF20);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_1BD0DE53C(v18, &qword_1EBD49D40, &unk_1BE0DFFB0);
    v45 = 1;
    v47 = v73;
    v46 = v74;
    return (*(v72 + 56))(v46, v45, 1, v47);
  }

  v42 = v69;
  v41 = v70;
  v64 = v9;
  v65 = v12;
  v43 = v68;
  v44 = v71;
  sub_1BD0DE19C(&v15[*(v40 + 32)], v18, &qword_1EBD49D40, &unk_1BE0DFFB0);
  sub_1BD0DE53C(v15, &qword_1EBD49CB8, &qword_1BE0DFF20);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  sub_1BD53E8A4(v18, v22, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v49 = *(v19 + 40);
  v50 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(&v22[v49], &v41[*(v50 + 20)], &qword_1EBD45CC0, &qword_1BE0D5630);
  *v41 = 0;
  v76 = v44[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v51 = 0.0;
  if (v75)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  sub_1BD53E8A4(v41, v42, type metadata accessor for FinanceKitTransactionIcon);
  *(v42 + *(v66 + 36)) = v52;
  v76 = v44[2];
  sub_1BE0516A4();
  if (!v75)
  {
    v51 = 40.0;
  }

  v53 = sub_1BD0DE204(v42, v43, &qword_1EBD49D28, &unk_1BE10FEA0);
  v54 = v43 + *(v67 + 36);
  *v54 = 0;
  *(v54 + 8) = v51;
  v55 = MEMORY[0x1BFB3EDF0](v53, 0.5, 1.0, 0.0);
  v76 = v44[2];
  sub_1BE0516A4();
  sub_1BD53EC04(v22, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v56 = v75;
  v57 = v64;
  sub_1BD0DE204(v43, v64, &qword_1EBD49D30, &unk_1BE0DFFA0);
  v58 = v73;
  v59 = v57 + *(v73 + 36);
  *v59 = v55;
  *(v59 + 8) = v56;
  v60 = v57;
  v61 = v65;
  sub_1BD0DE204(v60, v65, &qword_1EBD49D38, &unk_1BE10FEB0);
  v62 = v61;
  v63 = v74;
  sub_1BD0DE204(v62, v74, &qword_1EBD49D38, &unk_1BE10FEB0);
  v47 = v58;
  v46 = v63;
  v45 = 0;
  return (*(v72 + 56))(v46, v45, 1, v47);
}

uint64_t sub_1BD53DBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD53EB9C(a1, a2, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v7 = a2 + *(v6 + 20);
  result = sub_1BE051694();
  *v7 = v10;
  *(v7 + 8) = v11;
  v9 = (a2 + *(v6 + 24));
  *v9 = v3;
  v9[1] = v5;
  return result;
}

uint64_t sub_1BD53DD1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservedColor();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD53DD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD49CB8, &qword_1BE0DFF20);
}

uint64_t sub_1BD53DE38(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD49CB8, &qword_1BE0DFF20);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD53E85C(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD49CB8, &qword_1BE0DFF20);
}

unint64_t sub_1BD53DF88()
{
  result = qword_1EBD49C68;
  if (!qword_1EBD49C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C48, &qword_1BE0DFE88);
    sub_1BD53E040();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C68);
  }

  return result;
}

unint64_t sub_1BD53E040()
{
  result = qword_1EBD49C70;
  if (!qword_1EBD49C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C60, &qword_1BE0DFE98);
    sub_1BD0DE4F4(&qword_1EBD49C78, &qword_1EBD49C80, &qword_1BE0DFED8, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C70);
  }

  return result;
}

unint64_t sub_1BD53E12C()
{
  result = qword_1EBD49C98;
  if (!qword_1EBD49C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
    sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8, &qword_1BE0DFF00, MEMORY[0x1E697C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49C98);
  }

  return result;
}

uint64_t sub_1BD53E214()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD53C5A4(v2, v3, v0 + 32);
}

uint64_t sub_1BD53E2C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD53E33C()
{
  result = qword_1EBD49CB0;
  if (!qword_1EBD49CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C20, &qword_1BE0DFE58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C30, &unk_1BE0DFE68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371B0, &qword_1BE0B11D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C38, &qword_1BE0DFE78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C88, &qword_1BE0DFEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C40, &qword_1BE0DFE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C48, &qword_1BE0DFE88);
    sub_1BD53DF88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
    sub_1BD53E12C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD53E2C0(&qword_1EBD3FA58, &qword_1EBD3FA48, &qword_1BE0C6AF0, sub_1BD279FA4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49CB0);
  }

  return result;
}

unint64_t sub_1BD53E600()
{
  result = qword_1EBD49D80;
  if (!qword_1EBD49D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D88, &unk_1BE0DFFF8);
    sub_1BD53E85C(&qword_1EBD49D90, type metadata accessor for FinanceKitMerchantHeaderView, &unk_1BE0DBBE0);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49D80);
  }

  return result;
}

unint64_t sub_1BD53E6E8()
{
  result = qword_1EBD49D98;
  if (!qword_1EBD49D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D70, &qword_1BE0DFFF0);
    sub_1BD53E85C(&qword_1EBD49DA0, type metadata accessor for FinanceKitSelectedTransactionView, &unk_1BE0E7E04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49D98);
  }

  return result;
}

unint64_t sub_1BD53E7A4()
{
  result = qword_1EBD49DB0;
  if (!qword_1EBD49DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49DB0);
  }

  return result;
}

uint64_t sub_1BD53E85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD53E8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD53E90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  sub_1BE051694();
  v13 = v23;
  v21 = v24;
  LOBYTE(v22) = 0;
  sub_1BE051694();
  v20 = v23;
  v19 = v24;
  type metadata accessor for NavigationController();
  sub_1BD53E85C(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v14 = sub_1BE04EEC4();
  v16 = v15;
  sub_1BD53EB9C(a1, v12, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v9, a2, v6);
  _s9ViewModelCMa_2(0);
  swift_allocObject();
  v22 = sub_1BD57BCD0(v12, v9);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD53EC04(a1, type metadata accessor for TransactionContext);
  v18 = v24;
  *a3 = v23;
  *(a3 + 8) = v18;
  *(a3 + 16) = v13;
  *(a3 + 24) = v21;
  *(a3 + 32) = v20;
  *(a3 + 40) = v19;
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  return result;
}

uint64_t sub_1BD53EB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD53EC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD53EC68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BD53ECC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD53ED28(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    return 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  if (a3)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v9 = sub_1BE052404();
    v10 = [v8 initWithStringValue_];

    v11 = [v10 digits];
    if (!v11)
    {
      sub_1BE052434();
      v13 = v12;
      v11 = sub_1BE052404();
      v13, v14, v15, v16, v17, v18, v19, v20;
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    if (a4)
    {
      v22 = [a4 phoneNumberIsValid:v21 forCountryCode:0];
    }

    else
    {

      v22 = 1;
      v10 = v21;
    }
  }

  else
  {
    if (!a4)
    {
      return 1;
    }

    v10 = sub_1BE052404();
    v22 = [a4 emailAddressIsValid_];
  }

  return v22;
}

id sub_1BD53EE80(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v13;
  if (v6 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (!a3)
    {
      v19 = v12;
      (*(v8 + 104))(&v21 - v13, *MEMORY[0x1E69B8068], v14);
      result = PKPassKitBundle();
      if (result)
      {
        v20 = result;
        a2 = sub_1BE04B6F4();

        (*(v8 + 8))(v15, v19);
        return a2;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_1BE048C84();
    return a2;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v16 = v12;
  (*(v8 + 104))(v10, *MEMORY[0x1E69B8068], v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    a2 = sub_1BE04B6F4();

    (*(v8 + 8))(v10, v16);
    return a2;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1BD53F0A4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v8;
  if (v2 == 2)
  {
    return 0;
  }

  v12 = *MEMORY[0x1E69B8068];
  v13 = *(v4 + 104);
  if ((a1 & 1) == 0)
  {
    v13(&v16 - v8, v12, v3, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v13(v6, v12, v3, v9);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = sub_1BE04B6F4();
  v10 = v6;
LABEL_8:

  (*(v4 + 8))(v10, v3);
  return v15;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToAddPass.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD1D2278;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToAddPass.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD1D2820;
}

uint64_t WalletDeepLinkCoordinator.passUniqueIDToDisplay.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD53F588(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v20[1];
  *a2 = v20[0];
  a2[1] = v19;
}

uint64_t sub_1BD53F608(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t WalletDeepLinkCoordinator.passUniqueIDToDisplay.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*WalletDeepLinkCoordinator.passUniqueIDToDisplay.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD540F60;
}

uint64_t sub_1BD53F7C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0, &qword_1BE0E0138);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t WalletDeepLinkCoordinator.$passUniqueIDToDisplay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0, &qword_1BE0E0138);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WalletDeepLinkCoordinator.$passUniqueIDToDisplay.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49DD0, &qword_1BE0E0138);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToFPANImportConsent.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD540F60;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToFPANImportConsent.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToAutoFillPane.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD540F60;
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToAutoFillPane.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t sub_1BD54015C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t (*WalletDeepLinkCoordinator.shouldNavigateToVirtualCardUpgrade.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BE04D8A4();
  return sub_1BD540F60;
}

uint64_t sub_1BD540288(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1BD540420(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D894();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*WalletDeepLinkCoordinator.$shouldNavigateToVirtualCardUpgrade.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  sub_1BE04D884();
  swift_endAccess();
  return sub_1BD540F64;
}

uint64_t WalletDeepLinkCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletDeepLinkCoordinator.init()();
  return v0;
}

uint64_t WalletDeepLinkCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v11, v4, v1);
  v12 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v10(v0 + v12, v8, v5);
  v13 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v10(v0 + v13, v8, v5);
  v14 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade;
  LOBYTE(v16[0]) = 0;
  sub_1BE04D874();
  v10(v0 + v14, v8, v5);
  return v0;
}

uint64_t WalletDeepLinkCoordinator.isDeepLinking.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v91);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  if (v91)
  {
    return 1;
  }

  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1BE04D8B4(&v91);
  v16, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
  v33 = v91;
  v32 = v92;
  v92, v34, v35, v36, v37, v38, v39, v40;
  v41 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v41 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    return 1;
  }

  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  sub_1BE04D8B4(&v91);
  v42, v44, v45, v46, v47, v48, v49, v50;
  v43, v51, v52, v53, v54, v55, v56, v57;
  if (v91)
  {
    return 1;
  }

  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  sub_1BE04D8B4(&v91);
  v58, v60, v61, v62, v63, v64, v65, v66;
  v59, v67, v68, v69, v70, v71, v72, v73;
  if (v91)
  {
    return 1;
  }

  v75 = swift_getKeyPath();
  v76 = swift_getKeyPath();
  sub_1BE04D8B4(&v91);
  v75, v77, v78, v79, v80, v81, v82, v83;
  v76, v84, v85, v86, v87, v88, v89, v90;
  return v91;
}

uint64_t WalletDeepLinkCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade, v2);
  return v0;
}

uint64_t WalletDeepLinkCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAddPass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__passUniqueIDToDisplay;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToFPANImportConsent, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToAutoFillPane, v2);
  v3(v0 + OBJC_IVAR____TtC9PassKitUI25WalletDeepLinkCoordinator__shouldNavigateToVirtualCardUpgrade, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WalletDeepLinkCoordinator(uint64_t a1)
{
  result = qword_1EBD49DF0;
  if (!qword_1EBD49DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD540DF8(uint64_t a1)
{
  sub_1BD540F14(319, &qword_1EBD368F0, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD540F14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BE04D8D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD540F68(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

void sub_1BD540FF0(uint64_t a1, unint64_t a2, void *a3)
{
  v61 = a3;
  v58 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);
  v59 = *(v4 - 8);
  v60 = v4;
  v56[1] = *(v59 + 64);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v57 = v56 - v6;
  if (!(a2 >> 62))
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_24:
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_23:
  v7 = sub_1BE053704();
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  v8 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB40900](v9, a2, v5);
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v12 = [v10 uniqueIdentifier];
      if (!v12)
      {
        sub_1BE052434();
        v14 = v13;
        v12 = sub_1BE052404();
        v14, v15, v16, v17, v18, v19, v20, v21;
      }

      v22 = [objc_opt_self() passUniqueIdentifierFromSpotlightIdentifier_];

      if (v22)
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    v23 = sub_1BE052434();
    v25 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1BD03B038(0, *(v62 + 2) + 1, 1, v62, v26, v27, v28, v29);
    }

    v31 = *(v62 + 2);
    v30 = *(v62 + 3);
    if (v31 >= v30 >> 1)
    {
      v62 = sub_1BD03B038((v30 > 1), v31 + 1, 1, v62, v26, v27, v28, v29);
    }

    v32 = v62;
    *(v62 + 2) = v31 + 1;
    v33 = &v32[16 * v31];
    *(v33 + 4) = v23;
    *(v33 + 5) = v25;
  }

  while (v8 != v7);
LABEL_25:
  v34 = v62;
  v35 = sub_1BE052724();
  v34, v36, v37, v38, v39, v40, v41, v42;
  v43 = v59;
  v44 = v57;
  v45 = v60;
  (*(v59 + 16))(v57, v58, v60);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  (*(v43 + 32))(&v47[v46], v44, v45);
  aBlock[4] = sub_1BD1CD6F0;
  v64 = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD540F68;
  aBlock[3] = &block_descriptor_23_6;
  v48 = _Block_copy(aBlock);
  v64, v49, v50, v51, v52, v53, v54, v55;
  [v61 getPassesWithUniqueIdentifiers:v35 handler:v48];
  _Block_release(v48);
}

uint64_t sub_1BD54137C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2 = sub_1BE048C84();
  sub_1BDA7AB24(v2);
  return swift_endAccess();
}

void sub_1BD5413DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1BD0E5E8C(0, &qword_1EBD49E48, 0x1E6964E80);
  v4 = sub_1BE052744();
  sub_1BE048964();
  v3(v4);
  v2, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

void sub_1BD541460(uint64_t *a1, id *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [*a2 uniqueIdentifier];
  if (!v11)
  {
    sub_1BE052434();
    v13 = v12;
    v11 = sub_1BE052404();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  v21 = [objc_opt_self() passUniqueIdentifierFromSpotlightIdentifier_];

  if (v21)
  {
    v75 = v6;
    v74 = sub_1BE052434();
    v23 = v22;

    v24 = objc_allocWithZone(MEMORY[0x1E6964E00]);
    v25 = sub_1BE052404();
    v26 = [v24 initWithKeyName_];

    if (v26)
    {
      v27 = [v10 attributeSet];
      v28 = [v27 valueForCustomKey_];

      if (v28 && (v76[3] = v28, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E20, &qword_1BE0E02A8), (swift_dynamicCast() & 1) != 0))
      {
        v29 = v76[0];
        v30 = v76[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = *a1;
        sub_1BD1DB974(v29, v30, v74, v23, isUniquelyReferenced_nonNull_native);

        v23, v32, v33, v34, v35, v36, v37, v38;
        *a1 = v76[0];
      }

      else
      {
        sub_1BE04D074();
        sub_1BE048C84();
        v39 = sub_1BE04D204();
        v40 = sub_1BE052C34();
        v23, v41, v42, v43, v44, v45, v46, v47;
        if (os_log_type_enabled(v39, v40))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v73[1] = v2;
          v50 = v49;
          v76[0] = v49;
          *v48 = 136315138;
          v51 = sub_1BD123690(v74, v23, v76);
          v23, v52, v53, v54, v55, v56, v57, v58;
          *(v48 + 4) = v51;
          _os_log_impl(&dword_1BD026000, v39, v40, "PassEntityDataProvider: No thumbnail found for %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50, v59, v60, v61, v62, v63, v64, v65);
          MEMORY[0x1BFB45F20](v50, -1, -1);
          MEMORY[0x1BFB45F20](v48, -1, -1);
        }

        else
        {

          v23, v66, v67, v68, v69, v70, v71, v72;
        }

        (*(v75 + 8))(v9, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD5417D4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 296) = a1;
  v4 = sub_1BE04D214();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD541898, 0, 0);
}

uint64_t sub_1BD541898()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD541A1C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E10, &qword_1BE0BF320);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD038E38;
    v0[13] = &block_descriptor_118;
    v0[14] = v3;
    [v2 unexpiredPassesOrderedByGroup_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1BD541A1C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD541AFC, 0, 0);
}

uint64_t sub_1BD541AFC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  *(v0 + 208) = v2;

  if (v2)
  {
    if (*(v0 + 160))
    {
      result = *(v0 + 168);
      v4 = MEMORY[0x1E69E7CC0];
      *(v0 + 152) = MEMORY[0x1E69E7CC0];
      if (v2 >> 62)
      {
        v15 = result;
        v5 = sub_1BE053704();
        result = v15;
        *(v0 + 216) = v5;
        if (v5)
        {
LABEL_5:
          if (v5 < 1)
          {
            __break(1u);
          }

          else
          {
            *(v0 + 224) = 0;
            *(v0 + 232) = v4;
            v6 = *(v0 + 208);
            sub_1BE048964();
            if ((v6 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1BFB40900](0, v6);
            }

            else
            {
              v7 = *(v6 + 32);
            }

            v13 = v7;
            *(v0 + 240) = v7;
            v24 = (*(v0 + 160) + **(v0 + 160));
            v14 = swift_task_alloc();
            *(v0 + 248) = v14;
            *v14 = v0;
            v14[1] = sub_1BD541DD0;

            return v24(v13);
          }

          return result;
        }
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 216) = v5;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      sub_1BD0D44B8(*(v0 + 160), *(v0 + 168));
      *(v0 + 264) = v4;
      *(v0 + 208), v16, v17, v18, v19, v20, v21, v22;
      v23 = swift_task_alloc();
      *(v0 + 272) = v23;
      *v23 = v0;
      v23[1] = sub_1BD542128;
      v11 = *(v0 + 296);
      v12 = v4;
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 288) = v10;
      *v10 = v0;
      v10[1] = sub_1BD5422B8;
      v11 = *(v0 + 296);
      v12 = v2;
    }

    return sub_1BD0391EC(v12, v11);
  }

  else
  {

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1BD541DD0(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1BD5423F4;
  }

  else
  {
    *(v4 + 297) = a1 & 1;
    v5 = sub_1BD541EFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD541EFC()
{
  v1 = *(v0 + 240);
  if (*(v0 + 297))
  {
    v2 = (v0 + 152);
    MEMORY[0x1BFB3F7A0](v1);
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v3 = *(v0 + 240);
    sub_1BE0527C4();
  }

  else
  {

    v2 = (v0 + 232);
  }

  v11 = *v2;
  v12 = *(v0 + 224) + 1;
  if (v12 == *(v0 + 216))
  {
    *(v0 + 264) = v11;
    *(v0 + 208), v4, v5, v6, v7, v8, v9, v10;
    v13 = swift_task_alloc();
    *(v0 + 272) = v13;
    *v13 = v0;
    v13[1] = sub_1BD542128;
    v14 = *(v0 + 296);

    return sub_1BD0391EC(v11, v14);
  }

  else
  {
    *(v0 + 224) = v12;
    *(v0 + 232) = v11;
    v16 = *(v0 + 208);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v17 = *(v16 + 8 * v12 + 32);
    }

    v18 = v17;
    *(v0 + 240) = v17;
    v20 = (*(v0 + 160) + **(v0 + 160));
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_1BD541DD0;

    return v20(v18);
  }
}

uint64_t sub_1BD542128(uint64_t a1)
{
  v2 = *(*v1 + 264);
  *(*v1 + 280) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD542248, 0, 0);
}

uint64_t sub_1BD542248(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0D4744(*(v8 + 160), *(v8 + 168), a3, a4, a5, a6, a7, a8);
  v9 = *(v8 + 280);

  v10 = *(v8 + 8);

  return v10(v9);
}

uint64_t sub_1BD5422B8(uint64_t a1)
{
  v3 = *(*v1 + 208);
  v13 = *v1;

  v3, v4, v5, v6, v7, v8, v9, v10;

  v11 = *(v13 + 8);

  return v11(a1);
}

uint64_t sub_1BD5423F4(uint64_t a1)
{
  v2 = *(v1 + 256);
  sub_1BE04D074();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 256);
  v8 = *(v1 + 240);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v4, v5, "PassEntityDataProvider: Encountered error during filtering: %@", v9, 0xCu);
    sub_1BD1E236C(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
  v20 = *(v1 + 224) + 1;
  if (v20 == *(v1 + 216))
  {
    v21 = *(v1 + 232);
    *(v1 + 264) = v21;
    *(v1 + 208), v13, v14, v15, v16, v17, v18, v19;
    v22 = swift_task_alloc();
    *(v1 + 272) = v22;
    *v22 = v1;
    v22[1] = sub_1BD542128;
    v23 = *(v1 + 296);

    return sub_1BD0391EC(v21, v23);
  }

  else
  {
    *(v1 + 224) = v20;
    v25 = *(v1 + 208);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v26 = *(v25 + 8 * v20 + 32);
    }

    v27 = v26;
    *(v1 + 240) = v26;
    v29 = (*(v1 + 160) + **(v1 + 160));
    v28 = swift_task_alloc();
    *(v1 + 248) = v28;
    *v28 = v1;
    v28[1] = sub_1BD541DD0;

    return v29(v27);
  }
}

uint64_t sub_1BD5426E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 336) = a4;
  *(v6 + 168) = a2;
  *(v6 + 176) = a3;
  *(v6 + 160) = a1;
  v7 = sub_1BE04D214();
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5427CC, 0, 0);
}

uint64_t sub_1BD5427CC()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = swift_task_alloc();
    *(v0 + 248) = v3;
    *v3 = v0;
    v3[1] = sub_1BD5428F0;
    v4 = *(v0 + 336);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);

    return sub_1BD0395F8(0, v6, v2, v5, 0, v4);
  }

  else
  {

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1BD5428F0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD5429F0, 0, 0);
}

uint64_t sub_1BD5429F0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[34] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738, &qword_1BE0BF330);
  *v4 = v0;
  v4[1] = sub_1BD542AFC;

  return MEMORY[0x1EEE6DDE0](v0 + 18, 0, 0, 0xD000000000000033, 0x80000001BE12DFD0, sub_1BD5441CC, v3, v5);
}

uint64_t sub_1BD542AFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD542C14, 0, 0);
}

char *sub_1BD542C14(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (!*(v8 + 184))
  {
LABEL_13:
    v33 = *(v8 + 256);
    if (*(v8 + 336) == 1)
    {
      v9 = sub_1BD03ED74(v33);
      v41 = *(v8 + 144);
      v10 = v41;
      if (v41 >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v172 = MEMORY[0x1E69E7CC0];
        result = sub_1BD03EF98(0, i & ~(i >> 63), 0, v36, v37, v38, v39, v40);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_61;
        }

        v43 = 0;
        v44 = v172;
        v45 = v10;
        v169 = v10;
        v171 = v10 & 0xC000000000000001;
        v168 = v10 & 0xFFFFFFFFFFFFFF8;
        v10 = i;
        while (1)
        {
          v46 = (v43 + 1);
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v171)
          {
            v47 = MEMORY[0x1BFB40900](v43, v45);
          }

          else
          {
            if (v43 >= *(v168 + 16))
            {
              goto LABEL_45;
            }

            v47 = *&v45[8 * v43 + 32];
          }

          v48 = v47;
          result = [v47 uniqueID];
          if (!result)
          {
            goto LABEL_62;
          }

          v49 = result;
          v50 = sub_1BE052434();
          v52 = v51;

          if (!v9[2])
          {
            v52, v53, v54, v55, v56, v57, v58, v59;
LABEL_28:
            v73 = 0;
            v72 = 0xF000000000000000;
            goto LABEL_29;
          }

          v60 = sub_1BD148F70(v50, v52);
          v62 = v61;
          v52, v61, v63, v64, v65, v66, v67, v68;
          if ((v62 & 1) == 0)
          {
            goto LABEL_28;
          }

          v69 = (v9[7] + 16 * v60);
          v70 = *v69;
          v71 = v69[1];
          sub_1BD041A38(*v69, v71);
          v72 = v71;
          v73 = v70;
LABEL_29:
          sub_1BD02F840(v48, v73, v72, (v8 + 80));
          v81 = v172[2];
          v80 = v172[3];
          if (v81 >= v80 >> 1)
          {
            sub_1BD03EF98((v80 > 1), v81 + 1, 1, v75, v76, v77, v78, v79);
          }

          v172[2] = v81 + 1;
          v82 = &v172[8 * v81];
          v83 = *(v8 + 80);
          v84 = *(v8 + 96);
          v85 = *(v8 + 128);
          v82[4] = *(v8 + 112);
          v82[5] = v85;
          v82[2] = v83;
          v82[3] = v84;
          ++v43;
          v45 = v169;
          if (v46 == v10)
          {
            *(v8 + 256), v169, v74, v75, v76, v77, v78, v79;
            v9, v110, v111, v112, v113, v114, v115, v116;
            v169, v117, v118, v119, v120, v121, v122, v123;
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }

      *(v8 + 256), v34, v35, v36, v37, v38, v39, v40;
      v9, v124, v125, v126, v127, v128, v129, v130;
      v10, v131, v132, v133, v134, v135, v136, v137;
      v44 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v138 = (v8 + 232);
      sub_1BE04D074();
      sub_1BE048C84();
      v139 = sub_1BE04D204();
      v140 = sub_1BE052C54();
      if (os_log_type_enabled(v139, v140))
      {
        v148 = swift_slowAlloc();
        *v148 = 134217984;
        *(v148 + 4) = v44[2];
        v44, v149, v150, v151, v152, v153, v154, v155;
        v156 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_55:
        _os_log_impl(&dword_1BD026000, v139, v140, v156, v148, 0xCu);
        MEMORY[0x1BFB45F20](v148, -1, -1);
LABEL_57:

        v164 = *v138;
        v165 = *(v8 + 200);
        v166 = *(v8 + 208);

        (*(v166 + 8))(v164, v165);

        v167 = *(v8 + 8);

        return v167(v44);
      }

      goto LABEL_56;
    }

    v33, a2, a3, a4, a5, a6, a7, a8;
    v93 = *(v8 + 144);
    if (v93 >> 62)
    {
      v94 = sub_1BE053704();
      if (v94)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v94)
      {
LABEL_35:
        v173 = MEMORY[0x1E69E7CC0];
        result = sub_1BD03EF98(0, v94 & ~(v94 >> 63), 0, v88, v89, v90, v91, v92);
        if (v94 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          return result;
        }

        v95 = 0;
        v44 = v173;
        do
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x1BFB40900](v95, v93);
          }

          else
          {
            v96 = *(v93 + 8 * v95 + 32);
          }

          sub_1BD02F840(v96, 0, 0xF000000000000000, (v8 + 16));
          v105 = v173[2];
          v104 = v173[3];
          if (v105 >= v104 >> 1)
          {
            sub_1BD03EF98((v104 > 1), v105 + 1, 1, v99, v100, v101, v102, v103);
          }

          ++v95;
          v173[2] = v105 + 1;
          v106 = &v173[8 * v105];
          v107 = *(v8 + 16);
          v108 = *(v8 + 32);
          v109 = *(v8 + 64);
          v106[4] = *(v8 + 48);
          v106[5] = v109;
          v106[2] = v107;
          v106[3] = v108;
        }

        while (v94 != v95);
        v93, v97, v98, v99, v100, v101, v102, v103;
LABEL_53:
        v138 = (v8 + 224);
        sub_1BE04D074();
        sub_1BE048C84();
        v139 = sub_1BE04D204();
        v140 = sub_1BE052C54();
        if (os_log_type_enabled(v139, v140))
        {
          v148 = swift_slowAlloc();
          *v148 = 134217984;
          *(v148 + 4) = v44[2];
          v44, v157, v158, v159, v160, v161, v162, v163;
          v156 = "PassEntityDataProvider: Returning %ld entities without snapshots";
          goto LABEL_55;
        }

LABEL_56:
        v44, v141, v142, v143, v144, v145, v146, v147;
        goto LABEL_57;
      }
    }

    v93, v86, v87, v88, v89, v90, v91, v92;
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 152) = MEMORY[0x1E69E7CC0];
  v11 = *(v8 + 144);
  *(v8 + 280) = v11;
  if (v11 >> 62)
  {
    v12 = sub_1BE053704();
    *(v8 + 288) = v12;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v8 + 288) = v12;
  if (!v12)
  {
LABEL_12:
    sub_1BE048964();
    v18 = *(v8 + 184);
    v19 = *(v8 + 192);
    *(v8 + 280), v20, v21, v22, v23, v24, v25, v26;
    sub_1BD0D4744(v18, v19, v27, v28, v29, v30, v31, v32);
    *(v8 + 144) = v10;
    goto LABEL_13;
  }

LABEL_4:
  if (v12 < 1)
  {
    goto LABEL_46;
  }

  *(v8 + 296) = 0;
  *(v8 + 304) = v10;
  v13 = *(v8 + 280);
  sub_1BE048964();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1BFB40900](0, v13);
  }

  else
  {
    v14 = *(v13 + 32);
  }

  v15 = v14;
  *(v8 + 312) = v14;
  v170 = (*(v8 + 184) + **(v8 + 184));
  v16 = swift_task_alloc();
  *(v8 + 320) = v16;
  *v16 = v8;
  v16[1] = sub_1BD5432B0;

  return v170(v15);
}

uint64_t sub_1BD5432B0(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1BD543A80;
  }

  else
  {
    *(v4 + 337) = a1 & 1;
    v5 = sub_1BD5433DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

char *sub_1BD5433DC()
{
  v173 = v0;
  v1 = *(v0 + 312);
  if (*(v0 + 337))
  {
    v2 = v0 + 152;
    MEMORY[0x1BFB3F7A0](v1);
    if (*((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  v2 = v0 + 304;
LABEL_5:
  v11 = *v2;
  v12 = *(v0 + 296) + 1;
  if (v12 != *(v0 + 288))
  {
    *(v0 + 296) = v12;
    *(v0 + 304) = v11;
    v82 = *(v0 + 280);
    if ((v82 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v83 = *(v82 + 8 * v12 + 32);
    }

    v108 = v83;
    *(v0 + 312) = v83;
    v171 = (*(v0 + 184) + **(v0 + 184));
    v109 = swift_task_alloc();
    *(v0 + 320) = v109;
    *v109 = v0;
    v109[1] = sub_1BD5432B0;

    return v171(v108);
  }

  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  *(v0 + 280), v4, v5, v6, v7, v8, v9, v10;
  sub_1BD0D4744(v13, v14, v15, v16, v17, v18, v19, v20);
  *(v0 + 144) = v11;
  v28 = *(v0 + 256);
  if (*(v0 + 336) == 1)
  {
    v36 = sub_1BD03ED74(v28);
    v37 = *(v0 + 144);
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_1BE053704();
      if (v39)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_9:
        v172 = MEMORY[0x1E69E7CC0];
        v2 = &v172;
        result = sub_1BD03EF98(0, v39 & ~(v39 >> 63), 0, v31, v32, v33, v34, v35);
        if ((v39 & 0x8000000000000000) == 0)
        {
          v41 = 0;
          v42 = v172;
          v43 = v38;
          v169 = v38;
          v170 = v38 & 0xC000000000000001;
          v168 = v38 & 0xFFFFFFFFFFFFFF8;
          v44 = v39;
          while (1)
          {
            v45 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              sub_1BE052774();
LABEL_3:
              v3 = *(v0 + 312);
              sub_1BE0527C4();

              goto LABEL_5;
            }

            if (v170)
            {
              v46 = MEMORY[0x1BFB40900](v41, v43);
            }

            else
            {
              if (v41 >= *(v168 + 16))
              {
                goto LABEL_44;
              }

              v46 = *&v43[8 * v41 + 32];
            }

            v47 = v46;
            result = [v46 uniqueID];
            if (!result)
            {
              goto LABEL_61;
            }

            v2 = result;
            v48 = sub_1BE052434();
            v50 = v49;

            if (!v36[2])
            {
              break;
            }

            v2 = sub_1BD148F70(v48, v50);
            v59 = v58;
            v50, v58, v60, v61, v62, v63, v64, v65;
            if ((v59 & 1) == 0)
            {
              goto LABEL_21;
            }

            v66 = (v36[7] + 16 * v2);
            v2 = *v66;
            v67 = v66[1];
            sub_1BD041A38(*v66, v67);
            v68 = v67;
            v69 = v2;
LABEL_22:
            sub_1BD02F840(v47, v69, v68, (v0 + 80));
            v172 = v42;
            v77 = v42[2];
            v76 = v42[3];
            if (v77 >= v76 >> 1)
            {
              v2 = &v172;
              sub_1BD03EF98((v76 > 1), v77 + 1, 1, v71, v72, v73, v74, v75);
              v42 = v172;
            }

            v42[2] = v77 + 1;
            v78 = &v42[8 * v77];
            v79 = *(v0 + 80);
            v80 = *(v0 + 96);
            v81 = *(v0 + 128);
            v78[4] = *(v0 + 112);
            v78[5] = v81;
            v78[2] = v79;
            v78[3] = v80;
            ++v41;
            v43 = v169;
            if (v45 == v44)
            {
              *(v0 + 256), v169, v70, v71, v72, v73, v74, v75;
              v36, v110, v111, v112, v113, v114, v115, v116;
              v169, v117, v118, v119, v120, v121, v122, v123;
              goto LABEL_48;
            }
          }

          v50, v51, v52, v53, v54, v55, v56, v57;
LABEL_21:
          v69 = 0;
          v68 = 0xF000000000000000;
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_60;
      }
    }

    *(v0 + 256), v29, v30, v31, v32, v33, v34, v35;
    v36, v124, v125, v126, v127, v128, v129, v130;
    v38, v131, v132, v133, v134, v135, v136, v137;
    v42 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v138 = (v0 + 232);
    sub_1BE04D074();
    sub_1BE048C84();
    v139 = sub_1BE04D204();
    v140 = sub_1BE052C54();
    if (os_log_type_enabled(v139, v140))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      *(v148 + 4) = v42[2];
      v42, v149, v150, v151, v152, v153, v154, v155;
      v156 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_54:
      _os_log_impl(&dword_1BD026000, v139, v140, v156, v148, 0xCu);
      MEMORY[0x1BFB45F20](v148, -1, -1);
LABEL_56:

      v164 = *v138;
      v165 = *(v0 + 200);
      v166 = *(v0 + 208);

      (*(v166 + 8))(v164, v165);

      v167 = *(v0 + 8);

      return v167(v42);
    }

    goto LABEL_55;
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
  v91 = *(v0 + 144);
  if (!(v91 >> 62))
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
      goto LABEL_30;
    }

LABEL_51:
    v91, v84, v85, v86, v87, v88, v89, v90;
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_52;
  }

  v92 = sub_1BE053704();
  if (!v92)
  {
    goto LABEL_51;
  }

LABEL_30:
  v172 = MEMORY[0x1E69E7CC0];
  result = sub_1BD03EF98(0, v92 & ~(v92 >> 63), 0, v86, v87, v88, v89, v90);
  if ((v92 & 0x8000000000000000) == 0)
  {
    v93 = 0;
    v42 = v172;
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x1BFB40900](v93, v91);
      }

      else
      {
        v94 = *(v91 + 8 * v93 + 32);
      }

      sub_1BD02F840(v94, 0, 0xF000000000000000, (v0 + 16));
      v172 = v42;
      v103 = v42[2];
      v102 = v42[3];
      if (v103 >= v102 >> 1)
      {
        sub_1BD03EF98((v102 > 1), v103 + 1, 1, v97, v98, v99, v100, v101);
        v42 = v172;
      }

      ++v93;
      v42[2] = v103 + 1;
      v104 = &v42[8 * v103];
      v105 = *(v0 + 16);
      v106 = *(v0 + 32);
      v107 = *(v0 + 64);
      v104[4] = *(v0 + 48);
      v104[5] = v107;
      v104[2] = v105;
      v104[3] = v106;
    }

    while (v92 != v93);
    v91, v95, v96, v97, v98, v99, v100, v101;
LABEL_52:
    v138 = (v0 + 224);
    sub_1BE04D074();
    sub_1BE048C84();
    v139 = sub_1BE04D204();
    v140 = sub_1BE052C54();
    if (os_log_type_enabled(v139, v140))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      *(v148 + 4) = v42[2];
      v42, v157, v158, v159, v160, v161, v162, v163;
      v156 = "PassEntityDataProvider: Returning %ld entities without snapshots";
      goto LABEL_54;
    }

LABEL_55:
    v42, v141, v142, v143, v144, v145, v146, v147;
    goto LABEL_56;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

char *sub_1BD543A80(uint64_t a1)
{
  v2 = *(v1 + 328);
  sub_1BE04D074();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 328);
  v8 = *(v1 + 312);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v4, v5, "PassEntityDataProvider: Encountered error filtering passes: %@", v9, 0xCu);
    sub_1BD1E236C(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
  v20 = *(v1 + 296) + 1;
  if (v20 != *(v1 + 288))
  {
    *(v1 + 296) = v20;
    v93 = *(v1 + 280);
    if ((v93 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v94 = *(v93 + 8 * v20 + 32);
    }

    v119 = v94;
    *(v1 + 312) = v94;
    v182 = (*(v1 + 184) + **(v1 + 184));
    v120 = swift_task_alloc();
    *(v1 + 320) = v120;
    *v120 = v1;
    v120[1] = sub_1BD5432B0;

    return v182(v119);
  }

  v21 = *(v1 + 304);
  v22 = *(v1 + 184);
  v23 = *(v1 + 192);
  *(v1 + 280), v13, v14, v15, v16, v17, v18, v19;
  sub_1BD0D4744(v22, v23, v24, v25, v26, v27, v28, v29);
  *(v1 + 144) = v21;
  v37 = *(v1 + 256);
  if (*(v1 + 336) == 1)
  {
    v45 = sub_1BD03ED74(v37);
    v46 = *(v1 + 144);
    v47 = v46;
    if (v46 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v183 = MEMORY[0x1E69E7CC0];
      result = sub_1BD03EF98(0, i & ~(i >> 63), 0, v40, v41, v42, v43, v44);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v50 = 0;
      v51 = v183;
      v52 = v47;
      v180 = v47;
      v181 = v47 & 0xC000000000000001;
      v179 = v47 & 0xFFFFFFFFFFFFFF8;
      v47 = i;
      while (1)
      {
        v53 = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v181)
        {
          v54 = MEMORY[0x1BFB40900](v50, v52);
        }

        else
        {
          if (v50 >= *(v179 + 16))
          {
            goto LABEL_43;
          }

          v54 = *&v52[8 * v50 + 32];
        }

        v55 = v54;
        result = [v54 uniqueID];
        if (!result)
        {
          goto LABEL_59;
        }

        v56 = result;
        v57 = sub_1BE052434();
        v59 = v58;

        if (!v45[2])
        {
          v59, v60, v61, v62, v63, v64, v65, v66;
LABEL_20:
          v80 = 0;
          v79 = 0xF000000000000000;
          goto LABEL_21;
        }

        v67 = sub_1BD148F70(v57, v59);
        v69 = v68;
        v59, v68, v70, v71, v72, v73, v74, v75;
        if ((v69 & 1) == 0)
        {
          goto LABEL_20;
        }

        v76 = (v45[7] + 16 * v67);
        v77 = *v76;
        v78 = v76[1];
        sub_1BD041A38(*v76, v78);
        v79 = v78;
        v80 = v77;
LABEL_21:
        sub_1BD02F840(v55, v80, v79, (v1 + 80));
        v88 = v183[2];
        v87 = v183[3];
        if (v88 >= v87 >> 1)
        {
          sub_1BD03EF98((v87 > 1), v88 + 1, 1, v82, v83, v84, v85, v86);
        }

        v183[2] = v88 + 1;
        v89 = &v183[8 * v88];
        v90 = *(v1 + 80);
        v91 = *(v1 + 96);
        v92 = *(v1 + 128);
        v89[4] = *(v1 + 112);
        v89[5] = v92;
        v89[2] = v90;
        v89[3] = v91;
        ++v50;
        v52 = v180;
        if (v53 == v47)
        {
          *(v1 + 256), v180, v81, v82, v83, v84, v85, v86;
          v45, v121, v122, v123, v124, v125, v126, v127;
          v180, v128, v129, v130, v131, v132, v133, v134;
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

    *(v1 + 256), v38, v39, v40, v41, v42, v43, v44;
    v45, v135, v136, v137, v138, v139, v140, v141;
    v47, v142, v143, v144, v145, v146, v147, v148;
    v51 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v149 = (v1 + 232);
    sub_1BE04D074();
    sub_1BE048C84();
    v150 = sub_1BE04D204();
    v151 = sub_1BE052C54();
    if (os_log_type_enabled(v150, v151))
    {
      v159 = swift_slowAlloc();
      *v159 = 134217984;
      *(v159 + 4) = v51[2];
      v51, v160, v161, v162, v163, v164, v165, v166;
      v167 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_52:
      _os_log_impl(&dword_1BD026000, v150, v151, v167, v159, 0xCu);
      MEMORY[0x1BFB45F20](v159, -1, -1);
LABEL_54:

      v175 = *v149;
      v176 = *(v1 + 200);
      v177 = *(v1 + 208);

      (*(v177 + 8))(v175, v176);

      v178 = *(v1 + 8);

      return v178(v51);
    }

    goto LABEL_53;
  }

  v37, v30, v31, v32, v33, v34, v35, v36;
  v102 = *(v1 + 144);
  if (v102 >> 62)
  {
    v103 = sub_1BE053704();
    if (v103)
    {
      goto LABEL_29;
    }

LABEL_49:
    v102, v95, v96, v97, v98, v99, v100, v101;
    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v103)
  {
    goto LABEL_49;
  }

LABEL_29:
  v184 = MEMORY[0x1E69E7CC0];
  result = sub_1BD03EF98(0, v103 & ~(v103 >> 63), 0, v97, v98, v99, v100, v101);
  if ((v103 & 0x8000000000000000) == 0)
  {
    v104 = 0;
    v51 = v184;
    do
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v105 = MEMORY[0x1BFB40900](v104, v102);
      }

      else
      {
        v105 = *(v102 + 8 * v104 + 32);
      }

      sub_1BD02F840(v105, 0, 0xF000000000000000, (v1 + 16));
      v114 = v184[2];
      v113 = v184[3];
      if (v114 >= v113 >> 1)
      {
        sub_1BD03EF98((v113 > 1), v114 + 1, 1, v108, v109, v110, v111, v112);
      }

      ++v104;
      v184[2] = v114 + 1;
      v115 = &v184[8 * v114];
      v116 = *(v1 + 16);
      v117 = *(v1 + 32);
      v118 = *(v1 + 64);
      v115[4] = *(v1 + 48);
      v115[5] = v118;
      v115[2] = v116;
      v115[3] = v117;
    }

    while (v103 != v104);
    v102, v106, v107, v108, v109, v110, v111, v112;
LABEL_50:
    v149 = (v1 + 224);
    sub_1BE04D074();
    sub_1BE048C84();
    v150 = sub_1BE04D204();
    v151 = sub_1BE052C54();
    if (os_log_type_enabled(v150, v151))
    {
      v159 = swift_slowAlloc();
      *v159 = 134217984;
      *(v159 + 4) = v51[2];
      v51, v168, v169, v170, v171, v172, v173, v174;
      v167 = "PassEntityDataProvider: Returning %ld entities without snapshots";
      goto LABEL_52;
    }

LABEL_53:
    v51, v152, v153, v154, v155, v156, v157, v158;
    goto LABEL_54;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BD5441F4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1BE0B7020;
  v3 = *(v1 + 16);
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1BD5442E0;

  return sub_1BD0395F8(v2, 0, 0, 0, 1, 1);
}

uint64_t sub_1BD5442E0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD544400, 0, 0);
}

uint64_t sub_1BD544400()
{
  v1 = *(v0 + 40);
  v2 = sub_1BD03ED74(v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  if (v2[2] && (v17 = sub_1BD148F70(**(v0 + 16), *(*(v0 + 16) + 8)), (v10 & 1) != 0))
  {
    v18 = (v2[7] + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_1BD041A38(*v18, v20);
  }

  else
  {
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  v2, v10, v11, v12, v13, v14, v15, v16;
  v21 = *(v0 + 8);

  return v21(v19, v20);
}

uint64_t type metadata accessor for SettingsTransactionSection(uint64_t a1)
{
  result = qword_1EBD49E60;
  if (!qword_1EBD49E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD544540(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
  if (v1 <= 0x3F)
  {
    sub_1BD5445EC(319);
    if (v2 <= 0x3F)
    {
      sub_1BD544644(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD5445EC(uint64_t a1)
{
  if (!qword_1EBD49E70)
  {
    type metadata accessor for TransactionsModel(255);
    v1 = sub_1BE051AB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD49E70);
    }
  }
}

void sub_1BD544644(uint64_t a1)
{
  if (!qword_1EBD49E78)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0, 0x1E69B8330);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD49E78);
    }
  }
}

uint64_t sub_1BD5446D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for SettingsTransactionSection(0);
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E80, &qword_1BE0E03E8);
  *&v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  *&v60 = &v58 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E88, &qword_1BE0E03F0);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E90, &qword_1BE0E03F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E98, &qword_1BE0E0400);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v70 = v1;
  sub_1BD545740(v1, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EA0, &qword_1BE0E0408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EA8, &unk_1BE0E0410);
  sub_1BD0DE4F4(&qword_1EBD49EB0, &qword_1EBD49EA0, &qword_1BE0E0408, MEMORY[0x1E6981F48]);
  sub_1BD546BB8();
  v17 = v16;
  sub_1BE051A24();
  v18 = *v1;
  if ([v18 isAppleCardPass] && PKAppleCardMacTransactionHistoryEnabled())
  {
    v19 = [v18 paymentPass];
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
      sub_1BE051A74();
      v20 = v72;
      v21 = *(v2 + *(v3 + 24));
      LOBYTE(v71) = 0;
      v22 = v21;
      sub_1BE051694();
      v23 = v72;
      v24 = *(&v72 + 1);
      LOBYTE(v71) = 0;
      sub_1BE051694();
      v25 = v72;
      v26 = *(&v72 + 1);
      v71 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F08, &unk_1BE0E0480);
      sub_1BE051694();
      v61 = v72;
      v71 = 0;
      sub_1BE051694();
      v60 = v72;
      v71 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0, &qword_1BE0E0468);
      sub_1BE051694();
      v27 = v60;
      v28 = v61;
      v30 = *(&v72 + 1);
      v29 = v72;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v24 = 0;
      v26 = 0;
      v29 = 0;
      v30 = 0;
      v25 = 0;
      v23 = 0;
      v28 = 0uLL;
      v27 = 0uLL;
    }

    *v7 = v20;
    *(v7 + 1) = v19;
    *(v7 + 2) = v21;
    *(v7 + 3) = v23;
    *(v7 + 4) = v24;
    *(v7 + 5) = v25;
    *(v7 + 6) = v26;
    *(v7 + 56) = v28;
    *(v7 + 72) = v27;
    *(v7 + 11) = v29;
    *(v7 + 12) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EE0, &qword_1BE0E0470);
    sub_1BD54BD94();
    sub_1BD54BE6C();
    v46 = v64;
    sub_1BE04F9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
    sub_1BE051A74();
    v31 = v72;
    KeyPath = swift_getKeyPath();
    *&v72 = v31;
    sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B594();
    KeyPath, v33, v34, v35, v36, v37, v38, v39;
    v40 = *&v31[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions];
    sub_1BE048C84();

    *&v72 = v40;
    swift_getKeyPath();
    sub_1BD54BBB4(v2, &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    sub_1BD54BC18(&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0, &qword_1BE0E0468);
    sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0, &qword_1BE0E0468, MEMORY[0x1E69E6338]);
    sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10, 0x1E69B8EA8, MEMORY[0x1E69E81B8]);
    sub_1BD54BD40();
    v43 = v60;
    sub_1BE0519C4();
    v44 = v61;
    v45 = v67;
    (*(v61 + 16))(v7, v43, v67);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EE0, &qword_1BE0E0470);
    sub_1BD54BD94();
    sub_1BD54BE6C();
    v46 = v64;
    sub_1BE04F9A4();
    (*(v44 + 8))(v43, v45);
  }

  v47 = v65;
  v48 = *(v65 + 16);
  v49 = v63;
  v50 = v17;
  v51 = v17;
  v52 = v66;
  v48(v63, v51, v66);
  v53 = v68;
  sub_1BD0DE19C(v46, v68, &qword_1EBD49E90, &qword_1BE0E03F8);
  v54 = v69;
  v48(v69, v49, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F00, &qword_1BE0E0478);
  sub_1BD0DE19C(v53, &v54[*(v55 + 48)], &qword_1EBD49E90, &qword_1BE0E03F8);
  sub_1BD0DE53C(v46, &qword_1EBD49E90, &qword_1BE0E03F8);
  v56 = *(v47 + 8);
  v56(v50, v52);
  sub_1BD0DE53C(v53, &qword_1EBD49E90, &qword_1BE0E03F8);
  return (v56)(v49, v52);
}

uint64_t sub_1BD544F98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D60, &qword_1BE0C9720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

uint64_t sub_1BD545094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for SettingsTransactionSection(0);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v39 - v9;
  sub_1BE051A84();
  KeyPath = swift_getKeyPath();
  sub_1BE051AA4();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  (*(v6 + 8))(v8, v5);
  sub_1BE051814();
  sub_1BE051A74();
  v19 = v44;
  v20 = swift_getKeyPath();
  v44 = v19;
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  v20, v21, v22, v23, v24, v25, v26, v27;
  LOBYTE(v20) = v19[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled];

  LOBYTE(v44) = v20;
  sub_1BD54BBB4(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = swift_allocObject();
  sub_1BD54BC18(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
  v30 = v40;
  sub_1BE051064();
  v29, v31, v32, v33, v34, v35, v36, v37;
  return (*(v42 + 8))(v10, v30);
}

void sub_1BD545450(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled);
}

id sub_1BD545528@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD545694(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for SettingsTransactionSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
  sub_1BE051A74();
  v3 = *&v6[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass];
  v4 = [v3 settings] & 0xFFFFFFFFFFFFFFF7;
  v5 = 8;
  if (!v2)
  {
    v5 = 0;
  }

  [v3 setSettings_];
}

void sub_1BD545740(id *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v101 - v8;
  v10 = *MEMORY[0x1E69B80F0];
  v11 = *(v4 + 104);
  v11(&v101 - v8, v10, v3, v7);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    v17 = *(v4 + 8);
    v17(v9, v3);
    v107 = v14;
    v108 = v16;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v105 = v19;
    v104 = v20;
    v22 = v21;
    if ([*v106 isAppleCardPass])
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
LABEL_6:
      v79 = (v104 & 1);
      v80 = v105;
      sub_1BD0D7F18(v18, v105, v104 & 1);
      sub_1BE048C84();
      sub_1BD1969AC(v23, v24, v25, v26);
      sub_1BD1969F0(v23, v24, v25, v26, v81, v82, v83, v84);
      LOBYTE(v107) = v79;
      *a2 = v18;
      *(a2 + 8) = v80;
      *(a2 + 16) = v79;
      *(a2 + 24) = v22;
      *(a2 + 32) = v23;
      *(a2 + 40) = v24;
      *(a2 + 48) = v25;
      *(a2 + 56) = v26;
      sub_1BD1969F0(v23, v24, v25, v26, v85, v86, v87, v88);
      sub_1BD0DDF10(v18, v80, v79, v89, v90, v91, v92, v93);
      v22, v94, v95, v96, v97, v98, v99, v100;
      return;
    }

    v102 = v18;
    v106 = v22;
    v27 = v103;
    (v11)(v103, v10, v3);
    v28 = PKPassKitBundle();
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BE04B6F4();
      v32 = v31;

      v17(v27, v3);
      v107 = v30;
      v108 = v32;
      v33 = sub_1BE0506C4();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      LODWORD(v107) = sub_1BE04FC94();
      v40 = sub_1BE050574();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      sub_1BD0DDF10(v33, v35, (v37 & 1), v45, v47, v48, v49, v50);
      v39, v51, v52, v53, v54, v55, v56, v57;
      v58 = sub_1BE050454();
      v23 = sub_1BE0505F4();
      v24 = v59;
      v61 = v60;
      v26 = v62;
      v58, v59, v60, v62, v63, v64, v65, v66;
      sub_1BD0DDF10(v40, v42, (v44 & 1), v67, v68, v69, v70, v71);
      v46, v72, v73, v74, v75, v76, v77, v78;
      v25 = v61 & 1;
      sub_1BD0D7F18(v23, v24, v61 & 1);
      sub_1BE048C84();
      v22 = v106;
      v18 = v102;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD545B14@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for SettingsTransactionSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
  sub_1BE051A74();
  *a2 = v5;
  a2[1] = v4;

  return v4;
}

uint64_t sub_1BD545B98@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BE04F7C4();
  sub_1BD545E44(a2, &v38);
  v44 = *&v39[16];
  v45 = *&v39[32];
  v46 = *&v39[48];
  v47 = *&v39[64];
  v42 = v38;
  v43 = *v39;
  v48[2] = *&v39[16];
  v48[3] = *&v39[32];
  v48[4] = *&v39[48];
  v48[5] = *&v39[64];
  v48[0] = v38;
  v48[1] = *v39;
  sub_1BD0DE19C(&v42, &v30, &qword_1EBD41CC0, &qword_1BE0CC0E8);
  sub_1BD0DE53C(v48, &qword_1EBD41CC0, &qword_1BE0CC0E8);
  *&v41[39] = v44;
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[7] = v42;
  *&v41[23] = v43;
  v6 = sub_1BD96CC28(a2);
  if (v7)
  {
    *&v38 = v6;
    *(&v38 + 1) = v7;
    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13 & 1;
    sub_1BD0D7F18(v8, v9, v13 & 1);
    sub_1BE048C84();
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v14 = 0;
    v12 = 0;
  }

  v28 = v5;
  v29[0] = 1;
  *&v29[17] = *&v41[16];
  *&v29[1] = *v41;
  *&v29[81] = *&v41[80];
  *&v29[65] = *&v41[64];
  *&v29[49] = *&v41[48];
  *&v29[96] = *&v41[95];
  *&v29[33] = *&v41[32];
  v32 = *&v29[16];
  v33 = *&v29[32];
  v37 = *&v41[95];
  v35 = *&v29[64];
  v36 = *&v29[80];
  v34 = *&v29[48];
  v30 = v5;
  v31 = *v29;
  sub_1BD0DE19C(&v28, &v38, &qword_1EBD49F50, &unk_1BE0E0660);
  sub_1BD1969AC(v8, v10, v14, v12);
  sub_1BD1969F0(v8, v10, v14, v12, v15, v16, v17, v18);
  v19 = v35;
  *(a3 + 64) = v34;
  *(a3 + 80) = v19;
  *(a3 + 96) = v36;
  v20 = v37;
  v21 = v31;
  *a3 = v30;
  *(a3 + 16) = v21;
  v22 = v33;
  *(a3 + 32) = v32;
  *(a3 + 48) = v22;
  *(a3 + 112) = v20;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v8;
  *(a3 + 144) = v10;
  *(a3 + 152) = v14;
  *(a3 + 160) = v12;
  sub_1BD1969F0(v8, v10, v14, v12, v23, v24, v25, v26);
  v38 = v5;
  v39[0] = 1;
  *&v39[49] = *&v41[48];
  *&v39[65] = *&v41[64];
  *v40 = *&v41[80];
  *&v40[15] = *&v41[95];
  *&v39[1] = *v41;
  *&v39[17] = *&v41[16];
  *&v39[33] = *&v41[32];
  return sub_1BD0DE53C(&v38, &qword_1EBD49F50, &unk_1BE0E0660);
}

void sub_1BD545E44(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1BD96C698(a1);
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v93 = v4;
  v94 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [a1 displayLocation];
  if (v9)
  {
    v10 = v9;
    sub_1BE052434();

    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v11;
    v91 = v16;
    v95 = v14 & 1;
    sub_1BD0D7F18(v11, v16, v14 & 1);
    v90 = v13;
    sub_1BE048C84();
  }

  else
  {
    v15 = 0;
    v90 = 0;
    v91 = 0;
    v95 = 0;
  }

  v92 = v8;
  if ([a1 transactionStatus] == 2)
  {
    sub_1BD54C080(a1);
    v17 = sub_1BE0506C4();
    v18 = v6;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_1BE04FC94();
    v25 = sub_1BE050574();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v20;
    v6 = v18;
    sub_1BD0DDF10(v17, v32, (v22 & 1), v30, v33, v34, v35, v36);
    v24, v37, v38, v39, v40, v41, v42, v43;
    v44 = v25;
    v45 = v27;
    v46 = v29 & 1;
    sub_1BD0D7F18(v25, v27, v29 & 1);
    v47 = v31;
    sub_1BE048C84();
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  v48 = (v6 & 1);
  sub_1BD0D7F18(v94, v93, v48);
  sub_1BE048C84();
  sub_1BD0D7F18(v94, v93, v48);
  sub_1BE048C84();
  sub_1BD1969AC(v15, v91, v95, v90);
  sub_1BD1969AC(v44, v45, v46, v47);
  sub_1BD1969F0(v15, v91, v95, v90, v49, v50, v51, v52);
  sub_1BD1969F0(v44, v45, v46, v47, v53, v54, v55, v56);
  sub_1BD0DDF10(v94, v93, v48, v57, v58, v59, v60, v61);
  v92, v62, v63, v64, v65, v66, v67, v68;
  *a2 = v94;
  *(a2 + 8) = v93;
  *(a2 + 16) = v48;
  *(a2 + 24) = v92;
  *(a2 + 32) = v15;
  *(a2 + 40) = v91;
  *(a2 + 48) = v95;
  *(a2 + 56) = v90;
  *(a2 + 64) = v44;
  *(a2 + 72) = v45;
  *(a2 + 80) = v46;
  *(a2 + 88) = v47;
  sub_1BD1969F0(v44, v45, v46, v47, v69, v70, v71, v72);
  sub_1BD1969F0(v15, v91, v95, v90, v73, v74, v75, v76);
  sub_1BD0DDF10(v94, v93, v48, v77, v78, v79, v80, v81);
  v92, v82, v83, v84, v85, v86, v87, v88;
}

double sub_1BD546150@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = sub_1BE04F504();
  v26 = 1;
  sub_1BD545B98(v4, &v14);
  v35 = v22;
  v36 = v23;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v38[8] = v22;
  v38[9] = v23;
  v38[4] = v18;
  v38[5] = v19;
  v38[6] = v20;
  v38[7] = v21;
  v38[0] = v14;
  v38[1] = v15;
  v37 = v24;
  v39 = v24;
  v38[2] = v16;
  v38[3] = v17;
  sub_1BD0DE19C(&v27, v13, &qword_1EBD49F48, &unk_1BE0E0650);
  sub_1BD0DE53C(v38, &qword_1EBD49F48, &unk_1BE0E0650);
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  v6 = v25[6];
  *(a2 + 129) = v25[7];
  v7 = v25[9];
  *(a2 + 145) = v25[8];
  *(a2 + 161) = v7;
  *(a2 + 176) = *(&v25[9] + 15);
  v8 = v25[2];
  *(a2 + 65) = v25[3];
  v9 = v25[5];
  *(a2 + 81) = v25[4];
  *(a2 + 97) = v9;
  *(a2 + 113) = v6;
  result = *v25;
  v11 = v25[1];
  *(a2 + 17) = v25[0];
  *(a2 + 33) = v11;
  v12 = v26;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 49) = v8;
  return result;
}

uint64_t sub_1BD546328@<X0>(void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1BE04F7C4();
  sub_1BD5465EC(&v43, a3, a2);
  v50 = *&v44[48];
  v51 = *&v44[64];
  v52 = *&v44[80];
  v46 = v43;
  v47 = *v44;
  v48 = *&v44[16];
  v49 = *&v44[32];
  v53[0] = v43;
  v53[1] = *v44;
  v53[2] = *&v44[16];
  v53[3] = *&v44[32];
  v53[4] = *&v44[48];
  v53[5] = *&v44[64];
  v54 = *&v44[80];
  sub_1BD0DE19C(&v46, &v35, &qword_1EBD49F18, &qword_1BE0E04C0);
  sub_1BD0DE53C(v53, &qword_1EBD49F18, &qword_1BE0E04C0);
  *(&v45[3] + 7) = v49;
  *(&v45[4] + 7) = v50;
  *(&v45[5] + 7) = v51;
  *(v45 + 7) = v46;
  *(&v45[1] + 7) = v47;
  *(&v45[6] + 7) = v52;
  *(&v45[2] + 7) = v48;
  v8 = [a3 valueString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE052434();
    v12 = v11;

    *&v43 = v10;
    *(&v43 + 1) = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18 & 1;
    sub_1BD0D7F18(v13, v14, v18 & 1);
    sub_1BE048C84();
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
  }

  v33 = v7;
  v34[0] = 1;
  *&v34[17] = v45[1];
  *&v34[1] = v45[0];
  *&v34[81] = v45[5];
  *&v34[65] = v45[4];
  *&v34[49] = v45[3];
  *&v34[96] = *(&v45[5] + 15);
  *&v34[33] = v45[2];
  v37 = *&v34[16];
  v38 = *&v34[32];
  v41 = *&v34[80];
  v42 = *(&v45[5] + 15);
  v39 = *&v34[48];
  v40 = *&v34[64];
  v35 = v7;
  v36 = *v34;
  sub_1BD0DE19C(&v33, &v43, &qword_1EBD49F20, &qword_1BE0E04C8);
  sub_1BD1969AC(v13, v15, v19, v17);
  sub_1BD1969F0(v13, v15, v19, v17, v20, v21, v22, v23);
  v24 = v40;
  *(a4 + 64) = v39;
  *(a4 + 80) = v24;
  v25 = v42;
  *(a4 + 96) = v41;
  *(a4 + 112) = v25;
  v26 = v36;
  *a4 = v35;
  *(a4 + 16) = v26;
  v27 = v38;
  *(a4 + 32) = v37;
  *(a4 + 48) = v27;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  *(a4 + 144) = v13;
  *(a4 + 152) = v15;
  *(a4 + 160) = v19;
  *(a4 + 168) = v17;
  sub_1BD1969F0(v13, v15, v19, v17, v28, v29, v30, v31);
  *&v44[49] = v45[3];
  *&v44[65] = v45[4];
  *&v44[81] = v45[5];
  *&v44[96] = *(&v45[5] + 15);
  *&v44[1] = v45[0];
  *&v44[17] = v45[1];
  v43 = v7;
  v44[0] = 1;
  *&v44[33] = v45[2];
  return sub_1BD0DE53C(&v43, &qword_1EBD49F20, &qword_1BE0E04C8);
}

void sub_1BD5465EC(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, void *a3@<X1>)
{
  v3 = a2;
  v5 = [a2 primaryString];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;

    *&v101 = v7;
    *(&v101 + 1) = v9;
  }

  else
  {
    sub_1BD96C698(a3);
    *&v101 = v10;
    *(&v101 + 1) = v11;
  }

  sub_1BD0DDEBC();
  sub_1BE0506C4();
  sub_1BE04F9A4();
  sub_1BD1970E0(v101, *(&v101 + 1), v102, *(&v102 + 1));
  v12 = [v3 secondaryString];
  if (v12)
  {
    v13 = v12;
    sub_1BE052434();
    v96 = v3;

    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BE04FC94();
    v21 = sub_1BE050574();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = (v18 & 1);
    v3 = v96;
    sub_1BD0DDF10(v14, v16, v28, v26, v29, v30, v31, v32);
    v20, v33, v34, v35, v36, v37, v38, v39;
    v100 = v21;
    v97 = v25 & 1;
    v98 = v23;
    sub_1BD0D7F18(v21, v23, v25 & 1);
    v40 = v27;
    sub_1BE048C84();
  }

  else
  {
    v100 = 0;
    v97 = 0;
    v98 = 0;
    v40 = 0;
  }

  v41 = [v3 tertiaryString];
  if (v41)
  {
    v42 = v41;
    sub_1BE052434();

    sub_1BD0DDEBC();
    v43 = sub_1BE0506C4();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_1BE04FC94();
    v50 = sub_1BE050574();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_1BD0DDF10(v43, v45, (v47 & 1), v55, v57, v58, v59, v60);
    v49, v61, v62, v63, v64, v65, v66, v67;
    v68 = v54 & 1;
    v69 = v50;
    v70 = v50;
    v71 = v52;
    v72 = v68;
    sub_1BD0D7F18(v70, v52, v68);
    v73 = v56;
    sub_1BE048C84();
  }

  else
  {
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  sub_1BD1970E0(v101, *(&v101 + 1), v102, *(&v102 + 1));
  sub_1BD1969AC(v100, v98, v97, v40);
  sub_1BD1969AC(v69, v71, v72, v73);
  sub_1BD1969F0(v100, v98, v97, v40, v74, v75, v76, v77);
  sub_1BD19711C(v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v78, v79, v80);
  sub_1BD1969F0(v69, v71, v72, v73, v81, v82, v83, v84);
  *a1 = v101;
  *(a1 + 1) = v102;
  *(a1 + 32) = v103;
  a1[5] = v100;
  a1[6] = v98;
  a1[7] = v97;
  a1[8] = v40;
  a1[9] = v69;
  a1[10] = v71;
  a1[11] = v72;
  a1[12] = v73;
  sub_1BD1969F0(v69, v71, v72, v73, v85, v86, v87, v88);
  sub_1BD1969F0(v100, v98, v97, v40, v89, v90, v91, v92);
  sub_1BD19711C(v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v93, v94, v95);
}

double sub_1BD5469F4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = sub_1BE04F504();
  v27 = 1;
  sub_1BD546328(v4, v5, &v15);
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v39[8] = v23;
  v39[9] = v24;
  v39[10] = v25;
  v39[4] = v19;
  v39[5] = v20;
  v39[6] = v21;
  v39[7] = v22;
  v39[0] = v15;
  v39[1] = v16;
  v39[2] = v17;
  v39[3] = v18;
  sub_1BD0DE19C(&v28, &v14, &qword_1EBD49F10, &qword_1BE0E04B8);
  sub_1BD0DE53C(v39, &qword_1EBD49F10, &qword_1BE0E04B8);
  *&v26[119] = v35;
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[55] = v31;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  v7 = *&v26[144];
  *(a2 + 145) = *&v26[128];
  *(a2 + 161) = v7;
  *(a2 + 177) = *&v26[160];
  v8 = *&v26[80];
  *(a2 + 81) = *&v26[64];
  *(a2 + 97) = v8;
  v9 = *&v26[112];
  *(a2 + 113) = *&v26[96];
  *(a2 + 129) = v9;
  v10 = *&v26[16];
  *(a2 + 17) = *v26;
  *(a2 + 33) = v10;
  result = *&v26[32];
  v12 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  v13 = v27;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 192) = *&v26[175];
  *(a2 + 65) = v12;
  return result;
}

unint64_t sub_1BD546BB8()
{
  result = qword_1EBD49EB8;
  if (!qword_1EBD49EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49EA8, &unk_1BE0E0410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58, &unk_1BE0F98B0);
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EB8);
  }

  return result;
}

uint64_t sub_1BD546CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F58, &qword_1BE0E0670);
  MEMORY[0x1EEE9AC00](v105);
  v4 = &v103 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F60, &qword_1BE0E0678);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F68, &qword_1BE0E0680);
  v7 = *(v6 - 8);
  v109 = v6;
  v110 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F70, &qword_1BE0E0688);
  v10 = *(v9 - 8);
  v111 = v9;
  v112 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v103 - v11;
  sub_1BD5473A4(v1, v4);
  v116 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516A4();
  v12 = v115;
  v13 = swift_allocObject();
  v14 = *(v1 + 80);
  *(v13 + 80) = *(v1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v1 + 96);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v16 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v16;
  sub_1BD54C448(v1, &v116);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F08, &unk_1BE0E0480);
  v18 = sub_1BD54C480();
  v19 = sub_1BD54C530();
  v20 = v105;
  sub_1BE051064();
  v13, v21, v22, v23, v24, v25, v26, v27;

  sub_1BD0DE53C(v4, &qword_1EBD49F58, &qword_1BE0E0670);
  v116 = *(v1 + 72);
  sub_1BE0516A4();
  v28 = v115;
  v29 = swift_allocObject();
  v30 = *(v1 + 80);
  *(v29 + 80) = *(v1 + 64);
  *(v29 + 96) = v30;
  *(v29 + 112) = *(v1 + 96);
  v31 = *(v1 + 16);
  *(v29 + 16) = *v1;
  *(v29 + 32) = v31;
  v32 = *(v1 + 48);
  *(v29 + 48) = *(v1 + 32);
  *(v29 + 64) = v32;
  sub_1BD54C448(v1, &v116);
  *&v116 = v20;
  *(&v116 + 1) = v17;
  v117 = v18;
  v118 = v19;
  v105 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v106;
  v35 = v104;
  sub_1BE051064();
  v29, v36, v37, v38, v39, v40, v41, v42;

  (*(v107 + 8))(v35, v34);
  v115 = *(v2 + 40);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v43 = v116;
  v44 = swift_allocObject();
  v45 = *(v2 + 80);
  *(v44 + 80) = *(v2 + 64);
  *(v44 + 96) = v45;
  *(v44 + 112) = *(v2 + 96);
  v46 = *(v2 + 16);
  *(v44 + 16) = *v2;
  *(v44 + 32) = v46;
  v47 = *(v2 + 48);
  *(v44 + 48) = *(v2 + 32);
  *(v44 + 64) = v47;
  sub_1BD54C448(v2, &v116);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FA8, &qword_1BE0E06A8);
  *&v116 = v34;
  *(&v116 + 1) = v17;
  v117 = OpaqueTypeConformance2;
  v118 = v19;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_1BD54C5F0();
  v51 = v108;
  v52 = v109;
  v53 = v114;
  sub_1BE050F64();
  *(&v43 + 1), v54, v55, v56, v57, v58, v59, v60;
  v44, v61, v62, v63, v64, v65, v66, v67;
  v43, v68, v69, v70, v71, v72, v73, v74;
  (*(v110 + 8))(v53, v52);
  v115 = *(v2 + 24);
  sub_1BE0516C4();
  v75 = v116;
  v76 = swift_allocObject();
  v77 = *(v2 + 80);
  *(v76 + 80) = *(v2 + 64);
  *(v76 + 96) = v77;
  *(v76 + 112) = *(v2 + 96);
  v78 = *(v2 + 16);
  *(v76 + 16) = *v2;
  *(v76 + 32) = v78;
  v79 = *(v2 + 48);
  *(v76 + 48) = *(v2 + 32);
  *(v76 + 64) = v79;
  sub_1BD54C448(v2, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FE0, &qword_1BE0E06E0);
  *&v116 = v52;
  *(&v116 + 1) = v48;
  v117 = v49;
  v118 = v50;
  swift_getOpaqueTypeConformance2();
  sub_1BD54C914();
  v80 = v111;
  sub_1BE050F64();
  *(&v75 + 1), v81, v82, v83, v84, v85, v86, v87;
  v76, v88, v89, v90, v91, v92, v93, v94;
  v75, v95, v96, v97, v98, v99, v100, v101;
  return (*(v112 + 8))(v51, v80);
}

id sub_1BD5473A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E8, &qword_1BE0E0800);
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0F0, &qword_1BE0E0808);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0F8, &qword_1BE0E0810);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A100, &qword_1BE0E0818);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v82 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A108, &qword_1BE0E0820);
  v79 = *(v21 - 8);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v87 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0C8, &qword_1BE0E07A8);
  sub_1BD54CEE4();
  v86 = v25;
  sub_1BE051A44();
  v26 = sub_1BD966A4C();
  v75 = a1;
  if (v26)
  {
    v27 = v26;
    v73 = v12;
    MEMORY[0x1EEE9AC00](v26);
    *(&v73 - 2) = v28;
    *(&v73 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A128, &qword_1BE0E0838);
    sub_1BD54D208();
    sub_1BE051A44();
    v27, v29, v30, v31, v32, v33, v34, v35;
    v12 = v73;
    (*(v13 + 32))(v20, v15, v73);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = 1;
  (*(v13 + 56))(v20, v36, 1, v12);
  v38 = sub_1BD966F28();
  if (!v38)
  {
    v61 = v84;
    v63 = v85;
    v62 = v83;
    goto LABEL_8;
  }

  v39 = v38;
  v73 = &v73;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v41 = v75;
  v42 = v76;
  *(&v73 - 2) = v43;
  *(&v73 - 1) = v41;
  (*(v4 + 104))(v42, *MEMORY[0x1E69B80F0], v3, v40);
  result = PKPassKitBundle();
  v45 = v85;
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();
    v49 = v48;

    (*(v4 + 8))(v42, v3);
    v88 = v47;
    v89 = v49;
    sub_1BD0DDEBC();
    v88 = sub_1BE0506C4();
    v89 = v50;
    v90 = v51 & 1;
    v91 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A118, &qword_1BE0E0830);
    sub_1BD54D10C(&qword_1EBD4A120, &qword_1EBD4A118, &qword_1BE0E0830, MEMORY[0x1E69819D0]);
    v53 = v74;
    sub_1BE051A24();
    v39, v54, v55, v56, v57, v58, v59, v60;
    v62 = v83;
    v61 = v84;
    v63 = v45;
    (*(v83 + 32))(v45, v53, v84);
    v37 = 0;
LABEL_8:
    (*(v62 + 56))(v63, v37, 1, v61);
    v64 = v79;
    v65 = v80;
    v66 = *(v79 + 16);
    v67 = v77;
    v66(v77, v86, v80);
    v68 = v82;
    sub_1BD0DE19C(v20, v82, &qword_1EBD4A100, &qword_1BE0E0818);
    v85 = v20;
    v69 = v78;
    sub_1BD0DE19C(v63, v78, &qword_1EBD4A0F0, &qword_1BE0E0808);
    v70 = v81;
    v66(v81, v67, v65);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A110, &qword_1BE0E0828);
    sub_1BD0DE19C(v68, &v70[*(v71 + 48)], &qword_1EBD4A100, &qword_1BE0E0818);
    sub_1BD0DE19C(v69, &v70[*(v71 + 64)], &qword_1EBD4A0F0, &qword_1BE0E0808);
    sub_1BD0DE53C(v63, &qword_1EBD4A0F0, &qword_1BE0E0808);
    sub_1BD0DE53C(v85, &qword_1EBD4A100, &qword_1BE0E0818);
    v72 = *(v64 + 8);
    v72(v86, v65);
    sub_1BD0DE53C(v69, &qword_1EBD4A0F0, &qword_1BE0E0808);
    sub_1BD0DE53C(v68, &qword_1EBD4A100, &qword_1BE0E0818);
    return (v72)(v67, v65);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD547B84(uint64_t *a1)
{
  v2 = *a1;
  KeyPath = swift_getKeyPath();
  v16[0] = v2;
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v16[13] = *(v2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions);
  swift_getKeyPath();
  v11 = swift_allocObject();
  v12 = *(a1 + 5);
  *(v11 + 80) = *(a1 + 4);
  *(v11 + 96) = v12;
  *(v11 + 112) = a1[12];
  v13 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *(a1 + 3);
  *(v11 + 48) = *(a1 + 2);
  *(v11 + 64) = v14;
  sub_1BE048C84();
  sub_1BD54C448(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0, &qword_1BE0E0468);
  sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0, &qword_1BE0E0468, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10, 0x1E69B8EA8, MEMORY[0x1E69E81B8]);
  sub_1BD54CF68();
  return sub_1BE0519C4();
}

uint64_t sub_1BD547D60(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060, &qword_1BE0E0740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A140, &qword_1BE0E0840);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060, &qword_1BE0E0740, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0, 0x1E69B8EB0, MEMORY[0x1E69E81B8]);
  sub_1BD54D28C();
  return sub_1BE0519C4();
}

uint64_t sub_1BD547EE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v6 = sub_1BE04FB64();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A058, &qword_1BE0E0720);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A150, &qword_1BE0E0848);
  v12 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = v51 - v13;
  v15 = sub_1BE04AF64();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [v20 startDate];
  sub_1BE04AEE4();

  v22 = sub_1BE04AE64();
  (*(v16 + 8))(v19, v15);
  v23 = PKMonthStringFromDate();

  if (v23)
  {
    v24 = sub_1BE052434();
    v26 = v25;

    v27 = swift_allocObject();
    v51[1] = v51;
    v28 = *(a2 + 80);
    *(v27 + 80) = *(a2 + 64);
    *(v27 + 96) = v28;
    v29 = *(a2 + 96);
    v30 = *(a2 + 16);
    *(v27 + 16) = *a2;
    *(v27 + 32) = v30;
    v31 = *(a2 + 48);
    *(v27 + 48) = *(a2 + 32);
    *(v27 + 64) = v31;
    *(v27 + 112) = v29;
    *(v27 + 120) = v20;
    MEMORY[0x1EEE9AC00](v27);
    v51[-4] = v20;
    v51[-3] = v24;
    v51[-2] = v26;
    sub_1BD54C448(a2, v58);
    v32 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080, &qword_1BE0E0750);
    sub_1BD54CD90();
    sub_1BE051704();
    v26, v33, v34, v35, v36, v37, v38, v39;
    sub_1BE04FB54();
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058, &qword_1BE0E0720, MEMORY[0x1E697D680]);
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v40 = v53;
    v41 = v55;
    sub_1BE050894();
    (*(v54 + 8))(v8, v41);
    (*(v52 + 8))(v11, v40);
    v42 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v44 = v56;
    v45 = &v14[*(v56 + 36)];
    *v45 = KeyPath;
    v45[1] = v42;
    v46 = v57;
    sub_1BD0DE204(v14, v57, &qword_1EBD4A150, &qword_1BE0E0848);
    v47 = 0;
    v48 = v46;
    v49 = v44;
  }

  else
  {
    v47 = 1;
    v49 = v56;
    v48 = v57;
  }

  return (*(v12 + 56))(v48, v47, 1, v49);
}

double sub_1BD5483B8(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  return result;
}

double sub_1BD54841C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD548480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FC0, &qword_1BE0E06B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v13 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516A4();
  v8 = v12;
  if (v12)
  {
    sub_1BD5485CC(v12, v7);

    sub_1BD0DE204(v7, a2, &qword_1EBD49FC0, &qword_1BE0E06B0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_1BD5485CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v114 = a2;
  v5 = [a1 startDate];
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();

  v10 = sub_1BE04AE64();
  (*(v7 + 8))(v9, v6);
  v11 = PKMonthAndYearStringFromDate();

  if (v11)
  {
    v12 = sub_1BE052434();
    v14 = v13;

    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A8, &qword_1BE0E0798);
    v112 = v93;
    v110 = *(v111 - 8);
    MEMORY[0x1EEE9AC00](v111);
    v109 = v93 - v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FC8, &qword_1BE0E06B8);
    v108 = v93;
    v107 = v16;
    v106 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v105 = v93 - v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FD0, &qword_1BE0E06C8);
    v103 = v93;
    v104 = v18;
    v102 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v113 = v93 - v19;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371C8, &unk_1BE0E06D0);
    v100 = *(v101 - 8);
    MEMORY[0x1EEE9AC00](v101);
    v21 = v93 - v20;
    MEMORY[0x1EEE9AC00](v22);
    v93[-4] = v3;
    v93[-3] = v12;
    v93[-2] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0B0, &qword_1BE0E07A0);
    sub_1BD54CE54(&qword_1EBD4A0B8, &qword_1EBD4A0B0, &qword_1BE0E07A0, sub_1BD54CEE4);
    v99 = v21;
    sub_1BE0504A4();
    v14, v23, v24, v25, v26, v27, v28, v29;
    sub_1BE0528A4();
    v30 = a1;
    sub_1BD54C448(v3, &v116);
    v31 = sub_1BE052894();
    v32 = swift_allocObject();
    v33 = *(v3 + 32);
    *(v32 + 88) = *(v3 + 48);
    v34 = *(v3 + 80);
    *(v32 + 104) = *(v3 + 64);
    *(v32 + 120) = v34;
    v35 = *(v3 + 16);
    *(v32 + 40) = *v3;
    *(v32 + 56) = v35;
    v36 = MEMORY[0x1E69E85E0];
    *(v32 + 16) = v31;
    *(v32 + 24) = v36;
    *(v32 + 32) = v30;
    *(v32 + 136) = *(v3 + 96);
    *(v32 + 72) = v33;
    v98 = sub_1BE0528D4();
    v37 = *(v98 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x1EEE9AC00](v98);
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
    v40 = v93 - v39;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v95 = sub_1BE04EAA4();
      v96 = v93;
      v94 = *(v95 - 8);
      MEMORY[0x1EEE9AC00](v95);
      v97 = v93;
      v42 = v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      v116 = 0;
      v117 = 0xE000000000000000;
      sub_1BE053834();
      v117, v43, v44, v45, v46, v47, v48, v49;
      v116 = 0xD000000000000037;
      v117 = 0x80000001BE12E070;
      v115 = 264;
      v50 = sub_1BE053B24();
      v52 = v51;
      MEMORY[0x1BFB3F610](v50);
      v52, v53, v54, v55, v56, v57, v58, v59;
      v93[1] = v93;
      v61 = MEMORY[0x1EEE9AC00](v60);
      v62 = v93 - v39;
      v63 = v93 - v39;
      v64 = v98;
      (*(v37 + 16))(v62, v63, v98, v61);
      sub_1BE04EA94();
      (*(v37 + 8))(v40, v64);
      v65 = v113;
      v66 = v101;
      (*(v100 + 32))(v113, v99, v101);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371D0, &qword_1BE0B11F0);
      (*(v94 + 32))(&v65[*(v67 + 36)], v42, v95);
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371D8, &qword_1BE0B11F8);
      v71 = v113;
      v72 = &v113[*(v70 + 36)];
      v73 = sub_1BE04E7B4();
      (*(v37 + 32))(&v72[*(v73 + 20)], v93 - v39, v98);
      *v72 = &unk_1BE0E07B8;
      *(v72 + 1) = v32;
      v74 = v71;
      v66 = v101;
      (*(v100 + 32))(v74, v99, v101);
    }

    v75 = sub_1BE04ECF4();
    v76 = *(v75 - 1);
    MEMORY[0x1EEE9AC00](v75);
    v78 = v93 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BE051DD4();
    v79 = sub_1BD0DE4F4(&qword_1EBD49FD8, &qword_1EBD371C8, &unk_1BE0E06D0, MEMORY[0x1E697CCF0]);
    v116 = v66;
    v117 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    v82 = v105;
    v83 = v104;
    v84 = v113;
    sub_1BE051134();
    (*(v76 + 8))(v78, v75);
    v85 = (*(v102 + 8))(v84, v83);
    MEMORY[0x1EEE9AC00](v85);
    v93[-2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
    v116 = v83;
    v117 = v75;
    v118 = OpaqueTypeConformance2;
    v119 = v81;
    swift_getOpaqueTypeConformance2();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
    v87 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
    v116 = v86;
    v117 = v87;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    v89 = v107;
    sub_1BE051024();
    (*(v106 + 8))(v82, v89);
    v91 = v110;
    v90 = v111;
    v92 = v114;
    (*(v110 + 32))(v114, v88, v111);
    return (*(v91 + 56))(v92, 0, 1, v90);
  }

  else
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A8, &qword_1BE0E0798);
    return (*(*(v68 - 8) + 56))(v114, 1, 1, v68);
  }
}

uint64_t sub_1BD549168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_1BE04ECF4();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FF8, &qword_1BE0E06F0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FF0, &qword_1BE0E06E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A008, &qword_1BE0E06F8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v37 - v13;
  v49 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516A4();
  v14 = v52;
  if (!v52)
  {
    goto LABEL_5;
  }

  v15 = sub_1BD967304(v52);
  if (!v15)
  {

LABEL_5:
    v35 = 1;
    return (*(v12 + 56))(a2, v35, 1, v11);
  }

  v37 = &v37;
  MEMORY[0x1EEE9AC00](v15);
  *(&v37 - 4) = v16;
  *(&v37 - 3) = a1;
  v38 = a1;
  *(&v37 - 2) = v14;
  v40 = v9;
  v41 = v11;
  v42 = a2;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A010, &qword_1BE0E0700);
  v39 = v8;
  sub_1BD54CE54(&qword_1EBD4A018, &qword_1EBD4A010, &qword_1BE0E0700, sub_1BD54CB34);
  sub_1BE0504A4();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051DD4();
  v25 = sub_1BD0DE4F4(&qword_1EBD4A000, &qword_1EBD49FF8, &qword_1BE0E06F0, MEMORY[0x1E697CCF0]);
  v26 = sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  v28 = v47;
  v27 = v48;
  v29 = v45;
  sub_1BE051134();
  (v44[1])(v5, v28);
  v30 = (*(v43 + 8))(v7, v29);
  v44 = &v37;
  MEMORY[0x1EEE9AC00](v30);
  *(&v37 - 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
  *&v49 = v29;
  *(&v49 + 1) = v28;
  v50 = v25;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v11 = v41;
  v32 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
  *&v49 = v31;
  *(&v49 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v46;
  v34 = v39;
  a2 = v42;
  sub_1BE051024();

  (*(v40 + 8))(v27, v34);
  (*(v12 + 32))(a2, v33, v11);
  v35 = 0;
  return (*(v12 + 56))(a2, v35, 1, v11);
}

uint64_t sub_1BD549728(uint64_t a1, uint64_t a2)
{
  v12[13] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060, &qword_1BE0E0740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A078, &qword_1BE0E0748);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060, &qword_1BE0E0740, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0, 0x1E69B8EB0, MEMORY[0x1E69E81B8]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040, &qword_1BE0E0718);
  v8 = sub_1BE04FB64();
  v9 = sub_1BD54CBE4();
  v10 = sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD549934(void **a1, uint64_t a2, double a3)
{
  v5 = sub_1BE04FB64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A040, &qword_1BE0E0718);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  v12 = *a1;
  v13 = swift_allocObject();
  v14 = *(a2 + 80);
  *(v13 + 80) = *(a2 + 64);
  *(v13 + 96) = v14;
  v15 = *(a2 + 96);
  v16 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v16;
  v17 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v17;
  *(v13 + 112) = v15;
  *(v13 + 120) = v12;
  v24 = v12;
  sub_1BD54C448(a2, v25);
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080, &qword_1BE0E0750);
  sub_1BD54CD90();
  sub_1BE051704();
  v19 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v21 = &v11[*(v9 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_1BE04FB54();
  sub_1BD54CBE4();
  sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  sub_1BE050894();
  (*(v6 + 8))(v8, v5);
  return sub_1BD0DE53C(v11, &qword_1EBD4A040, &qword_1BE0E0718);
}

double sub_1BD549BB0(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD549C08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A098, &qword_1BE0E0758);
  sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098, &qword_1BE0E0758, MEMORY[0x1E6981F48]);
  return sub_1BE04E844();
}

void sub_1BD549CD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE052404();
  v9 = PKLocalizedSettingsString(v8);

  if (v9)
  {
    sub_1BE052434();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BE0B69E0;
    v13 = [a1 startDate];
    sub_1BE04AEE4();

    v14 = sub_1BE04AE64();
    (*(v5 + 8))(v7, v4);
    v15 = PKYearStringFromDate();

    if (v15)
    {
      v16 = sub_1BE052434();
      v18 = v17;

      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1BD110550();
      *(v12 + 32) = v16;
      *(v12 + 40) = v18;
      v19 = sub_1BE052454();
      v21 = v20;
      v11, v20, v22, v23, v24, v25, v26, v27;
      v31[0] = v19;
      v31[1] = v21;
      sub_1BD0DDEBC();
      *a2 = sub_1BE0506C4();
      *(a2 + 8) = v28;
      *(a2 + 16) = v29 & 1;
      *(a2 + 24) = v30;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD549EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0506C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0C8, &qword_1BE0E07A8);
  sub_1BD54CEE4();
  return sub_1BE051A24();
}

uint64_t sub_1BD549FB8(uint64_t a1)
{
  v7[0] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0, &qword_1BE0E07C8);
  sub_1BE0516A4();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_1BD54C448(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0, &qword_1BE0E0468);
  sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0, &qword_1BE0E0468, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10, 0x1E69B8EA8, MEMORY[0x1E69E81B8]);
  sub_1BD54CF68();
  return sub_1BE0519C4();
}

void sub_1BD54A134(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v9 = v6;
  v10 = v4;
  v11 = [v8 initWithPaymentPass_];
  v12 = [objc_opt_self() presentationInformationForTransaction:v10 transactionSource:v11 secondaryTransactionSource:0 familyMember:0 account:v7 deviceName:0 context:0];

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v12;
}

uint64_t sub_1BD54A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v5 = sub_1BE04AF64();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  sub_1BE0528A4();
  v4[32] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[33] = v7;
  v4[34] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD54A2F0, v7, v6);
}

uint64_t sub_1BD54A2F0()
{
  if ([*(v0 + 216) transactionCount] >= 1 && (v8 = **(v0 + 224), KeyPath = swift_getKeyPath(), *(v0 + 176) = v8, sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel), sub_1BE04B594(), KeyPath, v10, v11, v12, v13, v14, v15, v16, v17 = *(v8 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection), v18 = objc_allocWithZone(MEMORY[0x1E69B8BD8]), v19 = v17, v20 = objc_msgSend(v18, sel_init), v21 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69B8788]), sel_initWithTransactionSourceCollection_paymentDataProvider_, v19, v20), *(v0 + 280) = v21, v20, v19, v21))
  {
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v26 = [v25 startDate];
    sub_1BE04AEE4();

    v27 = sub_1BE04AE64();
    v28 = *(v23 + 8);
    v28(v22, v24);
    v29 = [v25 endDate];
    sub_1BE04AEE4();

    v30 = sub_1BE04AE64();
    v28(v22, v24);
    [v21 setLimit:0x7FFFFFFFFFFFFFFFLL startDate:v27 endDate:v30];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_1BD54A62C;
    v31 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD9C18BC;
    *(v0 + 104) = &block_descriptor_119;
    *(v0 + 112) = v31;
    [v21 reloadTransactionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    *(v0 + 256), v1, v2, v3, v4, v5, v6, v7;

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1BD54A62C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1BD54A734, v2, v1);
}

uint64_t sub_1BD54A734(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 256), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 184);
  if (v9)
  {
    v10 = *(*(v8 + 224) + 88);
    *(v8 + 192) = v9;
    v11 = *(v8 + 280);
    *(v8 + 160) = v10;
    *(v8 + 144) = v10;
    sub_1BD0DE19C(v8 + 160, v8 + 200, &qword_1EBD49EC0, &qword_1BE0E0468);
    sub_1BD0DE19C(v8 + 168, v8 + 208, &qword_1EBD4A0D8, &qword_1BE0E07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0, &qword_1BE0E07C8);
    sub_1BE0516B4();

    sub_1BD0DE53C(v8 + 160, &qword_1EBD49EC0, &qword_1BE0E0468);
    sub_1BD0DE53C(v8 + 168, &qword_1EBD4A0D8, &qword_1BE0E07C0);
  }

  else
  {
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD54A888(uint64_t a1)
{
  v13 = *(a1 + 40);
  LOBYTE(v12[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v13 = *(a1 + 72);
  v12[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516B4();
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v14 = v3;
  v15 = v2;
  *&v13 = v2;
  *(&v13 + 1) = v3;
  sub_1BD0DE19C(&v15, v12, &qword_1EBD49EC0, &qword_1BE0E0468);
  sub_1BD0DE19C(&v14, v12, &qword_1EBD4A0D8, &qword_1BE0E07C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0, &qword_1BE0E07C8);
  sub_1BE0516A4();
  v12[2], v4, v5, v6, v7, v8, v9, v10;
  v12[0] = v2;
  v12[1] = v3;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v15, &qword_1EBD49EC0, &qword_1BE0E0468);
  return sub_1BD0DE53C(&v14, &qword_1EBD4A0D8, &qword_1BE0E07C0);
}

void sub_1BD54A9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v11 = [a3 startDate];
  sub_1BE04AEE4();

  v12 = sub_1BE04AE64();
  (*(v7 + 8))(v10, v6);
  v13 = PKYearStringFromDate();

  if (v13)
  {
    v14 = sub_1BE052434();
    v16 = v15;

    v23 = v14;
    v24 = v16;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v24 = v17;
    v25 = v18 & 1;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A028, &qword_1BE0E0708);
    sub_1BD54CB34();
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD54ABB4(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060, &qword_1BE0E0740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A038, &qword_1BE0E0710);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060, &qword_1BE0E0740, MEMORY[0x1E69E6338]);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0, 0x1E69B8EB0, MEMORY[0x1E69E81B8]);
  sub_1BD54D10C(&qword_1EBD4A030, &qword_1EBD4A038, &qword_1BE0E0710, MEMORY[0x1E6982090]);
  return sub_1BE0519C4();
}

uint64_t sub_1BD54AD68@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1BE04FB64();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A040, &qword_1BE0E0718);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A078, &qword_1BE0E0748);
  v12 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v48 - v13;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [v19 startDate];
  sub_1BE04AEE4();

  v21 = sub_1BE04AE64();
  (*(v15 + 8))(v18, v14);
  v22 = PKMonthStringFromDate();

  if (v22)
  {
    v23 = sub_1BE052434();
    v25 = v24;

    v26 = swift_allocObject();
    v48 = &v48;
    v27 = *(a2 + 80);
    *(v26 + 80) = *(a2 + 64);
    *(v26 + 96) = v27;
    v28 = *(a2 + 96);
    v29 = *(a2 + 16);
    *(v26 + 16) = *a2;
    *(v26 + 32) = v29;
    v30 = *(a2 + 48);
    *(v26 + 48) = *(a2 + 32);
    *(v26 + 64) = v30;
    *(v26 + 112) = v28;
    *(v26 + 120) = v19;
    MEMORY[0x1EEE9AC00](v26);
    *(&v48 - 4) = v19;
    *(&v48 - 3) = v23;
    *(&v48 - 2) = v25;
    sub_1BD54C448(a2, v54);
    v31 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080, &qword_1BE0E0750);
    sub_1BD54CD90();
    sub_1BE051704();
    v25, v32, v33, v34, v35, v36, v37, v38;
    v39 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v41 = &v11[*(v50 + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    sub_1BE04FB54();
    sub_1BD54CBE4();
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v42 = v49;
    v43 = v52;
    sub_1BE050894();
    (*(v51 + 8))(v9, v43);
    sub_1BD0DE53C(v11, &qword_1EBD4A040, &qword_1BE0E0718);
    v44 = v53;
    (*(v12 + 32))(a3, v42, v53);
    v45 = 0;
    v46 = v44;
  }

  else
  {
    v45 = 1;
    v46 = v53;
  }

  return (*(v12 + 56))(a3, v45, 1, v46);
}

double sub_1BD54B1F0(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD54B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A098, &qword_1BE0E0758);
  sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098, &qword_1BE0E0758, MEMORY[0x1E6981F48]);
  return sub_1BE04E844();
}

void sub_1BD54B308(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1BE04C744();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BE04C734();
  v42 = *(v46 - 8);
  v7 = v42;
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v47 = [a1 transactionCount];
  v47 = sub_1BE053B24();
  v48 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v4 + 104))(v6, *MEMORY[0x1E69BC950], v3);
  v43 = v12;
  sub_1BE04C724();
  LOBYTE(v47) = v18 & 1;
  v21 = *(v7 + 16);
  v22 = v45;
  v23 = v46;
  v21(v45, v12, v46);
  LOBYTE(v4) = v47;
  v24 = v44;
  *v44 = v14;
  v24[1] = v16;
  *(v24 + 16) = v4;
  v24[3] = v20;
  v25 = v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A0, &qword_1BE0E0790);
  v27 = v22;
  v21(v24 + *(v26 + 48), v22, v23);
  sub_1BD0D7F18(v14, v16, v4);
  v28 = *(v42 + 8);
  sub_1BE048C84();
  v28(v43, v23);
  v28(v27, v23);
  sub_1BD0DDF10(v14, v16, v47, v29, v30, v31, v32, v33);
  v25, v34, v35, v36, v37, v38, v39, v40;
}

uint64_t sub_1BD54B5D0@<X0>(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1BD54B63C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  sub_1BE04FB14();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v8 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

id sub_1BD54B81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80F0], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    v20 = v11;
    v21 = v13;
    v14 = swift_allocObject();
    v15 = *(a1 + 80);
    *(v14 + 80) = *(a1 + 64);
    *(v14 + 96) = v15;
    *(v14 + 112) = *(a1 + 96);
    v16 = *(a1 + 16);
    *(v14 + 16) = *a1;
    *(v14 + 32) = v16;
    v17 = *(a1 + 48);
    *(v14 + 48) = *(a1 + 32);
    *(v14 + 64) = v17;
    sub_1BD54C448(a1, v19);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD54B9D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78, &qword_1BE0E0690);
  sub_1BE0516B4();
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD54BAD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions);
  return sub_1BE048C84();
}

uint64_t sub_1BD54BBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTransactionSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD54BC18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTransactionSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD54BC7C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SettingsTransactionSection(0);

  return sub_1BD545B14(a1, a2);
}

uint64_t sub_1BD54BCFC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BD0E5E8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54BD40()
{
  result = qword_1EBD49ED8;
  if (!qword_1EBD49ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49ED8);
  }

  return result;
}

unint64_t sub_1BD54BD94()
{
  result = qword_1EBD49EE8;
  if (!qword_1EBD49EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49EE0, &qword_1BE0E0470);
    sub_1BD54BE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EE8);
  }

  return result;
}

unint64_t sub_1BD54BE18()
{
  result = qword_1EBD49EF0;
  if (!qword_1EBD49EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EF0);
  }

  return result;
}

unint64_t sub_1BD54BE6C()
{
  result = qword_1EBD49EF8;
  if (!qword_1EBD49EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49E80, &qword_1BE0E03E8);
    sub_1BD54BD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EF8);
  }

  return result;
}

uint64_t objectdestroyTm_54()
{
  v1 = (type metadata accessor for SettingsTransactionSection(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58, &unk_1BE0E02D0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_1BD54C000(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for SettingsTransactionSection(0);

  sub_1BD545694(a1, a2);
}

id sub_1BD54C080(void (*a1)(char *, uint64_t))
{
  v41 = a1;
  v1 = sub_1BE04AF64();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = *MEMORY[0x1E69B80F0];
  v15 = *(v8 + 104);
  v15(&v39 - v12, v14, v7, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v44 = sub_1BE04B6F4();
    v19 = v18;

    v20 = *(v8 + 8);
    v20(v13, v7);
    v21 = [v41 transactionDate];
    if (v21)
    {
      v41 = v20;
      v22 = v21;
      sub_1BE04AEE4();

      (*(v42 + 32))(v6, v3, v43);
      v23 = sub_1BE04AE64();
      v24 = PKRelativeDateString();

      if (v24)
      {
        v39 = sub_1BE052434();
        v26 = v25;

        v27 = v40;
        (v15)(v40, v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1BE0B6CA0;
        v29 = MEMORY[0x1E69E6158];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v30 = sub_1BD110550();
        *(v28 + 32) = v44;
        *(v28 + 40) = v19;
        *(v28 + 96) = v29;
        *(v28 + 104) = v30;
        v31 = v39;
        *(v28 + 64) = v30;
        *(v28 + 72) = v31;
        *(v28 + 80) = v26;
        v44 = sub_1BE04B714();
        v28, v32, v33, v34, v35, v36, v37, v38;
        v41(v27, v7);
      }

      (*(v42 + 8))(v6, v43);
    }

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD54C480()
{
  result = qword_1EBD49F80;
  if (!qword_1EBD49F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F58, &qword_1BE0E0670);
    sub_1BD0DE4F4(&qword_1EBD49F88, &qword_1EBD49F90, &unk_1BE0E0698, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49F80);
  }

  return result;
}

unint64_t sub_1BD54C530()
{
  result = qword_1EBD49F98;
  if (!qword_1EBD49F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F08, &unk_1BE0E0480);
    sub_1BD54BCFC(&qword_1EBD49FA0, &qword_1EBD59CA0, 0x1E69B8EB0, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49F98);
  }

  return result;
}

unint64_t sub_1BD54C5F0()
{
  result = qword_1EBD49FB0;
  if (!qword_1EBD49FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FA8, &qword_1BE0E06A8);
    sub_1BD54C674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FB0);
  }

  return result;
}

unint64_t sub_1BD54C674()
{
  result = qword_1EBD49FB8;
  if (!qword_1EBD49FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FC0, &qword_1BE0E06B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FC8, &qword_1BE0E06B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FD0, &qword_1BE0E06C8);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371C8, &unk_1BE0E06D0);
    sub_1BD0DE4F4(&qword_1EBD49FD8, &qword_1EBD371C8, &unk_1BE0E06D0, MEMORY[0x1E697CCF0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
    sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FB8);
  }

  return result;
}

uint64_t sub_1BD54C8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD54C914()
{
  result = qword_1EBD49FE8;
  if (!qword_1EBD49FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FE0, &qword_1BE0E06E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FF0, &qword_1BE0E06E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FF8, &qword_1BE0E06F0);
    sub_1BE04ECF4();
    sub_1BD0DE4F4(&qword_1EBD4A000, &qword_1EBD49FF8, &qword_1BE0E06F0, MEMORY[0x1E697CCF0]);
    sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
    sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FE8);
  }

  return result;
}

unint64_t sub_1BD54CB34()
{
  result = qword_1EBD4A020;
  if (!qword_1EBD4A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A028, &qword_1BE0E0708);
    sub_1BD54D10C(&qword_1EBD4A030, &qword_1EBD4A038, &qword_1BE0E0710, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A020);
  }

  return result;
}

unint64_t sub_1BD54CBE4()
{
  result = qword_1EBD4A048;
  if (!qword_1EBD4A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040, &qword_1BE0E0718);
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058, &qword_1BE0E0720, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A048);
  }

  return result;
}

unint64_t sub_1BD54CD90()
{
  result = qword_1EBD4A088;
  if (!qword_1EBD4A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A080, &qword_1BE0E0750);
    sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098, &qword_1BE0E0758, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A088);
  }

  return result;
}

uint64_t sub_1BD54CE54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54CEE4()
{
  result = qword_1EBD4A0C0;
  if (!qword_1EBD4A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A0C8, &qword_1BE0E07A8);
    sub_1BD54CF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A0C0);
  }

  return result;
}

unint64_t sub_1BD54CF68()
{
  result = qword_1EBD4A0D0;
  if (!qword_1EBD4A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A0D0);
  }

  return result;
}

uint64_t sub_1BD54CFBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BD0F985C;

  return sub_1BD54A1FC(v2, v3, v4, (v0 + 5));
}

uint64_t sub_1BD54D10C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040, &qword_1BE0E0718);
    sub_1BE04FB64();
    sub_1BD54CBE4();
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54D208()
{
  result = qword_1EBD4A130;
  if (!qword_1EBD4A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A128, &qword_1BE0E0838);
    sub_1BD54D28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A130);
  }

  return result;
}

unint64_t sub_1BD54D28C()
{
  result = qword_1EBD4A138;
  if (!qword_1EBD4A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A140, &qword_1BE0E0840);
    sub_1BD54D310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A138);
  }

  return result;
}

unint64_t sub_1BD54D310()
{
  result = qword_1EBD4A148;
  if (!qword_1EBD4A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A150, &qword_1BE0E0848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A058, &qword_1BE0E0720);
    sub_1BE04FB64();
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058, &qword_1BE0E0720, MEMORY[0x1E697D680]);
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A148);
  }

  return result;
}

uint64_t objectdestroy_56Tm_0()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;
  v0[8], v8, v9, v10, v11, v12, v13, v14;

  v0[10], v15, v16, v17, v18, v19, v20, v21;
  v0[12], v22, v23, v24, v25, v26, v27, v28;
  v0[13], v29, v30, v31, v32, v33, v34, v35;
  v0[14], v36, v37, v38, v39, v40, v41, v42;

  return swift_deallocObject();
}

uint64_t objectdestroy_30Tm()
{
  v0[6], v1, v2, v3, v4, v5, v6, v7;
  v0[8], v8, v9, v10, v11, v12, v13, v14;

  v0[10], v15, v16, v17, v18, v19, v20, v21;
  v0[12], v22, v23, v24, v25, v26, v27, v28;
  v0[13], v29, v30, v31, v32, v33, v34, v35;
  v0[14], v36, v37, v38, v39, v40, v41, v42;

  return swift_deallocObject();
}

Swift::Void __swiftcall UIView.applyGlassBackground()()
{
  v0 = sub_1BE04D3F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04D414();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D3E4();
  sub_1BE04D424();
  v6[3] = v1;
  v6[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1BE04D404();
  (*(v2 + 8))(v4, v1);
  sub_1BE052F84();
}

void sub_1BD54D7D0(void *a1)
{
  v2 = sub_1BE04D3F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04D414();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_1BE04D3E4();
  sub_1BE04D424();
  v9[3] = v3;
  v9[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1BE04D404();
  (*(v4 + 8))(v6, v3);
  sub_1BE052F84();
}

void sub_1BD54D978(void *a1)
{
  v1 = a1;
  UIButton.pkui_applyGlassButtonConfiguration()();
}

uint64_t sub_1BD54D9D8(void (*a1)(double))
{
  v2 = sub_1BE053104();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE053204();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  (*(v7 + 104))(v10, *MEMORY[0x1E69DC558], v6);
  sub_1BE0530F4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v2);
  return sub_1BE053124();
}

id sub_1BD54DB84(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v4 = sub_1BE053104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE053204();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE053274();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC558], v8);
  sub_1BE0530F4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v4);
  sub_1BE053124();
  v17 = sub_1BE0531C4();
  (*(v13 + 8))(v16, v12);

  return v17;
}

uint64_t sub_1BD54DDE0(void (*a1)(double))
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v22 = sub_1BE053104();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE053204();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE053274();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v23(v16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC558], v7);
  sub_1BE0530F4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v22);
  sub_1BE053124();
  sub_1BE053244();
  v19 = *(v12 + 8);
  v19(v18, v11);
  (*(v12 + 32))(v18, v14, v11);
  (*(v12 + 16))(v3, v18, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_1BE0532A4();
  return (v19)(v18, v11);
}

void sub_1BD54E114(void *a1)
{
  v1 = a1;
  UIButton.pkui_applyTintedGlassButtonConfiguration()();
}

id sub_1BD54E250()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v7 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v8 = [objc_allocWithZone(PKPaymentSetupBankAppDisambiguationViewController) initWithProvisioningController:v6 context:v7 delegate:0 paymentSetupProduct:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product) inAppMethod:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp) cameraCaptureMethod:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_cameraCapture)];

  [v8 setFlowDelegate_];
  sub_1BE052434();
  v10 = v9;
  v11 = sub_1BE04BB74();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v8 setReporter_];

  return v8;
}

uint64_t sub_1BD54E3FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD54E438(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD54E548()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_context);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp);
  objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
  sub_1BE048964();
  v5 = v3;
  v6 = v4;
  v10 = sub_1BD9DC084(v2, v5, v4);
  v7 = v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BAD090, v10, &off_1F3BCB048, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD54E670()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 0, 0);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BAD090, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD54E838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product);
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v7 + 8))(v9, v6);
  v12 = [objc_allocWithZone(PKPaymentSetupProductProvidersViewController) initWithProduct:v10 showOtherProviders:1 context:v11];
  [v12 setFlowDelegate_];
  sub_1BE052434();
  v14 = v13;
  v15 = sub_1BE04BB74();
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setReporter_];

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v12;
  v24[4] = a1;
  v24[5] = a2;
  aBlock[4] = sub_1BD54EF80;
  v36 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_120;
  v25 = _Block_copy(aBlock);
  v26 = v36;
  v27 = v12;
  sub_1BE048964();
  v26, v28, v29, v30, v31, v32, v33, v34;
  [v27 preflightWithCompletion_];
  _Block_release(v25);
}

id sub_1BD54EAA0(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = v53 - v15;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return a4(1);
    }

    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
    *(Strong + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController) = a3;

    v21 = a3;
LABEL_11:

    return a4(1);
  }

  v53[1] = a2;
  v53[2] = a5;
  v54 = a4;
  v22 = *MEMORY[0x1E69B80D8];
  v55 = *(v11 + 104);
  v55(v53 - v15, v22, v10, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    sub_1BE04B6F4();
    v26 = v25;

    v27 = *(v11 + 8);
    v27(v17, v10);
    v28 = sub_1BE052404();
    v26, v29, v30, v31, v32, v33, v34, v35;
    v19 = [objc_opt_self() alertControllerWithTitle:v28 message:0 preferredStyle:1];

    (v55)(v13, v22, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      sub_1BE04B6F4();
      v38 = v37;

      v27(v13, v10);
      v39 = sub_1BE052404();
      v38, v40, v41, v42, v43, v44, v45, v46;
      v47 = [objc_opt_self() actionWithTitle:v39 style:1 handler:0];

      [v19 addAction_];
      PKApplyDefaultIconToAlertController();
      swift_beginAccess();
      v48 = swift_unknownObjectWeakLoadStrong();
      a4 = v54;
      if (v48)
      {
        v49 = v48;
        v50 = v48 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v50 + 8);

          ObjectType = swift_getObjectType();
          (*(v51 + 24))(v19, ObjectType, v51);

          swift_unknownObjectRelease();
          goto LABEL_11;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD54EE44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD54EE80(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD54EED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
  if (v1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
  }

  v3 = v1;
  return v2;
}

id sub_1BD54EF8C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 type];
  if (v9 <= 8)
  {
    if (((1 << v9) & 0x19F) == 0)
    {
      if (v9 == 5)
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v53 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_context);
          v54 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product);
          objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
          v55 = a1;
          sub_1BE048964();
          v48 = sub_1BD9DC084(v53, v54, v49);
          v49 = &off_1F3BCB048;
          goto LABEL_9;
        }
      }

      else
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v56 = type metadata accessor for PaymentSetupOpenAppClipFlowItem();
          v57 = objc_allocWithZone(v56);
          *&v57[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v58 = &v57[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier];
          *v58 = 0xD000000000000013;
          *(v58 + 1) = 0x80000001BE123E30;
          *&v57[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] = v49;
          v61.receiver = v57;
          v61.super_class = v56;
          v59 = a1;
          v48 = objc_msgSendSuper2(&v61, sel_init);
          v49 = &off_1F3B96610;
          goto LABEL_9;
        }
      }

      v48 = 0;
      goto LABEL_9;
    }

    [a1 type];
    result = PKPaymentSupportedProvisioningMethodToString();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = sub_1BE052434();
    v14 = v13;

    sub_1BE04D0E4();
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    v14, v17, v18, v19, v20, v21, v22, v23;
    if (os_log_type_enabled(v15, v16))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v62 = v25;
      *v24 = 136315138;
      v26 = sub_1BD123690(v12, v14, &v62);
      v14, v27, v28, v29, v30, v31, v32, v33;
      *(v24 + 4) = v26;
      _os_log_impl(&dword_1BD026000, v15, v16, "Error: Unsupported method type: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25, v34, v35, v36, v37, v38, v39, v40);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    else
    {

      v14, v41, v42, v43, v44, v45, v46, v47;
    }

    (*(v5 + 8))(v8, v4);
  }

  v48 = 0;
  v49 = 0;
LABEL_9:
  v50 = v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v50 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAD0E8, v48, v49, ObjectType, v51);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD54F37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2A0, &qword_1BE0E0990);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2A8, &qword_1BE0E0998);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = a1;
  v52 = a1;
  (*(v8 + 104))(v10, *MEMORY[0x1E69B80F0], v7, v15);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v8 + 8))(v10, v7);
    v54 = v21;
    v55 = v23;
    sub_1BD0DDEBC();
    v54 = sub_1BE0506C4();
    v55 = v24;
    v56 = v25 & 1;
    v57 = v26;
    sub_1BD54FF44(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2B0, &unk_1BE0E09A0);
    sub_1BD20FBD4(&qword_1EBD4A2B8, &qword_1EBD4A2B0, &unk_1BE0E09A0);
    v45 = v17;
    v27 = sub_1BE051A34();
    MEMORY[0x1EEE9AC00](v27);
    sub_1BD5507F4(v18, &v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    sub_1BD12E194();
    v28 = v47;
    sub_1BE051A54();
    v43 = *(v12 + 16);
    v29 = v46;
    v43(v46, v17, v11);
    v31 = v50;
    v30 = v51;
    v44 = *(v50 + 16);
    v32 = v48;
    v44(v48, v28, v51);
    v33 = v11;
    v34 = v12;
    v35 = v28;
    v36 = v32;
    v37 = v49;
    v38 = v33;
    (v43)(v49, v29);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C0, &qword_1BE0E09B0);
    v44((v37 + *(v39 + 48)), v36, v30);
    v40 = *(v31 + 8);
    v40(v35, v30);
    v41 = *(v34 + 8);
    v41(v45, v38);
    v40(v36, v30);
    return (v41)(v29, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD54F878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_1BE04BD74();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C8, &qword_1BE0E09E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0, &qword_1BE0E09E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  KeyPath = swift_getKeyPath();
  v24 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel___observationRegistrar;
  v104 = a1;
  sub_1BD20FC28();
  v99 = v24;
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo;
  v33 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v100 = v22;
  v101 = v8;
  if (v33)
  {
    v88 = v13;
    v89 = v7;
    v94 = v9;
    v35 = *(v32 + 32);
    v34 = *(v32 + 40);
    v37 = *(v32 + 16);
    v36 = *(v32 + 24);
    v38 = *(v32 + 8);
    v39 = v38;
    sub_1BD550B20(v33, v38, v37, v36, v35, v34);
    sub_1BD550B80(v33, v38, v37, v36, v35, v34);
    v40 = [v39 formattedStringValue];

    if (v40)
    {
      v41 = sub_1BE052434();
      v87 = v42;

      v44 = v92;
      v43 = v93;
      v45 = v89;
      (*(v92 + 104))(v89, *MEMORY[0x1E69B80F0], v93);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        goto LABEL_16;
      }

      v47 = result;
      v48 = sub_1BE04B6F4();
      v50 = v49;

      (*(v44 + 8))(v45, v43);
      v104 = v48;
      v105 = v50;
      v102 = v41;
      v103 = v87;
      sub_1BD0DDEBC();
      v51 = v88;
      sub_1BE04E834();
      v9 = v94;
      v22 = v100;
      v8 = v101;
      (*(v94 + 32))(v100, v51, v101);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v22 = v100;
      v8 = v101;
      v9 = v94;
    }
  }

  else
  {
    v52 = 1;
  }

  v53 = 1;
  v94 = *(v9 + 56);
  (v94)(v22, v52, 1, v8);
  v54 = swift_getKeyPath();
  v104 = a1;
  sub_1BE04B594();
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = *v32;
  if (!*v32)
  {
    v82 = v95;
LABEL_14:
    (v94)(v82, v53, 1, v8);
    v83 = v96;
    sub_1BD550BE0(v22, v96);
    v84 = v97;
    sub_1BD550BE0(v82, v97);
    v85 = v98;
    sub_1BD550BE0(v83, v98);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D8, &qword_1BE0E09F0);
    sub_1BD550BE0(v84, v85 + *(v86 + 48));
    sub_1BD550C50(v82);
    sub_1BD550C50(v22);
    sub_1BD550C50(v84);
    return sub_1BD550C50(v83);
  }

  v63 = v9;
  v65 = *(v32 + 32);
  v64 = *(v32 + 40);
  v67 = *(v32 + 16);
  v66 = *(v32 + 24);
  v68 = *(v32 + 8);
  v69 = v66;
  sub_1BD550B20(v62, v68, v67, v66, v65, v64);
  sub_1BD550B80(v62, v68, v67, v66, v65, v64);
  v70 = [v69 formattedStringValue];

  if (!v70)
  {
    v53 = 1;
    v8 = v101;
    v82 = v95;
    goto LABEL_13;
  }

  v71 = sub_1BE052434();
  v73 = v72;

  v75 = v91;
  v74 = v92;
  v76 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x1E69B80F0], v93);
  result = PKPassKitBundle();
  if (result)
  {
    v77 = result;
    v78 = sub_1BE04B6F4();
    v80 = v79;

    (*(v74 + 8))(v75, v76);
    v104 = v78;
    v105 = v80;
    v102 = v71;
    v103 = v73;
    sub_1BD0DDEBC();
    v81 = v90;
    sub_1BE04E834();
    v82 = v95;
    v8 = v101;
    (*(v63 + 32))(v95, v81, v101);
    v53 = 0;
LABEL_13:
    v22 = v100;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}