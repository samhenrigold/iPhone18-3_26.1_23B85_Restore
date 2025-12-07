void sub_1DA85C31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
  v41 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = sub_1DA93FBD4();
      v45 = &v39;
      MEMORY[0x1EEE9AC00](v21);
      v24 = *(*(v5 + 48) + 8 * v20);
      v42 = *(v25 + 72);
      v43 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = v26;
      v44 = v22;
      if (v41)
      {
        (*(v22 + 32))();
      }

      else
      {
        (*(v22 + 16))();
      }

      v27 = v7;
      sub_1DA941764();
      MEMORY[0x1E1272850](*(v24 + 16));
      v28 = *(v24 + 16);
      if (v28)
      {
        v29 = v24 + 40;
        do
        {

          sub_1DA940AB4();

          v29 += 16;
          --v28;
        }

        while (v28);
      }

      v30 = sub_1DA941794();
      v7 = v27;
      v31 = -1 << *(v27 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v47;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v27 + 48) + 8 * v15) = v24;
      (*(v44 + 32))(*(v27 + 56) + v42 * v15, v43, v16);
      ++*(v27 + 16);
      v12 = v46;
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        v46 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

void sub_1DA85C6F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5958, &unk_1DA95C240);
  v35 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v25 = sub_1DA941794();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85C9FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  v6 = sub_1DA9414D4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v21 = sub_1DA941754();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1DA85CC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
  v34 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if (v34)
      {
        sub_1DA848FE8(v24, v35);
      }

      else
      {
        sub_1DA7AD270(v24, v35);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v25 = sub_1DA941794();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1DA848FE8(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1DA85CF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_1DA9414D4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
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
    v16 = v8 + 64;
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
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v28 = sub_1DA941794();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
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

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1DA85D1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58C8, &qword_1DA95C1D0);
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
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

      v22 = sub_1DA941754();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85D470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
  v39 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_1DA862FBC(v27, &v40);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v30 = sub_1DA941794();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1DA85D754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1DA9414D4();
  v9 = v8;
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
    v16 = v8 + 64;
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
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v27 = sub_1DA941794();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
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
        return;
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
}

void sub_1DA85D9F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
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
        v22 = v20;
      }

      v23 = sub_1DA941104();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85DC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
  v35 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v25 = sub_1DA941794();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85DF48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NotificationSource(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
  v38 = v4;
  v9 = sub_1DA9414D4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v40 = *(v37 + 72);
      v24 = v23 + v40 * v22;
      if (v38)
      {
        sub_1DA862EE4(v24, v7, type metadata accessor for NotificationSource);
        v39 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_1DA862E7C(v24, v7, type metadata accessor for NotificationSource);
        v39 = *(*(v8 + 56) + 8 * v22);
      }

      sub_1DA941764();
      if (*(v7 + 1))
      {
        sub_1DA941784();
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      sub_1DA940AB4();
      sub_1DA941784();
      v25 = sub_1DA941794();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v8 = v36;
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

LABEL_39:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1DA862EE4(v7, *(v10 + 48) + v40 * v18, type metadata accessor for NotificationSource);
      *(*(v10 + 56) + 8 * v18) = v39;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_37;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
}

void sub_1DA85E308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NotificationSource(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
  v10 = sub_1DA9414D4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v2;
    v12 = 0;
    v13 = *(v9 + 64);
    v39 = (v9 + 64);
    v40 = v6;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v6 + 72);
      v43 = v21;
      v26 = v25 + v42 * v24;
      if (v4)
      {
        sub_1DA862EE4(v26, v8, type metadata accessor for NotificationSource);
        v41 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        sub_1DA862E7C(v26, v8, type metadata accessor for NotificationSource);
        v41 = *(*(v9 + 56) + 8 * v24);
        v27 = v41;
      }

      sub_1DA941764();
      if (*(v8 + 1))
      {
        sub_1DA941784();
        v6 = v40;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      sub_1DA940AB4();
      sub_1DA941784();
      v28 = sub_1DA941794();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1DA862EE4(v8, *(v11 + 48) + v42 * v19, type metadata accessor for NotificationSource);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v39[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_37;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v39, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_37:
  *v3 = v11;
}

void sub_1DA85E6EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1DA9414D4();
  v9 = v8;
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
    v16 = v8 + 64;
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
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v27 = sub_1DA941794();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
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
        return;
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
}

void sub_1DA85E9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v44 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v10;
  v14 = sub_1DA9414D4();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v6;
    v46 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        sub_1DA862EE4(v34, v49, v50);
      }

      else
      {
        sub_1DA862E7C(v34, v49, v50);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v35 = sub_1DA941794();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      sub_1DA862EE4(v49, *(v15 + 56) + v33 * v23, v50);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
}

void sub_1DA85ED44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DA93FB24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5868, &qword_1DA95C138);
  v40 = v4;
  v10 = sub_1DA9414D4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1DA9409A4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1DA85F120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58B8, &qword_1DA95C1C0);
  v39 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_1DA862D8C(v27, &v40);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v30 = sub_1DA941794();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1DA85F418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  v13 = sub_1DA9414D4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v34 = sub_1DA941794();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void sub_1DA85F7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
  v35 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v25 = sub_1DA941794();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1DA85FA80(uint64_t *a1, uint64_t a2, void *a3)
{
  sub_1DA941764();
  if (a1[1])
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  sub_1DA941784();
  sub_1DA941794();
  v6 = sub_1DA941204();
  *(a3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
  v7 = a3[6];
  v8 = type metadata accessor for NotificationSource(0);
  result = sub_1DA862EE4(a1, v7 + *(*(v8 - 8) + 72) * v6, type metadata accessor for NotificationSource);
  *(a3[7] + 8 * v6) = a2;
  ++a3[2];
  return result;
}

void sub_1DA85FBB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5908, &qword_1DA95C208);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_1DA85FD14()
{
  v1 = v0;
  v41 = sub_1DA93FAF4();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DA93FEC4();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
  v4 = *v0;
  v5 = sub_1DA9414C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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
}

void sub_1DA860068()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        sub_1DA8304A0(v20);
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
}

void sub_1DA860270(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - v8;
  v45 = sub_1DA93FB24();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1DA9414C4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }
}

void sub_1DA8605BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 40 * v17;
        sub_1DA862D8C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1DA7AD270(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_1DA848FE8(v22, (*(v4 + 56) + v17));
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
}

void sub_1DA86079C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v31 = v1;
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v32 = v2;
    v33 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
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
        v19 = v16 | (v9 << 6);
        v20 = v32;
        v21 = *(*(v32 + 48) + 8 * v19);
        v22 = sub_1DA93FBD4();
        v34 = &v31;
        v23 = *(v22 - 8);
        MEMORY[0x1EEE9AC00](v22);
        v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = v26;
        v28 = *(v20 + 56);
        v29 = *(v27 + 72) * v19;
        (*(v23 + 16))(v25, v28 + v29, v22);
        v30 = v33;
        *(*(v33 + 48) + 8 * v19) = v21;
        (*(v23 + 32))(*(v30 + 56) + v29, v25, v22);
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

        v1 = v31;
        v4 = v33;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1DA860A08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5958, &unk_1DA95C240);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

uint64_t sub_1DA860B78(uint64_t a1)
{
  result = sub_1DA93FBB4();
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

void sub_1DA860D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

void sub_1DA860ECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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
        sub_1DA7AD270(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DA848FE8(v25, (*(v4 + 56) + v22));
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

void sub_1DA861084(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

        v24 = v22;
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

void sub_1DA8611E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58C8, &qword_1DA95C1D0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_1DA861364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1DA862FBC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_1DA86152C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

void sub_1DA86168C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void sub_1DA8617F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
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
}

void sub_1DA86199C()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
  v4 = *v0;
  v5 = sub_1DA9414C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v27 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v28;
        v21 = *(v29 + 72) * v19;
        sub_1DA862E7C(*(v4 + 48) + v21, v28, type metadata accessor for NotificationSource);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v30;
        sub_1DA862EE4(v20, *(v30 + 48) + v21, type metadata accessor for NotificationSource);
        *(*(v23 + 56) + 8 * v19) = v22;
        v24 = v22;
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

        v1 = v26;
        v6 = v30;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v9);
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
}

void sub_1DA861BE4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
  v4 = *v0;
  v5 = sub_1DA9414C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v27 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v28;
        v21 = *(v29 + 72) * v19;
        sub_1DA862E7C(*(v4 + 48) + v21, v28, type metadata accessor for NotificationSource);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v30;
        sub_1DA862EE4(v20, *(v30 + 48) + v21, type metadata accessor for NotificationSource);
        *(*(v23 + 56) + 8 * v19) = v22;
        v24 = v22;
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

        v1 = v26;
        v6 = v30;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v9);
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
}

void sub_1DA861E40(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

void sub_1DA861FDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_1DA9414C4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    v13 = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v15)
    {
      memmove(v13, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_1DA862E7C(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_1DA862EE4(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
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

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_1DA86226C()
{
  v1 = v0;
  v33 = sub_1DA93FB24();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5868, &qword_1DA95C138);
  v3 = *v0;
  v4 = sub_1DA9414C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
}

void sub_1DA8624EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58B8, &qword_1DA95C1C0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1DA862D8C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_1DA8626C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1DA9414C4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
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

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1DA86298C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
}

uint64_t sub_1DA862AFC()
{
  domain_answer = os_eligibility_get_domain_answer();
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE110EC8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = domain_answer;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "os_eligibility failed: %{public}d", v4, 8u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  return 0;
}

uint64_t sub_1DA862D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s12AvailabilityC16DeviceManagementCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1DA862E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA862EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA862F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58F0, &qword_1DA95C1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA862FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA86302C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA863074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA863110()
{
  swift_unknownObjectRelease();

  sub_1DA86349C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA86317C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBE3DA0);
  sub_1DA848A24(&v27, &v23);

  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  sub_1DA84A040(&v27);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315394;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DA848A24(&v27, v19);
    v10 = sub_1DA940A74();
    v12 = sub_1DA7AE6E8(v10, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    sub_1DA86342C(v2 + 32, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
    v13 = sub_1DA940A74();
    v15 = sub_1DA7AE6E8(v13, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "NotificationActionRouter perform(action): %s sending to: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1DA7BABAC(v2 + 32, v19);
    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    (*(v18 + 8))(&v23, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_1DA86342C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA86349C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA863504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ionActionRecord8";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = "OptOutOfCoordinationForwardOnly";
    }

    else
    {
      v5 = "DenyListedCategories";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001FLL;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3)
    {
      v5 = "OptOutOfCoordination";
    }

    else
    {
      v5 = "ionActionRecord8";
    }
  }

  if (a2 > 1u)
  {
    v2 = "OptOutOfCoordinationForwardOnly";
    v6 = "DenyListedCategories";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xD000000000000015;
    }
  }

  else
  {
    v6 = "OptOutOfCoordination";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DA941684();
  }

  return v10 & 1;
}

uint64_t sub_1DA863608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6172656E6567;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x696B726F7774656ELL;
    v3 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x72616C756C6C6563;
  }

  else
  {
    v4 = 0x69746E6568747561;
    v3 = 0xEE006E6F69746163;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6C6172656E6567;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x696B726F7774656ELL;
    v5 = 0xEA0000000000676ELL;
    v6 = 0xE800000000000000;
    v7 = 0x72616C756C6C6563;
    if (a2 != 3)
    {
      v7 = 0x69746E6568747561;
      v6 = 0xEE006E6F69746163;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA8637A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  if (a1 > 1u)
  {
    v3 = 0x80000001DA9506B0;
    v4 = 0x80000001DA9506D0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000012;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x80000001DA950690;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 1701869940;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x80000001DA9506B0;
  v9 = 0xD000000000000012;
  if (a2 == 2)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v8 = 0x80000001DA9506D0;
  }

  if (a2)
  {
    v10 = 0x80000001DA950690;
  }

  else
  {
    v2 = 1701869940;
    v10 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA941684();
  }

  return v13 & 1;
}

uint64_t sub_1DA8638BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF657079546E6F69;
  v3 = 0x746361736E617274;
  v4 = a1;
  v5 = 0x73657461647075;
  v6 = 0xE800000000000000;
  v7 = 0x73676E6974746573;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001DA950380;
  }

  if (a1 == 3)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x80000001DA950340;
  if (a1 != 1)
  {
    v8 = 0x79726F6765746163;
    v9 = 0xEE0064726F636552;
  }

  if (!a1)
  {
    v8 = 0x746361736E617274;
    v9 = 0xEF657079546E6F69;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x73657461647075)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x73676E6974746573)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x80000001DA950380;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001DA950340;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x79726F6765746163;
      v2 = 0xEE0064726F636552;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1DA941684();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_1DA863AAC(unsigned __int8 a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA863BD4(uint64_t a1, unsigned __int8 a2)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t UserNotificationsVendorTransaction.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 20));

  return v1;
}

uint64_t UserNotificationsVendorTransaction.categoryRecords.getter()
{
  type metadata accessor for UserNotificationsVendorTransaction(0);
}

uint64_t UserNotificationsVendorTransaction.updates.getter()
{
  type metadata accessor for UserNotificationsVendorTransaction(0);
}

void *UserNotificationsVendorTransaction.settings.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t UserNotificationsVendorTransaction.sourceDeviceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 36);

  return sub_1DA863E8C(v3, a1);
}

uint64_t sub_1DA863E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA863F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA863F94(uint64_t a1)
{
  v2 = sub_1DA8648EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA863FD0(uint64_t a1)
{
  v2 = sub_1DA8648EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA86400C()
{
  v1 = 0x657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_1DA864060@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA867484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA864088(uint64_t a1)
{
  v2 = sub_1DA864898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8640C4(uint64_t a1)
{
  v2 = sub_1DA864898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA864114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA864198(uint64_t a1)
{
  v2 = sub_1DA8649E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8641D4(uint64_t a1)
{
  v2 = sub_1DA8649E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA864210(uint64_t a1)
{
  v2 = sub_1DA864994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA86424C(uint64_t a1)
{
  v2 = sub_1DA864994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserNotificationsVendorTransaction.TransactionType.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59A0, &qword_1DA95C318);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v28 - v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59A8, &qword_1DA95C320);
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v28 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59B0, &qword_1DA95C328);
  v28 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = sub_1DA93FB24();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59B8, &qword_1DA95C330);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA864898();
  sub_1DA941834();
  sub_1DA81AACC(v37, v11, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v11[1];
      v44 = *v11;
      v45 = v16;
      v17 = v11[3];
      v46 = v11[2];
      v47 = v17;
      LOBYTE(v40) = 2;
      sub_1DA8648EC();
      v18 = v34;
      v19 = v39;
      sub_1DA9415A4();
      v40 = v44;
      v41 = v45;
      v42 = v46;
      v43 = v47;
      sub_1DA864940();
      v20 = v36;
      sub_1DA941604();
      (*(v35 + 8))(v18, v20);
      (*(v38 + 8))(v14, v19);
      return sub_1DA84A040(&v44);
    }

    else
    {
      LOBYTE(v44) = 1;
      sub_1DA864994();
      v26 = v29;
      v27 = v39;
      sub_1DA9415A4();
      (*(v30 + 8))(v26, v31);
      return (*(v38 + 8))(v14, v27);
    }
  }

  else
  {
    v22 = v28;
    v23 = v32;
    (*(v32 + 32))(v8, v11, v6);
    LOBYTE(v44) = 0;
    sub_1DA8649E8();
    v24 = v39;
    sub_1DA9415A4();
    sub_1DA865308(&qword_1EE114C70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v25 = v33;
    sub_1DA941604();
    (*(v22 + 8))(v5, v25);
    (*(v23 + 8))(v8, v6);
    return (*(v38 + 8))(v14, v24);
  }
}

unint64_t sub_1DA864898()
{
  result = qword_1EE115958[0];
  if (!qword_1EE115958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115958);
  }

  return result;
}

unint64_t sub_1DA8648EC()
{
  result = qword_1ECBD59C0;
  if (!qword_1ECBD59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59C0);
  }

  return result;
}

unint64_t sub_1DA864940()
{
  result = qword_1ECBD59C8;
  if (!qword_1ECBD59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59C8);
  }

  return result;
}

unint64_t sub_1DA864994()
{
  result = qword_1EE115930;
  if (!qword_1EE115930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115930);
  }

  return result;
}

unint64_t sub_1DA8649E8()
{
  result = qword_1ECBD59D0;
  if (!qword_1ECBD59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59D0);
  }

  return result;
}

uint64_t UserNotificationsVendorTransaction.TransactionType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59D8, &qword_1DA95C338);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59E0, &qword_1DA95C340);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v48 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59E8, &qword_1DA95C348);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59F0, &unk_1DA95C350);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1DA864898();
  v20 = v64;
  sub_1DA941804();
  if (!v20)
  {
    v50 = v16;
    v49 = v13;
    v21 = v59;
    v22 = v60;
    v23 = v61;
    v52 = 0;
    v51 = v18;
    v64 = v10;
    v24 = v62;
    v25 = sub_1DA941594();
    v26 = v25;
    v27 = *(v25 + 16);
    if (!v27 || ((v28 = *(v25 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
    {
      v30 = sub_1DA9413B4();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v32 = v64;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v63 + 8))(v9, v7);
    }

    else
    {
      if (*(v25 + 32))
      {
        if (v28 == 1)
        {
          LOBYTE(v65) = 1;
          sub_1DA864994();
          v34 = v52;
          sub_1DA941504();
          v35 = v24;
          if (v34)
          {
            (*(v63 + 8))(v9, v7);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v69);
          }

          (*(v53 + 8))(v22, v54);
          (*(v63 + 8))(v9, v7);
          swift_unknownObjectRelease();
          v39 = v51;
          swift_storeEnumTagMultiPayload();
LABEL_21:
          sub_1DA8652A4(v39, v35);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        LOBYTE(v65) = 2;
        sub_1DA8648EC();
        v40 = v52;
        sub_1DA941504();
        if (!v40)
        {
          v35 = v24;
          v60 = v26;
          v41 = v7;
          sub_1DA865250();
          v42 = v56;
          sub_1DA941584();
          v43 = v63;
          (*(v58 + 8))(v23, v42);
          (*(v43 + 8))(v9, v41);
          swift_unknownObjectRelease();
          v44 = v66;
          v45 = v49;
          *v49 = v65;
          v45[1] = v44;
          v46 = v68;
          v45[2] = v67;
          v45[3] = v46;
          swift_storeEnumTagMultiPayload();
          v47 = v45;
          v39 = v51;
          sub_1DA8652A4(v47, v51);
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_1DA8649E8();
        v36 = v52;
        sub_1DA941504();
        if (!v36)
        {
          sub_1DA93FB24();
          sub_1DA865308(&unk_1EE114C58, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v37 = v50;
          v38 = v57;
          sub_1DA941584();
          (*(v55 + 8))(v21, v38);
          (*(v63 + 8))(v9, v7);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v39 = v51;
          sub_1DA8652A4(v37, v51);
          v35 = v24;
          goto LABEL_21;
        }
      }

      (*(v63 + 8))(v9, v7);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1DA86521C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA865250()
{
  result = qword_1ECBD59F8;
  if (!qword_1ECBD59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59F8);
  }

  return result;
}

uint64_t sub_1DA8652A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA865308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA865350()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA865384()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8653B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8653EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA865464(uint64_t a1)
{
  sub_1DA940AB4();
}

unint64_t sub_1DA86557C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA867594(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA8655AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0x746361736E617274;
  v5 = 0xE700000000000000;
  v6 = 0x73657461647075;
  v7 = 0xE800000000000000;
  v8 = 0x73676E6974746573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001DA950380;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001DA950340;
  v10 = 0xD000000000000010;
  if (v2 != 1)
  {
    v10 = 0x79726F6765746163;
    v9 = 0xEE0064726F636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DA86568C()
{
  v1 = *v0;
  v2 = 0x746361736E617274;
  v3 = 0x73657461647075;
  v4 = 0x73676E6974746573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x79726F6765746163;
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

unint64_t sub_1DA865768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA867594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA86579C(uint64_t a1)
{
  v2 = sub_1DA86623C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8657D8(uint64_t a1)
{
  v2 = sub_1DA86623C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserNotificationsVendorTransaction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - v4;
  v57 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A00, &qword_1DA95C360);
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UserNotificationsVendorTransaction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA86623C();
  v13 = v59;
  sub_1DA941804();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v53 = v5;
  v54 = v10;
  v14 = v56;
  v59 = a1;
  LOBYTE(v60) = 0;
  sub_1DA865308(&qword_1EE114210, type metadata accessor for UserNotificationsVendorTransaction.TransactionType, &protocol conformance descriptor for UserNotificationsVendorTransaction.TransactionType);
  v15 = v58;
  sub_1DA941584();
  sub_1DA8652A4(v15, v12);
  LOBYTE(v60) = 1;
  v16 = sub_1DA941554();
  v17 = v7;
  v18 = v14;
  v19 = &v12[v54[5]];
  *v19 = v16;
  v19[1] = v20;
  LOBYTE(v63) = 3;
  v21 = sub_1DA83E640();
  sub_1DA941584();
  v51 = v21;
  v52 = v9;
  v22 = v60;
  v57 = v17;
  v58 = v61;
  v23 = sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A08, &qword_1DA95C368);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DA958370;
  *(v24 + 32) = sub_1DA7AF3EC(0, &qword_1EE110B80, 0x1E695DEC8);
  *(v24 + 40) = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  sub_1DA940F54();
  v48 = v23;
  v49 = v22;

  v25 = v54;
  if (!v62)
  {
    sub_1DA7BA120(&v60, &unk_1ECBD7730, &qword_1DA95C370);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A18, &qword_1DA95C378);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v26 = v58;
    v27 = v59;
    v28 = v49;
    sub_1DA866290();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    v30 = sub_1DA828324(v28, v26);
    (*(v18 + 8))(v52, v57, v30);
    v31 = 0;
    goto LABEL_4;
  }

  *&v12[v25[7]] = v63;
  LOBYTE(v63) = 2;
  sub_1DA941584();
  v32 = v60;
  v33 = v61;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DA95C300;
  *(v34 + 32) = sub_1DA7AF3EC(0, &qword_1EE110C58, 0x1E695DF20);
  *(v34 + 40) = sub_1DA7AF3EC(0, &qword_1EE110B68, 0x1E696AEC0);
  *(v34 + 48) = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v47 = v32;
  v50 = v33;
  sub_1DA940F54();

  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A20, &qword_1DA95C380);
    if (swift_dynamicCast())
    {
      *&v12[v25[6]] = v63;
      LOBYTE(v63) = 4;
      sub_1DA941584();
      v39 = v60;
      v40 = v61;
      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v42 = sub_1DA940F44();
      sub_1DA828324(v39, v40);
      v43 = v54[8];
      if (v42)
      {
        *&v12[v43] = v42;
      }

      else
      {
        *&v12[v43] = 0;
      }

      LOBYTE(v60) = 5;
      sub_1DA941524();
      if (v41)
      {

        sub_1DA93FE84();
        sub_1DA828324(v49, v58);
        sub_1DA828324(v47, v50);

        (*(v14 + 8))(v52, v57);
      }

      else
      {
        sub_1DA828324(v49, v58);
        v44 = sub_1DA828324(v47, v50);
        (*(v14 + 8))(v52, v57, v44);
        v45 = sub_1DA93FE74();
        (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      }

      sub_1DA8662E4(v53, &v12[v54[9]]);
      sub_1DA81AACC(v12, v55, type metadata accessor for UserNotificationsVendorTransaction);
      __swift_destroy_boxed_opaque_existential_1(v59);
      sub_1DA866354(v12, type metadata accessor for UserNotificationsVendorTransaction);
      return;
    }
  }

  else
  {
    sub_1DA7BA120(&v60, &unk_1ECBD7730, &qword_1DA95C370);
  }

  v35 = v58;
  v27 = v59;
  v36 = v49;
  sub_1DA866290();
  swift_allocError();
  v31 = 1;
  *v37 = 1;
  swift_willThrow();
  sub_1DA828324(v36, v35);
  v38 = sub_1DA828324(v47, v50);
  (*(v18 + 8))(v52, v57, v38);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_1DA866354(v12, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);

  if (v31)
  {
  }
}

unint64_t sub_1DA86623C()
{
  result = qword_1EE115888[0];
  if (!qword_1EE115888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115888);
  }

  return result;
}

unint64_t sub_1DA866290()
{
  result = qword_1ECBD5A10;
  if (!qword_1ECBD5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A10);
  }

  return result;
}

uint64_t sub_1DA8662E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA866354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserNotificationsVendorTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v47 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A28, &qword_1DA95C388);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v41 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA86623C();
  sub_1DA941834();
  LOBYTE(v45) = 0;
  type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  sub_1DA865308(qword_1EE114218, type metadata accessor for UserNotificationsVendorTransaction.TransactionType, &protocol conformance descriptor for UserNotificationsVendorTransaction.TransactionType);
  sub_1DA941604();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v12 = type metadata accessor for UserNotificationsVendorTransaction(0);
  LOBYTE(v45) = 1;
  sub_1DA9415D4();
  v43 = v7;
  v13 = objc_opt_self();
  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v14 = sub_1DA940964();
  v45 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v45];

  v16 = v45;
  if (!v15)
  {
    v21 = v16;
    sub_1DA93F8C4();

LABEL_5:
    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

  v42 = v13;
  v17 = sub_1DA93F9A4();
  v19 = v18;

  v45 = v17;
  v46 = v19;
  v44 = 2;
  v20 = sub_1DA83E88C();
  sub_1DA941604();
  v41[1] = v20;
  sub_1DA828324(v45, v46);
  sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  v23 = sub_1DA940BD4();
  v45 = 0;
  v24 = [v42 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v45];

  v25 = v45;
  if (!v24)
  {
    v36 = v25;
    sub_1DA93F8C4();

    goto LABEL_5;
  }

  v26 = sub_1DA93F9A4();
  v28 = v27;

  v45 = v26;
  v46 = v28;
  v44 = 3;
  sub_1DA941604();
  sub_1DA828324(v45, v46);
  v29 = *(v3 + *(v12 + 32));
  if (v29)
  {
    v45 = 0;
    v30 = v29;
    v31 = [v42 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v45];
    v32 = v45;
    if (v31)
    {
      v42 = v30;
      v33 = sub_1DA93F9A4();
      v35 = v34;

      v45 = v33;
      v46 = v35;
      v44 = 4;
      sub_1DA941604();
      sub_1DA828324(v45, v46);

      goto LABEL_13;
    }

    v37 = v32;
    sub_1DA93F8C4();

    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

LABEL_13:
  v38 = v43;
  sub_1DA863E8C(v3 + *(v12 + 36), v43);
  v39 = sub_1DA93FE74();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1DA7BA120(v38, &qword_1ECBD4E80, &qword_1DA958C00);
  }

  else
  {
    sub_1DA93FE24();
    (*(v40 + 8))(v38, v39);
  }

  LOBYTE(v45) = 5;
  sub_1DA9415B4();
  (*(v9 + 8))(v11, v8);
}

void sub_1DA866A1C(uint64_t a1)
{
  type metadata accessor for UserNotificationsVendorTransaction.TransactionType(319);
  if (v1 <= 0x3F)
  {
    sub_1DA866B48(319);
    if (v2 <= 0x3F)
    {
      sub_1DA866BC0(319, &qword_1EE110C88, &unk_1EE114D90, off_1E85D5C78, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1DA866BC0(319, &qword_1EE110BC0, &unk_1EE114DA0, 0x1E69832B0, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DA866C28(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DA866B48(uint64_t a1)
{
  if (!qword_1EE110CE8)
  {
    sub_1DA7AF3EC(255, &qword_1EE114D80, off_1E85D5C60);
    v1 = sub_1DA940994();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE110CE8);
    }
  }
}

void sub_1DA866BC0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DA7AF3EC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DA866C28(uint64_t a1)
{
  if (!qword_1EE114E78)
  {
    sub_1DA93FE74();
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE114E78);
    }
  }
}

void sub_1DA866CD0(uint64_t a1)
{
  sub_1DA866D44();
  if (v1 <= 0x3F)
  {
    sub_1DA866D8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DA866D44()
{
  if (!qword_1EE114C78)
  {
    v0 = sub_1DA93FB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114C78);
    }
  }
}

ValueMetadata *sub_1DA866D8C()
{
  result = qword_1EE111DB8[0];
  if (!qword_1EE111DB8[0])
  {
    result = &type metadata for NotificationActionSelector;
    atomic_store(&type metadata for NotificationActionSelector, qword_1EE111DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationsVendorTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotificationsVendorTransaction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA866F60()
{
  result = qword_1ECBD5A30;
  if (!qword_1ECBD5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A30);
  }

  return result;
}

unint64_t sub_1DA866FB8()
{
  result = qword_1ECBD5A38;
  if (!qword_1ECBD5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A38);
  }

  return result;
}

unint64_t sub_1DA867010()
{
  result = qword_1ECBD5A40;
  if (!qword_1ECBD5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A40);
  }

  return result;
}

unint64_t sub_1DA867068()
{
  result = qword_1ECBD5A48;
  if (!qword_1ECBD5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A48);
  }

  return result;
}

unint64_t sub_1DA8670C0()
{
  result = qword_1ECBD5A50;
  if (!qword_1ECBD5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A50);
  }

  return result;
}

unint64_t sub_1DA867118()
{
  result = qword_1EE115878;
  if (!qword_1EE115878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115878);
  }

  return result;
}

unint64_t sub_1DA867170()
{
  result = qword_1EE115880;
  if (!qword_1EE115880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115880);
  }

  return result;
}

unint64_t sub_1DA8671C8()
{
  result = qword_1EE115910;
  if (!qword_1EE115910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115910);
  }

  return result;
}

unint64_t sub_1DA867220()
{
  result = qword_1EE115918;
  if (!qword_1EE115918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115918);
  }

  return result;
}

unint64_t sub_1DA867278()
{
  result = qword_1EE115920;
  if (!qword_1EE115920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115920);
  }

  return result;
}

unint64_t sub_1DA8672D0()
{
  result = qword_1EE115928;
  if (!qword_1EE115928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115928);
  }

  return result;
}

unint64_t sub_1DA867328()
{
  result = qword_1EE115938;
  if (!qword_1EE115938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115938);
  }

  return result;
}

unint64_t sub_1DA867380()
{
  result = qword_1EE115940;
  if (!qword_1EE115940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115940);
  }

  return result;
}

unint64_t sub_1DA8673D8()
{
  result = qword_1EE115948;
  if (!qword_1EE115948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115948);
  }

  return result;
}

unint64_t sub_1DA867430()
{
  result = qword_1EE115950;
  if (!qword_1EE115950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115950);
  }

  return result;
}

uint64_t sub_1DA867484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

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

unint64_t sub_1DA867594(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void *sub_1DA8675EC()
{
  type metadata accessor for NotificationGroupService(0);
  v0 = swift_allocObject();
  result = NotificationGroupService.init()();
  qword_1ECBD5A58 = v0;
  return result;
}

uint64_t NotificationGroupService.__allocating_init()()
{
  v0 = swift_allocObject();
  NotificationGroupService.init()();
  return v0;
}

uint64_t static NotificationGroupService.shared.getter()
{
  if (qword_1ECBD4748 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA8677AC(uint64_t a1)
{
  sub_1DA7BABAC(a1, v3);
  sub_1DA7BABAC(v3, v2);
  sub_1DA93A1DC(v2);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t NotificationGroupService.settingsProvider.setter(void *a1)
{
  sub_1DA7BABAC(a1, v3);
  sub_1DA93A1DC(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*NotificationGroupService.settingsProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  return sub_1DA867900;
}

void sub_1DA867900(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1DA7BABAC(*a1, (v2 + 5));
    sub_1DA7BABAC((v2 + 5), (v2 + 10));
    sub_1DA93A1DC(v2 + 10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_1DA7BABAC(*a1, (v2 + 5));
    sub_1DA93A1DC(v2 + 5);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

void *NotificationGroupService.init()()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940FC4();
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DA940854();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v27[3] = "sitory";
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v27[2] = sub_1DA7ACFF0(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  v12 = *MEMORY[0x1E69E8090];
  v13 = *(v34 + 104);
  v34 += 104;
  v13(v7, v12, v33);
  v0[6] = sub_1DA941004();
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA9411D4();
  v13(v7, v12, v33);
  v0[7] = sub_1DA941004();
  type metadata accessor for WeakObserverArray();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v0[8] = v14;
  sub_1DA9401F4();
  v16 = MEMORY[0x1E69DF180];
  sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
  sub_1DA7ACFF0(&qword_1ECBD5A78, v16, MEMORY[0x1E69DF188]);
  sub_1DA7ACFF0(&qword_1ECBD5A80, v16, MEMORY[0x1E69DF198]);
  v17 = v15;
  sub_1DA940444();
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler) = 0;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer) = 0;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions) = 1;
  type metadata accessor for NotificationMigrationScheduler(0);
  swift_allocObject();
  v18 = sub_1DA8230D4();
  v0[2] = v18;
  type metadata accessor for NotificationGroupPersistenceManager();
  swift_allocObject();
  v19 = swift_retain_n();
  v0[3] = sub_1DA92ACDC(v19);
  if (qword_1EE1134B0 != -1)
  {
    swift_once();
  }

  v0[4] = qword_1EE1134B8;
  v20 = qword_1EE111B28;

  if (v20 != -1)
  {
    swift_once();
  }

  v1[5] = qword_1EE11AE98;

  sub_1DA8680E8();

  sub_1DA87B80C(v21, v18);

  sub_1DA92A494();

  aBlock[4] = sub_1DA87BAF4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_8;
  v22 = _Block_copy(aBlock);

  v23 = v11;
  sub_1DA940824();
  v35 = v17;
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  v24 = v30;
  v25 = v32;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v23, v24, v22);
  _Block_release(v22);

  (*(v31 + 8))(v24, v25);
  (*(v28 + 8))(v23, v29);

  return v1;
}

void sub_1DA8680E8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1ECBE3DD0);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Started streaming summaries", v3, 2u);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }
}

void sub_1DA8681EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBE3DD0);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Starting resume timer", v8, 2u);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v10 = sub_1DA940A04();
  v11 = [v9 initWithIdentifier_];

  v12 = *(v1 + 56);
  v13 = swift_allocObject();
  swift_weakInit();
  v16[4] = sub_1DA87F784;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DA7B00D0;
  v16[3] = &block_descriptor_131;
  v14 = _Block_copy(v16);

  [v11 scheduleWithFireInterval:v12 leewayInterval:v14 queue:3.0 handler:0.1];
  _Block_release(v14);
  v15 = *(v1 + v2);
  *(v1 + v2) = v11;
}

uint64_t NotificationGroupService.deinit()
{
  v1 = v0;
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  v3 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t NotificationGroupService.__deallocating_deinit()
{
  NotificationGroupService.deinit();

  return swift_deallocClassInstance();
}

void sub_1DA8685BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
  v3 = *(a1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    [v3 invalidate];
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

double sub_1DA868630(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA9407F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA940854();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 56);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);

  return result;
}

double sub_1DA8688D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions;
  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions) == 1)
  {
    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1ECBE3DD0);
    v8 = sub_1DA940584();
    v9 = sub_1DA940F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "Resuming emissions", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }

    *(v1 + v6) = 0;
    v11 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
    v12 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
    if (v12)
    {
      [v12 invalidate];
      v13 = *(v1 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v1 + v11) = 0;

    sub_1DA86A66C();
    v14 = sub_1DA940D34();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;

    sub_1DA84FB24(0, 0, v5, &unk_1DA95CD28, v15);
  }

  return result;
}

Swift::Void __swiftcall NotificationGroupService.addOrModify(notifications:publisherDestinations:)(Swift::OpaquePointer notifications, UserNotificationsCore::NotificationPublisherDestinations publisherDestinations)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *publisherDestinations.rawValue;
  v13 = swift_allocObject();
  v13[2]._rawValue = v3;
  v13[3]._rawValue = notifications._rawValue;
  v13[4]._rawValue = v12;
  aBlock[4] = sub_1DA87BB74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

void sub_1DA868DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = 0;
    v7 = *(sub_1DA9401F4() - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = 0;
    while (v9 < v3)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

      v11 = (v8 + *(v7 + 72) * v9);
      v12 = a3;
      if (sub_1DA86EB28(v11, &v12))
      {
        v6 = 1;
        if (v10 == v3)
        {
          goto LABEL_11;
        }

        ++v9;
      }

      else
      {
        ++v9;
        if (v10 == v3)
        {
          if ((v6 & 1) == 0)
          {
            return;
          }

LABEL_11:
          sub_1DA86A66C();
          return;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1DA868EF0(uint64_t a1)
{
  v3 = sub_1DA93FEC4();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = v1;
  v10 = *(v1 + 56);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  v12 = sub_1DA9408F4();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1ECBE3DD0);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F34();

    v16 = os_log_type_enabled(v14, v15);
    v29 = v3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      v19 = MEMORY[0x1E1271CD0](a1, v3);
      v21 = sub_1DA7AE6E8(v19, v20, v32);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DA7A9000, v14, v15, "Removing notifications: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    v22 = *(a1 + 16);
    if (!v22)
    {
      break;
    }

    v28 = 0;
    v23 = 0;
    v3 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v24 = (v31 + 8);
    while (v23 < v22)
    {
      a1 = v29;
      (*(v31 + 16))(v5, v3 + *(v31 + 72) * v23, v29);
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      v26 = sub_1DA870C38(v5, 0);
      swift_endAccess();
      (*v24)(v5, a1);
      if (v26)
      {
        v28 = 1;
        ++v23;
        if (v25 == v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
        ++v23;
        if (v25 == v22)
        {
          if ((v28 & 1) == 0)
          {
            return;
          }

LABEL_15:
          sub_1DA86A66C();
          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

double sub_1DA8692D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9407F4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DA940854();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v35 - v10;
  v39 = sub_1DA9402B4();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v39);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v35 - v16;
  v17 = a1;
  v18 = *(a1 + 64);
  v49 = 0;
  swift_unknownObjectWeakInit();
  v37 = a3;
  v38 = a2;
  v49 = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v19 = *(v18 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1DA886068(0, v19[2] + 1, 1, v19);
    *(v18 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1DA886068((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  sub_1DA87F49C(v48, &v19[2 * v22 + 4]);
  *(v18 + 16) = v19;
  swift_endAccess();
  v23 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v24 = v17;
  swift_beginAccess();
  (*(v9 + 16))(v11, v17 + v23, v35);
  v25 = v36;
  sub_1DA9402A4();
  v35 = *(v24 + 48);
  v26 = v39;
  (*(v12 + 16))(v15, v25, v39);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v38;
  *(v28 + 24) = v29;
  (*(v12 + 32))(v28 + v27, v15, v26);
  aBlock[4] = sub_1DA87F598;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_113;
  v30 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v31 = v40;
  sub_1DA940824();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  v32 = v42;
  v33 = v45;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v31, v32, v30);
  _Block_release(v30);
  (*(v44 + 8))(v32, v33);
  (*(v41 + 8))(v31, v43);
  (*(v12 + 8))(v25, v26);

  return result;
}

double sub_1DA869888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v7 = v5;
  v10 = sub_1DA9407F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DA940854();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + 56);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v20[0];
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1DA940824();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);

  return result;
}

uint64_t sub_1DA869B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1DA87C648((v4 + 16), a2);
  result = swift_unknownObjectRelease();
  v7 = *(*(v4 + 16) + 16);
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_1DA884C28(v5, v7);
    return swift_endAccess();
  }

  return result;
}

double sub_1DA869C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  swift_beginAccess();
  v3 = sub_1DA869C98(v1, v2);
  swift_endAccess();
  if (v3)
  {
    return sub_1DA86A66C();
  }

  return result;
}

uint64_t sub_1DA869C98(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v60 = a2;
  v77 = a1;
  v61 = sub_1DA93FAF4();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DA93FEC4();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v75 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DA9400B4();
  v63 = *(v72 - 8);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v74 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v55 - v6;
  v7 = sub_1DA9401F4();
  v76 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v57 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  v19 = *(v11 + 104);
  v19(&v55 - v17, *MEMORY[0x1E69DF238], v10);
  v20 = *MEMORY[0x1E69DF248];
  v19(v16, v20, v10);
  v21 = v71;
  v69 = sub_1DA8730F0(v18, v16, v77, v71, sub_1DA87979C, sub_1DA880680);
  v22 = *(v11 + 8);
  (v22)(v16, v10);
  (v22)(v18, v10);
  v19(v18, v20, v10);
  v19(v16, *MEMORY[0x1E69DF240], v10);
  LODWORD(v68) = sub_1DA8730F0(v18, v16, v77, v21, sub_1DA8791BC, sub_1DA880680);
  (v22)(v16, v10);
  v77 = v22;
  v67 = (v11 + 8);
  (v22)(v18, v10);
  v23 = v70;
  v19(v70, v20, v10);
  v24 = sub_1DA8779F8(v23);
  if (v25)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  result = sub_1DA940464();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v27 < *(result + 16))
  {
    v29 = v57;
    v30 = result + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v29[9] * v27;
    v31 = v56;
    v32 = v65;
    (v57[2])(v56, v30, v65);

    v26 = sub_1DA878030();
    (v29[1])(v31, v32);
LABEL_6:
    v33 = v68 | v69;
    (v77)(v23, v10);
    v34 = v26[2];
    v35 = v62;
    if (v34)
    {
      LODWORD(v65) = v33;
      v36 = *(v76 + 16);
      v37 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v57 = v26;
      v38 = v26 + v37;
      v39 = *(v76 + 72);
      v77 = (v76 + 8);
      v69 = *MEMORY[0x1E69DF160];
      v67 = (v63 + 8);
      v68 = (v63 + 104);
      v40 = MEMORY[0x1E69E7CC0];
      v63 = v66 + 32;
      v76 += 16;
      v70 = v39;
      v71 = v36;
      v36(v62, v26 + v37, v7);
      while (1)
      {
        v41 = sub_1DA93FF84();
        v42 = [v41 request];

        v43 = [v42 content];
        v44 = [v43 interruptionLevel];

        if (v44 == 2)
        {
          v45 = v40;
          v46 = v7;
          v47 = v73;
          sub_1DA9400C4();
          v48 = v74;
          v49 = v35;
          v50 = v72;
          (*v68)(v74, v69, v72);
          sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168], MEMORY[0x1E69DF178]);
          sub_1DA940B74();
          sub_1DA940B74();
          v51 = *v67;
          (*v67)(v48, v50);
          v51(v47, v50);
          if (v79 == v78)
          {
            sub_1DA940124();
            v40 = v45;
            v7 = v46;
            v35 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1DA885D20(0, v45[2] + 1, 1, v45);
            }

            v39 = v70;
            v36 = v71;
            v53 = v40[2];
            v52 = v40[3];
            if (v53 >= v52 >> 1)
            {
              v40 = sub_1DA885D20((v52 > 1), v53 + 1, 1, v40);
            }

            (*v77)(v35, v46);
            v40[2] = v53 + 1;
            (*(v66 + 32))(v40 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v53, v75, v64);
            LODWORD(v65) = 1;
          }

          else
          {
            v7 = v46;
            (*v77)(v49, v46);
            v35 = v49;
            v40 = v45;
            v39 = v70;
            v36 = v71;
          }
        }

        else
        {
          (*v77)(v35, v7);
        }

        v38 = &v39[v38];
        if (!--v34)
        {
          break;
        }

        v36(v35, v38, v7);
      }

      LOBYTE(v33) = v65;
      if (v40[2])
      {
        goto LABEL_20;
      }
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_20:
        v54 = v58;
        sub_1DA93FA74();
        sub_1DA8236E4(v40, v54);

        (*(v59 + 8))(v54, v61);
        return v33 & 1;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

double sub_1DA86A66C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 56);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  v7 = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions))
  {
    if (qword_1ECBD47C8 == -1)
    {
LABEL_4:
      v8 = sub_1DA9405A4();
      __swift_project_value_buffer(v8, qword_1ECBE3DD0);
      v9 = sub_1DA940584();
      v10 = sub_1DA940F34();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1DA7A9000, v9, v10, "Holding off emissions during launch", v11, 2u);
        MEMORY[0x1E12739F0](v11, -1, -1);
      }

      return result;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler;
  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler) || (v14 = swift_allocObject(), swift_weakInit(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B58, &unk_1DA95CCB0), swift_allocObject(), *(v0 + v13) = sub_1DA87AEC4(v6, sub_1DA87E010, v14, 0.1), , *(v0 + v13)))
  {

    sub_1DA8722E0();
  }

  return result;
}

double sub_1DA86A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_1DA9407F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA940854();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v7 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);

  return result;
}

void sub_1DA86AC10(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA9408C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 56);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1DA9408F4();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {

    v10 = sub_1DA8AD06C(v9);

    v11 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
    swift_beginAccess();

    v12 = sub_1DA87D154(a1 + v11, v10);
    swift_endAccess();
    swift_bridgeObjectRelease_n();
    v13 = *(v12 + 16);

    if (v13)
    {
      sub_1DA86A66C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA86ADC0(uint64_t a1)
{
  v3 = sub_1DA9408C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v1;
  v7 = *(v1 + 56);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1DA9408F4();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v9 = sub_1DA9405A4();
    v10 = __swift_project_value_buffer(v9, qword_1ECBE3DD0);

    v42 = v10;
    v11 = sub_1DA940584();
    v12 = sub_1DA940F34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v47 = v14;
      *v13 = 136315138;
      v15 = MEMORY[0x1E1271CD0](a1, MEMORY[0x1E69E6158]);
      v17 = sub_1DA7AE6E8(v15, v16, &v47);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DA7A9000, v11, v12, "Processing notification setting changes: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12739F0](v14, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    v18 = sub_1DA848FF8(MEMORY[0x1E69E7CC0]);
    v20 = *(a1 + 16);
    if (!v20)
    {
      break;
    }

    v21 = 0;
    v22 = 0;
    v44 = *(v43 + 40);
    v23 = a1 + 40;
    *&v19 = 136315138;
    v41 = v19;
    v45 = v20;
    v46 = v18;
    v39 = a1 + 40;
LABEL_7:
    v40 = v21;
    v24 = (v23 + 16 * v22);
    while (v22 < v20)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_29;
      }

      a1 = *(v24 - 1);
      v26 = *v24;
      MEMORY[0x1EEE9AC00](v18);
      *(&v39 - 4) = v27;
      *(&v39 - 3) = a1;
      *(&v39 - 2) = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();
      v28 = v47;
      if (v47)
      {
        v29 = v46;
        if (*(v46 + 16) && (v30 = sub_1DA85A4B4(a1, v26), (v31 & 1) != 0))
        {
          v32 = *(*(v29 + 56) + 8 * v30);
          v33 = v32;
        }

        else
        {
          v32 = 0;
        }

        v34 = sub_1DA8725AC(a1, v26, v32, v28);

        if (v34)
        {
          v21 = 1;
          ++v22;
          v20 = v45;
          v23 = v39;
          if (v25 != v45)
          {
            goto LABEL_7;
          }

LABEL_25:
          sub_1DA86A66C();
          return;
        }
      }

      else
      {

        v35 = sub_1DA940584();
        v36 = sub_1DA940F14();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v47 = v38;
          *v37 = v41;
          a1 = sub_1DA7AE6E8(a1, v26, &v47);

          *(v37 + 4) = a1;
          _os_log_impl(&dword_1DA7A9000, v35, v36, "Could not find notification source settings for bundle identifier: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E12739F0](v38, -1, -1);
          MEMORY[0x1E12739F0](v37, -1, -1);
        }

        else
        {
        }
      }

      ++v22;
      v24 += 2;
      v20 = v45;
      if (v25 == v45)
      {

        if ((v40 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

void sub_1DA86B2B4()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 56);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1ECBD47C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1ECBE3DD0);
  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "Processing notification system setting changes", v10, 2u);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }
}

void sub_1DA86B468(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, id a4@<X3>, uint64_t a5@<X8>)
{
  v226 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BA8, &qword_1DA95CD08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v217 - v10;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  v12 = MEMORY[0x1EEE9AC00](v241);
  v230 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v237 = &v217 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v231 = &v217 - v16;
  v232 = sub_1DA93FAF4();
  v224 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v223 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_1DA940294();
  v18 = *(v246 - 8);
  v19 = MEMORY[0x1EEE9AC00](v246);
  v221 = &v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v222 = &v217 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v238 = &v217 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v229 = &v217 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v228 = &v217 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v227 = &v217 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v234 = &v217 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v244 = &v217 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v217 - v35;
  v37 = sub_1DA9401F4();
  v248 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = *a2;
  v40 = sub_1DA93FF84();
  v41 = [v40 request];

  v42 = [v41 content];
  v239 = v42;

  v43 = [v42 topicIdentifiers];
  v44 = sub_1DA940E94();

  v45 = *(v44 + 16);

  v46 = MEMORY[0x1E69E7CC0];
  if (v45 && *(a3 + 2) == 1 && (a3[40] & 1) == 0)
  {
    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v60 = sub_1DA9405A4();
    __swift_project_value_buffer(v60, qword_1ECBE3DD0);
    v61 = v248;
    (*(v248 + 16))(v39, a1, v37);
    v62 = sub_1DA940584();
    v63 = sub_1DA940F14();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v46;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v249 = v66;
      *v65 = 136315138;
      sub_1DA7ACFF0(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v67 = sub_1DA941614();
      v69 = v68;
      (*(v61 + 8))(v39, v37);
      v70 = sub_1DA7AE6E8(v67, v69, &v249);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1DA7A9000, v62, v63, "Ignoring notification published with topics that do not exist: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1E12739F0](v66, -1, -1);
      v71 = v65;
      v46 = v64;
      MEMORY[0x1E12739F0](v71, -1, -1);
    }

    else
    {

      (*(v61 + 8))(v39, v37);
    }

    v249 = v46;
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88, MEMORY[0x1E69E6328]);
    sub_1DA9411D4();

    return;
  }

  v233 = a3;
  v218 = v11;
  v235 = v18;
  v249 = MEMORY[0x1E69E7CC0];
  v47 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
  v49 = sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88, MEMORY[0x1E69E6328]);
  v245 = v36;
  v220 = v48;
  v219 = v49;
  v242 = v47;
  sub_1DA9411D4();
  if ((v236 & 2) == 0)
  {
    goto LABEL_23;
  }

  if ([v239 interruptionLevel] == 3)
  {
    v50 = v234;
    sub_1DA940284();
    v51 = v244;
    sub_1DA86CDCC(v244, v50);
  }

  else
  {
    v52 = *(v233 + 2);
    if (!v52)
    {
      goto LABEL_23;
    }

    v53 = (v233 + 40);
    while (1)
    {
      v54 = *v53;
      v55 = *(v53 - 1);
      v56 = v55;
      v57 = (v54 ? &selRef_topicSettings : &selRef_notificationSettings);
      v58 = [v55 *v57];
      v59 = [v58 notificationCenterSetting];

      if (v59 == 2)
      {
        break;
      }

      v53 += 2;
      if (!--v52)
      {
        goto LABEL_23;
      }
    }

    v50 = v234;
    sub_1DA940284();
    v51 = v244;
    sub_1DA86CDCC(v244, v50);
  }

  v72 = *(v235 + 8);
  v73 = v50;
  v74 = v246;
  v72(v73, v246);
  v72(v51, v74);
LABEL_23:
  v75 = v244;
  sub_1DA940284();
  v77 = v245;
  v76 = v246;
  v78 = sub_1DA941164();
  v79 = *(v235 + 8);
  v243 = v235 + 8;
  v79(v75, v76);
  if ((v78 & 1) != 0 && (v236 & 0x400) != 0)
  {
    v80 = v234;
    sub_1DA940234();
    sub_1DA86CDCC(v75, v80);
    v81 = v246;
    v79(v80, v246);
    v79(v75, v81);
  }

  v82 = *(v233 + 2);
  v240 = v79;
  v248 = v82;
  if (!v82)
  {
    v247 = a4;
    v225 = &selRef_notificationSettings;
    v100 = v239;
    goto LABEL_48;
  }

  v84 = v233 + 32;
  v83 = *(v233 + 4);
  v85 = v233[40];
  v86 = v83;
  v87 = a4;
  v88 = 0;
  v89 = 0;
  v90 = 1;
  if (v85)
  {
    goto LABEL_30;
  }

LABEL_33:
  while ((v88 & 0x8000000000000000) == 0)
  {
    while (1)
    {

      if (v90 == v248)
      {
        v247 = a4;
        goto LABEL_45;
      }

      v97 = &v84[16 * v90];
      v83 = *v97;
      v96 = v97[8];
      ++v90;
      if ((v89 & 1) == 0)
      {
        break;
      }

      while (2)
      {
        v91 = v83;
        v92 = [a4 topic];
        v88 = [v92 priority];

        v89 = 1;
        if ((v96 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_30:
        v93 = [v83 topic];
        v94 = [v93 priority];

        if (v88 < v94)
        {
          v247 = v83;

          if (v90 == v248)
          {
            v89 = 1;
            goto LABEL_45;
          }

          v95 = &v84[16 * v90];
          v83 = *v95;
          v96 = v95[8];
          ++v90;
          a4 = v247;
          continue;
        }

        break;
      }
    }

LABEL_39:
    v99 = v83;
    v88 = 0;
    v89 = 0;
    if (v96)
    {
      goto LABEL_30;
    }
  }

  v247 = v83;

  if (v90 != v248)
  {
    v98 = &v84[16 * v90];
    v83 = *v98;
    v96 = v98[8];
    ++v90;
    a4 = v247;
    goto LABEL_39;
  }

  v89 = 0;
LABEL_45:
  v101 = &selRef_notificationSettings;
  if (v89)
  {
    v101 = &selRef_topicSettings;
  }

  v225 = v101;
  v100 = v239;
  v79 = v240;
  v77 = v245;
LABEL_48:
  v102 = [v100 threadIdentifier];
  sub_1DA940A14();

  if ([v100 interruptionLevel] <= 1 && (v103 = objc_msgSend(v247, sel_muteAssertion)) != 0)
  {
    v104 = v103;
    v105 = sub_1DA940A04();
    v106 = v223;
    sub_1DA93FAC4();
    v107 = sub_1DA93FA44();
    (*(v224 + 8))(v106, v232);
    v108 = [v104 isActiveForThreadIdentifier:v105 currentDate:v107];

    if (v108)
    {
      v249 = MEMORY[0x1E69E7CC0];
      v109 = v246;
      sub_1DA9411D4();

      v79(v77, v109);
      return;
    }
  }

  else
  {
  }

  if (!v248)
  {
LABEL_60:
    v118 = 0;
    v119 = 0;
    v120 = v244;
    v121 = v236;
    v122 = v240;
    v123 = v238;
    if ((v236 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_97;
  }

  v110 = (v233 + 40);
  v111 = v248;
  while (1)
  {
    v112 = *v110;
    v113 = *(v110 - 1);
    v114 = v113;
    v115 = (v112 ? &selRef_topicSettings : &selRef_notificationSettings);
    v116 = [v113 *v115];
    v117 = [v116 scheduledDeliverySetting];

    if (v117 == 2)
    {
      break;
    }

    v110 += 2;
    if (!--v111)
    {
      goto LABEL_60;
    }
  }

  if (v112)
  {
    v124 = &selRef_topicSettings;
  }

  else
  {
    v124 = &selRef_notificationSettings;
  }

  v125 = [v114 *v124];
  v126 = [v125 criticalAlertSetting];

  LODWORD(v232) = v126 == 2 && [v239 interruptionLevel] == 3;
  v127 = v244;
  v123 = v238;
  if (v112)
  {
    v128 = &selRef_topicSettings;
  }

  else
  {
    v128 = &selRef_notificationSettings;
  }

  v129 = [v114 *v128];
  v130 = [v129 timeSensitiveSetting];

  LODWORD(v224) = v130 == 2 && [v239 interruptionLevel] == 2;
  if (v112)
  {
    v131 = &selRef_topicSettings;
  }

  else
  {
    v131 = &selRef_notificationSettings;
  }

  v132 = [v114 *v131];
  v133 = [v132 directMessagesSetting];

  if (v133 != 2)
  {
    v122 = v240;
    v120 = v127;
    if ((v232 & 1) == 0)
    {
      if ((v224 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_83;
    }

LABEL_95:

LABEL_96:
    v118 = 0;
    v119 = 0;
    v121 = v236;
    if ((v236 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_97;
  }

  v134 = [v239 contentType];
  v135 = sub_1DA940A14();
  v137 = v136;
  v138 = sub_1DA940A14();
  v140 = v240;
  v120 = v127;
  if (v135 == v138 && v137 == v139)
  {
LABEL_80:

    goto LABEL_85;
  }

  v141 = sub_1DA941684();

  if ((v141 & 1) == 0)
  {
    v134 = [v239 contentType];
    v142 = sub_1DA940A14();
    v144 = v143;
    if (v142 == sub_1DA940A14() && v144 == v145)
    {
      goto LABEL_80;
    }

    v146 = sub_1DA941684();

    v122 = v140;
    if ((v232 & 1) == 0)
    {
      if ((v224 & 1) == 0 && (v146 & 1) == 0)
      {
LABEL_94:
        if ([v239 interruptionLevel] != 3)
        {
          v121 = v236;
          if ((v236 & 4) != 0)
          {
            v215 = v234;
            sub_1DA940264();
            sub_1DA86CDCC(v120, v215);

            v216 = v246;
            v122(v215, v246);
            v122(v120, v216);
          }

          else
          {
          }

          v118 = 1;
          v119 = 1;
          if ((v121 & 8) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_97;
        }

        goto LABEL_95;
      }

LABEL_83:

      v121 = v236;
      goto LABEL_87;
    }

    goto LABEL_95;
  }

LABEL_85:

  v122 = v140;
  if (v232)
  {
    goto LABEL_96;
  }

  v121 = v236;
LABEL_87:
  v118 = 0;
  v119 = 0;
  if ((v121 & 8) != 0)
  {
LABEL_97:
    v147 = [v239 interruptionLevel];
    if (v147)
    {
      v119 = 1;
    }

    else
    {
      v119 = v118;
    }

    if ((v118 & 1) != 0 || !v147)
    {
      goto LABEL_127;
    }

    v148 = v231;
    if (!v248)
    {
LABEL_119:
      if ([v239 interruptionLevel] == 3)
      {
        v179 = v234;
        sub_1DA940214();
        sub_1DA86CDCC(v120, v179);
        v180 = v179;
        v181 = v246;
        v122(v180, v246);
        v122(v120, v181);
      }

      sub_1DA940214();
      v182 = v246;
      v183 = sub_1DA941164();
      v122(v120, v182);
      v121 = v236;
      v184 = v222;
      if (v183)
      {
        sub_1DA940254();
        v185 = v235;
        (*(v235 + 16))(v120, v245, v246);
        v186 = v221;
        sub_1DA941174();
        if (sub_1DA941184())
        {
          v187 = v246;
          v122(v186, v246);
          v122(v184, v187);
          v188 = 1;
          v189 = v218;
        }

        else
        {
          v190 = v246;
          sub_1DA941194();
          v122(v184, v190);
          v191 = v186;
          v189 = v218;
          (*(v185 + 32))(v218, v191, v190);
          v188 = 0;
        }

        (*(v185 + 56))(v189, v188, 1, v246);
        sub_1DA7BA120(v189, &qword_1ECBD5BA8, &qword_1DA95CD08);
      }

      v119 = 0;
      goto LABEL_127;
    }

    v224 = v235 + 32;
    v149 = (v233 + 40);
    v232 = v235 + 16;
    while (1)
    {
      v155 = *v149;
      v156 = *(v149 - 1);
      v157 = v156;
      v158 = &selRef_topicSettings;
      if (!v155)
      {
        v158 = &selRef_notificationSettings;
      }

      v159 = [v156 *v158];
      v160 = [v159 alertStyle];

      if (v160 == 2)
      {
        v167 = v120;
        v168 = v122;
        v169 = v229;
        sub_1DA940214();
        v170 = *v232;
        (*v232)(v167, v245, v246);
        sub_1DA941174();
        sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1B8]);
        v171 = sub_1DA9409F4();
        v172 = *(v241 + 48);
        v173 = v230;
        *v230 = (v171 & 1) == 0;
        if (v171)
        {
          v174 = v246;
          v168(v169, v246);

          (*v224)(v173 + v172, v123, v174);
        }

        else
        {
          v175 = v123;
          v176 = v246;
          v240(v175, v246);
          (v170)(v173 + v172, v169, v176);
          (v170)(v244, v169, v176);
          v168 = v240;
          sub_1DA9411A4();

          v177 = v176;
          v123 = v238;
          v168(v169, v177);
        }

        v178 = v237;
        sub_1DA87F660(v173, v237);
        v168((v178 + *(v241 + 48)), v246);
        v148 = v231;
        v122 = v168;
      }

      else
      {
        if (v160 != 1)
        {

          goto LABEL_107;
        }

        v161 = v246;
        v162 = v120;
        v163 = v227;
        sub_1DA940254();
        v233 = *v232;
        (v233)(v162, v245, v161);
        v164 = v228;
        sub_1DA941174();
        sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1B8]);
        v165 = sub_1DA9409F4();
        v166 = *(v241 + 48);
        *v148 = (v165 & 1) == 0;
        if (v165)
        {
          v122 = v240;
          v240(v163, v161);

          (*v224)(&v148[v166], v164, v161);
        }

        else
        {
          v150 = v164;
          v151 = v240;
          v240(v150, v161);
          v152 = &v148[v166];
          v153 = v233;
          (v233)(v152, v163, v161);
          (v153)(v162, v163, v161);
          v122 = v151;
          sub_1DA9411A4();

          v151(v163, v161);
        }

        v154 = v237;
        sub_1DA87F660(v148, v237);
        v122(v154 + *(v241 + 48), v246);
        v123 = v238;
      }

      v120 = v244;
LABEL_107:
      v149 += 2;
      if (!--v248)
      {
        goto LABEL_119;
      }
    }
  }

LABEL_127:
  v192 = [v247 *v225];
  v193 = [v192 lockScreenSetting];

  if ((v119 & 1) == 0 && v193 == 2 || [v239 interruptionLevel] == 3)
  {
    if ((v121 & 4) != 0)
    {
      v194 = v234;
      sub_1DA940204();
      sub_1DA86CDCC(v120, v194);
      v195 = v246;
      v122(v194, v246);
      v122(v120, v195);
    }

    sub_1DA940254();
    v196 = v246;
    v197 = sub_1DA941164();
    v122(v120, v196);
    if (v197)
    {
      v198 = v234;
      sub_1DA940204();
      sub_1DA86CDCC(v120, v198);
      v199 = v198;
      v200 = v246;
      v122(v199, v246);
      v122(v120, v200);
    }

    sub_1DA940214();
    v201 = v246;
    v202 = sub_1DA941164();
    v122(v120, v201);
    if (v202)
    {
      v203 = v234;
      sub_1DA940244();
      sub_1DA86CDCC(v120, v203);
      v204 = v246;
      v122(v203, v246);
      v122(v120, v204);
    }
  }

  sub_1DA940224();
  v205 = v246;
  v206 = sub_1DA941164();
  v122(v120, v205);
  if (v206)
  {
    v207 = v239;
    v208 = [v239 shouldSuppressScreenLightUp];
    v209 = v247;
    if (v208)
    {

      goto LABEL_140;
    }

    v211 = [v207 interruptionLevel];
    v212 = v226;
    if (v211 && (v119 & 1) == 0)
    {
      v213 = v234;
      sub_1DA940274();
      sub_1DA86CDCC(v120, v213);

      v214 = v246;
      v122(v213, v246);
      v122(v120, v214);
      v210 = v212;
    }

    else
    {

      v210 = v212;
    }
  }

  else
  {

LABEL_140:
    v210 = v226;
  }

  (*(v235 + 32))(v210, v245, v246);
}

uint64_t sub_1DA86CDCC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = sub_1DA940294();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x1E69DF1B0];
  v25 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
  sub_1DA941174();
  v17 = v16;
  v18 = v28;
  sub_1DA7ACFF0(&qword_1ECBD5B08, v17, MEMORY[0x1E69DF1B8]);
  v26 = a2;
  v19 = sub_1DA9409F4();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_1DA9411A4();
  }

  v22 = v29;
  sub_1DA87F660(v7, v29);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_1DA86D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1DA9407F4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1DA940854();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_1DA86D21C;

  return sub_1DA8D7E78();
}

uint64_t sub_1DA86D21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 136) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DA86D37C, 0, 0);
  }
}

uint64_t sub_1DA86D37C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[6] = sub_1DA880698;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_126;
  v6 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v2, v3, v6);
  _Block_release(v6);
  (*(v10 + 8))(v3, v9);
  (*(v11 + 8))(v2, v12);

  v7 = v0[1];

  return v7();
}

void sub_1DA86D5F4(unint64_t a1)
{
  v83 = sub_1DA93F844();
  v3 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v94 = &v76[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = v1;
  v9 = *(v1 + 56);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1DA9408F4();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (!(a1 >> 62))
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
LABEL_49:
    __break(1u);
  }

  v12 = sub_1DA941264();
  if (!v12)
  {
    return;
  }

LABEL_4:
  v77 = 0;
  v13 = 0;
  v90 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v14 = a1 & 0xC000000000000001;
  v84 = a1 + 32;
  v85 = a1 & 0xFFFFFFFFFFFFFF8;
  v79 = (v3 + 1);
  v3 = &selRef_bulletinGroupingSetting;
  *&v11 = 136446723;
  v78 = v11;
  v81 = v12;
  v80 = a1 & 0xC000000000000001;
  v82 = a1;
  while (1)
  {
LABEL_6:
    if (v14)
    {
      v15 = MEMORY[0x1E1272460](v13, a1);
    }

    else
    {
      if (v13 >= *(v85 + 16))
      {
        goto LABEL_48;
      }

      v15 = *(v84 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ([v15 v3[371]])
    {
      v18 = [v16 content];
      if (v18)
      {
        break;
      }
    }

    if (v13 == v12)
    {
      goto LABEL_43;
    }
  }

  v88 = v18;
  v19 = [v16 bundleIdentifier];
  v93 = sub_1DA940A14();
  v21 = v20;

  v22 = [v16 threadIdentifier];
  if (v22)
  {
    v23 = v22;
    v92 = sub_1DA940A14();
    v25 = v24;
  }

  else
  {
    v92 = 0;
    v25 = 0;
  }

  v89 = v16;
  v26 = [v16 requestIdentifiers];
  v3 = sub_1DA940BE4();

  v27 = v3[2];
  v95 = v25;
  v96 = v21;
  if (v27)
  {
    v97 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, v27, 0);
    v28 = v97;
    v29 = v3 + 5;
    do
    {

      v30 = sub_1DA940A04();
      v31 = [v30 un_logDigest];

      if (v31)
      {
        v32 = sub_1DA940A14();
        v34 = v33;
      }

      else
      {

        v34 = 0xE400000000000000;
        v32 = 1061109567;
      }

      v97 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DA82A778((v35 > 1), v36 + 1, 1);
        v28 = v97;
      }

      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += 2;
      --v27;
    }

    while (v27);
    v25 = v95;
    v21 = v96;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA9405A4();
  v39 = __swift_project_value_buffer(v38, qword_1ECBE3DD0);

  v40 = sub_1DA940584();
  v41 = sub_1DA940F34();

  v42 = os_log_type_enabled(v40, v41);
  v86 = v39;
  v87 = v13;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v99[0] = v44;
    *v43 = v78;
    *(v43 + 4) = sub_1DA7AE6E8(v93, v21, v99);
    *(v43 + 12) = 2081;
    v97 = v92;
    v98 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v45 = sub_1DA940A74();
    v47 = sub_1DA7AE6E8(v45, v46, v99);

    *(v43 + 14) = v47;
    *(v43 + 22) = 2082;
    v48 = MEMORY[0x1E1271CD0](v28, MEMORY[0x1E69E6158]);
    v50 = sub_1DA7AE6E8(v48, v49, v99);

    *(v43 + 24) = v50;
    _os_log_impl(&dword_1DA7A9000, v40, v41, "Processing group summary: %{public}s, %{private}s, %{public}s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v44, -1, -1);
    MEMORY[0x1E12739F0](v43, -1, -1);
  }

  v88 = v88;
  sub_1DA93F854();
  v51 = [v89 spotlightIdentifier];
  v52 = sub_1DA940A14();
  v54 = v53;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v55 = *(sub_1DA940464() + 16);

  v56 = 0;
  while (v55 != v56)
  {
    v57 = sub_1DA940454();
    a1 = v58;
    v59 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1DA884B48(v59);
      *a1 = v59;
    }

    if (v56 >= v59[2])
    {
      __break(1u);
      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v61 = sub_1DA876D70(v94, v93, v96, v92, v95, v3, v52, v54);
    v57(&v97, 0);
    ++v56;
    if (v61)
    {
      swift_endAccess();

      (*v79)(v94, v83);

      v77 = 1;
      v12 = v81;
      v13 = v87;
      a1 = v82;
      v14 = v80;
      v3 = &selRef_bulletinGroupingSetting;
      if (v87 == v81)
      {
        goto LABEL_44;
      }

      goto LABEL_6;
    }
  }

  swift_endAccess();

  (*v79)(v94, v83);
  v62 = v96;

  v63 = v95;

  v64 = sub_1DA940584();
  v65 = sub_1DA940F14();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v99[0] = v67;
    *v66 = v78;
    v68 = sub_1DA7AE6E8(v93, v62, v99);

    *(v66 + 4) = v68;
    *(v66 + 12) = 2081;
    v97 = v92;
    v98 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v69 = sub_1DA940A74();
    v71 = sub_1DA7AE6E8(v69, v70, v99);

    *(v66 + 14) = v71;
    *(v66 + 22) = 2082;
    v72 = MEMORY[0x1E1271CD0](v28, MEMORY[0x1E69E6158]);
    v74 = v73;

    v75 = sub_1DA7AE6E8(v72, v74, v99);

    *(v66 + 24) = v75;
    _os_log_impl(&dword_1DA7A9000, v64, v65, "Could not find group for group summary: %{public}s, %{private}s, %{public}s", v66, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v67, -1, -1);
    MEMORY[0x1E12739F0](v66, -1, -1);
  }

  else
  {
  }

  a1 = v82;
  v12 = v81;
  v13 = v87;
  v14 = v80;
  v3 = &selRef_bulletinGroupingSetting;
  if (v87 != v81)
  {
    goto LABEL_6;
  }

LABEL_43:
  if (v77)
  {
LABEL_44:
    sub_1DA86E1BC();
  }
}

void sub_1DA86E078(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9408C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 56);
    *v5 = v7;
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
    v8 = v7;
    LOBYTE(v7) = sub_1DA9408F4();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      sub_1DA8688D4();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DA86E1BC()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  *&v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DA940854();
  v39 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = sub_1DA9402B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v5;
  (*(v7 + 16))(v9, v17, v6);
  sub_1DA9402A4();
  v36 = *(v1 + 64);
  v37 = sub_1DA87AC2C();
  v19 = v37[2];
  if (v19)
  {
    v20 = (v37 + 4);
    v44 = *(v1 + 48);
    v43 = *(v11 + 16);
    v45 = v11 + 16;
    v42 = v11 + 32;
    v41 = v55;
    v40 = (v52 + 8);
    ++v39;
    v46 = v11;
    v47 = v15;
    v38 = v10;
    do
    {
      v21 = *v20++;
      v52 = v21;
      v22 = v48;
      v43(v48, v15, v10);
      v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v52;
      (*(v11 + 32))(v24 + v23, v22, v10);
      v55[2] = sub_1DA88067C;
      v55[3] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v55[0] = sub_1DA7AF1D0;
      v55[1] = &block_descriptor_77;
      v25 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      sub_1DA940824();
      v53 = MEMORY[0x1E69E7CC0];
      sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
      sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
      v26 = v18;
      v27 = v51;
      sub_1DA9411D4();
      MEMORY[0x1E12720D0](0, v26, v27, v25);
      _Block_release(v25);
      v10 = v38;
      v11 = v46;
      v15 = v47;
      swift_unknownObjectRelease();
      v28 = v27;
      v18 = v26;
      (*v40)(v28, v2);
      (*v39)(v26, v50);

      --v19;
    }

    while (v19);
  }

  v29 = v36;
  swift_beginAccess();
  v30 = *(*(v29 + 16) + 16);
  sub_1DA87AD60();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v31 = sub_1DA9405A4();
  __swift_project_value_buffer(v31, qword_1ECBE3DD0);
  v32 = sub_1DA940584();
  v33 = sub_1DA940F34();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v30;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "Emitted list for %ld observers", v34, 0xCu);
    MEMORY[0x1E12739F0](v34, -1, -1);
  }

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1DA86E858@<X0>(uint64_t a1@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B60, &qword_1DA95CCC0);
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v9 = sub_1DA940464();
  v10 = *(v9 + 16);
  if (v10)
  {
    v19[1] = a1;
    v19[2] = v9;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v20 = *(v11 + 56);
    v21 = v12;
    v22 = v11;
    v14 = (v11 - 8);
    v19[3] = v2 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v21(v8, v13, v5);
      sub_1DA8782BC(v4);
      (*v14)(v8, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DA8861E0(0, v15[2] + 1, 1, v15);
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1DA8861E0((v16 > 1), v17 + 1, 1, v15);
      }

      v15[2] = v17 + 1;
      (*(v2 + 32))(v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v4, v23);
      v13 += v20;
      --v10;
    }

    while (v10);
  }

  return sub_1DA940444();
}

uint64_t sub_1DA86EB28(char **a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v137 = v3;
  v129 = v6;
  v7 = sub_1DA940294();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v128 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA93FF94();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v127 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1DA9400B4();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA93FEC4();
  v133 = *(v12 - 8);
  v134 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA9401F4();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v122 = &v118 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v118 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v118 - v23;
  v123 = *a2;
  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v25 = sub_1DA9405A4();
    v26 = __swift_project_value_buffer(v25, qword_1ECBE3DD0);
    v139 = v15[2];
    v140 = v15 + 2;
    (v139)(v24, a1, v14);
    v135 = v26;
    v27 = sub_1DA940584();
    v28 = sub_1DA940F34();
    v29 = os_log_type_enabled(v27, v28);
    v138 = v15;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v121 = v30;
      v136 = swift_slowAlloc();
      v141[0] = v136;
      *v30 = 136315138;
      v31 = v132;
      sub_1DA940124();
      sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
      v32 = a1;
      v33 = v134;
      v34 = sub_1DA941614();
      v131 = v22;
      v35 = v14;
      v37 = v36;
      v38 = v33;
      a1 = v32;
      (*(v133 + 8))(v31, v38);
      v39 = v15[1];
      (v39)(v24, v35);
      v40 = sub_1DA7AE6E8(v34, v37, v141);
      v14 = v35;
      v22 = v131;

      v41 = v121;
      *(v121 + 4) = v40;
      v42 = v41;
      _os_log_impl(&dword_1DA7A9000, v27, v28, "Adding notification: %s", v41, 0xCu);
      v43 = v136;
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x1E12739F0](v43, -1, -1);
      MEMORY[0x1E12739F0](v42, -1, -1);

      v44 = v39;
    }

    else
    {

      v44 = v15[1];
      (v44)(v24, v14);
    }

    (v139)(v22, a1, v14);
    v45 = sub_1DA940014();
    v47 = v46;
    v48 = v137[5];
    v49 = MEMORY[0x1EEE9AC00](v45);
    *(&v118 - 4) = v48;
    *(&v118 - 3) = v49;
    *(&v118 - 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
    sub_1DA940FE4();
    v136 = v141[0];
    if (!v141[0])
    {

      v70 = sub_1DA940584();
      v71 = sub_1DA940F14();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v14;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v141[0] = v74;
        *v73 = 136315138;
        v75 = sub_1DA7AE6E8(v45, v47, v141);

        *(v73 + 4) = v75;
        _os_log_impl(&dword_1DA7A9000, v70, v71, "Could not find notification source settings for bundle identifier: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x1E12739F0](v74, -1, -1);
        MEMORY[0x1E12739F0](v73, -1, -1);

        v76 = v22;
        v77 = v72;
LABEL_28:
        (v44)(v76, v77);
        return 0;
      }

LABEL_27:
      v76 = v22;
      v77 = v14;
      goto LABEL_28;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B98, &unk_1DA95CCF0);
    sub_1DA940FE4();
    v51 = v141[0];
    if (!v141[0])
    {
      v78 = sub_1DA940584();
      v79 = sub_1DA940F14();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1DA7A9000, v78, v79, "Could not find notification system settings", v80, 2u);
        MEMORY[0x1E12739F0](v80, -1, -1);
      }

      goto LABEL_27;
    }

    if ((sub_1DA93FF74() & 1) == 0)
    {
      (v44)(v22, v14);

      return 0;
    }

    v121 = v51;
    v52 = sub_1DA93FF84();
    v53 = [v52 request];

    v54 = [v53 content];
    v55 = [v54 topicIdentifiers];

    v56 = sub_1DA940E94();
    v24 = sub_1DA87BF98(v56, v136);

    v57 = sub_1DA9400F4();
    v120 = v14;
    if (v57)
    {
      v58 = sub_1DA940064();
      if (v58)
      {
        v59 = v58;
        v60 = [v58 options];

        if ((v60 & 0x20000) != 0)
        {
          (*(v124 + 104))(v125, *MEMORY[0x1E69DF158], v126);
          goto LABEL_32;
        }
      }
    }

    v118 = a1;
    v119 = v44;
    v131 = v22;
    v61 = *(v24 + 2);
    if (!v61)
    {
      break;
    }

    v62 = 0;
    v63 = (v24 + 40);
    v22 = &selRef_topicSettings;
    a1 = &selRef_bulletinGroupingSetting;
    v15 = &selRef_notificationSettings;
    while (v62 < *(v24 + 2))
    {
      v64 = *v63;
      v65 = *(v63 - 1);
      v66 = v65;
      if (v64)
      {
        v67 = &selRef_topicSettings;
      }

      else
      {
        v67 = &selRef_notificationSettings;
      }

      v68 = [v65 *v67];
      v14 = [v68 criticalAlertSetting];

      if (v14 == 2)
      {
        v69 = MEMORY[0x1E69DF158];
        goto LABEL_31;
      }

      ++v62;
      v63 += 2;
      if (v61 == v62)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

LABEL_19:
  v69 = MEMORY[0x1E69DF160];
LABEL_31:
  (*(v124 + 104))(v125, *v69, v126);
  v14 = v120;
  v22 = v131;
  v44 = v119;
  a1 = v118;
LABEL_32:
  sub_1DA9400D4();
  sub_1DA86F9CC(v127);
  sub_1DA940034();
  v141[0] = v123;
  v82 = v136;
  sub_1DA86B468(v22, v141, v24, v136, v128);

  sub_1DA93FEF4();
  v83 = v137[3];
  swift_beginAccess();
  v84 = v121;
  v85 = sub_1DA86FCC0(v22, v82, v121, v83);
  swift_endAccess();
  v86 = v130;
  if ((v85 & 1) == 0)
  {
    (v139)(v130, a1, v14);
    v103 = sub_1DA940584();
    v104 = v14;
    v105 = sub_1DA940F34();
    if (os_log_type_enabled(v103, v105))
    {
      v106 = swift_slowAlloc();
      v139 = v106;
      v140 = swift_slowAlloc();
      v141[0] = v140;
      *v106 = 136315138;
      v107 = v132;
      sub_1DA940124();
      sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
      v108 = v134;
      v109 = sub_1DA941614();
      v110 = v86;
      v112 = v111;
      (*(v133 + 8))(v107, v108);
      v113 = v110;
      v114 = v120;
      (v44)(v113, v120);
      v115 = sub_1DA7AE6E8(v109, v112, v141);

      v116 = v139;
      *(v139 + 4) = v115;
      _os_log_impl(&dword_1DA7A9000, v103, v105, "Did not add notification: %s", v116, 0xCu);
      v117 = v140;
      __swift_destroy_boxed_opaque_existential_1(v140);
      MEMORY[0x1E12739F0](v117, -1, -1);
      MEMORY[0x1E12739F0](v116, -1, -1);

      (v44)(v22, v114);
    }

    else
    {

      (v44)(v86, v104);
      (v44)(v22, v104);
    }

    return 0;
  }

  v87 = v122;
  (v139)(v122, a1, v14);
  v88 = sub_1DA940584();
  v89 = v14;
  v90 = sub_1DA940F34();
  if (os_log_type_enabled(v88, v90))
  {
    v91 = swift_slowAlloc();
    v139 = v91;
    v140 = swift_slowAlloc();
    v141[0] = v140;
    *v91 = 136315138;
    v92 = v132;
    sub_1DA940124();
    sub_1DA7ACFF0(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
    v93 = v134;
    v94 = sub_1DA941614();
    v95 = v87;
    v97 = v96;
    (*(v133 + 8))(v92, v93);
    v98 = v95;
    v99 = v120;
    (v44)(v98, v120);
    v100 = sub_1DA7AE6E8(v94, v97, v141);

    v101 = v139;
    *(v139 + 4) = v100;
    _os_log_impl(&dword_1DA7A9000, v88, v90, "Added notification: %s", v101, 0xCu);
    v102 = v140;
    __swift_destroy_boxed_opaque_existential_1(v140);
    MEMORY[0x1E12739F0](v102, -1, -1);
    MEMORY[0x1E12739F0](v101, -1, -1);

    (v44)(v22, v99);
  }

  else
  {

    (v44)(v87, v89);
    (v44)(v22, v89);
  }

  return 1;
}