uint64_t sub_1B76B1CBC(id *a1)
{
  v1 = [*a1 entity];
  v2 = [v1 name];

  if (v2)
  {
    v3 = sub_1B7800868();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  type metadata accessor for ManagedTransaction();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_1B7800868();
  v9 = v8;

  if (v5)
  {
    if (v3 == v7 && v5 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1B78020F8();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1B76B1E70()
{

  return swift_deallocClassInstance();
}

void sub_1B76B1ED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050, &unk_1B780B9B0);
  v4 = sub_1B7801A08();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B78022F8();
      sub_1B7800798();
      v21 = sub_1B7802368();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B76B2134(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B77FE748();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903E0, &unk_1B7859BA0);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1B76B5A3C(&qword_1EB98FFD0, MEMORY[0x1E6967E70], MEMORY[0x1E6967E78]);
      v21 = sub_1B7800758();
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1B76B2490(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B77FFA18();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990230, &qword_1B780C148);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1B76B5A3C(&qword_1EB99DAF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1B7800758();
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1B76B28F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990218, &qword_1B780C128);
  v4 = sub_1B7801A08();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B78022F8();
      sub_1B7800798();

      v18 = sub_1B7802368();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B76B2B80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903D0, &unk_1B780C2E0);
  v4 = sub_1B7801A08();
  v5 = v4;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
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
    v12 = v4 + 56;
    v39 = v4;
    while (1)
    {
      if (!v10)
      {
        v18 = v6;
        while (1)
        {
          v6 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v6 >= v11)
          {
            break;
          }

          v19 = v7[v6];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v40 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        v36 = 1 << *(v3 + 32);
        if (v36 >= 64)
        {
          bzero(v7, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v36;
        }

        v2 = v37;
        *(v3 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
LABEL_15:
      v20 = (*(v3 + 48) + 56 * (v17 | (v6 << 6)));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v41 = v20[5];
      v43 = v20[6];
      sub_1B78022F8();
      v42 = v22;
      sub_1B7802318();
      if (v21)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v24)
      {
        sub_1B7800798();
      }

      if (v41)
      {
        sub_1B7802318();
        sub_1B7800798();
        v26 = v43;
        if (v43)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1B7802318();
        v26 = v43;
        if (v43)
        {
LABEL_21:
          sub_1B7802318();
          v27 = v26;
          sub_1B7801568();

          goto LABEL_24;
        }
      }

      sub_1B7802318();
LABEL_24:
      v28 = sub_1B7802368();
      v5 = v39;
      v29 = -1 << *(v39 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v14 = v42;
        v15 = v43;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v14 = v42;
      v15 = v43;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (*(v39 + 48) + 56 * v13);
      v10 = v40;
      *v16 = v14;
      v16[1] = v21;
      v16[2] = v23;
      v16[3] = v24;
      v16[4] = v25;
      v16[5] = v41;
      v16[6] = v15;
      ++*(v39 + 16);
      v3 = v38;
    }
  }

  *v2 = v5;
}

void sub_1B76B2F28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990360, &unk_1B780C280);
  v4 = sub_1B7801A08();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
    v37 = v3;
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
    v12 = v4 + 56;
    v38 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7802318();
      if (v21)
      {
        sub_1B7800798();
      }

      sub_1B7800798();
      v25 = sub_1B7802368();
      v5 = v38;
      v26 = -1 << *(v38 + 32);
      v27 = v25 & ~v26;
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

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v38 + 48) + 48 * v13);
      *v14 = v20;
      v14[1] = v19;
      v10 = v39;
      v14[2] = v22;
      v14[3] = v21;
      v14[4] = v23;
      v14[5] = v24;
      ++*(v38 + 16);
      v3 = v37;
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
        v39 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
}

void sub_1B76B320C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990368, &unk_1B7859B90);
  v4 = sub_1B7801A08();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v2;
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
    v12 = v4 + 56;
    v37 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 88 * (v17 | (v6 << 6));
      v21 = *v20;
      *v46 = *(v20 + 1);
      *&v46[3] = *(v20 + 4);
      v23 = *(v20 + 8);
      v22 = *(v20 + 16);
      v41 = *(v20 + 24);
      v42 = *(v20 + 32);
      v24 = *(v20 + 40);
      *v45 = *(v20 + 41);
      *&v45[3] = *(v20 + 44);
      v39 = *(v20 + 64);
      v40 = *(v20 + 48);
      v43 = *(v20 + 72);
      v44 = *(v20 + 56);
      v25 = *(v20 + 80);
      sub_1B78022F8();
      sub_1B7802328();
      sub_1B7802318();
      if (v22)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v42)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      sub_1B7802318();
      if (v44)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v43)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      v26 = sub_1B7802368();
      v5 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v15 = v43;
        v14 = v44;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v15 = v43;
      v14 = v44;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v37 + 48) + 88 * v13;
      *v16 = v21;
      *(v16 + 1) = *v46;
      *(v16 + 4) = *&v46[3];
      *(v16 + 8) = v23;
      *(v16 + 16) = v22;
      *(v16 + 24) = v41;
      *(v16 + 32) = v42;
      *(v16 + 40) = v24;
      *(v16 + 41) = *v45;
      *(v16 + 44) = *&v45[3];
      *(v16 + 48) = v40;
      *(v16 + 56) = v14;
      *(v16 + 64) = v39;
      *(v16 + 72) = v15;
      *(v16 + 80) = v25;
      ++*(v37 + 16);
      v3 = v36;
      v10 = v38;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B76B3630(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990340, &qword_1B780C250);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
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
    v24 = v6 + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_1B76B59D4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B78022F8();
      CascadeExtractedOrder.OrderEmail.hash(into:)(v27);
      sub_1B7802368();
      v19 = v24;
      v20 = sub_1B78018E8();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_1B76B59D4(i, *(v7 + 48) + v20 * v18, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1B76B38E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1B78022F8();
      sub_1B7802328();
      v20 = sub_1B7802368();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
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
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1B76B3B28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990348, &qword_1B780C258);
  v4 = sub_1B7801A08();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v39 = v1;
    v40 = (v3 + 56);
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
    v11 = v4 + 56;
    v41 = v3;
    v42 = v4;
    while (1)
    {
      if (!v9)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v6 >= v10)
          {
            break;
          }

          v16 = v40[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v43 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v36 = 1 << *(v3 + 32);
        if (v36 >= 64)
        {
          v37 = v5;
          bzero(v40, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          v5 = v37;
        }

        else
        {
          *v40 = -1 << v36;
        }

        v2 = v39;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v43 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 88 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v47 = *(v17 + 64);
      v48 = *(v17 + 56);
      v45 = *(v17 + 48);
      v46 = *(v17 + 72);
      v24 = *(v17 + 80);
      sub_1B78022F8();
      v44 = v19;
      v25 = v20;
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x1B8CA6620](1);
          v26 = v45;
          goto LABEL_21;
        }

        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1B8CA6620](v27);
      v26 = v45;
      sub_1B7800798();
LABEL_21:
      sub_1B7800798();
      v28 = sub_1B7802368();
      v5 = v42;
      v29 = -1 << *(v42 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v11 + 8 * v31);
          if (v35 != -1)
          {
            v12 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v42 + 48) + 88 * v12;
      *v13 = v18;
      *(v13 + 8) = v44;
      *(v13 + 16) = v25;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      *(v13 + 40) = v23;
      *(v13 + 48) = v26;
      *(v13 + 56) = v48;
      *(v13 + 64) = v47;
      *(v13 + 72) = v46;
      *(v13 + 80) = v24;
      ++*(v42 + 16);
      v3 = v41;
      v9 = v43;
    }
  }

  v38 = v5;

  *v2 = v38;
}

void sub_1B76B3E78(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990200, &unk_1B780C110);
  v7 = sub_1B7801A08();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_1B76B59D4(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for MapsSuggestionsOrderPickup);
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      v22 = sub_1B7802368();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1B76B59D4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for MapsSuggestionsOrderPickup);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1B76B41A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B77FF4F8();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990318, &qword_1B780C218);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1B76B5A3C(&qword_1EB98FF98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1B7800758();
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1B76B453C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990298, &unk_1B7859B60);
  v4 = sub_1B7801A08();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v2;
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
    v12 = v4 + 56;
    v37 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 80 * (v17 | (v6 << 6));
      v21 = *v20;
      *v45 = *(v20 + 1);
      *&v45[3] = *(v20 + 4);
      v23 = *(v20 + 8);
      v22 = *(v20 + 16);
      v24 = *(v20 + 32);
      v25 = *(v20 + 40);
      *v44 = *(v20 + 41);
      *&v44[3] = *(v20 + 44);
      v40 = *(v20 + 48);
      v41 = *(v20 + 24);
      v43 = *(v20 + 56);
      v39 = *(v20 + 64);
      v42 = *(v20 + 72);
      sub_1B78022F8();
      sub_1B7802328();
      sub_1B7802318();
      if (v22)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v24)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      sub_1B7802318();
      if (v43)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v42)
      {
        sub_1B7800798();
      }

      v26 = sub_1B7802368();
      v5 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v15 = v42;
        v14 = v43;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v15 = v42;
      v14 = v43;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v37 + 48) + 80 * v13;
      *v16 = v21;
      *(v16 + 1) = *v45;
      *(v16 + 4) = *&v45[3];
      v10 = v38;
      *(v16 + 8) = v23;
      *(v16 + 16) = v22;
      *(v16 + 24) = v41;
      *(v16 + 32) = v24;
      *(v16 + 40) = v25;
      *(v16 + 41) = *v44;
      *(v16 + 44) = *&v44[3];
      *(v16 + 48) = v40;
      *(v16 + 56) = v14;
      *(v16 + 64) = v39;
      *(v16 + 72) = v15;
      ++*(v37 + 16);
      v3 = v36;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B76B499C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1B7801A08();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1B7801548();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1B76B4BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990220, &unk_1B7859B30);
  v4 = sub_1B7801A08();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v17);
      v18 = sub_1B7802368();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B76B4E0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1B723A660(a1, a2, v22, v19);
        return;
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
      goto LABEL_16;
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
}

void sub_1B76B4F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1B723AA8C(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
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
}

void *sub_1B76B50EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1B76B4F80(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B76B51A8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CA5C90](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_1B7801938() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B7801948();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1B7801548();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1B7801558();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

void sub_1B76B5414(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CA5C90](a1, a2, v11);
      sub_1B7205540(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B7205540(0, a5, a6);
    if (sub_1B7801938() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B7801948();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1B7801548();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1B7801558();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1B76B5640(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

double sub_1B76B5694(double result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1B7801958();

    if (!v3)
    {
      return v4;
    }
  }

  else if (!*(v2 + 16))
  {
    return v4;
  }

  v32 = *(v1 + 24);
  v5 = [v32 fetchedObjects];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ManagedInternalTransaction();
    v7 = sub_1B7800C38();

    if (v7 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      sub_1B7205540(0, &qword_1EB98F930, 0x1E695D630);
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v30 = v7 + 32;
      v31 = v7 & 0xFFFFFFFFFFFFFF8;
      v28 = v7;
      v29 = v1;
      v26 = v7 & 0xC000000000000001;
      v27 = i;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x1B8CA5DC0](v9, v7);
        }

        else
        {
          if (v9 >= *(v31 + 16))
          {
            goto LABEL_32;
          }

          v11 = *(v30 + 8 * v9);
        }

        v12 = v11;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        v14 = *(v1 + 16);

        v15 = [v12 publicTransactionObject];
        v16 = [v15 objectID];

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = v16;
          v18 = sub_1B7801998();

          if (v18)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (*(v14 + 16))
          {
            v20 = sub_1B7801548();
            v21 = -1 << *(v14 + 32);
            v22 = v20 & ~v21;
            if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = *(*(v14 + 48) + 8 * v22);
                v25 = sub_1B7801558();

                if (v25)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              v7 = v28;
              v1 = v29;
              v10 = v26;
              i = v27;
LABEL_18:
              v19 = [v32 managedObjectContext];
              [v19 refreshObject:v12 mergeChanges:1];

              v12 = v19;
              goto LABEL_10;
            }
          }

LABEL_9:

          v7 = v28;
          v1 = v29;
          v10 = v26;
          i = v27;
        }

LABEL_10:

        if (v9 == i)
        {

          *(v1 + 16) = MEMORY[0x1E69E7CD0];
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_28:
  }

  return v4;
}

uint64_t sub_1B76B59D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76B5A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BankConnectCloudKitActivityVoucherManaging.__allocating_init(coreDataStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall BankConnectCloudKitActivityVoucherManaging.applyImportVoucher(forConsentID:)(Swift::String forConsentID)
{
  v2 = v1;
  object = forConsentID._object;
  countAndFlagsBits = forConsentID._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v51 - v6;
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1B7800838();
  v10 = [v8 initWithEntityName_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B721FF04();
  *(v11 + 32) = countAndFlagsBits;
  *(v11 + 40) = object;

  v12 = sub_1B78010E8();
  [v10 setPredicate_];

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1B7801A78();

  v60 = 0x2F65636E616E6966;
  v61 = 0xEF2F74726F706D69;
  MEMORY[0x1B8CA4D30](countAndFlagsBits, object);
  v14 = v60;
  v13 = v61;
  sub_1B76B6B6C();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x1E695D670]);
  v18 = v10;
  v19 = sub_1B7800838();
  v53 = [v17 initWithLabel:v19 forEventsOfType:1 withConfiguration:v16 affectingObjectsMatching:v18];

  v20 = *(v2 + 16);
  v21 = [*(v20 + 16) persistentStoreCoordinator];
  v22 = [v21 persistentStores];

  v51[1] = sub_1B7205540(0, &qword_1EDAFC540, 0x1E695D6B8);
  v23 = sub_1B7800C38();

  v57 = v7;
  v58 = v2;
  v55 = v13;
  v56 = v18;
  v54 = v14;
  v52 = v20;
  if (v23 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v25 = 0;
    v59 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v59)
      {
        v26 = MEMORY[0x1B8CA5DC0](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v26 configurationName];
      v30 = sub_1B7800868();
      v32 = v31;

      if (v30 == 0x64756F6C43 && v32 == 0xE500000000000000)
      {

LABEL_17:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1B780B190;
        *(v35 + 32) = v27;
        v36 = *(v52 + 16);
        v37 = sub_1B7800C18();

        goto LABEL_22;
      }

      v34 = sub_1B78020F8();

      if (v34)
      {
        goto LABEL_17;
      }

      ++v25;
      if (v28 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v36 = *(v52 + 16);
  v37 = 0;
LABEL_22:
  v39 = v57;
  v38 = v58;
  v41 = v54;
  v40 = v55;
  v42 = v53;
  [v36 applyActivityVoucher:v53 toStores:v37];

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v43 = sub_1B78000B8();
  __swift_project_value_buffer(v43, qword_1EDAFAF58);

  v44 = sub_1B7800098();
  v45 = sub_1B78011F8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1B71A3EF8(v41, v40, &v60);
    _os_log_impl(&dword_1B7198000, v44, v45, "Applied CloudKit activity voucher for '%s'.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1B8CA7A40](v47, -1, -1);
    MEMORY[0x1B8CA7A40](v46, -1, -1);
  }

  v48 = sub_1B7800DF8();
  (*(*(v48 - 8) + 56))(v39, 1, 1, v48);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v38;
  v49[5] = v42;
  v49[6] = v41;
  v49[7] = v40;

  v50 = v42;
  sub_1B76A1F9C(0, 0, v39, &unk_1B7859BD0, v49);
}

uint64_t sub_1B76B6108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1B7801C28();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76B61CC, 0, 0);
}

uint64_t sub_1B76B61CC()
{
  sub_1B78021F8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B76B6298;

  return sub_1B76B66B4(0x2AB486CEDC00000, 13, 0, 0, 1);
}

uint64_t sub_1B76B6298()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1B726E850;
  }

  else
  {
    v5 = sub_1B76B6408;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B76B6408()
{
  v11 = v0;
  [*(*(v0[2] + 16) + 16) expireActivityVoucher_];
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAFAF58);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v10);
    _os_log_impl(&dword_1B7198000, v2, v3, "Expired CloudKit activity voucher for '%s'.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

void sub_1B76B65B0(void **a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695BA00]) init];
  v3 = *a1;
  *a1 = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setQualityOfService_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t BankConnectCloudKitActivityVoucherManaging.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B76B66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B7801C18();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B76B67B4, 0, 0);
}

uint64_t sub_1B76B67B4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B7801C28();
  v5 = sub_1B76B6EE4(&unk_1EB99EE50, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B78021D8();
  sub_1B76B6EE4(&qword_1EB99B320, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B7801C38();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B76B6944;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1B76B6944()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B76B6B00, 0, 0);
}

uint64_t sub_1B76B6B00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B76B6B6C()
{
  v0 = sub_1B78003A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  sub_1B7205540(0, &qword_1EDAFC530, 0x1E69E9610);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1B7801368();
  (*(v1 + 8))(v3, v0);
  v5 = swift_allocObject();
  *(v5 + 16) = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B76B6F2C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1B720493C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B737BA64;
  aBlock[3] = &block_descriptor_21;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (v10)
  {

    return;
  }

  __break(1u);
}

uint64_t sub_1B76B6DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7201BB0;

  return sub_1B76B6108(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B76B6EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double block_destroy_helper_21(uint64_t a1)
{

  return result;
}

{

  return result;
}

uint64_t FraudAssessmentResult.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FraudAssessmentResult.data.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FraudAssessmentResult.init(data:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static FraudAssessmentResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(a1 + 16) == *(a2 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t FraudAssessmentResult.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

void sub_1B76B709C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B76B7124(uint64_t a1)
{
  v2 = sub_1B76B7324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B7160(uint64_t a1)
{
  v2 = sub_1B76B7324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FraudAssessmentResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FraudAssessmentResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B328, &qword_1B7859C80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B76B7324()
{
  result = qword_1EB99B330;
  if (!qword_1EB99B330)
  {
    result = swift_getWitnessTable(aM_23, &type metadata for FraudAssessmentResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B330);
  }

  return result;
}

uint64_t FraudAssessmentResult.hashValue.getter()
{
  sub_1B78022F8();
  if (*(v0 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

uint64_t FraudAssessmentResult.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FraudAssessmentResult.init(from:)(a1);
  return v2;
}

void *FraudAssessmentResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B338, &qword_1B7859C88);
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023C8();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v14;
    v10 = sub_1B7801D78();
    v12 = v11;
    (*(v8 + 8))(v7, v5);
    *(v3 + 16) = v10;
    *(v3 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_1B76B75F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FraudAssessmentResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B76B7650(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B328, &qword_1B7859C80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B76B7788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B76B77D4()
{
  v1 = *v0;
  sub_1B78022F8();
  if (*(v1 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

uint64_t sub_1B76B7850(uint64_t a1)
{
  if (!*(*v1 + 24))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t sub_1B76B78CC(uint64_t a1)
{
  v2 = *v1;
  sub_1B78022F8();
  if (*(v2 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

unint64_t sub_1B76B7948()
{
  result = qword_1EB99B340;
  if (!qword_1EB99B340)
  {
    v3 = type metadata accessor for FraudAssessmentResult();
    result = swift_getWitnessTable(protocol conformance descriptor for FraudAssessmentResult, v3, v0, v1);
    atomic_store(result, &qword_1EB99B340);
  }

  return result;
}

unint64_t sub_1B76B7A28()
{
  result = qword_1EB99B348;
  if (!qword_1EB99B348)
  {
    result = swift_getWitnessTable(asc_1B7859E24, &type metadata for FraudAssessmentResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B348);
  }

  return result;
}

unint64_t sub_1B76B7A80()
{
  result = qword_1EB99B350;
  if (!qword_1EB99B350)
  {
    result = swift_getWitnessTable(asc_1B7859D94, &type metadata for FraudAssessmentResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B350);
  }

  return result;
}

unint64_t sub_1B76B7AD8()
{
  result = qword_1EB99B358;
  if (!qword_1EB99B358)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for FraudAssessmentResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B358);
  }

  return result;
}

void sub_1B76B7B2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 value];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void RawOrderPayment.init(_:)(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for RawOrderPaymentTransaction(0);
  v96 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v8 = [a1 primitiveStatusValue];
  v9 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v90 = a2;
  if (!v8)
  {
    v89 = 6;
LABEL_5:
    v10 = [a1 totalAmount];
    [v10 decimalValue];
    v11 = v105;
    v12 = v104;

    v13 = [a1 totalCurrencyCode];
    v14 = sub_1B7800868();
    v91 = a1;
    v15 = v14;
    v17 = v16;

    v18 = v11;
    v19 = v91;
    CurrencyAmount.init(_:currencyCode:)(v12, *(&v12 + 1), v18, v15, v17, &v104);
    *&v107[7] = v104;
    *&v107[23] = v105;
    *&v107[39] = v106;
    v20 = ManagedOrderPayment.summaryItems.getter();
    if (v20 >> 62)
    {
      v74 = v20;
      v75 = sub_1B7801958();
      v76 = v74;
      v21 = v75;
      v20 = v76;
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v98 = v6;
    v22 = &off_1E7CAF000;
    if (v21)
    {
      v23 = v20;
      v103 = MEMORY[0x1E69E7CC0];
      sub_1B71FE7C0(0, v21 & ~(v21 >> 63), 0);
      if ((v21 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v26 = v103;
        v27 = v23;
        v94 = v23 & 0xC000000000000001;
        v93 = v21 - 1;
        *&v24 = 136315138;
        v92 = v24;
        for (i = v23; ; v27 = i)
        {
          if (v94)
          {
            v28 = MEMORY[0x1B8CA5DC0](v25, v27);
          }

          else
          {
            v28 = *(v27 + 8 * v25 + 32);
          }

          v29 = v28;
          v30 = [v28 label];
          v31 = sub_1B77FFA48();
          v32 = *&v30[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
          if (*(v32 + 16))
          {
            v33 = sub_1B741EBC0(v31);
            if (v33[2] && (v34 = v33[4], v35 = v33[5], , , *(v32 + 16)))
            {
              v36 = sub_1B724548C(v34, v35);
              v38 = v37;

              if (v38)
              {
                v39 = (*(v32 + 56) + 16 * v36);
                goto LABEL_20;
              }
            }

            else
            {
            }
          }

          v39 = &v30[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
LABEL_20:
          v40 = *(v39 + 1);
          v97 = *v39;

          v41 = [v29 valueAmount];
          [v41 v22[104]];

          v42 = [v29 valueCurrencyCode];
          v43 = sub_1B7800868();
          v45 = v44;

          if (sub_1B78009A8() == 3)
          {
          }

          else
          {
            if (qword_1EDAFAF50 != -1)
            {
              swift_once();
            }

            v46 = sub_1B78000B8();
            __swift_project_value_buffer(v46, qword_1EDAFAF58);

            v47 = sub_1B7800098();
            v48 = sub_1B78011D8();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = v26;
              v51 = swift_slowAlloc();
              *&v99 = v51;
              *v49 = v92;
              *(v49 + 4) = sub_1B71A3EF8(v43, v45, &v99);
              _os_log_impl(&dword_1B7198000, v47, v48, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v51);
              v52 = v51;
              v26 = v50;
              v22 = &off_1E7CAF000;
              MEMORY[0x1B8CA7A40](v52, -1, -1);
              MEMORY[0x1B8CA7A40](v49, -1, -1);
            }
          }

          LODWORD(v100) = v102;
          v99 = v101;
          v103 = v26;
          v54 = *(v26 + 16);
          v53 = *(v26 + 24);
          v6 = v98;
          if (v54 >= v53 >> 1)
          {
            sub_1B71FE7C0((v53 > 1), v54 + 1, 1);
            v26 = v103;
          }

          *(v26 + 16) = v54 + 1;
          v55 = v26 + 56 * v54;
          *(v55 + 32) = v97;
          *(v55 + 40) = v40;
          v56 = v100;
          *(v55 + 48) = v99;
          *(v55 + 64) = v56;
          *(v55 + 72) = v43;
          *(v55 + 80) = v45;
          if (v93 == v25)
          {

            v19 = v91;
            goto LABEL_33;
          }

          ++v25;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v57 = [v19 paymentMethods];
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v59 = v57;
      i = sub_1B7800C38();
    }

    else
    {
      i = MEMORY[0x1E69E7CC0];
    }

    v60 = ManagedOrderPayment.applePayTransactionIdentifiers.getter();
    v61 = v60;
    if (v60 >> 62)
    {
      v62 = sub_1B7801958();
      v97 = v26;
      if (v62)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v26;
      if (v62)
      {
LABEL_38:
        *&v99 = v58;
        sub_1B71FDB50(0, v62 & ~(v62 >> 63), 0);
        if (v62 < 0)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v63 = 0;
        v64 = v99;
        do
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x1B8CA5DC0](v63, v61);
          }

          else
          {
            v65 = *(v61 + 8 * v63 + 32);
          }

          v66 = v65;
          v67 = [v66 value];
          v68 = sub_1B7800868();
          v70 = v69;

          *&v99 = v64;
          v72 = *(v64 + 16);
          v71 = *(v64 + 24);
          if (v72 >= v71 >> 1)
          {
            sub_1B71FDB50((v71 > 1), v72 + 1, 1);
            v64 = v99;
          }

          ++v63;
          *(v64 + 16) = v72 + 1;
          v73 = v64 + 16 * v72;
          *(v73 + 32) = v68;
          *(v73 + 40) = v70;
          v6 = v98;
        }

        while (v62 != v63);

        v19 = v91;
        v58 = MEMORY[0x1E69E7CC0];
LABEL_50:
        v77 = ManagedOrderPayment.transactions.getter();
        v78 = v77;
        if (v77 >> 62)
        {
          v79 = sub_1B7801958();
          if (v79)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v79 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v79)
          {
LABEL_52:
            *&v99 = v58;
            sub_1B71FE77C(0, v79 & ~(v79 >> 63), 0);
            if (v79 < 0)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v80 = 0;
            v81 = v99;
            do
            {
              if ((v78 & 0xC000000000000001) != 0)
              {
                v82 = MEMORY[0x1B8CA5DC0](v80, v78);
              }

              else
              {
                v82 = *(v78 + 8 * v80 + 32);
              }

              RawOrderPaymentTransaction.init(_:)(v82, v6);
              *&v99 = v81;
              v84 = *(v81 + 16);
              v83 = *(v81 + 24);
              if (v84 >= v83 >> 1)
              {
                sub_1B71FE77C((v83 > 1), v84 + 1, 1);
                v81 = v99;
              }

              ++v80;
              *(v81 + 16) = v84 + 1;
              sub_1B74C27F8(v6, v81 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v84);
            }

            while (v79 != v80);

LABEL_63:
            v85 = v90;
            *v90 = v89;
            v86 = *&v107[16];
            *(v85 + 1) = *v107;
            *(v85 + 17) = v86;
            *(v85 + 2) = *&v107[31];
            v87 = i;
            *(v85 + 6) = v97;
            *(v85 + 7) = v87;
            *(v85 + 8) = v64;
            *(v85 + 9) = v81;
            return;
          }
        }

        v81 = MEMORY[0x1E69E7CC0];
        goto LABEL_63;
      }
    }

    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  ManagedOrderPaymentStatus.init(rawValue:)([v8 shortValue]);
  if (v104 != 6)
  {
    v89 = v104;

    goto LABEL_5;
  }

LABEL_67:
  __break(1u);
}

FinanceKit::RawOrderPaymentStatus_optional __swiftcall RawOrderPaymentStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E75666572;
  v4 = 0x64656E696C636564;
  if (v1 != 4)
  {
    v4 = 0x646564696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7A69726F68747561;
  if (v1 != 1)
  {
    v5 = 1684627824;
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

double sub_1B76B85BC(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

void sub_1B76B86B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0xE800000000000000;
  v6 = 0x6465646E75666572;
  v7 = 0xE800000000000000;
  v8 = 0x64656E696C636564;
  if (v2 != 4)
  {
    v8 = 0x646564696F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006465;
  v10 = 0x7A69726F68747561;
  if (v2 != 1)
  {
    v10 = 1684627824;
    v9 = 0xE400000000000000;
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

uint64_t RawOrderPayment.total.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v2;
  v7 = *(v1 + 40);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPayment.total.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7 = *(v1 + 40);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

__n128 RawOrderPayment.init(status:total:summaryItems:paymentMethods:applePayTransactionIdentifiers:transactions:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a2;
  v8 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *a7 = *a1;
  *(a7 + 24) = v8;
  *(a7 + 40) = *(a2 + 32);
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

FinanceKit::RawOrderPayment::CodingKeys_optional __swiftcall RawOrderPayment.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x737574617473 && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6C61746F74 && object == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x497972616D6D7573 && object == 0xEC000000736D6574 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x4D746E656D796170 && object == 0xEE0073646F687465 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0xD00000000000001ELL && 0x80000001B788A7C0 == object || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x746361736E617274 && object == 0xEC000000736E6F69)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t RawOrderPayment.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t RawOrderPayment.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x4D746E656D796170;
  v4 = 0xD00000000000001ELL;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61746F74;
  if (v1 != 1)
  {
    v5 = 0x497972616D6D7573;
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

uint64_t sub_1B76B8E64()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x4D746E656D796170;
  v4 = 0xD00000000000001ELL;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61746F74;
  if (v1 != 1)
  {
    v5 = 0x497972616D6D7573;
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

uint64_t sub_1B76B8F3C(uint64_t a1)
{
  v2 = sub_1B76BA5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B8F78(uint64_t a1)
{
  v2 = sub_1B76BA5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RawOrderPayment.init(from:configuration:)(void *a1@<X0>, __int16 *a2@<X1>, _OWORD *a3@<X8>)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B360, &qword_1B7859EA0);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BA5AC();
  sub_1B78023C8();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v8;
    v11 = v6;
    v12 = v47;
    v13 = v31;
    if (v9 > 1)
    {
      v29 = 6;
      v30 = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69E7CC0];
      v17 = a1;
      v18 = v11;
      v15 = v10;
    }

    else
    {
      LOBYTE(v32[0]) = 0;
      sub_1B76BA714();
      v14 = v11;
      v15 = v10;
      sub_1B7801E48();
      v29 = v35[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
      LOBYTE(v32[0]) = 3;
      sub_1B721523C(&qword_1EDAF64A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1B7801DB8();
      v20 = *v35;
      if (!*v35)
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      v28 = v20;
      LOBYTE(v32[0]) = 4;
      sub_1B7801DB8();
      v27 = *v35;
      if (!*v35)
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v30 = v27;
      v17 = a1;
      v18 = v14;
      v16 = v28;
    }

    v42 = 1;
    v41 = 1;
    sub_1B75276F4();
    sub_1B7801D58();
    v28 = v16;
    *&v46[7] = v43;
    *&v46[23] = v44;
    *&v46[39] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B370, &qword_1B7859EA8);
    LOBYTE(v32[0]) = 2;
    sub_1B76BA768(&qword_1EB99B378, sub_1B76BA600, MEMORY[0x1E69E6330]);
    sub_1B7801DB8();
    v19 = *v35;
    if (!*v35)
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v31 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B388, &unk_1B7859EB0);
    LOBYTE(v32[0]) = 5;
    sub_1B76BA654(&qword_1EB99B390, &qword_1EB99B398, protocol conformance descriptor for RawOrderPaymentTransaction, MEMORY[0x1E69E6330]);
    sub_1B7801DB8();
    if (*v35)
    {
      v21 = *v35;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    (*(v13 + 8))(v15, v18);
    v22 = v29;
    LOBYTE(v32[0]) = v29;
    *(&v32[1] + 1) = *&v46[16];
    *(v32 + 1) = *v46;
    v32[2] = *&v46[31];
    v23 = v30;
    v24 = v28;
    *&v33 = v31;
    *(&v33 + 1) = v28;
    *&v34 = v30;
    *(&v34 + 1) = v21;
    v25 = v34;
    v12[3] = v33;
    v12[4] = v25;
    v26 = v32[2];
    v12[1] = v32[1];
    v12[2] = v26;
    *v12 = v32[0];
    sub_1B76BA6DC(v32, v35);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v35[0] = v22;
    *&v35[1] = *v46;
    *v36 = *&v46[16];
    *&v36[15] = *&v46[31];
    v37 = v31;
    v38 = v24;
    v39 = v23;
    v40 = v21;
    sub_1B74C2740(v35);
  }
}

uint64_t RawOrderPayment.encode(to:configuration:)(void *a1, __int16 *a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3A8, &qword_1B7859EC0);
  v40 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - v6;
  v8 = *a2;
  v9 = *v2;
  v10 = *(v2 + 24);
  v37 = *(v2 + 8);
  v38 = v10;
  v11 = *(v2 + 5);
  v25 = *(v2 + 6);
  v39 = v11;
  v12 = *(v2 + 8);
  v23 = *(v2 + 7);
  v22 = v12;
  v24 = *(v2 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1B76BA5AC();
  v26 = v7;
  sub_1B78023F8();
  if (v8 > 1)
  {
    v19 = v27;
    v20 = v26;
    v21 = v3;
LABEL_5:
    v34 = v37;
    v35 = v38;
    v36 = v39;
    v33 = 1;
    sub_1B7215720(&v37, &v30);
    sub_1B7215044();
    sub_1B7801FC8();
    if (v21)
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      sub_1B721722C(&v30);
    }

    else
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      sub_1B721722C(&v30);
      if (*(v25 + 16))
      {
        v29 = v25;
        v28 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B370, &qword_1B7859EA8);
        sub_1B76BA768(&qword_1EB99B3B0, sub_1B76BA7E0, MEMORY[0x1E69E6300]);
        sub_1B7801FC8();
      }

      if (*(v24 + 16))
      {
        v29 = v24;
        v28 = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B388, &unk_1B7859EB0);
        sub_1B76BA654(&qword_1EB99B3C0, &qword_1EB99B3C8, protocol conformance descriptor for RawOrderPaymentTransaction, MEMORY[0x1E69E6300]);
        sub_1B7801FC8();
      }
    }

    return (*(v40 + 8))(v20, v19);
  }

  if (v9 == 6)
  {
    v14 = sub_1B7801B38();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3D0, &qword_1B7859EC8);
    *(v16 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3D8, &qword_1B7859ED0);
    *v16 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3E0, &qword_1B7859ED8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    *(v17 + 56) = &type metadata for RawOrderPayment.CodingKeys;
    *(v17 + 64) = v13;
    *(v17 + 32) = 0;
    sub_1B7801AE8();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v14);
    swift_willThrow();
    return (*(v40 + 8))(v26, v27);
  }

  LOBYTE(v34) = v9;
  LOBYTE(v30) = 0;
  sub_1B76BA878();
  v19 = v27;
  v20 = v26;
  sub_1B7801FC8();
  v21 = v3;
  if (!v3)
  {
    if (*(v23 + 16))
    {
      *&v34 = v23;
      LOBYTE(v30) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
      sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1B7801FC8();
    }

    if (*(v22 + 16))
    {
      *&v34 = v22;
      LOBYTE(v30) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
      sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      sub_1B7801FC8();
    }

    goto LABEL_5;
  }

  return (*(v40 + 8))(v20, v19);
}

uint64_t RawOrderPaymentSummaryItem.label.getter()
{
  v1 = *v0;

  return v1;
}

void RawOrderPaymentSummaryItem.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawOrderPaymentSummaryItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v2;
  v7 = *(v1 + 48);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPaymentSummaryItem.value.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v7 = *(v1 + 48);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 RawOrderPaymentSummaryItem.init(label:value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1B76B9CB4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65756C6176;
  }

  else
  {
    v2 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B76B9D34()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B76B9DA4(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B76B9DF8(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B76B9E64(char *a2@<X8>)
{
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B76B9EC4(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1B76B9EF4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

void sub_1B76B9F20(char *a3@<X8>)
{
  v4 = sub_1B7801D18();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1B76B9F84(uint64_t a1)
{
  v2 = sub_1B76BAA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B9FC0(uint64_t a1)
{
  v2 = sub_1B76BAA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RawOrderPaymentSummaryItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3F0, &qword_1B7859EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BAA88();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v12 = v9;
    v29 = 1;
    v28 = 1;
    sub_1B75276F4();
    sub_1B7801D58();
    (*(v6 + 8))(v8, v5);
    v13 = v22;
    v14 = v23;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    *&v16[0] = v12;
    *(&v16[0] + 1) = v11;
    v16[1] = v22;
    v16[2] = v23;
    v17 = v24;
    *(a2 + 48) = v24;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *a2 = v16[0];
    sub_1B73262A0(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v18[0] = v12;
    v18[1] = v11;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    sub_1B73262FC(v18);
  }
}

uint64_t RawOrderPaymentSummaryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B400, &qword_1B7859EE8);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *(v1 + 32);
  v17 = *(v1 + 16);
  v18 = v7;
  v19 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BAA88();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B7801F78();
  if (v2)
  {
    return (*(v11 + 8))(v6, v4);
  }

  v14 = v17;
  v15 = v18;
  v16 = v19;
  v20 = 1;
  sub_1B7215720(&v17, v12);
  sub_1B7215044();
  sub_1B7801FC8();
  v9 = (v11 + 8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_1B721722C(v12);
  return (*v9)(v6, v4);
}

double RawOrderPaymentSummaryItem.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = sub_1B77FFA48();
  v6 = sub_1B741F7D4(v5);
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = [a1 valueAmount];
  [v9 decimalValue];
  v10 = v19;
  v11 = v18;

  v12 = [a1 valueCurrencyCode];
  v13 = sub_1B7800868();
  v15 = v14;

  CurrencyAmount.init(_:currencyCode:)(v11, *(&v11 + 1), v10, v13, v15, &v18);
  result = *&v18;
  v17 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_1B76BA5AC()
{
  result = qword_1EB99B368;
  if (!qword_1EB99B368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment.CodingKeys, &type metadata for RawOrderPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B368);
  }

  return result;
}

unint64_t sub_1B76BA600()
{
  result = qword_1EB99B380;
  if (!qword_1EB99B380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentSummaryItem, &type metadata for RawOrderPaymentSummaryItem, v0, v1);
    atomic_store(result, &qword_1EB99B380);
  }

  return result;
}

uint64_t sub_1B76BA654(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B388, &unk_1B7859EB0);
    v10 = sub_1B76BA834(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA714()
{
  result = qword_1EB99B3A0;
  if (!qword_1EB99B3A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentStatus, &type metadata for RawOrderPaymentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B3A0);
  }

  return result;
}

uint64_t sub_1B76BA768(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B370, &qword_1B7859EA8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA7E0()
{
  result = qword_1EB99B3B8;
  if (!qword_1EB99B3B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentSummaryItem, &type metadata for RawOrderPaymentSummaryItem, v0, v1);
    atomic_store(result, &qword_1EB99B3B8);
  }

  return result;
}

uint64_t sub_1B76BA834(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RawOrderPaymentTransaction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA878()
{
  result = qword_1EB99B3E8;
  if (!qword_1EB99B3E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentStatus, &type metadata for RawOrderPaymentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B3E8);
  }

  return result;
}

uint64_t _s10FinanceKit15RawOrderPaymentV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v25 = *(a1 + 8);
  v26[0] = v5;
  v6 = *(a1 + 6);
  *&v26[1] = *(a1 + 5);
  v8 = *(a1 + 7);
  v7 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *a2;
  v11 = *(a2 + 24);
  v27 = *(a2 + 8);
  v28[0] = v11;
  v12 = *(a2 + 6);
  *&v28[1] = *(a2 + 5);
  v14 = *(a2 + 7);
  v13 = *(a2 + 8);
  v15 = *(a2 + 9);
  if (v4 == 6)
  {
    if (v10 != 6)
    {
      goto LABEL_16;
    }
  }

  else if (v10 == 6 || (sub_1B72C2AEC(v4, v10) & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v9;
  v16 = LODWORD(v26[0]);
  v17 = LODWORD(v28[0]);
  v18 = v25;
  v19 = v27;
  sub_1B7215720(&v25, v24);
  sub_1B7215720(&v27, v24);
  if ((MEMORY[0x1B8CA5970](v18, *(&v18 + 1), v16, v19, *(&v19 + 1), v17) & 1) == 0)
  {
    sub_1B721722C(&v27);
    sub_1B721722C(&v25);
    goto LABEL_16;
  }

  if (*(&v26[0] + 1) != *(&v28[0] + 1) || *&v26[1] != *&v28[1])
  {
    v20 = sub_1B78020F8();
    sub_1B721722C(&v27);
    sub_1B721722C(&v25);
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  sub_1B721722C(&v27);
  sub_1B721722C(&v25);
LABEL_12:
  if ((sub_1B7320798(v6, v12) & 1) == 0 || (sub_1B731D168(v8, v14) & 1) == 0 || (sub_1B731D168(v7, v13) & 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = sub_1B73209E8(v23, v15);
  return v21 & 1;
}

unint64_t sub_1B76BAA88()
{
  result = qword_1EB99B3F8;
  if (!qword_1EB99B3F8)
  {
    result = swift_getWitnessTable(byte_1B785A3FC, &type metadata for RawOrderPaymentSummaryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B3F8);
  }

  return result;
}

unint64_t sub_1B76BAAE0()
{
  result = qword_1EB99B408;
  if (!qword_1EB99B408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentStatus, &type metadata for RawOrderPaymentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B408);
  }

  return result;
}

unint64_t sub_1B76BAB38()
{
  result = qword_1EB99B410;
  if (!qword_1EB99B410)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B418, &qword_1B7859FE0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB99B410);
  }

  return result;
}

unint64_t sub_1B76BABA0()
{
  result = qword_1EB99B420;
  if (!qword_1EB99B420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment.CodingKeys, &type metadata for RawOrderPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B420);
  }

  return result;
}

unint64_t sub_1B76BABF8()
{
  result = qword_1EB99B428;
  if (!qword_1EB99B428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment.CodingKeys, &type metadata for RawOrderPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B428);
  }

  return result;
}

unint64_t sub_1B76BAC50()
{
  result = qword_1EB99B430;
  if (!qword_1EB99B430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPayment.CodingKeys, &type metadata for RawOrderPayment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B430);
  }

  return result;
}

double destroy for RawOrderPayment(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for RawOrderPayment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RawOrderPayment(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1B76BB008()
{
  result = qword_1EB99B438;
  if (!qword_1EB99B438)
  {
    result = swift_getWitnessTable(aU_27, &type metadata for RawOrderPaymentSummaryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B438);
  }

  return result;
}

unint64_t sub_1B76BB060()
{
  result = qword_1EB99B440;
  if (!qword_1EB99B440)
  {
    result = swift_getWitnessTable(byte_1B785A30C, &type metadata for RawOrderPaymentSummaryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B440);
  }

  return result;
}

unint64_t sub_1B76BB0B8()
{
  result = qword_1EB99B448;
  if (!qword_1EB99B448)
  {
    result = swift_getWitnessTable(byte_1B785A334, &type metadata for RawOrderPaymentSummaryItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B448);
  }

  return result;
}

unint64_t sub_1B76BB10C()
{
  result = qword_1EB99B450;
  if (!qword_1EB99B450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentStatus, &type metadata for RawOrderPaymentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B450);
  }

  return result;
}

unint64_t TransactionStatus.init(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    *a2 = 3;
  }

  else
  {
    *a2 = asc_1B7882201[result];
  }

  return result;
}

uint64_t sub_1B76BB188(uint64_t a1)
{
  v2 = sub_1B76BC584(&qword_1EB99B4A8, protocol conformance descriptor for FinanceNetworkError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B76BB1E0(uint64_t a1)
{
  v2 = sub_1B76BC584(&qword_1EB99B4A8, protocol conformance descriptor for FinanceNetworkError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t FinanceNetworkError.errorCode.getter()
{
  v1 = type metadata accessor for FinanceNetworkError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76BB40C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v6 = sub_1B77FF988();
        (*(*(v6 - 8) + 8))(v3, v6);
        return 7;
      }

      else
      {
        return 3;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      sub_1B76BB470(v3);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 2;
    }

    else
    {
      sub_1B7205418(v3, &qword_1EB98EBD0, &unk_1B7809780);
      return 4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B76BB470(v3);
    return 1;
  }

  else
  {
    sub_1B76BB470(v3);
    return 0;
  }
}

uint64_t type metadata accessor for FinanceNetworkError(uint64_t a1)
{
  result = qword_1EB99B460;
  if (!qword_1EB99B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76BB40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceNetworkError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76BB470(uint64_t a1)
{
  v2 = type metadata accessor for FinanceNetworkError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FinanceNetworkError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - v10;
  v12 = type metadata accessor for FinanceNetworkError(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B76BB40C(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v16 = *v14;
      if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = sub_1B7800868();
        v18 = inited + 32;
        *(inited + 40) = v36;
        swift_getErrorValue();
        v20 = v42[14];
        v21 = v42[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = sub_1B7800868();
        v18 = inited + 32;
        *(inited + 40) = v19;
        swift_getErrorValue();
        v20 = v42[0];
        v21 = v42[1];
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v14;
      v30 = v14[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1B7808C50;
      *(v31 + 32) = 0x6465746365707865;
      *(v31 + 40) = 0xE800000000000000;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *(v31 + 48) = v29;
      *(v31 + 72) = MetatypeMetadata;
      *(v31 + 80) = 0x6C6175746361;
      *(v31 + 88) = 0xE600000000000000;
      *(v31 + 120) = swift_getMetatypeMetadata();
      *(v31 + 96) = v30;
      v25 = sub_1B72018E0(v31);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118, &qword_1B781A570);
      swift_arrayDestroy();
      return v25;
    }

    sub_1B7205340(v14, v11);
    sub_1B7280900(v11, v9);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      v25 = sub_1B72018E0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_1B7807CD0;
      *(v39 + 32) = 0x7466417972746572;
      *(v39 + 40) = 0xEA00000000007265;
      *(v39 + 72) = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 48));
      (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
      v25 = sub_1B72018E0(v39);
      swift_setDeallocating();
      sub_1B7205418(v39 + 32, &qword_1EB98F118, &qword_1B781A570);
      (*(v3 + 8))(v5, v2);
    }

    v26 = &qword_1EB98EBD0;
    v27 = &unk_1B7809780;
    v28 = v11;
LABEL_20:
    sub_1B7205418(v28, v26, v27);
    return v25;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v16 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7807CD0;
      *(inited + 32) = sub_1B7800868();
      v18 = inited + 32;
      *(inited + 40) = v37;
      swift_getErrorValue();
      v20 = v42[64];
      v21 = v42[65];
LABEL_14:
      *(inited + 72) = v21;
      v38 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
      (*(*(v21 - 8) + 16))(v38, v20, v21);
      v25 = sub_1B72018E0(inited);
      swift_setDeallocating();
      sub_1B7205418(v18, &qword_1EB98F118, &qword_1B781A570);

      return v25;
    }

    v22 = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1B7807CD0;
    *(v23 + 32) = 0x6F43737574617473;
    v24 = v23 + 32;
    *(v23 + 72) = MEMORY[0x1E69E6530];
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = v22;
    v25 = sub_1B72018E0(v23);
    swift_setDeallocating();
    v26 = &qword_1EB98F118;
    v27 = &qword_1B781A570;
    v28 = v24;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    return sub_1B72018E0(MEMORY[0x1E69E7CC0]);
  }

  v33 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90, &qword_1B781EC80) + 48));
  (*(v3 + 32))(v5, v14, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1B7808C50;
  *(v34 + 32) = 0xD000000000000013;
  *(v34 + 40) = 0x80000001B788A820;
  *(v34 + 72) = v2;
  v35 = __swift_allocate_boxed_opaque_existential_1((v34 + 48));
  (*(v3 + 16))(v35, v5, v2);
  *(v34 + 80) = 0xD000000000000012;
  *(v34 + 88) = 0x80000001B788A840;
  *(v34 + 120) = MEMORY[0x1E69E7290];
  *(v34 + 96) = v33;
  v25 = sub_1B72018E0(v34);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118, &qword_1B781A570);
  swift_arrayDestroy();
  (*(v3 + 8))(v5, v2);
  return v25;
}

unint64_t FinanceNetworkError.errorDescription.getter()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for FinanceNetworkError(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B76BB40C(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v15 = *v13;
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1B7801A78();

        v32 = 0xD000000000000024;
        v33 = 0x80000001B788A8B0;
        swift_getErrorValue();
LABEL_16:
        v24 = sub_1B7802228();
        MEMORY[0x1B8CA4D30](v24);

        return v32;
      }

      v16 = *v13;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();

      v32 = 0xD000000000000021;
      v33 = 0x80000001B788A8E0;
      v31 = v16;
      v17 = sub_1B7802068();
LABEL_11:
      MEMORY[0x1B8CA4D30](v17);

      return v32;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v19 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90, &qword_1B781EC80) + 48));
      (*(v2 + 32))(v4, v13, v1);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD00000000000002CLL, 0x80000001B788A860);
      v20 = sub_1B77FF958();
      MEMORY[0x1B8CA4D30](v20);

      MEMORY[0x1B8CA4D30](0xD00000000000001ELL, 0x80000001B788A890);
      LOWORD(v31) = v19;
      v21 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v21);

      v22 = v32;
      (*(v2 + 8))(v4, v1);
      return v22;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v15 = *v13;
      v32 = 0;
      v33 = 0xE000000000000000;
      if (EnumCaseMultiPayload)
      {
        sub_1B7801A78();

        v32 = 0xD000000000000026;
        v33 = 0x80000001B788A990;
      }

      else
      {
        sub_1B7801A78();

        v32 = 0xD00000000000002FLL;
        v33 = 0x80000001B788A9C0;
      }

      swift_getErrorValue();
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();

      v32 = 0xD000000000000020;
      v33 = 0x80000001B788A960;
      v18 = sub_1B7802438();
      MEMORY[0x1B8CA4D30](v18);

      MEMORY[0x1B8CA4D30](0x746F672074756220, 0xEA0000000000203ALL);
      v17 = sub_1B7802438();
      goto LABEL_11;
    }

    sub_1B7205340(v13, v10);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1B7801A78();

    v32 = 0xD000000000000020;
    v33 = 0x80000001B788A910;
    sub_1B7280900(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_1B7205418(v8, &qword_1EB98EBD0, &unk_1B7809780);
      v25 = 0xE400000000000000;
      v26 = 1701736302;
    }

    else
    {
      v27 = sub_1B77FF958();
      v25 = v28;
      (*(v2 + 8))(v8, v1);
      v26 = v27;
    }

    MEMORY[0x1B8CA4D30](v26, v25);

    v29 = v32;
    sub_1B7205418(v10, &qword_1EB98EBD0, &unk_1B7809780);
    return v29;
  }
}

FinanceKit::FinanceNetworkError::Code_optional __swiftcall FinanceNetworkError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B76BC274()
{
  result = qword_1EB99B458;
  if (!qword_1EB99B458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceNetworkError.Code, &type metadata for FinanceNetworkError.Code, v0, v1);
    atomic_store(result, &qword_1EB99B458);
  }

  return result;
}

void sub_1B76BC2C8(uint64_t a1)
{
  sub_1B76BC48C(319, &qword_1EB99B470, sub_1B76BC3B4);
  if (v1 <= 0x3F)
  {
    sub_1B76BC418(319);
    if (v2 <= 0x3F)
    {
      sub_1B76BC48C(319, &qword_1EB99B490, sub_1B72F2B80);
      if (v3 <= 0x3F)
      {
        sub_1B76BC4D8();
        if (v4 <= 0x3F)
        {
          sub_1B76BC508(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1B76BC3B4()
{
  result = qword_1EB99B478;
  if (!qword_1EB99B478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB99B478);
  }

  return result;
}

void sub_1B76BC418(uint64_t a1)
{
  if (!qword_1EB99B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B488, &qword_1B785A5D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB99B480);
    }
  }
}

void sub_1B76BC48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B76BC4D8()
{
  result = qword_1EB99B498;
  if (!qword_1EB99B498)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB99B498);
  }

  return result;
}

void sub_1B76BC508(uint64_t a1)
{
  if (!qword_1EB99B4A0)
  {
    sub_1B77FF988();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB99B4A0);
    }
  }
}

uint64_t sub_1B76BC584(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for FinanceNetworkError(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.pickupWindow.getter@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Duration(0);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawOrderPickupFulfillment(0);
  sub_1B7205588(v1 + *(v14 + 48), v9, &qword_1EB98EBD0, &unk_1B7809780);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0, &unk_1B7809780);
    v15 = type metadata accessor for Order.FulfillmentWindow(0);
    return (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v13, v9, v10);
    sub_1B7205588(v1 + *(v14 + 52), v4, &qword_1EB995FF0, &unk_1B78347D0);
    if ((*(v23 + 48))(v4, 1, v24) == 1)
    {
      sub_1B7205418(v4, &qword_1EB995FF0, &unk_1B78347D0);
      v18 = v25;
      v17(v25, v13, v10);
    }

    else
    {
      v20 = v22;
      sub_1B719AAB4(v4, v22, type metadata accessor for Duration);
      v18 = v25;
      v17(v25, v13, v10);
      v21 = type metadata accessor for TimeWindow(0);
      sub_1B719AAB4(v20, &v18[*(v21 + 20)], type metadata accessor for Duration);
    }

    v19 = type metadata accessor for Order.FulfillmentWindow(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }
}

uint64_t type metadata accessor for RawOrderPickupFulfillment(uint64_t a1)
{
  result = qword_1EDAF7BF8;
  if (!qword_1EDAF7BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.init(fulfillmentIdentifier:status:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 1;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 256;
  v11 = type metadata accessor for RawOrderPickupFulfillment(0);
  *(a6 + 224) = 0;
  *(a6 + 232) = 0;
  v12 = v11[12];
  v13 = sub_1B77FF988();
  v14 = *(*(v13 - 8) + 56);
  v14(a6 + v12, 1, 1, v13);
  v15 = v11[13];
  v16 = type metadata accessor for Duration(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  result = (v14)(a6 + v11[14], 1, 1, v13);
  v18 = (a6 + v11[15]);
  *v18 = a1;
  v18[1] = a2;
  *(a6 + 8) = v10;
  *(a6 + 240) = a4;
  *(a6 + 248) = a5;
  *a6 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t RawOrderPickupFulfillment.setPickupWindowDuration(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  sub_1B71B4438(a1, &v12 - v5, type metadata accessor for Duration);
  v7 = type metadata accessor for Duration(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for RawOrderPickupFulfillment(0);
  sub_1B76C111C(v6, v1 + *(v9 + 48));
  result = sub_1B7205418(v6, &qword_1EB995FF0, &unk_1B78347D0);
  if (!v2)
  {
    v11 = *(v9 + 52);
    sub_1B7205418(v1 + v11, &qword_1EB995FF0, &unk_1B78347D0);
    sub_1B71B4438(a1, v1 + v11, type metadata accessor for Duration);
    return (v8)(v1 + v11, 0, 1, v7);
  }

  return result;
}

void RawOrderPickupFulfillment.init(from:configuration:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a2;
  v135 = a1;
  v95 = a3;
  v3 = sub_1B77FFB08();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFC88();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Duration(0);
  v7 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v94 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v98 = &v81 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v102 = (&v81 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B4B0, &unk_1B785A610);
  v103 = *(v24 - 8);
  v104 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v81 - v25;
  v27 = type metadata accessor for RawOrderPickupFulfillment(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v30 + 4) = 1;
  v111 = v30 + 32;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 88) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 120) = 0u;
  *(v30 + 136) = 0u;
  *(v30 + 152) = 0u;
  *(v30 + 168) = 0u;
  *(v30 + 184) = 0u;
  *(v30 + 200) = 0u;
  *(v30 + 108) = 256;
  v31 = *(v28 + 48);
  v99 = v10;
  v32 = *(v10 + 56);
  v109 = v31;
  v32(&v30[v31], 1, 1, v9);
  v33 = *(v7 + 56);
  v108 = *(v27 + 52);
  v33(&v30[v108], 1, 1, v110);
  v105 = v27;
  v107 = *(v27 + 56);
  v32(&v30[v107], 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(v135, v135[3]);
  sub_1B76C1698();
  v34 = v106;
  sub_1B78023C8();
  if (v34)
  {

    v35 = 0;
    v36 = v111;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v135);

    v37 = 0;
    goto LABEL_5;
  }

  v86 = v7;
  v106 = v9;
  LOBYTE(v128) = 11;
  v41 = sub_1B7801DF8();
  v43 = v42;
  v85 = v26;
  swift_beginAccess();

  v44 = sub_1B724E408(v125, v41, v43);
  swift_endAccess();

  v36 = v111;
  if ((v44 & 1) == 0)
  {

    LOBYTE(v128) = 11;
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB99B4C0, &qword_1EB99B4B0, &unk_1B785A610, MEMORY[0x1E69E6F50]);
    v46 = v85;
    v47 = v104;
    sub_1B7801AD8();
    swift_willThrow();

    (*(v103 + 8))(v46, v47);
    v35 = 0;
    goto LABEL_4;
  }

  v45 = &v30[*(v105 + 60)];
  *v45 = v41;
  v45[1] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30, &qword_1B785A620);
  LOBYTE(v125[0]) = 0;
  sub_1B7457370(&qword_1EB994F38, sub_1B7457208, MEMORY[0x1E69E6330]);
  sub_1B7801DB8();
  v48 = MEMORY[0x1E69E7CC0];
  if (v128)
  {
    v48 = v128;
  }

  *v30 = v48;
  LOBYTE(v125[0]) = 1;
  sub_1B76C16EC();
  sub_1B7801E48();
  v30[8] = v128;
  LOBYTE(v128) = 2;
  *(v30 + 2) = sub_1B7801D78();
  *(v30 + 3) = v49;
  v84 = v49;
  v127 = 3;
  sub_1B73043C4();
  sub_1B7801DB8();
  v122 = v132;
  v123 = v133;
  v124 = v134;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v121 = v131;
  v50 = *(v36 + 1);
  v125[0] = *v36;
  v125[1] = v50;
  v51 = *(v36 + 2);
  v52 = *(v36 + 3);
  v53 = *(v36 + 4);
  v54 = *(v36 + 5);
  v126 = *(v36 + 12);
  v125[4] = v53;
  v125[5] = v54;
  v125[2] = v51;
  v125[3] = v52;
  sub_1B7205418(v125, &qword_1EB995F40, &unk_1B78347E0);
  v55 = v123;
  *(v36 + 4) = v122;
  *(v36 + 5) = v55;
  *(v36 + 12) = v124;
  v56 = v119;
  *v36 = v118;
  *(v36 + 1) = v56;
  v57 = v121;
  *(v36 + 2) = v120;
  *(v36 + 3) = v57;
  v113 = 4;
  sub_1B76931B0();
  sub_1B7801DB8();
  v58 = v117;
  v59 = *(v30 + 17);
  v60 = *(v30 + 18);
  v61 = *(v30 + 19);
  v62 = *(v30 + 20);
  v63 = *(v30 + 21);
  v64 = *(v30 + 22);
  v65 = *(v30 + 23);
  v82 = v114;
  v83 = v116;
  v81 = v115;
  sub_1B74C69A8(v59, v60, v61, v62, v63, v64, v65);
  v66 = v82;
  *(v30 + 152) = v81;
  *(v30 + 136) = v66;
  *(v30 + 168) = v83;
  *(v30 + 23) = v58;
  v113 = 5;
  sub_1B75039C0();
  sub_1B7801DB8();
  v67 = v115;
  v68 = BYTE8(v115);
  v69 = BYTE9(v115);
  *(v30 + 12) = v114;
  *(v30 + 26) = v67;
  v30[216] = v68;
  v30[217] = v69;
  LOBYTE(v114) = 6;
  *(v30 + 28) = sub_1B7801D78();
  *(v30 + 29) = v70;
  LOBYTE(v114) = 7;
  *(v30 + 30) = sub_1B7801DF8();
  *(v30 + 31) = v71;
  LOBYTE(v114) = 8;
  sub_1B76C214C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B7801DB8();
  sub_1B7213740(v102, &v30[v109], &qword_1EB98EBD0, &unk_1B7809780);
  LOBYTE(v114) = 9;
  sub_1B76C214C(&qword_1EDAF6620, type metadata accessor for Duration, protocol conformance descriptor for Duration);
  sub_1B7801DB8();
  sub_1B7213740(v101, &v30[v108], &qword_1EB995FF0, &unk_1B78347D0);
  LOBYTE(v114) = 10;
  sub_1B7801DB8();
  sub_1B7213740(v100, &v30[v107], &qword_1EB98EBD0, &unk_1B7809780);
  v72 = v98;
  sub_1B7205588(&v30[v109], v98, &qword_1EB98EBD0, &unk_1B7809780);
  v102 = *(v99 + 48);
  if (v102(v72, 1, v106) == 1)
  {
    (*(v103 + 8))(v85, v104);

    sub_1B7205418(v98, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_22:
    sub_1B71B4438(v30, v95, type metadata accessor for RawOrderPickupFulfillment);
    __swift_destroy_boxed_opaque_existential_1(v135);
    sub_1B76C1804(v30, type metadata accessor for RawOrderPickupFulfillment);
    return;
  }

  (*(v99 + 32))(v97, v98, v106);
  v73 = v96;
  sub_1B7205588(&v30[v108], v96, &qword_1EB995FF0, &unk_1B78347D0);
  if ((*(v86 + 48))(v73, 1, v110) == 1)
  {

    (*(v99 + 8))(v97, v106);
    (*(v103 + 8))(v85, v104);
    sub_1B7205418(v96, &qword_1EB995FF0, &unk_1B78347D0);
    goto LABEL_22;
  }

  sub_1B719AAB4(v96, v94, type metadata accessor for Duration);
  v75 = v92;
  v74 = v93;
  v76 = v89;
  (*(v92 + 104))(v89, *MEMORY[0x1E6969830], v93);
  v77 = v88;
  sub_1B77FFB18();
  (*(v75 + 8))(v76, v74);
  v78 = v87;
  sub_1B77FFC08();
  (*(v90 + 8))(v77, v91);
  LODWORD(v77) = v102(v78, 1, v106);
  sub_1B7205418(v78, &qword_1EB98EBD0, &unk_1B7809780);
  if (v77 != 1)
  {

    sub_1B76C1804(v94, type metadata accessor for Duration);
    (*(v99 + 8))(v97, v106);
    (*(v103 + 8))(v85, v104);
    goto LABEL_22;
  }

  LOBYTE(v114) = 9;
  sub_1B7801B18();
  swift_allocError();
  sub_1B728216C(&qword_1EB99B4C0, &qword_1EB99B4B0, &unk_1B785A610, MEMORY[0x1E69E6F50]);
  v79 = v85;
  v80 = v104;
  sub_1B7801AD8();
  swift_willThrow();

  sub_1B76C1804(v94, type metadata accessor for Duration);
  (*(v99 + 8))(v97, v106);
  (*(v103 + 8))(v79, v80);
  v37 = 1;
  v36 = v111;
  __swift_destroy_boxed_opaque_existential_1(v135);

  v35 = 1;
LABEL_5:
  v38 = *(v36 + 5);
  v132 = *(v36 + 4);
  v133 = v38;
  v134 = *(v36 + 12);
  v39 = *(v36 + 1);
  v128 = *v36;
  v129 = v39;
  v40 = *(v36 + 3);
  v130 = *(v36 + 2);
  v131 = v40;
  sub_1B7205418(&v128, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B74C69A8(*(v30 + 17), *(v30 + 18), *(v30 + 19), *(v30 + 20), *(v30 + 21), *(v30 + 22), *(v30 + 23));

  if (v37)
  {
  }

  sub_1B7205418(&v30[v109], &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205418(&v30[v108], &qword_1EB995FF0, &unk_1B78347D0);
  sub_1B7205418(&v30[v107], &qword_1EB98EBD0, &unk_1B7809780);
  if (v35)
  {
  }
}

uint64_t RawOrderPickupFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B4D0, &unk_1B785A628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C1698();
  sub_1B78023F8();
  *&v45[0] = *v3;
  LOBYTE(v38) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30, &qword_1B785A620);
  sub_1B7457370(&qword_1EB994F58, sub_1B74573E8, MEMORY[0x1E69E6300]);
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v45[0]) = *(v3 + 8);
    LOBYTE(v38) = 1;
    sub_1B76C1740();
    sub_1B7801FC8();
    v51[0] = 2;
    sub_1B7801EF8();
    v9 = *(v3 + 80);
    v10 = *(v3 + 112);
    v48 = *(v3 + 96);
    v49 = v10;
    v11 = *(v3 + 48);
    v45[0] = *(v3 + 32);
    v45[1] = v11;
    v12 = *(v3 + 80);
    v14 = *(v3 + 32);
    v13 = *(v3 + 48);
    v46 = *(v3 + 64);
    v47 = v12;
    v15 = *(v3 + 112);
    v42 = v48;
    v43 = v15;
    v38 = v14;
    v39 = v13;
    v50 = *(v3 + 128);
    v44 = *(v3 + 128);
    v40 = v46;
    v41 = v9;
    v37 = 3;
    sub_1B7205588(v45, v35, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7304418();
    sub_1B7801F38();
    v35[4] = v42;
    v35[5] = v43;
    v36 = v44;
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v35[3] = v41;
    sub_1B7205418(v35, &qword_1EB995F40, &unk_1B78347E0);
    v16 = *(v3 + 144);
    v17 = *(v3 + 152);
    v18 = *(v3 + 160);
    v19 = *(v3 + 168);
    v20 = *(v3 + 176);
    v21 = *(v3 + 184);
    *&v29 = *(v3 + 136);
    *(&v29 + 1) = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v34 = v21;
    v28 = 4;
    sub_1B74C6ADC(v29, v16, v17, v18, v19, v20, v21);
    sub_1B7693618();
    sub_1B7801F38();
    sub_1B74C69A8(v29, *(&v29 + 1), v30, v31, v32, v33, v34);
    v22 = *(v3 + 208);
    v23 = *(v3 + 216);
    v24 = *(v3 + 217);
    v29 = *(v3 + 192);
    v30 = v22;
    LOBYTE(v31) = v23;
    BYTE1(v31) = v24;
    v28 = 5;
    sub_1B7503A14();
    sub_1B7801F38();
    LOBYTE(v29) = 6;
    sub_1B7801EF8();
    LOBYTE(v29) = 7;
    sub_1B7801F78();
    v52 = type metadata accessor for RawOrderPickupFulfillment(0);
    LOBYTE(v29) = 8;
    v25 = sub_1B77FF988();
    sub_1B76C214C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v27 = v25;
    sub_1B7801F38();
    LOBYTE(v29) = 9;
    type metadata accessor for Duration(0);
    sub_1B76C214C(qword_1EDAF6628, type metadata accessor for Duration, protocol conformance descriptor for Duration);
    sub_1B7801F38();
    LOBYTE(v29) = 10;
    sub_1B7801F38();
    LOBYTE(v29) = 11;
    sub_1B7801F78();
  }

  return (*(v6 + 8))(v8, v5);
}

FinanceKit::RawOrderPickupStatus_optional __swiftcall RawOrderPickupStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPickupStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x705564656B636970;
  v4 = 0x6575737369;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69737365636F7270;
  if (v1 != 1)
  {
    v5 = 0x726F467964616572;
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

double sub_1B76BE5B0(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

void sub_1B76BE6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE800000000000000;
  v6 = 0x705564656B636970;
  v7 = 0xE500000000000000;
  v8 = 0x6575737369;
  if (v2 != 4)
  {
    v8 = 0x656C6C65636E6163;
    v7 = 0xE900000000000064;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000676ELL;
  v10 = 0x69737365636F7270;
  if (v2 != 1)
  {
    v10 = 0x726F467964616572;
    v9 = 0xEE0070756B636950;
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

uint64_t RawOrderPickupFulfillmentError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t RawOrderPickupFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RawOrderPickupFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RawOrderPickupFulfillment.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v13 = *(v1 + 96);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 128);
  v4 = v15;
  v5 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v5;
  v6 = *(v1 + 80);
  v11 = *(v1 + 64);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1B7205588(v10, v9, &qword_1EB995F40, &unk_1B78347E0);
}

__n128 RawOrderPickupFulfillment.address.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v9[4] = *(v1 + 96);
  v9[5] = v3;
  v10 = *(v1 + 128);
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v5 = *(v1 + 80);
  v9[2] = *(v1 + 64);
  v9[3] = v5;
  sub_1B7205418(v9, &qword_1EB995F40, &unk_1B78347E0);
  v6 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v6;
  *(v1 + 128) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  result = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = result;
  return result;
}

double RawOrderPickupFulfillment.barcode.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B74C6ADC(v2, v3, v4, v5, v6, v7, v8);
}

__n128 RawOrderPickupFulfillment.barcode.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B74C69A8(v1[17], v1[18], v1[19], v1[20], v1[21], v1[22], v1[23]);
  v4 = *a1;
  *(v1 + 19) = a1[1];
  *(v1 + 17) = v4;
  result = v6;
  *(v1 + 21) = v6;
  v1[23] = v3;
  return result;
}

__n128 RawOrderPickupFulfillment.location.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u64[0];
  v3 = v1[13].n128_u8[8];
  v4 = v1[13].n128_u8[9];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 RawOrderPickupFulfillment.location.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v2;
  v1[13].n128_u8[8] = v3;
  v1[13].n128_u8[9] = v4;
  return result;
}

uint64_t RawOrderPickupFulfillment.notes.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

void RawOrderPickupFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
}

uint64_t RawOrderPickupFulfillment.displayName.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

void RawOrderPickupFulfillment.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
}

uint64_t RawOrderPickupFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderPickupFulfillment(0) + 60));

  return v1;
}

void RawOrderPickupFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderPickupFulfillment(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawOrderPickupFulfillment.estimatedEndOfPickupWindow.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1B77FFB08();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Duration(0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RawOrderPickupFulfillment(0);
  sub_1B7205588(v1 + *(v20 + 48), v15, &qword_1EB98EBD0, &unk_1B7809780);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0, &unk_1B7809780);
    v22 = 1;
    v23 = v45;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v24 = v15;
  v25 = *(v17 + 32);
  (v25)(v19, v24, v16);
  sub_1B7205588(v1 + *(v20 + 52), v8, &qword_1EB995FF0, &unk_1B78347D0);
  if (v43[6](v8, 1, v44) == 1)
  {
    sub_1B7205418(v8, &qword_1EB995FF0, &unk_1B78347D0);
    v23 = v45;
    (v25)(v45, v19, v16);
LABEL_7:
    v22 = 0;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v43 = v25;
  v44 = v17 + 32;
  v26 = v8;
  v27 = v38;
  sub_1B719AAB4(v26, v38, type metadata accessor for Duration);
  v29 = v41;
  v28 = v42;
  v30 = v39;
  (*(v41 + 104))(v39, *MEMORY[0x1E6969830], v42);
  v31 = v40;
  sub_1B77FFB18();
  (*(v29 + 8))(v30, v28);
  v32 = v37;
  sub_1B77FFC08();
  result = (v21)(v32, 1, v16);
  if (result != 1)
  {
    (*(v35 + 8))(v31, v36);
    sub_1B76C1804(v27, type metadata accessor for Duration);
    (*(v17 + 8))(v19, v16);
    v23 = v45;
    (v43)(v45, v32, v16);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B76BF518(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    if (a1 == 10)
    {
      v6 = 0x705564656B636970;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000014;
    }

    v7 = 0x7365746F6ELL;
    v8 = 0x4E79616C70736964;
    if (a1 != 7)
    {
      v8 = 0x744170756B636970;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D657449656E696CLL;
    v2 = 0x73736572646461;
    v3 = 0x65646F63726162;
    if (a1 != 4)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x737574617473;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B76BF6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76C1D20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76BF6D8(uint64_t a1)
{
  v2 = sub_1B76C1698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76BF714(uint64_t a1)
{
  v2 = sub_1B76C1698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall RawOrderPickupFulfillment.clearPickupWindowDuration()()
{
  v1 = *(type metadata accessor for RawOrderPickupFulfillment(0) + 52);
  sub_1B7205418(v0 + v1, &qword_1EB995FF0, &unk_1B78347D0);
  v2 = type metadata accessor for Duration(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B76BF814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B7205588(a1, &v6 - v3, &qword_1EB990828, &unk_1B781C5A0);
  return RawOrderPickupFulfillment.pickupWindow.setter(v4);
}

uint64_t RawOrderPickupFulfillment.pickupWindow.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v36 - v4;
  v37 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.FulfillmentWindow(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  v40 = a1;
  sub_1B7205588(a1, v17, &qword_1EB990828, &unk_1B781C5A0);
  v21 = *(v7 + 48);
  if (v21(v17, 1, v6) == 1)
  {
    sub_1B7205418(v17, &qword_1EB990828, &unk_1B781C5A0);
    v22 = sub_1B77FF988();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  else
  {
    v36 = v1;
    sub_1B71B4438(v17, v11, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v11;
      v24 = v39;
      sub_1B719AAB4(v23, v39, type metadata accessor for TimeWindow);
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 16))(v20, v24, v25);
      sub_1B76C1804(v24, type metadata accessor for TimeWindow);
    }

    else
    {
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 32))(v20, v11, v25);
    }

    sub_1B76C1804(v17, type metadata accessor for Order.FulfillmentWindow);
    sub_1B77FF988();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v1 = v36;
  }

  v26 = type metadata accessor for RawOrderPickupFulfillment(0);
  sub_1B7213740(v20, v1 + *(v26 + 48), &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B76C1794(v40, v15);
  if (v21(v15, 1, v6) == 1)
  {
    sub_1B7205418(v15, &qword_1EB990828, &unk_1B781C5A0);
    v27 = type metadata accessor for Duration(0);
    v28 = v41;
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  }

  else
  {
    v29 = v38;
    sub_1B71B4438(v15, v38, type metadata accessor for Order.FulfillmentWindow);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v41;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v29;
      v32 = v39;
      sub_1B719AAB4(v31, v39, type metadata accessor for TimeWindow);
      sub_1B71B4438(v32 + *(v37 + 20), v28, type metadata accessor for Duration);
      sub_1B76C1804(v32, type metadata accessor for TimeWindow);
      v33 = type metadata accessor for Duration(0);
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
    }

    else
    {
      v34 = type metadata accessor for Duration(0);
      (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
      sub_1B76C1804(v29, type metadata accessor for Order.FulfillmentWindow);
    }

    sub_1B76C1804(v15, type metadata accessor for Order.FulfillmentWindow);
  }

  return sub_1B7213740(v28, v1 + *(v26 + 52), &qword_1EB995FF0, &unk_1B78347D0);
}

void (*RawOrderPickupFulfillment.pickupWindow.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  RawOrderPickupFulfillment.pickupWindow.getter(v4);
  return sub_1B76BFFE8;
}

void sub_1B76BFFE8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990828, &unk_1B781C5A0);
    RawOrderPickupFulfillment.pickupWindow.setter(v2);
    sub_1B7205418(v3, &qword_1EB990828, &unk_1B781C5A0);
  }

  else
  {
    RawOrderPickupFulfillment.pickupWindow.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

BOOL _s10FinanceKit25RawOrderPickupFulfillmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration(0);
  v115 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v98 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B520, &unk_1B785AA70);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v98 - v10;
  v11 = sub_1B77FF988();
  v118 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v114 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v98 - v21;
  if ((sub_1B731D48C(*a1, *a2) & 1) == 0 || (sub_1B72C0E98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 24);
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!v24 || (*(a1 + 16) != *(a2 + 16) || v23 != v24) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 80);
  v26 = *(a1 + 112);
  v151[4] = *(a1 + 96);
  v151[5] = v26;
  v152 = *(a1 + 128);
  v27 = *(a1 + 48);
  v151[0] = *(a1 + 32);
  v151[1] = v27;
  v28 = *(a1 + 64);
  v151[3] = v25;
  v151[2] = v28;
  v29 = *(a2 + 48);
  v153[0] = *(a2 + 32);
  v153[1] = v29;
  v31 = *(a2 + 64);
  v30 = *(a2 + 80);
  v32 = *(a2 + 96);
  v33 = *(a2 + 112);
  v154 = *(a2 + 128);
  v153[4] = v32;
  v153[5] = v33;
  v153[2] = v31;
  v153[3] = v30;
  v34 = *(a1 + 88);
  v147 = *(a1 + 72);
  v148 = v34;
  v35 = *(a1 + 120);
  v149 = *(a1 + 104);
  v150 = v35;
  v36 = *(a1 + 56);
  v145 = *(a1 + 40);
  v146 = v36;
  v37 = *(a2 + 56);
  v139 = *(a2 + 40);
  v140 = v37;
  v38 = *(a2 + 72);
  v39 = *(a2 + 88);
  v40 = *(a2 + 120);
  v143 = *(a2 + 104);
  v144 = v40;
  v141 = v38;
  v142 = v39;
  if (*&v151[0] == 1)
  {
    if (*&v153[0] == 1)
    {
      *v131 = 1;
      *&v131[40] = *(a1 + 72);
      *&v131[56] = *(a1 + 88);
      *&v131[72] = *(a1 + 104);
      *&v131[88] = *(a1 + 120);
      *&v131[8] = *(a1 + 40);
      *&v131[24] = *(a1 + 56);
      sub_1B7205588(v151, &v124, &qword_1EB995F40, &unk_1B78347E0);
      sub_1B7205588(v153, &v124, &qword_1EB995F40, &unk_1B78347E0);
      sub_1B7205418(v131, &qword_1EB995F40, &unk_1B78347E0);
      goto LABEL_18;
    }

    v41 = *&v153[0];
    v42 = 1;
    sub_1B7205588(v151, v131, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v153, v131, &qword_1EB995F40, &unk_1B78347E0);
LABEL_16:
    *&v131[40] = v147;
    *&v131[56] = v148;
    *&v131[72] = v149;
    *&v131[88] = v150;
    *&v131[8] = v145;
    *&v131[24] = v146;
    *v131 = v42;
    v132 = v41;
    v133 = v139;
    v134 = v140;
    v137 = v143;
    v138 = v144;
    v135 = v141;
    v136 = v142;
    sub_1B7205418(v131, &qword_1EB99AE20, &unk_1B785AA80);
    return 0;
  }

  *v131 = *&v151[0];
  *&v131[8] = *(a1 + 40);
  *&v131[24] = *(a1 + 56);
  *&v131[40] = *(a1 + 72);
  *&v131[88] = *(a1 + 120);
  *&v131[72] = *(a1 + 104);
  *&v131[56] = *(a1 + 88);
  v124 = *v131;
  v125 = *&v131[16];
  v130 = *&v131[96];
  v128 = *&v131[64];
  v129 = *&v131[80];
  v126 = *&v131[32];
  v127 = *&v131[48];
  if (*&v153[0] == 1)
  {
    v41 = 1;
    v42 = *&v151[0];
    *&v123[64] = *&v131[64];
    *&v123[80] = *&v131[80];
    *&v123[96] = *&v131[96];
    *v123 = *v131;
    *&v123[16] = *&v131[16];
    *&v123[32] = *&v131[32];
    *&v123[48] = *&v131[48];
    sub_1B7205588(v151, v121, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v153, v121, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B7205588(v131, v121, &qword_1EB995F40, &unk_1B78347E0);
    sub_1B730446C(v123);
    goto LABEL_16;
  }

  *&v123[40] = *(a2 + 72);
  *&v123[56] = *(a2 + 88);
  *&v123[72] = *(a2 + 104);
  *&v123[88] = *(a2 + 120);
  *&v123[8] = *(a2 + 40);
  *&v123[24] = *(a2 + 56);
  *v123 = *&v153[0];
  v110 = *&v151[0];
  LODWORD(v111) = _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(&v124, v123);
  v119[4] = *&v123[64];
  v119[5] = *&v123[80];
  v120 = *&v123[96];
  v119[0] = *v123;
  v119[1] = *&v123[16];
  v119[2] = *&v123[32];
  v119[3] = *&v123[48];
  sub_1B7205588(v151, v121, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B7205588(v153, v121, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B7205588(v131, v121, &qword_1EB995F40, &unk_1B78347E0);
  sub_1B730446C(v119);
  v121[4] = v128;
  v121[5] = v129;
  v122 = v130;
  v121[0] = v124;
  v121[1] = v125;
  v121[2] = v126;
  v121[3] = v127;
  sub_1B730446C(v121);
  *v123 = v110;
  *&v123[40] = v147;
  *&v123[56] = v148;
  *&v123[72] = v149;
  *&v123[88] = v150;
  *&v123[8] = v145;
  *&v123[24] = v146;
  sub_1B7205418(v123, &qword_1EB995F40, &unk_1B78347E0);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v44 = *(a1 + 136);
  v43 = *(a1 + 144);
  v46 = *(a1 + 152);
  v45 = *(a1 + 160);
  v48 = *(a1 + 168);
  v47 = *(a1 + 176);
  v49 = *(a1 + 184);
  v109 = *(a2 + 136);
  v110 = *(a2 + 152);
  v50 = *(a2 + 168);
  v111 = *(a2 + 160);
  v51 = *(a2 + 176);
  v106 = v47;
  v107 = v51;
  v108 = *(a2 + 184);
  v102 = v50;
  v103 = v44;
  v104 = v46;
  v105 = v45;
  if (!v48)
  {
    v99 = 0;
    v100 = v49;
    v101 = v43;
    sub_1B74C6ADC(v44, v43, v46, v45, 0, v47, v49);
    if (!v102)
    {
      sub_1B74C6ADC(v109, *(&v109 + 1), v110, v111, 0, v107, v108);
      sub_1B74C69A8(v103, v101, v104, v105, 0, v106, v100);
      goto LABEL_29;
    }

    v53 = *(&v109 + 1);
    v52 = v109;
    v54 = v110;
    v55 = v102;
    v57 = v107;
    v56 = v108;
    sub_1B74C6ADC(v109, *(&v109 + 1), v110, v111, v102, v107, v108);
    v58 = v99;
    v59 = v100;
    v60 = v101;
LABEL_25:
    sub_1B74C69A8(v103, v60, v104, v105, v58, v106, v59);
    sub_1B74C69A8(v52, v53, v54, v111, v55, v57, v56);
    return 0;
  }

  *v131 = v44;
  *&v131[8] = v43;
  *&v131[16] = v46;
  *&v131[24] = v45;
  *&v131[32] = v48;
  *&v131[40] = v47;
  *&v131[48] = v49;
  if (!v50)
  {
    v61 = v44;
    v62 = v43;
    v63 = v46;
    v64 = v45;
    v58 = v48;
    v65 = v47;
    v59 = v49;
    sub_1B74C6ADC(v44, v43, v46, v45, v48, v47, v49);
    v57 = v107;
    v56 = v108;
    sub_1B74C6ADC(v109, *(&v109 + 1), v110, v111, 0, v107, v108);
    v66 = v61;
    v55 = v102;
    v67 = v62;
    v68 = v63;
    v60 = v62;
    v69 = v64;
    v53 = *(&v109 + 1);
    v52 = v109;
    v70 = v65;
    v54 = v110;
    sub_1B74C6ADC(v66, v67, v68, v69, v58, v70, v59);

    goto LABEL_25;
  }

  v124 = v109;
  LOBYTE(v125) = v110;
  *(&v125 + 1) = v111;
  *&v126 = v50;
  *(&v126 + 1) = v107;
  *&v127 = v108;
  v100 = v49;
  v101 = v43;
  v99 = v48;
  sub_1B74C6ADC(v44, v43, v46, v45, v48, v47, v49);
  sub_1B74C6ADC(v109, *(&v109 + 1), v110, v111, v102, v107, v108);
  sub_1B74C6ADC(v103, v101, v104, v105, v99, v106, v100);
  LODWORD(v111) = _s10FinanceKit15RawOrderBarcodeV2eeoiySbAC_ACtFZ_0(v131, &v124);
  *(&v109 + 1) = v126;
  v110 = *(&v124 + 1);

  *(&v109 + 1) = *&v131[32];
  v110 = *&v131[8];

  sub_1B74C69A8(v103, v101, v104, v105, v99, v106, v100);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v72 = *(a2 + 217);
  if (*(a1 + 217))
  {
    goto LABEL_30;
  }

  if ((*(a2 + 217) & 1) != 0 || *(a1 + 192) != *(a2 + 192) || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  v72 = *(a2 + 216);
  if (*(a1 + 216))
  {
LABEL_30:
    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 216) & 1) != 0 || *(a1 + 208) != *(a2 + 208))
  {
    return 0;
  }

  v73 = *(a1 + 232);
  v74 = *(a2 + 232);
  if (v73)
  {
    if (!v74 || (*(a1 + 224) != *(a2 + 224) || v73 != v74) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  if ((*(a1 + 240) != *(a2 + 240) || *(a1 + 248) != *(a2 + 248)) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  *&v109 = type metadata accessor for RawOrderPickupFulfillment(0);
  v75 = *(v18 + 48);
  v110 = *(v109 + 48);
  v111 = v75;
  sub_1B7205588(a1 + v110, v22, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(a2 + v110, &v22[v111], &qword_1EB98EBD0, &unk_1B7809780);
  *(&v109 + 1) = *(v118 + 48);
  v110 = v118 + 48;
  if ((*(&v109 + 1))(v22, 1, v11) == 1)
  {
    if ((*(&v109 + 1))(&v22[v111], 1, v11) == 1)
    {
      sub_1B7205418(v22, &qword_1EB98EBD0, &unk_1B7809780);
      goto LABEL_55;
    }

LABEL_53:
    v76 = &qword_1EB98FCE0;
    v77 = &qword_1B7813550;
LABEL_61:
    sub_1B7205418(v22, v76, v77);
    return 0;
  }

  sub_1B7205588(v22, v17, &qword_1EB98EBD0, &unk_1B7809780);
  if ((*(&v109 + 1))(&v22[v111], 1, v11) == 1)
  {
    (*(v118 + 8))(v17, v11);
    goto LABEL_53;
  }

  (*(v118 + 32))(v117, &v22[v111], v11);
  sub_1B76C214C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LODWORD(v107) = sub_1B7800828();
  v78 = *(v118 + 8);
  v108 = v118 + 8;
  v111 = v78;
  v78(v117, v11);
  (v111)(v17, v11);
  sub_1B7205418(v22, &qword_1EB98EBD0, &unk_1B7809780);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v79 = *(v109 + 52);
  v80 = *(v9 + 48);
  v22 = v116;
  sub_1B7205588(a1 + v79, v116, &qword_1EB995FF0, &unk_1B78347D0);
  v111 = v80;
  sub_1B7205588(a2 + v79, &v22[v80], &qword_1EB995FF0, &unk_1B78347D0);
  v81 = *(v115 + 48);
  if (v81(v22, 1, v4) == 1)
  {
    if (v81(&v22[v111], 1, v4) == 1)
    {
      sub_1B7205418(v22, &qword_1EB995FF0, &unk_1B78347D0);
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  sub_1B7205588(v22, v8, &qword_1EB995FF0, &unk_1B78347D0);
  if (v81(&v22[v111], 1, v4) == 1)
  {
    sub_1B76C1804(v8, type metadata accessor for Duration);
LABEL_60:
    v76 = &qword_1EB99B520;
    v77 = &unk_1B785AA70;
    goto LABEL_61;
  }

  v82 = v113;
  sub_1B719AAB4(&v22[v111], v113, type metadata accessor for Duration);
  v83 = MEMORY[0x1B8CA2F10](v8, v82);
  sub_1B76C1804(v82, type metadata accessor for Duration);
  sub_1B76C1804(v8, type metadata accessor for Duration);
  sub_1B7205418(v22, &qword_1EB995FF0, &unk_1B78347D0);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  v84 = *(v109 + 56);
  v85 = *(v18 + 48);
  v86 = v114;
  sub_1B7205588(a1 + v84, v114, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(a2 + v84, v86 + v85, &qword_1EB98EBD0, &unk_1B7809780);
  v87 = *(&v109 + 1);
  if ((*(&v109 + 1))(v86, 1, v11) != 1)
  {
    v88 = v112;
    sub_1B7205588(v86, v112, &qword_1EB98EBD0, &unk_1B7809780);
    if (v87(v86 + v85, 1, v11) != 1)
    {
      v89 = v118;
      v90 = v86 + v85;
      v91 = v117;
      (*(v118 + 32))(v117, v90, v11);
      sub_1B76C214C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v92 = sub_1B7800828();
      v93 = *(v89 + 8);
      v93(v91, v11);
      v93(v88, v11);
      sub_1B7205418(v86, &qword_1EB98EBD0, &unk_1B7809780);
      if ((v92 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_70;
    }

    (*(v118 + 8))(v88, v11);
LABEL_68:
    sub_1B7205418(v86, &qword_1EB98FCE0, &qword_1B7813550);
    return 0;
  }

  if (v87(v86 + v85, 1, v11) != 1)
  {
    goto LABEL_68;
  }

  sub_1B7205418(v86, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_70:
  v94 = *(v109 + 60);
  v95 = *(a1 + v94);
  v96 = *(a1 + v94 + 8);
  v97 = (a2 + v94);
  return v95 == *v97 && v96 == v97[1] || (sub_1B78020F8() & 1) != 0;
}

uint64_t sub_1B76C111C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v42 = a2;
  v44 = a1;
  v2 = sub_1B77FFB08();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = sub_1B77FF988();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0, &unk_1B78347D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Duration(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v44, v16, &qword_1EB995FF0, &unk_1B78347D0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v21 = &qword_1EB995FF0;
    v22 = &unk_1B78347D0;
    v23 = v16;
    return sub_1B7205418(v23, v21, v22);
  }

  sub_1B719AAB4(v16, v20, type metadata accessor for Duration);
  sub_1B7205588(v42, v10, &qword_1EB98EBD0, &unk_1B7809780);
  v24 = v43;
  v25 = *(v43 + 48);
  if (v25(v10, 1, v11) == 1)
  {
    sub_1B76C1804(v20, type metadata accessor for Duration);
    v21 = &qword_1EB98EBD0;
    v22 = &unk_1B7809780;
    v23 = v10;
    return sub_1B7205418(v23, v21, v22);
  }

  (*(v24 + 32))(v13, v10, v11);
  v27 = v40;
  v28 = v37;
  v29 = v13;
  v30 = v41;
  (*(v40 + 104))(v37, *MEMORY[0x1E6969830], v41);
  v44 = v25;
  v31 = v36;
  sub_1B77FFB18();
  v32 = v30;
  v33 = v29;
  (*(v27 + 8))(v28, v32);
  v34 = v35;
  sub_1B77FFC08();
  (*(v38 + 8))(v31, v39);
  LODWORD(v31) = v44(v34, 1, v11);
  sub_1B7205418(v34, &qword_1EB98EBD0, &unk_1B7809780);
  if (v31 == 1)
  {
    sub_1B76C2194();
    swift_allocError();
    swift_willThrow();
  }

  (*(v24 + 8))(v33, v11);
  return sub_1B76C1804(v20, type metadata accessor for Duration);
}

unint64_t sub_1B76C1698()
{
  result = qword_1EB99B4B8;
  if (!qword_1EB99B4B8)
  {
    result = swift_getWitnessTable(byte_1B785AA20, &type metadata for RawOrderPickupFulfillment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B4B8);
  }

  return result;
}

unint64_t sub_1B76C16EC()
{
  result = qword_1EB99B4C8;
  if (!qword_1EB99B4C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupStatus, &type metadata for RawOrderPickupStatus, v0, v1);
    atomic_store(result, &qword_1EB99B4C8);
  }

  return result;
}

unint64_t sub_1B76C1740()
{
  result = qword_1EB99B4D8;
  if (!qword_1EB99B4D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupStatus, &type metadata for RawOrderPickupStatus, v0, v1);
    atomic_store(result, &qword_1EB99B4D8);
  }

  return result;
}

uint64_t sub_1B76C1794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76C1804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76C1868()
{
  result = qword_1EB99B4E0;
  if (!qword_1EB99B4E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupStatus, &type metadata for RawOrderPickupStatus, v0, v1);
    atomic_store(result, &qword_1EB99B4E0);
  }

  return result;
}

unint64_t sub_1B76C1904()
{
  result = qword_1EB99B4F8;
  if (!qword_1EB99B4F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupFulfillmentError, &type metadata for RawOrderPickupFulfillmentError, v0, v1);
    atomic_store(result, &qword_1EB99B4F8);
  }

  return result;
}

void sub_1B76C19A0(uint64_t a1)
{
  sub_1B72163E8(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B72163E8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B72163E8(319, &qword_1EDAF8F88, &type metadata for RawAddress, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B72163E8(319, qword_1EDAF89B0, &type metadata for RawOrderBarcode, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B72163E8(319, &qword_1EDAF8F68, &type metadata for RawLocation, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B76C1BB4(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              sub_1B76C1BB4(319, &unk_1EDAF6610, type metadata accessor for Duration);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B76C1BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B76C1C1C()
{
  result = qword_1EB99B500;
  if (!qword_1EB99B500)
  {
    result = swift_getWitnessTable(aQ_54, &type metadata for RawOrderPickupFulfillment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B500);
  }

  return result;
}

unint64_t sub_1B76C1C74()
{
  result = qword_1EB99B508;
  if (!qword_1EB99B508)
  {
    result = swift_getWitnessTable(byte_1B785A968, &type metadata for RawOrderPickupFulfillment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B508);
  }

  return result;
}

unint64_t sub_1B76C1CCC()
{
  result = qword_1EB99B510;
  if (!qword_1EB99B510)
  {
    result = swift_getWitnessTable(byte_1B785A990, &type metadata for RawOrderPickupFulfillment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B510);
  }

  return result;
}

uint64_t sub_1B76C1D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x744170756B636970 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B788AA80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xEA00000000007441 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1B76C20F8()
{
  result = qword_1EB99B518;
  if (!qword_1EB99B518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupStatus, &type metadata for RawOrderPickupStatus, v0, v1);
    atomic_store(result, &qword_1EB99B518);
  }

  return result;
}

uint64_t sub_1B76C214C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76C2194()
{
  result = qword_1EB99B528;
  if (!qword_1EB99B528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPickupFulfillmentError, &type metadata for RawOrderPickupFulfillmentError, v0, v1);
    atomic_store(result, &qword_1EB99B528);
  }

  return result;
}

uint64_t BankConnectService.disconnectAccount(with:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message(0);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B76C2294, 0, 0);
}

uint64_t sub_1B76C2294()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B76C2338(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.disconnectAccount(with:)(a1);
}

uint64_t dispatch thunk of BankConnectConnectionAccountDisconnecting.disconnectAccount(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.urls(forImageNamed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 16);
  v12 = GSMainScreenScaleFactor();
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.2234e18)
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v18[-32] = v11;
    *&v18[-24] = a1;
    *&v18[-16] = a2;
    *&v18[-8] = v14;
    v15 = *(v11 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v16 = (*(v8 + 16))(v10, v11 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
    MEMORY[0x1EEE9AC00](v16);
    *&v18[-32] = v10;
    *&v18[-24] = sub_1B7262DC4;
    *&v18[-16] = &v18[-48];
    os_unfair_lock_lock((v15 + 24));
    sub_1B726A6E8((v15 + 16), a3);
    os_unfair_lock_unlock((v15 + 24));
    return (*(v8 + 8))(v10, v7);
  }

LABEL_7:
  __break(1u);
  os_unfair_lock_unlock(v12);
  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.localizedString(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = 0xD000000000000010;
  v3[5] = 0x80000001B7876290;
  return sub_1B723940C(sub_1B7262E4C, v3);
}

uint64_t sub_1B76C27A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1B76C2814(uint64_t a1)
{
  v25 = *v1;
  v23 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FE8B8();
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = a1;
  v30 = 0xD000000000000010;
  v31 = 0x80000001B7876290;
  v20 = xmmword_1B783A790;
  v32 = xmmword_1B783A790;
  v12 = *(a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v8);
  v26 = v11;
  v27 = sub_1B7537210;
  v28 = &v29;

  os_unfair_lock_lock((v12 + 24));
  v13 = v35;
  sub_1B7262DE4((v12 + 16), &v33);
  if (v13)
  {
    os_unfair_lock_unlock((v12 + 24));
    (*(v9 + 8))(v11, v8);
LABEL_5:

    goto LABEL_6;
  }

  v35 = 0;
  os_unfair_lock_unlock((v12 + 24));
  (*(v9 + 8))(v11, v8);
  v14 = v34;
  if (v34 >> 60 == 15)
  {
    sub_1B7537230();
    swift_allocError();
    *v15 = 0xD000000000000010;
    *(v15 + 8) = 0x80000001B7876290;
    *(v15 + 16) = v20;
    swift_willThrow();
    goto LABEL_5;
  }

  v17 = v33;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  (*(v22 + 104))(v7, *MEMORY[0x1E6967F30], v21);
  sub_1B77FE8C8();
  sub_1B76C356C(&qword_1EB99B540, type metadata accessor for RawApplePayMerchantTokenUsageInformation, protocol conformance descriptor for RawApplePayMerchantTokenUsageInformation);
  v18 = v24;
  v19 = v35;
  sub_1B77FE8D8();

  sub_1B72380B8(v17, v14);

  if (!v19)
  {
    sub_1B76C35B4(v18, v1 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);
    return v1;
  }

LABEL_6:

  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t *ApplePayMerchantTokenUsageInformationPackage.__allocating_init(url:)(uint64_t a1)
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for ContentPackageReader(0);
  v7 = swift_allocObject();
  v8 = v6;
  v9 = v7;
  v10 = ContentPackageReader.init(bundleURL:isBundleOwner:)(v8, 0);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v11 = v10;
    swift_allocObject();
    v9 = sub_1B76C2814(v11);
    (*(v4 + 8))(a1, v3);
  }

  return v9;
}

void *ApplePayMerchantTokenUsageInformationPackage.__allocating_init(data:workingDirectory:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = sub_1B77FF4F8();
  v7 = *(v25 - 8);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  type metadata accessor for ContentPackageUnarchiver();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B783A7B0;
  ContentPackageUnarchiver.unarchive(_:workingDirectory:)(a1, a2, a3, v15);
  if (v3)
  {
    (*(v7 + 8))(a3, v25);

    sub_1B720A388(a1, a2);
  }

  else
  {
    v21[1] = v10;
    v21[2] = inited;
    v22 = a1;
    v23 = a2;
    v24 = a3;
    v17 = v25;
    (*(v7 + 16))(v13, v15, v25);
    type metadata accessor for ContentPackageReader(0);
    swift_allocObject();
    v18 = ContentPackageReader.init(bundleURL:isBundleOwner:)(v13, 1);
    swift_allocObject();
    inited = sub_1B76C2814(v18);
    sub_1B720A388(v22, v23);
    v20 = *(v7 + 8);
    v20(v24, v17);
    v20(v15, v17);
  }

  return inited;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ApplePayMerchantTokenUsageInformationPackage.close()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B7537014((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.deinit()
{

  sub_1B76C3404(v0 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);
  return v0;
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.__deallocating_deinit()
{

  sub_1B76C3404(v0 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);

  return swift_deallocClassInstance();
}

uint64_t sub_1B76C3404(uint64_t a1)
{
  v2 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ApplePayMerchantTokenUsageInformationPackage(uint64_t a1)
{
  result = qword_1EB99B530;
  if (!qword_1EB99B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76C34B4(uint64_t a1)
{
  result = type metadata accessor for RawApplePayMerchantTokenUsageInformation(319);
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

uint64_t sub_1B76C356C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B76C35B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

FinanceKit::BankConnectConsentStatus_optional __swiftcall BankConnectConsentStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B76C3658()
{
  result = qword_1EB99B548;
  if (!qword_1EB99B548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectConsentStatus, &type metadata for BankConnectConsentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B548);
  }

  return result;
}

unint64_t sub_1B76C3760()
{
  result = qword_1EB99B550;
  if (!qword_1EB99B550)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B558, &qword_1B785AC30);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB99B550);
  }

  return result;
}

unint64_t sub_1B76C37E4()
{
  result = qword_1EB99B560;
  if (!qword_1EB99B560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectConsentStatus, &type metadata for BankConnectConsentStatus, v0, v1);
    atomic_store(result, &qword_1EB99B560);
  }

  return result;
}

uint64_t WPCClassificationServiceCollection.version.getter()
{
  v1 = *v0;

  return v1;
}

void static WPCClassificationServiceCollection.fallback.getter(uint64_t a1@<X8>)
{
  *a1 = 4271950;
  *(a1 + 8) = 0xE300000000000000;
  *(a1 + 16) = 1;
  *(a1 + 24) = 30;
}

uint64_t sub_1B76C389C()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x7A69536863746162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1B76C38FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76C3D60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76C3924(uint64_t a1)
{
  v2 = sub_1B76C3BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C3960(uint64_t a1)
{
  v2 = sub_1B76C3BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WPCClassificationServiceCollection.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B568, &qword_1B785ACB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C3BCC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v12 = v9;
    v20 = 1;
    v18 = sub_1B7801E08();
    v19 = 2;
    v13 = sub_1B7801E28();
    v14 = (v6 + 8);
    v15 = v13;
    v16 = v18 & 1;
    (*v14)(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1B76C3BCC()
{
  result = qword_1EB99B570;
  if (!qword_1EB99B570)
  {
    result = swift_getWitnessTable(byte_1B785ADF8, &type metadata for WPCClassificationServiceCollection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B570);
  }

  return result;
}

unint64_t sub_1B76C3C5C()
{
  result = qword_1EB99B578;
  if (!qword_1EB99B578)
  {
    result = swift_getWitnessTable(aY_44, &type metadata for WPCClassificationServiceCollection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B578);
  }

  return result;
}

unint64_t sub_1B76C3CB4()
{
  result = qword_1EB99B580;
  if (!qword_1EB99B580)
  {
    result = swift_getWitnessTable(byte_1B785AD40, &type metadata for WPCClassificationServiceCollection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B580);
  }

  return result;
}

unint64_t sub_1B76C3D0C()
{
  result = qword_1EB99B588;
  if (!qword_1EB99B588)
  {
    result = swift_getWitnessTable(byte_1B785AD68, &type metadata for WPCClassificationServiceCollection.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B588);
  }

  return result;
}

uint64_t sub_1B76C3D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

void sub_1B76C3E80(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedContactTransactionInsight();
    sub_1B76C43D0();
    sub_1B7800FE8();
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  while (v2 < 0)
  {
    if (!sub_1B7801988() || (type metadata accessor for ManagedContactTransactionInsight(), swift_dynamicCast(), (v12 = v27) == 0))
    {
LABEL_24:
      sub_1B71B7B58(v2);
      return;
    }

LABEL_17:
    v13 = [v12 peerPaymentCounterpartHandle];
    if (v13)
    {
      v14 = v13;
      v20 = sub_1B7800868();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B723E180(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_1B723E180((v17 > 1), v18 + 1, 1, v21);
      }

      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id ManagedContactTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedContactTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedContactTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedContactTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit32ManagedContactTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id ManagedInternalTransaction.contactInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 contactInsightObject];

  return v2;
}

void *sub_1B76C4328(uint64_t a1)
{
  v3 = sub_1B7238558(a1);
  if (v3)
  {
    sub_1B76C3E80(a1, v2);
    if (*(v4 + 16))
    {

      v5 = sub_1B7800838();
    }

    else
    {

      v5 = 0;
    }

    [v3 setPeerPaymentCounterpartHandle_];
  }

  return v3;
}

unint64_t sub_1B76C43D0()
{
  result = qword_1EB990030;
  if (!qword_1EB990030)
  {
    v3 = type metadata accessor for ManagedContactTransactionInsight();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EB990030);
  }

  return result;
}

uint64_t TransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590, &unk_1B785AEA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F200, &unk_1B7808F30);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for TransactionQuery(0);
  sub_1B76C46DC(a2, a7 + v22[5]);
  sub_1B76C46DC(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B76C474C(a2);
    result = sub_1B76C474C(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71FAD20(v19);
    sub_1B76C474C(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for TransactionQuery(uint64_t a1)
{
  result = qword_1EB99B598;
  if (!qword_1EB99B598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76C46DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590, &unk_1B785AEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76C474C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590, &unk_1B785AEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B76C47E0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0, &unk_1B7812E10);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8, &qword_1B785AF20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B618, &qword_1B785AFA8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B620, &qword_1B785AFB0);
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - v15;
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8, &qword_1B785AF20, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E20, &qword_1B782C3E0);
  sub_1B728216C(&qword_1EB99B628, &qword_1EB99B618, &qword_1B785AFA8, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994E30, &qword_1EB994E20, &qword_1B782C3E0, MEMORY[0x1E6968C08]);
  sub_1B77FF018();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  v17 = v25;
  sub_1B77FF2C8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B630, &unk_1B785AFE0);
  v19 = v26;
  v26[3] = v18;
  v19[4] = sub_1B76C5B14();
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1B728216C(&qword_1EB99B650, &qword_1EB99B620, &qword_1B785AFB0, MEMORY[0x1E6968BC8]);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0, &unk_1B7812E10, MEMORY[0x1E6968D20]);
  v20 = v24;
  v21 = v27;
  sub_1B77FF0A8();
  (*(v28 + 8))(v17, v21);
  return (*(v14 + 8))(v16, v20);
}

uint64_t sub_1B76C4CBC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E90, &unk_1B782C400);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E68, &unk_1B782C3F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E78, &unk_1B785AFF0);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB994EA0, &qword_1EB994E90, &unk_1B782C400, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  sub_1B728216C(&qword_1EB994EA8, &qword_1EB994E68, &unk_1B782C3F0, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB994EB0, &qword_1EB994E78, &unk_1B785AFF0, MEMORY[0x1E69E6328]);
  sub_1B744BC20();
  sub_1B77FF028();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B76C4F6C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8, &qword_1B785AF20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5F0, &qword_1B785AF68);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB0, &unk_1B785AF70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB8, &qword_1B782C380);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8, &qword_1B785AF20, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5F8, &qword_1B785AFA0);
  a3[4] = sub_1B76C5A68();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B728216C(&qword_1EB994DF0, &qword_1EB994DB0, &unk_1B785AF70, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB99B610, &qword_1EB99B5F0, &qword_1B785AF68, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994E00, &qword_1EB994DB8, &qword_1B782C380, MEMORY[0x1E69E6328]);
  sub_1B744B848();
  v17 = v20;
  sub_1B77FF028();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B76C5354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
  }

  type metadata accessor for Transaction(0);
  return sub_1B77FFD38();
}

uint64_t sub_1B76C540C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8, &qword_1B785AF20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5B8, &qword_1B785AF28);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D38, &unk_1B785AF30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D40, &qword_1B782C340);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8, &qword_1B785AF20, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5C8, &qword_1B785AF60);
  a3[4] = sub_1B76C592C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B728216C(&qword_1EB994D88, &qword_1EB994D38, &unk_1B785AF30, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB99B5E8, &qword_1EB99B5B8, &qword_1B785AF28, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994D98, &qword_1EB994D40, &qword_1B782C340, MEMORY[0x1E69E6328]);
  sub_1B744B514();
  v17 = v20;
  sub_1B77FF028();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t PrivateTransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B76C5810(uint64_t a1)
{
  sub_1B729D930(319, &qword_1EB99B5A8, &qword_1EB9930D0, &unk_1B7820520, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB99B5B0, &qword_1EB98F200, &unk_1B7808F30, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B729D994();
      if (v3 <= 0x3F)
      {
        sub_1B729D9E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B76C592C()
{
  result = qword_1EB99B5D0;
  if (!qword_1EB99B5D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B5C8, &qword_1B785AF60);
    v4[0] = sub_1B744B240();
    v4[1] = sub_1B76C59D0(&qword_1EB99B5D8, &qword_1EB99B5B8, &qword_1B785AF28);
    result = swift_getWitnessTable(MEMORY[0x1E6968C00], v3, v4);
    atomic_store(result, &qword_1EB99B5D0);
  }

  return result;
}

uint64_t sub_1B76C59D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v6 = sub_1B728216C(&qword_1EB99B5E0, &qword_1EB98F1F8, &qword_1B785AF20, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable(MEMORY[0x1E6968D50], v5, &v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76C5A68()
{
  result = qword_1EB99B600;
  if (!qword_1EB99B600)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B5F8, &qword_1B785AFA0);
    v4[0] = sub_1B744B60C();
    v4[1] = sub_1B76C59D0(&qword_1EB99B608, &qword_1EB99B5F0, &qword_1B785AF68);
    result = swift_getWitnessTable(MEMORY[0x1E6968C00], v3, v4);
    atomic_store(result, &qword_1EB99B600);
  }

  return result;
}

unint64_t sub_1B76C5B14()
{
  result = qword_1EB99B638;
  if (!qword_1EB99B638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B630, &unk_1B785AFE0);
    v4[0] = sub_1B76C5BA0();
    v4[1] = sub_1B72D7CDC();
    result = swift_getWitnessTable(MEMORY[0x1E6968BA0], v3, v4);
    atomic_store(result, &qword_1EB99B638);
  }

  return result;
}

unint64_t sub_1B76C5BA0()
{
  result = qword_1EB99B640;
  if (!qword_1EB99B640)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B620, &qword_1B785AFB0);
    v4[0] = sub_1B76C59D0(&qword_1EB99B648, &qword_1EB99B618, &qword_1B785AFA8);
    v4[1] = sub_1B744B9D4();
    result = swift_getWitnessTable(MEMORY[0x1E6968BC0], v3, v4);
    atomic_store(result, &qword_1EB99B640);
  }

  return result;
}

uint64_t sub_1B76C5C48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B76C5D40;

  return v6(a1);
}

uint64_t sub_1B76C5D40()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B76C5E74, 0, 0);
}

uint64_t sub_1B76C5E74()
{
  v21 = v0;
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    sub_1B7201CA4();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = *v2;
  }

  else
  {

    v7 = sub_1B77FF308();
    v8 = [v7 domain];
    v9 = sub_1B7800868();
    v11 = v10;

    if (v9 == 0xD000000000000014 && 0x80000001B7876080 == v11)
    {
    }

    else
    {
      v13 = sub_1B78020F8();

      if ((v13 & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_14;
      }
    }

    v14 = v7;
    sub_1B76C6070(v14, &v20);
    v15 = v20;
    v16 = *(v0 + 32);
    if (v20 == 8)
    {
      swift_willThrow();

      goto LABEL_14;
    }

    sub_1B7201CA4();
    swift_allocError();
    *v17 = v15;
    swift_willThrow();

    v6 = v16;
  }

LABEL_14:
  v18 = *(v0 + 8);

  return v18();
}

void sub_1B76C6070(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1B7800868();
  v7 = v6;

  if (v5 == 0xD000000000000014 && 0x80000001B7876080 == v7)
  {
  }

  else
  {
    v9 = sub_1B78020F8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v10 = [a1 code];
  if (v10 == 2)
  {
    v12 = [a1 userInfo];
    v13 = sub_1B7800728();

    if (!*(v13 + 16) || (v14 = sub_1B724548C(0x7954617461444B46, 0xEA00000000006570), (v15 & 1) == 0))
    {

      goto LABEL_27;
    }

    sub_1B719BDE4(*(v13 + 56) + 32 * v14, v20);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_6:

LABEL_27:
      v11 = 8;
      goto LABEL_28;
    }

    if ((v18 != 0x73726564726FLL || v19 != 0xE600000000000000) && (sub_1B78020F8() & 1) == 0)
    {
      if (v18 == 0x6169636E616E6966 && v19 == 0xED0000617461446CLL)
      {

        v11 = 2;
        goto LABEL_28;
      }

      v17 = sub_1B78020F8();

      if (v17)
      {
        v11 = 2;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v11 = 0;
  }

  else if (v10 == 1)
  {

    v11 = 5;
  }

  else if (v10)
  {
    v16 = v10;

    if (v16 == 4)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    if (v16 == 3)
    {
      v11 = 3;
    }
  }

  else
  {

    v11 = 4;
  }

LABEL_28:
  *a2 = v11;
}

uint64_t FinanceError.errorCode.getter()
{
  if (*v0 - 3 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1B785B7F8[(*v0 - 3)];
  }
}

unint64_t FinanceError.errorUserInfo.getter()
{
  if (*v0 <= 3u)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = 0x7954617461444B46;
        v2 = inited + 32;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 48) = 0x646572436B6E6162;
        v3 = 0xEF736C6169746E65;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = 0x7954617461444B46;
        v2 = inited + 32;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 48) = 0x73726564726FLL;
        v3 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

    if (*v0 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7807CD0;
      *(inited + 32) = 0x7954617461444B46;
      v2 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = 0x6169636E616E6966;
      v3 = 0xED0000617461446CLL;
LABEL_12:
      *(inited + 56) = v3;
      v6 = sub_1B72018E0(inited);
      swift_setDeallocating();
      sub_1B72DD59C(v2);
      return v6;
    }
  }

  v4 = MEMORY[0x1E69E7CC0];

  return sub_1B72018E0(v4);
}

unint64_t FinanceError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000023;
    if (v1 == 6)
    {
      v5 = 0xD000000000000024;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 2)
    {
      v2 = 0xD00000000000002BLL;
    }

    v3 = 0xD000000000000024;
    if (*v0)
    {
      v3 = 0xD00000000000002ELL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t FinanceError.failureReason.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 <= 4)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000017;
      }

      return 0xD00000000000003BLL;
    }
  }

  else if (v2 != 5)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return 0xD000000000000061;
      }

      return 0xD00000000000003BLL;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_1B76C6710()
{
  v1 = *v0;
  v2 = 0x7473655261746164;
  v3 = 0x654474656C6C6177;
  v4 = 0x5264696C61766E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E776F6E6B6E75;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_1B76C67FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76C875C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76C6824(uint64_t a1)
{
  v2 = sub_1B76C7D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6860(uint64_t a1)
{
  v2 = sub_1B76C7D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C689C(uint64_t a1)
{
  v2 = sub_1B76C7F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C68D8(uint64_t a1)
{
  v2 = sub_1B76C7F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6914(uint64_t a1)
{
  v2 = sub_1B76C7EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6950(uint64_t a1)
{
  v2 = sub_1B76C7EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C698C(uint64_t a1)
{
  v2 = sub_1B76C7DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C69C8(uint64_t a1)
{
  v2 = sub_1B76C7DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6A04(uint64_t a1)
{
  v2 = sub_1B76C7E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6A40(uint64_t a1)
{
  v2 = sub_1B76C7E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6A7C(uint64_t a1)
{
  v2 = sub_1B76C7F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6AB8(uint64_t a1)
{
  v2 = sub_1B76C7F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6AF4(uint64_t a1)
{
  v2 = sub_1B76C7E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6B30(uint64_t a1)
{
  v2 = sub_1B76C7E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6B88()
{
  if (*v0 - 3 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1B785B7F8[(*v0 - 3)];
  }
}

unint64_t sub_1B76C6BBC()
{
  result = 0;
  v2 = *v0;
  if (v2 <= 4)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000017;
      }

      return 0xD00000000000003BLL;
    }
  }

  else if (v2 != 5)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return 0xD000000000000061;
      }

      return 0xD00000000000003BLL;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_1B76C6C78(uint64_t a1)
{
  v2 = sub_1B76C897C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B76C6CB4(uint64_t a1)
{
  v2 = sub_1B76C897C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t FinanceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B658, &qword_1B785B000);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B660, &qword_1B785B008);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B668, &qword_1B785B010);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B670, &qword_1B785B018);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B678, &qword_1B785B020);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B680, &qword_1B785B028);
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B688, &qword_1B785B030);
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C7D94();
  sub_1B78023F8();
  if (v20 > 4)
  {
    switch(v20)
    {
      case 5:
        v54 = 3;
        sub_1B76C7E90();
        v21 = v36;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v37;
        v23 = v38;
        goto LABEL_11;
      case 6:
        v55 = 4;
        sub_1B76C7E3C();
        v21 = v39;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v40;
        v23 = v41;
        goto LABEL_11;
      case 7:
        v56 = 5;
        sub_1B76C7DE8();
        v21 = v42;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v43;
        v23 = v44;
LABEL_11:
        (*(v24 + 8))(v21, v23);
        return (*(v48 + 8))(v19, v22);
    }

LABEL_15:
    v51 = 0;
    sub_1B76C7F8C();
    v30 = v33;
    v31 = v49;
    sub_1B7801ED8();
    v50 = v20;
    sub_1B762EC10();
    v32 = v35;
    sub_1B7801FC8();
    (*(v34 + 8))(v30, v32);
    return (*(v48 + 8))(v19, v31);
  }

  v26 = v45;
  v25 = v46;
  v27 = v47;
  if (v20 == 3)
  {
    v52 = 1;
    sub_1B76C7F38();
    v22 = v49;
    sub_1B7801ED8();
    (*(v26 + 8))(v14, v12);
    return (*(v48 + 8))(v19, v22);
  }

  if (v20 != 4)
  {
    goto LABEL_15;
  }

  v53 = 2;
  sub_1B76C7EE4();
  v28 = v11;
  v22 = v49;
  sub_1B7801ED8();
  (*(v25 + 8))(v28, v27);
  return (*(v48 + 8))(v19, v22);
}

uint64_t FinanceError.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6C8, &qword_1B785B038);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v43 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6D0, &qword_1B785B040);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v43 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6D8, &qword_1B785B048);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v59 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6E0, &qword_1B785B050);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6E8, &qword_1B785B058);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6F0, &qword_1B785B060);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6F8, &unk_1B785B068);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B76C7D94();
  v19 = v62;
  sub_1B78023C8();
  if (!v19)
  {
    v20 = v13;
    v44 = v11;
    v21 = v59;
    v22 = v60;
    v62 = v15;
    v23 = v61;
    v45 = v14;
    v24 = sub_1B7801E98();
    v25 = (2 * *(v24 + 16)) | 1;
    v64 = v24;
    v65 = v24 + 32;
    v66 = 0;
    v67 = v25;
    v26 = sub_1B721CE5C();
    if (v26 == 6 || v66 != v67 >> 1)
    {
      v28 = sub_1B7801B18();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v30 = &type metadata for FinanceError;
      v31 = v45;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v62 + 8))(v17, v31);
      swift_unknownObjectRelease();
    }

    else if (v26 > 2u)
    {
      v33 = v62;
      if (v26 == 3)
      {
        v68 = 3;
        sub_1B76C7E90();
        v39 = v21;
        v40 = v45;
        sub_1B7801D38();
        (*(v49 + 8))(v39, v52);
        (*(v33 + 8))(v17, v40);
        swift_unknownObjectRelease();
        *v23 = 5;
      }

      else
      {
        v34 = v45;
        if (v26 == 4)
        {
          v68 = 4;
          sub_1B76C7E3C();
          v35 = v58;
          sub_1B7801D38();
          (*(v53 + 8))(v35, v55);
          (*(v33 + 8))(v17, v34);
          swift_unknownObjectRelease();
          v36 = 6;
        }

        else
        {
          v68 = 5;
          sub_1B76C7DE8();
          sub_1B7801D38();
          (*(v54 + 8))(v22, v56);
          (*(v33 + 8))(v17, v34);
          swift_unknownObjectRelease();
          v36 = 7;
        }

        *v61 = v36;
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v68 = 1;
        sub_1B76C7F38();
        v27 = v45;
        sub_1B7801D38();
        (*(v47 + 8))(v10, v48);
        (*(v62 + 8))(v17, v27);
        swift_unknownObjectRelease();
        *v23 = 3;
      }

      else
      {
        v68 = 2;
        sub_1B76C7EE4();
        v41 = v57;
        v42 = v45;
        sub_1B7801D38();
        (*(v50 + 8))(v41, v51);
        (*(v62 + 8))(v17, v42);
        swift_unknownObjectRelease();
        *v23 = 4;
      }
    }

    else
    {
      v68 = 0;
      sub_1B76C7F8C();
      v37 = v45;
      sub_1B7801D38();
      sub_1B762F0C0();
      v38 = v44;
      sub_1B7801E48();
      (*(v46 + 8))(v20, v38);
      (*(v62 + 8))(v17, v37);
      swift_unknownObjectRelease();
      *v23 = v68;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

BOOL _s10FinanceKit0A5ErrorO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 4)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    if (v2 == 4)
    {
      return v3 == 4;
    }
  }

  else
  {
    switch(v2)
    {
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
      case 7u:
        return v3 == 7;
    }
  }

  if ((v3 - 3) < 5)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1B76C7D94()
{
  result = qword_1EB99B690;
  if (!qword_1EB99B690)
  {
    result = swift_getWitnessTable(byte_1B785B7A0, &type metadata for FinanceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B690);
  }

  return result;
}

unint64_t sub_1B76C7DE8()
{
  result = qword_1EB99B698;
  if (!qword_1EB99B698)
  {
    result = swift_getWitnessTable(aI_52, &type metadata for FinanceError.HistoryTokenInvalidCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B698);
  }

  return result;
}

unint64_t sub_1B76C7E3C()
{
  result = qword_1EB99B6A0;
  if (!qword_1EB99B6A0)
  {
    result = swift_getWitnessTable(byte_1B785B700, &type metadata for FinanceError.InvalidRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B6A0);
  }

  return result;
}

unint64_t sub_1B76C7E90()
{
  result = qword_1EB99B6A8;
  if (!qword_1EB99B6A8)
  {
    result = swift_getWitnessTable(asc_1B785B6B0, &type metadata for FinanceError.WalletDeletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B6A8);
  }

  return result;
}

unint64_t sub_1B76C7EE4()
{
  result = qword_1EB99B6B0;
  if (!qword_1EB99B6B0)
  {
    result = swift_getWitnessTable(aY_45, &type metadata for FinanceError.EntitlementMissingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B6B0);
  }

  return result;
}

unint64_t sub_1B76C7F38()
{
  result = qword_1EB99B6B8;
  if (!qword_1EB99B6B8)
  {
    result = swift_getWitnessTable(byte_1B785B610, &type metadata for FinanceError.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B6B8);
  }

  return result;
}

unint64_t sub_1B76C7F8C()
{
  result = qword_1EB99B6C0;
  if (!qword_1EB99B6C0)
  {
    result = swift_getWitnessTable(byte_1B785B5C0, &type metadata for FinanceError.DataRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99B6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinanceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FinanceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}