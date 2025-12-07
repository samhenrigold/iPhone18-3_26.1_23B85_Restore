void sub_1BD506274()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018, &qword_1BE0BDD68);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 48) + 8 * v24);
        v26 = (*(v2 + 56) + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
        *(*(v11 + 48) + 8 * v24) = v25;
        v29 = (*(v11 + 56) + 16 * v24);
        *v29 = v27;
        v29[1] = v28;
        v30 = v25;
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD5063E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20, &unk_1BE0DD6B0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 56) + 8 * v24);
        *(*(v11 + 48) + 16 * v24) = *(*(v2 + 48) + 16 * v24);
        *(*(v11 + 56) + 8 * v24) = v25;
        sub_1BE048C84();
        v26 = v25;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD50654C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10, &unk_1BE0DD700);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 40 * v24;
        sub_1BD149C8C(*(v2 + 48) + 40 * v24, v30);
        v24 *= 32;
        sub_1BD038CD0(*(v2 + 56) + v24, v29);
        v26 = *(v11 + 48) + v25;
        v27 = v30[0];
        v28 = v30[1];
        *(v26 + 32) = v31;
        *v26 = v27;
        *(v26 + 16) = v28;
        sub_1BD1B6140(v29, (*(v11 + 56) + v24));
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD50672C()
{
  v1 = v0;
  v40 = sub_1BE0492B4();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF0, &unk_1BE0DD730);
  v3 = *v0;
  v4 = sub_1BE0539E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = (v4 + 64);
    v14 = (v3 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v3 + 64;
    if (v12 != v3 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v3 + 16);
    v41 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v3 + 64);
    v21 = (v18 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = v42;
        v27 = *(v42 + 72) * v25;
        v29 = v39;
        v28 = v40;
        (*(v42 + 16))(v39, *(v3 + 48) + v27, v40);
        v30 = *(*(v3 + 56) + 8 * v25);
        v31 = v3;
        v32 = v41;
        (*(v26 + 32))(*(v41 + 48) + v27, v29, v28);
        v33 = *(v32 + 56);
        v3 = v31;
        *(v33 + 8 * v25) = v30;
        sub_1BE048C84();
        v20 = v43;
      }

      while (v43);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        v3, v14, v6, v7, v8, v9, v10, v11;
        v1 = v35;
        v12 = v41;
        goto LABEL_18;
      }

      v24 = *(v36 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_18:
    *v1 = v12;
  }
}

void sub_1BD5069C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8, &qword_1BE0BDCD0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*(v2 + 48) + v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = (*(v2 + 56) + v24);
        v29 = *v28;
        v30 = v28[1];
        v31 = (*(v11 + 48) + v24);
        *v31 = v27;
        v31[1] = v26;
        v32 = (*(v11 + 56) + v24);
        *v32 = v29;
        v32[1] = v30;
        sub_1BE048C84();
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD506B4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E58, &qword_1BE0DD6E0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 56) + 8 * v24);
        *(*(v11 + 48) + 8 * v24) = *(*(v2 + 48) + 8 * v24);
        *(*(v11 + 56) + 8 * v24) = v25;
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD506CD0()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E40, &qword_1BE0DD6D0);
  v4 = *v0;
  v5 = sub_1BE0539E4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    v14 = (v5 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 64 + 8 * v15)
    {
      memmove(v14, (v4 + 64), 8 * v15);
    }

    v33 = v4 + 64;
    v16 = 0;
    v17 = *(v4 + 16);
    v36 = v13;
    *(v13 + 16) = v17;
    v18 = 1 << *(v4 + 32);
    v19 = *(v4 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_14:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        sub_1BD50955C(*(v4 + 48) + v28, v34, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v29 = *(*(v4 + 56) + 8 * v26);
        v30 = v36;
        sub_1BD5095C4(v27, *(v36 + 48) + v28, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        *(*(v30 + 56) + 8 * v26) = v29;
        sub_1BE048C84();
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {
        v4, v6, v7, v8, v9, v10, v11, v12;
        v1 = v32;
        v13 = v36;
        goto LABEL_18;
      }

      v25 = *(v33 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
LABEL_18:
    *v1 = v13;
  }
}

void sub_1BD506F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0, &qword_1BE0BDCF0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;
        sub_1BE048C84();
        swift_unknownObjectRetain();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD50708C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8, &qword_1BE0DD710);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 56) + 8 * v24);
        *(*(v11 + 48) + v24) = *(*(v2 + 48) + v24);
        *(*(v11 + 56) + 8 * v24) = v25;
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD5071FC()
{
  v1 = v0;
  v39 = sub_1BE04AFE4();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90, &qword_1BE0BDCB0);
  v3 = *v0;
  v4 = sub_1BE0539E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = (v4 + 64);
    v14 = (v3 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v3 + 64;
    if (v12 != v3 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v3 + 16);
    v40 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v3 + 64);
    v21 = (v18 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v29 = v38;
        v28 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v27, v39);
        v30 = *(*(v3 + 56) + 8 * v25);
        v31 = v40;
        (*(v26 + 32))(*(v40 + 48) + v27, v29, v28);
        *(*(v31 + 56) + 8 * v25) = v30;
        v32 = v30;
        v20 = v42;
      }

      while (v42);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        v3, v14, v6, v7, v8, v9, v10, v11;
        v1 = v34;
        v12 = v40;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v42 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_18:
    *v1 = v12;
  }
}

void sub_1BD5074D4(uint64_t (*a1)(void), uint64_t (*a2)(void, double), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v56 = a1(0);
  v59 = *(v56 - 8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v45 - v10;
  v54 = a2(0, v9);
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_1BE0539E4();
  v21 = v13;
  if (*(v12 + 16))
  {
    v22 = (v13 + 64);
    v23 = (v12 + 64);
    v24 = ((1 << *(v21 + 32)) + 63) >> 6;
    v45 = v8;
    v46 = v12 + 64;
    if (v21 != v12 || v22 >= &v23[8 * v24])
    {
      memmove(v22, v23, 8 * v24);
    }

    v25 = 0;
    v26 = *(v12 + 16);
    v57 = v21;
    *(v21 + 16) = v26;
    v27 = 1 << *(v12 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v12 + 64);
    v30 = (v27 + 63) >> 6;
    v50 = v58 + 16;
    v51 = v30;
    v48 = v58 + 32;
    v49 = v59 + 16;
    v47 = v59 + 32;
    v52 = v12;
    v32 = v53;
    v31 = v54;
    if (v29)
    {
      do
      {
        v33 = __clz(__rbit64(v29));
        v60 = (v29 - 1) & v29;
LABEL_14:
        v36 = v33 | (v25 << 6);
        v37 = v58;
        v38 = *(v58 + 72) * v36;
        (*(v58 + 16))(v32, *(v12 + 48) + v38, v31);
        v39 = v59;
        v40 = *(v59 + 72) * v36;
        v41 = v55;
        v42 = v56;
        (*(v59 + 16))(v55, *(v12 + 56) + v40, v56);
        v43 = v57;
        (*(v37 + 32))(*(v57 + 48) + v38, v32, v31);
        v44 = *(v43 + 56);
        v12 = v52;
        (*(v39 + 32))(v44 + v40, v41, v42);
        v30 = v51;
        v29 = v60;
      }

      while (v60);
    }

    v34 = v25;
    while (1)
    {
      v25 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        v12, v23, v15, v16, v17, v18, v19, v20;
        v8 = v45;
        v21 = v57;
        goto LABEL_18;
      }

      v35 = *(v46 + 8 * v25);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v60 = (v35 - 1) & v35;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v12, v14, v15, v16, v17, v18, v19, v20;
LABEL_18:
    *v8 = v21;
  }
}

void sub_1BD507830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E70, &qword_1BE0DD6F8);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*(v2 + 48) + v24);
        v27 = *v25;
        v26 = v25[1];
        v29 = *(*(v2 + 56) + v24);
        v28 = (*(v11 + 48) + v24);
        *v28 = v27;
        v28[1] = v26;
        *(*(v11 + 56) + v24) = v29;
        sub_1BE048C84();
        sub_1BD041A38(v29, *(&v29 + 1));
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD507A04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0539E4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 64 + 8 * v15)
    {
      memmove(v14, (v4 + 64), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = *(v4 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = (*(v4 + 48) + 16 * v26);
        v28 = v27[1];
        v29 = *(*(v4 + 56) + 8 * v26);
        v30 = (*(v13 + 48) + 16 * v26);
        *v30 = *v27;
        v30[1] = v28;
        *(*(v13 + 56) + 8 * v26) = v29;
        sub_1BE048C84();
        sub_1BE048C84();
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
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

void sub_1BD507BC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0, &unk_1BE0DD680);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;
        sub_1BE048C84();
        sub_1BE048964();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD507D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90, &qword_1BE0BDC90);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = (*(v2 + 48) + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
        v24 *= 48;
        v29 = *(v2 + 56) + v24;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 32);
        v33 = *(v29 + 40);
        v34 = (*(v11 + 48) + v25);
        v35 = *(v29 + 16);
        *v34 = v27;
        v34[1] = v28;
        v36 = *(v11 + 56) + v24;
        *v36 = v30;
        *(v36 + 8) = v31;
        *(v36 + 16) = v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        v37 = v32;
        sub_1BE048C84();
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD507EF4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0539E4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 64 + 8 * v15)
    {
      memmove(v14, (v4 + 64), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = *(v4 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = *(*(v4 + 56) + 8 * v26);
        *(*(v13 + 48) + 8 * v26) = *(*(v4 + 48) + 8 * v26);
        *(*(v13 + 56) + 8 * v26) = v27;
        sub_1BE048964();
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
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

void sub_1BD508040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0, &unk_1BE0DD660);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v2 + 64);
    for (i = (v16 + 63) >> 6; v18; *(*(v11 + 56) + 8 * v21) = v24)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = v20 | (v15 << 6);
LABEL_17:
      v24 = *(*(v2 + 56) + 8 * v21);
      *(*(v11 + 48) + 8 * v21) = *(*(v2 + 48) + 8 * v21);
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

      v23 = *(v2 + 64 + 8 * v15);
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

void sub_1BD5081DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v48 = a4;
  v7 = v4;
  v8 = a1(0);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v45 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_1BE0539E4();
  v19 = v11;
  if (*(v10 + 16))
  {
    v45 = v7;
    v20 = (v11 + 64);
    v21 = v10 + 64;
    v22 = ((1 << *(v19 + 32)) + 63) >> 6;
    if (v19 != v10 || v20 >= v10 + 64 + 8 * v22)
    {
      memmove(v20, (v10 + 64), 8 * v22);
    }

    v24 = 0;
    v25 = *(v10 + 16);
    v49 = v19;
    *(v19 + 16) = v25;
    v26 = 1 << *(v10 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v10 + 64);
    v29 = (v26 + 63) >> 6;
    if (v28)
    {
      do
      {
        v30 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
LABEL_17:
        v33 = v30 | (v24 << 6);
        v34 = 16 * v33;
        v35 = *(v10 + 56);
        v36 = (*(v10 + 48) + 16 * v33);
        v37 = v10;
        v38 = *v36;
        v39 = v36[1];
        v40 = v46;
        v41 = *(v47 + 72) * v33;
        v42 = v48;
        sub_1BD50955C(v35 + v41, v46, v48);
        v43 = v49;
        v44 = (*(v49 + 48) + v34);
        *v44 = v38;
        v44[1] = v39;
        v10 = v37;
        sub_1BD5095C4(v40, *(v43 + 56) + v41, v42);
        sub_1BE048C84();
        v28 = v50;
      }

      while (v50);
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v29)
      {
        v10, v12, v13, v14, v15, v16, v17, v18;
        v7 = v45;
        v19 = v49;
        goto LABEL_21;
      }

      v32 = *(v21 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v50 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
LABEL_21:
    *v7 = v19;
  }
}

void sub_1BD508444(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0539E4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 64 + 8 * v15)
    {
      memmove(v14, (v4 + 64), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = *(v4 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = (*(v4 + 48) + 16 * v26);
        v28 = v27[1];
        v29 = *(*(v4 + 56) + 8 * v26);
        v30 = (*(v13 + 48) + 16 * v26);
        *v30 = *v27;
        v30[1] = v28;
        *(*(v13 + 56) + 8 * v26) = v29;
        sub_1BE048C84();
        v31 = v29;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
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

void sub_1BD5085C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v50 = a1(0);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v44 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1BE0539E4();
  v17 = v9;
  if (*(v8 + 16))
  {
    v45 = v6;
    v18 = (v9 + 64);
    v19 = v8 + 64;
    v20 = ((1 << *(v17 + 32)) + 63) >> 6;
    if (v17 != v8 || v18 >= v8 + 64 + 8 * v20)
    {
      memmove(v18, (v8 + 64), 8 * v20);
    }

    v22 = 0;
    v23 = *(v8 + 16);
    v51 = v17;
    *(v17 + 16) = v23;
    v24 = 1 << *(v8 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v8 + 64);
    v27 = (v24 + 63) >> 6;
    v46 = v52 + 32;
    v47 = v52 + 16;
    v48 = v8;
    if (v26)
    {
      do
      {
        v28 = __clz(__rbit64(v26));
        v53 = (v26 - 1) & v26;
LABEL_17:
        v31 = v28 | (v22 << 6);
        v32 = 16 * v31;
        v33 = *(v8 + 56);
        v34 = (*(v8 + 48) + 16 * v31);
        v35 = *v34;
        v36 = v34[1];
        v37 = v52;
        v38 = *(v52 + 72) * v31;
        v39 = v49;
        v40 = v50;
        (*(v52 + 16))(v49, v33 + v38, v50);
        v41 = v51;
        v42 = (*(v51 + 48) + v32);
        *v42 = v35;
        v42[1] = v36;
        v43 = *(v41 + 56) + v38;
        v8 = v48;
        (*(v37 + 32))(v43, v39, v40);
        sub_1BE048C84();
        v26 = v53;
      }

      while (v53);
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v27)
      {
        v8, v10, v11, v12, v13, v14, v15, v16;
        v6 = v45;
        v17 = v51;
        goto LABEL_21;
      }

      v30 = *(v19 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v53 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
LABEL_21:
    *v6 = v17;
  }
}

void sub_1BD508850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70, &qword_1BE0BDB60);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 48) + 8 * v24);
        sub_1BD509500(*(v2 + 56) + 40 * v24, v26);
        *(*(v11 + 48) + 8 * v24) = v25;
        sub_1BD1B6150(v26, *(v11 + 56) + 40 * v24);
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

void sub_1BD5089D0()
{
  v1 = v0;
  v2 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE04AFE4();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0, &unk_1BE0DD670);
  v5 = *v0;
  v6 = sub_1BE0539E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = (v6 + 64);
    v16 = (v5 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v37 = v1;
    v38 = v5 + 64;
    if (v14 != v5 || v15 >= &v16[8 * v17])
    {
      memmove(v15, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v5 + 16);
    v46 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v5 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v5 + 64);
    v23 = (v20 + 63) >> 6;
    v39 = v47 + 32;
    v40 = v47 + 16;
    v41 = v5;
    v24 = v47;
    v25 = v14;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v48 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v42;
        v31 = v43;
        (*(v24 + 16))(v42, *(v5 + 48) + v30, v43);
        v33 = *(v5 + 56);
        v34 = v44;
        v35 = *(v45 + 72) * v29;
        sub_1BD50955C(v33 + v35, v44, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        (*(v24 + 32))(*(v25 + 48) + v30, v32, v31);
        v36 = v34;
        v5 = v41;
        sub_1BD5095C4(v36, *(v25 + 56) + v35, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        v22 = v48;
      }

      while (v48);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        v5, v16, v8, v9, v10, v11, v12, v13;
        v1 = v37;
        v14 = v46;
        goto LABEL_18;
      }

      v28 = *(v38 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v48 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_18:
    *v1 = v14;
  }
}

void sub_1BD508CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60, &qword_1BE0BDC80);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 48) + 8 * v24);
        sub_1BD038CD0(*(v2 + 56) + 32 * v24, v27);
        *(*(v11 + 48) + 8 * v24) = v25;
        sub_1BD1B6140(v27, (*(v11 + 56) + 32 * v24));
        v26 = v25;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
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

uint64_t sub_1BD508E74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE052404();
  v6 = sub_1BE04B3C4();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    sub_1BD89B2C8(a3);
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1BD508F34(void *a1, unint64_t a2, char a3, void *a4, unint64_t a5, char a6)
{
  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    if (a2 >> 60 == 15)
    {
      if (a5 >> 60 == 15)
      {
        sub_1BD5096E8(a1, a2, 0);
        sub_1BD5096E8(a4, a5, 0);
        sub_1BD030220(a1, a2, v10, v11, v12, v13, v14, v15);
        return 1;
      }
    }

    else if (a5 >> 60 != 15)
    {
      sub_1BD5096E8(a1, a2, 0);
      sub_1BD5096E8(a4, a5, 0);
      v33 = sub_1BD3D8CB4(a1, a2, a4, a5);
      sub_1BD030220(a4, a5, v34, v35, v36, v37, v38, v39);
      sub_1BD030220(a1, a2, v40, v41, v42, v43, v44, v45);
      return v33;
    }

    sub_1BD5096E8(a1, a2, 0);
    sub_1BD5096E8(a4, a5, 0);
    sub_1BD030220(a1, a2, v19, v20, v21, v22, v23, v24);
    sub_1BD030220(a4, a5, v25, v26, v27, v28, v29, v30);
    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_10:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD509138(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD509204(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD509454()
{
  result = qword_1EBD48D98;
  if (!qword_1EBD48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48D98);
  }

  return result;
}

unint64_t sub_1BD5094AC()
{
  result = qword_1EBD48DA0;
  if (!qword_1EBD48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48DA0);
  }

  return result;
}

uint64_t sub_1BD50955C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5095C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD50962C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD5096E8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return sub_1BE048C84();
  }

  if (!a3)
  {
    return sub_1BD030394(result, a2);
  }

  return result;
}

uint64_t sub_1BD509710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD509790@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a4;
  v93 = a3;
  v86 = a1;
  v95 = a5;
  v6 = sub_1BE04E2E4();
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF8, &qword_1BE0DD7D8);
  MEMORY[0x1EEE9AC00](v87);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F00, &qword_1BE0DD7E0);
  v92 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v79 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F08, &qword_1BE0DD7E8);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v14 = &v79 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F10, &qword_1BE0DD7F0);
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v79 - v18;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(&v97);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  v42 = v97;
  if (v97 >> 62)
  {
    v78 = v97;
    v43 = sub_1BE053704();
    v42 = v78;
  }

  else
  {
    v43 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42, v35, v36, v37, v38, v39, v40, v41;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_1BE04D8B4(&v96);
  v44, v46, v47, v48, v49, v50, v51, v52;
  v45, v53, v54, v55, v56, v57, v58, v59;
  v60 = 1;
  if (v43 > 0 || v96)
  {
    *v10 = sub_1BE04F7B4();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v61 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F18, &qword_1BE0DD888) + 44)];
    v81 = v11;
    v82 = v14;
    v62 = v15;
    v63 = v86;
    v64 = v93;
    v65 = v89;
    v66 = sub_1BD50A884(v86, a2, v89, v61);
    v80 = v6;
    v67 = v85;
    v79 = &v79;
    MEMORY[0x1EEE9AC00](v66);
    *(&v79 - 48) = v43 > 0;
    *(&v79 - 5) = v63;
    *(&v79 - 4) = a2;
    v15 = v62;
    *(&v79 - 3) = v64;
    *(&v79 - 2) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F20, &qword_1BE0DD890);
    sub_1BD0DE4F4(&qword_1EBD48F28, &qword_1EBD48EF8, &qword_1BE0DD7D8, MEMORY[0x1E6981870]);
    sub_1BD50BDD8();
    v68 = v91;
    sub_1BE051A24();
    v69 = v80;
    if (v64)
    {
      v70 = 0x4030000000000000;
    }

    else
    {
      v70 = 0;
    }

    v71 = MEMORY[0x1E697DAD8];
    if (v64)
    {
      v71 = MEMORY[0x1E697DAD0];
    }

    (*(v67 + 104))(v8, *v71, v80);
    sub_1BD50C2A0();
    v73 = v81;
    v72 = v82;
    sub_1BE050B84();
    (*(v67 + 8))(v8, v69);
    (*(v92 + 8))(v68, v73);
    v74 = v84;
    (*(v88 + 32))(v84, v72, v90);
    v75 = v74 + *(v94 + 36);
    *v75 = 0;
    *(v75 + 8) = v70;
    *(v75 + 16) = 0;
    *(v75 + 24) = v70;
    *(v75 + 32) = 0;
    v76 = v83;
    sub_1BD0828F4(v74, v83);
    sub_1BD0828F4(v76, v95);
    v60 = 0;
  }

  return (*(v15 + 56))(v95, v60, 1, v94);
}

uint64_t sub_1BD509D70@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v61 = a2;
  v62 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FC8, &unk_1BE0DD8E0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F50, &qword_1BE0DD8A0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    v18 = swift_getKeyPath();
    v60 = a6;
    v19 = v18;
    sub_1BE04D8B4(v69);
    KeyPath, v20, v21, v22, v23, v24, v25, v26;
    v19, v27, v28, v29, v30, v31, v32, v33;
    v34 = swift_allocObject();
    v35 = v62;
    v34[2] = v61;
    v34[3] = a3;
    v34[4] = v35;
    v34[5] = a5;
    v36 = a3;
    v37 = a5;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0, &unk_1BE0E1AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F60, &qword_1BE0DD8A8);
    sub_1BD0DE4F4(&qword_1EBD3FBC8, &qword_1EBD3FBC0, &unk_1BE0E1AC0, MEMORY[0x1E69E6338]);
    sub_1BD50BF6C();
    sub_1BD50CC3C(&unk_1EBD3FBD0, type metadata accessor for TransactionPresentation, &unk_1BE0EF060);
    sub_1BE0519D4();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F98, &qword_1BE0DD8C8);
    sub_1BD50BEE8();
    sub_1BD50C130();
    v38 = v60;
    sub_1BE04F9A4();
    (*(v14 + 8))(v16, v13);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40, &qword_1BE0DD898);
    return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  else
  {
    sub_1BD50C364(a3);
    if (v41)
    {
      v42 = v41;
      v43 = sub_1BE04F504();
      v64 = 1;
      sub_1BD50A700(v67);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v63 + 7) = v67[0];
      *(&v63[1] + 7) = v67[1];
      *(&v63[2] + 7) = v68[0];
      v63[3] = *(v68 + 9);
      LOBYTE(v42) = v64;
      sub_1BE051CD4();
      sub_1BE04EE54();
      *&v65[55] = v69[3];
      *&v65[71] = v69[4];
      *&v65[87] = v69[5];
      *&v65[103] = v69[6];
      *&v65[7] = v69[0];
      *&v65[23] = v69[1];
      *&v65[39] = v69[2];
      v51 = v63[1];
      *(v12 + 17) = v63[0];
      *(v12 + 33) = v51;
      v52 = v63[3];
      *(v12 + 49) = v63[2];
      *(v12 + 65) = v52;
      v53 = *&v65[80];
      *(v12 + 145) = *&v65[64];
      *(v12 + 161) = v53;
      *(v12 + 177) = *&v65[96];
      v54 = *&v65[16];
      *(v12 + 81) = *v65;
      *(v12 + 97) = v54;
      v55 = *&v65[48];
      *(v12 + 113) = *&v65[32];
      v66 = 0;
      *v12 = v43;
      *(v12 + 1) = 0;
      v12[16] = v42;
      *(v12 + 24) = *&v65[111];
      *(v12 + 129) = v55;
      *(v12 + 216) = 0u;
      *(v12 + 200) = 0u;
      v12[232] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F98, &qword_1BE0DD8C8);
      sub_1BD50BEE8();
      sub_1BD50C130();
      sub_1BE04F9A4();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40, &qword_1BE0DD898);
      return (*(*(v56 - 8) + 56))(a6, 0, 1, v56);
    }

    else
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40, &qword_1BE0DD898);
      v58 = *(*(v57 - 8) + 56);

      return v58(a6, 1, 1, v57);
    }
  }
}

id sub_1BD50A32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  *a6 = v10;
  *(a6 + 8) = sub_1BD50C6CC;
  *(a6 + 16) = v11;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0;
  swift_retain_n();
  v12 = a3;

  return a5;
}

uint64_t sub_1BD50A3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v23[0] = sub_1BE04F434();
  v7 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v11 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  v12 = *(a2 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
  v13 = v11;
  v14 = [v13 identifier];
  v15 = [v12 cashbackGroupForTransactionWithIdentifier:v14 cashbackTransactionSourceCollection:0];

  v16 = [a3 viewControllerForTransaction:v13 sourceCollection:v10 familyCollection:0 account:*(a2 + OBJC_IVAR____TtC9PassKitUI15TransactionList_account) accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:v15 navigationController:0];
  v17 = sub_1BE04F7B4();
  v18 = v16;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v33[0]) = 1;
  v19 = sub_1BE04EC54();
  v20 = sub_1BE0501D4();
  v24 = v17;
  LOBYTE(v25) = 1;
  *(&v25 + 1) = v18;
  *&v32[1] = v19;
  BYTE8(v32[1]) = v20;
  v21 = v23[0];
  (*(v7 + 104))(v9, *MEMORY[0x1E697C438], v23[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810, &unk_1BE0DD8F0);
  sub_1BD196C48();
  sub_1BE050E84();

  (*(v7 + 8))(v9, v21);
  v33[6] = v30;
  v33[7] = v31;
  v34[0] = v32[0];
  *(v34 + 9) = *(v32 + 9);
  v33[2] = v26;
  v33[3] = v27;
  v33[4] = v28;
  v33[5] = v29;
  v33[0] = v24;
  v33[1] = v25;
  return sub_1BD0DE53C(v33, &qword_1EBD3B810, &unk_1BE0DD8F0);
}

void sub_1BD50A700(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE050324();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v23, v24, v25, v26, v27);
  v10, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE04FC94();
  v35 = sub_1BE050574();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v40, v42, v43, v44, v45);
  v18, v46, v47, v48, v49, v50, v51, v52;
  v53 = (v39 & 1);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v35;
  *(a3 + 24) = v37;
  *(a3 + 32) = v53;
  *(a3 + 40) = v41;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  sub_1BD0D7F18(v35, v37, v53);
  sub_1BE048C84();
  sub_1BD0DDF10(v35, v37, v53, v54, v55, v56, v57, v58);
  v41, v59, v60, v61, v62, v63, v64, v65;
}

uint64_t sub_1BD50A884@<X0>(char *a1@<X0>, char *a2@<X1>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FD0, &qword_1BE0DD908);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FD8, &qword_1BE0DD910);
  sub_1BD50AA14(a1, a2, a4, &v14[*(v15 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD48FD0, &qword_1BE0DD908);
  *a5 = 0x4010000000000000;
  *(a5 + 8) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FE0, &qword_1BE0DD918);
  sub_1BD0DE19C(v11, a5 + *(v16 + 48), &qword_1EBD48FD0, &qword_1BE0DD908);
  v17 = a5 + *(v16 + 64);
  *v17 = 0x4018000000000000;
  *(v17 + 8) = 0;
  sub_1BD0DE53C(v14, &qword_1EBD48FD0, &qword_1BE0DD908);
  return sub_1BD0DE53C(v11, &qword_1EBD48FD0, &qword_1BE0DD908);
}

id sub_1BD50AA14@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X3>, void *a4@<X8>)
{
  v104 = a3;
  v103 = a2;
  v102 = a1;
  v110 = a4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FE8, &qword_1BE0DD920);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FF0, &qword_1BE0DD928);
  v106 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v96 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FF8, &qword_1BE0DD930);
  v111 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v96 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49000, &qword_1BE0DD938);
  MEMORY[0x1EEE9AC00](v108);
  v107 = (&v96 - v17);
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v96 - v23;
  if (!v24)
  {
    v97 = v13;
    v98 = v7;
    v99 = v11;
    v100 = v10;
    v47 = v106;
    v101 = v5;
    (*(v19 + 104))(v21, *MEMORY[0x1E69B80E0], v18, v25);
    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      v49 = sub_1BE04B6F4();
      v51 = v50;

      (*(v19 + 8))(v21, v18);
      *&v118[0] = v49;
      *(&v118[0] + 1) = v51;
      sub_1BD0DDEBC();
      v52 = sub_1BE0506C4();
      v54 = v53;
      v56 = v55;
      v58 = v57;
      LOBYTE(v51) = sub_1BE050204();
      sub_1BE04E1F4();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = v56 & 1;
      v120 = v56 & 1;
      v119 = 0;
      v68 = sub_1BE0503D4();
      KeyPath = swift_getKeyPath();
      *&v112 = v52;
      *(&v112 + 1) = v54;
      LOBYTE(v113) = v67;
      *(&v113 + 1) = v58;
      LOBYTE(v114) = v51;
      *(&v114 + 1) = v60;
      *&v115 = v62;
      *(&v115 + 1) = v64;
      *&v116 = v66;
      BYTE8(v116) = 0;
      *&v117 = KeyPath;
      *(&v117 + 1) = v68;
      sub_1BE050364();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49010, &qword_1BE0DD978);
      sub_1BD50C6D8();
      v96 = v16;
      sub_1BE050854();
      v118[2] = v114;
      v118[3] = v115;
      v118[4] = v116;
      v118[5] = v117;
      v118[0] = v112;
      v118[1] = v113;
      v70 = sub_1BD0DE53C(v118, &qword_1EBD49010, &qword_1BE0DD978);
      MEMORY[0x1EEE9AC00](v70);
      v71 = v103;
      *(&v96 - 4) = v102;
      *(&v96 - 3) = v71;
      v72 = v104;
      *(&v96 - 2) = 0;
      *(&v96 - 1) = v72;
      MEMORY[0x1EEE9AC00](v73);
      *(&v96 - 4) = v75;
      *(&v96 - 3) = v74;
      *(&v96 - 2) = 0;
      *(&v96 - 1) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49020, &qword_1BE0DD980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49028, &qword_1BE0DD988);
      sub_1BD50C7A8();
      sub_1BD0DE4F4(&qword_1EBD49098, &qword_1EBD49028, &qword_1BE0DD988, MEMORY[0x1E697D690]);
      v77 = v100;
      sub_1BE0504F4();
      v78 = *(v111 + 16);
      v79 = v97;
      v80 = v99;
      v78(v97, v16, v99);
      v81 = v47;
      v82 = *(v47 + 16);
      v83 = v98;
      v84 = v101;
      v82(v98, v77, v101);
      v85 = v105;
      v78(v105, v79, v80);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490A0, &qword_1BE0DD9D0);
      v87 = v85 + *(v86 + 48);
      *v87 = 0;
      *(v87 + 8) = 1;
      v82((v85 + *(v86 + 64)), v83, v84);
      v88 = *(v81 + 8);
      v88(v83, v84);
      v89 = *(v111 + 8);
      v111 += 8;
      v89(v79, v80);
      sub_1BD0DE19C(v85, v107, &qword_1EBD48FE8, &qword_1BE0DD920);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
      sub_1BD2A275C();
      sub_1BD0DE4F4(&qword_1EBD490A8, &qword_1EBD48FE8, &qword_1BE0DD920, MEMORY[0x1E6981F48]);
      v90 = v110;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v85, &qword_1EBD48FE8, &qword_1BE0DD920);
      v88(v100, v101);
      v89(v96, v99);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008, &qword_1BE0DD940);
      return (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
    }

    goto LABEL_11;
  }

  if (v24 == 1)
  {
    (*(v19 + 104))(&v96 - v23, *MEMORY[0x1E69B80E0], v18, v25);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v31 = v30;

      (*(v19 + 8))(v26, v18);
      *&v118[0] = v29;
      *(&v118[0] + 1) = v31;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v34 = v33;
      LOBYTE(v31) = v35;
      v37 = v36;
      v38 = sub_1BE050204();
      sub_1BE04E1F4();
      v39 = v31 & 1;
      LOBYTE(v118[0]) = v31 & 1;
      LOBYTE(v112) = 0;
      v40 = v107;
      *v107 = v32;
      v40[1] = v34;
      *(v40 + 16) = v39;
      v40[3] = v37;
      *(v40 + 32) = v38;
      v40[5] = v41;
      v40[6] = v42;
      v40[7] = v43;
      v40[8] = v44;
      *(v40 + 72) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
      sub_1BD2A275C();
      sub_1BD0DE4F4(&qword_1EBD490A8, &qword_1EBD48FE8, &qword_1BE0DD920, MEMORY[0x1E6981F48]);
      v45 = v110;
      sub_1BE04F9A4();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008, &qword_1BE0DD940);
      return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008, &qword_1BE0DD940);
  v93 = *(*(v92 - 8) + 56);
  v94 = v92;
  v95 = v110;

  return v93(v95, 1, 1, v94);
}

uint64_t sub_1BD50B51C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransactionList(0);
  sub_1BD50CC3C(&qword_1EBD3AFF8, type metadata accessor for TransactionList, &unk_1BE0E1C30);
  v2 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490B0, &unk_1BE0DDA10);
  sub_1BD50CC84();
  sub_1BD50CCD8();
  return sub_1BE0517D4();
}

uint64_t sub_1BD50B65C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490C8, qword_1BE0E1B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490D0, &unk_1BE0DDA20);
  sub_1BD0DE4F4(&qword_1EBD490D8, &qword_1EBD490C8, qword_1BE0E1B50, MEMORY[0x1E69E6338]);
  sub_1BD50CC84();
  swift_getOpaqueTypeConformance2();
  sub_1BD50CD9C();
  return sub_1BE0519D4();
}

uint64_t sub_1BD50B790@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BD5682E4(*a1);
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_1BD50B7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49040, &qword_1BE0DD990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49060, &qword_1BE0DD9B0);
  sub_1BD50C840();
  sub_1BD50C9C0();
  return sub_1BE051C74();
}

uint64_t sub_1BD50B8E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v65 - v3;
  v5 = sub_1BE051574();
  sub_1BE04F804();
  v6 = sub_1BE04F824();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = sub_1BE0515B4();
  v5, v8, v9, v10, v11, v12, v13, v14;
  sub_1BD0DE53C(v4, &qword_1EBD41F00, &qword_1BE0CC620);
  v15 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  v17 = sub_1BE0503D4();
  v18 = swift_getKeyPath();
  v65[1] = v7;
  v65[2] = KeyPath;
  v65[3] = v15;
  v65[4] = v18;
  v65[5] = v17;
  sub_1BE0503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49048, &qword_1BE0DD998);
  sub_1BD50C908();
  sub_1BE050854();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  v15, v33, v34, v35, v36, v37, v38, v39;
  KeyPath, v40, v41, v42, v43, v44, v45, v46;
  v7, v47, v48, v49, v50, v51, v52, v53;
  v54 = sub_1BE050224();
  sub_1BE04E1F4();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49040, &qword_1BE0DD990);
  v64 = a1 + *(result + 36);
  *v64 = v54;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  return result;
}

uint64_t sub_1BD50BB10@<X0>(uint64_t a1@<X8>)
{
  sub_1BD50BB94(&v8);
  v2 = v8;
  v3 = v9;
  v4 = sub_1BE051224();
  KeyPath = swift_getKeyPath();
  v6 = sub_1BE0503D4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  *(a1 + 40) = v6;
  return result;
}

void *sub_1BD50BB94@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v21);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE051574();
  result = sub_1BE04F9A4();
  v20 = v22;
  *a2 = v21;
  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_1BD50BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F794();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49100, &qword_1BE0DDAB0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49108, &qword_1BE0DDAB8) + 36));
  *v6 = v4;
  v6[1] = sub_1BD277450;
  v6[2] = 0;
  v7 = sub_1BE04F7A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49110, &qword_1BE0DDAC0);
  v9 = (a2 + *(result + 36));
  *v9 = v7;
  v9[1] = sub_1BD50BCB0;
  v9[2] = 0;
  return result;
}

unint64_t sub_1BD50BDD8()
{
  result = qword_1EBD48F30;
  if (!qword_1EBD48F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F20, &qword_1BE0DD890);
    sub_1BD50BE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F30);
  }

  return result;
}

unint64_t sub_1BD50BE5C()
{
  result = qword_1EBD48F38;
  if (!qword_1EBD48F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F40, &qword_1BE0DD898);
    sub_1BD50BEE8();
    sub_1BD50C130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F38);
  }

  return result;
}

unint64_t sub_1BD50BEE8()
{
  result = qword_1EBD48F48;
  if (!qword_1EBD48F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F50, &qword_1BE0DD8A0);
    sub_1BD50BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F48);
  }

  return result;
}

unint64_t sub_1BD50BF6C()
{
  result = qword_1EBD48F58;
  if (!qword_1EBD48F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F60, &qword_1BE0DD8A8);
    sub_1BD50C024();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F58);
  }

  return result;
}

unint64_t sub_1BD50C024()
{
  result = qword_1EBD48F68;
  if (!qword_1EBD48F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F70, &qword_1BE0DD8B0);
    sub_1BD0DE4F4(&qword_1EBD48F78, &qword_1EBD48F80, &unk_1BE0DD8B8, &unk_1BE110E88);
    sub_1BD50C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F68);
  }

  return result;
}

unint64_t sub_1BD50C0DC()
{
  result = qword_1EBD48F88;
  if (!qword_1EBD48F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F88);
  }

  return result;
}

unint64_t sub_1BD50C130()
{
  result = qword_1EBD48F90;
  if (!qword_1EBD48F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F98, &qword_1BE0DD8C8);
    sub_1BD50C1E8();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F90);
  }

  return result;
}

unint64_t sub_1BD50C1E8()
{
  result = qword_1EBD48FA0;
  if (!qword_1EBD48FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48FA8, &qword_1BE0DD8D0);
    sub_1BD0DE4F4(&qword_1EBD48FB0, &qword_1EBD48FB8, &qword_1BE0DD8D8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48FA0);
  }

  return result;
}

unint64_t sub_1BD50C2A0()
{
  result = qword_1EBD48FC0;
  if (!qword_1EBD48FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F00, &qword_1BE0DD7E0);
    sub_1BD0DE4F4(&qword_1EBD48F28, &qword_1EBD48EF8, &qword_1BE0DD7D8, MEMORY[0x1E6981870]);
    sub_1BD50BDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48FC0);
  }

  return result;
}

id sub_1BD50C364(uint64_t a1)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v35);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v30 = v35;
  if (v35 <= 1u)
  {
    if (!v35)
    {
      return v30;
    }

    (*(v2 + 104))(v13, *MEMORY[0x1E69B80E0], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v30 = sub_1BE04B6F4();
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v31 = *MEMORY[0x1E69B80E0];
  if (v35 == 2)
  {
    (*(v2 + 104))(v10, v31, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v30 = sub_1BE04B6F4();
      v13 = v10;
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v35 == 3)
  {
    (*(v2 + 104))(v7, v31, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v30 = sub_1BE04B6F4();
      v13 = v7;
LABEL_13:

      (*(v2 + 8))(v13, v1);
      return v30;
    }

    goto LABEL_16;
  }

  (*(v2 + 104))(v4, v31, v1);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v30 = sub_1BE04B6F4();
    v13 = v4;
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1BD50C6D8()
{
  result = qword_1EBD49018;
  if (!qword_1EBD49018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49010, &qword_1BE0DD978);
    sub_1BD2A275C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49018);
  }

  return result;
}

unint64_t sub_1BD50C7A8()
{
  result = qword_1EBD49030;
  if (!qword_1EBD49030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49020, &qword_1BE0DD980);
    sub_1BD50C840();
    sub_1BD50C9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49030);
  }

  return result;
}

unint64_t sub_1BD50C840()
{
  result = qword_1EBD49038;
  if (!qword_1EBD49038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49040, &qword_1BE0DD990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49048, &qword_1BE0DD998);
    sub_1BD50C908();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49038);
  }

  return result;
}

unint64_t sub_1BD50C908()
{
  result = qword_1EBD49050;
  if (!qword_1EBD49050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49048, &qword_1BE0DD998);
    sub_1BD2F17DC();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49050);
  }

  return result;
}

unint64_t sub_1BD50C9C0()
{
  result = qword_1EBD49058;
  if (!qword_1EBD49058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49060, &qword_1BE0DD9B0);
    sub_1BD50CA78();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49058);
  }

  return result;
}

unint64_t sub_1BD50CA78()
{
  result = qword_1EBD49068;
  if (!qword_1EBD49068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49070, &qword_1BE0DD9B8);
    sub_1BD50CB30();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49068);
  }

  return result;
}

unint64_t sub_1BD50CB30()
{
  result = qword_1EBD49078;
  if (!qword_1EBD49078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49080, &unk_1BE0DD9C0);
    sub_1BD50CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49078);
  }

  return result;
}

unint64_t sub_1BD50CBB4()
{
  result = qword_1EBD49088;
  if (!qword_1EBD49088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49090, &qword_1BE0EB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49088);
  }

  return result;
}

uint64_t sub_1BD50CC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD50CC84()
{
  result = qword_1EBD490B8;
  if (!qword_1EBD490B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490B8);
  }

  return result;
}

unint64_t sub_1BD50CCD8()
{
  result = qword_1EBD490C0;
  if (!qword_1EBD490C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD490B0, &unk_1BE0DDA10);
    sub_1BD50CC84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490C0);
  }

  return result;
}

unint64_t sub_1BD50CD9C()
{
  result = qword_1EBD490E0;
  if (!qword_1EBD490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490E0);
  }

  return result;
}

unint64_t sub_1BD50CE00()
{
  result = qword_1EBD490E8;
  if (!qword_1EBD490E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD490F0, &qword_1BE0DDA58);
    sub_1BD50CE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490E8);
  }

  return result;
}

unint64_t sub_1BD50CE84()
{
  result = qword_1EBD490F8;
  if (!qword_1EBD490F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F10, &qword_1BE0DD7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F00, &qword_1BE0DD7E0);
    sub_1BD50C2A0();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490F8);
  }

  return result;
}

unint64_t sub_1BD50CF94()
{
  result = qword_1EBD49118;
  if (!qword_1EBD49118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49110, &qword_1BE0DDAC0);
    sub_1BD50D020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49118);
  }

  return result;
}

unint64_t sub_1BD50D020()
{
  result = qword_1EBD49120;
  if (!qword_1EBD49120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49108, &qword_1BE0DDAB8);
    sub_1BD0DE4F4(&qword_1EBD49128, &qword_1EBD49100, &qword_1BE0DDAB0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49120);
  }

  return result;
}

uint64_t sub_1BD50D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = sub_1BE050354();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BE048964();
  v12 = sub_1BE0503B4();
  sub_1BD3FA0F4(v10);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v15 = sub_1BE0501D4();
  v16 = v18[1];
  *(a4 + 40) = v18[0];
  *a4 = a1;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = v12;
  *(a4 + 24) = v14;
  *(a4 + 32) = a2;
  *(a4 + 56) = v16;
  *(a4 + 72) = v18[2];
  *(a4 + 88) = a3;
  *(a4 + 96) = v15;
  *(a4 + 97) = 256;
  return sub_1BE048964();
}

uint64_t sub_1BD50D260(uint64_t a1)
{
  v1 = sub_1BE051424();
  v2 = sub_1BE051304();
  result = sub_1BE051574();
  qword_1EBDAB200 = result;
  *algn_1EBDAB208 = v1;
  qword_1EBDAB210 = v2;
  return result;
}

uint64_t sub_1BD50D2BC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      sub_1BE051424();
      sub_1BE051314();
      return sub_1BE051574();
    }

    if (a2 == 3)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_1BE051424();
      sub_1BE051304();
      return sub_1BE051574();
    }

LABEL_10:
    v8 = a3;
    sub_1BD35D778(a1, a2, a3, a4, a5, a6, a7, a8);
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    if (a3)
    {
      sub_1BE051424();
      sub_1BE0512E4();
      return sub_1BE051574();
    }

LABEL_15:
    sub_1BE0513C4();
    sub_1BE0512C4();
    return sub_1BE051574();
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1BE051424();
  sub_1BE0512F4();
  return sub_1BE051574();
}

uint64_t sub_1BD50D434(void *a1)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  v9 = *MEMORY[0x1E695C400];
  v10 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v11 = a1;
  *(v8 + 32) = [v10 initWithString_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750, &unk_1BE0FF5C0);
  v12 = sub_1BE052724();
  v8, v13, v14, v15, v16, v17, v18, v19;
  LODWORD(v8) = [v11 areKeysAvailable_];

  if (!v8 || (v20 = [v11 thumbnailImageData]) == 0)
  {
LABEL_9:
    v39 = sub_1BE051574();
    sub_1BE051424();
    sub_1BE0513C4();

    return v39;
  }

  v21 = v20;
  v22 = sub_1BE04AAC4();
  v24 = v23;

  v25 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v26 = sub_1BE04AAB4();
  v27 = [v25 initWithData_];

  if (!v27 || (v34 = [v27 CGImage], v27, !v34))
  {
    sub_1BD1245AC(v22, v24, v28, v29, v30, v31, v32, v33);
    goto LABEL_9;
  }

  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 mainScreen];
  [v37 scale];

  v38 = sub_1BE051564();
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v7);
  v39 = sub_1BE0515E4();
  v38, v40, v41, v42, v43, v44, v45, v46;
  (*(v3 + 8))(v6, v7);
  sub_1BE051404();
  sub_1BE051404();
  sub_1BD1245AC(v22, v24, v47, v48, v49, v50, v51, v52);

  return v39;
}

unint64_t sub_1BD50D798()
{
  result = qword_1EBD49138;
  if (!qword_1EBD49138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49140, &qword_1BE0DDBB8);
    sub_1BD4B75D0();
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0, &qword_1BE1001E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49138);
  }

  return result;
}

uint64_t sub_1BD50D88C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_1BE050014();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E0, &qword_1BE0DDD78);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8, &qword_1BE0DDD80);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v20 = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540, &unk_1BE0DC3A0);
  sub_1BD50EB10(&qword_1EBD40550, &qword_1EBD40540, &unk_1BE0DC3A0, sub_1BD2A275C);
  sub_1BE051704();
  v10 = sub_1BE0511D4();
  KeyPath = swift_getKeyPath();
  v12 = &v7[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_1BE050004();
  sub_1BD50EBC4();
  sub_1BD50ECA8(&qword_1EBD366F0, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v13 = v18;
  sub_1BE050894();
  (*(v2 + 8))(v4, v13);
  sub_1BD0DE53C(v7, &qword_1EBD491E0, &qword_1BE0DDD78);
  v14 = &v9[*(v17 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49208, &qword_1BE0DDDC0);
  sub_1BE04EE74();
  *v14 = swift_getKeyPath();
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49210, &qword_1BE0DDDF8);
  sub_1BD50ECF0();
  sub_1BD50EE34();
  sub_1BE0510C4();
  return sub_1BD082A70(v9);
}

uint64_t sub_1BD50DBE8(void *a1)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BE051424();
  v9 = sub_1BE050564();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v8, v10, v12, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v1, v3, (v5 & 1), v20, v21, v22, v23, v24);
  v7, v25, v26, v27, v28, v29, v30, v31;
  v32 = sub_1BE0505F4();
  v34 = v33;
  LOBYTE(v3) = v35;
  v37 = v36;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v36, v38, v39, v40, v41);
  v15, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE050384();
  v49 = sub_1BE050544();
  v51 = v50;
  LOBYTE(v8) = v52;
  v54 = v53;
  sub_1BD0DDF10(v32, v34, (v3 & 1), v53, v55, v56, v57, v58);
  v37, v59, v60, v61, v62, v63, v64, v65;
  *&v76 = v49;
  *(&v76 + 1) = v51;
  LOBYTE(v77) = v8 & 1;
  *(&v77 + 1) = v54;
  v78[0] = sub_1BE0501D4();
  *&v78[8] = xmmword_1BE0DDBC0;
  *&v78[24] = xmmword_1BE0DDBC0;
  v78[40] = 0;
  sub_1BE052434();
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
  sub_1BD2A275C();
  sub_1BE050DE4();
  v67, v68, v69, v70, v71, v72, v73, v74;
  v79[1] = v77;
  v79[2] = *v78;
  v80[0] = *&v78[16];
  *(v80 + 9) = *&v78[25];
  v79[0] = v76;
  return sub_1BD0DE53C(v79, &unk_1EBD3DF90, &qword_1BE0C2E90);
}

__n128 sub_1BD50DE10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD082AD8(a1, a2);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49210, &qword_1BE0DDDF8) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

id sub_1BD50DF04@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3, v5);
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v4 + 8))(v7, v3);
    result = sub_1BE0502A4();
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
    a1[4] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD50E060()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BE048964();
  sub_1BD50E160(v2, v3, v4);
  v36 = v5;
  v37 = sub_1BE0502A4();
  sub_1BE052434();
  v7 = v6;
  sub_1BD50EA88();
  sub_1BE050DE4();
  v37, v8, v9, v10, v11, v12, v13, v14;
  v36, v15, v16, v17, v18, v19, v20, v21;
  v1, v22, v23, v24, v25, v26, v27, v28;
  v7, v29, v30, v31, v32, v33, v34, v35;
}

id sub_1BD50E160(uint64_t a1, int a2, uint64_t a3)
{
  v76 = a3;
  v75 = a2;
  v4 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74[-v30];
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v32);
  v41 = &v74[-v40];
  if (v42)
  {
    v43 = v76;
LABEL_40:
    sub_1BE048C84();
    return v43;
  }

  v44 = *(v37 + 104);
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      v56 = v33;
      if (a1 == 5)
      {
        v58 = v37;
        (v44)(v13, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v59 = result;
          v43 = sub_1BE04B6F4();

          (*(v58 + 8))(v13, v56);
          goto LABEL_40;
        }
      }

      else
      {
        v50 = v37;
        v51 = v33;
        v28 = v36;
        (v44)(v36, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v52 = result;
          goto LABEL_38;
        }

        __break(1u);
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (a1 == 7)
    {
      v63 = v37;
      v64 = v33;
      (v44)(v10, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v65 = result;
        v43 = sub_1BE04B6F4();

        (*(v63 + 8))(v10, v64);
        goto LABEL_40;
      }

      goto LABEL_48;
    }

    v49 = v33;
    if (a1 == 8)
    {
      v50 = v37;
      v51 = v33;
      v28 = v34;
      (v44)(v34, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v52 = result;
    }

    else
    {
      if (a1 != 9)
      {
LABEL_36:
        v50 = v37;
        v51 = v49;
        v28 = v38;
        v44(v38, *MEMORY[0x1E69B8068], v51, v39);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v52 = result;
        goto LABEL_38;
      }

      v50 = v37;
      v51 = v33;
      v28 = v35;
      (v44)(v35, *MEMORY[0x1E69B80E0], v33, v39.n128_f64[0]);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v52 = result;
    }

LABEL_38:
    v43 = sub_1BE04B6F4();

    (*(v50 + 8))(v28, v51);
    goto LABEL_40;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v45 = v33;
      if (a1 == 3)
      {
        v66 = v37;
        (v44)(v19, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v67 = result;
          v43 = sub_1BE04B6F4();

          (*(v66 + 8))(v19, v45);
          goto LABEL_40;
        }

        goto LABEL_51;
      }

      v46 = v37;
      (v44)(v16, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v48 = result;
        v43 = sub_1BE04B6F4();

        (*(v46 + 8))(v16, v45);
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v60 = v37;
    v61 = v33;
    (v44)(v22, *MEMORY[0x1E69B8068], v33, v39.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v62 = result;
      v43 = sub_1BE04B6F4();

      (*(v60 + 8))(v22, v61);
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  if (a1)
  {
    v49 = v33;
    if (a1 == 1)
    {
      v53 = v37;
      v54 = *MEMORY[0x1E69B8068];
      if ((v75 & 1) == 0)
      {
        v68 = v33;
        (v44)(v31, v54, v33, v39.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v69 = result;
          v70 = sub_1BE04B6F4();

          v71 = v31;
          v43 = v70;
          (*(v53 + 8))(v71, v68);
          goto LABEL_40;
        }

        goto LABEL_56;
      }

      (v44)(v41, v54, v33, v39.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v55 = result;
        v43 = sub_1BE04B6F4();

        (*(v53 + 8))(v41, v49);
        goto LABEL_40;
      }

      goto LABEL_54;
    }

    goto LABEL_36;
  }

  v50 = v37;
  v57 = *MEMORY[0x1E69B8068];
  if (v75)
  {
    v51 = v33;
    (v44)(v28, v57, v33, v39.n128_f64[0]);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v52 = result;
    goto LABEL_38;
  }

  v72 = v33;
  (v44)(v25, v57, v33, v39.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v73 = result;
    v43 = sub_1BE04B6F4();

    (*(v50 + 8))(v25, v72);
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1BD50EA88()
{
  result = qword_1EBD365B0;
  if (!qword_1EBD365B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365B0);
  }

  return result;
}

uint64_t sub_1BD50EB10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD50ECA8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD50EBC4()
{
  result = qword_1EBD491F0;
  if (!qword_1EBD491F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E0, &qword_1BE0DDD78);
    sub_1BD0DE4F4(&qword_1EBD491F8, &qword_1EBD49200, &qword_1BE0DDDB8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD491F0);
  }

  return result;
}

uint64_t sub_1BD50ECA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD50ECF0()
{
  result = qword_1EBD49218;
  if (!qword_1EBD49218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E8, &qword_1BE0DDD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E0, &qword_1BE0DDD78);
    sub_1BE050014();
    sub_1BD50EBC4();
    sub_1BD50ECA8(&qword_1EBD366F0, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E8, &qword_1EBD49208, &qword_1BE0DDDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49218);
  }

  return result;
}

unint64_t sub_1BD50EE34()
{
  result = qword_1EBD49220;
  if (!qword_1EBD49220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49210, &qword_1BE0DDDF8);
    sub_1BD50ECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49220);
  }

  return result;
}

Swift::Void __swiftcall VFXNode.restart()()
{
  v1 = [v0 particleEmitter];
  [v1 killParticles];

  v2 = [v0 particleEmitter];
  [v2 restart];
}

void VFXNode.setBehaviorGraphValue(key:value:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [v2 behaviorGraph];
  if (v5)
  {
    v6 = v5;
    v34 = v4;
    NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
    v8 = v7;
    sub_1BD1C4810(a2, v32);
    v9 = v33;
    if (v33)
    {
      v10 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v11 = *(v9 - 8);
      v12 = MEMORY[0x1EEE9AC00](v10);
      v14 = &v32[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = sub_1BE053B74();
      (*(v11 + 8))(v14, v9);
      __swift_destroy_boxed_opaque_existential_0(v32, v16, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      v15 = 0;
    }

    v23 = sub_1BE052404();
    v8, v24, v25, v26, v27, v28, v29, v30;
    [v6 setObject:v15 forKeyedSubscript:v23];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD50F0F4()
{
  v0 = sub_1BD1AB78C(&unk_1F3B8D190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49250, &qword_1BE0DE1E8);
  result = swift_arrayDestroy();
  qword_1EBDAB218 = v0;
  return result;
}

uint64_t sub_1BD50F150()
{
  v0 = sub_1BD1AD164(&unk_1F3B8D350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49238, &qword_1BE0DE1D8);
  result = swift_arrayDestroy();
  qword_1EBDAB220 = v0;
  return result;
}

PassKitUI::NearbyPeerPaymentVFXUtilities::BehaviorGraph_optional __swiftcall NearbyPeerPaymentVFXUtilities.BehaviorGraph.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_1BE053BC4();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 0;
  v14 = 41;
  switch(v4)
  {
    case 0:
      goto LABEL_55;
    case 1:
      v13 = 1;
      goto LABEL_55;
    case 2:
      v13 = 2;
      goto LABEL_55;
    case 3:
      v13 = 3;
      goto LABEL_55;
    case 4:
      v13 = 4;
      goto LABEL_55;
    case 5:
      v13 = 5;
      goto LABEL_55;
    case 6:
      v13 = 6;
      goto LABEL_55;
    case 7:
      v13 = 7;
      goto LABEL_55;
    case 8:
      v13 = 8;
      goto LABEL_55;
    case 9:
      v13 = 9;
      goto LABEL_55;
    case 10:
      v13 = 10;
      goto LABEL_55;
    case 11:
      v13 = 11;
      goto LABEL_55;
    case 12:
      v13 = 12;
      goto LABEL_55;
    case 13:
      v13 = 13;
      goto LABEL_55;
    case 14:
      v13 = 14;
      goto LABEL_55;
    case 15:
      v13 = 15;
      goto LABEL_55;
    case 16:
      v13 = 16;
      goto LABEL_55;
    case 17:
      v13 = 17;
      goto LABEL_55;
    case 18:
      v13 = 18;
      goto LABEL_55;
    case 19:
      v13 = 19;
      goto LABEL_55;
    case 20:
      v13 = 20;
      goto LABEL_55;
    case 21:
      v13 = 21;
      goto LABEL_55;
    case 22:
      v13 = 22;
      goto LABEL_55;
    case 23:
      v13 = 23;
      goto LABEL_55;
    case 24:
      v13 = 24;
      goto LABEL_55;
    case 25:
      v13 = 25;
      goto LABEL_55;
    case 26:
      v13 = 26;
      goto LABEL_55;
    case 27:
      v13 = 27;
      goto LABEL_55;
    case 28:
      v13 = 28;
      goto LABEL_55;
    case 29:
      v13 = 29;
      goto LABEL_55;
    case 30:
      v13 = 30;
      goto LABEL_55;
    case 31:
      v13 = 31;
      goto LABEL_55;
    case 32:
      v13 = 32;
      goto LABEL_55;
    case 33:
      v13 = 33;
      goto LABEL_55;
    case 34:
      v13 = 34;
      goto LABEL_55;
    case 35:
      v13 = 35;
      goto LABEL_55;
    case 36:
      v13 = 36;
      goto LABEL_55;
    case 37:
      v13 = 37;
      goto LABEL_55;
    case 38:
      v13 = 38;
      goto LABEL_55;
    case 39:
      v13 = 39;
      goto LABEL_55;
    case 40:
      v13 = 40;
LABEL_55:
      v14 = v13;
      break;
    case 41:
      break;
    case 42:
      v14 = 42;
      break;
    case 43:
      v14 = 43;
      break;
    case 44:
      v14 = 44;
      break;
    case 45:
      v14 = 45;
      break;
    case 46:
      v14 = 46;
      break;
    case 47:
      v14 = 47;
      break;
    case 48:
      v14 = 48;
      break;
    case 49:
      v14 = 49;
      break;
    case 50:
      v14 = 50;
      break;
    case 51:
      v14 = 51;
      break;
    case 52:
      v14 = 52;
      break;
    case 53:
      v14 = 53;
      break;
    case 54:
      v14 = 54;
      break;
    case 55:
      v14 = 55;
      break;
    case 56:
      v14 = 56;
      break;
    case 57:
      v14 = 57;
      break;
    case 58:
      v14 = 58;
      break;
    default:
      v14 = 59;
      break;
  }

  *v3 = v14;
  return result;
}

unint64_t NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter()
{
  result = 0x7974696361706FLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265764F65746172;
      break;
    case 3:
      result = 0x706D755074786574;
      break;
    case 4:
      result = 0x43724F64756F6C63;
      break;
    case 5:
      result = 0x6F69746365726964;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0xD000000000000027;
      break;
    case 9:
      result = 0x69646152676E6972;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0x656D6954676E6972;
      break;
    case 0xC:
      result = 0x72617453676E6972;
      break;
    case 0xD:
    case 0x1C:
    case 0x24:
    case 0x2F:
    case 0x35:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x6C6C6946676E6972;
      break;
    case 0xF:
      result = 0x706147637261;
      break;
    case 0x10:
      result = 0x676E6152657A6973;
      break;
    case 0x11:
      result = 0x656C616373;
      break;
    case 0x12:
      result = 0x5772657474696D65;
      break;
    case 0x13:
      result = 0x6465657073;
      break;
    case 0x14:
      result = 0x6E6F697469736F70;
      break;
    case 0x15:
      result = 0x7461526874646977;
      break;
    case 0x16:
      result = 0x6874676E65727473;
      break;
    case 0x17:
      result = 0x6C6F526863746970;
      break;
    case 0x18:
      result = 0x676E69646E756F62;
      break;
    case 0x19:
      result = 0x676E697472617473;
      break;
    case 0x1A:
      result = 0x61704F6C65646F6DLL;
      break;
    case 0x1B:
      result = 0xD000000000000016;
      break;
    case 0x1D:
    case 0x27:
    case 0x28:
    case 0x32:
      result = 0xD000000000000014;
      break;
    case 0x1E:
    case 0x22:
      result = 0xD000000000000015;
      break;
    case 0x1F:
      result = 0xD000000000000017;
      break;
    case 0x20:
      result = 0x6163537469676964;
      break;
    case 0x21:
      result = 0xD000000000000017;
      break;
    case 0x23:
    case 0x33:
      result = 0xD000000000000018;
      break;
    case 0x25:
      result = 0xD000000000000017;
      break;
    case 0x26:
    case 0x2B:
    case 0x3A:
      result = 0xD000000000000010;
      break;
    case 0x29:
      result = 0xD000000000000017;
      break;
    case 0x2A:
      result = 0xD000000000000017;
      break;
    case 0x2C:
      result = 0x6163536573696F6ELL;
      break;
    case 0x2D:
      result = 0x6163536573696F6ELL;
      break;
    case 0x2E:
      result = 0x6163536573696F6ELL;
      break;
    case 0x30:
    case 0x31:
      result = 0x726566736E617274;
      break;
    case 0x34:
      result = 0x6F6D416B63656863;
      break;
    case 0x36:
      result = 0xD000000000000011;
      break;
    case 0x37:
      result = 0x696C47746867696CLL;
      break;
    case 0x38:
      result = 0xD000000000000013;
      break;
    case 0x39:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t sub_1BD50FA8C@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PassKitUI::NearbyPeerPaymentVFXUtilities::Node_optional __swiftcall NearbyPeerPaymentVFXUtilities.Node.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_1BE053A44();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 15;
  if (v4 < 0xF)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

unint64_t NearbyPeerPaymentVFXUtilities.Node.rawValue.getter()
{
  result = 0x746E6569626D61;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x646E694265646F6ELL;
      break;
    case 4:
      result = 0x676E695265756C62;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x47676E69736C7570;
      break;
    case 7:
      result = 0x6172656D6163;
      break;
    case 8:
      result = 0x6F6F527469676964;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0x6C65646F6DLL;
      break;
    case 0xC:
      result = 0x5472657472617473;
      break;
    case 0xD:
      result = 0x7461706973736964;
      break;
    case 0xE:
      result = 0x726566736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD50FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  v9 = a5();
  v17 = v10;
  if (v6 == v9 && v8 == v10)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1BE053B84();
  }

  v8, v10, v11, v12, v13, v14, v15, v16;
  v17, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_1BD50FDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1BE053D04();
  a3(v4);
  v6 = v5;
  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1BE053D64();
}

void sub_1BD50FE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  v5 = v4;
  sub_1BE052524();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BD50FEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_1BE053D04();
  a4(v5);
  v7 = v6;
  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1BE053D64();
}

unint64_t sub_1BD50FF28@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyPeerPaymentVFXUtilities.Node.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1BD50FF54(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v246 = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = sub_1BE052404();
  v8 = [v6 initWithString_];

  Frame = [v8 length];
  v10 = sub_1BE052534();
  v11 = 100.0;
  v12 = 120.0;
  if (v10 < 4)
  {
    v12 = 154.0;
  }

  if (v10 <= 5)
  {
    v11 = v12;
  }

  if (v10 <= 7)
  {
    width = v11;
  }

  else
  {
    width = 80.0;
  }

  v14 = [objc_opt_self() chiseledCashFontDescriptor];
  if (!v14)
  {
    goto LABEL_128;
  }

  v15 = v14;
  v16 = CTFontCreateWithFontDescriptor(v14, width, 0);

  LOBYTE(v241) = 2;
  v245.spec = kCTParagraphStyleSpecifierAlignment;
  v245.valueSize = 1;
  v245.value = &v241;
  v17 = CTParagraphStyleCreate(&v245, 1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49240, &qword_1BE0DE1E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B6CA0;
  v19 = *MEMORY[0x1E6965658];
  type metadata accessor for CFString(0);
  v21 = v20;
  *(v18 + 56) = v20;
  *(v18 + 32) = v19;
  type metadata accessor for CTFont(0);
  *(v18 + 64) = v16;
  v22 = *MEMORY[0x1E6965A30];
  *(v18 + 120) = v21;
  *(v18 + 88) = v23;
  *(v18 + 96) = v22;
  type metadata accessor for CTParagraphStyle(0);
  *(v18 + 152) = v24;
  *(v18 + 128) = v17;
  sub_1BD0E5E8C(0, &qword_1EBD49248, 0x1E695DF20);
  v25 = v19;
  v26 = v16;
  v27 = v22;
  v28 = v17;
  v29 = sub_1BE052BC4();
  v30 = v8;
  attrString = CFAttributedStringCreate(*MEMORY[0x1E695E480], v8, v29);
  if (!attrString)
  {

    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v233 = v26;
  if ((Frame & 0x8000000000000000) != 0)
  {
    goto LABEL_123;
  }

  v231 = v29;
  v232 = v28;
  if (Frame)
  {
    v8 = sub_1BE0527B4();
    *(v8 + 16) = Frame;
    v31 = (v8 + 32);
    bzero((v8 + 32), 2 * Frame);
    [v30 getCharacters_];
    v29 = sub_1BE0527B4();
    *(v29 + 16) = Frame;
    bzero((v29 + 32), 2 * Frame);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v31 = (MEMORY[0x1E69E7CC0] + 32);
    [v8 getCharacters_];
    v8 = v29;
  }

  v32 = v233;
  sub_1BE048C84();
  CTFontGetGlyphsForCharacters(v233, v31, (v29 + 32), Frame);
  v8, v33, v34, v35, v36, v37, v38, v39;
  if (Frame >> 58)
  {
    goto LABEL_124;
  }

  v230 = v8;
  v229 = v29;
  v237 = swift_slowAlloc();
  CTFontGetBoundingRectsForGlyphs(v233, kCTFontOrientationDefault, (v29 + 32), v237, Frame);
  v8 = CTFramesetterCreateWithAttributedString(attrString);
  fitRange.location = 0;
  fitRange.length = 0;
  v250.width = 1.79769313e308;
  v247.location = 0;
  v247.length = 0;
  v250.height = 1.79769313e308;
  v40 = CTFramesetterSuggestFrameSizeWithConstraints(v8, v247, 0, v250, &fitRange);
  width = v40.width;
  height = v40.height;
  v251.origin.x = 0.0;
  v251.origin.y = 0.0;
  v251.size.width = v40.width;
  v251.size.height = v40.height;
  v41 = CGPathCreateWithRect(v251, 0);
  v248.location = 0;
  v248.length = 0;
  Frame = CTFramesetterCreateFrame(v8, v248, v41, 0);
  v42 = CTFrameGetLines(Frame);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_48:
    v230, v83, v84, v85, v86, v87, v88, v89;
    v229, v90, v91, v92, v93, v94, v95, v96;

    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    MEMORY[0x1BFB45F20](v237, -1, -1);

    goto LABEL_112;
  }

  v228 = v41;
  v241 = 0;
  type metadata accessor for CTLine(0);
  sub_1BE052734();

  v29 = v241;
  if (!v241)
  {
    v42 = v8;
    v8 = v41;
    goto LABEL_48;
  }

  *&v238 = a1;
  *&v239 = a2;
  a1 = v241 & 0xFFFFFFFFFFFFFF8;
  if (v241 >> 62)
  {
    goto LABEL_125;
  }

  for (i = *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    if ((i - 0x800000000000000) >> 60 != 15)
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
    }

    v226 = v8;
    v227 = v30;
    v44 = swift_slowAlloc();
    v225 = Frame;
    v249.location = 0;
    v249.length = 0;
    v236 = v44;
    CTFrameGetLineOrigins(Frame, v249, v44);
    if (i < 0)
    {
      goto LABEL_127;
    }

    if (i)
    {
      Frame = 0;
      v30 = (v29 & 0xC000000000000001);
      do
      {
        if (v30)
        {
          v52 = MEMORY[0x1BFB40900](Frame, v29);
        }

        else
        {
          if (Frame >= *(a1 + 16))
          {
            goto LABEL_122;
          }

          v52 = *(v29 + 32 + 8 * Frame);
        }

        v53 = v52;
        StringRange = CTLineGetStringRange(v52);
        length = StringRange.length;
        v56 = StringRange.location + StringRange.length;
        if (__OFADD__(StringRange.location, StringRange.length))
        {
          goto LABEL_115;
        }

        location = StringRange.location;
        if (v56 < StringRange.location)
        {
          goto LABEL_116;
        }

        if (StringRange.location != v56)
        {
          if (StringRange.location >= v56)
          {
            goto LABEL_121;
          }

          p_x = &v236[Frame].x;
          v60 = *p_x;
          v59 = p_x[1];
          v8 = &v237[StringRange.location];
          do
          {
            v61 = location + 1;
            v62 = v60 + CTLineGetOffsetForStringIndex(v53, location, 0);
            v252 = CGRectOffset(*v8, v62, v59);
            *v8 = v252.origin.x;
            *(v8 + 8) = v252.origin.y;
            v8 += 32;
            location = v61;
            --length;
          }

          while (length);
        }

        ++Frame;
      }

      while (Frame != i);
    }

    v29, v45, v46, v47, v48, v49, v50, v51;
    v63 = BYTE7(v239) & 0xF;
    v241 = v238;
    v242 = v239;
    if ((v239 & 0x2000000000000000) == 0)
    {
      v63 = v238 & 0xFFFFFFFFFFFFLL;
    }

    v243 = 0;
    v244 = v63;
    sub_1BE048C84();
    v64 = sub_1BE052594();
    if (v65)
    {
      v72 = v64;
      v73 = v65;
      v74 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1BD03B038(0, *(v74 + 2) + 1, 1, v74, v75, v76, v77, v78);
        }

        v80 = *(v74 + 2);
        v79 = *(v74 + 3);
        if (v80 >= v79 >> 1)
        {
          v74 = sub_1BD03B038((v79 > 1), v80 + 1, 1, v74, v75, v76, v77, v78);
        }

        *(v74 + 2) = v80 + 1;
        v81 = &v74[16 * v80];
        *(v81 + 4) = v72;
        *(v81 + 5) = v73;
        v72 = sub_1BE052594();
        v73 = v82;
      }

      while (v82);
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }

    v242, 0, v66, v67, v68, v69, v70, v71;
    v30 = *(v74 + 2);
    if (!v30)
    {
      break;
    }

    v8 = 0;
    Frame = (v74 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v74 + 2))
    {
      a1 = *(Frame - 8);
      v104 = *Frame;
      v105 = &v237[v8];
      v238 = v105[1];
      v239 = *v105;
      sub_1BE048C84();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1BD1D7F34(0, *(v29 + 16) + 1, 1, v29, v100, v101, v102, v103);
      }

      v107 = *(v29 + 16);
      v106 = *(v29 + 24);
      if (v107 >= v106 >> 1)
      {
        v29 = sub_1BD1D7F34((v106 > 1), v107 + 1, 1, v29, v100, v101, v102, v103);
      }

      ++v8;
      *(v29 + 16) = v107 + 1;
      v108 = v29 + 48 * v107;
      *(v108 + 32) = a1;
      *(v108 + 40) = v104;
      *(v108 + 48) = v239;
      *(v108 + 64) = v238;
      Frame += 16;
      if (v30 == v8)
      {
        goto LABEL_60;
      }
    }

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
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    ;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v74, v97, v98, v99, v100, v101, v102, v103;
  v116 = *(v29 + 16);
  if (v116)
  {
    v30 = 0;
    v117 = v29 + 72;
    v118 = MEMORY[0x1E69E7CC0];
    while (v30 < *(v29 + 16))
    {
      MinX = CGRectGetMinX(*(v117 - 24));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_1BD1D7E30(0, *(v118 + 2) + 1, 1, v118, v120, v121, v122, v123);
      }

      v8 = *(v118 + 2);
      v124 = *(v118 + 3);
      if (v8 >= v124 >> 1)
      {
        v118 = sub_1BD1D7E30((v124 > 1), v8 + 1, 1, v118, v120, v121, v122, v123);
      }

      ++v30;
      *(v118 + 2) = v8 + 1;
      *&v118[8 * v8 + 32] = MinX;
      v117 += 48;
      if (v116 == v30)
      {
        v30 = 0;
        v125 = v29 + 72;
        v8 = MEMORY[0x1E69E7CC0];
        while (v30 < *(v29 + 16))
        {
          MaxX = CGRectGetMaxX(*(v125 - 24));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1BD1D7E30(0, *(v8 + 16) + 1, 1, v8, v127, v128, v129, v130);
          }

          Frame = *(v8 + 16);
          v131 = *(v8 + 24);
          if (Frame >= v131 >> 1)
          {
            v8 = sub_1BD1D7E30((v131 > 1), Frame + 1, 1, v8, v127, v128, v129, v130);
          }

          ++v30;
          *(v8 + 16) = Frame + 1;
          *(v8 + 8 * Frame + 32) = MaxX;
          v125 += 48;
          if (v116 == v30)
          {
            v30 = 0;
            v132 = v29 + 72;
            Frame = MEMORY[0x1E69E7CC0];
            while (v30 < *(v29 + 16))
            {
              MinY = CGRectGetMinY(*(v132 - 24));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                Frame = sub_1BD1D7E30(0, *(Frame + 16) + 1, 1, Frame, v134, v135, v136, v137);
              }

              v139 = *(Frame + 16);
              v138 = *(Frame + 24);
              if (v139 >= v138 >> 1)
              {
                Frame = sub_1BD1D7E30((v138 > 1), v139 + 1, 1, Frame, v134, v135, v136, v137);
              }

              ++v30;
              *(Frame + 16) = v139 + 1;
              *(Frame + 8 * v139 + 32) = MinY;
              v132 += 48;
              if (v116 == v30)
              {
                v30 = 0;
                a1 = v29 + 72;
                v140 = MEMORY[0x1E69E7CC0];
                while (v30 < *(v29 + 16))
                {
                  MaxY = CGRectGetMaxY(*(a1 - 24));
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v140 = sub_1BD1D7E30(0, *(v140 + 2) + 1, 1, v140, v112, v113, v114, v115);
                  }

                  v143 = *(v140 + 2);
                  v142 = *(v140 + 3);
                  if (v143 >= v142 >> 1)
                  {
                    v140 = sub_1BD1D7E30((v142 > 1), v143 + 1, 1, v140, v112, v113, v114, v115);
                  }

                  ++v30;
                  *(v140 + 2) = v143 + 1;
                  *&v140[8 * v143 + 32] = MaxY;
                  a1 += 48;
                  if (v116 == v30)
                  {
                    goto LABEL_91;
                  }
                }

                goto LABEL_120;
              }
            }

            goto LABEL_119;
          }
        }

        goto LABEL_118;
      }
    }

    goto LABEL_117;
  }

  Frame = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v140 = MEMORY[0x1E69E7CC0];
LABEL_91:
  v230, v109, v110, v111, v112, v113, v114, v115;
  v229, v144, v145, v146, v147, v148, v149, v150;
  v151 = COERCE_DOUBLE(sub_1BD5DD054(v8));
  v153 = v152;
  v8, v152, v154, v155, v156, v157, v158, v159;
  if (v153)
  {
    v140, v160, v161, v162, v163, v164, v165, v166;
    Frame, v167, v168, v169, v170, v171, v172, v173;
    v181 = v118;
    goto LABEL_109;
  }

  v182 = *(v118 + 2);
  if (!v182)
  {
    v118, v160, v161, v162, v163, v164, v165, v166;
    v140, v204, v205, v206, v207, v208, v209, v210;
    goto LABEL_108;
  }

  v183 = *(v118 + 4);
  v184 = v182 - 1;
  if (v184)
  {
    v185 = (v118 + 40);
    do
    {
      v186 = *v185++;
      v187 = v186;
      if (v186 < v183)
      {
        v183 = v187;
      }

      --v184;
    }

    while (v184);
  }

  v118, v160, v161, v162, v163, v164, v165, v166;
  v188 = COERCE_DOUBLE(sub_1BD5DD054(v140));
  v190 = v189;
  v140, v189, v191, v192, v193, v194, v195, v196;
  if (v190)
  {
LABEL_108:
    v181 = Frame;
LABEL_109:
    v181, v174, v175, v176, v177, v178, v179, v180;
    v29, v211, v212, v213, v214, v215, v216, v217;
    v30 = v227;
    v32 = v233;
    goto LABEL_110;
  }

  v197 = *(Frame + 16);
  v30 = v227;
  v32 = v233;
  if (!v197)
  {
    Frame, v174, v175, v176, v177, v178, v179, v180;
    v29, v218, v219, v220, v221, v222, v223, v224;
LABEL_110:
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    MEMORY[0x1BFB45F20](v236, -1, -1);

    goto LABEL_111;
  }

  v198 = *(Frame + 32);
  v199 = v197 - 1;
  if (v199)
  {
    v200 = (Frame + 40);
    do
    {
      v201 = *v200++;
      v202 = v201;
      if (v201 < v198)
      {
        v198 = v202;
      }

      --v199;
    }

    while (v199);
  }

  Frame, v174, v175, v176, v177, v178, v179, v180;
  *a3 = v183;
  *(a3 + 8) = v198;
  *(a3 + 16) = v151 - v183;
  *(a3 + 24) = v188 - v198;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = width;
  *(a3 + 56) = height;
  *(a3 + 64) = v29;
  *(a3 + 72) = v225;
  v203 = v225;
  MEMORY[0x1BFB45F20](v236, -1, -1);

LABEL_111:
  MEMORY[0x1BFB45F20](v237, -1, -1);

LABEL_112:
}

uint64_t sub_1BD510BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v18 - v9);
  v12 = *(a1 + 16);
  if (v12)
  {
    v19 = v8;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    result = sub_1BD0E5D5C(v13, &v18 - v9);
    if (v12 == 1)
    {
LABEL_3:
      sub_1BD0E5DC0(v11, a2);
      return (*(v19 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_1BD0E5D5C(v13 + *(v19 + 72) * v16, v6);
        if (*v6 >= *v11)
        {
          result = sub_1BD0E5E24(v6);
        }

        else
        {
          sub_1BD0E5E24(v11);
          result = sub_1BD0E5DC0(v6, v11);
        }

        ++v16;
        if (v17 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v15 = *(v8 + 56);

    return v15(a2, 1, 1, v4, v10);
  }

  return result;
}

void static NearbyPeerPaymentVFXUtilities.updateCharacterPlacement(formattedAmount:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BD50FF54(a1, a2, v89);
  v4 = v91;
  if (!v91)
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v69 = v91;
  v5 = *v89;
  v6 = *&v89[1];
  v7 = *&v89[2];
  v8 = *&v89[3];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v86 = CGRectGetWidth(v90);
  v92.origin.x = v5;
  v92.origin.y = v6;
  v92.size.width = v7;
  v92.size.height = v8;
  v87 = v86 - CGRectGetWidth(v92);
  v67 = y;
  v68 = x;
  v93.origin.x = x;
  v93.origin.y = y;
  v65 = height;
  v66 = width;
  v93.size.width = width;
  v93.size.height = height;
  v13 = CGRectGetHeight(v93);
  v94.origin.x = v5;
  v94.origin.y = v6;
  v94.size.width = v7;
  v94.size.height = v8;
  v85 = (v13 - CGRectGetHeight(v94)) * 0.5;
  v88 = v87 * 0.5;
  v18 = *(v4 + 2);
  if (v18)
  {
    sub_1BE048C84();
    v19 = v4 + 9;
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *(v19 - 1);
      v24 = *v19;
      v95.origin.x = v5;
      v95.origin.y = v6;
      v95.size.width = v7;
      v95.size.height = v8;
      v83 = CGRectGetWidth(v95);
      v96.origin.x = v5;
      v96.origin.y = v6;
      v96.size.width = v7;
      v96.size.height = v8;
      v81 = CGRectGetHeight(v96);
      v97.origin.x = v21;
      v97.origin.y = v22;
      v97.size.width = v23;
      v97.size.height = v24;
      v79 = CGRectGetWidth(v97);
      v98.origin.x = v5;
      v98.origin.y = v6;
      v98.size.width = v7;
      v98.size.height = v8;
      v77 = CGRectGetWidth(v98);
      v99.origin.x = v21;
      v99.origin.y = v22;
      v99.size.width = v23;
      v99.size.height = v24;
      v73 = CGRectGetHeight(v99);
      v100.origin.x = v5;
      v100.origin.y = v6;
      v100.size.width = v7;
      v100.size.height = v8;
      v75 = CGRectGetHeight(v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BD1D8054(0, *(v20 + 2) + 1, 1, v20, v28, v29, v30, v31);
      }

      v33 = *(v20 + 2);
      v32 = *(v20 + 3);
      if (v33 >= v32 >> 1)
      {
        v20 = sub_1BD1D8054((v32 > 1), v33 + 1, 1, v20, v28, v29, v30, v31);
      }

      v34.f64[0] = v21 - v88;
      v35.f64[0] = v79;
      v35.f64[1] = v73;
      v34.f64[1] = v22 - v85;
      v36.f64[0] = v83;
      v36.f64[1] = v81;
      v37.f64[0] = v77;
      v37.f64[1] = v75;
      *(v20 + 2) = v33 + 1;
      *&v20[16 * v33 + 32] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v35, v37)), vdivq_f64(v34, v36));
      v19 += 6;
      --v18;
    }

    while (v18);
    v4, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v20 + 2);
  v39 = v38 - 9;
  if (v38 > 9)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v38 != 9)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_24:
      v61 = *(v20 + 2);
      do
      {
        v62 = *(v20 + 3);
        if (v61 >= v62 >> 1)
        {
          v20 = sub_1BD1D8054((v62 > 1), v61 + 1, 1, v20, v14, v15, v16, v17);
        }

        *(v20 + 2) = v61 + 1;
        v63 = &v20[16 * v61];
        *(v63 + 4) = 0;
        *(v63 + 5) = 0;
        ++v61;
      }

      while (!__CFADD__(v39++, 1));
      goto LABEL_15;
    }

LABEL_33:
    v20 = sub_1BD1D8054(0, v38 + 1, 1, v20, v14, v15, v16, v17);
    goto LABEL_24;
  }

LABEL_15:
  v40 = *(v4 + 2);
  if (v40)
  {
    sub_1BE048C84();
    v41 = v4 + 9;
    v42 = MEMORY[0x1E69E7CC0];
    do
    {
      v44 = *(v41 - 3);
      v43 = *(v41 - 2);
      v45 = *(v41 - 1);
      v46 = *v41;
      v101.origin.x = v44;
      v101.origin.y = v43;
      v101.size.width = v45;
      v101.size.height = *v41;
      MidX = CGRectGetMidX(v101);
      v102.origin.x = v44;
      v102.origin.y = v43;
      v102.size.width = v45;
      v102.size.height = v46;
      CGRectGetMidY(v102);
      v103.origin.x = v5;
      v103.origin.y = v6;
      v103.size.width = v7;
      v103.size.height = v8;
      v80 = CGRectGetWidth(v103);
      v104.origin.x = v5;
      v104.origin.y = v6;
      v104.size.width = v7;
      v104.size.height = v8;
      v76 = CGRectGetHeight(v104);
      v105.origin.x = v5;
      v105.origin.y = v6;
      v105.size.width = v7;
      v105.size.height = v8;
      v82 = CGRectGetWidth(v105);
      v106.origin.x = v5;
      v106.origin.y = v6;
      v106.size.width = v7;
      v106.size.height = v8;
      v78 = CGRectGetHeight(v106);
      v107.origin.x = v44;
      v107.origin.y = v43;
      v107.size.width = v45;
      v107.size.height = v46;
      v74 = CGRectGetWidth(v107);
      v108.origin.x = v5;
      v108.origin.y = v6;
      v108.size.width = v7;
      v108.size.height = v8;
      v72 = CGRectGetWidth(v108);
      v109.origin.x = v44;
      v109.origin.y = v43;
      v109.size.width = v45;
      v109.size.height = v46;
      v71 = CGRectGetHeight(v109);
      v110.origin.x = v5;
      v110.origin.y = v6;
      v110.size.width = v7;
      v110.size.height = v8;
      v70 = CGRectGetHeight(v110);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1BD1D8054(0, *(v42 + 2) + 1, 1, v42, v50, v51, v52, v53);
      }

      v55 = *(v42 + 2);
      v54 = *(v42 + 3);
      if (v55 >= v54 >> 1)
      {
        v42 = sub_1BD1D8054((v54 > 1), v55 + 1, 1, v42, v50, v51, v52, v53);
      }

      v56.f64[0] = MidX - v88 - v80 * 0.5;
      v58.f64[0] = v72;
      v57.f64[0] = v74;
      v57.f64[1] = v71;
      v56.f64[1] = v43 - v85 - v76 * 0.5;
      v58.f64[1] = v70;
      v59.f64[0] = v82;
      v59.f64[1] = v78;
      *(v42 + 2) = v55 + 1;
      *&v42[16 * v55 + 32] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v57, v58)), vdivq_f64(v56, v59));
      v41 += 6;
      --v40;
    }

    while (v40);
    v4, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v20;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v68;
  *(a3 + 48) = v67;
  *(a3 + 56) = v66;
  *(a3 + 64) = v65;
  *(a3 + 72) = v69;
  *(a3 + 88) = v42;
}

id VFXNode.vfxNode(node:)()
{
  v1 = v0;
  NearbyPeerPaymentVFXUtilities.Node.rawValue.getter();
  v3 = v2;
  v4 = sub_1BE052404();
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v1 childNodeWithName_];

  return v12;
}

Swift::String __swiftcall VFXNode.behaviorGraphValue(key:)(PassKitUI::NearbyPeerPaymentVFXUtilities::BehaviorGraph key)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90, &unk_1BE0BC6B0);
  v2 = swift_allocObject();
  v3 = [v1 behaviorGraph];
  if (v3)
  {
    v4 = v3;
    NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
    v6 = v5;
    v7 = sub_1BE052404();
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15 = [v4 objectForKeyedSubscript_];

    if (v15)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    *(v2 + 16) = v19;
    *(v2 + 32) = v20;
  }

  else
  {
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
  }

  v16 = sub_1BE0524A4();
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

void sub_1BD5114BC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BE051F54();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE051FA4();
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 32);
  v55 = v4;
  v56 = a1;
  v49 = a1;
  v57 = a2;
  v58 = a3;
  v48 = a3;
  v52 = sub_1BD512D30;
  v53 = &v54;
  sub_1BE048C84();
  sub_1BE048964();
  os_unfair_lock_lock(v14 + 4);
  sub_1BD4B3B3C(v15);
  os_unfair_lock_unlock(v14 + 4);
  v47[1] = *(v4 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD512D50;
  v61 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_115;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v17);
  v48, v18, v19, v20, v21, v22, v23, v24;
  v49, v25, v26, v27, v28, v29, v30, v31;
  _Block_release(v17);
  (*(v51 + 8))(v10, v8);
  (*(v11 + 8))(v13, v50);
  v32 = v61;
  v16, v33, v34, v35, v36, v37, v38, v39;
  v32, v40, v41, v42, v43, v44, v45, v46;
}

uint64_t sub_1BD511820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1BD1D913C(0, *(v8 + 2) + 1, 1, v8, v10, v11, v12, v13);
    *(a1 + 40) = v8;
  }

  v15 = *(v8 + 2);
  v14 = *(v8 + 3);
  if (v15 >= v14 >> 1)
  {
    v8 = sub_1BD1D913C((v14 > 1), v15 + 1, 1, v8, v10, v11, v12, v13);
  }

  *(v8 + 2) = v15 + 1;
  v16 = &v8[24 * v15];
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 6) = a4;
  *(a1 + 40) = v8;
  swift_endAccess();
  sub_1BE048C84();
  return sub_1BE048964();
}

void sub_1BD511920()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051F54();
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v86 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 32);
  v98 = sub_1BD5130FC;
  v99 = v0;
  v96 = v0;
  os_unfair_lock_lock(v11 + 4);
  sub_1BD513118(&aBlock);
  os_unfair_lock_unlock(v11 + 4);
  if (aBlock)
  {
    v94 = v5;
    v84 = v4;
    v95 = v7;
    v85 = v101;
    v83 = aBlock;
    v12 = aBlock;
    v13 = *(aBlock + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v81 = v2;
      v82 = v1;
      v15 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v91 = *(v96 + 24);
      v92 = v15;
      v90 = &v101;
      v89 = (v87 + 8);
      v88 = (v86 + 8);
      sub_1BE048C84();
      v16 = 32;
      v93 = v8;
      do
      {
        v17 = swift_allocObject();
        v17[1] = *&v12[v16];
        sub_1BE048964();
        dispatch_group_enter(v91);
        v97 = sub_1BE052D54();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        v19[2] = sub_1BD513164;
        v19[3] = v17;
        v19[4] = v18;
        v103 = sub_1BD51316C;
        v104 = v19;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v101 = sub_1BD126964;
        v102 = &block_descriptor_50_1;
        v20 = v12;
        v21 = _Block_copy(&aBlock);
        v22 = v104;
        sub_1BE048964();
        v22, v23, v24, v25, v26, v27, v28, v29;
        sub_1BE051F74();
        *&aBlock = v14;
        sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
        v30 = v94;
        v31 = v95;
        v14 = MEMORY[0x1E69E7CC0];
        sub_1BE053664();
        v32 = v97;
        MEMORY[0x1BFB3FDF0](0, v10, v31, v21);
        v33 = v21;
        v12 = v20;
        _Block_release(v33);
        v17, v34, v35, v36, v37, v38, v39, v40;

        v8 = v93;
        (*v89)(v31, v30);
        (*v88)(v10, v8);
        v16 += 16;
        --v13;
      }

      while (v13);
      v12, v41, v42, v43, v44, v45, v46, v47;
      v1 = v82;
      v2 = v81;
    }

    sub_1BE052CD4();
    v48 = v84;
    sub_1BE04D094();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1BD026000, v49, v50, "NearbyPeerPayment: finished animation batch, calling completion", v51, 2u);
      MEMORY[0x1BFB45F20](v51, -1, -1);
    }

    (*(v2 + 8))(v48, v1);
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v97 = sub_1BE052D54();
    v52 = swift_allocObject();
    *(v52 + 16) = v83;
    v53 = v85;
    *(v52 + 32) = v85;
    v103 = sub_1BD289278;
    v104 = v52;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v101 = sub_1BD126964;
    v102 = &block_descriptor_56;
    v54 = _Block_copy(&aBlock);
    v55 = v104;
    sub_1BE048C84();
    sub_1BE048964();
    v55, v56, v57, v58, v59, v60, v61, v62;
    sub_1BE051F74();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v63 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
    v65 = v94;
    v64 = v95;
    sub_1BE053664();
    v66 = v97;
    MEMORY[0x1BFB3FDF0](0, v63, v64, v54);
    _Block_release(v54);
    v53, v67, v68, v69, v70, v71, v72, v73;
    v12, v74, v75, v76, v77, v78, v79, v80;

    (*(v87 + 8))(v64, v65);
    (*(v86 + 8))(v63, v8);
  }
}

void sub_1BD5120B4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v14[0] = sub_1BD1839E8;
  v14[1] = v6;
  sub_1BE048964();
  a3(v14);

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD512150(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 24);
    v2, v4, v5, v6, v7, v8, v9, v10;
    dispatch_group_leave(v3);
  }
}

void sub_1BD5121BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  if (*(v4 + 16))
  {
    swift_beginAccess();
    if (*(v4 + 16))
    {
      v5 = *(v4 + 48);
      v6 = *(v4 + 32);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD1DE86C(0, 1);
      swift_endAccess();
      *a2 = v6;
      *(a2 + 16) = v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_1BD51228C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BE051F54();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE051FA4();
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 32);
  v55 = v4;
  v56 = a1;
  v49 = a1;
  v57 = a2;
  v58 = a3;
  v48 = a3;
  v52 = sub_1BD512D6C;
  v53 = &v54;
  sub_1BE048C84();
  sub_1BE048964();
  os_unfair_lock_lock(v14 + 4);
  sub_1BD4B5380(v15);
  os_unfair_lock_unlock(v14 + 4);
  v47[1] = *(v4 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD513464;
  v61 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_5;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v17);
  v48, v18, v19, v20, v21, v22, v23, v24;
  v49, v25, v26, v27, v28, v29, v30, v31;
  _Block_release(v17);
  (*(v51 + 8))(v10, v8);
  (*(v11 + 8))(v13, v50);
  v32 = v61;
  v16, v33, v34, v35, v36, v37, v38, v39;
  v32, v40, v41, v42, v43, v44, v45, v46;
}

uint64_t sub_1BD5125F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  v8, v9, v10, v11, v12, v13, v14, v15;
  swift_beginAccess();
  v16 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1BD1D913C(0, *(v16 + 2) + 1, 1, v16, v18, v19, v20, v21);
    *(a1 + 40) = v16;
  }

  v23 = *(v16 + 2);
  v22 = *(v16 + 3);
  if (v23 >= v22 >> 1)
  {
    v16 = sub_1BD1D913C((v22 > 1), v23 + 1, 1, v16, v18, v19, v20, v21);
  }

  *(v16 + 2) = v23 + 1;
  v24 = &v16[24 * v23];
  *(v24 + 4) = a2;
  *(v24 + 5) = a3;
  *(v24 + 6) = a4;
  *(a1 + 40) = v16;
  swift_endAccess();
  sub_1BE048C84();
  return sub_1BE048964();
}

void sub_1BD512718(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD511920();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

id *NearbyPeerPaymentStateTransitionSequencer.deinit()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  return v0;
}

uint64_t NearbyPeerPaymentStateTransitionSequencer.__deallocating_deinit()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocClassInstance();
}

void *sub_1BD5127F8()
{
  v10 = sub_1BE052D44();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v9[0] = "Sequencer";
  v9[1] = v6;
  sub_1BE051F74();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530);
  sub_1BE053664();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v0[2] = sub_1BE052D74();
  v0[3] = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39A88, &unk_1BE0DA7B0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v0[4] = v7;
  v0[5] = MEMORY[0x1E69E7CC0];
  return v0;
}

void _s9PassKitUI29NearbyPeerPaymentVFXUtilitiesO21mappedCharacterValues15formattedAmountSaySSGSS_tFZ_0(uint64_t a1, void *a2)
{
  sub_1BE048C84();
  v2 = sub_1BE052594();
  if (v3)
  {
    v10 = v3;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (qword_1EBD36C68 != -1)
      {
        v40 = v2;
        swift_once();
        v2 = v40;
      }

      v12 = qword_1EBDAB218;
      if (*(qword_1EBDAB218 + 16) && (v13 = v2, sub_1BE048C84(), v14 = sub_1BD148F70(v13, v10), v16 = v15, v10, v15, v17, v18, v19, v20, v21, v22, (v16 & 1) != 0))
      {
        v23 = (*(v12 + 56) + 16 * v14);
        v25 = *v23;
        v24 = v23[1];
        sub_1BE048C84();
        v10, v26, v27, v28, v29, v30, v31, v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1BD03B038(0, *(v11 + 2) + 1, 1, v11, v33, v34, v35, v36);
        }

        v38 = *(v11 + 2);
        v37 = *(v11 + 3);
        if (v38 >= v37 >> 1)
        {
          v11 = sub_1BD03B038((v37 > 1), v38 + 1, 1, v11, v33, v34, v35, v36);
        }

        *(v11 + 2) = v38 + 1;
        v39 = &v11[16 * v38];
        *(v39 + 4) = v25;
        *(v39 + 5) = v24;
      }

      else
      {
        v10, v3, v4, v5, v6, v7, v8, v9;
      }

      v2 = sub_1BE052594();
      v10 = v3;
    }

    while (v3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  a2, 0, v4, v5, v6, v7, v8, v9;
  v48 = *(v11 + 2);
  if (v48)
  {
    v49 = 0;
    v50 = v11 + 40;
    v51 = MEMORY[0x1E69E7CC0];
    while (v49 < *(v11 + 2))
    {
      sub_1BE048C84();
      v52 = sub_1BE052644();
      v54 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1BD03B038(0, *(v51 + 2) + 1, 1, v51, v44, v45, v46, v47);
      }

      v56 = *(v51 + 2);
      v55 = *(v51 + 3);
      if (v56 >= v55 >> 1)
      {
        v51 = sub_1BD03B038((v55 > 1), v56 + 1, 1, v51, v44, v45, v46, v47);
      }

      ++v49;
      *(v51 + 2) = v56 + 1;
      v57 = &v51[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
      v50 += 16;
      if (v48 == v49)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v11, v41, v42, v43, v44, v45, v46, v47;
  }
}

unint64_t sub_1BD512D90()
{
  result = qword_1EBD49228;
  if (!qword_1EBD49228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49228);
  }

  return result;
}

unint64_t sub_1BD512DE8()
{
  result = qword_1EBD49230;
  if (!qword_1EBD49230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyPeerPaymentVFXUtilities.BehaviorGraph(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyPeerPaymentVFXUtilities.BehaviorGraph(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD512FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD513004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BD513118@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v5;
  }

  return result;
}

void sub_1BD51316C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1BE048964();
  v1(sub_1BD5131D8, v2);

  v2, v3, v4, v5, v6, v7, v8, v9;
}

char *sub_1BD5131E0(uint64_t a1, void *a2)
{
  sub_1BE048C84();
  v2 = sub_1BE052594();
  if (v3)
  {
    v10 = v3;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (qword_1EBD36C70 != -1)
      {
        v30 = v2;
        swift_once();
        v2 = v30;
      }

      v12 = qword_1EBDAB220;
      if (*(qword_1EBDAB220 + 16) && (v13 = v2, sub_1BE048C84(), v14 = sub_1BD148F70(v13, v10), v16 = v15, v10, v15, v17, v18, v19, v20, v21, v22, (v16 & 1) != 0))
      {
        v23 = *(*(v12 + 56) + 4 * v14);
        v10, v3, v4, v5, v6, v7, v8, v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1BD1D8158(0, *(v11 + 2) + 1, 1, v11, v24, v25, v26, v27);
        }

        v29 = *(v11 + 2);
        v28 = *(v11 + 3);
        if (v29 >= v28 >> 1)
        {
          v11 = sub_1BD1D8158((v28 > 1), v29 + 1, 1, v11, v24, v25, v26, v27);
        }

        *(v11 + 2) = v29 + 1;
        *&v11[4 * v29 + 32] = v23;
      }

      else
      {
        v10, v3, v4, v5, v6, v7, v8, v9;
      }

      v2 = sub_1BE052594();
      v10 = v3;
    }

    while (v3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  a2, 0, v4, v5, v6, v7, v8, v9;
  v38 = *(v11 + 2);
  if (v38)
  {
    v39 = sub_1BD1D8158(0, 1, 1, MEMORY[0x1E69E7CC0], v34, v35, v36, v37);
    v40 = (v11 + 32);
    v41 = *(v39 + 2);
    do
    {
      v42 = *v40;
      v43 = *(v39 + 3);
      if (v41 >= v43 >> 1)
      {
        v39 = sub_1BD1D8158((v43 > 1), v41 + 1, 1, v39, v34, v35, v36, v37);
      }

      *(v39 + 2) = v41 + 1;
      *&v39[4 * v41 + 32] = v42;
      ++v40;
      ++v41;
      --v38;
    }

    while (v38);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v11, v31, v32, v33, v34, v35, v36, v37;
  return v39;
}

uint64_t sub_1BD513410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD513474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BD5134BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BD513514(uint64_t a1, int64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *v8;
  v110 = MEMORY[0x1E69E7CC0];
  if (*v8 >> 62)
  {
    goto LABEL_57;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    v86 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v15 = v10 & 0xFFFFFFFFFFFFFF8;
  v102 = v10;
  v16 = v10 + 32;
  v10 = MEMORY[0x1E695CBD8];
  v17 = &selRef_chatWithHandle_;
  v104 = v15;
  v105 = v14;
  v103 = v16;
  v106 = v11;
  do
  {
    while (1)
    {
      if (v14)
      {
        v18 = MEMORY[0x1BFB40900](v13, v102, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_56;
        }

        v18 = *(v16 + 8 * v13);
      }

      v19 = v18;
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_55;
      }

      if ([v18 v17[274]] == 1)
      {
        break;
      }

      if (v13 == v11)
      {
        goto LABEL_41;
      }
    }

    v107 = v19;
    v108 = v13;
    v21 = [v19 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
    v22 = sub_1BE052744();

    if (v22 >> 62)
    {
      v30 = sub_1BE053704();
      if (!v30)
      {
        goto LABEL_39;
      }

LABEL_13:
      v31 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1BFB40900](v31, v22);
        }

        else
        {
          if (v31 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v39 = *(v22 + 8 * v31 + 32);
        }

        v40 = v39;
        v41 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v98 = v10;
          v99 = sub_1BE053704();
          v10 = v98;
          v11 = v99;
          goto LABEL_3;
        }

        v42 = [v39 label];
        if (v42)
        {
          v43 = v42;
          v44 = sub_1BE052434();
          v46 = v45;

          if (a2 <= 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v44 = 0;
          v46 = 0;
          if (a2 <= 1)
          {
LABEL_22:
            if (!a2)
            {
              goto LABEL_28;
            }

            v47 = a1;
            v48 = a2;
            if (a2 == 1)
            {
              goto LABEL_28;
            }

            goto LABEL_29;
          }
        }

        if (a2 == 2 || (v47 = a1, v48 = a2, a2 == 3))
        {
LABEL_28:
          v47 = sub_1BE052434();
          v48 = v49;
        }

LABEL_29:
        if (v46)
        {
          if (v44 == v47 && v46 == v48)
          {
            sub_1BD14ED40(a1, a2);
            v22, v65, v66, v67, v68, v69, v70, v71;
            v46, v72, v73, v74, v75, v76, v77, v78;
            v48, v79, v80, v81, v82, v83, v84, v85;

            goto LABEL_36;
          }

          v50 = sub_1BE053B84();
          sub_1BD14ED40(a1, a2);
          v46, v51, v52, v53, v54, v55, v56, v57;
          v48, v58, v59, v60, v61, v62, v63, v64;

          if (v50)
          {
            v22, v23, v24, v25, v26, v27, v28, v29;
LABEL_36:
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
            goto LABEL_40;
          }
        }

        else
        {
          sub_1BD14ED40(a1, a2);
          v48, v32, v33, v34, v35, v36, v37, v38;
        }

        ++v31;
        if (v41 == v30)
        {
          goto LABEL_39;
        }
      }
    }

    v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_13;
    }

LABEL_39:
    v22, v23, v24, v25, v26, v27, v28, v29;

LABEL_40:
    v14 = v105;
    v11 = v106;
    v13 = v108;
    v16 = v103;
    v15 = v104;
    v17 = &selRef_chatWithHandle_;
  }

  while (v108 != v106);
LABEL_41:
  v86 = v110;
  v12 = MEMORY[0x1E69E7CC0];
  if ((v110 & 0x8000000000000000) != 0)
  {
LABEL_58:
    v100 = v12;
    v101 = sub_1BE053704();
    v12 = v100;
    v87 = v101;
    if (!v101)
    {
      goto LABEL_59;
    }

LABEL_46:
    v111 = v12;
    result = sub_1BE0538E4();
    if (v87 < 0)
    {
      __break(1u);
    }

    else
    {
      v89 = 0;
      do
      {
        if ((v86 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB40900](v89, v86);
        }

        else
        {
          v97 = *(v86 + 8 * v89 + 32);
        }

        ++v89;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      while (v87 != v89);
      v86, v90, v91, v92, v93, v94, v95, v96;
      return v111;
    }

    return result;
  }

LABEL_44:
  if ((v86 & 0x4000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v87 = *(v86 + 16);
  if (v87)
  {
    goto LABEL_46;
  }

LABEL_59:
  v86, a2, a3, a4, a5, a6, a7, a8;
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD5139AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *v8;
  v28 = MEMORY[0x1E69E7CC0];
  if (*v8 >> 62)
  {
LABEL_28:
    v10 = sub_1BE053704();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](v12, v9, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (sub_1BD514674(v13))
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v12;
    }

    while (v15 != v10);
    v16 = v28;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v16 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v17 = sub_1BE053704();
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_30:
    v16, a2, a3, a4, a5, a6, a7, a8;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  result = sub_1BE0538E4();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v19, v16);
      }

      else
      {
        v27 = *(v16 + 8 * v19 + 32);
      }

      ++v19;
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v17 != v19);
    v16, v20, v21, v22, v23, v24, v25, v26;
    return v11;
  }

  return result;
}

uint64_t sub_1BD513BB0()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_chatWithHandle_;
    v28 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 v6[274]] == 1)
      {
        v10 = v6;
        v11 = [v8 givenName];
        v12 = sub_1BE052434();
        v13 = v5;
        v15 = v14;

        v6 = v10;
        v15, v16, v17, v18, v19, v20, v21, v22;
        v23 = HIBYTE(v15) & 0xF;
        v24 = (v15 & 0x2000000000000000) == 0;
        v5 = v13;
        v1 = v28;
        if (v24)
        {
          v23 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          v25 = [v8 givenName];
          v26 = sub_1BE052434();

          return v26;
        }
      }

      ++v3;
      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

uint64_t sub_1BD513D44()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 contactSource] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD513E84(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD513EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD514D54(v5, v7) & 1;
}

void sub_1BD513F28(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v8, v7);
    v4 = v9;
    v6 = v10;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD513FB4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    if (v9 != 1)
    {
      return 0;
    }

LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return sub_1BE053B84();
    }

    return 1;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

uint64_t sub_1BD514020()
{
  v1 = *(v0 + 16);
  sub_1BE053D04();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1BFB40DA0](0);
      return sub_1BE053D64();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1BFB40DA0](v2);
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD5140AC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x1BFB40DA0](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1BFB40DA0](v2);

  return sub_1BE052524();
}

uint64_t sub_1BD514134(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BE053D04();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1BFB40DA0](0);
      return sub_1BE053D64();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1BFB40DA0](v3);
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BD5141BC(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CD0];
  v194 = MEMORY[0x1E69E7CD0];
  v7 = [v3 errors];
  if (!v7)
  {
LABEL_39:
    v185 = 0;
LABEL_40:
    sub_1BD111A78(&unk_1F3B8CE00);
    *a3 = v185 & 1;
    *(a3 + 1) = v7 & 1;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    *(a3 + 17) = a1 & 1;
    *(a3 + 18) = 0;
    *(a3 + 24) = v186;
    *(a3 + 32) = a2;

    v187 = a2;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  v8 = sub_1BE052744();

  v9 = sub_1BD3F00D4(v8);
  v8, v10, v11, v12, v13, v14, v15, v16;
  if (v9 >> 62)
  {
    v24 = sub_1BE053704();
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_38:
    v9, v17, v18, v19, v20, v21, v22, v23;
    LOBYTE(v7) = 0;
    goto LABEL_39;
  }

LABEL_4:
  if (v24 >= 1)
  {
    v188 = a3;
    v189 = 0;
    v191 = 0;
    v25 = 0;
    while (1)
    {
      v41 = (v9 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB40900](v25, v9) : *(v9 + 8 * v25 + 32);
      v42 = v41;
      v43 = sub_1BE052434();
      v45 = v44;
      v46 = [v42 userInfo];
      v47 = sub_1BE052244();

      if (!v47[2])
      {
        break;
      }

      v55 = sub_1BD148F70(v43, v45);
      v57 = v56;
      v45, v56, v58, v59, v60, v61, v62, v63;
      if ((v57 & 1) == 0)
      {
        v33 = v47;
        goto LABEL_7;
      }

      sub_1BD038CD0(v47[7] + 32 * v55, v193);
      v47, v64, v65, v66, v67, v68, v69, v70;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      v71 = sub_1BE052404();
      v192, v72, v73, v74, v75, v76, v77, v78;
      v79 = sub_1BE052434();
      v81 = v80;
      v82 = sub_1BE052434();
      v84 = v83;
      if (v79 == v82 && v81 == v83)
      {

        v81, v85, v86, v87, v88, v89, v90, v91;
        v84, v92, v93, v94, v95, v96, v97, v98;
LABEL_22:

        v191 = 1;
        goto LABEL_9;
      }

      v99 = sub_1BE053B84();
      v81, v100, v101, v102, v103, v104, v105, v106;
      v84, v107, v108, v109, v110, v111, v112, v113;
      if (v99)
      {

        goto LABEL_22;
      }

      v114 = sub_1BE052434();
      v116 = v115;
      v117 = sub_1BE052434();
      v119 = v118;
      if (v114 == v117 && v116 == v118)
      {

        v116, v120, v121, v122, v123, v124, v125, v126;
        v119, v127, v128, v129, v130, v131, v132, v133;
      }

      else
      {
        v134 = sub_1BE053B84();
        v116, v135, v136, v137, v138, v139, v140, v141;
        v119, v142, v143, v144, v145, v146, v147, v148;
        if ((v134 & 1) == 0)
        {
          v149 = sub_1BE052434();
          v151 = v150;
          v152 = sub_1BE052434();
          v154 = v153;
          if (v149 == v152 && v151 == v153)
          {

            v151, v155, v156, v157, v158, v159, v160, v161;
            v154, v162, v163, v164, v165, v166, v167, v168;
LABEL_33:
            v184 = sub_1BD34C030();
            if (v184 != 8)
            {
              sub_1BD2A5394(v193, v184);
            }
          }

          else
          {
            v169 = sub_1BE053B84();

            v151, v170, v171, v172, v173, v174, v175, v176;
            v154, v177, v178, v179, v180, v181, v182, v183;
            if (v169)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_9;
        }
      }

      v189 = 1;
LABEL_9:
      if (v24 == ++v25)
      {
        v9, v34, v35, v36, v37, v38, v39, v40;
        v6 = v194;
        a3 = v188;
        LOBYTE(v7) = v189;
        v185 = v191;
        goto LABEL_40;
      }
    }

    v47, v48, v49, v50, v51, v52, v53, v54;
    v33 = v45;
LABEL_7:
    v33, v26, v27, v28, v29, v30, v31, v32;
LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1BD514674(void *a1)
{
  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v3 = sub_1BE052744();

  v39 = a1;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v12 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](v12, v3);
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 label];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE052434();
        v20 = v19;

        v21 = sub_1BD551B1C(v18, v20);
        v23 = v22;
        sub_1BD35D778(v21, v22, v24, v25, v26, v27, v28, v29);
        if (v23 > 3)
        {
          v3, v30, v31, v32, v33, v34, v35, v36;

          v37 = 1;
          goto LABEL_17;
        }
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v3, v4, v5, v6, v7, v8, v9, v10;
  v37 = 0;
LABEL_17:
  if ([v39 contactSource] == 1)
  {
    return v37;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD514814()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 contactSource] == 1)
      {
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD514954(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1BD514E48(v13, v14) & 1;
}

uint64_t sub_1BD5149BC()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if ([v0 isShippingServiceableWithError_])
  {
    v1 = v8[0];
    return 0;
  }

  else
  {
    v3 = v8[0];
    v4 = sub_1BE04A854();

    swift_willThrow();
    v8[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
    swift_dynamicCast();
    v5 = [v7 localizedDescription];
    v6 = sub_1BE052434();

    return v6;
  }
}

id sub_1BD514AF4()
{
  v1 = v0;
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 0;
  if ([v1 isValidWithError_])
  {
    v7 = v17[0];
    return 0;
  }

  v9 = v17[0];
  v10 = sub_1BE04A854();

  swift_willThrow();
  v17[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
  swift_dynamicCast();
  v11 = v16;
  v12 = [v16 localizedFailureReason];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052434();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v14 = sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
  }

  return v14;
}

uint64_t sub_1BD514D54(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v5 = v4;
    v6 = sub_1BE053074();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v7 = a1[1] == *(a2 + 8) && a1[2] == *(a2 + 16);
  if (!v7 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD514E48(uint64_t a1, uint64_t a2)
{
  if ((sub_1BD3FE314(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      return 0;
    }

LABEL_15:
    if ((*(a1 + 24) != v10 || *(a1 + 32) != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (*(a1 + 40) == 1)
  {
    if (v12 != 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v12 != 2)
  {
    return 0;
  }

  result = 0;
  if (!v10 && !v11)
  {
LABEL_22:
    v13 = *(a1 + 64);
    v19[0] = *(a1 + 48);
    v19[1] = v13;
    v20 = *(a1 + 80);
    v14 = *(a2 + 64);
    v17[0] = *(a2 + 48);
    v17[1] = v14;
    v18 = *(a2 + 80);
    if ((sub_1BD8434FC(v19, v17) & 1) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }

    v15 = *(a1 + 104);
    v16 = *(a2 + 104);
    if (v15)
    {
      if (!v16 || (*(a1 + 96) != *(a2 + 96) || v15 != v16) && (sub_1BE053B84() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void sub_1BD514FE8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentRequest];
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v6 requiredShippingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD231AF0();
  v9 = sub_1BE052A34();

  if ((sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v9) & 1) == 0)
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    a2, v24, v25, v26, v27, v28, v29, v30;

LABEL_13:
    v61 = 0;
    v62 = 0;
    v44 = 0;
    v45 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v46 = 0;
    v67 = 0;
    v68 = 0uLL;
    v69 = 0uLL;
LABEL_14:
    *a3 = v61;
    *(a3 + 8) = v62;
    *(a3 + 16) = v67;
    *(a3 + 24) = v44;
    *(a3 + 32) = v45;
    *(a3 + 40) = v46;
    *(a3 + 48) = v68;
    *(a3 + 64) = v69;
    *(a3 + 80) = v63;
    *(a3 + 88) = v64;
    *(a3 + 96) = v65;
    *(a3 + 104) = v66;
    return;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v104 = 0u;
    v105 = 0u;
  }

  v106 = v104;
  v107 = v105;
  if (!*(&v105 + 1))
  {
    a2, v17, v18, v19, v20, v21, v22, v23;

    v9, v47, v48, v49, v50, v51, v52, v53;
    sub_1BD14EC0C(&v106);
    goto LABEL_13;
  }

  sub_1BD0E5E8C(0, &qword_1EBD49258, 0x1E69B8E88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    a2, v31, v32, v33, v34, v35, v36, v37;

    v9, v54, v55, v56, v57, v58, v59, v60;
    goto LABEL_13;
  }

  sub_1BD0E82D4();
  v38 = *MEMORY[0x1E69BB7D0];
  v39 = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v9);
  v40 = [a1 contactFormatValidator];
  sub_1BD5141BC(v39 & 1, v40, &v106);

  v101 = [a1 originalShippingAddress];
  swift_beginAccess();
  v98 = a2[8];
  sub_1BE048C84();
  v100 = sub_1BD6CC0DC(v38, v9);
  v41 = v103;
  v42 = sub_1BD5149BC();
  v102 = a2;
  if (v43)
  {
    v44 = v42;
    v45 = v43;

    v46 = 1;
  }

  else
  {
    v44 = sub_1BD514AF4();
    v45 = v70;

    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      v46 = 2;
    }
  }

  v71 = [a1 paymentRequest];
  if (!v71)
  {
    goto LABEL_25;
  }

  v72 = v71;
  v64 = [v71 shippingContactEditingMode];

  v73 = [a1 paymentRequest];
  if (v73)
  {
    v81 = v73;
    v9, v74, v75, v76, v77, v78, v79, v80;
    v82 = [v81 shippingEditableMessage];

    if (v82)
    {
      v65 = sub_1BE052434();
      v66 = v83;

      v102, v84, v85, v86, v87, v88, v89, v90;
    }

    else
    {

      v102, v91, v92, v93, v94, v95, v96, v97;
      v65 = 0;
      v66 = 0;
    }

    v68 = v106;
    v69 = v107;
    v62 = v101;
    v67 = v100 & 1;
    v63 = v108;
    v61 = v99;
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
}

void sub_1BD5153AC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v129 = a1;
  v128 = sub_1BE04BD74();
  v7 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v122 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v122 - v14;
  v16 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = "etransitionsequencer";
  v20 = 0xD00000000000003ALL;
  if (a2 == 1)
  {
    v19 = "SS_UNAVAILABLE_ALERT_TITLE";
  }

  if (a2 == 2)
  {
    v19 = "RESS_UNAVAILABLE_ALERT_TITLE";
  }

  else
  {
    v20 = 0xD000000000000037;
  }

  if (a2 == 3)
  {
    v21 = 0xD00000000000003CLL;
  }

  else
  {
    v21 = v20;
  }

  if (a2 == 3)
  {
    v22 = "LE_ALERT_MESSAGE";
  }

  else
  {
    v22 = v19;
  }

  v23 = _s8MerchantVMa(0);
  sub_1BD129504(a3 + *(v23 + 20), v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD515948(a3, _s8MerchantVMa);
      (v22 | 0x8000000000000000), v115, v116, v117, v118, v119, v120, v121;

      v129 = 0;
      v73 = 0;
      v40 = 0;
      v56 = 0;
      v58 = 0;
      goto LABEL_19;
    }

    v123 = a4;
    v32 = a3;
    v33 = *a3;
    v125 = v22;
    v127 = v32;
    v34 = v32[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B69E0;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1BD110550();
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    v124 = *MEMORY[0x1E69B8068];
    v36 = *(v7 + 104);
    v37 = v128;
    v36(v15);
    sub_1BE048C84();
    v38 = v125;
    v126 = sub_1BE04B714();
    v40 = v39;
    v35, v39, v41, v42, v43, v44, v45, v46;
    (v38 | 0x8000000000000000), v47, v48, v49, v50, v51, v52, v53;
    v125 = *(v7 + 8);
    v125(v15, v37);
    (v36)(v9, v124, v37);
    sub_1BE048C84();
    v54 = PKPassKitBundle();
    if (v54)
    {
      v55 = v54;
      v56 = sub_1BE04B6F4();
      v58 = v57;

      sub_1BD515948(v127, _s8MerchantVMa);
      v125(v9, v37);
      sub_1BE048C84();
      sub_1BD515948(v18, _s14MerchantOriginOMa);
      v58, v59, v60, v61, v62, v63, v64, v65;
      v40, v66, v67, v68, v69, v70, v71, v72;
      a4 = v123;
      v73 = v126;
LABEL_19:
      *a4 = v129;
      a4[1] = v73;
      a4[2] = v40;
      a4[3] = v56;
      a4[4] = v58;
      return;
    }

    __break(1u);
  }

  else
  {
    v126 = v21;
    v127 = a3;
    v74 = *v18;
    v75 = *(v18 + 1);
    v76 = v22;
    v77 = *(v18 + 3);
    *(v18 + 5), v25, v26, v27, v28, v29, v30, v31;
    v77, v78, v79, v80, v81, v82, v83, v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1BE0B69E0;
    *(v85 + 56) = MEMORY[0x1E69E6158];
    *(v85 + 64) = sub_1BD110550();
    *(v85 + 32) = v74;
    *(v85 + 40) = v75;
    v86 = *MEMORY[0x1E69B8068];
    v87 = *(v7 + 104);
    v88 = v7;
    v89 = v128;
    v87(v15, v86, v128);
    v126 = sub_1BE04B714();
    v90 = (v76 | 0x8000000000000000);
    v40 = v91;
    v90, v91, v92, v93, v94, v95, v96, v97;
    v85, v98, v99, v100, v101, v102, v103, v104;
    v125 = *(v88 + 8);
    v125(v15, v89);
    v87(v12, v86, v89);
    sub_1BE048C84();
    v105 = PKPassKitBundle();
    if (v105)
    {
      v106 = v105;
      v56 = sub_1BE04B6F4();
      v58 = v107;

      sub_1BD515948(v127, _s8MerchantVMa);
      v125(v12, v89);
      v40, v108, v109, v110, v111, v112, v113, v114;
      v73 = v126;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1BD515948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI25PaymentAuthorizationModelC8ShippingV6StatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BD5159C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BD515A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD515A9C()
{
  result = qword_1EBD49260;
  if (!qword_1EBD49260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49260);
  }

  return result;
}

uint64_t type metadata accessor for AddPostalAddressSheet(uint64_t a1)
{
  result = qword_1EBD49268;
  if (!qword_1EBD49268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD515B64(uint64_t a1)
{
  sub_1BD170C00(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD515C30(319);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD515C30(uint64_t a1)
{
  if (!qword_1EBD49278)
  {
    type metadata accessor for AddressEditingModel(255);
    sub_1BD518A50(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel, &unk_1BE0FCC94);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD49278);
    }
  }
}

uint64_t sub_1BD515CE0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  sub_1BD0DE19C(v2, &v22 - v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_1BD515EE0@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for AddPostalAddressSheet(0);
  type metadata accessor for AddressEditingModel(0);
  sub_1BD518A50(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel, &unk_1BE0FCC94);
  v2 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v2, v11, v12, v13, v14, v15, v16, v17;
  v150[10] = v131;
  v150[11] = v132;
  v150[12] = v133;
  v150[13] = v134;
  v150[6] = v127;
  v150[7] = v128;
  v150[8] = v129;
  v150[9] = v130;
  v150[2] = v123;
  v150[3] = v124;
  v150[4] = v125;
  v150[5] = v126;
  v150[0] = v121;
  v150[1] = v122;
  v145 = v131;
  v146 = v132;
  v147 = v133;
  v148 = v134;
  v141 = v127;
  v142 = v128;
  v143 = v129;
  v144 = v130;
  v137 = v123;
  v138 = v124;
  v139 = v125;
  v140 = v126;
  v135 = v121;
  v136 = v122;
  v149 = 1;
  sub_1BD4FBC6C(&v151);
  sub_1BD4FB81C(&v156);
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(&v108);
  v18, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v127 = v114;
  v128 = v115;
  v130 = v117;
  v129 = v116;
  v123 = v110;
  v124 = v111;
  v126 = v113;
  v125 = v112;
  v122 = v109;
  v121 = v108;
  sub_1BD4FBC18(&v121);
  if (*(&v133 + 1) == 1)
  {
    v64 = v153;
    v65 = v154;
    v66 = v155;
    v62 = v151;
    v63 = v152;
    v90 = v159;
    v91 = v160;
    v88 = v157;
    v89 = v158;
    v87 = v156;
    v71 = v155;
    v69 = v153;
    v70 = v154;
    v67 = v151;
    v68 = v152;
    v42 = v153;
    v43 = v154;
    v40 = v151;
    v41 = v152;
    v75 = v159;
    v76 = v160;
    v72 = v156;
    v73 = v157;
    v74 = v158;
    v44 = v155;
    v45 = v156;
    v48 = v159;
    v49 = v160;
    v46 = v157;
    v47 = v158;
    v77 = v151;
    v78 = v152;
    v81 = v155;
    v82 = v156;
    v79 = v153;
    v80 = v154;
    v85 = v159;
    v86 = v160;
    v83 = v157;
    v84 = v158;
    sub_1BD518A98(&v151, &v108);
    sub_1BD518A98(&v156, &v108);
    sub_1BD518A98(&v67, &v108);
    sub_1BD518A98(&v72, &v108);
    sub_1BD518AF4(&v87);
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v92 = v62;
    v93 = v63;
    sub_1BD518AF4(&v92);
    v103 = v46;
    v104 = v47;
    v105 = v48;
    v106 = v49;
    v99 = v42;
    v100 = v43;
    v101 = v44;
    v102 = v45;
    v97 = v40;
    v98 = v41;
    sub_1BD518B54(&v97);
    v116 = v105;
    v117 = v106;
    LOBYTE(v118) = v107;
    v112 = v101;
    v113 = v102;
    v115 = v104;
    v114 = v103;
    v108 = v97;
    v109 = v98;
    v111 = v100;
    v110 = v99;
    sub_1BD0DE19C(&v77, v50, &qword_1EBD49318, &qword_1BE0DE6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49320, &qword_1BE0DE6A8);
    sub_1BD0DE4F4(&qword_1EBD49328, &qword_1EBD49320, &qword_1BE0DE6A8, MEMORY[0x1E6981F48]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v150, &qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BD0DE53C(&v77, &qword_1EBD49318, &qword_1BE0DE6A0);
    sub_1BD518AF4(&v156);
    v34 = &v151;
  }

  else
  {
    v64 = v158;
    v65 = v159;
    v66 = v160;
    v62 = v156;
    v63 = v157;
    v91 = v155;
    v89 = v153;
    v90 = v154;
    v87 = v151;
    v88 = v152;
    v71 = v160;
    v72 = v151;
    v69 = v158;
    v70 = v159;
    v67 = v156;
    v68 = v157;
    v54 = v158;
    v55 = v159;
    v52 = v156;
    v53 = v157;
    v75 = v154;
    v76 = v155;
    v73 = v152;
    v74 = v153;
    v56 = v160;
    v57 = v151;
    v60 = v154;
    v61 = v155;
    v58 = v152;
    v59 = v153;
    v77 = v156;
    v78 = v157;
    v81 = v160;
    v82 = v151;
    v79 = v158;
    v80 = v159;
    v85 = v154;
    v86 = v155;
    v83 = v152;
    v84 = v153;
    sub_1BD518A98(&v151, &v108);
    sub_1BD518A98(&v156, &v108);
    sub_1BD518A98(&v67, &v108);
    sub_1BD518A98(&v72, &v108);
    sub_1BD518AF4(&v87);
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v92 = v62;
    v93 = v63;
    sub_1BD518AF4(&v92);
    v103 = v58;
    v104 = v59;
    v105 = v60;
    v106 = v61;
    v99 = v54;
    v100 = v55;
    v101 = v56;
    v102 = v57;
    v97 = v52;
    v98 = v53;
    sub_1BD518B48(&v97);
    v116 = v105;
    v117 = v106;
    LOBYTE(v118) = v107;
    v112 = v101;
    v113 = v102;
    v115 = v104;
    v114 = v103;
    v108 = v97;
    v109 = v98;
    v111 = v100;
    v110 = v99;
    sub_1BD0DE19C(&v77, v50, &qword_1EBD49318, &qword_1BE0DE6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49320, &qword_1BE0DE6A8);
    sub_1BD0DE4F4(&qword_1EBD49328, &qword_1EBD49320, &qword_1BE0DE6A8, MEMORY[0x1E6981F48]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v150, &qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BD0DE53C(&v77, &qword_1EBD49318, &qword_1BE0DE6A0);
    sub_1BD518AF4(&v151);
    v34 = &v156;
  }

  sub_1BD518AF4(v34);
  LOBYTE(v118) = v51;
  v112 = v50[4];
  v113 = v50[5];
  v115 = v50[7];
  v114 = v50[6];
  v108 = v50[0];
  v109 = v50[1];
  v111 = v50[3];
  v110 = v50[2];
  v35 = v50[9];
  a1[8] = v50[8];
  a1[9] = v35;
  a1[10].n128_u8[0] = v118;
  v36 = v113;
  a1[4] = v112;
  a1[5] = v36;
  v37 = v115;
  a1[6] = v114;
  a1[7] = v37;
  v38 = v109;
  *a1 = v108;
  a1[1] = v38;
  result = v111;
  a1[2] = v110;
  a1[3] = result;
  return result;
}

uint64_t sub_1BD5166F8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1BE04ECF4();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49280, &qword_1BE0DE568);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49288, &qword_1BE0DE570);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49290, &qword_1BE0DE578);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49298, &qword_1BE0DE580);
  sub_1BD518348();
  sub_1BE0504A4();
  *&v8[*(v6 + 36)] = 256;
  v16 = sub_1BD51840C();
  sub_1BE050AC4();
  sub_1BD0DE53C(v8, &qword_1EBD49280, &qword_1BE0DE568);
  sub_1BE051DD4();
  v28 = v6;
  v29 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BD518A50(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  v17 = v23;
  sub_1BE051134();
  (*(v24 + 8))(v5, v17);
  (*(v10 + 8))(v12, v9);
  v18 = sub_1BE051274();
  v19 = sub_1BE0501D4();
  v20 = &v15[*(v13 + 36)];
  *v20 = v18;
  v20[8] = v19;
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492D0, &unk_1BE0DE5A0);
  sub_1BD5184CC();
  sub_1BD0DE4F4(&qword_1EBD492E0, &qword_1EBD492D0, &unk_1BE0DE5A0, MEMORY[0x1E697C5E0]);
  sub_1BE051024();
  return sub_1BD0830C8(v15);
}

uint64_t sub_1BD516AD8(uint64_t a1)
{
  v117 = type metadata accessor for AddPostalAddressSheet(0);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE050464();
  v10 = sub_1BE0505F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v9, v11, v13, v15, v17, v18, v19, v20;
  sub_1BD0DDF10(v2, v4, (v6 & 1), v21, v22, v23, v24, v25);
  v8, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE050364();
  v33 = sub_1BE050544();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1BD0DDF10(v10, v12, (v14 & 1), v38, v40, v41, v42, v43);
  v16, v44, v45, v46, v47, v48, v49, v50;
  v51 = sub_1BE051224();
  sub_1BE050564();
  v51, v52, v53, v54, v55, v56, v57, v58;
  sub_1BD0DDF10(v33, v35, (v37 & 1), v59, v60, v61, v62, v63);
  v39, v64, v65, v66, v67, v68, v69, v70;
  if (*(a1 + *(v117 + 24) + 8))
  {
    sub_1BE048C84();
    v71 = sub_1BE0506C4();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_1BE04FC94();
    v78 = sub_1BE050574();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_1BD0DDF10(v71, v73, (v75 & 1), v83, v85, v86, v87, v88);
    v77, v89, v90, v91, v92, v93, v94, v95;
    v96 = sub_1BE050454();
    sub_1BE0505F4();
    v96, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DDF10(v78, v80, (v82 & 1), v104, v105, v106, v107, v108);
    v84, v109, v110, v111, v112, v113, v114, v115;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492B0, &unk_1BE0DE588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD492A8, &qword_1EBD492B0, &unk_1BE0DE588, MEMORY[0x1E6981F48]);
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD516E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AddPostalAddressSheet(0) + 28)) == 1)
  {
    sub_1BD515EE0(&v41);
    PKEdgeInsetsMake();
    v62 = v49;
    v63 = v50;
    v64 = v51;
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v61 = v48;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v57 = v44;
  }

  else
  {
    sub_1BD518A2C(&v54);
  }

  type metadata accessor for PostalAddressEditingModel(0);
  sub_1BD518A50(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
  sub_1BE048964();
  v3 = sub_1BE04E954();
  v5 = v4;
  v36 = v62;
  v37 = v63;
  v32 = v58;
  v33 = v59;
  v34 = v60;
  v35 = v61;
  v28 = v54;
  v29 = v55;
  v30 = v56;
  v31 = v57;
  v6 = v63;
  v39[8] = v62;
  v39[9] = v63;
  v39[4] = v58;
  v39[5] = v59;
  v39[6] = v60;
  v39[7] = v61;
  v39[0] = v54;
  v39[1] = v55;
  v7 = v57;
  v39[2] = v56;
  v39[3] = v57;
  v49 = v62;
  v50 = v63;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v48 = v61;
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v44 = v57;
  v8 = v61;
  *(a2 + 128) = v62;
  *(a2 + 144) = v6;
  v9 = v46;
  v10 = v47;
  *(a2 + 64) = v45;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *(a2 + 112) = v8;
  v11 = v42;
  v12 = v43;
  *a2 = v41;
  *(a2 + 16) = v11;
  v38 = v64;
  v40 = v64;
  LOBYTE(v51) = v64;
  v13 = v51;
  *(a2 + 32) = v12;
  *(a2 + 48) = v7;
  *(a2 + 160) = v13;
  *(a2 + 168) = v3;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = v4;
  *(a2 + 200) = 257;
  *(a2 + 202) = 1;
  sub_1BD0DE19C(v39, v52, &qword_1EBD49310, &qword_1BE0DE698);
  sub_1BE048964();
  sub_1BD0D44B8(0, 0);
  v5, v14, v15, v16, v17, v18, v19, v20;
  sub_1BD0D4744(0, 0, v21, v22, v23, v24, v25, v26);
  v52[8] = v36;
  v52[9] = v37;
  v53 = v38;
  v52[4] = v32;
  v52[5] = v33;
  v52[6] = v34;
  v52[7] = v35;
  v52[0] = v28;
  v52[1] = v29;
  v52[2] = v30;
  v52[3] = v31;
  return sub_1BD0DE53C(v52, &qword_1EBD49310, &qword_1BE0DE698);
}

uint64_t sub_1BD5170B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492E8, &qword_1BE0DE5B0);
  MEMORY[0x1EEE9AC00](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F0, &qword_1BE0DE5B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F8, &unk_1BE0DE5C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  sub_1BE04FB04();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD35CEE0();
  sub_1BE04E424();
  sub_1BE04FB14();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49300, &qword_1BE105510);
  sub_1BD51865C();
  sub_1BE04E424();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_1BE04F854();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BD5173CC(uint64_t a1)
{
  v2 = type metadata accessor for AddPostalAddressSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  sub_1BD518718(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BD51877C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1BE051704();
  sub_1BE052434();
  v12 = v11;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v12, v13, v14, v15, v16, v17, v18, v19;
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD51760C()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AddPostalAddressSheet(0);
  v4 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BD84367C(v4);

  sub_1BD515CE0(v3);
  sub_1BE04E654();
  return (*(v1 + 8))(v3, v0);
}

id sub_1BD51771C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1BD517888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for AddPostalAddressSheet(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v46 - v10;
  sub_1BD518718(a1, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1BD51877C(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1BE051704();
  v14 = *(a1 + *(v4 + 44) + 8);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(v50);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v51[10] = v50[10];
  v51[11] = v50[11];
  v51[12] = v50[12];
  v51[6] = v50[6];
  v51[7] = v50[7];
  v51[8] = v50[8];
  v51[9] = v50[9];
  v51[2] = v50[2];
  v51[3] = v50[3];
  v51[4] = v50[4];
  v51[5] = v50[5];
  v51[0] = v50[0];
  v51[1] = v50[1];
  LOBYTE(KeyPath) = sub_1BD4F7DB0();
  sub_1BD4FBC18(v51);
  if ((KeyPath & 1) != 0 && sub_1BD20B8F0(*(v14 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel)))
  {
    sub_1BD20BAFC();
    v32 = v31 ^ 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v32 & 1;
  (*(v7 + 32))(v11, v9, v48);
  v35 = &v11[*(v47 + 36)];
  *v35 = v33;
  v35[1] = sub_1BD10DF54;
  v35[2] = v34;
  sub_1BE052434();
  v37 = v36;
  sub_1BD3BAA6C();
  sub_1BE050DE4();
  v37, v38, v39, v40, v41, v42, v43, v44;
  return sub_1BD0DE53C(v11, &qword_1EBD44590, &qword_1BE0DE5D0);
}

uint64_t sub_1BD517C3C(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v139 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AddPostalAddressSheet(0);
  v6 = *(a1 + *(v5 + 36) + 8);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v143);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v142[10] = v153;
  v142[11] = v154;
  v142[12] = v155;
  v142[6] = v149;
  v142[7] = v150;
  v142[8] = v151;
  v142[9] = v152;
  v142[2] = v145;
  v142[3] = v146;
  v142[4] = v147;
  v142[5] = v148;
  v142[0] = v143;
  v142[1] = v144;
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_1BE04D8B4(v141);
  v23, v25, v26, v27, v28, v29, v30, v31;
  v24, v32, v33, v34, v35, v36, v37, v38;
  v153 = v141[10];
  v154 = v141[11];
  v155 = v141[12];
  v149 = v141[6];
  v150 = v141[7];
  v151 = v141[8];
  v152 = v141[9];
  v145 = v141[2];
  v146 = v141[3];
  v147 = v141[4];
  v148 = v141[5];
  v143 = v141[0];
  v144 = v141[1];
  LOBYTE(v23) = sub_1BD4F7DB0();
  sub_1BD4FBC18(&v143);
  if ((v23 & 1) == 0)
  {
    return sub_1BD4FBC18(v142);
  }

  v138 = v2;
  v39 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel;
  if (!sub_1BD20B8F0(*(v6 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel)))
  {
    return sub_1BD4FBC18(v142);
  }

  sub_1BD20BAFC();
  if ((v40 & 1) == 0 || !sub_1BD4F7DB0())
  {
    return sub_1BD4FBC18(v142);
  }

  v137 = sub_1BE052434();
  v42 = v41;
  v43 = *(v6 + v39);
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(v141);
  v44, v46, v47, v48, v49, v50, v51, v52;
  v45, v53, v54, v55, v56, v57, v58, v59;
  v60 = *&v141[0];
  [*&v141[0] copy];

  sub_1BE053624();
  swift_unknownObjectRelease();
  v43, v61, v62, v63, v64, v65, v66, v67;
  sub_1BD5187F8();
  swift_dynamicCast();
  v68 = v140[0];
  v69 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v70 = sub_1BE052404();
  v42, v71, v72, v73, v74, v75, v76, v77;
  v78 = [v69 initWithLabel:v70 value:v68];

  sub_1BD4F7884(v141);
  v79 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1BE0B7020;
  *(v80 + 32) = v78;
  v137 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v81 = sub_1BE052724();
  v80, v82, v83, v84, v85, v86, v87, v88;
  [v79 setPostalAddresses_];

  v89 = sub_1BE052404();
  [v79 setGivenName_];

  v90 = sub_1BE052404();
  sub_1BD4F82D4(v141);
  [v79 setFamilyName_];

  v91 = *(v6 + v39);
  v92 = swift_getKeyPath();
  v93 = swift_getKeyPath();
  v94 = v79;
  sub_1BE048964();
  sub_1BE04D8B4(v140);
  v92, v95, v96, v97, v98, v99, v100, v101;
  v93, v102, v103, v104, v105, v106, v107, v108;
  v109 = v140[0];
  [v140[0] copy];

  sub_1BE053624();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v140, v110, v111, v112, v113, v114, v115, v116);
  LOBYTE(v109) = v91[OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource];
  v91, v117, v118, v119, v120, v121, v122, v123;
  sub_1BD6B04D8(v109);
  v125 = v124;
  v126 = sub_1BE052404();
  v125, v127, v128, v129, v130, v131, v132, v133;
  [v94 setValueSource_];

  (*(a1 + *(v5 + 40)))(v94);
  v134 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BD84367C(v134);

  sub_1BD515CE0(v4);
  sub_1BE04E654();
  sub_1BD4FBC18(v142);

  return (*(v139 + 8))(v4, v138);
}

id sub_1BD5181D0@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1BD518348()
{
  result = qword_1EBD492A0;
  if (!qword_1EBD492A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49298, &qword_1BE0DE580);
    sub_1BD0DE4F4(&qword_1EBD492A8, &qword_1EBD492B0, &unk_1BE0DE588, MEMORY[0x1E6981F48]);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492A0);
  }

  return result;
}

unint64_t sub_1BD51840C()
{
  result = qword_1EBD492B8;
  if (!qword_1EBD492B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49280, &qword_1BE0DE568);
    sub_1BD0DE4F4(&qword_1EBD492C0, &qword_1EBD492C8, &qword_1BE0DE598, MEMORY[0x1E697CCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492B8);
  }

  return result;
}

unint64_t sub_1BD5184CC()
{
  result = qword_1EBD492D8;
  if (!qword_1EBD492D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49290, &qword_1BE0DE578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49288, &qword_1BE0DE570);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49280, &qword_1BE0DE568);
    sub_1BD51840C();
    swift_getOpaqueTypeConformance2();
    sub_1BD518A50(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492D8);
  }

  return result;
}

unint64_t sub_1BD51865C()
{
  result = qword_1EBD49308;
  if (!qword_1EBD49308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49300, &qword_1BE105510);
    sub_1BD3BAA6C();
    sub_1BD518A50(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49308);
  }

  return result;
}

uint64_t sub_1BD518718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddPostalAddressSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD51877C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddPostalAddressSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5187F8()
{
  result = qword_1EBD3DAC8;
  if (!qword_1EBD3DAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3DAC8);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{
  v1 = type metadata accessor for AddPostalAddressSheet(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + v1[5] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v3 + v1[6] + 8), v19, v20, v21, v22, v23, v24, v25;
  *(v3 + v1[9] + 8), v26, v27, v28, v29, v30, v31, v32;
  *(v3 + v1[10] + 8), v33, v34, v35, v36, v37, v38, v39;

  return swift_deallocObject();
}

uint64_t sub_1BD5189B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddPostalAddressSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1BD518A2C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

uint64_t sub_1BD518A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD518B60()
{
  result = qword_1EBD49330;
  if (!qword_1EBD49330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49330);
  }

  return result;
}

unint64_t sub_1BD518BB4()
{
  result = qword_1EBD49338;
  if (!qword_1EBD49338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49338);
  }

  return result;
}

void sub_1BD518C08(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD51C9A0();
    sub_1BD51C9EC(&qword_1EBD49498, sub_1BD51C9A0, MEMORY[0x1E69E81B8]);
    sub_1BE052A74();
    v2 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    sub_1BE048C84();
    v8 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v13 = v8;
  v14 = v9;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1BE053744() || (sub_1BD51C9A0(), swift_dynamicCast(), v17 = v28, v8 = v13, v9 = v14, !v28))
      {
LABEL_25:
        sub_1BD0D45FC(v2, v6, v7, v13, v14, v3, v4, v5);
        return;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v8 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v9 = (v16 - 1) & v16;
    v17 = *(*(v2 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_25;
    }

LABEL_18:
    v18 = [v17 type];

    v13 = v8;
    v14 = v9;
    if (v18 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1BD1D9E10(0, *(v22 + 2) + 1, 1, v22, v19, v3, v4, v5);
      }

      v21 = *(v22 + 2);
      v20 = *(v22 + 3);
      if (v21 >= v20 >> 1)
      {
        v22 = sub_1BD1D9E10((v20 > 1), v21 + 1, 1, v22, v19, v3, v4, v5);
      }

      *(v22 + 2) = v21 + 1;
      v22[v21 + 32] = v18;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v8 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      v14 = 0;
      goto LABEL_25;
    }

    v16 = *&v6[8 * v8];
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD518E98()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB228);
  __swift_project_value_buffer(v6, qword_1EBDAB228);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

__n128 sub_1BD5190AC@<Q0>(uint64_t a1@<X8>)
{
  sub_1BE048874();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BD519100(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v2;
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(a1 + 64);
  v11 = *(a1 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1BD0D7104(v12, v6);
  sub_1BE048884();
  return sub_1BD0D71B4(v12);
}

uint64_t (*sub_1BD51917C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

void sub_1BD5191F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1BD51923C()
{
  result = qword_1EBD49340;
  if (!qword_1EBD49340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49340);
  }

  return result;
}

unint64_t sub_1BD519290()
{
  result = qword_1EBD49348;
  if (!qword_1EBD49348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49348);
  }

  return result;
}

uint64_t sub_1BD5192E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD51C8A4();
  v5 = sub_1BD51AC68();

  return MEMORY[0x1EEDB3D50](a1, v4, a2, v5);
}

unint64_t sub_1BD519350()
{
  result = qword_1EBD49350;
  if (!qword_1EBD49350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49350);
  }

  return result;
}

unint64_t sub_1BD5193A8()
{
  result = qword_1EBD49358;
  if (!qword_1EBD49358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49358);
  }

  return result;
}

uint64_t sub_1BD519484(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD51C8A4();
  v7 = sub_1BD51C8F8();
  v8 = sub_1BD51AC68();
  *v5 = v2;
  v5[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3D58](a1, a2, v6, v7, v8);
}

uint64_t sub_1BD519558()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1BD519660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD51BF10();
  *a1 = result;
  return result;
}

uint64_t sub_1BD519688(uint64_t a1)
{
  v2 = sub_1BD51923C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD5196C8()
{
  result = qword_1EBD49360;
  if (!qword_1EBD49360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49360);
  }

  return result;
}

unint64_t sub_1BD519720()
{
  result = qword_1EBD49368;
  if (!qword_1EBD49368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49368);
  }

  return result;
}

uint64_t sub_1BD519774()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49408, &qword_1BE0DED38);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49410, &qword_1BE0DED40);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49400, &qword_1BE0DED30);
  __swift_allocate_value_buffer(v5, qword_1EBDAB240);
  __swift_project_value_buffer(v5, qword_1EBDAB240);
  sub_1BD0D7160();
  sub_1BE048E64();
  sub_1BE048E54();
  (*(v1 + 104))(v3, *MEMORY[0x1E695A520], v0);
  sub_1BE048E44();
  (*(v1 + 8))(v3, v0);
  sub_1BE048E54();
  return sub_1BE048E74();
}