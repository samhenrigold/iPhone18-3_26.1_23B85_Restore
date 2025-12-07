unint64_t sub_22E45F528(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22E47CD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22E466F68(&qword_27DA641E8, MEMORY[0x277CC9610]);
      v15 = sub_22E47CDA4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_22E45F6D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E45F83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E45F9B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64250, &qword_22E47DC00);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_22E4658E4(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_22E45FB94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64248, &qword_22E47DBF8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_22E4658E4(&v31, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 104 * v16;
      v20 = *(v18 + 64);
      v19 = *(v18 + 80);
      v21 = *(v18 + 48);
      v37 = *(v18 + 96);
      v35 = v20;
      v36 = v19;
      v34 = v21;
      v23 = *(v18 + 16);
      v22 = *(v18 + 32);
      v31 = *v18;
      v32 = v23;
      v33 = v22;
      *(*(v4 + 48) + 4 * v16) = v17;
      v24 = *(v4 + 56) + 104 * v16;
      v25 = v31;
      v26 = v33;
      *(v24 + 16) = v32;
      *(v24 + 32) = v26;
      *v24 = v25;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      *(v24 + 96) = v37;
      *(v24 + 64) = v28;
      *(v24 + 80) = v29;
      *(v24 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_22E45FD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64238, &qword_22E47DBE8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E45FED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64210, &qword_22E47DBC0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E460048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64218, &qword_22E47DBC8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22E4601AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E46032C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22E4604A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22E47CFB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

  return result;
}

void *sub_22E460604()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641F0, &qword_22E47DBA0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_22E46076C()
{
  v1 = v0;
  v2 = type metadata accessor for CustomSymbol(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22E47CD64();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
  v5 = *v0;
  v6 = sub_22E47CFB4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_22E466E28(v26 + v28, v37, type metadata accessor for CustomSymbol);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_22E466E90(v29, *(v18 + 56) + v28, type metadata accessor for CustomSymbol);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_22E460A90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22E47D0F4();
  sub_22E47CE24();
  v8 = sub_22E47D124();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22E47D054() & 1) != 0)
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

    sub_22E461C60(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22E460BE0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_22E47D0F4();
  sub_22E47D114();
  v6 = sub_22E47D124();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_22E461DE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22E460CD8(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  MEMORY[0x28223BE20](v58);
  v5 = &v44 - v4;
  v6 = sub_22E47CD64();
  v57 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for SymbolKey(0);
  v56 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v44 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v45 = &v44 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v46 = v2;
  v51 = *v2;
  sub_22E47D0F4();
  v59 = a2;
  sub_22E466E28(a2, v24, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v57;
    (*(v57 + 32))(v10, v24, v6);
    MEMORY[0x2318E7080](1);
    sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
    sub_22E47CD84();
    (*(v25 + 8))(v10, v6);
  }

  else
  {
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
    v25 = v57;
  }

  v26 = sub_22E47D124();
  v27 = -1 << *(v51 + 32);
  v28 = v26 & ~v27;
  v57 = v51 + 56;
  if (((*(v51 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_16:
    v39 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v59;
    v42 = v45;
    sub_22E466E28(v59, v45, type metadata accessor for SymbolKey);
    v60 = *v39;
    sub_22E461F2C(v42, v28, isUniquelyReferenced_nonNull_native);
    *v39 = v60;
    sub_22E466E90(v41, v47, type metadata accessor for SymbolKey);
    return 1;
  }

  v54 = v6;
  v55 = ~v27;
  v56 = *(v56 + 72);
  v53 = (v25 + 8);
  v48 = (v25 + 32);
  v49 = v11;
  v29 = v51;
  while (1)
  {
    v30 = v56 * v28;
    sub_22E466E28(*(v29 + 48) + v56 * v28, v20, type metadata accessor for SymbolKey);
    v31 = *(v58 + 48);
    sub_22E466E28(v20, v5, type metadata accessor for SymbolKey);
    sub_22E466E28(v59, &v5[v31], type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22E466E28(v5, v14, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v20;
      v33 = v17;
      v34 = v14;
      v35 = v50;
      v36 = v54;
      (*v48)(v50, &v5[v31], v54);
      v52 = sub_22E47CD54();
      v37 = *v53;
      v38 = v35;
      v14 = v34;
      v17 = v33;
      v20 = v32;
      v29 = v51;
      (*v53)(v38, v36);
      sub_22E466DCC(v20);
      v37(v14, v36);
      if (v52)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_22E466DCC(v20);
    (*v53)(v14, v54);
LABEL_7:
    sub_22E4545D0(v5, &qword_27DA641B8, &qword_22E47EC40);
LABEL_8:
    v28 = (v28 + 1) & v55;
    if (((*(v57 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_22E466DCC(v20);
  sub_22E466E28(v5, v17, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_7;
  }

  if (*v17 != *&v5[v31])
  {
LABEL_15:
    sub_22E466DCC(v5);
    goto LABEL_8;
  }

LABEL_17:
  sub_22E466DCC(v5);
  sub_22E466DCC(v59);
  sub_22E466E28(*(v29 + 48) + v30, v47, type metadata accessor for SymbolKey);
  return 0;
}

uint64_t sub_22E461320(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  result = sub_22E47CF64();
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
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E461580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF64();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

uint64_t sub_22E4617D0(uint64_t a1)
{
  v2 = v1;
  v43 = sub_22E47CD64();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolKey(0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  result = sub_22E47CF64();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v1;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = (v3 + 8);
    v41 = (v3 + 32);
    v18 = result + 56;
    v19 = v46;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = *(v9 + 48);
      v47 = *(v44 + 72);
      v25 = v48;
      sub_22E466E90(v24 + v47 * (v21 | (v12 << 6)), v48, type metadata accessor for SymbolKey);
      sub_22E47D0F4();
      sub_22E466E28(v25, v19, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v9;
        v27 = v42;
        v28 = v19;
        v29 = v43;
        (*v41)(v42, v28, v43);
        MEMORY[0x2318E7080](1);
        sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
        sub_22E47CD84();
        v30 = v27;
        v9 = v26;
        (*v40)(v30, v29);
      }

      else
      {
        MEMORY[0x2318E7080](0);
        sub_22E47D114();
      }

      result = sub_22E47D124();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v19 = v46;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_22E466E90(v48, *(v11 + 48) + v20 * v47, type metadata accessor for SymbolKey);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v9 + 32);
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    v2 = v39;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22E461C60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22E461320(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22E462518();
      goto LABEL_16;
    }

    sub_22E4629CC(v8 + 1);
  }

  v10 = *v4;
  sub_22E47D0F4();
  sub_22E47CE24();
  result = sub_22E47D124();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22E47D054();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22E47D084();
  __break(1u);
  return result;
}

uint64_t sub_22E461DE0(uint64_t result, unint64_t a2, char a3)
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
    sub_22E461580(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22E462674();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22E462C04(v5 + 1);
  }

  v8 = *v3;
  sub_22E47D0F4();
  sub_22E47D114();
  result = sub_22E47D124();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v11 + 48) + 4 * a2) = v4;
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
  result = sub_22E47D084();
  __break(1u);
  return result;
}

uint64_t sub_22E461F2C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  MEMORY[0x28223BE20](v57);
  v8 = &v47 - v7;
  v52 = sub_22E47CD64();
  v9 = *(v52 - 8);
  v10 = MEMORY[0x28223BE20](v52);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for SymbolKey(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v51 = &v47 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v25 = *(*v4 + 16);
  v26 = *(*v4 + 24);
  v47 = v15;
  v48 = v4;
  if (v26 <= v25 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22E4617D0(v25 + 1);
    }

    else
    {
      if (v26 > v25)
      {
        sub_22E4627B4();
        goto LABEL_23;
      }

      sub_22E462E24(v25 + 1);
    }

    v56 = *v4;
    sub_22E47D0F4();
    sub_22E466E28(v58, v24, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v24;
      v28 = v52;
      (*(v9 + 32))(v13, v27, v52);
      MEMORY[0x2318E7080](1);
      sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
      sub_22E47CD84();
      (*(v9 + 8))(v13, v28);
    }

    else
    {
      MEMORY[0x2318E7080](0);
      sub_22E47D114();
    }

    v29 = sub_22E47D124();
    v30 = -1 << *(v56 + 32);
    a2 = v29 & ~v30;
    v55 = v56 + 56;
    if ((*(v56 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = ~v30;
      v31 = *(v15 + 72);
      v32 = (v9 + 8);
      v49 = (v9 + 32);
      v33 = v53;
      v34 = v51;
      do
      {
        sub_22E466E28(*(v56 + 48) + v31 * a2, v22, type metadata accessor for SymbolKey);
        v35 = *(v57 + 48);
        sub_22E466E28(v22, v8, type metadata accessor for SymbolKey);
        sub_22E466E28(v58, &v8[v35], type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E466E28(v8, v33, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = v50;
            v37 = v52;
            (*v49)(v50, &v8[v35], v52);
            v38 = sub_22E47CD54();
            v39 = *v32;
            v40 = v36;
            v33 = v53;
            (*v32)(v40, v37);
            sub_22E466DCC(v22);
            v41 = v37;
            v34 = v51;
            v39(v33, v41);
            if (v38)
            {
              goto LABEL_26;
            }

LABEL_22:
            sub_22E466DCC(v8);
            goto LABEL_15;
          }

          sub_22E466DCC(v22);
          (*v32)(v33, v52);
        }

        else
        {
          sub_22E466DCC(v22);
          sub_22E466E28(v8, v34, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            if (*v34 == *&v8[v35])
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }
        }

        sub_22E4545D0(v8, &qword_27DA641B8, &qword_22E47EC40);
LABEL_15:
        a2 = (a2 + 1) & v54;
      }

      while (((*(v55 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v42 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22E466E90(v58, *(v42 + 48) + *(v47 + 72) * a2, type metadata accessor for SymbolKey);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_26:
    sub_22E466DCC(v8);
    result = sub_22E47D084();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

void *sub_22E462518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  v2 = *v0;
  v3 = sub_22E47CF54();
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

  return result;
}

void *sub_22E462674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  v2 = *v0;
  v3 = sub_22E47CF54();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_22E4627B4()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolKey(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  v6 = *v0;
  v7 = sub_22E47CF54();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_22E466E28(*(v6 + 48) + v21, v5, type metadata accessor for SymbolKey);
        result = sub_22E466E90(v5, *(v8 + 48) + v21, type metadata accessor for SymbolKey);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_22E4629CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  result = sub_22E47CF64();
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
      sub_22E47D0F4();

      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E462C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF64();
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
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
      *(*(v5 + 48) + 4 * v12) = v16;
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

uint64_t sub_22E462E24(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22E47CD64();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolKey(0);
  v43 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v37 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  v10 = sub_22E47CF64();
  result = v9;
  if (*(v9 + 16))
  {
    v37 = v1;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    v18 = v10 + 56;
    v19 = v44;
    v42 = result;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = *(result + 48);
      v45 = *(v43 + 72);
      v25 = v46;
      sub_22E466E28(v24 + v45 * (v21 | (v12 << 6)), v46, type metadata accessor for SymbolKey);
      sub_22E47D0F4();
      sub_22E466E28(v25, v19, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v5;
        v28 = v40;
        v27 = v41;
        (*v39)(v40, v19, v41);
        MEMORY[0x2318E7080](1);
        sub_22E466F68(&qword_27DA641C0, MEMORY[0x277CC9600]);
        sub_22E47CD84();
        v29 = v28;
        v5 = v26;
        (*v38)(v29, v27);
      }

      else
      {
        MEMORY[0x2318E7080](0);
        sub_22E47D114();
      }

      result = sub_22E47D124();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v44;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v44;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_22E466E90(v46, *(v10 + 48) + v20 * v45, type metadata accessor for SymbolKey);
      ++*(v10 + 16);
      result = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v37;
        goto LABEL_29;
      }

      v23 = *(v13 + 8 * v12);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22E46328C(char **a1, __int128 *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22E47701C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_22E46336C(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_22E463300(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22E477030(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22E463470(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22E46336C(uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  result = sub_22E47D034();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_22E47CEA4();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_22E463A6C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_22E463568(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_22E463470(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22E47D034();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22E47CEA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22E4645BC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22E46399C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22E463568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, _OWORD *a5)
{
  if (a3 != a2)
  {
    v71 = *a4;
    v6 = (v71 + 4 * a3 - 4);
    v7 = result - a3 + 1;
LABEL_5:
    v49 = a3;
    v8 = *(v71 + 4 * a3);
    v47 = v7;
    v48 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = a5[7];
      v67 = a5[6];
      v68 = v10;
      v11 = a5[9];
      v69 = a5[8];
      v70 = v11;
      v12 = a5[3];
      v63 = a5[2];
      v64 = v12;
      v13 = a5[5];
      v65 = a5[4];
      v66 = v13;
      v14 = a5[1];
      v62[0] = *a5;
      v62[1] = v14;
      v15 = v64;
      if (!v64)
      {
        break;
      }

      v16 = *(&v64 + 1);
      sub_22E466FB4(v62, v53);
      sub_22E467064(v15, v16);
      v17 = v15(v8);
      v19 = v18;
      sub_22E453664(v15, v16);
      result = sub_22E467010(v62);
      if (v19)
      {
        goto LABEL_15;
      }

LABEL_16:
      v27 = a5[7];
      v58 = a5[6];
      v59 = v27;
      v28 = a5[9];
      v60 = a5[8];
      v61 = v28;
      v29 = a5[3];
      v54 = a5[2];
      v55 = v29;
      v30 = a5[5];
      v56 = a5[4];
      v57 = v30;
      v31 = a5[1];
      v53[0] = *a5;
      v53[1] = v31;
      v32 = v55;
      if (v55)
      {
        v33 = *(&v55 + 1);
        sub_22E466FB4(v53, v52);
        sub_22E467064(v32, v33);
        v34 = v32(v9);
        v36 = v35;
        sub_22E453664(v32, v33);
        result = sub_22E467010(v53);
        if ((v36 & 1) == 0)
        {
          if (v17 >= v34)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v37 = *(&v53[0] + 1);
        if (*(*(&v53[0] + 1) + 16))
        {
          result = sub_22E45C22C(v9);
          if (v38)
          {
            v39 = *(&v54 + 1);
            if (*(*(&v54 + 1) + 16))
            {
              v40 = *(v37 + 56) + 104 * result;
              v41 = *(v40 + 16);
              v51 = *(v40 + 8);
              sub_22E466FB4(v53, v52);

              v42 = sub_22E450B0C(v51, v41);
              if (v43)
              {
                v44 = *(*(v39 + 56) + 8 * v42);

                result = sub_22E467010(v53);
                if (v17 >= v44)
                {
                  goto LABEL_4;
                }

                goto LABEL_28;
              }

              result = sub_22E467010(v53);
            }
          }
        }
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (!v71)
      {
        __break(1u);
        return result;
      }

      v45 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v45;
      if (!v7)
      {
LABEL_4:
        a3 = v49 + 1;
        v6 = v48 + 1;
        v7 = v47 - 1;
        if (v49 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      --v6;
      ++v7;
    }

    v20 = *(&v62[0] + 1);
    if (*(*(&v62[0] + 1) + 16))
    {
      result = sub_22E45C22C(v8);
      if (v21)
      {
        v22 = *(&v63 + 1);
        if (*(*(&v63 + 1) + 16))
        {
          v23 = *(v20 + 56) + 104 * result;
          v24 = *(v23 + 16);
          v50 = *(v23 + 8);
          sub_22E466FB4(v62, v53);

          v25 = sub_22E450B0C(v50, v24);
          if (v26)
          {
            v17 = *(*(v22 + 56) + 8 * v25);

            result = sub_22E467010(v62);
            goto LABEL_16;
          }

          result = sub_22E467010(v62);
        }
      }
    }

LABEL_15:
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_22E46399C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22E47D054(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22E463A6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v7 = v5;
  v173 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_138:
    v6 = *v173;
    if (!*v173)
    {
      goto LABEL_177;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_140;
    }

    goto LABEL_171;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (2)
  {
    v174 = v11;
    v175 = v10;
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      v13 = v10 + 1;
      goto LABEL_36;
    }

    v12 = *a3;
    LODWORD(v208) = *(*a3 + 4 * v11);
    LODWORD(v198) = *(v12 + 4 * v10);
    result = sub_22E470604(&v208, &v198, a5);
    v182 = result;
    if (v7)
    {
    }

    v13 = v10 + 2;
    if (v10 + 2 >= v9)
    {
      goto LABEL_33;
    }

    v14 = (v12 + 4 * v10 + 8);
    v179 = v9;
    do
    {
      v18 = *(v14 - 1);
      v17 = *v14;
      v19 = a5[7];
      v214 = a5[6];
      v215 = v19;
      v20 = a5[9];
      v216 = a5[8];
      v217 = v20;
      v21 = a5[3];
      v210 = a5[2];
      v211 = v21;
      v22 = a5[5];
      v212 = a5[4];
      v213 = v22;
      v23 = a5[1];
      v208 = *a5;
      v209 = v23;
      v24 = v211;
      if (!v211)
      {
        v29 = *(&v208 + 1);
        if (*(*(&v208 + 1) + 16))
        {
          result = sub_22E45C22C(v17);
          if (v30)
          {
            v31 = *(&v210 + 1);
            v32 = *(v29 + 56) + 104 * result;
            v33 = *v32;
            v34 = *(v32 + 32);
            v185 = *(v32 + 16);
            v186 = v34;
            v35 = *(v32 + 48);
            v36 = *(v32 + 64);
            v37 = *(v32 + 80);
            v190 = *(v32 + 96);
            v188 = v36;
            v189 = v37;
            v187 = v35;
            v184 = v33;
            if (*(*(&v210 + 1) + 16))
            {
              v38 = *(&v184 + 1);
              v39 = v185;
              sub_22E466FB4(&v208, &v198);
              sub_22E4658E4(&v184, &v198);
              v40 = sub_22E450B0C(v38, v39);
              if (v41)
              {
                v26 = *(*(v31 + 56) + 8 * v40);
                sub_22E465940(&v184);
                result = sub_22E467010(&v208);
                goto LABEL_21;
              }

              sub_22E465940(&v184);
              result = sub_22E467010(&v208);
            }
          }
        }

LABEL_20:
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      v25 = *(&v211 + 1);
      sub_22E466FB4(&v208, &v198);
      sub_22E467064(v24, v25);
      v26 = v24(v17);
      v28 = v27;
      sub_22E453664(v24, v25);
      result = sub_22E467010(&v208);
      if (v28)
      {
        goto LABEL_20;
      }

LABEL_21:
      v42 = a5[7];
      v204 = a5[6];
      v205 = v42;
      v43 = a5[9];
      v206 = a5[8];
      v207 = v43;
      v44 = a5[3];
      v200 = a5[2];
      v201 = v44;
      v45 = a5[5];
      v202 = a5[4];
      v203 = v45;
      v46 = a5[1];
      v198 = *a5;
      v199 = v46;
      v6 = v201;
      if (v201)
      {
        v47 = *(&v201 + 1);
        sub_22E466FB4(&v198, &v184);
        sub_22E467064(v6, v47);
        v48 = (v6)(v18);
        v50 = v49;
        sub_22E453664(v6, v47);
        result = sub_22E467010(&v198);
        if (v50)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v6 = *(&v198 + 1);
        if (!*(*(&v198 + 1) + 16))
        {
          goto LABEL_9;
        }

        result = sub_22E45C22C(v18);
        if ((v51 & 1) == 0)
        {
          goto LABEL_9;
        }

        v52 = *(&v200 + 1);
        v53 = *(v6 + 7) + 104 * result;
        v54 = *v53;
        v55 = *(v53 + 32);
        v192 = *(v53 + 16);
        v193 = v55;
        v56 = *(v53 + 48);
        v57 = *(v53 + 64);
        v58 = *(v53 + 80);
        v197 = *(v53 + 96);
        v195 = v57;
        v196 = v58;
        v194 = v56;
        v191 = v54;
        if (!*(*(&v200 + 1) + 16))
        {
          goto LABEL_9;
        }

        v59 = *(&v191 + 1);
        v6 = v192;
        sub_22E466FB4(&v198, &v184);
        sub_22E4658E4(&v191, &v184);
        v60 = sub_22E450B0C(v59, v6);
        if ((v61 & 1) == 0)
        {
          sub_22E465940(&v191);
          result = sub_22E467010(&v198);
LABEL_9:
          v15 = v179;
          if (((v182 ^ (v26 == 0x7FFFFFFFFFFFFFFFLL)) & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_10;
        }

        v48 = *(*(v52 + 56) + 8 * v60);
        sub_22E465940(&v191);
        result = sub_22E467010(&v198);
      }

      v15 = v179;
      if ((v182 & 1) == v26 >= v48)
      {
LABEL_30:
        v11 = v13 - 1;
        goto LABEL_32;
      }

LABEL_10:
      ++v14;
      v16 = v13 + 1;
      v13 = v16;
    }

    while (v15 != v16);
    v11 = v16 - 1;
    v13 = v15;
LABEL_32:
    v10 = v175;
LABEL_33:
    if ((v182 & 1) == 0)
    {
LABEL_36:
      v11 = v174;
      goto LABEL_37;
    }

    if (v13 < v10)
    {
      goto LABEL_170;
    }

    if (v10 > v11)
    {
      goto LABEL_36;
    }

    v162 = v13 - 1;
    v163 = v10;
    v11 = v174;
    do
    {
      if (v163 != v162)
      {
        v165 = *a3;
        if (!*a3)
        {
          goto LABEL_174;
        }

        v166 = *(v165 + 4 * v163);
        *(v165 + 4 * v163) = *(v165 + 4 * v162);
        *(v165 + 4 * v162) = v166;
      }
    }

    while (++v163 < v162--);
LABEL_37:
    v62 = a3[1];
    if (v13 >= v62)
    {
      v10 = v13;
      goto LABEL_74;
    }

    if (__OFSUB__(v13, v175))
    {
      goto LABEL_167;
    }

    v10 = v13;
    if (v13 - v175 >= a4)
    {
      goto LABEL_74;
    }

    v63 = v175 + a4;
    if (__OFADD__(v175, a4))
    {
      goto LABEL_168;
    }

    if (v63 >= v62)
    {
      v63 = a3[1];
    }

    if (v63 < v175)
    {
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      result = sub_22E476624(v11);
      v11 = result;
LABEL_140:
      v218 = v11;
      v167 = v11;
      v11 = *(v11 + 16);
      if (v11 >= 2)
      {
        while (*a3)
        {
          v168 = *&v167[16 * v11];
          v169 = *&v167[16 * v11 + 24];
          sub_22E464B98((*a3 + 4 * v168), (*a3 + 4 * *&v167[16 * v11 + 16]), (*a3 + 4 * v169), v6, a5);
          if (v7)
          {
          }

          if (v169 < v168)
          {
            goto LABEL_164;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_22E476624(v167);
          }

          if (v11 - 2 >= *(v167 + 2))
          {
            goto LABEL_165;
          }

          v170 = &v167[16 * v11];
          *v170 = v168;
          *(v170 + 1) = v169;
          v218 = v167;
          result = sub_22E476598(v11 - 1);
          v167 = v218;
          v11 = *(v218 + 16);
          if (v11 <= 1)
          {
          }
        }

        goto LABEL_175;
      }
    }

    v64 = v175;
    v176 = v63;
    if (v13 == v63)
    {
LABEL_75:
      if (v10 < v64)
      {
        goto LABEL_166;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22E47671C(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v114 = v11;
      v115 = *(v11 + 16);
      v116 = v114;
      v117 = *(v114 + 24);
      v118 = v115 + 1;
      if (v115 >= v117 >> 1)
      {
        result = sub_22E47671C((v117 > 1), v115 + 1, 1, v116);
        v116 = result;
      }

      *(v116 + 16) = v118;
      v119 = v116 + 16 * v115;
      *(v119 + 32) = v175;
      *(v119 + 40) = v10;
      v120 = *v173;
      if (!*v173)
      {
        goto LABEL_176;
      }

      if (!v115)
      {
        v11 = v116;
LABEL_127:
        v9 = a3[1];
        if (v10 >= v9)
        {
          goto LABEL_138;
        }

        continue;
      }

      v11 = v116;
      while (1)
      {
        v121 = v118 - 1;
        if (v118 >= 4)
        {
          break;
        }

        if (v118 == 3)
        {
          v122 = *(v11 + 32);
          v123 = *(v11 + 40);
          v132 = __OFSUB__(v123, v122);
          v124 = v123 - v122;
          v125 = v132;
LABEL_96:
          if (v125)
          {
            goto LABEL_155;
          }

          v138 = (v11 + 16 * v118);
          v140 = *v138;
          v139 = v138[1];
          v141 = __OFSUB__(v139, v140);
          v142 = v139 - v140;
          v143 = v141;
          if (v141)
          {
            goto LABEL_158;
          }

          v144 = (v11 + 32 + 16 * v121);
          v146 = *v144;
          v145 = v144[1];
          v132 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v132)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v142, v147))
          {
            goto LABEL_162;
          }

          if (v142 + v147 >= v124)
          {
            if (v124 < v147)
            {
              v121 = v118 - 2;
            }

            goto LABEL_117;
          }

          goto LABEL_110;
        }

        v148 = (v11 + 16 * v118);
        v150 = *v148;
        v149 = v148[1];
        v132 = __OFSUB__(v149, v150);
        v142 = v149 - v150;
        v143 = v132;
LABEL_110:
        if (v143)
        {
          goto LABEL_157;
        }

        v151 = v11 + 16 * v121;
        v153 = *(v151 + 32);
        v152 = *(v151 + 40);
        v132 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v132)
        {
          goto LABEL_160;
        }

        if (v154 < v142)
        {
          goto LABEL_127;
        }

LABEL_117:
        v6 = v11;
        v11 = v121 - 1;
        if (v121 - 1 >= v118)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (!*a3)
        {
          goto LABEL_173;
        }

        v159 = *&v6[16 * v11 + 32];
        v160 = *&v6[16 * v121 + 40];
        sub_22E464B98((*a3 + 4 * v159), (*a3 + 4 * *&v6[16 * v121 + 32]), (*a3 + 4 * v160), v120, a5);
        if (v7)
        {
        }

        if (v160 < v159)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22E476624(v6);
        }

        if (v11 >= *(v6 + 2))
        {
          goto LABEL_152;
        }

        v161 = &v6[16 * v11];
        *(v161 + 4) = v159;
        *(v161 + 5) = v160;
        v218 = v6;
        result = sub_22E476598(v121);
        v11 = v218;
        v118 = *(v218 + 16);
        if (v118 <= 1)
        {
          goto LABEL_127;
        }
      }

      v126 = v11 + 32 + 16 * v118;
      v127 = *(v126 - 64);
      v128 = *(v126 - 56);
      v132 = __OFSUB__(v128, v127);
      v129 = v128 - v127;
      if (v132)
      {
        goto LABEL_153;
      }

      v131 = *(v126 - 48);
      v130 = *(v126 - 40);
      v132 = __OFSUB__(v130, v131);
      v124 = v130 - v131;
      v125 = v132;
      if (v132)
      {
        goto LABEL_154;
      }

      v133 = (v11 + 16 * v118);
      v135 = *v133;
      v134 = v133[1];
      v132 = __OFSUB__(v134, v135);
      v136 = v134 - v135;
      if (v132)
      {
        goto LABEL_156;
      }

      v132 = __OFADD__(v124, v136);
      v137 = v124 + v136;
      if (v132)
      {
        goto LABEL_159;
      }

      if (v137 >= v129)
      {
        v155 = (v11 + 32 + 16 * v121);
        v157 = *v155;
        v156 = v155[1];
        v132 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v132)
        {
          goto LABEL_163;
        }

        if (v124 < v158)
        {
          v121 = v118 - 2;
        }

        goto LABEL_117;
      }

      goto LABEL_96;
    }

    break;
  }

  v65 = v13;
  v171 = v7;
  v183 = *a3;
  v66 = (*a3 + 4 * v13 - 4);
  v67 = v175 - v13 + 1;
LABEL_47:
  v178 = v66;
  v180 = v65;
  v177 = v67;
  while (1)
  {
    v69 = v66->u32[0];
    v68 = v66->u32[1];
    v70 = a5[7];
    v214 = a5[6];
    v215 = v70;
    v71 = a5[9];
    v216 = a5[8];
    v217 = v71;
    v72 = a5[3];
    v210 = a5[2];
    v211 = v72;
    v73 = a5[5];
    v212 = a5[4];
    v213 = v73;
    v74 = a5[1];
    v208 = *a5;
    v209 = v74;
    v75 = v211;
    if (!v211)
    {
      v80 = *(&v208 + 1);
      if (*(*(&v208 + 1) + 16))
      {
        result = sub_22E45C22C(v68);
        if (v81)
        {
          v82 = *(&v210 + 1);
          v83 = *(v80 + 56) + 104 * result;
          v84 = *v83;
          v85 = *(v83 + 32);
          v185 = *(v83 + 16);
          v186 = v85;
          v86 = *(v83 + 48);
          v87 = *(v83 + 64);
          v88 = *(v83 + 80);
          v190 = *(v83 + 96);
          v188 = v87;
          v189 = v88;
          v187 = v86;
          v184 = v84;
          if (*(*(&v210 + 1) + 16))
          {
            v89 = *(&v184 + 1);
            v90 = v185;
            sub_22E466FB4(&v208, &v198);
            sub_22E4658E4(&v184, &v198);
            v91 = sub_22E450B0C(v89, v90);
            if (v92)
            {
              v77 = *(*(v82 + 56) + 8 * v91);
              sub_22E465940(&v184);
              result = sub_22E467010(&v208);
              goto LABEL_58;
            }

            sub_22E465940(&v184);
            result = sub_22E467010(&v208);
          }
        }
      }

LABEL_57:
      v77 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_58;
    }

    v76 = *(&v211 + 1);
    sub_22E466FB4(&v208, &v198);
    sub_22E467064(v75, v76);
    v77 = v75(v68);
    v79 = v78;
    sub_22E453664(v75, v76);
    result = sub_22E467010(&v208);
    if (v79)
    {
      goto LABEL_57;
    }

LABEL_58:
    v93 = a5[7];
    v204 = a5[6];
    v205 = v93;
    v94 = a5[9];
    v206 = a5[8];
    v207 = v94;
    v95 = a5[3];
    v200 = a5[2];
    v201 = v95;
    v96 = a5[5];
    v202 = a5[4];
    v203 = v96;
    v97 = a5[1];
    v198 = *a5;
    v199 = v97;
    v6 = v201;
    if (v201)
    {
      v98 = *(&v201 + 1);
      sub_22E466FB4(&v198, &v184);
      sub_22E467064(v6, v98);
      v99 = (v6)(v69);
      v101 = v100;
      sub_22E453664(v6, v98);
      result = sub_22E467010(&v198);
      if ((v101 & 1) == 0)
      {
        if (v77 >= v99)
        {
          goto LABEL_46;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v6 = *(&v198 + 1);
      if (*(*(&v198 + 1) + 16))
      {
        result = sub_22E45C22C(v69);
        if (v102)
        {
          v103 = *(&v200 + 1);
          v104 = *(v6 + 7) + 104 * result;
          v105 = *v104;
          v106 = *(v104 + 32);
          v192 = *(v104 + 16);
          v193 = v106;
          v107 = *(v104 + 48);
          v108 = *(v104 + 64);
          v109 = *(v104 + 80);
          v197 = *(v104 + 96);
          v195 = v108;
          v196 = v109;
          v194 = v107;
          v191 = v105;
          if (*(*(&v200 + 1) + 16))
          {
            v110 = *(&v191 + 1);
            v6 = v192;
            sub_22E466FB4(&v198, &v184);
            sub_22E4658E4(&v191, &v184);
            v111 = sub_22E450B0C(v110, v6);
            if (v112)
            {
              v113 = *(*(v103 + 56) + 8 * v111);
              sub_22E465940(&v191);
              result = sub_22E467010(&v198);
              if (v77 >= v113)
              {
                goto LABEL_46;
              }

              goto LABEL_70;
            }

            sub_22E465940(&v191);
            result = sub_22E467010(&v198);
          }
        }
      }
    }

    if (v77 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

LABEL_70:
    if (!v183)
    {
      break;
    }

    *v66 = vrev64_s32(*v66);
    if (!v67)
    {
LABEL_46:
      v65 = v180 + 1;
      v66 = (v178 + 4);
      v67 = v177 - 1;
      if (v180 + 1 != v176)
      {
        goto LABEL_47;
      }

      v10 = v176;
      v7 = v171;
      v11 = v174;
LABEL_74:
      v64 = v175;
      goto LABEL_75;
    }

    v66 = (v66 - 4);
    ++v67;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_22E4645BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22E476624(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22E465330((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22E47D054();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22E47D054();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22E47671C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22E47671C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22E465330((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22E476624(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22E476598(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22E47D054(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22E464B98(char *__dst, char *__src, char *a3, unsigned int *a4, __int128 *a5)
{
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 2;
  v12 = a3 - __src;
  v13 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 2;
  if (v11 >= v13 >> 2)
  {
    v17 = a4;
    if (a4 != __src || &__src[4 * v14] <= a4)
    {
      memmove(a4, __src, 4 * v14);
    }

    v16 = &v17[v14];
    if (v12 < 4 || v7 <= v8)
    {
      goto LABEL_87;
    }

    v128 = v17;
LABEL_47:
    v71 = v7 - 1;
    v6 -= 4;
    v72 = v16;
    v165 = v7;
    v127 = v7 - 1;
    while (1)
    {
      v130 = v72;
      v74 = *--v72;
      v73 = v74;
      v75 = *v71;
      v76 = a5[7];
      v161 = a5[6];
      v162 = v76;
      v77 = a5[9];
      v163 = a5[8];
      v164 = v77;
      v78 = a5[3];
      v157 = a5[2];
      v158 = v78;
      v79 = a5[5];
      v159 = a5[4];
      v160 = v79;
      v80 = a5[1];
      v155 = *a5;
      v156 = v80;
      v81 = v158;
      if (!v158)
      {
        break;
      }

      v82 = *(&v158 + 1);
      sub_22E466FB4(&v155, &v145);
      sub_22E467064(v81, v82);
      v83 = v81(v73);
      v85 = v84;
      sub_22E453664(v81, v82);
      sub_22E467010(&v155);
      if (v85)
      {
        goto LABEL_59;
      }

LABEL_60:
      v100 = a5[7];
      v151 = a5[6];
      v152 = v100;
      v101 = a5[9];
      v153 = a5[8];
      v154 = v101;
      v102 = a5[3];
      v147 = a5[2];
      v148 = v102;
      v103 = a5[5];
      v149 = a5[4];
      v150 = v103;
      v104 = a5[1];
      v145 = *a5;
      v146 = v104;
      v105 = v148;
      if (v148)
      {
        v106 = *(&v148 + 1);
        sub_22E466FB4(&v145, &v131);
        sub_22E467064(v105, v106);
        v107 = v105(v75);
        v109 = v108;
        sub_22E453664(v105, v106);
        sub_22E467010(&v145);
        if ((v109 & 1) == 0)
        {
          if (v83 < v107)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v110 = *(&v145 + 1);
        if (*(*(&v145 + 1) + 16))
        {
          v111 = sub_22E45C22C(v75);
          if (v112)
          {
            v113 = *(&v147 + 1);
            v114 = *(v110 + 56) + 104 * v111;
            v115 = *v114;
            v116 = *(v114 + 32);
            v139 = *(v114 + 16);
            v140 = v116;
            v117 = *(v114 + 48);
            v118 = *(v114 + 64);
            v119 = *(v114 + 80);
            v144 = *(v114 + 96);
            v142 = v118;
            v143 = v119;
            v141 = v117;
            v138 = v115;
            if (*(*(&v147 + 1) + 16))
            {
              v120 = *(&v138 + 1);
              v121 = v139;
              sub_22E466FB4(&v145, &v131);
              sub_22E4658E4(&v138, &v131);
              v122 = sub_22E450B0C(v120, v121);
              if (v123)
              {
                v124 = *(*(v113 + 56) + 8 * v122);
                sub_22E465940(&v138);
                sub_22E467010(&v145);
                if (v83 < v124)
                {
                  goto LABEL_76;
                }

                goto LABEL_72;
              }

              sub_22E465940(&v138);
              sub_22E467010(&v145);
            }
          }
        }
      }

      if (v83 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_76:
        v16 = v130;
        if ((v6 + 4) < v165 || v6 >= v165)
        {
          v125 = v127;
          v17 = v128;
LABEL_81:
          *v6 = *v125;
          if (v130 <= v17)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v17 = v128;
          if (v6 + 4 != v165)
          {
            v125 = v127;
            goto LABEL_81;
          }

          v125 = v127;
          if (v130 <= v128)
          {
LABEL_85:
            v7 = v125;
            goto LABEL_87;
          }
        }

        v7 = v125;
        if (v125 > v8)
        {
          goto LABEL_47;
        }

        goto LABEL_85;
      }

LABEL_72:
      v7 = v165;
      if ((v6 + 4) < v130 || v6 >= v130 || v6 + 4 != v130)
      {
        *v6 = *v72;
      }

      v71 = v127;
      v6 -= 4;
      if (v72 <= v128)
      {
        v16 = v72;
        v17 = v128;
        goto LABEL_87;
      }
    }

    v86 = *(&v155 + 1);
    if (*(*(&v155 + 1) + 16))
    {
      v87 = sub_22E45C22C(v73);
      if (v88)
      {
        v89 = *(&v157 + 1);
        v90 = *(v86 + 56) + 104 * v87;
        v91 = *v90;
        v92 = *(v90 + 32);
        v132 = *(v90 + 16);
        v133 = v92;
        v93 = *(v90 + 48);
        v94 = *(v90 + 64);
        v95 = *(v90 + 80);
        v137 = *(v90 + 96);
        v135 = v94;
        v136 = v95;
        v134 = v93;
        v131 = v91;
        if (*(*(&v157 + 1) + 16))
        {
          v96 = *(&v131 + 1);
          v97 = v132;
          sub_22E466FB4(&v155, &v145);
          sub_22E4658E4(&v131, &v145);
          v98 = sub_22E450B0C(v96, v97);
          if (v99)
          {
            v83 = *(*(v89 + 56) + 8 * v98);
            sub_22E465940(&v131);
            sub_22E467010(&v155);
            goto LABEL_60;
          }

          sub_22E465940(&v131);
          sub_22E467010(&v155);
        }
      }
    }

LABEL_59:
    v83 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_60;
  }

  if (a4 != __dst || &__dst[4 * v11] <= a4)
  {
    v15 = a4;
    memmove(a4, __dst, 4 * v11);
    a4 = v15;
  }

  v16 = &a4[v11];
  v17 = a4;
  if (v9 >= 4 && v7 < v6)
  {
    v129 = v16;
    while (1)
    {
      v165 = v7;
      v18 = *v7;
      v19 = *v17;
      v20 = a5[7];
      v161 = a5[6];
      v162 = v20;
      v21 = a5[9];
      v163 = a5[8];
      v164 = v21;
      v22 = a5[3];
      v157 = a5[2];
      v158 = v22;
      v23 = a5[5];
      v159 = a5[4];
      v160 = v23;
      v24 = a5[1];
      v155 = *a5;
      v156 = v24;
      v25 = v158;
      if (!v158)
      {
        break;
      }

      v26 = *(&v158 + 1);
      sub_22E466FB4(&v155, &v145);
      sub_22E467064(v25, v26);
      v27 = v25(v18);
      v29 = v28;
      sub_22E453664(v25, v26);
      sub_22E467010(&v155);
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_22:
      v44 = a5[7];
      v151 = a5[6];
      v152 = v44;
      v45 = a5[9];
      v153 = a5[8];
      v154 = v45;
      v46 = a5[3];
      v147 = a5[2];
      v148 = v46;
      v47 = a5[5];
      v149 = a5[4];
      v150 = v47;
      v48 = a5[1];
      v145 = *a5;
      v146 = v48;
      v49 = v148;
      if (v148)
      {
        v50 = *(&v148 + 1);
        sub_22E466FB4(&v145, &v131);
        sub_22E467064(v49, v50);
        v51 = v49(v19);
        v53 = v52;
        sub_22E453664(v49, v50);
        sub_22E467010(&v145);
        if ((v53 & 1) == 0)
        {
          if (v27 < v51)
          {
            goto LABEL_36;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v56 = *(&v145 + 1);
        if (*(*(&v145 + 1) + 16))
        {
          v57 = sub_22E45C22C(v19);
          if (v58)
          {
            v59 = *(&v147 + 1);
            v60 = *(v56 + 56) + 104 * v57;
            v61 = *v60;
            v62 = *(v60 + 32);
            v139 = *(v60 + 16);
            v140 = v62;
            v63 = *(v60 + 48);
            v64 = *(v60 + 64);
            v65 = *(v60 + 80);
            v144 = *(v60 + 96);
            v142 = v64;
            v143 = v65;
            v141 = v63;
            v138 = v61;
            if (*(*(&v147 + 1) + 16))
            {
              v66 = *(&v138 + 1);
              v67 = v139;
              sub_22E466FB4(&v145, &v131);
              sub_22E4658E4(&v138, &v131);
              v68 = sub_22E450B0C(v66, v67);
              if (v69)
              {
                v70 = *(*(v59 + 56) + 8 * v68);
                sub_22E465940(&v138);
                sub_22E467010(&v145);
                if (v27 < v70)
                {
                  goto LABEL_36;
                }

                goto LABEL_25;
              }

              sub_22E465940(&v138);
              sub_22E467010(&v145);
            }
          }
        }
      }

      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_36:
        v54 = v165;
        v7 = (v165 + 4);
        v16 = v129;
        if (v8 == v165)
        {
          goto LABEL_38;
        }

LABEL_37:
        *v8 = *v54;
        goto LABEL_38;
      }

LABEL_25:
      v54 = v17;
      v55 = v8 == v17++;
      v7 = v165;
      v16 = v129;
      if (!v55)
      {
        goto LABEL_37;
      }

LABEL_38:
      v8 += 4;
      if (v17 >= v16 || v7 >= v6)
      {
        goto LABEL_40;
      }
    }

    v30 = *(&v155 + 1);
    if (*(*(&v155 + 1) + 16))
    {
      v31 = sub_22E45C22C(v18);
      if (v32)
      {
        v33 = *(&v157 + 1);
        v34 = *(v30 + 56) + 104 * v31;
        v35 = *v34;
        v36 = *(v34 + 32);
        v132 = *(v34 + 16);
        v133 = v36;
        v37 = *(v34 + 48);
        v38 = *(v34 + 64);
        v39 = *(v34 + 80);
        v137 = *(v34 + 96);
        v135 = v38;
        v136 = v39;
        v134 = v37;
        v131 = v35;
        if (*(*(&v157 + 1) + 16))
        {
          v40 = *(&v131 + 1);
          v41 = v132;
          sub_22E466FB4(&v155, &v145);
          sub_22E4658E4(&v131, &v145);
          v42 = sub_22E450B0C(v40, v41);
          if (v43)
          {
            v27 = *(*(v33 + 56) + 8 * v42);
            sub_22E465940(&v131);
            sub_22E467010(&v155);
            goto LABEL_22;
          }

          sub_22E465940(&v131);
          sub_22E467010(&v155);
        }
      }
    }

LABEL_21:
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

LABEL_40:
  v7 = v8;
LABEL_87:
  if (v7 != v17 || v7 >= (v17 + ((v16 - v17 + (v16 - v17 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v7, v17, 4 * (v16 - v17));
  }

  return 1;
}

uint64_t sub_22E465330(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22E47D054() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_22E465558(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22E4656B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_22E47D054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572706D6F437369 && a2 == 0xEC00000064657373 || (sub_22E47D054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_22E47D054();

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

void *sub_22E4657D0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v3 = sub_22E47CFD4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22E45C1E8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22E45C1E8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22E465A24()
{
  result = qword_27DA63EE0;
  if (!qword_27DA63EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64150, &qword_22E47EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63EE0);
  }

  return result;
}

unint64_t sub_22E465AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22E45C298(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22E465BB4()
{
  result = qword_27DA64020;
  if (!qword_27DA64020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64020);
  }

  return result;
}

unint64_t sub_22E465C08()
{
  result = qword_27DA63EE8;
  if (!qword_27DA63EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64160, &qword_22E47D9B8);
    sub_22E465C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63EE8);
  }

  return result;
}

unint64_t sub_22E465C8C()
{
  result = qword_27DA64080;
  if (!qword_27DA64080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64080);
  }

  return result;
}

unint64_t sub_22E465CE0()
{
  result = qword_27DA64040;
  if (!qword_27DA64040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64040);
  }

  return result;
}

unint64_t sub_22E465D34()
{
  result = qword_27DA64168;
  if (!qword_27DA64168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64168);
  }

  return result;
}

unint64_t sub_22E465D88()
{
  result = qword_27DA63F00;
  if (!qword_27DA63F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64170, &qword_22E47D9C0);
    sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F00);
  }

  return result;
}

uint64_t sub_22E465E30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22E465ECC(uint64_t a1, int a2)
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

uint64_t sub_22E465F14(uint64_t result, int a2, int a3)
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

uint64_t sub_22E465F64(uint64_t *a1, int a2)
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

uint64_t sub_22E465FAC(uint64_t result, int a2, int a3)
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

uint64_t sub_22E465FF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64180, &qword_22E47DB48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466228();
  sub_22E47D144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64158, &qword_22E47D9B0);
  HIBYTE(v8) = 0;
  sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
  sub_22E47D024();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
  HIBYTE(v8) = 1;
  sub_22E465D88();
  sub_22E47D024();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_22E466228()
{
  result = qword_27DA64038;
  if (!qword_27DA64038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64038);
  }

  return result;
}

unint64_t sub_22E46627C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22E45C298(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22E466390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641E0, &qword_22E47DB98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
    v7 = sub_22E47CFD4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22E466EF8(v9, v5);
      result = sub_22E45C3EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22E47CD64();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CustomSymbol(0);
      result = sub_22E466E90(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CustomSymbol);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22E466598(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64188, &qword_22E47DB50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E46677C();
  sub_22E47D144();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_22E47D014();
    v10 = 1;
    sub_22E47D014();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_22E46677C()
{
  result = qword_27DA64098;
  if (!qword_27DA64098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64098);
  }

  return result;
}

uint64_t sub_22E4667D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642A0, &qword_22E47E220);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E4678B4();
  sub_22E47D144();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_22E47CFF4();
    v10 = 1;
    sub_22E47CFF4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *sub_22E46699C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64190, &qword_22E47DB58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466B4C();
  sub_22E47D144();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64198, &qword_22E47DB60);
    sub_22E45405C(&qword_27DA63F08, &qword_27DA64198, &qword_22E47DB60, sub_22E466BA0);
    sub_22E47D024();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_22E466B4C()
{
  result = qword_27DA64058;
  if (!qword_27DA64058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64058);
  }

  return result;
}

unint64_t sub_22E466BA0()
{
  result = qword_27DA64060;
  if (!qword_27DA64060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64060);
  }

  return result;
}

void *sub_22E466BF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641A0, &qword_22E47DB68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466D78();
  sub_22E47D144();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
    sub_22E465D88();
    sub_22E47D024();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_22E466D78()
{
  result = qword_27DA641A8;
  if (!qword_27DA641A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA641A8);
  }

  return result;
}

uint64_t sub_22E466DCC(uint64_t a1)
{
  v2 = type metadata accessor for SymbolKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E466E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E466E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E466EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641E0, &qword_22E47DB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E466F68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22E47CD64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E467064(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_22E467074()
{
  result = qword_27DA64260;
  if (!qword_27DA64260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64260);
  }

  return result;
}

uint64_t sub_22E4670F4(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_9SFSymbols19SymbolMetadataStoreV9LoadErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22E46716C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22E4671B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22E4671FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22E467224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E46726C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Crypton(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Crypton(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22E4673D4(uint64_t a1, unsigned int a2)
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

uint64_t sub_22E467430(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22E467498()
{
  result = qword_27DA64270;
  if (!qword_27DA64270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64270);
  }

  return result;
}

unint64_t sub_22E4674F0()
{
  result = qword_27DA64278;
  if (!qword_27DA64278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64278);
  }

  return result;
}

unint64_t sub_22E467548()
{
  result = qword_27DA64280;
  if (!qword_27DA64280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64280);
  }

  return result;
}

unint64_t sub_22E4675A0()
{
  result = qword_27DA64288;
  if (!qword_27DA64288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64288);
  }

  return result;
}

unint64_t sub_22E4675F8()
{
  result = qword_27DA64290;
  if (!qword_27DA64290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64290);
  }

  return result;
}

unint64_t sub_22E467650()
{
  result = qword_27DA64298;
  if (!qword_27DA64298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64298);
  }

  return result;
}

unint64_t sub_22E4676A8()
{
  result = qword_27DA64048;
  if (!qword_27DA64048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64048);
  }

  return result;
}

unint64_t sub_22E467700()
{
  result = qword_27DA64050;
  if (!qword_27DA64050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64050);
  }

  return result;
}

unint64_t sub_22E467758()
{
  result = qword_27DA64088;
  if (!qword_27DA64088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64088);
  }

  return result;
}

unint64_t sub_22E4677B0()
{
  result = qword_27DA64090;
  if (!qword_27DA64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64090);
  }

  return result;
}

unint64_t sub_22E467808()
{
  result = qword_27DA64028;
  if (!qword_27DA64028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64028);
  }

  return result;
}

unint64_t sub_22E467860()
{
  result = qword_27DA64030;
  if (!qword_27DA64030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64030);
  }

  return result;
}

unint64_t sub_22E4678B4()
{
  result = qword_27DA64078;
  if (!qword_27DA64078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64078);
  }

  return result;
}

uint64_t _s14descr284251169V13MetadataIndexV10StoreIndexV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_22E4679AC()
{
  result = qword_27DA642C0;
  if (!qword_27DA642C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642C0);
  }

  return result;
}

unint64_t sub_22E467A04()
{
  result = qword_27DA642C8;
  if (!qword_27DA642C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642C8);
  }

  return result;
}

unint64_t sub_22E467A5C()
{
  result = qword_27DA642D0;
  if (!qword_27DA642D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642D0);
  }

  return result;
}

unint64_t sub_22E467AB4()
{
  result = qword_27DA64068;
  if (!qword_27DA64068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64068);
  }

  return result;
}

unint64_t sub_22E467B0C()
{
  result = qword_27DA64070;
  if (!qword_27DA64070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64070);
  }

  return result;
}

uint64_t sub_22E467BA8(uint64_t a1, unsigned __int8 a2)
{
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

uint64_t sub_22E467CC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x6F7268636F6E6F6DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C6F6369746C756DLL;
    }

    else
    {
      v5 = 0x657474656C6170;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000726FLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6863726172656968;
    }

    else
    {
      v5 = 0x6F7268636F6E6F6DLL;
    }

    if (v4)
    {
      v6 = 0xEC0000006C616369;
    }

    else
    {
      v6 = 0xEA0000000000656DLL;
    }
  }

  v7 = 0x6C6F6369746C756DLL;
  v8 = 0xEA0000000000726FLL;
  if (a2 != 2)
  {
    v7 = 0x657474656C6170;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6863726172656968;
    v2 = 0xEC0000006C616369;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22E47D054();
  }

  return v11 & 1;
}

uint64_t sub_22E467E18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000736CLL;
  v3 = 0x6F626D7953204653;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  if (a1 != 5)
  {
    v6 = 0x534F6E6F69736976;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (a1 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (a1 != 1)
  {
    v10 = 0x617461432063614DLL;
    v9 = 0xEC0000007473796CLL;
  }

  if (!a1)
  {
    v10 = 0x6F626D7953204653;
    v9 = 0xEA0000000000736CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x534F63616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC0000007473796CLL;
        if (v11 != 0x617461432063614DLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1397716596)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x534F6E6F69736976)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v11 != 5459817)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE700000000000000;
    v3 = 0x534F6863746177;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_22E47D054();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

SFSymbols::Availability::Platform_optional __swiftcall Availability.Platform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22E47CFE4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Availability.Platform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F626D7953204653;
  v3 = 1397716596;
  if (v1 != 5)
  {
    v3 = 0x534F6E6F69736976;
  }

  v4 = 5459817;
  if (v1 != 3)
  {
    v4 = 0x534F6863746177;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x534F63616DLL;
  if (v1 != 1)
  {
    v5 = 0x617461432063614DLL;
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

void sub_22E468168(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736CLL;
  v4 = 0x6F626D7953204653;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  if (v2 != 5)
  {
    v6 = 0x534F6E6F69736976;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (v2 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x617461432063614DLL;
    v9 = 0xEC0000007473796CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_22E46824C(uint64_t a1)
{
  sub_22E47CE24();
}

SFSymbols::Version_optional __swiftcall Availability.earliestSupportedRelease(for:)(SFSymbols::Availability::Platform a1)
{
  v3 = v1;
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  if (*a1 <= 2u && !*a1)
  {

LABEL_8:
    if (__OFSUB__(v6, 2018))
    {
      __break(1u);
    }

    else
    {
      *v3 = v6 - 2018;
      *(v3 + 8) = v5;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
    }

    return v10;
  }

  v9 = sub_22E47D054();

  if (v9)
  {
    goto LABEL_8;
  }

  if (v4 == 2)
  {

LABEL_11:
    v27 = v6;
    v28 = v5;
    v29 = v8;
    v30 = v7;
    v26 = 3;
    return Availability.earliestSupportedRelease(for:)(&v26);
  }

  v11 = sub_22E47D054();

  if (v11)
  {
    goto LABEL_11;
  }

  if (!*(v7 + 16) || (v10.value.major = sub_22E45C30C(v6, v5, v8), (v10.value.minor & 1) == 0) || (v12 = *(*(v7 + 56) + 8 * v10.value.major), !*(v12 + 16)))
  {
LABEL_19:
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    return v10;
  }

  v13 = sub_22E45C3A8(v4);
  if ((v14 & 1) == 0)
  {

    goto LABEL_19;
  }

  v15 = (*(v12 + 56) + 24 * v13);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];

  if (v4 == 1)
  {
  }

  else
  {
    v19 = sub_22E47D054();

    if ((v19 & 1) == 0)
    {
      *v3 = v17;
      *(v3 + 8) = v16;
      *(v3 + 16) = v18;
      *(v3 + 24) = 0;
      return v10;
    }
  }

  v20 = v17 > 11;
  v21 = v18 > 0;
  if (v16)
  {
    v21 = v16 > 0;
  }

  if (v17 == 11)
  {
    v20 = v21;
  }

  v22 = !v20;
  v23 = 11;
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v23 = v17;
    v24 = v16;
  }

  *v3 = v23;
  *(v3 + 8) = v24;
  if (v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = v18;
  }

  *(v3 + 16) = v25;
  *(v3 + 24) = 0;
  return v10;
}

unint64_t sub_22E468734()
{
  result = qword_27DA64130;
  if (!qword_27DA64130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Availability.Platform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static Version.sfSymbolsHost.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27DA64138 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27DA642E8;
  result = *&xmmword_27DA642D8;
  *a1 = xmmword_27DA642D8;
  *(a1 + 16) = v1;
  return result;
}

uint64_t Alias.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Alias.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t private_nofill_to_fill.getter()
{
  if (qword_280AC2DE0 != -1)
  {
    swift_once();
  }
}

uint64_t SymbolProperty.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_22E468A68()
{
  result = qword_27DA642F8;
  if (!qword_27DA642F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642F8);
  }

  return result;
}

uint64_t sub_22E468ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_22E45EC9C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_22E45C1E8(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_22E45F6D4();
        v13 = v15;
      }

      result = sub_22E469488(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_22E468BA4(uint64_t a1, uint64_t a2)
{

  v4 = sub_22E477870(v3);

  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_16:

    return 0;
  }

  v6 = 0;
  v7 = a2 + 32;
  v8 = v4 + 56;
  while (1)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_4;
    }

    v9 = (v7 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];
    sub_22E47D0F4();

    sub_22E47CE24();
    v12 = sub_22E47D124();
    v13 = -1 << *(v4 + 32);
    v14 = v12 & ~v13;
    if ((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v6 == v5)
    {
      goto LABEL_16;
    }
  }

  v15 = ~v13;
  while (1)
  {
    v16 = (*(v4 + 48) + 16 * v14);
    v17 = *v16 == v11 && v16[1] == v10;
    if (v17 || (sub_22E47D054() & 1) != 0)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

SFSymbols::AccessLevel_optional __swiftcall AccessLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SFSymbols::RenderingMode_optional __swiftcall RenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22E47CFE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RenderingMode.rawValue.getter()
{
  v1 = 0x6F7268636F6E6F6DLL;
  v2 = 0x6C6F6369746C756DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6863726172656968;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22E468E90()
{
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

uint64_t sub_22E468F60(uint64_t a1)
{
  sub_22E47CE24();
}

uint64_t sub_22E46901C(uint64_t a1)
{
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

void sub_22E4690F4(uint64_t *a1@<X8>)
{
  v2 = 0x6F7268636F6E6F6DLL;
  v3 = 0xEA0000000000726FLL;
  v4 = 0x6C6F6369746C756DLL;
  if (*v1 != 2)
  {
    v4 = 0x657474656C6170;
    v3 = 0xE700000000000000;
  }

  v5 = 0xEC0000006C616369;
  if (*v1)
  {
    v2 = 0x6863726172656968;
  }

  else
  {
    v5 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t SystemSymbolCSVRow.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SystemSymbolCSVRow.locale.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SystemSymbolCSVRow.useRestrictionText.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_22E469250()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_22E469E14(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22E46929C(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22E450B0C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22E47D054();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E469444()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_22E469488(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22E47CF44() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22E47D0E4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22E4695F8(unint64_t result, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v64 = 0;
    return v64 | (((a2 >> 60) & 1) << 40);
  }

  v3 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = a2;
      v66 = a3;
      result = sub_22E47CFA4();
      a3 = v66;
      v4 = v65;
      a2 = v67;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v4 < 1)
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v30 = v4 - 1;
      if (v30)
      {
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v32 = a3 + 55;
        }

        else
        {
          v31 = 97;
          v32 = 65;
        }

        if (a3 <= 10)
        {
          v33 = a3 + 48;
        }

        else
        {
          v33 = 58;
        }

        if (result)
        {
          v10 = 0;
          v34 = (result + 1);
          do
          {
            v35 = *v34;
            if (v35 < 0x30 || v35 >= v33)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v14 = 0;
                v15 = 1;
                if (v35 < 0x61 || v35 >= v31)
                {
                  goto LABEL_122;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v10 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_148;
            }

            v38 = v35 + v36;
            v10 = v37 + v38;
            if (__CFADD__(v37, v38))
            {
              goto LABEL_148;
            }

            ++v34;
            --v30;
          }

          while (v30);
LABEL_76:
          v14 = v10;
          v69 = 0;
          goto LABEL_146;
        }

        goto LABEL_121;
      }
    }

    else
    {
      if (v5 == 45)
      {
        if (v4 >= 1)
        {
          v6 = v4 - 1;
          if (v6)
          {
            v7 = a3 + 87;
            if (a3 > 10)
            {
              v8 = a3 + 55;
            }

            else
            {
              v7 = 97;
              v8 = 65;
            }

            if (a3 <= 10)
            {
              v9 = a3 + 48;
            }

            else
            {
              v9 = 58;
            }

            if (result)
            {
              v10 = 0;
              v11 = (result + 1);
              while (1)
              {
                v12 = *v11;
                if (v12 < 0x30 || v12 >= v9)
                {
                  if (v12 < 0x41 || v12 >= v8)
                  {
                    v14 = 0;
                    v15 = 1;
                    if (v12 < 0x61 || v12 >= v7)
                    {
                      goto LABEL_122;
                    }

                    v13 = -87;
                  }

                  else
                  {
                    v13 = -55;
                  }
                }

                else
                {
                  v13 = -48;
                }

                v16 = v10 * a3;
                if ((v16 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_148;
                }

                v17 = v12 + v13;
                v10 = v16 - v17;
                if (v16 < v17)
                {
                  goto LABEL_148;
                }

                ++v11;
                if (!--v6)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_121:
            v14 = 0;
            v15 = 0;
LABEL_122:
            v69 = v15;
            goto LABEL_146;
          }

          goto LABEL_148;
        }

        __break(1u);
        goto LABEL_152;
      }

      if (v4)
      {
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v49 = a3 + 55;
        }

        else
        {
          v48 = 97;
          v49 = 65;
        }

        if (a3 <= 10)
        {
          v50 = a3 + 48;
        }

        else
        {
          v50 = 58;
        }

        if (!result)
        {
          goto LABEL_121;
        }

        v51 = 0;
        do
        {
          v52 = *result;
          if (v52 < 0x30 || v52 >= v50)
          {
            if (v52 < 0x41 || v52 >= v49)
            {
              v14 = 0;
              v15 = 1;
              if (v52 < 0x61 || v52 >= v48)
              {
                goto LABEL_122;
              }

              v53 = -87;
            }

            else
            {
              v53 = -55;
            }
          }

          else
          {
            v53 = -48;
          }

          v54 = v51 * a3;
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_148;
          }

          v55 = v52 + v53;
          v51 = v54 + v55;
          if (__CFADD__(v54, v55))
          {
            goto LABEL_148;
          }

          ++result;
          --v4;
        }

        while (v4);
        v14 = v54 + v55;
        v69 = 0;
LABEL_146:
        v64 = v14 | (v69 << 32);
        return v64 | (((a2 >> 60) & 1) << 40);
      }
    }

LABEL_148:
    v14 = 0;
    v69 = 1;
    goto LABEL_146;
  }

  v18 = HIBYTE(a2) & 0xF;
  v68[0] = result;
  v68[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v18)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v19 = v18 - 1;
      if (v19)
      {
        v20 = 0;
        v21 = a3 + 87;
        if (a3 > 10)
        {
          v22 = a3 + 55;
        }

        else
        {
          v21 = 97;
          v22 = 65;
        }

        if (a3 <= 10)
        {
          v23 = a3 + 48;
        }

        else
        {
          v23 = 58;
        }

        v24 = v68 + 1;
        while (1)
        {
          v25 = *v24;
          if (v25 < 0x30 || v25 >= v23)
          {
            if (v25 < 0x41 || v25 >= v22)
            {
              v14 = 0;
              v27 = 1;
              if (v25 < 0x61 || v25 >= v21)
              {
                goto LABEL_145;
              }

              v26 = -87;
            }

            else
            {
              v26 = -55;
            }
          }

          else
          {
            v26 = -48;
          }

          v28 = v20 * a3;
          if ((v28 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_144;
          }

          v29 = v25 + v26;
          v20 = v28 - v29;
          if (v28 < v29)
          {
            goto LABEL_144;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_143;
          }
        }
      }
    }

    else if (v18)
    {
      v20 = 0;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v57 = a3 + 55;
      }

      else
      {
        v56 = 97;
        v57 = 65;
      }

      if (a3 <= 10)
      {
        v58 = a3 + 48;
      }

      else
      {
        v58 = 58;
      }

      v59 = v68;
      while (1)
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v58)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            v14 = 0;
            v27 = 1;
            if (v60 < 0x61 || v60 >= v56)
            {
              goto LABEL_145;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v20 * a3;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_144;
        }

        v63 = v60 + v61;
        v20 = v62 + v63;
        if (__CFADD__(v62, v63))
        {
          goto LABEL_144;
        }

        ++v59;
        if (!--v18)
        {
          goto LABEL_143;
        }
      }
    }

    goto LABEL_144;
  }

  if (v18)
  {
    v39 = v18 - 1;
    if (v39)
    {
      v20 = 0;
      v40 = a3 + 87;
      if (a3 > 10)
      {
        v41 = a3 + 55;
      }

      else
      {
        v40 = 97;
        v41 = 65;
      }

      if (a3 <= 10)
      {
        v42 = a3 + 48;
      }

      else
      {
        v42 = 58;
      }

      v43 = v68 + 1;
      do
      {
        v44 = *v43;
        if (v44 < 0x30 || v44 >= v42)
        {
          if (v44 < 0x41 || v44 >= v41)
          {
            v14 = 0;
            v27 = 1;
            if (v44 < 0x61 || v44 >= v40)
            {
              goto LABEL_145;
            }

            v45 = -87;
          }

          else
          {
            v45 = -55;
          }
        }

        else
        {
          v45 = -48;
        }

        v46 = v20 * a3;
        if ((v46 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_144;
        }

        v47 = v44 + v45;
        v20 = v46 + v47;
        if (__CFADD__(v46, v47))
        {
          goto LABEL_144;
        }

        ++v43;
        --v39;
      }

      while (v39);
LABEL_143:
      v27 = 0;
      v14 = v20;
      goto LABEL_145;
    }

LABEL_144:
    v14 = 0;
    v27 = 1;
LABEL_145:
    v69 = v27;
    goto LABEL_146;
  }

LABEL_154:
  __break(1u);
  return result;
}

uint64_t _s9SFSymbols18SystemSymbolCSVRowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v22 = *(a1 + 56);
  v21 = *(a1 + 64);
  v20 = *(a1 + 80);
  v14 = *(a1 + 96);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  v17 = *(a2 + 72);
  v18 = *(a1 + 72);
  v19 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a1 + 88);
  v13 = *(a2 + 96);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else if (sub_22E47D054() & 1) == 0 || ((v2 ^ v6))
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v4 != v7 || v3 != v8) && (sub_22E47D054() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((sub_22E477C50(v5, v10) & 1) == 0 || (sub_22E477CAC(v22, v9) & 1) == 0 || v21 != v11)
  {
    return 0;
  }

  if (!v20)
  {
    if (!v19)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v19 || (v18 != v17 || v20 != v19) && (sub_22E47D054() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v16 == 4)
  {
    if (v15 != 4)
    {
      return 0;
    }
  }

  else if (v15 == 4 || (sub_22E467CC4(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_22E46929C(v14, v13);
}

unint64_t sub_22E469D44(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22E469E14(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22E4787EC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_22E469D44(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *_s9SFSymbols18SystemSymbolCSVRowV6decode_22additionalColumnTitlesSayACG10Foundation4DataV_SaySSGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22E47CBC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22E47CDF4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_22E47CDE4();
  v9 = sub_22E47CDD4();
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = sub_22E456730(v9, v10);

  v298 = v11;
  if (!v11[2])
  {
LABEL_6:

    return MEMORY[0x277D84F90];
  }

  v285 = v5;
  v288 = v7;
  v289 = v4;
  v12 = sub_22E469250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
  inited = swift_initStackObject();
  v291 = xmmword_22E47E790;
  *(inited + 16) = xmmword_22E47E790;
  *(inited + 32) = 1701667150;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x616E2E74726F6873;
  *(inited + 56) = 0xEA0000000000656DLL;
  v284 = sub_22E468BA4(inited, v12);
  v15 = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v15 & 1) != 0 || (v16 = swift_initStackObject(), *(v16 + 16) = xmmword_22E47E7A0, *(v16 + 32) = 1933661520, *(v16 + 40) = 0xE400000000000000, *(v16 + 48) = 0x734155502077654ELL, *(v16 + 56) = 0xE800000000000000, *(v16 + 64) = 0x415550202057454ELL, *(v16 + 72) = 0xE900000000000073, v17 = sub_22E468BA4(v16, v12), v19 = v18, , (v19))
  {

    goto LABEL_6;
  }

  v21 = sub_22E47A25C(v12);
  v282 = v17;
  if (v21)
  {
    v22 = 0;
    v23 = (v12 + 40);
    while (1)
    {
      if (v22 >= *(v12 + 16))
      {
        goto LABEL_343;
      }

      v24 = *(v23 - 1) == 0x6E6F6974636E7546 && *v23 == 0xE900000000000073;
      if (v24 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      ++v22;
      v23 += 2;
      if (v21 == v22)
      {
        v22 = 0;
        v274 = 0;
        goto LABEL_19;
      }
    }

    v274 = 1;
LABEL_19:
    v25 = 0;
    v26 = (v12 + 40);
    while (1)
    {
      if (v25 >= *(v12 + 16))
      {
        goto LABEL_344;
      }

      if (*(v26 - 1) == 0x7365646F63696E55 && *v26 == 0xE800000000000000)
      {
        v272 = 1;
        goto LABEL_31;
      }

      v28 = v25;
      if (sub_22E47D054())
      {
        break;
      }

      v25 = v28 + 1;
      v26 += 2;
      if (v21 == v28 + 1)
      {
        v25 = 0;
        v272 = 0;
        goto LABEL_31;
      }
    }

    v272 = 1;
    v25 = v28;
LABEL_31:
    v29 = 0;
    v30 = (v12 + 40);
    v273 = v25;
    while (1)
    {
      if (v29 >= *(v12 + 16))
      {
        goto LABEL_345;
      }

      if (*(v30 - 1) == 0x4C20737365636341 && *v30 == 0xEC0000006C657665)
      {
        v267 = 1;
        goto LABEL_42;
      }

      v32 = v29;
      if (sub_22E47D054())
      {
        break;
      }

      v29 = v32 + 1;
      v30 += 2;
      if (v21 == v32 + 1)
      {
        v29 = 0;
        v267 = 0;
        goto LABEL_42;
      }
    }

    v267 = 1;
    v29 = v32;
LABEL_42:
    v269 = v29;
    v33 = 0;
    v34 = (v12 + 40);
    while (1)
    {
      if (v33 >= *(v12 + 16))
      {
        goto LABEL_347;
      }

      v293 = v33;
      v35 = *(v34 - 1) == 0x6E656469666E6F43 && *v34 == 0xEC0000006C616974;
      if (v35 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v33 = v293 + 1;
      v34 += 2;
      if (v21 == v293 + 1)
      {
        v270 = 0;
        v293 = 0;
        goto LABEL_52;
      }
    }

    v270 = 1;
LABEL_52:
    v17 = v282;
  }

  else
  {
    v269 = 0;
    v267 = 0;
    v22 = 0;
    v274 = 0;
    v272 = 0;
    v273 = 0;
    v270 = 0;
    v293 = 0;
  }

  v271 = v22;
  v36 = swift_initStackObject();
  *(v36 + 16) = v291;
  *(v36 + 32) = 0x656C61636F4CLL;
  *(v36 + 40) = 0xE600000000000000;
  strcpy((v36 + 48), "Name - Locale");
  *(v36 + 62) = -4864;
  v281 = sub_22E468BA4(v36, v12);
  LODWORD(v283) = v37;

  v38 = swift_initStackObject();
  *(v38 + 16) = v291;
  *(v38 + 32) = 0xD000000000000016;
  *(v38 + 40) = 0x800000022E4D2AA0;
  *(v38 + 48) = 0xD000000000000010;
  *(v38 + 56) = 0x800000022E4D2AC0;
  v280 = sub_22E468BA4(v38, v12);
  LODWORD(v276) = v39;

  if (v21)
  {
    v40 = 0;
    v41 = (v12 + 40);
    while (1)
    {
      if (v40 >= *(v12 + 16))
      {
        goto LABEL_346;
      }

      v292 = v40;
      v42 = *(v41 - 1) == 0xD000000000000011 && 0x800000022E4D2AE0 == *v41;
      if (v42 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v40 = v292 + 1;
      v41 += 2;
      if (v21 == v292 + 1)
      {
        goto LABEL_62;
      }
    }

    v268 = 0;
  }

  else
  {
LABEL_62:
    v292 = 0;
    v268 = 1;
  }

  v43 = swift_initStackObject();
  *(v43 + 16) = v291;
  *(v43 + 32) = 0xD000000000000014;
  *(v43 + 40) = 0x800000022E4D2B00;
  strcpy((v43 + 48), "Mirror for RTL");
  *(v43 + 63) = -18;
  v279 = sub_22E468BA4(v43, v12);
  LODWORD(v275) = v44;

  v45 = sub_22E4657D0(MEMORY[0x277D84F90]);
  v296 = v45;
  v46 = sub_22E47A25C(a3);
  if (!v46)
  {
    goto LABEL_80;
  }

  v47 = v46;
  v48 = 0;
  v290 = (v12 + 40);
  *&v291 = a3 + 32;
  do
  {
    sub_22E4785C4(v48, 1, a3);
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_342;
    }

    v50 = a3;
    if (v21)
    {
      v51 = 0;
      v52 = (v291 + 16 * v48);
      v54 = *v52;
      v53 = v52[1];
      v55 = v290;
      while (v51 < *(v12 + 16))
      {
        v56 = *(v55 - 1) == v54 && *v55 == v53;
        if (v56 || (sub_22E47D054() & 1) != 0)
        {

          sub_22E468ACC(v54, v53, v51);
          goto LABEL_67;
        }

        ++v51;
        v55 += 2;
        if (v21 == v51)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
      goto LABEL_348;
    }

LABEL_67:
    v48 = v49;
    a3 = v50;
  }

  while (v49 != v47);
  v45 = v296;
  v17 = v282;
LABEL_80:

  v57 = v298;
  v58 = sub_22E47A25C(v298);
  if (!v58)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_339:

    return v62;
  }

  v59 = 0;
  v60 = 0;
  v61 = v57 + 32;
  v278 = (v285 + 8);
  v260 = &v296 + 1;
  v259 = 0x800000022E4D2B20;
  v265 = v45 + 8;
  v264 = (v281 >= 0) & ~v283;
  v263 = (v280 >= 0) & ~v276;
  v262 = (v279 >= 0) & ~v275;
  v261 = v58 - 1;
  v62 = MEMORY[0x277D84F90];
  v277 = v45;
  v290 = v57;
  v286 = v57 + 32;
  v287 = v58;
LABEL_82:
  v275 = v62;
  v63 = v59;
  v64 = v284;
  while (2)
  {
    if (v63 >= *(v57 + 16))
    {
      goto LABEL_341;
    }

    if (v64 < 0 || (v66 = *(v61 + 8 * v63), v67 = *(v66 + 16), v64 >= v67) || v17 < 0 || v17 >= v67)
    {
LABEL_89:
      if (v58 != ++v63)
      {
        continue;
      }

      v62 = v275;
      goto LABEL_339;
    }

    break;
  }

  v68 = (v66 + 32 + 16 * v17);
  v70 = *v68;
  v69 = v68[1];
  v71 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v71 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
    v57 = v290;
    goto LABEL_89;
  }

  v285 = v66 + 32;
  v72 = (v66 + 32 + 16 * v64);
  v73 = v72[1];
  v283 = *v72;
  v74 = sub_22E4695F8(v70, v69, 16);
  *&v291 = v60;
  if ((v74 & 0x10000000000) == 0)
  {
    v75 = v74;

    v57 = v290;
    if ((v75 & 0x100000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_88;
  }

  v75 = sub_22E4797F8(v70, v69, 16);

  v57 = v290;
  if ((v75 & 0x100000000) != 0)
  {
    goto LABEL_88;
  }

LABEL_83:
  if (v75 >> 11 == 27 || v75 > 0x10FFFF)
  {
LABEL_88:

    v61 = v286;
    v58 = v287;
    v60 = v291;
    goto LABEL_89;
  }

  v76 = v272;
  if (v273 >= v67)
  {
    v76 = 0;
  }

  v77 = MEMORY[0x277D84F90];
  v257 = v73;
  v258 = MEMORY[0x277D84F90];
  v256 = v75;
  v78 = v285;
  if (v76 != 1)
  {
LABEL_230:
    v145 = v271;
    v146 = v274;
    if (v271 >= v67)
    {
      v146 = 0;
    }

    if (v146 == 1)
    {
      sub_22E4785C4(v271, 1, v66);
      v147 = (v78 + 16 * v145);
      v149 = *v147;
      v148 = v147[1];
      v296 = v149;
      v297 = v148;
      v294 = 44;
      v295 = 0xE100000000000000;
      v266 = sub_22E453EA4();
      v150 = sub_22E47CF14();
      v151 = sub_22E454B7C(v150);
      if (v151)
      {
        v152 = v151;
        v294 = v77;
        sub_22E4785E4(v151);
        if (v152 < 0)
        {
LABEL_356:
          __break(1u);
          goto LABEL_357;
        }

        v255 = v150;
        v153 = (v150 + 40);
        do
        {
          v154 = *v153;
          v296 = *(v153 - 1);
          v297 = v154;

          v155 = v288;
          sub_22E47CB74();
          v156 = sub_22E47CF24();
          v276 = v157;
          (*v278)(v155, v289);

          v158 = v294;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22E476820(0, *(v158 + 16) + 1, 1);
            v158 = v294;
          }

          v160 = *(v158 + 16);
          v159 = *(v158 + 24);
          if (v160 >= v159 >> 1)
          {
            sub_22E476820((v159 > 1), v160 + 1, 1);
            v158 = v294;
          }

          *(v158 + 16) = v160 + 1;
          v161 = v158 + 16 * v160;
          v162 = v276;
          *(v161 + 32) = v156;
          *(v161 + 40) = v162;
          v153 += 2;
          --v152;
        }

        while (v152);

        v163 = MEMORY[0x277D84F90];
      }

      else
      {

        v163 = v77;
        v158 = v77;
      }

      v164 = sub_22E47A25C(v158);
      v165 = 0;
      v166 = v158 + 40;
LABEL_245:
      v167 = (v166 + 16 * v165);
      while (v164 != v165)
      {
        if (v165 >= *(v158 + 16))
        {
          goto LABEL_349;
        }

        ++v165;
        v168 = *(v167 - 1);
        v169 = *v167;
        v167 += 2;
        v170 = HIBYTE(v169) & 0xF;
        if ((v169 & 0x2000000000000000) == 0)
        {
          v170 = v168 & 0xFFFFFFFFFFFFLL;
        }

        if (v170)
        {
          v276 = v166;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v296 = v163;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22E476820(0, *(v163 + 2) + 1, 1);
            v163 = v296;
          }

          v173 = *(v163 + 2);
          v172 = *(v163 + 3);
          v174 = v173 + 1;
          v166 = v276;
          if (v173 >= v172 >> 1)
          {
            v266 = v173 + 1;
            v255 = v173;
            sub_22E476820((v172 > 1), v173 + 1, 1);
            v174 = v266;
            v173 = v255;
            v166 = v276;
            v163 = v296;
          }

          *(v163 + 2) = v174;
          v175 = &v163[16 * v173];
          *(v175 + 4) = v168;
          *(v175 + 5) = v169;
          goto LABEL_245;
        }
      }

      v78 = v285;
    }

    else
    {
      v163 = v77;
    }

    v276 = v163;
    v176 = v270;
    if (v293 >= v67)
    {
      v176 = 0;
    }

    v177 = v281;
    if (v176 == 1)
    {
      v178 = v293;
      sub_22E4785C4(v293, 1, v66);
      v179 = (v78 + 16 * v178);
      v180 = *v179 == 1163219540 && v179[1] == 0xE400000000000000;
      if (v180 || (sub_22E47D054() & 1) != 0)
      {
        v181 = 3;
        goto LABEL_275;
      }
    }

    v182 = v267;
    if (v269 >= v67)
    {
      v182 = 0;
    }

    if ((v182 & 1) == 0)
    {
      goto LABEL_274;
    }

    sub_22E4785C4(v269, 1, v66);
    v183 = (v78 + 16 * v269);
    v184 = *v183;
    v185 = v183[1];
    v186 = *v183 == 0x63696C627550 && v185 == 0xE600000000000000;
    if (v186 || (sub_22E47D054() & 1) != 0)
    {
      goto LABEL_274;
    }

    if (v184 == 0xD000000000000017 && v259 == v185 || (sub_22E47D054() & 1) != 0)
    {
      v181 = 1;
    }

    else
    {
      if ((v184 != 0x65746176697250 || v185 != 0xE700000000000000) && (sub_22E47D054() & 1) == 0)
      {
LABEL_274:
        v181 = 0;
        goto LABEL_275;
      }

      v181 = 2;
    }

LABEL_275:
    v187 = v264;
    if (v177 >= v67)
    {
      v187 = 0;
    }

    if (v187 != 1)
    {
      goto LABEL_282;
    }

    sub_22E4785C4(v177, 1, v66);
    v188 = (v78 + 16 * v177);
    v190 = *v188;
    v189 = v188[1];
    v191 = HIBYTE(v189) & 0xF;
    if ((v189 & 0x2000000000000000) == 0)
    {
      v191 = v190 & 0xFFFFFFFFFFFFLL;
    }

    if (v191)
    {
      v266 = v190;
      v255 = v189;
    }

    else
    {
LABEL_282:
      v266 = 0;
      v255 = 0;
    }

    v59 = v63 + 1;
    v192 = sub_22E4509F8(MEMORY[0x277D84F90]);
    v193 = 1 << *(v277 + 32);
    if (v193 < 64)
    {
      v194 = ~(-1 << v193);
    }

    else
    {
      v194 = -1;
    }

    v195 = v194 & v277[8];
    v196 = (v193 + 63) >> 6;

    v197 = 0;
    v198 = v265;
    while (v195)
    {
LABEL_292:
      v200 = __clz(__rbit64(v195));
      v195 &= v195 - 1;
      v201 = v200 | (v197 << 6);
      v202 = *(v277[6] + 8 * v201);
      if ((v202 & 0x8000000000000000) == 0 && v202 < v67)
      {
        v251 = v181;
        if (v202 >= *(v66 + 16))
        {
          goto LABEL_358;
        }

        v203 = (v277[7] + 16 * v201);
        v204 = v203[1];
        v253 = *v203;
        v254 = v204;
        v205 = (v285 + 16 * v202);
        v206 = v205[1];
        v249 = *v205;
        swift_bridgeObjectRetain_n();
        v250 = v206;

        v248 = swift_isUniquelyReferenced_nonNull_native();
        v296 = v192;
        v252 = sub_22E450B0C(v253, v254);
        v207 = v192[2];
        v209 = v208;
        v210 = (v208 & 1) == 0;
        if (__OFADD__(v207, v210))
        {
          goto LABEL_359;
        }

        if (sub_22E45EC3C(v248, v207 + v210))
        {
          v211 = sub_22E450B0C(v253, v254);
          if ((v209 & 1) != (v212 & 1))
          {
            goto LABEL_361;
          }

          v252 = v211;
        }

        if (v209)
        {

          v192 = v296;
          v213 = (v296[7] + 16 * v252);
          v253 = v213[1];
          v214 = v250;
          *v213 = v249;
          v213[1] = v214;
        }

        else
        {
          v192 = v296;
          v215 = v252;
          v296[(v252 >> 6) + 8] |= 1 << v252;
          v216 = (v192[6] + 16 * v215);
          v217 = v254;
          *v216 = v253;
          v216[1] = v217;
          v218 = (v192[7] + 16 * v215);
          v219 = v250;
          *v218 = v249;
          v218[1] = v219;

          v220 = v192[2];
          v221 = __OFADD__(v220, 1);
          v222 = v220 + 1;
          if (v221)
          {
            goto LABEL_360;
          }

          v192[2] = v222;
        }

        v198 = v265;
        v181 = v251;
      }
    }

    while (1)
    {
      v199 = v197 + 1;
      if (__OFADD__(v197, 1))
      {
        break;
      }

      if (v199 >= v196)
      {
        v254 = v192;

        v223 = v280;
        v224 = v263;
        if (v280 >= v67)
        {
          v224 = 0;
        }

        if (v224 != 1)
        {
          goto LABEL_311;
        }

        sub_22E4785C4(v280, 1, v66);
        v225 = (v285 + 16 * v223);
        v227 = *v225;
        v226 = v225[1];
        v228 = HIBYTE(v226) & 0xF;
        if ((v226 & 0x2000000000000000) == 0)
        {
          v228 = v227 & 0xFFFFFFFFFFFFLL;
        }

        if (v228)
        {
          v252 = v226;
          v253 = v227;
        }

        else
        {
LABEL_311:
          v252 = 0;
          v253 = 0;
        }

        v229 = v279;
        v230 = v262;
        if (v279 >= v67)
        {
          v230 = 0;
        }

        if (v230 == 1)
        {
          v231 = 1;
          sub_22E4785C4(v279, 1, v66);
          v232 = (v285 + 16 * v229);
          if (*v232 != 1163219540 || v232[1] != 0xE400000000000000)
          {
            v231 = sub_22E47D054();
          }
        }

        else
        {
          v231 = 0;
        }

        if (v268 || v292 >= v67)
        {

          v234 = 4;
        }

        else
        {
          sub_22E4785C4(v292, 1, v66);
          v233._countAndFlagsBits = sub_22E47CE04();
          RenderingMode.init(rawValue:)(v233);

          v234 = v296;
        }

        v235 = v283;
        v236 = v181;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = sub_22E478920(0, *(v275 + 2) + 1, 1, v275);
        }

        v61 = v286;
        v58 = v287;
        v60 = v291;
        v238 = *(v275 + 2);
        v237 = *(v275 + 3);
        if (v238 >= v237 >> 1)
        {
          v246 = sub_22E478920((v237 > 1), v238 + 1, 1, v275);
          v60 = v291;
          v275 = v246;
          v61 = v286;
          v58 = v287;
        }

        v239 = v275;
        *(v275 + 2) = v238 + 1;
        v240 = &v239[104 * v238];
        v241 = v257;
        *(v240 + 8) = v256;
        *(v240 + 5) = v235;
        *(v240 + 6) = v241;
        v240[56] = v231 & 1;
        v242 = *(v301 + 3);
        *(v240 + 57) = v301[0];
        *(v240 + 15) = v242;
        v243 = v255;
        *(v240 + 8) = v266;
        *(v240 + 9) = v243;
        v244 = v276;
        *(v240 + 10) = v258;
        *(v240 + 11) = v244;
        v240[96] = v236;
        LODWORD(v244) = *&v300[3];
        *(v240 + 97) = *v300;
        *(v240 + 25) = v244;
        v245 = v252;
        *(v240 + 13) = v253;
        *(v240 + 14) = v245;
        v62 = v239;
        v240[120] = v234;
        LODWORD(v245) = *&v299[3];
        *(v240 + 121) = *v299;
        *(v240 + 31) = v245;
        *(v240 + 16) = v254;
        v17 = v282;
        v57 = v290;
        if (v261 != v63)
        {
          goto LABEL_82;
        }

        goto LABEL_339;
      }

      v195 = v198[v199];
      ++v197;
      if (v195)
      {
        v197 = v199;
        goto LABEL_292;
      }
    }

LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  v79 = v273;
  sub_22E4785C4(v273, 1, v66);
  v80 = (v78 + 16 * v79);
  v82 = *v80;
  v81 = v80[1];
  v296 = v82;
  v297 = v81;
  v294 = 44;
  v295 = 0xE100000000000000;
  v266 = sub_22E453EA4();
  v83 = sub_22E47CF14();
  v84 = sub_22E454B7C(v83);
  if (!v84)
  {

    v91 = v77;
    goto LABEL_117;
  }

  v85 = v84;
  v294 = v77;
  sub_22E4785E4(v84);
  if (v85 < 0)
  {
    goto LABEL_355;
  }

  v258 = v83;
  v86 = (v83 + 40);
  do
  {
    v87 = *v86;
    v296 = *(v86 - 1);
    v297 = v87;

    v88 = v288;
    sub_22E47CB74();
    v89 = sub_22E47CF24();
    v276 = v90;
    (*v278)(v88, v289);

    v91 = v294;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22E476820(0, *(v91 + 16) + 1, 1);
      v91 = v294;
    }

    v93 = *(v91 + 16);
    v92 = *(v91 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_22E476820((v92 > 1), v93 + 1, 1);
      v91 = v294;
    }

    *(v91 + 16) = v93 + 1;
    v94 = v91 + 16 * v93;
    v95 = v276;
    *(v94 + 32) = v89;
    *(v94 + 40) = v95;
    v86 += 2;
    --v85;
  }

  while (v85);

  v77 = MEMORY[0x277D84F90];
LABEL_117:
  v96 = sub_22E47A25C(v91);
  if (v96)
  {
    v97 = v96;
    v98 = 0;
    v99 = v91 + 32;
    v100 = v77;
    v101 = v260;
    v276 = v96;
    v266 = v91 + 32;
    while (1)
    {
      if (v98 >= *(v91 + 16))
      {
        goto LABEL_350;
      }

      v102 = (v99 + 16 * v98);
      v104 = *v102;
      v103 = v102[1];
      ++v98;
      v105 = HIBYTE(v103) & 0xF;
      v106 = v104 & 0xFFFFFFFFFFFFLL;
      if ((v103 & 0x2000000000000000) != 0)
      {
        v107 = HIBYTE(v103) & 0xF;
      }

      else
      {
        v107 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (!v107)
      {
        goto LABEL_204;
      }

      if ((v103 & 0x1000000000000000) == 0)
      {
        break;
      }

      v110 = sub_22E4797F8(v104, v103, 16);

      v99 = v266;
      v97 = v276;
      v101 = v260;
      if ((v110 & 0x100000000) == 0)
      {
LABEL_207:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_22E478B4C(0, *(v100 + 2) + 1, 1, v100);
        }

        v131 = *(v100 + 2);
        v130 = *(v100 + 3);
        v101 = v260;
        v97 = v276;
        v99 = v266;
        if (v131 >= v130 >> 1)
        {
          v134 = sub_22E478B4C((v130 > 1), v131 + 1, 1, v100);
          v99 = v266;
          v97 = v276;
          v101 = v260;
          v100 = v134;
        }

        *(v100 + 2) = v131 + 1;
        *&v100[4 * v131 + 32] = v110;
      }

LABEL_204:
      if (v98 == v97)
      {
        goto LABEL_214;
      }
    }

    if ((v103 & 0x2000000000000000) != 0)
    {
      v296 = v104;
      v297 = v103 & 0xFFFFFFFFFFFFFFLL;
      if (v104 == 43)
      {
        if (!v105)
        {
          goto LABEL_354;
        }

        if (--v105)
        {
          LODWORD(v110) = 0;
          v122 = v101;
          while (1)
          {
            v123 = *v122;
            v124 = v123 - 48;
            if ((v123 - 48) >= 0xA)
            {
              if ((v123 - 65) < 6)
              {
                v124 = v123 - 55;
              }

              else
              {
                if ((v123 - 97) > 5)
                {
                  goto LABEL_202;
                }

                v124 = v123 - 87;
              }
            }

            if (v110 >> 28)
            {
              break;
            }

            LODWORD(v110) = 16 * v110 + v124;
            ++v122;
            if (!--v105)
            {
              goto LABEL_203;
            }
          }
        }
      }

      else if (v104 == 45)
      {
        if (!v105)
        {
          goto LABEL_351;
        }

        if (--v105)
        {
          LODWORD(v110) = 0;
          v115 = v101;
          while (1)
          {
            v116 = *v115;
            v117 = v116 - 48;
            if ((v116 - 48) >= 0xA)
            {
              if ((v116 - 65) < 6)
              {
                v117 = v116 - 55;
              }

              else
              {
                if ((v116 - 97) > 5)
                {
                  goto LABEL_202;
                }

                v117 = v116 - 87;
              }
            }

            if (v110 >> 28)
            {
              break;
            }

            v118 = 16 * v110;
            LODWORD(v110) = 16 * v110 - v117;
            if (v118 < v117)
            {
              break;
            }

            ++v115;
            if (!--v105)
            {
              goto LABEL_203;
            }
          }
        }
      }

      else if (v105)
      {
        LODWORD(v110) = 0;
        v127 = &v296;
        while (1)
        {
          v128 = *v127;
          v129 = v128 - 48;
          if ((v128 - 48) >= 0xA)
          {
            if ((v128 - 65) < 6)
            {
              v129 = v128 - 55;
            }

            else
            {
              if ((v128 - 97) > 5)
              {
                goto LABEL_202;
              }

              v129 = v128 - 87;
            }
          }

          if (v110 >> 28)
          {
            break;
          }

          LODWORD(v110) = 16 * v110 + v129;
          ++v127;
          if (!--v105)
          {
            goto LABEL_203;
          }
        }
      }

      goto LABEL_202;
    }

    if ((v104 & 0x1000000000000000) != 0)
    {
      v108 = ((v103 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v132 = v97;
      v133 = v99;
      v108 = sub_22E47CFA4();
      v99 = v133;
      v97 = v132;
      v101 = v260;
    }

    v109 = *v108;
    if (v109 == 43)
    {
      if (v106 < 1)
      {
        goto LABEL_352;
      }

      v105 = v106 - 1;
      if (v106 == 1)
      {
        goto LABEL_202;
      }

      if (v108)
      {
        LODWORD(v110) = 0;
        v119 = v108 + 1;
        while (1)
        {
          v120 = *v119;
          v121 = v120 - 48;
          if ((v120 - 48) >= 0xA)
          {
            if ((v120 - 65) < 6)
            {
              v121 = v120 - 55;
            }

            else
            {
              if ((v120 - 97) > 5)
              {
                goto LABEL_202;
              }

              v121 = v120 - 87;
            }
          }

          if (v110 >> 28)
          {
            goto LABEL_202;
          }

          LODWORD(v110) = 16 * v110 + v121;
          ++v119;
          if (!--v105)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v109 == 45)
    {
      if (v106 < 1)
      {
        goto LABEL_353;
      }

      v105 = v106 - 1;
      if (v106 == 1)
      {
        goto LABEL_202;
      }

      if (v108)
      {
        LODWORD(v110) = 0;
        v111 = v108 + 1;
        while (1)
        {
          v112 = *v111;
          v113 = v112 - 48;
          if ((v112 - 48) >= 0xA)
          {
            if ((v112 - 65) < 6)
            {
              v113 = v112 - 55;
            }

            else
            {
              if ((v112 - 97) > 5)
              {
                goto LABEL_202;
              }

              v113 = v112 - 87;
            }
          }

          if (v110 >> 28)
          {
            goto LABEL_202;
          }

          v114 = 16 * v110;
          LODWORD(v110) = 16 * v110 - v113;
          if (v114 < v113)
          {
            goto LABEL_202;
          }

          ++v111;
          if (!--v105)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else
    {
      if (!v106)
      {
LABEL_202:
        LODWORD(v110) = 0;
        LOBYTE(v105) = 1;
LABEL_203:
        LOBYTE(v294) = v105;
        if ((v105 & 1) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_204;
      }

      if (v108)
      {
        LODWORD(v110) = 0;
        while (1)
        {
          v125 = *v108;
          v126 = v125 - 48;
          if ((v125 - 48) >= 0xA)
          {
            if ((v125 - 65) < 6)
            {
              v126 = v125 - 55;
            }

            else
            {
              if ((v125 - 97) > 5)
              {
                goto LABEL_202;
              }

              v126 = v125 - 87;
            }
          }

          if (v110 >> 28)
          {
            goto LABEL_202;
          }

          LODWORD(v110) = 16 * v110 + v126;
          ++v108;
          if (!--v106)
          {
            LOBYTE(v105) = 0;
            goto LABEL_203;
          }
        }
      }
    }

    LODWORD(v110) = 0;
    LOBYTE(v105) = 0;
    goto LABEL_203;
  }

  v100 = v77;
LABEL_214:

  v135 = sub_22E47A25C(v100);
  if (!v135)
  {

    v77 = MEMORY[0x277D84F90];
    v258 = MEMORY[0x277D84F90];
LABEL_229:
    v78 = v285;
    goto LABEL_230;
  }

  v136 = v135;
  if (v135 >= 1)
  {
    v137 = 32;
    v138 = MEMORY[0x277D84F90];
    v139 = v100;
    do
    {
      v140 = *&v100[v137];
      if (v140 <= 0x10FFFF && (v140 & 0xFFFFF800) != 55296)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_22E478A48(0, *(v138 + 2) + 1, 1, v138);
        }

        v143 = *(v138 + 2);
        v142 = *(v138 + 3);
        v144 = v138;
        if (v143 >= v142 >> 1)
        {
          v144 = sub_22E478A48((v142 > 1), v143 + 1, 1, v138);
        }

        *(v144 + 2) = v143 + 1;
        v138 = v144;
        *&v144[4 * v143 + 32] = v140;
        v100 = v139;
      }

      v137 += 4;
      --v136;
    }

    while (v136);
    v258 = v138;

    v77 = MEMORY[0x277D84F90];
    goto LABEL_229;
  }

LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  result = sub_22E47D094();
  __break(1u);
  return result;
}