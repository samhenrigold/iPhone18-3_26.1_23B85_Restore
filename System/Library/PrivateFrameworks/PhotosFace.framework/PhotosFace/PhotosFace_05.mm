uint64_t sub_22FDDE578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4680, &qword_22FE4BE88);
  result = sub_22FE43AF4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_22FE43DB4();
      MEMORY[0x23190B9C0](qword_22FE4BEF0[v20]);
      result = sub_22FE43E04();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22FDDE810(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  result = sub_22FD93E04(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_27DAE2CA8, &unk_22FE4BE90);
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

void *sub_22FDDE8C8()
{
  v1 = v0;
  v2 = type metadata accessor for StoredPhotoLayout(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v5 = *v0;
  v6 = sub_22FE43AE4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_22FDE02B8(*(v5 + 56) + v22, v4, type metadata accessor for StoredPhotoLayout);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_22FDE0250(v4, *(v7 + 56) + v22, type metadata accessor for StoredPhotoLayout);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *sub_22FDDEAFC()
{
  v1 = v0;
  v33 = sub_22FE428C4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CD0, &qword_22FE49000);
  v3 = *v0;
  v4 = sub_22FE43AE4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_22FDDED90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CB0, &qword_22FE48FF0);
  v2 = *v0;
  v3 = sub_22FE43AE4();
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

void *sub_22FDDEF14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22FE43AE4();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_22FDDF060()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA0, &unk_22FE48FE0);
  v4 = *v0;
  v5 = sub_22FE43AE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + 4 * v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_22FD764B4(*(v4 + 56) + v22, v27, &qword_27DAE2CA8, &unk_22FE4BE90);
        v23 = v29;
        *(*(v29 + 48) + 4 * v19) = v20;
        result = sub_22FD93E04(v21, *(v23 + 56) + v22, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22FDDF2AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4680, &qword_22FE4BE88);
  v2 = *v0;
  v3 = sub_22FE43AE4();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void sub_22FDDF410(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for StoredPhotoLayout(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  MEMORY[0x28223BE20](v11);
  v15 = (&v49 - v14);
  v53 = *(a1 + 16);
  if (!v53)
  {
    goto LABEL_22;
  }

  v49 = v3;
  v50 = v8;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v52 = *(v13 + 72);
  sub_22FD764B4(a1 + v17, &v49 - v14, &qword_27DAE2CE8, &unk_22FE4A850);
  v57 = *v15;
  v18 = v57;
  v51 = v16;
  sub_22FDE0250(v15 + v16, v10, type metadata accessor for StoredPhotoLayout);
  v19 = *a3;
  v20 = sub_22FD746AC(v18);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_22FDDD218(v25, a2 & 1);
    v20 = sub_22FD746AC(v18);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      type metadata accessor for PFCTimePosition(0);
      sub_22FE43D14();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_22FDDE8C8();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v56 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22FDE01F0(v10, type metadata accessor for StoredPhotoLayout);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v31[6] + 8 * v20) = v18;
  v32 = v31[7];
  v50 = *(v50 + 72);
  sub_22FDE0250(v10, v32 + v50 * v20, type metadata accessor for StoredPhotoLayout);
  v33 = v31[2];
  v24 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v24)
  {
    v31[2] = v34;
    if (v53 == 1)
    {
LABEL_22:

      return;
    }

    v35 = a1 + v52 + v17;
    v36 = 1;
    while (v36 < *(a1 + 16))
    {
      sub_22FD764B4(v35, v15, &qword_27DAE2CE8, &unk_22FE4A850);
      v57 = *v15;
      v37 = v57;
      sub_22FDE0250(v15 + v51, v10, type metadata accessor for StoredPhotoLayout);
      v38 = *a3;
      v39 = sub_22FD746AC(v37);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v24 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v24)
      {
        goto LABEL_23;
      }

      v44 = v40;
      if (v38[3] < v43)
      {
        sub_22FDDD218(v43, 1);
        v39 = sub_22FD746AC(v37);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v44)
      {
        goto LABEL_9;
      }

      v46 = *a3;
      *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      *(v46[6] + 8 * v39) = v37;
      sub_22FDE0250(v10, v46[7] + v50 * v39, type metadata accessor for StoredPhotoLayout);
      v47 = v46[2];
      v24 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v36;
      v46[2] = v48;
      v35 += v52;
      if (v53 == v36)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000001BLL, 0x800000022FE484A0);
  type metadata accessor for PFCTimePosition(0);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](39, 0xE100000000000000);
  sub_22FE43A74();
  __break(1u);
}

uint64_t sub_22FDDF95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FD74870(a2, a3);
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
      sub_22FDDDD0C(v16, a4 & 1);
      v11 = sub_22FD74870(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22FE43D14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22FDDED90();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_22FDDFAD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FD748E8(a2);
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
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      return sub_22FDE176C(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_27DAE2CA8, &unk_22FE4BE90);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22FDDF060();
    goto LABEL_7;
  }

  sub_22FDDE230(v13, a3 & 1);
  v20 = sub_22FD748E8(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_22FE43D14();
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

  return sub_22FDDE810(v10, a2, a1, v16);
}

unint64_t sub_22FDDFC34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22FD74930(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22FDDE578(v16, a4 & 1);
      result = sub_22FD74930(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22FE43D14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22FDDF2AC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_22FDDFD94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22FE43AD4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_22FDDFDF8(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for StoredPhotoLayout(0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4698, &unk_22FE4BEB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v18 = 0;
  v33 = v8;
  v37 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = *(*(v35 + 48) + 8 * v23);
      sub_22FDE02B8(*(v35 + 56) + *(v34 + 72) * v23, v5, type metadata accessor for StoredPhotoLayout);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
      v26 = *(v25 + 48);
      v8 = v33;
      *v33 = v24;
      sub_22FDE0250(v5, &v8[v26], type metadata accessor for StoredPhotoLayout);
      (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
      v21 = v19;
LABEL_13:
      sub_22FD93E04(v8, v11, &qword_27DAE4698, &unk_22FE4BEB0);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
      {
        break;
      }

      v28 = *v11;
      sub_22FDE0250(v11 + *(v27 + 48), v5, type metadata accessor for StoredPhotoLayout);
      v29 = *(v36 + 48);
      v38[2] = *(v36 + 32);
      v38[3] = v29;
      v39 = *(v36 + 64);
      v30 = *(v36 + 16);
      v38[0] = *v36;
      v38[1] = v30;
      MEMORY[0x23190B9C0](v28);
      StoredPhotoLayout.hash(into:)(v38);
      sub_22FDE01F0(v5, type metadata accessor for StoredPhotoLayout);
      result = sub_22FE43E04();
      v18 = v21;
      v37 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x23190B9C0](v37);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
        (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FDE01F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDE0250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE02B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10PhotosFace17StoredPhotoLayoutV13ImageLocationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4690, &qword_22FE4BEA8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_22FDE02B8(a1, &v20 - v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE02B8(a2, &v13[v15], type metadata accessor for StoredPhotoLayout.ImageLocation);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22FDE02B8(v13, v10, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_22FE42724();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_22FDE01F0(v13, type metadata accessor for StoredPhotoLayout.ImageLocation);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_22FD93E6C(v13, &qword_27DAE4690, &qword_22FE4BEA8);
    v17 = 0;
    return v17 & 1;
  }

  sub_22FDE01F0(v13, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s10PhotosFace17StoredPhotoLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v42 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4688, &qword_22FE4BEA0);
  MEMORY[0x28223BE20](v45);
  v7 = &v42 - v6;
  v8 = sub_22FE42774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4690, &qword_22FE4BEA8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v21 = *(v20 + 56);
  v48 = a1;
  sub_22FDE02B8(a1, &v42 - v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v49 = a2;
  sub_22FDE02B8(a2, &v19[v21], type metadata accessor for StoredPhotoLayout.ImageLocation);
  v22 = *(v9 + 48);
  if (v22(v19, 1, v8) == 1)
  {
    if (v22(&v19[v21], 1, v8) == 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_27DAE4690;
    v24 = &qword_22FE4BEA8;
    v25 = v19;
LABEL_14:
    sub_22FD93E6C(v25, v23, v24);
    goto LABEL_15;
  }

  sub_22FDE02B8(v19, v16, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if (v22(&v19[v21], 1, v8) == 1)
  {
    (*(v9 + 8))(v16, v8);
    goto LABEL_6;
  }

  (*(v9 + 32))(v11, &v19[v21], v8);
  v26 = sub_22FE42724();
  v27 = *(v9 + 8);
  v27(v11, v8);
  v27(v16, v8);
  if ((v26 & 1) == 0)
  {
    sub_22FDE01F0(v19, type metadata accessor for StoredPhotoLayout.ImageLocation);
    goto LABEL_15;
  }

LABEL_8:
  sub_22FDE01F0(v19, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v28 = type metadata accessor for StoredPhotoLayout(0);
  v29 = v28[5];
  v30 = *(v45 + 48);
  v31 = v48;
  sub_22FD764B4(v48 + v29, v7, &qword_27DAE42D8, &unk_22FE4BA30);
  v32 = v49 + v29;
  v33 = v49;
  sub_22FD764B4(v32, &v7[v30], &qword_27DAE42D8, &unk_22FE4BA30);
  v34 = v47;
  v35 = *(v46 + 48);
  if (v35(v7, 1, v47) != 1)
  {
    v36 = v44;
    sub_22FD764B4(v7, v44, &qword_27DAE42D8, &unk_22FE4BA30);
    if (v35(&v7[v30], 1, v34) != 1)
    {
      v39 = &v7[v30];
      v40 = v43;
      sub_22FDE0250(v39, v43, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v41 = _s10PhotosFace17StoredPhotoLayoutV13ImageLocationO2eeoiySbAE_AEtFZ_0(v36, v40);
      sub_22FDE01F0(v40, type metadata accessor for StoredPhotoLayout.ImageLocation);
      sub_22FDE01F0(v36, type metadata accessor for StoredPhotoLayout.ImageLocation);
      sub_22FD93E6C(v7, &qword_27DAE42D8, &unk_22FE4BA30);
      if ((v41 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    sub_22FDE01F0(v36, type metadata accessor for StoredPhotoLayout.ImageLocation);
    goto LABEL_13;
  }

  if (v35(&v7[v30], 1, v34) != 1)
  {
LABEL_13:
    v23 = &qword_27DAE4688;
    v24 = &qword_22FE4BEA0;
    v25 = v7;
    goto LABEL_14;
  }

  sub_22FD93E6C(v7, &qword_27DAE42D8, &unk_22FE4BA30);
LABEL_19:
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v31 + v28[6]), *(v33 + v28[6])), vceqq_f64(*(v31 + v28[6] + 16), *(v33 + v28[6] + 16))))) & 1) != 0 && *(v31 + v28[7]) == *(v33 + v28[7]) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v31 + v28[8]), *(v33 + v28[8])), vceqq_f64(*(v31 + v28[8] + 16), *(v33 + v28[8] + 16))))) & 1) != 0 && *(v31 + v28[9]) == *(v33 + v28[9]) && *(v31 + v28[10]) == *(v33 + v28[10]) && *(v31 + v28[11]) == *(v33 + v28[11]) && *(v31 + v28[12]) == *(v33 + v28[12]))
  {
    v37 = *(v31 + v28[13]) ^ *(v33 + v28[13]) ^ 1;
    return v37 & 1;
  }

LABEL_15:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s10PhotosFace11StoredPhotoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StoredPhoto(0);
  if ((sub_22FE42824() & 1) == 0 || (sub_22FE42824() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15 || (*v12 != *v14 || v13 != v15) && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + v4[10]) == *(a2 + v4[10]))
  {
    sub_22FDD7B90(*(a1 + v4[11]), *(a2 + v4[11]));
    if (v16)
    {
      v17 = v4[12];
      v18 = (a1 + v17);
      v19 = *(a1 + v17 + 8);
      v20 = (a2 + v17);
      v21 = v20[1];
      if (v19)
      {
        if (v21 && (*v18 == *v20 && v19 == v21 || (sub_22FE43CB4() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v21)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22FDE0E20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDE0E58(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22FDE0F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

__n128 sub_22FDE0FB8(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FDE109C(uint64_t a1)
{
  result = sub_22FDD5628(&qword_27DAE4650, type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22FDE1140()
{
  result = qword_27DAE4658;
  if (!qword_27DAE4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4658);
  }

  return result;
}

void sub_22FDE1324(uint64_t a1)
{
  sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    sub_22FE42854();
    if (v2 <= 0x3F)
    {
      sub_22FDAEF38();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PFCTimePosition(319);
        if (v4 <= 0x3F)
        {
          sub_22FDE1404(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FDE1404(uint64_t a1)
{
  if (!qword_28148AE80)
  {
    type metadata accessor for PFCTimePosition(255);
    type metadata accessor for StoredPhotoLayout(255);
    sub_22FDD5628(&qword_28148AE58, type metadata accessor for PFCTimePosition, MEMORY[0x277D3B398]);
    v1 = sub_22FE42FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_28148AE80);
    }
  }
}

void sub_22FDE14D8(uint64_t a1)
{
  type metadata accessor for StoredPhotoLayout.ImageLocation(319);
  if (v1 <= 0x3F)
  {
    sub_22FDE15A0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PFCTimePosition(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDE15A0(uint64_t a1)
{
  if (!qword_28148B550)
  {
    type metadata accessor for StoredPhotoLayout.ImageLocation(255);
    v1 = sub_22FE43744();
    if (!v2)
    {
      atomic_store(v1, &qword_28148B550);
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

uint64_t sub_22FDE1604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FDE1624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_22FDE16C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22FE42774();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_22FDE171C(uint64_t *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_22FDE176C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t StoredPhotoLayout.baseFilename(for:)()
{
  v1 = sub_22FE42774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v0, v7, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    type metadata accessor for StoredPhotoLayout(0);
    v12[0] = 0x5F65736162;
    v12[1] = 0xE500000000000000;
    v8 = sub_22FE436D4();
    MEMORY[0x23190ACF0](v8);

    MEMORY[0x23190ACF0](95, 0xE100000000000000);
    sub_22FE428C4();
    sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_22FE43C24();
    MEMORY[0x23190ACF0](v9);

    MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
    return v12[0];
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v11 = sub_22FE426E4();
    (*(v2 + 8))(v4, v1);
    return v11;
  }
}

uint64_t StoredPhotoLayout.maskFilename(for:)(uint64_t a1)
{
  v22[1] = a1;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v22 - v14;
  v16 = type metadata accessor for StoredPhotoLayout(0);
  sub_22FDE44BC(v1 + *(v16 + 20), v15);
  v17 = (*(v7 + 48))(v15, 1, v6);
  v18 = 0;
  if (v17 != 1)
  {
    sub_22FDE4B6C(v15, v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FDE4BD4(v12, v9, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      v23 = 0x5F6B73616DLL;
      v24 = 0xE500000000000000;
      v19 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v19);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v20);

      MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
      v18 = v23;
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      v18 = sub_22FE426E4();
      (*(v3 + 8))(v5, v2);
    }

    sub_22FDE4C3C(v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  return v18;
}

uint64_t StoredPhoto.writeToDisk(at:)(uint64_t a1)
{
  v4 = *(type metadata accessor for StoredPhoto(0) + 44);
  v5 = *(v1 + v4);
  v10 = v1;
  v11 = a1;

  sub_22FDE48DC(sub_22FDE4630, &v9, v5);
  v7 = v6;

  if (!v2)
  {

    *(v1 + v4) = v7;
  }

  return result;
}

uint64_t sub_22FDE1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v127 = a2;
  v124 = a1;
  v109 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v88 - v7;
  v8 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = &v88 - v11;
  v120 = sub_22FE426C4();
  v123 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v114 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22FE428C4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v105 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  v22 = sub_22FE42774();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v95 = &v88 - v26;
  MEMORY[0x28223BE20](v27);
  v119 = &v88 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v32);
  v122 = &v88 - v33;
  v34 = type metadata accessor for StoredPhotoLayout(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v124, v36, type metadata accessor for StoredPhotoLayout);
  v37 = *(v17 + 16);
  v102 = v17 + 16;
  v101 = v37;
  v37(v21, v127, v16);
  sub_22FDE4BD4(v36, v15, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v38 = *(v23 + 48);
  v104 = v23 + 48;
  v103 = v38;
  v39 = v38(v15, 1, v22);
  v117 = v23;
  v118 = v36;
  v106 = v17;
  v107 = v16;
  v110 = v34;
  if (v39 == 1)
  {
    static SystemDirectory.baseImageURL(timePosition:uuid:)(*&v36[*(v34 + 28)], v21, v31);
    v100 = *(v17 + 8);
    v100(v21, v16);
    v40 = *(v23 + 32);
    v41 = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v100 = *(v17 + 8);
    v100(v21, v16);
    v40 = *(v23 + 32);
    v41 = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v31, v15, v22);
  }

  v98 = v41;
  v99 = v40;
  v42 = v122;
  v40(v122, v31, v22);
  v125 = sub_22FE426E4();
  v126 = v43;
  LODWORD(v43) = *MEMORY[0x277CC91D8];
  v44 = v123;
  v124 = v22;
  v46 = v123 + 104;
  v45 = *(v123 + 104);
  v47 = v114;
  v94 = v43;
  v48 = v120;
  v93 = v45;
  v45(v114);
  v49 = sub_22FD750CC();
  v50 = v119;
  v92 = v49;
  sub_22FE42764();
  v53 = *(v44 + 8);
  v52 = v44 + 8;
  v51 = v53;
  v53(v47, v48);

  v54 = v115;
  sub_22FDE4BD4(v127, v115, type metadata accessor for StoredPhoto);
  v55 = v116;
  sub_22FDE2BE4(v42, v50);
  if (v55)
  {
    sub_22FDE4C3C(v54, type metadata accessor for StoredPhoto);
    v56 = v124;
    v57 = *(v117 + 8);
    v57(v50, v124);
    v57(v42, v56);
    v58 = v118;
    return sub_22FDE4C3C(v58, type metadata accessor for StoredPhotoLayout);
  }

  v90 = v51;
  v91 = v46;
  v116 = 0;
  v123 = v52;
  sub_22FDE4C3C(v54, type metadata accessor for StoredPhoto);
  v58 = v118;
  sub_22FDE4C3C(v118, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v60 = v117;
  v61 = v124;
  (*(v117 + 16))(v58, v50, v124);
  v62 = v50;
  v63 = *(v60 + 56);
  (v63)(v58, 0, 1, v61);
  v64 = v111;
  v65 = v110[5];
  sub_22FDE44BC(v58 + v65, v111);
  if ((*(v112 + 48))(v64, 1, v113) == 1)
  {
    v66 = *(v60 + 8);
    v67 = v124;
    v66(v50, v124);
    v66(v122, v67);
    v68 = &qword_27DAE42D8;
    v69 = &unk_22FE4BA30;
LABEL_11:
    sub_22FD93E6C(v64, v68, v69);
    goto LABEL_12;
  }

  v89 = v65;
  v110 = v63;
  v115 = v60 + 56;
  sub_22FD93E6C(v64, &qword_27DAE42D8, &unk_22FE4BA30);
  v70 = v105;
  v71 = v127;
  v72 = v107;
  v101(v105, v127, v107);
  v73 = v108;
  StoredPhotoLayout.maskURL(for:)(v70, v108);
  v100(v70, v72);
  if (v103(v73, 1, v124) == 1)
  {
    v64 = v73;
    v74 = *(v60 + 8);
    v75 = v62;
    v76 = v124;
    v74(v75, v124);
    v74(v122, v76);
    v68 = &qword_27DAE4300;
    v69 = &qword_22FE4AB28;
    goto LABEL_11;
  }

  v77 = v95;
  v99(v95, v73, v124);
  v125 = sub_22FE426E4();
  v126 = v78;
  v79 = v120;
  v93(v47, v94, v120);
  v80 = v96;
  sub_22FE42764();
  v90(v47, v79);

  v81 = v97;
  sub_22FDE4BD4(v71, v97, type metadata accessor for StoredPhoto);
  v82 = v116;
  sub_22FDE2BE4(v77, v80);
  v116 = v82;
  if (v82)
  {
    sub_22FDE4C3C(v81, type metadata accessor for StoredPhoto);
    v83 = *(v60 + 8);
    v84 = v124;
    v83(v80, v124);
    v83(v77, v84);
    v83(v119, v84);
    v83(v122, v84);
    return sub_22FDE4C3C(v58, type metadata accessor for StoredPhotoLayout);
  }

  sub_22FDE4C3C(v81, type metadata accessor for StoredPhoto);
  v85 = *(v60 + 8);
  v86 = v124;
  v85(v77, v124);
  v85(v119, v86);
  v85(v122, v86);
  v87 = v89;
  sub_22FD93E6C(v58 + v89, &qword_27DAE42D8, &unk_22FE4BA30);
  v99((v58 + v87), v80, v86);
  (v110)(v58 + v87, 0, 1, v86);
  (*(v112 + 56))(v58 + v87, 0, 1, v113);
LABEL_12:
  sub_22FDE4BD4(v58, v109, type metadata accessor for StoredPhotoLayout);
  return sub_22FDE4C3C(v58, type metadata accessor for StoredPhotoLayout);
}

uint64_t StoredPhotoLayout.baseURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v3, v8, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v9 = sub_22FE42774();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  v11 = type metadata accessor for StoredPhotoLayout(0);
  return static SystemDirectory.baseImageURL(timePosition:uuid:)(*(v3 + *(v11 + 28)), a1, a2);
}

uint64_t sub_22FDE2BE4(uint64_t a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-v10];
  v42 = a1;
  result = sub_22FE42724();
  if ((result & 1) == 0)
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v13 = sub_22FE42D34();
    __swift_project_value_buffer(v13, qword_28148B108);
    v14 = *(v6 + 16);
    v14(v11, v42, v5);
    v14(v8, a2, v5);
    v15 = sub_22FE42D14();
    v16 = sub_22FE436C4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = a2;
      v18 = v17;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v18 = 136315394;
      sub_22FDE4C9C(&qword_28148BE60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v38 = v15;
      v37 = v16;
      v19 = sub_22FE43C24();
      v21 = v20;
      v41 = v2;
      v22 = *(v6 + 8);
      v22(v11, v5);
      v23 = sub_22FD98218(v19, v21, v43);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_22FE43C24();
      v26 = v25;
      v22(v8, v5);
      v27 = sub_22FD98218(v24, v26, v43);

      *(v18 + 14) = v27;
      v28 = v38;
      _os_log_impl(&dword_22FD6D000, v38, v37, "Copying cache item from %s to %s", v18, 0x16u);
      v29 = v39;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v29, -1, -1);
      MEMORY[0x23190C380](v18, -1, -1);
    }

    else
    {

      v30 = *(v6 + 8);
      v30(v8, v5);
      v30(v11, v5);
    }

    v31 = [objc_opt_self() defaultManager];
    v32 = sub_22FE426F4();
    v33 = sub_22FE426F4();
    v43[0] = 0;
    v34 = [v31 copyItemAtURL:v32 toURL:v33 error:v43];

    if (v34)
    {
      return v43[0];
    }

    else
    {
      v35 = v43[0];
      sub_22FE426B4();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t StoredPhotoLayout.maskURL(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a1;
  v55 = a2;
  v3 = sub_22FE426C4();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v54 = &v42 - v11;
  v12 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v42 - v20;
  v22 = type metadata accessor for StoredPhotoLayout(0);
  v23 = *(v22 + 20);
  v47 = v2;
  sub_22FDE44BC(v2 + v23, v21);
  v24 = 1;
  v25 = (*(v13 + 48))(v21, 1, v12);
  v26 = v55;
  if (v25 != 1)
  {
    sub_22FDE4B6C(v21, v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FDE4BD4(v18, v15, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if ((*(v6 + 48))(v15, 1, v5) == 1)
    {
      v27 = v6;
      v46 = v18;
      v42 = *(v47 + *(v22 + 28));
      if (qword_28148B788 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_28148B790);
      v28 = v48;
      sub_22FE42704();
      v56 = sub_22FE42874();
      v57 = v29;
      LODWORD(v47) = *MEMORY[0x277CC91D8];
      v31 = v49;
      v30 = v50;
      v45 = *(v50 + 104);
      v32 = v51;
      v45(v49);
      v44 = sub_22FD750CC();
      sub_22FE42764();
      v50 = *(v30 + 8);
      (v50)(v31, v32);

      v43 = v27;
      v33 = *(v27 + 8);
      v33(v28, v5);
      v56 = 0x5F6B73616DLL;
      v57 = 0xE500000000000000;
      v34 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v34);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v35);

      MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
      (v45)(v31, v47, v32);
      v36 = v53;
      v37 = v54;
      sub_22FE42764();
      v38 = v32;
      v6 = v43;
      (v50)(v31, v38);

      v33(v36, v5);
      sub_22FDE4C3C(v46, type metadata accessor for StoredPhotoLayout.ImageLocation);
      (*(v6 + 32))(v26, v37, v5);
    }

    else
    {
      sub_22FDE4C3C(v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v39 = *(v6 + 32);
      v40 = v54;
      v39(v54, v15, v5);
      v39(v26, v40, v5);
    }

    v24 = 0;
  }

  return (*(v6 + 56))(v26, v24, 1, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoredPhoto.writeToCache()()
{
  v2 = *(type metadata accessor for StoredPhoto(0) + 44);

  sub_22FDE464C(v3, v0);
  v5 = v4;

  if (!v1)
  {

    *(v0 + v2) = v5;
  }
}

uint64_t sub_22FDE36A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v82 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = v75 - v7;
  v8 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = (v75 - v11);
  v12 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FE428C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v91 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v75 - v19;
  v21 = sub_22FE42774();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v76 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = v75 - v25;
  MEMORY[0x28223BE20](v26);
  v96 = v75 - v27;
  MEMORY[0x28223BE20](v28);
  v98 = v75 - v29;
  MEMORY[0x28223BE20](v30);
  v97 = v75 - v31;
  v32 = type metadata accessor for StoredPhotoLayout(0);
  MEMORY[0x28223BE20](v32);
  v34 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(a1, v34, type metadata accessor for StoredPhotoLayout);
  v93 = *(v16 + 16);
  v90 = v16 + 16;
  v93(v20, v99, v15);
  sub_22FDE4BD4(v34, v14, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v35 = *(v22 + 48);
  v86 = v21;
  v79 = v35;
  v80 = v22 + 48;
  v36 = v35(v14, 1, v21);
  v92 = v22;
  v94 = v32;
  if (v36 == 1)
  {
    static SystemDirectory.baseImageURL(timePosition:uuid:)(*&v34[*(v32 + 28)], v20, v98);
    v37 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v95 = *(v16 + 8);
    v95(v20, v15);
    v38 = *(v22 + 32);
    v39 = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40 = v86;
  }

  else
  {
    v37 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v95 = *(v16 + 8);
    v95(v20, v15);
    v38 = *(v22 + 32);
    v39 = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v41 = v14;
    v40 = v86;
    v38(v98, v41, v86);
  }

  v75[1] = v39;
  v86 = v38;
  v42 = v97;
  v38(v97, v98, v40);
  v43 = *&v34[*(v94 + 28)];
  v44 = v91;
  v45 = v99;
  v93(v91, v99, v15);
  v46 = v15;
  v47 = v96;
  static SystemDirectory.baseImageURL(timePosition:uuid:)(v43, v44, v96);
  v95(v44, v46);
  v48 = v87;
  sub_22FDE4BD4(v45, v87, type metadata accessor for StoredPhoto);
  v49 = v88;
  sub_22FDE2BE4(v42, v47);
  v89 = v34;
  if (!v49)
  {
    v88 = v43;
    v98 = v37;
    sub_22FDE4C3C(v48, type metadata accessor for StoredPhoto);
    sub_22FDE4C3C(v34, type metadata accessor for StoredPhotoLayout.ImageLocation);
    v52 = v40;
    v53 = v92;
    v55 = v92 + 56;
    v54 = *(v92 + 56);
    (v54)(v34, 1, 1, v40);
    v94 = *(v94 + 20);
    v56 = v83;
    sub_22FDE44BC(&v34[v94], v83);
    if ((*(v84 + 48))(v56, 1, v85) == 1)
    {
      v57 = *(v53 + 8);
      v57(v96, v40);
      v57(v97, v40);
      v58 = &qword_27DAE42D8;
      v59 = &unk_22FE4BA30;
      v60 = v56;
    }

    else
    {
      v87 = v54;
      sub_22FD93E6C(v56, &qword_27DAE42D8, &unk_22FE4BA30);
      v61 = v91;
      v93(v91, v99, v46);
      v62 = v81;
      StoredPhotoLayout.maskURL(for:)(v61, v81);
      v63 = v61;
      v64 = v95;
      v95(v61, v46);
      if (v79(v62, 1, v52) != 1)
      {
        v83 = v55;
        v95 = v64;
        v68 = v77;
        v86(v77, v62, v52);
        v69 = v99;
        v93(v63, v99, v46);
        v70 = v76;
        static SystemDirectory.maskImageURL(timePosition:uuid:)(v88, v63, v76);
        v95(v63, v46);
        v71 = v78;
        sub_22FDE4BD4(v69, v78, type metadata accessor for StoredPhoto);
        sub_22FDE2BE4(v68, v70);
        sub_22FDE4C3C(v71, type metadata accessor for StoredPhoto);
        v72 = *(v92 + 8);
        v72(v70, v52);
        v72(v68, v52);
        v72(v96, v52);
        v72(v97, v52);
        v73 = v89;
        v74 = v94;
        sub_22FD93E6C(&v89[v94], &qword_27DAE42D8, &unk_22FE4BA30);
        (v87)(v73 + v74, 1, 1, v52);
        (*(v84 + 56))(v73 + v74, 0, 1, v85);
        goto LABEL_11;
      }

      v65 = *(v92 + 8);
      v65(v96, v52);
      v65(v97, v52);
      v58 = &qword_27DAE4300;
      v59 = &qword_22FE4AB28;
      v60 = v62;
    }

    sub_22FD93E6C(v60, v58, v59);
LABEL_11:
    v66 = v89;
    sub_22FDE4BD4(v89, v82, type metadata accessor for StoredPhotoLayout);
    v51 = v66;
    return sub_22FDE4C3C(v51, type metadata accessor for StoredPhotoLayout);
  }

  sub_22FDE4C3C(v48, type metadata accessor for StoredPhoto);
  v50 = *(v92 + 8);
  v50(v47, v40);
  v50(v42, v40);
  v51 = v89;
  return sub_22FDE4C3C(v51, type metadata accessor for StoredPhotoLayout);
}

uint64_t sub_22FDE4110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a1;
  v33 = a6;
  v7 = sub_22FE426C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42774();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_28148B790);
  sub_22FE42704();
  v18 = sub_22FE42874();
  v24 = a2;
  v34 = v18;
  v35 = v19;
  v28 = *MEMORY[0x277CC91D8];
  v27 = *(v8 + 104);
  v27(v10);
  v26 = sub_22FD750CC();
  sub_22FE42764();
  v25 = *(v8 + 8);
  v25(v10, v7);
  v20 = *(v12 + 8);
  v20(v14, v11);

  v34 = v29;
  v35 = 0xE500000000000000;
  v21 = sub_22FE436D4();
  MEMORY[0x23190ACF0](v21);

  MEMORY[0x23190ACF0](95, 0xE100000000000000);
  sub_22FE428C4();
  sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v22 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v22);

  MEMORY[0x23190ACF0](v31, v32);
  (v27)(v10, v28, v7);
  sub_22FE42764();
  v25(v10, v7);

  return (v20)(v17, v11);
}

uint64_t sub_22FDE44BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22FE436D4();
  MEMORY[0x23190ACF0](v7);

  MEMORY[0x23190ACF0](95, 0xE100000000000000);
  sub_22FE428C4();
  sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v8);

  MEMORY[0x23190ACF0](a4, a5);
  return a3;
}

void sub_22FDE464C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for StoredPhotoLayout(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v8 = sub_22FE43AE4();
  v9 = 0;
  v34 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v29 = v11;
  v30 = v8 + 64;
  v31 = v8;
  v17 = v32;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v34 + 48) + 8 * v21);
      v23 = *(v33 + 72) * v21;
      sub_22FDE4BD4(*(v34 + 56) + v23, v17, type metadata accessor for StoredPhotoLayout);
      v24 = v37;
      sub_22FDE36A8(v17, v35, v5);
      sub_22FDE4C3C(v17, type metadata accessor for StoredPhotoLayout);
      v37 = v24;
      if (v24)
      {
        break;
      }

      v25 = v31;
      *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v25[6] + 8 * v21) = v22;
      sub_22FDE4B6C(v5, v25[7] + v23, type metadata accessor for StoredPhotoLayout);
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      v25[2] = v28;
      v15 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return;
      }

      v20 = *(v29 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v36 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_22FDE48DC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v9 = sub_22FE43AE4();
  v10 = 0;
  v38 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v31 = v12;
  v32 = v9 + 64;
  v33 = v9;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v38 + 48) + 8 * v21);
      v23 = v34;
      v24 = *(v35 + 72) * v21;
      sub_22FDE4BD4(*(v38 + 56) + v24, v34, type metadata accessor for StoredPhotoLayout);
      v25 = v40;
      v36(v23);
      sub_22FDE4C3C(v23, type metadata accessor for StoredPhotoLayout);
      v40 = v25;
      if (v25)
      {
        break;
      }

      v26 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v26[6] + 8 * v21) = v22;
      sub_22FDE4B6C(v6, v26[7] + v24, type metadata accessor for StoredPhotoLayout);
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_17;
      }

      v26[2] = v29;
      v16 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_22FDE4B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE4BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE4C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDE4C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDE4D10(uint64_t a1)
{
  type metadata accessor for CommunicationActor();
  v1 = swift_allocObject();
  if (qword_28148B420 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  *(v1 + 16) = qword_28148B428;
  off_28148B418 = v1;

  return MEMORY[0x2821F9840]();
}

uint64_t static CommunicationActor.shared.getter()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22FDE4DF8()
{
  v0 = sub_22FE436E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FE436F4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22FE42EA4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDE5450();
  sub_22FE42E94();
  v7[1] = MEMORY[0x277D84F90];
  sub_22FDE549C(&qword_28148AE48, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE46B8, &qword_22FE4C078);
  sub_22FDE54E4();
  sub_22FE43824();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_22FE43704();
  qword_28148B428 = result;
  return result;
}

id static CommunicationActor.sharedQueue.getter()
{
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;

  return v1;
}

uint64_t static CommunicationActor.assumeOnQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22FE42EB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v11 = *(off_28148B418 + 2);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_22FE42EC4();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a1;
  v14[4] = a2;

  sub_22FDE5294();

  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t CommunicationActor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FDE5380()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22FDE53DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunicationActor();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_22FDE5450()
{
  result = qword_28148AE40;
  if (!qword_28148AE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28148AE40);
  }

  return result;
}

uint64_t sub_22FDE549C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22FDE54E4()
{
  result = qword_28148AE68;
  if (!qword_28148AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE46B8, &qword_22FE4C078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148AE68);
  }

  return result;
}

void LazyData.write(to:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22FDE17D4(v1 + v2, &v4);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t LazyData.__allocating_init(filename:isTempFile:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22FE42774();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_allocObject();
  v9 = sub_22FDE62BC(0, 0xF000000000000000, v6, v2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t LazyData.getData()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = *(v0 + 16);
  v6 = (v5 + *(*v5 + *MEMORY[0x277D841D0] + 16));
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = *v6;
  v9 = v6[1];
  if (v9 >> 60 != 15)
  {
    v10 = *v6;
    goto LABEL_7;
  }

  v21 = *v6;
  v10 = v1;
  v11 = type metadata accessor for LazyDataState(0);
  sub_22FDE6558(v6 + *(v11 + 20), v4);
  v12 = sub_22FE42774();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v4, 1, v12);
  if (result != 1)
  {
    v15 = sub_22FE42794();
    v22 = v1;
    if (v1)
    {
      (*(v13 + 8))(v4, v12);
      os_unfair_lock_unlock((v5 + v7));
      return v10;
    }

    v10 = v15;
    v17 = v16;
    (*(v13 + 8))(v4, v12);
    v18 = *v6;
    v19 = v6[1];
    *v6 = v10;
    v6[1] = v17;
    sub_22FDB4380(v10, v17);
    sub_22FDC27F0(v18, v19);
    v8 = v21;
LABEL_7:
    sub_22FDE65C8(v8, v9);
    os_unfair_lock_unlock((v5 + v7));
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t LazyData.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_22FE42774();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_allocObject();
  return sub_22FDE62BC(a1, a2, v6, 0);
}

void sub_22FDE5A54(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v53[1] = *MEMORY[0x277D85DE8];
  v47 = a3;
  v50 = *a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v14 = sub_22FE42774();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v48 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v46 - v18;
  v20 = [objc_opt_self() defaultManager];
  v52 = a2;
  v21 = sub_22FE426F4();
  v53[0] = 0;
  v51 = v20;
  LODWORD(v20) = [v20 removeItemAtURL:v21 error:v53];

  if (v20)
  {
    v22 = v53[0];
  }

  else
  {
    v23 = v53[0];
    v24 = sub_22FE426B4();

    swift_willThrow();
    v5 = 0;
  }

  v25 = type metadata accessor for LazyDataState(0);
  sub_22FDE6558(a1 + *(v25 + 20), v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v46[0] = a4;
    v46[1] = v5;
    (*(v15 + 32))(v19, v13, v14);
    v29 = *(v25 + 24);
    v30 = *(a1 + v29);
    v31 = sub_22FE426F4();
    v32 = sub_22FE426F4();
    if (v30 == 1)
    {
      v53[0] = 0;
      v33 = v51;
      v34 = [v51 moveItemAtURL:v31 toURL:v32 error:v53];

      v35 = v53[0];
      if (v34)
      {
        v36 = *(v15 + 8);
        v37 = v53[0];
        v36(v19, v14);

        *(a1 + v29) = 0;
        *v46[0] = v47;

        return;
      }
    }

    else
    {
      v53[0] = 0;
      v33 = v51;
      v38 = [v51 copyItemAtURL:v31 toURL:v32 error:v53];

      v35 = v53[0];
      if (v38)
      {
        v39 = *(v15 + 8);
        v40 = v53[0];
        v39(v19, v14);
        a4 = v46[0];
        v28 = v52;
LABEL_15:
        v42 = *(v15 + 16);
        v43 = v48;
        v42(v48, v28, v14);
        v44 = v49;
        v42(v49, v43, v14);
        (*(v15 + 56))(v44, 0, 1, v14);
        swift_allocObject();
        v45 = sub_22FDE62BC(0, 0xF000000000000000, v44, 0);

        (*(v15 + 8))(v43, v14);
        *a4 = v45;
        return;
      }
    }

    v41 = v35;
    sub_22FE426B4();

    swift_willThrow();
    (*(v15 + 8))(v19, v14);
    return;
  }

  sub_22FDB290C(v13);
  v26 = *(a1 + 8);
  if (v26 >> 60 != 15)
  {
    v27 = *a1;
    sub_22FDB4380(*a1, *(a1 + 8));
    v28 = v52;
    sub_22FE427D4();
    sub_22FDC27F0(v27, v26);
    if (v5)
    {

      return;
    }

    v33 = v51;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t LazyData.isNormalFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + 16);
  v5 = v4 + *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  v7 = type metadata accessor for LazyDataState(0);
  sub_22FDE6558(v5 + *(v7 + 20), v3);
  v8 = sub_22FE42774();
  v9 = (*(*(v8 - 8) + 48))(v3, 1, v8);
  sub_22FDB290C(v3);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v5 + *(v7 + 24)) ^ 1;
  }

  os_unfair_lock_unlock((v4 + v6));
  return v10 & 1;
}

void LazyData.filename.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for LazyDataState(0);
  if (*(v4 + *(v6 + 24)) == 1)
  {
    v7 = sub_22FE42774();
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    sub_22FDE6558(v4 + *(v6 + 20), a1);
  }

  os_unfair_lock_unlock((v3 + v5));
}

BOOL LazyData.isEmpty.getter()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v2;
    v7 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v6 + 16);
        v9 = *(v6 + 24);
      }

      else
      {
        sub_22FDC27F0(v6, *(v2 + 8));
        v9 = 0;
        v8 = 0;
      }
    }

    else if (v7)
    {
      v8 = v6;
      v9 = v6 >> 32;
    }

    else
    {
      sub_22FDC27F0(v6, *(v2 + 8));
      v8 = 0;
      v9 = BYTE6(v4);
    }

    v5 = v8 == v9;
  }

  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

uint64_t sub_22FDE62BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for LazyDataState(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_22FDE6558(a3, v11);
  *v18 = xmmword_22FE4BA20;
  v19 = *(v13 + 28);
  v20 = sub_22FE42774();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  sub_22FDC27F0(*v18, *(v18 + 1));
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_22FDE6E70(v11, &v18[v19]);
  v18[*(v13 + 32)] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45E8, &qword_22FE4BA40);
  v21 = swift_allocObject();
  *(v21 + ((*(*v21 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22FDE6EE0(v18, v15);
  sub_22FDB290C(a3);
  sub_22FDE6F44(v18);
  sub_22FDE6FA0(v15, v21 + *(*v21 + *MEMORY[0x277D841D0] + 16));
  *(v4 + 16) = v21;
  return v4;
}

uint64_t type metadata accessor for LazyDataState(uint64_t a1)
{
  result = qword_27DAE46C0;
  if (!qword_27DAE46C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDE6558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE65C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FDB4380(result, a2);
  }

  return result;
}

uint64_t LazyData.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_22FDE6694(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));

  return v0;
}

uint64_t sub_22FDE6694(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LazyDataState(0);
  sub_22FDE6558(a1 + *(v9 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_22FDB290C(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  if (*(a1 + *(v9 + 24)) == 1)
  {
    v11 = [objc_opt_self() defaultManager];
    v12 = sub_22FE426F4();
    v17[0] = 0;
    v13 = [v11 removeItemAtURL:v12 error:v17];

    if (v13)
    {
      v14 = *(v6 + 8);
      v15 = v17[0];
      return v14(v8, v5);
    }

    v16 = v17[0];
    sub_22FE426B4();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LazyData.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_22FDE6694(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));

  return swift_deallocClassInstance();
}

uint64_t LazyData.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + 16);
  v5 = (v4 + *(*v4 + *MEMORY[0x277D841D0] + 16));
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  v7 = *v5;
  v8 = v5[1];
  v9 = *v5;
  v10 = v8;
  if (v8 >> 60 == 15)
  {
    v24 = v6;
    v11 = type metadata accessor for LazyDataState(0);
    sub_22FDE6558(v5 + *(v11 + 20), v3);
    v12 = sub_22FE42774();
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v3, 1, v12);
    if (result == 1)
    {
      goto LABEL_16;
    }

    v9 = sub_22FE42794();
    v10 = v15;
    (*(v13 + 8))(v3, v12);
    v17 = *v5;
    v16 = v5[1];
    *v5 = v9;
    v5[1] = v10;
    sub_22FDB4380(v9, v10);
    sub_22FDC27F0(v17, v16);
    v6 = v24;
  }

  sub_22FDE65C8(v7, v8);
  os_unfair_lock_unlock((v4 + v6));
  v18 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_22FD917D4(v9, v10);
      v19 = 0;
      goto LABEL_14;
    }

    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    sub_22FD917D4(v9, v10);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v18)
  {
    sub_22FD917D4(v9, v10);
    v19 = BYTE6(v10);
LABEL_14:
    v25 = v19;
    v26 = sub_22FE43C24();
    v27 = v22;
    MEMORY[0x23190ACF0](0x736574796220, 0xE600000000000000);
    return v26;
  }

  result = sub_22FD917D4(v9, v10);
  LODWORD(v19) = HIDWORD(v9) - v9;
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v19 = v19;
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_22FDE6D3C(uint64_t a1)
{
  sub_22FDE6DC8();
  if (v1 <= 0x3F)
  {
    sub_22FDE6E18(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDE6DC8()
{
  if (!qword_27DAE46D0)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE46D0);
    }
  }
}

void sub_22FDE6E18(uint64_t a1)
{
  if (!qword_27DAE46D8)
  {
    sub_22FE42774();
    v1 = sub_22FE43744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAE46D8);
    }
  }
}

uint64_t sub_22FDE6E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE6EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDataState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE6F44(uint64_t a1)
{
  v2 = type metadata accessor for LazyDataState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FDE6FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDataState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE7004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[6];
  v24 = a1[3];
  v25 = a1[4];
  v26 = *(a1 + 40);
  v5 = sub_22FDE8BE8(*a1, v2, v3, v24, v25, v26, v4);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    sub_22FDE9138(v1, v2, v3);
    result = sub_22FD92328(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v9 = v4;
      v27 = v4 + 64;
      v10 = v6;
      v11 = 1;
      v12 = v1;
      v13 = v2;
      v21 = v1;
      v22 = v2;
      v23 = v9;
      v20 = v3;
      while ((v3 & 1) == 0)
      {
        if (v13 != v2)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v12 < v1)
        {
          goto LABEL_27;
        }

        if (v26)
        {
          goto LABEL_39;
        }

        if (v2 != v25)
        {
          goto LABEL_28;
        }

        if (v12 >= v24)
        {
          goto LABEL_29;
        }

        if (v12 < 0 || v12 >= 1 << *(v9 + 32))
        {
          goto LABEL_30;
        }

        if ((*(v27 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v9 + 36) != v2)
        {
          goto LABEL_32;
        }

        v14 = (*(v9 + 48) + 16 * v12);
        v28 = *v14;
        v29 = v14[1];
        swift_bridgeObjectRetain_n();

        MEMORY[0x23190ACF0](8250, 0xE200000000000000);
        v15 = LazyData.description.getter();
        MEMORY[0x23190ACF0](v15);

        v16 = *(v6 + 16);
        v17 = *(v6 + 24);
        if (v16 >= v17 >> 1)
        {
          result = sub_22FD92328((v17 > 1), v16 + 1, 1);
        }

        *(v6 + 16) = v16 + 1;
        v18 = v6 + 16 * v16;
        *(v18 + 32) = v28;
        *(v18 + 40) = v29;
        v9 = v23;
        if (v12 >= -(-1 << *(v23 + 32)))
        {
          goto LABEL_33;
        }

        if ((*(v27 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_34;
        }

        LODWORD(v2) = v22;
        if (*(v23 + 36) != v22)
        {
          goto LABEL_35;
        }

        result = sub_22FE43854();
        if (v7 == v11)
        {
          return v10;
        }

        v12 = result;
        v13 = *(v23 + 36);
        v19 = __OFADD__(v11++, 1);
        v1 = v21;
        v3 = v20;
        if (v19)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

PhotosFace::ProtocolVersion_optional __swiftcall ProtocolVersion.init(rawValue:)(Swift::UInt32 rawValue)
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

uint64_t sub_22FDE72FC()
{
  sub_22FE43DB4();
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDE7370(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t MessageBody.metadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MessageBody.files.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessageBody.init(metadata:files:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t MessageBody.init(data:files:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  LOBYTE(a4) = *a4;
  v13 = sub_22FE42774();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(a1, a2, v12, 0);
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t MessageBody.getData()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = *(*v0 + 16);
  v6 = (v5 + *(*v5 + *MEMORY[0x277D841D0] + 16));
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = *v6;
  v9 = v6[1];
  if (v9 >> 60 != 15)
  {
    v10 = *v6;
    goto LABEL_7;
  }

  v21 = *v6;
  v10 = v1;
  v11 = type metadata accessor for LazyDataState(0);
  sub_22FDE6558(v6 + *(v11 + 20), v4);
  v12 = sub_22FE42774();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v4, 1, v12);
  if (result != 1)
  {
    v15 = sub_22FE42794();
    v22 = v1;
    if (v1)
    {
      (*(v13 + 8))(v4, v12);
      os_unfair_lock_unlock((v5 + v7));
      return v10;
    }

    v10 = v15;
    v17 = v16;
    (*(v13 + 8))(v4, v12);
    v18 = *v6;
    v19 = v6[1];
    sub_22FDB4380(v10, v17);
    sub_22FDC27F0(v18, v19);
    *v6 = v10;
    v6[1] = v17;
    v8 = v21;
LABEL_7:
    sub_22FDE65C8(v8, v9);
    os_unfair_lock_unlock((v5 + v7));
    return v10;
  }

  __break(1u);
  return result;
}

BOOL MessageBody.isEmpty.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  v3 = v2 + *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  v5 = *(v3 + 8);
  if (v5 >> 60 == 15)
  {
    os_unfair_lock_unlock((v2 + v4));
    return 0;
  }

  v6 = *v3;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_22FDC27F0(v6, *(v3 + 8));
      os_unfair_lock_unlock((v2 + v4));
      return *(v1 + 16) == 0;
    }

    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
  }

  else if (v7)
  {
    v8 = v6;
    v9 = v6 >> 32;
  }

  else
  {
    sub_22FDC27F0(v6, *(v3 + 8));
    v8 = 0;
    v9 = BYTE6(v5);
  }

  os_unfair_lock_unlock((v2 + v4));
  if (v8 != v9)
  {
    return 0;
  }

  return *(v1 + 16) == 0;
}

uint64_t static MessageBody.empty(version:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = sub_22FD75618(MEMORY[0x277D84F90]);
  v9 = sub_22FE42774();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(0, 0xC000000000000000, v6, 0);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  return result;
}

uint64_t MessageBody.init<A>(serializable:version:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = *a2;
  v27 = MEMORY[0x277D84F98];
  v26 = v15;
  (*(a4 + 24))(&v27, &v26, a3, a4, v12);
  v25 = v15;
  v16 = (*(a4 + 16))(&v25, a3, a4);
  if (v5)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v19 = v27;
    v20 = v16;
    v21 = v17;
    v22 = sub_22FE42774();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    type metadata accessor for LazyData();
    swift_allocObject();
    v23 = sub_22FDE62BC(v20, v21, v14, 0);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a5 = v23;
    *(a5 + 8) = v19;
    *(a5 + 16) = v15;
  }

  return result;
}

void MessageBody.deserialized<A>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = *v3;
  v30 = v3[1];
  v33 = *(v3 + 16);
  v10 = *(v9 + 16);
  v11 = (v10 + *(*v10 + *MEMORY[0x277D841D0] + 16));
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  v13 = *v11;
  v14 = v11[1];
  if (v14 >> 60 == 15)
  {
    v28[0] = *v11;
    v28[1] = a3;
    v29 = a1;
    v15 = type metadata accessor for LazyDataState(0);
    sub_22FDE6558(v11 + *(v15 + 20), v8);
    v16 = sub_22FE42774();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {
      __break(1u);
      return;
    }

    v18 = v32;
    v19 = sub_22FE42794();
    v32 = v18;
    if (v18)
    {
      (*(v17 + 8))(v8, v16);
      os_unfair_lock_unlock((v10 + v12));
      return;
    }

    v21 = v19;
    v22 = v20;
    (*(v17 + 8))(v8, v16);
    v23 = *v11;
    v24 = v11[1];
    sub_22FDB4380(v21, v22);
    sub_22FDC27F0(v23, v24);
    *v11 = v21;
    v11[1] = v22;
    a1 = v29;
    v13 = v28[0];
  }

  else
  {
    v21 = *v11;
    v22 = v11[1];
  }

  sub_22FDE65C8(v13, v14);
  os_unfair_lock_unlock((v10 + v12));
  v25 = v33;
  v35 = v33;
  v27 = v31;
  v26 = v32;
  (*(v31 + 8))(v21, v22, &v35, a1, v31);
  if (!v26)
  {
    v34 = v25;
    (*(v27 + 32))(v30, &v34, a1, v27);
  }
}

uint64_t Message.Operation.hash(into:)()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }

    goto LABEL_8;
  }

  if (!*(v0 + 8))
  {
    v1 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v1);
    return sub_22FE43DE4();
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
  return sub_22FE43DE4();
}

uint64_t Message.Operation.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_22FE43DB4();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_8;
  }

  if (!v1)
  {
    v2 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v2);
    goto LABEL_9;
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
LABEL_9:
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDE8098()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }

    goto LABEL_8;
  }

  if (!*(v0 + 8))
  {
    v1 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v1);
    return sub_22FE43DE4();
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
  return sub_22FE43DE4();
}

uint64_t sub_22FDE811C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_22FE43DB4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v3);
    goto LABEL_9;
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
LABEL_9:
  sub_22FE43DE4();
  return sub_22FE43E04();
}

void Message.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Message.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 Message.init(operation:content:complete:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = a2[1].n128_u8[0];
  a4->n128_u64[0] = *a1;
  a4->n128_u8[8] = v4;
  result = *a2;
  a4[1] = *a2;
  a4[2].n128_u8[0] = v5;
  a4[2].n128_u8[1] = a3;
  return result;
}

uint64_t Message.init(operation:data:files:complete:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  v15 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v16 = sub_22FE42774();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(a2, a3, v14, 0);
  *a6 = v15;
  *(a6 + 8) = a1;
  *(a6 + 16) = result;
  *(a6 + 24) = a4;
  *(a6 + 32) = 2;
  *(a6 + 33) = a5;
  return result;
}

uint64_t Message.Operation.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) != 1)
  {
    goto LABEL_10;
  }

  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      v12 = type metadata accessor for MessageProto(0);
      v13 = *(v12 + 40);
      v14 = (a1 + *(v12 + 36));
      v15 = *v14;
      v16 = *(v14 + 4);
      v17 = *(a1 + v13 + 4);
      v18 = *(a1 + v13);
      result = sub_22FDE8EA4(a1);
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

      v20 = v18 << 32;
      if (v17)
      {
        v20 = 0;
      }

      v9 = v20 | v19;
      v10 = 1;
    }

    else if (v4 == 3)
    {
      v5 = (a1 + *(type metadata accessor for MessageProto(0) + 40));
      v6 = *v5;
      v7 = *(v5 + 4);
      result = sub_22FDE8EA4(a1);
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6;
      }

      v10 = 2;
    }

    else
    {
      v21 = (a1 + *(type metadata accessor for MessageProto(0) + 40));
      v22 = *v21;
      v23 = *(v21 + 4);
      result = sub_22FDE8EA4(a1);
      if (v23)
      {
        v9 = 0;
      }

      else
      {
        v9 = v22;
      }

      v10 = 3;
    }

    goto LABEL_24;
  }

  if (!v4)
  {
LABEL_10:
    sub_22FD91780();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return sub_22FDE8EA4(a1);
  }

  v24 = (a1 + *(type metadata accessor for MessageProto(0) + 36));
  v25 = *v24;
  v26 = *(v24 + 4);
  result = sub_22FDE8EA4(a1);
  v10 = 0;
  if (v26)
  {
    v9 = 0;
  }

  else
  {
    v9 = v25;
  }

LABEL_24:
  *a2 = v9;
  *(a2 + 8) = v10;
  return result;
}

uint64_t Message.Operation.protobuf(proto:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    *a1 = v6;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v5 = (result + 40);
  }

  else if (*(v1 + 8))
  {
    *a1 = 2;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v7 = a1 + *(result + 36);
    *v7 = v3;
    *(v7 + 4) = 0;
    v5 = (result + 40);
    v3 >>= 32;
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v5 = (result + 36);
  }

  v8 = a1 + *v5;
  *v8 = v3;
  *(v8 + 4) = 0;
  return result;
}

uint64_t Message.shortDescription.getter()
{
  v1 = *(v0 + 33);
  sub_22FE43A44();
  if (v1)
  {
    v2 = 33;
  }

  else
  {
    v2 = 43;
  }

  MEMORY[0x23190ACF0](v2, 0xE100000000000000);

  return 0;
}

uint64_t Message.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 33);

  sub_22FDE8D84(3, v1, &v14);

  v3 = sub_22FDE7004(&v14);
  v22 = v14;
  v23 = v15;
  sub_22FD93E6C(&v22, &qword_27DAE46E0, &qword_22FE4C0E8);
  v20 = v16;
  v21 = v17;
  sub_22FD93E6C(&v20, &qword_27DAE46E0, &qword_22FE4C0E8);
  v19 = v18;
  sub_22FD93E6C(&v19, &qword_27DAE46E8, &qword_22FE4C0F0);
  if (*(v1 + 16) >= 4uLL)
  {
    v4 = sub_22FE43C24();
    MEMORY[0x23190ACF0](v4);

    MEMORY[0x23190ACF0](0x65726F6D20, 0xE500000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_22FD91850(0, *(v3 + 16) + 1, 1, v3);
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_22FD91850((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = 0x2B20A680E2;
    *(v7 + 40) = 0xA500000000000000;
  }

  sub_22FE438F4();
  MEMORY[0x23190ACF0](0x286567617373654DLL, 0xE800000000000000);
  sub_22FE43A44();
  if (v2)
  {
    v8 = 33;
  }

  else
  {
    v8 = 43;
  }

  MEMORY[0x23190ACF0](v8, 0xE100000000000000);

  MEMORY[0x23190ACF0](0, 0xE000000000000000);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v9 = LazyData.description.getter();
  MEMORY[0x23190ACF0](v9);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v10 = MEMORY[0x23190AE90](v3, MEMORY[0x277D837D0]);
  v12 = v11;

  MEMORY[0x23190ACF0](v10, v12);

  MEMORY[0x23190ACF0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_22FDE89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22FE43834();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_22FDE8A84(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_22FDE9138(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDE8BE8(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

BOOL _s10PhotosFace7MessageV9OperationO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    v7 = v2 == v3;
    if (v4 != 2)
    {
      v7 = 0;
    }

    v8 = v2 == v3;
    if (v4 != 3)
    {
      v8 = 0;
    }

    if (*(a1 + 8) == 2)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else if (*(a1 + 8))
  {
    return v4 == 1 && v2 == v3 && (v3 ^ v2) >> 32 == 0;
  }

  else
  {
    v5 = v2 == v3;
    return !*(a2 + 8) && v5;
  }
}

uint64_t sub_22FDE8D84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = sub_22FE43834();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_22FDE8A84(v6, v7, 0, v4, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    result = sub_22FE43834();
    if (v14 == 255)
    {
      v15 = -v8;
    }

    else
    {
      v15 = v9;
    }

    if (v14 == 255)
    {
      v16 = v7;
    }

    else
    {
      v16 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 36);
    if (v17 == v16)
    {
      if (v15 >= result)
      {
        v21[0] = result;
        v21[1] = v17;
        v22 = 0;
        v23 = v15;
        v24 = v16;
        v25 = 0;
        result = sub_22FDE89A0(v21, a2, v19);
        v18 = v19[1];
        *a3 = v19[0];
        *(a3 + 16) = v18;
        *(a3 + 32) = v19[2];
        *(a3 + 48) = v20;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22FDE8EA4(uint64_t a1)
{
  v2 = type metadata accessor for MessageProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FDE8F00()
{
  result = qword_27DAE46F0;
  if (!qword_27DAE46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE46F0);
  }

  return result;
}

unint64_t sub_22FDE8F58()
{
  result = qword_27DAE46F8;
  if (!qword_27DAE46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE46F8);
  }

  return result;
}

uint64_t sub_22FDE8FBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22FDE9004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FDE9068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_22FDE90B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22FDE9138(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t InFlightRequest.creationDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22FE43A14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t InFlightRequest.init(result:creationDate:requestID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v5 = a3;
  v9 = type metadata accessor for InFlightRequest(0, *(*a1 + 80), a3, a5);
  v10 = &a4[v9[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a4[v9[10]] = 0;
  *a4 = a1;
  v11 = v9[7];
  v12 = sub_22FE43A14();
  result = (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  *&a4[v9[8]] = v5;
  return result;
}

uint64_t InFlightRequest.readNext()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDE92C8, 0, 0);
}

uint64_t sub_22FDE92C8()
{
  v12 = v0;
  v1 = v0[3];
  v2 = (v0[4] + *(v1 + 36));
  if (!*v2)
  {
    AsyncThrowingChannel.makeAsyncIterator()(v11);
    v3 = v11[0];
    v4 = v11[1];
    result = sub_22FDE9540(*v2, v2[1]);
    *v2 = v3;
    v2[1] = v4;
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v1 = v0[3];
  }

  v6 = swift_task_alloc();
  v0[5] = v6;
  v7 = *(v1 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v9 = type metadata accessor for AsyncThrowingChannel.Iterator(0, v7, v8, MEMORY[0x277D84950]);
  *v6 = v0;
  v6[1] = sub_22FDE93DC;
  v10 = v0[2];

  return AsyncThrowingChannel.Iterator.next()(v10, v9);
}

uint64_t sub_22FDE93DC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FDE950C, 0, 0);
  }
}

uint64_t sub_22FDE950C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 40);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_22FDE9540(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t MessageDemultiplexer.__allocating_init(timeout:logTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MessageDemultiplexer.init(timeout:logTag:)(a1, a2, a3 & 1, a4, a5);
  return v10;
}

uint64_t *MessageDemultiplexer.init(timeout:logTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v11 = *v5;
  *(v5 + 8) = 0;
  v12 = type metadata accessor for InFlightRequest(255, *(v11 + 80), a3, a4);
  v13 = MEMORY[0x277D84CC0];
  swift_getTupleTypeMetadata2();
  v14 = sub_22FE432D4();
  v15 = sub_22FDECED0(v14, v13, v12, MEMORY[0x277D84CD0]);

  v5[9] = 0;
  v5[5] = v15;
  v5[6] = a1;
  v5[7] = a2;
  *(v5 + 64) = v8 & 1;
  v5[2] = a4;
  v5[3] = a5;
  return v5;
}

void sub_22FDE96F4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v8 = type metadata accessor for InFlightRequest(255, *(*v4 + 80), a2, a3);
  v9 = sub_22FE43744();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = sub_22FE43A14();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 32);
  if (v15 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 32) = v15 + 1;

    sub_22FE439E4();
    InFlightRequest.init(result:creationDate:requestID:)(a1, v14, v15, a4, v16);
    v17 = *(v8 - 8);
    (*(v17 + 16))(v11, a4, v8);
    (*(v17 + 56))(v11, 0, 1, v8);
    v24 = v15;
    swift_beginAccess();
    sub_22FE42FA4();
    sub_22FE42FC4();
    swift_endAccess();
    if (qword_28148B0E0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v18 = sub_22FE42D34();
  __swift_project_value_buffer(v18, qword_28148B0E8);

  v19 = sub_22FE42D14();
  v20 = sub_22FE43694();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_22FD98218(*(v5 + 16), *(v5 + 24), v23);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v15;
    _os_log_impl(&dword_22FD6D000, v19, v20, "%s: Inserted request %u", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23190C380](v22, -1, -1);
    MEMORY[0x23190C380](v21, -1, -1);
  }

  sub_22FDEB83C();
}

uint64_t sub_22FDE99F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for InFlightRequest(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = sub_22FE43744();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  swift_beginAccess();
  v16[1] = a1;

  sub_22FE42FB4();

  if ((*(v7 + 48))(v13, 1, v6))
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  else
  {
    (*(v7 + 16))(v9, v13, v6);
    (*(v11 + 8))(v13, v10);
    v14 = *&v9[*(v6 + 40)];
    (*(v7 + 8))(v9, v6);
  }

  return v14;
}

uint64_t sub_22FDE9C20(uint64_t a1, int a2)
{
  *(v3 + 244) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = *(*v2 + 80);
  *(v3 + 104) = v4;
  v5 = sub_22FE43744();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = type metadata accessor for InFlightRequest(255, v4, v6, v7);
  v8 = sub_22FE43744();
  *(v3 + 144) = v8;
  *(v3 + 152) = *(v8 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  *(v3 + 184) = v10;
  *(v3 + 192) = v9;

  return MEMORY[0x2822009F8](sub_22FDE9E14, v10, v9);
}

uint64_t sub_22FDE9E14()
{
  v26 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 244);
  swift_beginAccess();
  *(v0 + 232) = v6;

  sub_22FE42FB4();

  (*(v4 + 16))(v1, v2, v3);
  v7 = *(*(v5 - 8) + 48);
  LODWORD(v2) = v7(v1, 1, v5);
  v8 = *(v4 + 8);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  if (v2 == 1)
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v9 = sub_22FE42D34();
    __swift_project_value_buffer(v9, qword_28148B0E8);

    v10 = sub_22FE42D14();
    v11 = sub_22FE436A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 96);
      v13 = *(v0 + 244);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22FD98218(*(v12 + 16), *(v12 + 24), &v25);
      *(v14 + 12) = 1024;
      *(v14 + 14) = v13;
      _os_log_impl(&dword_22FD6D000, v10, v11, "%s: Received response for non-existent request %u", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    sub_22FDED1BC();
    swift_allocError();
    *v16 = 2;
    v17 = *(v0 + 200);
    v18 = *(v0 + 176);
    v19 = *(v0 + 144);
    swift_willThrow();
    v17(v18, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    result = v7(*(v0 + 176), 1, *(v0 + 136));
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      v22[1] = sub_22FDEA1B8;
      v23 = *(v0 + 128);
      v24 = *(v0 + 136);

      return InFlightRequest.readNext()(v23, v24);
    }
  }

  return result;
}

uint64_t sub_22FDEA1B8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_22FDEA47C;
  }

  else
  {
    v5 = sub_22FDEA2F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22FDEA2F4()
{
  v1 = *(v0 + 128);
  if ((*(*(*(v0 + 104) - 8) + 48))(v1, 1) == 1)
  {
    *(v0 + 240) = *(v0 + 244);
    v2 = *(v0 + 200);
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    swift_beginAccess();
    sub_22FE42FA4();
    sub_22FE42F64();
    v2(v3, v4);
    swift_endAccess();
    v1 = *(v0 + 128);
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 144);
  (*(*(v0 + 120) + 32))(*(v0 + 88), v1, *(v0 + 112));
  v5(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22FDEA47C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  *(v0 + 236) = *(v0 + 244);
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  v1(v2, v3);
  swift_endAccess();
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  swift_willThrow();
  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FDEA5C0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 132) = a1;
  v6 = type metadata accessor for InFlightRequest(255, *(*v4 + 80), a3, a4);
  *(v5 + 56) = v6;
  v7 = sub_22FE43744();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = sub_22FE43374();
  *(v5 + 104) = v9;
  *(v5 + 112) = v8;

  return MEMORY[0x2822009F8](sub_22FDEA788, v9, v8);
}

uint64_t sub_22FDEA788()
{
  v17 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 132);
  swift_beginAccess();
  *(v0 + 128) = v4;

  sub_22FE42FB4();

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v5 = sub_22FE42D34();
    __swift_project_value_buffer(v5, qword_28148B0E8);

    v6 = sub_22FE42D14();
    v7 = sub_22FE436A4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 48);
      v9 = *(v0 + 132);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22FD98218(*(v8 + 16), *(v8 + 24), &v16);
      *(v10 + 12) = 1024;
      *(v10 + 14) = v9;
      _os_log_impl(&dword_22FD6D000, v6, v7, "%s: Received response for non-existent request %u", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190C380](v11, -1, -1);
      MEMORY[0x23190C380](v10, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 80), *(v0 + 56));
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_22FDEAA68;
    v15 = *(v0 + 40);

    return AsyncThrowingChannel.send(_:)(v15);
  }
}

uint64_t sub_22FDEAA68()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_22FDEAB88, v3, v2);
}

uint64_t sub_22FDEAB88()
{
  (*(v0[11] + 8))(v0[12], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FDEAC0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for InFlightRequest(255, *(*v4 + 80), a3, a4);
  v8 = sub_22FE43744();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  swift_beginAccess();
  LODWORD(v33[0]) = a1;

  sub_22FE42FB4();

  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    return (*(v9 + 8))(v14, v8);
  }

  (*(v15 + 32))(v18, v14, v7);
  AsyncThrowingChannel.finish()();
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v20 = sub_22FE42D34();
  __swift_project_value_buffer(v20, qword_28148B0E8);

  v21 = sub_22FE42D14();
  v22 = sub_22FE43694();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v31 = v11;
    v26 = a1;
    v27 = v25;
    v33[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_22FD98218(*(v5 + 16), *(v5 + 24), v33);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v26;
    _os_log_impl(&dword_22FD6D000, v21, v22, "%s: Completed request %u", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    a1 = v26;
    v11 = v31;
    MEMORY[0x23190C380](v28, -1, -1);
    v29 = v24;
    v8 = v32;
    MEMORY[0x23190C380](v29, -1, -1);
  }

  v34 = a1;
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  (*(v9 + 8))(v11, v8);
  swift_endAccess();
  return (*(v15 + 8))(v18, v7);
}

void sub_22FDEAFE4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for InFlightRequest(255, *(*v4 + 80), a3, a4);
  v7 = sub_22FE43744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  swift_beginAccess();
  v22[2] = a1;

  sub_22FE42FB4();

  v22[9] = a1;
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  v17 = *(v8 + 8);
  v17(v13, v7);
  swift_endAccess();
  (*(v8 + 16))(v10, v16, v7);
  v18 = *(v6 - 8);
  if ((*(v18 + 48))(v10, 1, v6) == 1)
  {
    v17(v16, v7);
    v17(v10, v7);
  }

  else
  {
    v19 = *(v18 + 8);

    v19(v10, v6);
    sub_22FDED1BC();
    v20 = swift_allocError();
    *v21 = 0;
    AsyncThrowingChannel.fail<>(_:)(v20);

    v17(v16, v7);
  }
}

uint64_t sub_22FDEB2CC()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = type metadata accessor for InFlightRequest(0, *(v1 + 80), v2, v3);

  LOBYTE(v4) = MEMORY[0x23190AB80](v5, MEMORY[0x277D84CC0], v4, MEMORY[0x277D84CD0]);

  return v4 & 1;
}

uint64_t sub_22FDEB364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for InFlightRequest(255, v6, a3, a4);
  v28 = sub_22FE43744();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - v9;
  v10 = *(v7 - 8);
  v24 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  swift_beginAccess();
  v29 = v4;
  v14 = v4[5];
  v31 = a1;
  v32[0] = v14;
  v30 = v6;
  sub_22FE42F74();

  swift_getWitnessTable();
  v15 = sub_22FE431F4();

  if (!sub_22FE43304())
  {
LABEL_11:

    return v15;
  }

  v16 = 0;
  v25 = *(v7 + 32);
  v26 = (v10 + 16);
  v17 = (v8 + 8);
  while (1)
  {
    v18 = sub_22FE432F4();
    sub_22FE432B4();
    if (v18)
    {
      (*(v10 + 16))(v13, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v7);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v24 != 8)
    {
      break;
    }

    v32[0] = result;
    (*v26)(v13, v32, v7);
    swift_unknownObjectRelease();
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    sub_22FDED1BC();
    v20 = swift_allocError();
    *v21 = 1;
    AsyncThrowingChannel.fail<>(_:)(v20);

    v33[0] = *&v13[v25];
    swift_beginAccess();
    sub_22FE42FA4();
    v22 = v27;
    sub_22FE42F64();
    (*v17)(v22, v28);
    swift_endAccess();
    (*(v10 + 8))(v13, v7);
    ++v16;
    if (v19 == sub_22FE43304())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDEB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InFlightRequest(0, a3, v4, v5);
  return sub_22FE439F4() & 1;
}

void sub_22FDEB83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (!*(v0 + 72) && (sub_22FDEB2CC() & 1) == 0 && (*(v0 + 64) & 1) == 0)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = sub_22FE43404();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;
    v7[5] = v5;
    v7[6] = v4;

    v8 = sub_22FE2EDBC(0, 0, v3, &unk_22FE4C528, v7);
    sub_22FD93E6C(v3, qword_27DAE3188, &qword_22FE49380);
    *(v0 + 72) = v8;
  }
}

uint64_t sub_22FDEB990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22FE43A14();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_22FE43A24();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = sub_22FE43374();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x2822009F8](sub_22FDEBB48, v7, v6);
}

uint64_t sub_22FDEBB48()
{
  v1 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
  v3 = v2;
  sub_22FE43D44();
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_22FDEBC00, 0, 0);
}

uint64_t sub_22FDEBC00()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_22FDED7A8(&qword_27DAE4710, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22FE43D24();
  sub_22FDED7A8(&qword_27DAE4718, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22FE43A34();
  v5 = *(v2 + 8);
  v0[19] = v5;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_22FDEBD84;
  v8 = v0[13];
  v7 = v0[14];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

uint64_t sub_22FDEBD84()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2 + 152))(*(v2 + 104), *(v2 + 80));
    v3 = sub_22FDEC134;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v8 = *(v2 + 112);
    (*(v2 + 152))(*(v2 + 104), *(v2 + 80));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 136);
    v5 = *(v2 + 144);
    v3 = sub_22FDEBEE4;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22FDEBEE4()
{
  v13 = v0;
  if (sub_22FDEB2CC())
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v1 = sub_22FE42D34();
    __swift_project_value_buffer(v1, qword_28148B0E8);

    v2 = sub_22FE42D14();
    v3 = sub_22FE436C4();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 56);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_22FD98218(*(v4 + 16), *(v4 + 24), &v12);
      _os_log_impl(&dword_22FD6D000, v2, v3, "%s: No More Requests, all done!", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x23190C380](v6, -1, -1);
      MEMORY[0x23190C380](v5, -1, -1);
    }

    *(*(v0 + 56) + 72) = 0;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    sub_22FDEC48C(*(v0 + 64), *(v0 + 72));
    v9 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
    v11 = v10;
    sub_22FE43D44();
    *(v0 + 40) = v9;
    *(v0 + 48) = v11;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_22FDEBC00, 0, 0);
  }
}

uint64_t sub_22FDEC134()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_22FDEC1A8, v1, v2);
}

uint64_t sub_22FDEC1A8()
{
  v17 = v0;
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_22FE42D34();
  __swift_project_value_buffer(v2, qword_28148B0E8);

  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_22FD98218(*(v8 + 16), *(v8 + 24), &v16);
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s: Failed to sleep during timeout task: %@", v9, 0x16u);
    sub_22FD93E6C(v10, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  else
  {
  }

  *(v0[7] + 72) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDEC3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22FD73F54;

  return sub_22FDEB990(a4, a5, a6);
}

void sub_22FDEC48C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *v2;
  v5 = sub_22FE43A14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v50[-v10];
  if (sub_22FDEB2CC())
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v12 = sub_22FE42D34();
    __swift_project_value_buffer(v12, qword_28148B0E8);

    v56 = sub_22FE42D14();
    v13 = sub_22FE43694();

    if (os_log_type_enabled(v56, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v58 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_22FD98218(v3[2], v3[3], &v58);
      _os_log_impl(&dword_22FD6D000, v56, v13, "%s: Checked timeout requests, is empty, returning.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    else
    {
      v27 = v56;
    }
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v16 = sub_22FE42D34();
    v17 = __swift_project_value_buffer(v16, qword_28148B0E8);

    v54 = v17;
    v18 = sub_22FE42D14();
    v19 = sub_22FE43694();

    v55 = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v51 = v19;
      v21 = v20;
      v52 = swift_slowAlloc();
      v58 = v52;
      *v21 = 136315394;
      *(v21 + 4) = sub_22FD98218(v3[2], v3[3], &v58);
      *(v21 + 12) = 2080;
      v22 = sub_22FE43E64();
      v53 = a2;
      v24 = sub_22FD98218(v22, v23, &v58);

      *(v21 + 14) = v24;
      v25 = v55;
      _os_log_impl(&dword_22FD6D000, v55, v51, "%s: Checking for timeout requests that are over %s old.", v21, 0x16u);
      v26 = v52;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v26, -1, -1);
      MEMORY[0x23190C380](v21, -1, -1);
    }

    else
    {
    }

    sub_22FE439E4();
    sub_22FE43EA4();
    sub_22FE43E84();
    sub_22FE43A04();
    v28 = *(v6 + 8);
    v28(v8, v5);
    v32 = sub_22FDEB364(v11, v29, v30, v31);
    v28(v11, v5);
    v58 = v32;
    isa = v56[10].isa;
    type metadata accessor for InFlightRequest(255, isa, v34, v35);
    v36 = sub_22FE43354();
    WitnessTable = swift_getWitnessTable();
    if (sub_22FE43644())
    {
    }

    else
    {

      v38 = sub_22FE42D14();
      v39 = sub_22FE436C4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = v56;
        *v40 = 136315650;
        *(v40 + 4) = sub_22FD98218(v3[2], v3[3], &v58);
        *(v40 + 12) = 2048;
        v41 = sub_22FE43304();
        *(v40 + 14) = v41;
        *(v40 + 22) = 2080;
        v57 = v32;
        MEMORY[0x28223BE20](v41);
        *&v50[-16] = isa;
        v42 = MEMORY[0x277D84CC0];
        v44 = sub_22FDA5834(sub_22FDED768, &v50[-32], v36, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);

        v45 = MEMORY[0x23190AE90](v44, v42);
        v47 = v46;

        v48 = sub_22FD98218(v45, v47, &v58);

        *(v40 + 24) = v48;
        _os_log_impl(&dword_22FD6D000, v38, v39, "%s: Timed out %ld requests: %s", v40, 0x20u);
        v49 = v56;
        swift_arrayDestroy();
        MEMORY[0x23190C380](v49, -1, -1);
        MEMORY[0x23190C380](v40, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

uint64_t sub_22FDECAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = type metadata accessor for InFlightRequest(0, a2, v6, v7);
  *a3 = *(a1 + *(result + 32));
  return result;
}

void *MessageDemultiplexer.deinit()
{

  return v0;
}

uint64_t MessageDemultiplexer.__deallocating_deinit()
{
  MessageDemultiplexer.deinit();

  return swift_deallocClassInstance();
}

uint64_t DemuxError.hashValue.getter()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

unint64_t sub_22FDECCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE42FD4();

  return sub_22FDECD48(a1, v6, a2, a3);
}

unint64_t sub_22FDECD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_22FE43024();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_22FDECED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_22FE43304())
  {
    sub_22FE43B14();
    v13 = sub_22FE43B04();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_22FE43304();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_22FE432F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_22FE43924();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_22FDECCEC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_22FDED1BC()
{
  result = qword_27DAE4700;
  if (!qword_27DAE4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4700);
  }

  return result;
}

unint64_t sub_22FDED214()
{
  result = qword_27DAE4708;
  if (!qword_27DAE4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4708);
  }

  return result;
}

uint64_t sub_22FDED268(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  result = type metadata accessor for AsyncThrowingChannel(319, v1, v2, MEMORY[0x277D84950]);
  if (v4 <= 0x3F)
  {
    result = sub_22FE43A14();
    if (v5 <= 0x3F)
    {
      type metadata accessor for AsyncThrowingChannel.Iterator(255, v1, v2, MEMORY[0x277D84950]);
      result = sub_22FE43744();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageDemultiplexer.next(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FD73F54;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MessageDemultiplexer.send(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 232) + **(*v2 + 232));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FD8C738;

  return v8(a1, a2);
}

uint64_t sub_22FDED7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDED7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD73F54;

  return sub_22FDEC3E0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22FDED8CC()
{
  result = qword_27DAE4720;
  if (!qword_27DAE4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4720);
  }

  return result;
}

int *sub_22FDED93C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v26 = a4;
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for ShuffleIDProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v31 = a1;
  v32 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v16, v13, type metadata accessor for ShuffleIDProto);
  v18 = *v13;
  v19 = *(v13 + 1);
  LOBYTE(v28) = v27;
  sub_22FDB4380(v18, v19);
  UUID.init(serialized:version:)(v18, v19);

  v21 = sub_22FDC2070(v20);

  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v16, type metadata accessor for ShuffleIDProto);
  v22 = v13[24];
  v23 = v13[25];
  v24 = v13[26];
  sub_22FDF1A18(v13, type metadata accessor for ShuffleIDProto);
  v25 = v26;
  (*(v8 + 32))(v26, v33, v7);
  result = type metadata accessor for ShuffleID(0);
  *(v25 + result[5]) = v21;
  *(v25 + result[6]) = v22;
  *(v25 + result[7]) = v23;
  *(v25 + result[8]) = v24;
  return result;
}

uint64_t sub_22FDEDCA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v21 = a4;
  v7 = sub_22FE428C4();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for DailyIDProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v25 = a1;
  v26 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v16, v13, type metadata accessor for DailyIDProto);
  v18 = *v13;
  v19 = v13[1];
  LOBYTE(v22) = v27;
  sub_22FDB4380(v18, v19);
  UUID.init(serialized:version:)(v18, v19);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v13, type metadata accessor for DailyIDProto);
  sub_22FDF1A18(v16, type metadata accessor for DailyIDProto);
  return (*(v20 + 32))(v21, v9, v7);
}

uint64_t sub_22FDEDF78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v24 = a4;
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for AlbumIDProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v16, v13, type metadata accessor for AlbumIDProto);
  v18 = v13[2];
  v19 = v13[3];
  LOBYTE(v26) = v25;
  sub_22FDB4380(v18, v19);
  UUID.init(serialized:version:)(v18, v19);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v16, type metadata accessor for AlbumIDProto);
  v21 = *v13;
  v20 = v13[1];

  sub_22FDF1A18(v13, type metadata accessor for AlbumIDProto);
  v22 = v24;
  (*(v8 + 32))(v24, v31, v7);
  result = type metadata accessor for AlbumID(0);
  v23 = (v22 + *(result + 20));
  *v23 = v21;
  v23[1] = v20;
  return result;
}

uint64_t sub_22FDEE2A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  MEMORY[0x28223BE20](PhotoResponseProto);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19[0] = a1;
  v19[1] = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for GeneratePhotoResponseProto);
  LOBYTE(v19[0]) = a3;
  GeneratePhotoResponse.init(protobuf:version:)(v12, v19, v17);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v15, type metadata accessor for GeneratePhotoResponseProto);
  *a4 = *&v17[0];
  return result;
}

uint64_t sub_22FDEE4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for FetchByDayResponseProto(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  v20[0] = a1;
  v20[1] = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for FetchByDayResponseProto);
  LOBYTE(v20[0]) = a3;
  FetchByDayResponse.init(protobuf:version:)(v12, v20, v18);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v15, type metadata accessor for FetchByDayResponseProto);
  v17 = *(&v18[0] + 1);
  *a4 = *&v18[0];
  a4[1] = v17;
  return result;
}

uint64_t sub_22FDEE6EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for StoredPhotoLayoutProto(0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for StoredPhotoLayoutProto);
  LOBYTE(v17[0]) = a3;
  StoredPhotoLayout.init(protobuf:version:)(v12, a4);
  sub_22FD917D4(a1, a2);
  return sub_22FDF1A18(v15, type metadata accessor for StoredPhotoLayoutProto);
}

double sub_22FDEE904@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_22FE42A74();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = a1;
  v23 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  sub_22FE42BE4();
  sub_22FD917D4(a1, a2);
  if (!v3)
  {
    sub_22FDF1818(v13, v10, type metadata accessor for StoredPhotoLayoutRectProto);
    v15 = *v10;
    v17 = v10[1];
    v18 = v15;
    sub_22FDF1A18(v10, type metadata accessor for StoredPhotoLayoutRectProto);
    v16 = v17;
    result = *&v18;
    *a3 = v18;
    a3[1] = v16;
  }

  return result;
}

uint64_t sub_22FDEEAF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  LOBYTE(v17[0]) = a3;
  StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v12, a4);
  sub_22FD917D4(a1, a2);
  return sub_22FDF1A18(v15, type metadata accessor for StoredPhotoLayoutImageLocationProto);
}

uint64_t sub_22FDEED0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for SyncFacesRequestProto(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for SyncFacesRequestProto);
  LOBYTE(v19) = a3;
  SyncFacesRequest.init(protobuf:version:)(v12, v17);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v15, type metadata accessor for SyncFacesRequestProto);
  *a4 = v17[0];
  return result;
}

uint64_t sub_22FDEEF48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  MEMORY[0x28223BE20](v9 - 8);
  PhotoRequestProto = type metadata accessor for GeneratePhotoRequestProto(0);
  MEMORY[0x28223BE20](PhotoRequestProto);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v15, v12, type metadata accessor for GeneratePhotoRequestProto);
  LOBYTE(v19) = a3;
  GeneratePhotoRequest.init(protobuf:version:)(v12, v17);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v15, type metadata accessor for GeneratePhotoRequestProto);
  *a4 = *&v17[0];
  return result;
}

uint64_t sub_22FDEF184@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v28 = a4;
  v7 = sub_22FE428C4();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  MEMORY[0x28223BE20](FaceRequestProto);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v32 = a1;
  v33 = a2;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  v26 = v7;
  sub_22FDF1A78(v16, v13, type metadata accessor for FetchFaceRequestProto);
  v19 = *v13;
  v18 = v13[1];
  LOBYTE(v29) = v34;
  sub_22FDB4380(v19, v18);
  UUID.init(serialized:version:)(v19, v18);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v16, type metadata accessor for FetchFaceRequestProto);
  v20 = (v13 + *(FaceRequestProto + 24));
  v21 = *v20;
  v22 = *(v20 + 4);
  sub_22FDF1A18(v13, type metadata accessor for FetchFaceRequestProto);
  if (v22)
  {
    v21 = 0;
  }

  v23 = v28;
  (*(v27 + 32))(v28, v9, v26);
  result = type metadata accessor for FetchFaceRequest(0);
  v24 = v23 + *(result + 20);
  *v24 = v21;
  *(v24 + 8) = v22;
  return result;
}

uint64_t ProtobufSerializable.init(serialized:version:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  v25 = a3;
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v20[-v15];
  v21 = *v25;
  v28 = a1;
  v29 = a2;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_22FDB4380(a1, a2);
  v24 = a5;
  v25 = a4;
  swift_getAssociatedConformanceWitness();
  sub_22FE42A64();
  v17 = v30;
  sub_22FE42BE4();
  if (!v17)
  {
    v18 = v22;
    (*(v22 + 16))(v13, v16, AssociatedTypeWitness);
    LOBYTE(v26[0]) = v21;
    (*(v24 + 32))(v13, v26, v25);
    (*(v18 + 8))(v16, AssociatedTypeWitness);
  }

  return sub_22FD917D4(a1, a2);
}

uint64_t sub_22FDEF728(char *a1, uint64_t a2)
{
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  MEMORY[0x28223BE20](FaceRequestProto);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4780, type metadata accessor for FetchFaceRequest, &protocol conformance descriptor for FetchFaceRequest);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for FetchFaceRequestProto);
  }

  return v2;
}

uint64_t ProtobufSerializable.serialized(version:)(char *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  v15 = *a1;
  (*(a3 + 40))(&v15, a2, a3, v10);
  if (!v4)
  {
    swift_getAssociatedConformanceWitness();
    v3 = sub_22FE42BD4();
    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  return v3;
}

void *sub_22FDEFA58(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for FetchByDayResponseProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  v9 = v2[1];
  v15[0] = *v2;
  v15[1] = v9;
  v14 = v7;
  v10 = sub_22FDF197C();
  v11 = v15;
  (*(v10 + 40))(&v14, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
    v11 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for FetchByDayResponseProto);
  }

  return v11;
}

uint64_t *sub_22FDEFBCC(_BYTE *a1, uint64_t a2)
{
  PhotoRequestProto = type metadata accessor for GeneratePhotoRequestProto(0);
  MEMORY[0x28223BE20](PhotoRequestProto);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  v13 = *v2;
  HIBYTE(v12) = v7;
  v9 = sub_22FDF1928();
  v10 = &v13;
  (*(v9 + 40))(&v12 + 7, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);
    v10 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for GeneratePhotoRequestProto);
  }

  return v10;
}

uint64_t *sub_22FDEFD40(_BYTE *a1, uint64_t a2)
{
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  MEMORY[0x28223BE20](PhotoResponseProto);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  v13 = *v2;
  HIBYTE(v12) = v7;
  v9 = sub_22FDF18D4();
  v10 = &v13;
  (*(v9 + 40))(&v12 + 7, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
    v10 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for GeneratePhotoResponseProto);
  }

  return v10;
}

__int128 *sub_22FDEFEB4(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for SyncFacesRequestProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  v14 = *v2;
  v13 = v7;
  v9 = sub_22FDF1880();
  v10 = &v14;
  (*(v9 + 40))(&v13, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);
    v10 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for SyncFacesRequestProto);
  }

  return v10;
}

uint64_t sub_22FDF000C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a3;
  WitnessTable = swift_getWitnessTable();
  return ProtobufSerializable.init(serialized:version:)(a1, a2, &v11, a4, WitnessTable, a5);
}

uint64_t sub_22FDF0108(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for AlbumIDProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4758, type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for AlbumIDProto);
  }

  return v2;
}

uint64_t sub_22FDF02A0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for DailyIDProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4750, type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for DailyIDProto);
  }

  return v2;
}

uint64_t sub_22FDF0438(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for ShuffleIDProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4748, type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for ShuffleIDProto);
  }

  return v2;
}

uint64_t sub_22FDF05D0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4650, type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for StoredPhotoProto);
  }

  return v2;
}

uint64_t sub_22FDF0768(uint64_t *a1, int a2)
{
  v24 = a2;
  v4 = type metadata accessor for StoredPhotoProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for StoredPhoto(0);
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v25 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v27 = MEMORY[0x277D84F90];
  result = sub_22FD92408(0, v13, 0);
  v16 = 0;
  v14 = v27;
  v21 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v16 < *(v12 + 16))
  {
    sub_22FDF1A78(v21 + *(v5 + 72) * v16, v9, type metadata accessor for StoredPhotoProto);
    v17 = v23;
    sub_22FDF1A78(v9, v23, type metadata accessor for StoredPhotoProto);
    v26 = v24;
    StoredPhoto.init(protobuf:version:)(v17, &v26, v25);
    if (v2)
    {
      sub_22FDF1A18(v9, type metadata accessor for StoredPhotoProto);

      return v14;
    }

    v18 = v5;
    sub_22FDF1A18(v9, type metadata accessor for StoredPhotoProto);
    v27 = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22FD92408((v19 > 1), v20 + 1, 1);
      v14 = v27;
    }

    ++v16;
    *(v14 + 16) = v20 + 1;
    result = sub_22FDF1818(v25, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20, type metadata accessor for StoredPhoto);
    v5 = v18;
    if (v13 == v16)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CustomListProto<>.deserialize(list:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v19) = *a2;
  v8 = v19;
  v9 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = v9(&v19, AssociatedTypeWitness, a5);
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v17 = v8;
  swift_getAssociatedTypeWitness();
  v11 = sub_22FE43354();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  v14 = sub_22FDA5834(sub_22FDF1670, v16, v11, a3, v12, WitnessTable, MEMORY[0x277D84950], &v18);

  return v14;
}

uint64_t sub_22FDF0BCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v19 = a3;
  v25 = type metadata accessor for StoredPhoto(0);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoredPhotoProto(0);
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v11, 0);
    v12 = v29;
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = sub_22FDF19D0(&qword_27DAE4650, type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
    v21 = *(v23 + 40);
    v22 = v23 + 40;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_22FDF1A78(v13, v7, type metadata accessor for StoredPhoto);
      v28 = v26;
      v21(&v28, v25, v23);
      if (v3)
      {
        break;
      }

      sub_22FDF1A18(v7, type metadata accessor for StoredPhoto);
      v29 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22FD924F4((v14 > 1), v15 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v15 + 1;
      sub_22FDF1818(v10, v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v15, type metadata accessor for StoredPhotoProto);
      v13 += v20;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    sub_22FDF1A18(v7, type metadata accessor for StoredPhoto);
  }

  else
  {
LABEL_7:
    v16 = type metadata accessor for StoredPhotoListProto(0);
    v27 = v26;
    v17 = sub_22FDF19D0(&qword_27DAE4740, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);
    return (*(v17 + 24))(v12, &v27, v16, v17);
  }
}

uint64_t static CustomListProto<>.serialize(list:version:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v20 = a1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v7;
  v8 = sub_22FE43354();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  result = sub_22FDA5834(sub_22FDF1698, v14, v8, AssociatedTypeWitness, v10, WitnessTable, MEMORY[0x277D84950], &v19);
  if (!v5)
  {
    v13 = result;
    swift_getAssociatedTypeWitness();
    LOBYTE(v20) = v7;
    return (*(a5 + 24))(v13, &v20);
  }

  return result;
}

uint64_t sub_22FDF10B0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4738, type metadata accessor for StoredPhotoLayout, &protocol conformance descriptor for StoredPhotoLayout);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for StoredPhotoLayoutProto);
  }

  return v2;
}

uint64_t sub_22FDF1248(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9 = sub_22FDF19D0(&qword_27DAE4730, type metadata accessor for StoredPhotoLayout.ImageLocation, &protocol conformance descriptor for StoredPhotoLayout.ImageLocation);
  (*(v9 + 40))(&v12, a2, v9);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return v2;
}

_OWORD *sub_22FDF13E0(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  v9 = v2[1];
  v15[0] = *v2;
  v15[1] = v9;
  v14 = v7;
  v10 = sub_22FDF17C4();
  v11 = v15;
  (*(v10 + 40))(&v14, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
    v11 = sub_22FE42BD4();
    sub_22FDF1A18(v8, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return v11;
}

uint64_t sub_22FDF153C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18[-v14];
  (*(v16 + 16))(&v18[-v14], a1, v13);
  v19 = a2;
  result = (*(v11 + 32))(v15, &v19, a3, v11);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_22FDF1698(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 40);
  result = (*(*(v6 + 8) + 40))(&v8, v5);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_22FDF17C4()
{
  result = qword_27DAE4728;
  if (!qword_27DAE4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4728);
  }

  return result;
}

uint64_t sub_22FDF1818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FDF1880()
{
  result = qword_27DAE4760;
  if (!qword_27DAE4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4760);
  }

  return result;
}

unint64_t sub_22FDF18D4()
{
  result = qword_27DAE4768;
  if (!qword_27DAE4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4768);
  }

  return result;
}

unint64_t sub_22FDF1928()
{
  result = qword_27DAE4770;
  if (!qword_27DAE4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4770);
  }

  return result;
}

unint64_t sub_22FDF197C()
{
  result = qword_27DAE4778;
  if (!qword_27DAE4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4778);
  }

  return result;
}

uint64_t sub_22FDF19D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDF1A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDF1A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SerializationError.hashValue.getter()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

unint64_t sub_22FDF1C18()
{
  result = qword_27DAE4788;
  if (!qword_27DAE4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4788);
  }

  return result;
}

uint64_t AlbumIDProto.album.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlbumIDProto.album.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AlbumIDProto.id.getter()
{
  v1 = *(v0 + 16);
  sub_22FDB4380(v1, *(v0 + 24));
  return v1;
}

uint64_t AlbumIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AlbumIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlbumIDProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AlbumIDProto(uint64_t a1)
{
  result = qword_27DAE47C0;
  if (!qword_27DAE47C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlbumIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlbumIDProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlbumIDProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_22FE4B510;
  type metadata accessor for AlbumIDProto(0);
  return sub_22FE42A44();
}

uint64_t sub_22FDF1F84()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4790);
  __swift_project_value_buffer(v0, qword_27DAE4790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "album";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t static AlbumIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A28 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AlbumIDProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B64();
    }

    else if (result == 2)
    {
      sub_22FE42B04();
    }
  }

  return result;
}

uint64_t AlbumIDProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_22FE42C94(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_22FE42C54();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    type metadata accessor for AlbumIDProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t static AlbumIDProto.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FE43CB4() & 1) == 0 || !sub_22FDF2C1C(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  type metadata accessor for AlbumIDProto(0);
  sub_22FE42A54();
  sub_22FDF2F50(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t AlbumIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for AlbumIDProto(0);
  sub_22FDF2F50(&qword_27DAE47A8, type metadata accessor for AlbumIDProto, &protocol conformance descriptor for AlbumIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF24C0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_22FE4B510;
  return sub_22FE42A44();
}

uint64_t sub_22FDF2514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF2588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF2650(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF2F50(&qword_27DAE47D0, type metadata accessor for AlbumIDProto, &protocol conformance descriptor for AlbumIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF26CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A28 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDF2774(uint64_t a1)
{
  v2 = sub_22FDF2F50(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF27E0(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF2838(uint64_t a1, uint64_t a2)
{
  sub_22FDF2F50(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");

  return sub_22FE42C04();
}

uint64_t sub_22FDF28B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF2908(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_22FE43CB4() & 1) == 0 || !sub_22FDF2C1C(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDF2F50(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF29D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22FDF2B64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22FD917D4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_22FDBBBC8(v13, a3, a4, &v12);
  v10 = v4;
  sub_22FD917D4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_22FDF2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22FE42654();
  v11 = result;
  if (result)
  {
    result = sub_22FE42684();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22FE42674();
  sub_22FDBBBC8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_22FDF2C1C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22FDB4380(a3, a4);
          return sub_22FDF29D4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22FDF2ECC(uint64_t a1)
{
  result = sub_22FE42A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FDF2F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t GenericListProto.list.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22FDF3138@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF31F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF32D4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return sub_22FE42A44();
}

uint64_t StoredPhotoListProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF3558(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoListProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF3558(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto), result = sub_22FE42CC4(), !v4))
  {
    type metadata accessor for StoredPhotoListProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF3558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDF3658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF3558(&qword_27DAE4888, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF36F8(uint64_t a1)
{
  v2 = sub_22FDF3558(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF3764(uint64_t a1, uint64_t a2)
{
  sub_22FDF3558(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF3820(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22FE42D04();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "list";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22FE42CE4();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_22FE42CF4();
}

uint64_t sub_22FDF39AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22FE42D04();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t GenericListProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t GenericListProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22FE42C44(), !v4))
  {
    type metadata accessor for GenericListProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF3B68(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_22FE42A54();
  sub_22FDF3558(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF3C68(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF3558(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF3D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF3D80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF3E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF3558(&qword_27DAE4880, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF3EC4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22FE42D04();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22FDF3F60(uint64_t a1)
{
  v2 = sub_22FDF3558(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF3FCC(uint64_t a1, uint64_t a2)
{
  sub_22FDF3558(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF42A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDF3558(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

void sub_22FDF438C(uint64_t a1)
{
  if (!qword_27DAE4860)
  {
    type metadata accessor for StoredPhotoProto(255);
    v1 = sub_22FE43354();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAE4860);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FDF4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_22FE42A54();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FDF45FC()
{
  if (!qword_27DAE4878)
  {
    v0 = sub_22FE43354();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4878);
    }
  }
}

uint64_t DailyIDProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t DailyIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t DailyIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DailyIDProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DailyIDProto(uint64_t a1)
{
  result = qword_27DAE48C0;
  if (!qword_27DAE48C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DailyIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DailyIDProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DailyIDProto.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  type metadata accessor for DailyIDProto(0);
  return sub_22FE42A44();
}

uint64_t sub_22FDF48EC()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4890);
  __swift_project_value_buffer(v0, qword_27DAE4890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FE49F60;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 2;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FE42CE4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22FE42CF4();
}

uint64_t static DailyIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A40 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DailyIDProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22FE42B04();
    }
  }

  return result;
}

uint64_t DailyIDProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for DailyIDProto(0);
  return sub_22FE42A34();
}

uint64_t static DailyIDProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for DailyIDProto(0);
  sub_22FE42A54();
  sub_22FDF5264(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t DailyIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for DailyIDProto(0);
  sub_22FDF5264(&qword_27DAE48A8, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF4DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF5264(&qword_27DAE48D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF4E64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A40 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDF4F0C(uint64_t a1)
{
  v2 = sub_22FDF5264(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF4F78(uint64_t a1, uint64_t a2)
{
  sub_22FDF5264(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF4FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDF5264(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF51E8(uint64_t a1)
{
  result = sub_22FE42A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FDF5264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FetchFaceRequestProto.day.getter()
{
  v1 = (v0 + *(type metadata accessor for FetchFaceRequestProto(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t FetchFaceRequestProto.day.setter(int a1)
{
  result = type metadata accessor for FetchFaceRequestProto(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t FetchFaceRequestProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t FetchFaceRequestProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t (*FetchFaceRequestProto.day.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDF545C;
}

uint64_t sub_22FDF545C(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall FetchFaceRequestProto.clearDay()()
{
  v1 = v0 + *(type metadata accessor for FetchFaceRequestProto(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t FetchFaceRequestProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FetchFaceRequestProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FetchFaceRequestProto.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  result = sub_22FE42A44();
  v4 = a1 + *(FaceRequestProto + 24);
  *v4 = 0;
  v4[4] = 1;
  return result;
}

uint64_t FetchByDayResponseProto.photos.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FetchByDayResponseProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FetchByDayResponseProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FetchByDayResponseProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for FetchByDayResponseProto(0);
  return sub_22FE42A44();
}

uint64_t sub_22FDF5884()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE48D8);
  __swift_project_value_buffer(v0, qword_27DAE48D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "day";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t FetchFaceRequestProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B04();
    }

    else if (result == 2)
    {
      type metadata accessor for FetchFaceRequestProto(0);
      sub_22FE42B74();
    }
  }

  return result;
}

uint64_t FetchFaceRequestProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_22FDF5BEC(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for FetchFaceRequestProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF5BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FetchFaceRequestProto(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF5CB0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  result = sub_22FE42A44();
  v5 = a2 + *(a1 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_22FDF5D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF6808(&qword_27DAE4968, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF5DEC(uint64_t a1)
{
  v2 = sub_22FDF6808(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF5E58(uint64_t a1, uint64_t a2)
{
  sub_22FDF6808(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF5EF4()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE48F0);
  __swift_project_value_buffer(v0, qword_27DAE48F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "day";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "photos";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t FetchByDayResponseProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FE42B84();
      }

      else if (result == 2)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF6808(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t FetchByDayResponseProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_22FE42CA4(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF6808(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto), result = sub_22FE42CC4(), !v4))
    {
      type metadata accessor for FetchByDayResponseProto(0);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t static FetchByDayResponseProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_22FDB655C(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FetchByDayResponseProto(0);
  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF63E4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF6808(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF646C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return sub_22FE42A44();
}

uint64_t sub_22FDF64E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF6808(&qword_27DAE4960, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF6588(uint64_t a1)
{
  v2 = sub_22FDF6808(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF65F4(uint64_t a1, uint64_t a2)
{
  sub_22FDF6808(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF6670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_22FDB655C(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace05FetchB12RequestProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(type metadata accessor for FetchFaceRequestProto(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF6808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22FDF6AEC()
{
  if (!qword_27DAE4948)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4948);
    }
  }
}

uint64_t sub_22FDF6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a5(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = a6(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t GeneratePhotoRequestProto.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22FDF6D6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF6E28(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF6F08@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return sub_22FE42A44();
}

uint64_t GeneratePhotoRequestProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t GeneratePhotoRequestProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22FE42C44(), !v4))
  {
    type metadata accessor for GeneratePhotoRequestProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF7160(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF72E8(&qword_27DAE49F8, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF7200(uint64_t a1)
{
  v2 = sub_22FDF72E8(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF726C(uint64_t a1, uint64_t a2)
{
  sub_22FDF72E8(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF72E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDF737C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22FE42D04();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FE49F60;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_22FE42CE4();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_22FE42CF4();
}

uint64_t GeneratePhotoResponseProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF72E8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t GeneratePhotoResponseProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF72E8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto), result = sub_22FE42CC4(), !v4))
  {
    type metadata accessor for GeneratePhotoResponseProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF76FC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_22FE42A54();
  sub_22FDF72E8(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF77FC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF72E8(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF78D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF72E8(&qword_27DAE49F0, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF7970(uint64_t a1)
{
  v2 = sub_22FDF72E8(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF79DC(uint64_t a1, uint64_t a2)
{
  sub_22FDF72E8(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF7CB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDF72E8(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_22FE42A54();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MessageProto.messageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageProto(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t MessageProto.requestIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageProto(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t MessageProto.messageCode.setter(int a1)
{
  result = type metadata accessor for MessageProto(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t MessageProto.requestIndex.setter(int a1)
{
  result = type metadata accessor for MessageProto(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

unint64_t MessageOperationProto.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FDF7FD4(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF8040(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF91F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FDF808C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

void MessageProto.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t MessageProto.operation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t (*MessageProto.messageCode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDF545C;
}

Swift::Void __swiftcall MessageProto.clearMessageCode()()
{
  v1 = v0 + *(type metadata accessor for MessageProto(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t (*MessageProto.requestIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDFA6CC;
}

Swift::Void __swiftcall MessageProto.clearRequestIndex()()
{
  v1 = v0 + *(type metadata accessor for MessageProto(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t MessageProto.messageContent.getter()
{
  v1 = *(v0 + 16);
  sub_22FDB4380(v1, *(v0 + 24));
  return v1;
}

uint64_t MessageProto.messageContent.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageProto.complete.setter(char a1)
{
  result = type metadata accessor for MessageProto(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*MessageProto.complete.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22FDF846C;
}

uint64_t MessageProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MessageProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FE4B510;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for MessageProto(0);
  result = sub_22FE42A44();
  v4 = a1 + v2[9];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[10];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[11]) = 2;
  return result;
}

uint64_t FileHeaderProto.filename.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FileHeaderProto.filename.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FileHeaderProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileHeaderProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FileHeaderProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FileHeaderProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FileHeaderProto.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for FileHeaderProto(0);
  return sub_22FE42A44();
}

uint64_t sub_22FDF88C0()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A00);
  __swift_project_value_buffer(v0, qword_27DAE4A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "event";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "request";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "response";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "error";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t sub_22FDF8BB8()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A18);
  __swift_project_value_buffer(v0, qword_27DAE4A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FE4A1C0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "operation";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FE42CE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "messageCode";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "requestIndex";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "messageContent";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "fileCount";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "complete";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_22FE42CF4();
}

uint64_t MessageProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_22FDF91F0();
          sub_22FE42AE4();
        }

        else if (result == 2 || result == 3)
        {
          type metadata accessor for MessageProto(0);
          sub_22FE42B74();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_22FE42B04();
            goto LABEL_5;
          }

LABEL_19:
          sub_22FE42B84();
          goto LABEL_5;
        }

        if (result == 6)
        {
          goto LABEL_19;
        }

        if (result == 7)
        {
          type metadata accessor for MessageProto(0);
          sub_22FE42AC4();
        }
      }

LABEL_5:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t MessageProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_22FDF91F0();
    result = sub_22FE42C34();
    if (v4)
    {
      return result;
    }
  }

  result = sub_22FDF9244(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  sub_22FDF92BC(v3, a1, a2, a3);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_14:
    sub_22FE42C54();
  }

LABEL_15:
  if (*(v3 + 32))
  {
    sub_22FE42CA4();
  }

  if (*(v3 + 36))
  {
    sub_22FE42CA4();
  }

  sub_22FDF9334(v3, a1, a2, a3);
  type metadata accessor for MessageProto(0);
  return sub_22FE42A34();
}

unint64_t sub_22FDF91F0()
{
  result = qword_27DAE4A48;
  if (!qword_27DAE4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A48);
  }

  return result;
}

uint64_t sub_22FDF9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageProto(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF92BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageProto(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF9334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageProto(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_22FE42C24();
  }

  return result;
}

uint64_t sub_22FDF93F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FE4B510;
  *(a2 + 32) = 0;
  result = sub_22FE42A44();
  v5 = a1[10];
  v6 = a2 + a1[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[11]) = 2;
  return result;
}

uint64_t sub_22FDF9494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}