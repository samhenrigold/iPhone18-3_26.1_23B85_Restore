uint64_t sub_1DB31A114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D38, &qword_1DB50FA18);
  v38 = v4;
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1DB314BBC(v25, v26, v27);
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_1DB31A3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB8, &unk_1DB50FEA0);
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1DB30C200((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1DB314C3C(v23, &v36);
        sub_1DB300B14(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1DB50B270();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1DB30C200(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1DB31A6AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DC8, &qword_1DB50FAA8);
  result = sub_1DB50B600();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1DB30C200(v21, v30);
      }

      else
      {
        sub_1DB300B14(v21, v30);
      }

      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v20);
      result = sub_1DB50BD30();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1DB30C200(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31A940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JetPackAsset(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D18, &unk_1DB50F9F0);
  v40 = v4;
  result = sub_1DB50B600();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DB314B58(v28, v41);
      }

      else
      {
        sub_1DB314AF4(v28, v41);
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DB314B58(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
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

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DB31ACA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_1DB50B600();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v26 = (*(v7 + 56) + 40 * v22);
      if (v35)
      {
        sub_1DB2FEA0C(v26, v36);
      }

      else
      {
        sub_1DB30BE90(v26, v36);
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      result = sub_1DB2FEA0C(v36, *(v9 + 56) + 40 * v17);
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
  return result;
}

uint64_t sub_1DB31AF60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD8, &qword_1DB50FAB8);
  v30 = v4;
  result = sub_1DB50B600();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v20);
      result = sub_1DB50BD30();
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

    if ((v30 & 1) == 0)
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
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31B1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB0, &unk_1DB50FA90);
  v33 = v4;
  result = sub_1DB50B600();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1DB2FEA0C(v24, v34);
      }

      else
      {
        sub_1DB30BE90(v24, v34);
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      result = sub_1DB2FEA0C(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_1DB31B4B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D90, &unk_1DB50FA70);
  v37 = v4;
  result = sub_1DB50B600();
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

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB31B774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D88, &unk_1DB50FE80);
  v32 = v4;
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v34 = *(*(v5 + 56) + 16 * v19);
      if ((v32 & 1) == 0)
      {

        sub_1DB30C1AC(v34, *(&v34 + 1));
      }

      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20 + 40;
        do
        {

          sub_1DB50A740();

          v22 += 16;
          --v21;
        }

        while (v21);
      }

      result = sub_1DB50BD30();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v34;
      ++*(v7 + 16);
      v5 = v31;
      v12 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31BA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D80, &unk_1DB50FA60);
  v33 = v4;
  result = sub_1DB50B600();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1DB30C1AC(v34, *(&v34 + 1));
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31BD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D28, &qword_1DB50FA08);
  v34 = v4;
  result = sub_1DB50B600();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

uint64_t sub_1DB31BFC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D50, &qword_1DB50FA30);
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1DB314C3C(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1DB50B270();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31C274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD0, &qword_1DB50FAB0);
  v44 = v4;
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = *(v5 + 56) + 48 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v46 = *(v26 + 24);
      v30 = *(v26 + 32);
      v45 = *(v26 + 40);
      if ((v44 & 1) == 0)
      {
      }

      v48 = v29;
      v31 = v28;
      v32 = v27;
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = *(v43 + 56) + 48 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      v12 = v47;
      *(v19 + 16) = v16;
      *(v19 + 24) = v46;
      *(v19 + 32) = v17;
      *(v19 + 40) = v45;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB31C59C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D40, &qword_1DB50FA20);
  v34 = v4;
  result = sub_1DB50B600();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_1DB31C83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DF8, &qword_1DB50FEB0);
  v38 = v4;
  result = sub_1DB50B600();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v40 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v12 = v39;
      v16[2] = v40;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_1DB31CB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_1DB50A1D0();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F48, &qword_1DB50FEB8);
  v40 = v4;
  result = sub_1DB50B600();
  v9 = result;
  if (*(v7 + 16))
  {
    v38[0] = v2;
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
    v38[1] = v5 + 16;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 48) + 40 * v25;
      if (v40)
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v45 = *(v26 + 32);
        v43 = v27;
        v44 = v28;
        v29 = *(v39 + 72);
        (*(v39 + 32))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      else
      {
        sub_1DB314C3C(v26, &v43);
        v29 = *(v39 + 72);
        (*(v39 + 16))(v41, *(v7 + 56) + v29 * v25, v42);
      }

      result = sub_1DB50B270();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v9 + 48) + 40 * v18;
      v20 = v43;
      v21 = v44;
      *(v19 + 32) = v45;
      *v19 = v20;
      *(v19 + 16) = v21;
      result = (*v16)(*(v9 + 56) + v29 * v18, v41, v42);
      ++*(v9 + 16);
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38[0];
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38[0];
    if (v37 >= 64)
    {
      bzero((v7 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DB31CEB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  result = sub_1DB50B600();
  v9 = result;
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
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v7 + 56) + 24 * v23;
      v39 = *v27;
      v28 = *(v27 + 16);
      if ((v38 & 1) == 0)
      {
      }

      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
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
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v9 + 56) + 24 * v17;
      *v19 = v39;
      *(v19 + 16) = v28;
      ++*(v9 + 16);
      v7 = v37;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
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
  return result;
}

_OWORD *sub_1DB31D16C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB306160(a2, a3);
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
      sub_1DB3112DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB319570(v16, a4 & 1);
    v11 = sub_1DB306160(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
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

    return sub_1DB30C200(a1, v22);
  }

  else
  {
    sub_1DB31E700(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1DB31D2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DB306160(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DB319AD4(v16, a4 & 1);
      result = sub_1DB306160(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DB3115E8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1DB31D420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DB306160(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DB31A114(v20, a6 & 1);
      v15 = sub_1DB306160(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DB3119D4();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_1DB31EB94(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

_OWORD *sub_1DB31D5C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DB30EDA8(a2);
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
      sub_1DB311B6C();
      goto LABEL_7;
    }

    sub_1DB31A3F4(v13, a3 & 1);
    v19 = sub_1DB30EDA8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DB314C3C(a2, v21);
      return sub_1DB31E82C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1DB50BC20();
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
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1DB30C200(a1, v17);
}

uint64_t sub_1DB31D714(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DB306160(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DB311E8C();
      goto LABEL_7;
    }

    sub_1DB31A940(v15, a4 & 1);
    v22 = sub_1DB306160(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DB50BC20();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for JetPackAsset(0) - 8) + 72) * v12;

    return sub_1DB31EB30(a1, v20);
  }

LABEL_13:
  sub_1DB31E910(v12, a2, a3, a1, v18);
}

unint64_t sub_1DB31D878(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1DB30EE50(a2);
  v11 = *(v8 + 16);
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
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DB31AF60(v14, a3 & 1);
      result = sub_1DB30EE50(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DB31227C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
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

uint64_t sub_1DB31D9C4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB306160(a2, a3);
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
      sub_1DB3123D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB31B1F0(v16, a4 & 1);
    v11 = sub_1DB306160(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1DB2FEA0C(a1, v22);
  }

  else
  {
    sub_1DB31E9A8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1DB31DB18(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DB30EE50(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DB311D10();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DB31A6AC(v14, a3 & 1);
    v9 = sub_1DB30EE50(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_1DB30C200(a1, v20);
  }

  else
  {

    return sub_1DB31E8A8(v9, a2, a1, v19);
  }
}

uint64_t sub_1DB31DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DB306160(a3, a4);
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
      sub_1DB31B4B4(v18, a5 & 1);
      v13 = sub_1DB306160(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DB312580();
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

uint64_t sub_1DB31DDCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB30EFC0(a3);
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
      sub_1DB31B774(v16, a4 & 1);
      v11 = sub_1DB30EFC0(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DB3126F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    v23 = *v22;
    v24 = v22[1];
    *v22 = a1;
    v22[1] = a2;

    return sub_1DB30C158(v23, v24);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v26 = (v21[7] + 16 * v11);
  *v26 = a1;
  v26[1] = a2;
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

uint64_t sub_1DB31DF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DB306160(a3, a4);
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
      sub_1DB31BA68(v18, a5 & 1);
      v13 = sub_1DB306160(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DB312874();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_1DB30C158(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_1DB31E0C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DB30EDA8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DB31BFC4(v13, a3 & 1);
      v18 = sub_1DB30EDA8(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1DB312B60();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1DB314C3C(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_1DB31E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1DB306160(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DB31CEB4(v20, a6 & 1, &qword_1ECC42D48, &qword_1DB50FA28);
      result = sub_1DB306160(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1DB312EBC();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v27 = (v25[6] + 16 * result);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * result);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v30;
}

unint64_t sub_1DB31E3EC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DB306160(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DB31C59C(v16, a4 & 1);
      result = sub_1DB306160(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DB312ED0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1DB31E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DB30ED08(a2, a3, a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DB31C83C(v20, a6 & 1);
      v15 = sub_1DB30ED08(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1DB50BC20();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1DB313038();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
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

_OWORD *sub_1DB31E700(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DB30C200(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1DB31E76C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DB50B560();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1DB31E82C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1DB31E8A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1DB31E910(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for JetPackAsset(0);
  result = sub_1DB314B58(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DB31E9A8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DB2FEA0C(a4, a5[7] + 40 * a1);
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

unint64_t sub_1DB31EA18(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB31EA98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DB31EAE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB31EB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB31EB94(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return v3;
}

uint64_t decodeActionModel<A, B>(using:container:forKey:)@<X0>(uint64_t a2@<X3>, uint64_t a4@<X5>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for CodeByKind(0, a2, *(a4 + 8), a2);
  sub_1DB50B7C0();
  swift_getWitnessTable();
  sub_1DB50B710();
  if (v6)
  {
    sub_1DB50B6D0();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = sub_1DB50BDE0();
    sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v10, &v18);

    __swift_destroy_boxed_opaque_existential_0(v15);
    sub_1DB30C4B8(&v18, v15, &qword_1ECC42E48, &qword_1DB50FB90);
    v11 = v16;
    if (v16)
    {
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      MetatypeMetadata = swift_getMetatypeMetadata();
      (*(v12 + 8))(MetatypeMetadata, v6, v11, v12);

      sub_1DB30623C(&v18, &qword_1ECC42E48, &qword_1DB50FB90);
      result = __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_1DB30623C(&v18, &qword_1ECC42E48, &qword_1DB50FB90);

      result = sub_1DB30623C(v15, &qword_1ECC42E48, &qword_1DB50FB90);
    }

    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else if (*(&v19 + 1))
  {
    sub_1DB30BE90(&v18, a6);
    return (*(*(v8 - 8) + 8))(&v18, v8);
  }

  else
  {
    v14 = sub_1DB50B120();
    result = (*(*(v14 - 8) + 8))(&v18, v14);
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB31EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A6A4(a1, a2, v9);
  if (*(a3 + 16) && (v10 = sub_1DB30EDEC(v9), (v11 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v10, v40);
    (*(v7 + 8))(v9, v6);
    sub_1DB300B14(v40, &v35);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v40);
      return LOBYTE(v38[0]);
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v13 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50F8D0;
    v39 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001DB529860;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F58, &unk_1DB50FF00);
    v38[0] = a1;
    v38[1] = a2;
    sub_1DB30C4B8(v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v34, &v35);
    v37 = 0;
    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
      v39 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v35;
    v21 = v36;
    v19[64] = v37;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v39 = v16;
    sub_1DB30623C(v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22._countAndFlagsBits = 96;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    v33 = xmmword_1DB50EE90;
    *(v23 + 16) = xmmword_1DB50EE90;
    v24 = MEMORY[0x1E69E6158];
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000027;
    *(&v35 + 1) = 0x80000001DB5295C0;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v35, v23 + 32);
    *(v23 + 64) = 0;
    *(v14 + 40) = v23;
    v25 = sub_1DB50AF40();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v26 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v14;
      *(&v35 + 1) = sub_1DB31485C;
      *&v36 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v29 = sub_1DB50A5E0();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v32 = swift_allocObject();
      *(v32 + 16) = v33;
      *(v32 + 56) = v24;
      *(v32 + 64) = sub_1DB31494C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v13, v25, v32);
    }

    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return 2;
}

uint64_t sub_1DB31F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A6B8(a1, a2, v9);
  if (*(a3 + 16) && (v10 = sub_1DB30EDEC(v9), (v11 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v10, v40);
    (*(v7 + 8))(v9, v6);
    sub_1DB300B14(v40, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v40);
      return v38[0];
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v13 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50F8D0;
    v39 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001DB529860;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E80, &unk_1DB5118E0);
    v38[0] = a1;
    v38[1] = a2;
    sub_1DB30C4B8(v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v34, &v35);
    v37 = 0;
    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
      v39 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v35;
    v21 = v36;
    v19[64] = v37;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v39 = v16;
    sub_1DB30623C(v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22._countAndFlagsBits = 96;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    v33 = xmmword_1DB50EE90;
    *(v23 + 16) = xmmword_1DB50EE90;
    v24 = MEMORY[0x1E69E6158];
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000027;
    *(&v35 + 1) = 0x80000001DB5295C0;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v35, v23 + 32);
    *(v23 + 64) = 0;
    *(v14 + 40) = v23;
    v25 = sub_1DB50AF40();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v26 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v14;
      *(&v35 + 1) = sub_1DB314CB0;
      *&v36 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v29 = sub_1DB50A5E0();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v32 = swift_allocObject();
      *(v32 + 16) = v33;
      *(v32 + 56) = v24;
      *(v32 + 64) = sub_1DB31494C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v13, v25, v32);
    }

    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

double sub_1DB31F900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DB50B560();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DB34A8D8(a1, a2, v11);
  if (*(a3 + 16) && (v12 = sub_1DB30EDEC(v11), (v13 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v12, v42);
    (*(v9 + 8))(v11, v8);
    sub_1DB300B14(v42, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E90, &unk_1DB50FF30);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v42);
      sub_1DB2FEA0C(&v38, a4);
      return result;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1DB30623C(&v38, &qword_1ECC42E48, &qword_1DB50FB90);
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v15 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DB50F8D0;
    v37 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v17._object = 0x80000001DB529860;
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E98, &unk_1DB50FB70);
    v41[0] = a1;
    v41[1] = a2;
    sub_1DB30C4B8(v41, v36, &qword_1ECC426B0, &qword_1DB50EEB0);
    v38 = 0u;
    v39 = 0u;

    sub_1DB301D4C(v36, &v38);
    LOBYTE(v40) = 0;
    v18 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
      v37 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v38;
    v23 = v39;
    v21[64] = v40;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v37 = v18;
    sub_1DB30623C(v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v24._countAndFlagsBits = 96;
    v24._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v16 + 32) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v25 = swift_allocObject();
    v35 = xmmword_1DB50EE90;
    *(v25 + 16) = xmmword_1DB50EE90;
    v26 = MEMORY[0x1E69E6158];
    *(&v39 + 1) = MEMORY[0x1E69E6158];
    *&v38 = 0xD000000000000027;
    *(&v38 + 1) = 0x80000001DB5295C0;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1DB301D4C(&v38, v25 + 32);
    *(v25 + 64) = 0;
    *(v16 + 40) = v25;
    v27 = sub_1DB50AF40();
    if (os_log_type_enabled(v15, v27))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v28 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v38 = v16;
      *(&v38 + 1) = sub_1DB314CB0;
      *&v39 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v31 = sub_1DB50A5E0();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v34 = swift_allocObject();
      *(v34 + 16) = v35;
      *(v34 + 56) = v26;
      *(v34 + 64) = sub_1DB31494C();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v15, v27, v34);
    }

    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1DB31FE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A8EC(a1, a2, v9);
  if (*(a3 + 16) && (v10 = sub_1DB30EDEC(v9), (v11 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v10, v40);
    (*(v7 + 8))(v9, v6);
    sub_1DB300B14(v40, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E58, &unk_1DB50FF10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v40);
      return v38[0];
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v13 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50F8D0;
    v39 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001DB529860;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E60, &qword_1DB50FB58);
    v38[0] = a1;
    v38[1] = a2;
    sub_1DB30C4B8(v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
    v35 = 0u;
    v36 = 0u;

    sub_1DB301D4C(v34, &v35);
    v37 = 0;
    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
      v39 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v35;
    v21 = v36;
    v19[64] = v37;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v39 = v16;
    sub_1DB30623C(v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22._countAndFlagsBits = 96;
    v22._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    v33 = xmmword_1DB50EE90;
    *(v23 + 16) = xmmword_1DB50EE90;
    v24 = MEMORY[0x1E69E6158];
    *(&v36 + 1) = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000027;
    *(&v35 + 1) = 0x80000001DB5295C0;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v35, v23 + 32);
    *(v23 + 64) = 0;
    *(v14 + 40) = v23;
    v25 = sub_1DB50AF40();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v26 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v14;
      *(&v35 + 1) = sub_1DB314CB0;
      *&v36 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v29 = sub_1DB50A5E0();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v32 = swift_allocObject();
      *(v32 + 16) = v33;
      *(v32 + 56) = v24;
      *(v32 + 64) = sub_1DB31494C();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v13, v25, v32);
    }

    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t encodeActionModel<A, B>(_:using:container:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DB30C4B8(a1, &v15, &qword_1ECC42F50, &unk_1DB513AE0);
  if (!v16)
  {
    return sub_1DB30623C(&v15, &qword_1ECC42F50, &unk_1DB513AE0);
  }

  sub_1DB2FEA0C(&v15, v17);
  sub_1DB30BE90(v17, v14);
  v10 = *(a7 + 8);
  CodeByKind.init(wrappedValue:)(v14, &v15);
  sub_1DB50B8C0();
  v12 = type metadata accessor for CodeByKind(0, a5, v10, v11);
  swift_getWitnessTable();
  sub_1DB50B8A0();
  (*(*(v12 - 8) + 8))(&v15, v12);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_1DB320524()
{
  result = sub_1DB3134B0(MEMORY[0x1E69E7CC0]);
  qword_1ECC678A8 = result;
  return result;
}

uint64_t sub_1DB32054C()
{
  if (qword_1ECC41FC8 != -1)
  {
    swift_once();
  }
}

ValueMetadata *actionTableFromUserInfo(_:)(uint64_t a1)
{
  result = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, a1);
  if (!result)
  {
    return &type metadata for EmptyActionKindTable;
  }

  return result;
}

uint64_t sub_1DB320608@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1DB3171C0(a1, &v10);
  v8[0] = v10;
  v8[1] = v11;
  v9 = v12;
  if (*(&v11 + 1))
  {
    v3 = __swift_project_boxed_opaque_existential_1(v8, *(&v11 + 1));
    sub_1DB300B14(v3, v7);
    sub_1DB315520();
    if (swift_dynamicCast())
    {

      result = __swift_destroy_boxed_opaque_existential_0(v8);
      v5 = 1;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      v5 = 0;
    }
  }

  else
  {
    result = sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

double sub_1DB3206E0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  *&result = sub_1DB38E4D4(v6, a2, a3).n128_u64[0];
  return result;
}

double sub_1DB320744@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  return sub_1DB38EA40(v6, a2, a3);
}

void sub_1DB3207A8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB3171C0(a1, v5);

  sub_1DB38FEFC(v5, a2, a3);
}

double sub_1DB32080C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  return sub_1DB38F7C8(v6, a2, a3);
}

uint64_t sub_1DB3208A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1DB30C4B8(a1, &v32, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!*(&v33 + 1))
  {
    sub_1DB3151CC(a1);

    v13 = &qword_1ECC42E38;
    v14 = &qword_1DB50FB80;
    v15 = &v32;
LABEL_5:
    sub_1DB30623C(v15, v13, v14);
    return MEMORY[0x1E69E7CC0];
  }

  v12 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  sub_1DB300B14(v12, &v28);
  sub_1DB315520();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&v32);
    JSONObject.array.getter(&v28);
    if (*(&v29 + 1))
    {
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v17 = sub_1DB315220(&v32, &v28);
      MEMORY[0x1EEE9AC00](v17);
      v27[2] = a2;
      v18 = *(&v29 + 1);
      v19 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      v20 = (*(v19 + 56))(a3, v27, a4, v18, v19);

      sub_1DB3151CC(a1);
      sub_1DB314F08(&v32);
      sub_1DB314F08(&v28);
      return v20;
    }

    sub_1DB30623C(&v28, &qword_1ECC42E28, &qword_1DB50FB20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, &v32);

    sub_1DB30C4B8(&v32, &v28, &qword_1ECC42E48, &qword_1DB50FB90);
    v22 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v23 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      sub_1DB315178();
      v24 = swift_allocError();
      v25 = MEMORY[0x1E69E7CC0];
      *v26 = v21;
      v26[1] = v25;
      v26[2] = 0;
      v26[3] = 0;
      (*(v23 + 8))(v21, v24, v22, v23);
      sub_1DB3151CC(a1);
      sub_1DB30623C(&v32, &qword_1ECC42E48, &qword_1DB50FB90);

      __swift_destroy_boxed_opaque_existential_0(&v28);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1DB3151CC(a1);
    sub_1DB30623C(&v32, &qword_1ECC42E48, &qword_1DB50FB90);
    v15 = &v28;
    v13 = &qword_1ECC42E48;
    v14 = &qword_1DB50FB90;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0(&v32);
  sub_1DB3151CC(a1);

  return MEMORY[0x1E69E7CC0];
}

uint64_t MetricsData.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v18);
  sub_1DB30C4B8(v18, v16, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v17)
  {

    sub_1DB3151CC(v18);
    sub_1DB30623C(v16, &qword_1ECC42E38, &qword_1DB50FB80);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
LABEL_7:
    sub_1DB30623C(&v19, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1DB408B14(&v19);
  sub_1DB3151CC(v18);
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (!*(&v20 + 1))
  {

    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  v16[0] = 0;
  sub_1DB50A4A0();
  v6 = v16[0];
  if (v16[0])
  {
    sub_1DB317740(&v19);
    JSONObject.subscript.getter(0x6369706F74, 0xE500000000000000, &v19);
    v22 = JSONObject.string.getter();
    v15 = v7;
    sub_1DB3151CC(&v19);
    JSONObject.subscript.getter(0x6C46646C756F6873, 0xEB00000000687375, &v19);
    v14 = JSONObject.BOOL.getter();
    sub_1DB3151CC(&v19);
    JSONObject.subscript.getter(0x6E6964756C636E69, 0xEF73646C65694667, &v19);

    v8 = sub_1DB3208A0(&v19, v5, sub_1DB325AB0, &type metadata for MetricsFieldInclusionRequest, &qword_1ECC42FD0, &qword_1DB50FF70);
    v9 = sub_1DB324A54(v8, sub_1DB325A5C, &type metadata for MetricsFieldInclusionRequest, sub_1DB4B75FC);

    JSONObject.subscript.getter(0x6E6964756C637865, 0xEF73646C65694667, &v19);
    v10 = sub_1DB3208A0(&v19, v5, sub_1DB325A30, &type metadata for MetricsFieldExclusionRequest, &qword_1ECC42FA8, &qword_1DB50FF60);
    v11 = sub_1DB324A54(v10, sub_1DB3259DC, &type metadata for MetricsFieldExclusionRequest, sub_1DB4B75CC);

    result = sub_1DB3151CC(a1);
    *a3 = v22;
    *(a3 + 8) = v15;
    *(a3 + 16) = v14 & 1;
    *(a3 + 24) = v6;
    *(a3 + 32) = v9;
    *(a3 + 40) = v11;
    return result;
  }

  sub_1DB317740(&v19);
LABEL_8:
  sub_1DB315178();
  swift_allocError();
  *v13 = xmmword_1DB50FF40;
  *(v13 + 16) = 0x20000001F56F19C0uLL;
  *(v13 + 24) = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MetricsData.topic.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsData.fields.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MetricsData.includingFields.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MetricsData.excludingFields.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t MetricsData.Configuration.init(defaultTopic:defaultIncludingFields:defaultExcludingFields:shouldFlush:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static MetricsData.makeMetricsBackClickData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2[1];
  v29 = *a2;
  v31 = a2[2];
  v32 = a2[3];
  v30 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x79546E6F69746361;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 72) = v6;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = 1801675106;
  *(inited + 56) = 0xE400000000000000;

  v7 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = a1;
  sub_1DB314534(v7, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v33);

  v9 = v33;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1DB50F8D0;
  *(v10 + 32) = 0x6449746567726174;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = 1801675106;
  *(v10 + 56) = 0xE400000000000000;
  *(v10 + 72) = v6;
  *(v10 + 80) = 0x7954746567726174;
  *(v10 + 120) = v6;
  *(v10 + 88) = 0xEA00000000006570;
  *(v10 + 96) = 0x6E6F74747562;
  *(v10 + 104) = 0xE600000000000000;
  v11 = sub_1DB3135C0(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v9;
  sub_1DB314534(v11, sub_1DB313340, 0, v12, &v33);

  v13 = v33;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  *(v14 + 32) = 0x707954746E657665;
  v15 = v14 + 32;
  *(v14 + 72) = v6;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = 0x6B63696C63;
  *(v14 + 56) = 0xE500000000000000;
  v16 = sub_1DB3135C0(v14);
  swift_setDeallocating();
  sub_1DB30623C(v15, &unk_1ECC46BD0, &qword_1DB519760);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v13;
  sub_1DB314534(v16, sub_1DB313340, 0, v17, &v33);

  v18 = v33;
  v19 = sub_1DB324C04(v9, v29, v28);
  v21 = v20;
  if (v30)
  {
    v22 = v30(v9);
  }

  else
  {
    v22 = 0;
  }

  if (*(v31 + 16) && (v23 = sub_1DB314CBC(), (v24 & 1) != 0))
  {
    v25 = *(*(v31 + 56) + 8 * v23);

    if (!*(v32 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
    if (!*(v32 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1DB314CBC();
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = v25;
  *(a3 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageData(fields:timingMetrics:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = a2[6];
  v11 = *(a2 + 56);
  v12 = a2[8];
  v13 = *(a2 + 72);
  v40 = a3[1];
  v41 = *a3;
  v43 = a3[2];
  v44 = a3[3];
  v42 = a3[4];

  v14 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v48 = v14;
  if (v6)
  {
    v15 = v14;
    v47 = MEMORY[0x1E69E6158];
    *&v46 = v7;
    *(&v46 + 1) = v6;
    sub_1DB30C200(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v45, 0xD000000000000014, 0x80000001DB528AB0, isUniquelyReferenced_nonNull_native);
    v48 = v15;
  }

  else
  {
    sub_1DB30F708(0xD000000000000014, 0x80000001DB528AB0, &v46);
    sub_1DB30623C(&v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v17 = MEMORY[0x1E69E63B0];
  if (v9)
  {
    sub_1DB30F708(0xD000000000000010, 0x80000001DB5298D0, &v46);
    sub_1DB30623C(&v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    v47 = MEMORY[0x1E69E63B0];
    *&v46 = v8;
    sub_1DB30C200(&v46, v45);
    v18 = v48;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v45, 0xD000000000000010, 0x80000001DB5298D0, v19);
    v48 = v18;
  }

  if (v11)
  {
    sub_1DB30F708(0xD000000000000011, 0x80000001DB5298F0, &v46);
    sub_1DB30623C(&v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    v47 = v17;
    *&v46 = v10;
    sub_1DB30C200(&v46, v45);
    v20 = v48;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v45, 0xD000000000000011, 0x80000001DB5298F0, v21);
    v48 = v20;
  }

  if (v13)
  {
    sub_1DB30F708(0x65736E6F70736572, 0xEF656D6954646E45, &v46);
    sub_1DB30623C(&v46, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22 = v48;
  }

  else
  {
    v47 = v17;
    *&v46 = v12;
    sub_1DB30C200(&v46, v45);
    v22 = v48;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v45, 0x65736E6F70736572, 0xEF656D6954646E45, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = a1;
  sub_1DB314534(v22, sub_1DB313340, 0, v24, &v46);

  v25 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1701273968;
  *(inited + 56) = 0xE400000000000000;
  v28 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v27, &unk_1ECC46BD0, &qword_1DB519760);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v25;
  sub_1DB314534(v28, sub_1DB313340, 0, v29, &v46);

  v30 = v46;
  v31 = sub_1DB324C04(a1, v41, v40);
  v33 = v32;
  if (v42)
  {
    v34 = v42(a1);
  }

  else
  {
    v34 = 0;
  }

  if (*(v43 + 16) && (v35 = sub_1DB314CBC(), (v36 & 1) != 0))
  {
    v37 = *(*(v43 + 56) + 8 * v35);

    if (!*(v44 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v44 + 16))
    {
LABEL_23:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_24;
    }
  }

  sub_1DB314CBC();
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  *a4 = v31;
  *(a4 + 8) = v33;
  *(a4 + 16) = v34 & 1;
  *(a4 + 24) = v30;
  *(a4 + 32) = v37;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsSearchData(term:targetType:actionType:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v42 = a11[1];
  v43 = *a11;
  v45 = a11[2];
  v46 = a11[3];
  v44 = a11[4];
  v18 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v19 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69E6158];
  *&v48 = a1;
  *(&v48 + 1) = a2;
  sub_1DB30C200(&v48, v47);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v47, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v49 = v19;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  sub_1DB30C200(&v48, v47);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v47, 0x7954746567726174, 0xEA00000000006570, v21);
  v49 = v19;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  sub_1DB30C200(&v48, v47);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v47, 0x79546E6F69746361, 0xEA00000000006570, v22);
  if (a8)
  {
    v49 = v19;
    *&v48 = a7;
    *(&v48 + 1) = a8;
    sub_1DB30C200(&v48, v47);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v47, 0x72556E6F69746361, 0xE90000000000006CLL, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v48 = a10;
  sub_1DB314534(v18, sub_1DB313340, 0, v24, &v48);

  v25 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 72) = v19;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x686372616573;
  *(inited + 56) = 0xE600000000000000;
  v28 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v27, &unk_1ECC46BD0, &qword_1DB519760);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v48 = v25;
  sub_1DB314534(v28, sub_1DB313340, 0, v29, &v48);

  v30 = v48;
  v31 = sub_1DB324C04(a10, v43, v42);
  v33 = v32;
  if (v44)
  {
    v34 = v44(a10);
  }

  else
  {
    v34 = 0;
  }

  if (*(v45 + 16) && (v35 = sub_1DB314CBC(), (v36 & 1) != 0))
  {
    v37 = *(*(v45 + 56) + 8 * v35);

    if (!*(v46 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v46 + 16))
    {
LABEL_13:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_14;
    }
  }

  sub_1DB314CBC();
  if ((v38 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a9 = v31;
  *(a9 + 8) = v33;
  *(a9 + 16) = v34 & 1;
  *(a9 + 24) = v30;
  *(a9 + 32) = v37;
  *(a9 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsImpressionsData(fields:configuration:impressionsEventVersion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2[1];
  v28 = *a2;
  v29 = a2[2];
  v30 = a2[3];
  v7 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6973736572706D69;
  *(inited + 16) = xmmword_1DB50F8D0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEF65756575516E6FLL;
  strcpy((inited + 48), "data-metrics");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = v9;
  strcpy((inited + 80), "eventVersion");
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a3;
  v10 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = a1;
  sub_1DB314534(v10, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v31);

  v12 = v31;
  v13 = swift_initStackObject();
  *(v13 + 32) = 0x707954746E657665;
  v14 = v13 + 32;
  *(v13 + 16) = xmmword_1DB50EE90;
  *(v13 + 72) = v9;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 48) = 0x6973736572706D69;
  *(v13 + 56) = 0xEB00000000736E6FLL;
  v15 = sub_1DB3135C0(v13);
  swift_setDeallocating();
  sub_1DB30623C(v14, &unk_1ECC46BD0, &qword_1DB519760);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v12;
  sub_1DB314534(v15, sub_1DB313340, 0, v16, &v31);

  v17 = v31;
  v18 = sub_1DB324C04(a1, v28, v27);
  v20 = v19;
  if (v7)
  {
    v21 = v7(a1);
  }

  else
  {
    v21 = 0;
  }

  if (*(v29 + 16) && (v22 = sub_1DB314CBC(), (v23 & 1) != 0))
  {
    v24 = *(*(v29 + 56) + 8 * v22);

    if (!*(v30 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
    if (!*(v30 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1DB314CBC();
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 16) = v21 & 1;
  *(a4 + 24) = v17;
  *(a4 + 32) = v24;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsMediaData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v25 = *a2;
  v26 = a2[3];
  v7 = a2[4];
  v8 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a1;
  sub_1DB314534(v8, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v27);

  v10 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = 0x707954746E657665;
  v12 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x616964656DLL;
  *(inited + 56) = 0xE500000000000000;
  v13 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v12, &unk_1ECC46BD0, &qword_1DB519760);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_1DB314534(v13, sub_1DB313340, 0, v14, &v27);

  v15 = v27;
  v16 = sub_1DB324C04(a1, v25, v5);
  v18 = v17;
  if (v7)
  {
    v19 = v7(a1);
  }

  else
  {
    v19 = 0;
  }

  if (*(v6 + 16) && (v20 = sub_1DB314CBC(), (v21 & 1) != 0))
  {
    v22 = *(*(v6 + 56) + 8 * v20);

    if (!*(v26 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
    if (!*(v26 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1DB314CBC();
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v22;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_1DB322494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6[1];
  v33 = *a6;
  v35 = a6[2];
  v36 = a6[3];
  v34 = a6[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50F8D0;
  *(inited + 32) = 0x6449746567726174;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7954746567726174;
  *(inited + 120) = v14;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  v15 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a5;
  sub_1DB314534(v15, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v37);

  v17 = v37;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  *(v18 + 32) = 0x707954746E657665;
  v19 = v18 + 32;
  *(v18 + 72) = v14;
  *(v18 + 40) = 0xE900000000000065;
  *(v18 + 48) = 0x6B63696C63;
  *(v18 + 56) = 0xE500000000000000;
  v20 = sub_1DB3135C0(v18);
  swift_setDeallocating();
  sub_1DB30623C(v19, &unk_1ECC46BD0, &qword_1DB519760);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v17;
  sub_1DB314534(v20, sub_1DB313340, 0, v21, &v37);

  v22 = v37;
  v23 = sub_1DB324C04(a5, v33, v32);
  v25 = v24;
  if (v34)
  {
    v26 = v34(a5);
  }

  else
  {
    v26 = 0;
  }

  if (*(v35 + 16) && (v27 = sub_1DB314CBC(), (v28 & 1) != 0))
  {
    v29 = *(*(v35 + 56) + 8 * v27);

    if (!*(v36 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
    if (!*(v36 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  sub_1DB314CBC();
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a7 = v23;
  *(a7 + 8) = v25;
  *(a7 + 16) = v26 & 1;
  *(a7 + 24) = v22;
  *(a7 + 32) = v29;
  *(a7 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageRenderFields(timingMetrics:fields:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = a1[6];
  v10 = *(a1 + 56);
  v11 = a1[8];
  v12 = *(a1 + 73);
  v13 = a1[10];
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v14 = a1[12];
  v15 = MEMORY[0x1E69E6158];
  v38 = *(a1 + 104);
  *(&v41 + 1) = MEMORY[0x1E69E6158];
  *&v40 = 0x646E655265676170;
  *(&v40 + 1) = 0xEA00000000007265;
  sub_1DB30C200(&v40, v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v39, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v42 = a2;
  if (*(a2 + 16) && (v17 = sub_1DB306160(0x6C725565676170, 0xE700000000000000), (v18 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v17, &v40);
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    if (v5)
    {
      *(&v41 + 1) = v15;
      *&v40 = v6;
      *(&v40 + 1) = v5;
      sub_1DB30C200(&v40, v39);

      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DB31D16C(v39, 0x6C725565676170, 0xE700000000000000, v19);
      v42 = a2;
      goto LABEL_8;
    }

    sub_1DB30F708(0x6C725565676170, 0xE700000000000000, &v40);
  }

  sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_8:
  if (v3)
  {
    *(&v41 + 1) = v15;
    *&v40 = v4;
    *(&v40 + 1) = v3;
    sub_1DB30C200(&v40, v39);

    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000014, 0x80000001DB528AB0, v21);
    v42 = v20;
  }

  else
  {
    sub_1DB30F708(0xD000000000000014, 0x80000001DB528AB0, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v22 = MEMORY[0x1E69E63B0];
  if (v8)
  {
    sub_1DB30F708(0xD000000000000018, 0x80000001DB529910, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E63B0];
    *&v40 = v7;
    sub_1DB30C200(&v40, v39);
    v23 = v42;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000018, 0x80000001DB529910, v24);
    v42 = v23;
  }

  if (v10)
  {
    sub_1DB30F708(0xD000000000000019, 0x80000001DB529930, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v9;
    sub_1DB30C200(&v40, v39);
    v25 = v42;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000019, 0x80000001DB529930, v26);
    v42 = v25;
  }

  if (v36)
  {
    sub_1DB30F708(0xD000000000000017, 0x80000001DB529950, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v11;
    sub_1DB30C200(&v40, v39);
    v27 = v42;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000017, 0x80000001DB529950, v28);
    v42 = v27;
  }

  if (v12 == 2)
  {
    sub_1DB30F708(0xD000000000000019, 0x80000001DB529970, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v40) = v12 & 1;
    sub_1DB30C200(&v40, v39);
    v29 = v42;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000019, 0x80000001DB529970, v30);
    v42 = v29;
  }

  if (v37)
  {
    sub_1DB30F708(0xD00000000000001ALL, 0x80000001DB529990, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v13;
    sub_1DB30C200(&v40, v39);
    v31 = v42;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD00000000000001ALL, 0x80000001DB529990, v32);
    v42 = v31;
  }

  if (v38)
  {
    sub_1DB30F708(0xD000000000000018, 0x80000001DB5299B0, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    return v42;
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v14;
    sub_1DB30C200(&v40, v39);
    v34 = v42;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000018, 0x80000001DB5299B0, v35);
    return v34;
  }
}

uint64_t MetricsData._isEqual(to:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (!v7)
  {
    v12 = 0;
    if (v2)
    {
      return v12 & 1;
    }

LABEL_10:
    if ((v3 ^ v8))
    {
      return v12 & 1;
    }

    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if (*v1 != *a1 || v7 != v2)
  {
    v13 = sub_1DB50BA30();
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      return v12 & 1;
    }

    goto LABEL_10;
  }

  if (v3 != v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((sub_1DB404C28(v10, v5, 3uLL, 0) & 1) == 0 || (sub_1DB322E94(v9, v4) & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = sub_1DB322E94(v11, v6);
  return v12 & 1;
}

uint64_t sub_1DB322E94(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DB50BCF0();

    sub_1DB50A740();
    v16 = sub_1DB50BD30();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB32305C()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB32314C(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB323228(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

unint64_t sub_1DB323314@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB325750(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB323344(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6369706F74;
  v5 = 0xE600000000000000;
  v6 = 0x73646C656966;
  v7 = 0x6E6964756C636E69;
  if (v2 != 3)
  {
    v7 = 0x6E6964756C637865;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEF73646C65694667;
  }

  if (*v1)
  {
    v4 = 0x6C46646C756F6873;
    v3 = 0xEB00000000687375;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1DB3233F0()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x73646C656966;
  v4 = 0x6E6964756C636E69;
  if (v1 != 3)
  {
    v4 = 0x6E6964756C637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C46646C756F6873;
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

unint64_t sub_1DB323498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB325750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3234CC(uint64_t a1)
{
  v2 = sub_1DB324CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB323508(uint64_t a1)
{
  v2 = sub_1DB324CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F68, &qword_1DB50FF50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB324CAC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v27[0]) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    LOBYTE(v24) = 0;
    sub_1DB32500C(&qword_1ECC42FE0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1DB50B780();
    v10 = v27[0];
    v28 = v27[1];
  }

  else
  {
    v28 = 0;
    v10 = 0;
  }

  LOBYTE(v27[0]) = 1;
  if (sub_1DB50B7B0())
  {
    LOBYTE(v27[0]) = 1;
    v11 = sub_1DB50B750();
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v24) = 2;
  sub_1DB324D00();
  sub_1DB50B780();
  sub_1DB30C4B8(v27, v22, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v23)
  {
    sub_1DB30623C(v22, &qword_1ECC42E38, &qword_1DB50FB80);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_1DB408B14(&v24);
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (!*(&v25 + 1))
  {
LABEL_15:
    sub_1DB30623C(&v24, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  v22[0] = 0;
  sub_1DB50A4A0();
  v12 = v22[0];
  sub_1DB317740(&v24);
  if (!v12)
  {
LABEL_16:
    v21 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1DB50BDB0();
    sub_1DB324948(2, v15, &type metadata for MetricsData.CodingKeys, sub_1DB324CAC);

    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB5299D0);
    sub_1DB50B3C0();
    (*(*(v21 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8]);
    swift_willThrow();
    sub_1DB3151CC(v27);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v12;
  LOBYTE(v24) = 3;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    LOBYTE(v22[0]) = 3;
    sub_1DB324EB0();
    sub_1DB50B780();
    v20 = sub_1DB324A54(v24, sub_1DB325A5C, &type metadata for MetricsFieldInclusionRequest, sub_1DB4B75FC);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  LOBYTE(v24) = 4;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F90, &qword_1DB50FF58);
    LOBYTE(v22[0]) = 4;
    sub_1DB324D54();
    sub_1DB50B780();
    v19 = v24;
    v16 = sub_1DB324A54(v24, sub_1DB3259DC, &type metadata for MetricsFieldExclusionRequest, sub_1DB4B75CC);

    sub_1DB3151CC(v27);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1DB3151CC(v27);
    (*(v6 + 8))(v8, v5);
    v16 = MEMORY[0x1E69E7CD0];
  }

  v17 = v28;
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11 & 1;
  v18 = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FE8, &qword_1DB50FF78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = *v1;
  v8 = v1[1];
  LODWORD(v29) = *(v1 + 16);
  v9 = v1[3];
  v27 = v1[4];
  v28 = v9;
  v26 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB324CAC();

  sub_1DB50BE40();
  v32[0] = v7;
  v32[1] = v8;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB32500C(&qword_1ECC42FF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  v10 = v34;
  sub_1DB50B8A0();
  if (v10)
  {

    return (*(v4 + 8))(v6, v3);
  }

  v12 = v27;
  v13 = v28;
  v14 = v4;

  LOBYTE(v32[0]) = 1;
  sub_1DB50B870();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v30 = v13;
  v32[3] = &type metadata for FoundationValue;
  v33 = &off_1F56FB6B0;
  v32[0] = swift_allocObject();
  sub_1DB30C200(&v30, (v32[0] + 16));
  LOBYTE(v30) = 2;
  sub_1DB325078();

  sub_1DB50B8A0();
  sub_1DB3151CC(v32);
  v15 = v4;
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12;
    v18 = sub_1DB3241C0(*(v12 + 16), 0, &qword_1ECC430A8, &qword_1DB510248);
    v34 = sub_1DB3243C0(v32, v18 + 4, v16, v17);
    v19 = v32[0];
    v29 = v33;

    result = sub_1DB2FEA60(v19);
    if (v34 != v16)
    {
      __break(1u);
      goto LABEL_13;
    }

    v15 = v4;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v32[0] = v18;
  LOBYTE(v30) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FB8, &qword_1DB50FF68);
  sub_1DB3250CC();
  sub_1DB50B8A0();

  v20 = v6;
  v21 = v26;
  v22 = *(v26 + 16);
  if (!v22)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v23 = sub_1DB3241C0(*(v26 + 16), 0, &qword_1ECC430A0, &qword_1DB510240);
  v34 = sub_1DB3243C0(v32, v23 + 4, v22, v21);
  v24 = v32[0];
  v29 = v33;

  result = sub_1DB2FEA60(v24);
  if (v34 == v22)
  {
    v15 = v14;
LABEL_11:
    v32[0] = v23;
    LOBYTE(v30) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB325228();
    sub_1DB50B8A0();

    return (*(v15 + 8))(v20, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1DB3241C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1DB32423C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A08, &qword_1DB50F4C0);
  v4 = *(type metadata accessor for JetPackAsset(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DB324338(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42940, &qword_1DB5112F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1DB3243C0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1DB324518(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for JetPackAsset(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_1DB314AF4(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1DB314B58(v10, v13);
      sub_1DB314B58(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
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
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
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
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1DB324740(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1DB324840(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_1DB3184A4(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1DB302510(0, a4[2] + 1, 1, a4);
  }

  v9 = a4[2];
  v8 = a4[3];
  if (v9 >= v8 >> 1)
  {
    a4 = sub_1DB302510((v8 > 1), v9 + 1, 1, a4);
  }

  v13 = &type metadata for OpenCodingKey;
  v14 = sub_1DB3053A8();
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3 & 1;
  a4[2] = v9 + 1;
  sub_1DB2FEA0C(&v11, &a4[5 * v9 + 4]);
  return a4;
}

void *sub_1DB324948(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1DB302510(0, a2[2] + 1, 1, a2);
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v9 >= v8 >> 1)
  {
    a2 = sub_1DB302510((v8 > 1), v9 + 1, 1, a2);
  }

  v12 = a3;
  v13 = a4();
  LOBYTE(v11) = a1;
  a2[2] = v9 + 1;
  sub_1DB2FEA0C(&v11, &a2[5 * v9 + 4]);
  return a2;
}

uint64_t sub_1DB324A54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E12862D0](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_1DB324AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DB3258A0();
  result = MEMORY[0x1E12862D0](v2, &type metadata for StartUpPerformanceEvent.RawCheckpoint, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DB4B794C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DB324B6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12862D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DB4B77FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DB324C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v5 = sub_1DB306160(0x6369706F74, 0xE500000000000000);
    if (v6)
    {
      sub_1DB300B14(*(a1 + 56) + 32 * v5, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  return a2;
}

unint64_t sub_1DB324CAC()
{
  result = qword_1ECC42F70;
  if (!qword_1ECC42F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F70);
  }

  return result;
}

unint64_t sub_1DB324D00()
{
  result = qword_1ECC42F78;
  if (!qword_1ECC42F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F78);
  }

  return result;
}

unint64_t sub_1DB324D54()
{
  result = qword_1ECC42F98;
  if (!qword_1ECC42F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB324DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F98);
  }

  return result;
}

unint64_t sub_1DB324DD8()
{
  result = qword_1ECC42FA0;
  if (!qword_1ECC42FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FA8, &qword_1DB50FF60);
    sub_1DB324E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FA0);
  }

  return result;
}

unint64_t sub_1DB324E5C()
{
  result = qword_1ECC42FB0;
  if (!qword_1ECC42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FB0);
  }

  return result;
}

unint64_t sub_1DB324EB0()
{
  result = qword_1ECC42FC0;
  if (!qword_1ECC42FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    sub_1DB324F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FC0);
  }

  return result;
}

unint64_t sub_1DB324F34()
{
  result = qword_1ECC42FC8;
  if (!qword_1ECC42FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FD0, &qword_1DB50FF70);
    sub_1DB324FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FC8);
  }

  return result;
}

unint64_t sub_1DB324FB8()
{
  result = qword_1ECC42FD8;
  if (!qword_1ECC42FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FD8);
  }

  return result;
}

uint64_t sub_1DB32500C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB325078()
{
  result = qword_1ECC42FF8;
  if (!qword_1ECC42FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FF8);
  }

  return result;
}

unint64_t sub_1DB3250CC()
{
  result = qword_1ECC43000;
  if (!qword_1ECC43000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    sub_1DB325150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43000);
  }

  return result;
}

unint64_t sub_1DB325150()
{
  result = qword_1ECC43008;
  if (!qword_1ECC43008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FD0, &qword_1DB50FF70);
    sub_1DB3251D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43008);
  }

  return result;
}

unint64_t sub_1DB3251D4()
{
  result = qword_1ECC43010;
  if (!qword_1ECC43010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43010);
  }

  return result;
}

unint64_t sub_1DB325228()
{
  result = qword_1ECC43018;
  if (!qword_1ECC43018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB3252AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43018);
  }

  return result;
}

unint64_t sub_1DB3252AC()
{
  result = qword_1ECC43020;
  if (!qword_1ECC43020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FA8, &qword_1DB50FF60);
    sub_1DB325330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43020);
  }

  return result;
}

unint64_t sub_1DB325330()
{
  result = qword_1ECC43028;
  if (!qword_1ECC43028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43028);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DB325398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB3253E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SDySSypGSbIeggd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB325454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB32549C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB32564C()
{
  result = qword_1ECC43030;
  if (!qword_1ECC43030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43030);
  }

  return result;
}

unint64_t sub_1DB3256A4()
{
  result = qword_1ECC43038;
  if (!qword_1ECC43038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43038);
  }

  return result;
}

unint64_t sub_1DB3256FC()
{
  result = qword_1ECC43040;
  if (!qword_1ECC43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43040);
  }

  return result;
}

unint64_t sub_1DB325750(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

double sub_1DB32579C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return sub_1DB38DB3C(v6, v4, a2);
}

unint64_t sub_1DB3257F8()
{
  result = qword_1ECC43058;
  if (!qword_1ECC43058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43058);
  }

  return result;
}

unint64_t sub_1DB3258A0()
{
  result = qword_1ECC43078;
  if (!qword_1ECC43078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43078);
  }

  return result;
}

unint64_t sub_1DB3258F4()
{
  result = qword_1ECC43080;
  if (!qword_1ECC43080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43080);
  }

  return result;
}

double sub_1DB325964@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return sub_1DB38D620(v6, v4, a2);
}

unint64_t sub_1DB3259DC()
{
  result = qword_1ECC430B0;
  if (!qword_1ECC430B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430B0);
  }

  return result;
}

unint64_t sub_1DB325A5C()
{
  result = qword_1ECC430B8;
  if (!qword_1ECC430B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430B8);
  }

  return result;
}

uint64_t sub_1DB325ADC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return a2(v6, v4);
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 2;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a5);
  if (v9)
  {
    return sub_1DB50A920();
  }

  v11 = *(*(a4 - 8) + 56);

  return v11(a7, 1, 1, a4);
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(a4, a6, a3);
  if (*(v8 + 16) && (v9 = sub_1DB306160(a1, a2), (v10 & 1) != 0))
  {
    sub_1DB300B14(*(v8 + 56) + 32 * v9, v13);

    sub_1DB50AA60();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v6)
  {
    sub_1DB509C60();
  }

  else
  {
    v8 = sub_1DB509CA0();
    v9 = *(*(v8 - 8) + 56);

    return v9(a5, 1, 1, v8);
  }
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1DB509CA0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DB30623C(v12, &unk_1ECC42B20, &unk_1DB50F6A0);
    v17 = sub_1DB509A20();
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1DB509A00();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v7)
  {
    sub_1DB301E30();
    v8 = sub_1DB50B180();
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8;
  a5[1] = 0;
  return result;
}

uint64_t StandardMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB300B14(a1, v6);

  return sub_1DB30D454(v6, a2, a3);
}

Swift::Void __swiftcall StandardMetricsFieldsBuilder.removeValue(forField:)(Swift::String forField)
{
  v2 = v1;
  v3 = sub_1DB306160(forField._countAndFlagsBits, forField._object);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3112DC();
      v7 = v8;
    }

    sub_1DB30C200((*(v7 + 56) + 32 * v5), v9);
    sub_1DB30FD60(v5, v7);
    *v2 = v7;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_1DB30623C(v9, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t StandardMetricsFieldsBuilder.merge(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  *v3 = 0x8000000000000000;
  sub_1DB32649C(a1, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, a2, a3);

  *v3 = v9;
  return result;
}

uint64_t sub_1DB326438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB300B14(a1, v6);

  return sub_1DB30D454(v6, a2, a3);
}

void sub_1DB32649C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v49 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v42 = a1;
  v43 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v44 = v11;
  v45 = 0;
  v46 = v14 & v12;
  v47 = a2;
  v48 = a3;

  sub_1DB3AF664(&v40);
  v15 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_5:
    sub_1DB2FEA60(v42);

    return;
  }

  while (1)
  {
    v16 = v40;
    v38 = v40;
    v39 = v15;
    sub_1DB30C200(&v41, v37);
    v17 = *v8;
    v19 = sub_1DB306160(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1DB50BC20();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1DB3112DC();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v28 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v29 = (v28[6] + 16 * v19);
    *v29 = v16;
    v29[1] = v15;
    sub_1DB30C200(v37, (v28[7] + 32 * v19));
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_22;
    }

    v28[2] = v32;
LABEL_6:
    sub_1DB3AF664(&v40);
    v15 = *(&v40 + 1);
    a4 = 1;
    if (!*(&v40 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_1DB319570(v22, a4 & 1);
  v24 = sub_1DB306160(v16, v15);
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_23;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v26 = *v8;
  sub_1DB300B14(*(*v8 + 56) + 32 * v19, v35);
  a5(v36, v35, v37);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(v37);

    v27 = (v26[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_0(v27);
    sub_1DB30C200(v36, v27);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  v35[0] = v7;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v37);
    sub_1DB2FEA60(v42);

    return;
  }

LABEL_24:
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB529A10);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](39, 0xE100000000000000);
  sub_1DB50B580();
  __break(1u);
}

void sub_1DB3268A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(__int128 *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v55 = v11;
  v56 = v7;
  v57 = v6;
  while (1)
  {
    if (!v10)
    {
      v21 = v12;
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v11)
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v20);
        ++v21;
        if (v19)
        {
          v60 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1DB50BC20();
      __break(1u);
      goto LABEL_34;
    }

    v60 = a4;
    v19 = v10;
    v20 = v12;
LABEL_15:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = (*(v6 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(v6 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v69 = *v23;
    v70 = v24;
    v71 = v27;
    v72 = v26;
    v73 = v28;

    sub_1DB314BBC(v27, v26, v28);
    a2(&v74, &v69);
    v29 = v71;
    v30 = v72;
    v31 = v73;

    sub_1DB31EB94(v29, v30, v31);
    if (!v75)
    {
LABEL_27:
      sub_1DB2FEA60(v6);

      return;
    }

    v33 = v76;
    v34 = v77;
    v67 = v74;
    v32 = v74;
    v68 = v75;
    v35 = v78;
    v69 = v76;
    v70 = v77;
    LOBYTE(v71) = v78;
    v36 = *v79;
    v61 = v75;
    v38 = sub_1DB306160(v74, v75);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_31;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      break;
    }

    if (v60)
    {
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1DB3119D4();
      if (v42)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    v13 = *v79;
    v13[(v38 >> 6) + 8] |= 1 << v38;
    v14 = (v13[6] + 16 * v38);
    *v14 = v32;
    v14[1] = v61;
    v15 = v13[7] + 24 * v38;
    *v15 = v33;
    *(v15 + 8) = v34;
    *(v15 + 16) = v35;
    v16 = v13[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_32;
    }

    v13[2] = v18;
LABEL_7:
    v6 = v57;
    v11 = v55;
    v7 = v56;
    v10 = (v19 - 1) & v19;
    a4 = 1;
    v12 = v20;
  }

  sub_1DB31A114(v41, v60 & 1);
  v43 = sub_1DB306160(v32, v61);
  if ((v42 & 1) != (v44 & 1))
  {
    goto LABEL_33;
  }

  v38 = v43;
  if ((v42 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v45 = *v79;
  v46 = *(*v79 + 56) + 24 * v38;
  v47 = *(v46 + 8);
  v62 = *v46;
  v63 = v47;
  v64 = *(v46 + 16);
  sub_1DB314BBC(v62, v47, v64);
  a5(&v65, &v62, &v69);
  if (!v59)
  {
    sub_1DB31EB94(v62, v63, v64);
    sub_1DB31EB94(v69, v70, v71);

    v48 = v45[7] + 24 * v38;
    v49 = v66;
    v50 = *v48;
    v51 = *(v48 + 8);
    *v48 = v65;
    v52 = *(v48 + 16);
    *(v48 + 16) = v49;
    sub_1DB31EB94(v50, v51, v52);
    goto LABEL_7;
  }

  sub_1DB31EB94(v62, v63, v64);

  v62 = v59;
  v53 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB31EB94(v69, v70, v71);
    sub_1DB2FEA60(v57);

    return;
  }

LABEL_34:
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB529A10);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](39, 0xE100000000000000);
  sub_1DB50B580();
  __break(1u);
}

unint64_t JetPackAssetDiskCacheError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t JetPackAssetDiskCacheError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v3;
  v4 = "e default location";
  v5 = 0xD000000000000022;
  if (v1 == 3)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v4 = "Duplicate values for key: '";
  }

  if (v1 == 2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = v5;
  }

  if (v1 == 2)
  {
    v4 = "Unable to evict unsaved asset";
  }

  v7 = 0xD00000000000001DLL;
  v8 = "Asset file doesn't exist";
  if (v1)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v8 = "ve asset metadata";
  }

  if (v1 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v1 <= 1)
  {
    v4 = v8;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v4 | 0x8000000000000000;
  v10 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  return v10;
}

uint64_t JetPackAssetDiskCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB326FF0()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB3270B4(uint64_t a1)
{
  v2 = sub_1DB32E638();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB3270F0(uint64_t a1)
{
  v2 = sub_1DB32E638();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.assetsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0) + 20);
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DB327218()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE30E088);
  __swift_project_value_buffer(v0, qword_1EE30E088);
  return sub_1DB50A260();
}

uint64_t JetPackAssetDiskCache.__allocating_init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  sub_1DB2FEA0C(a2, v4 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  return v4;
}

uint64_t JetPackAssetDiskCache.init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_1DB2FEA0C(a2, v2 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  return v2;
}

id JetPackAssetDiskCache.__allocating_init()()
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = sub_1DB509B70();
  v0 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = [objc_opt_self() defaultManager];
  v24[0] = 0;
  v14 = [v13 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v24];

  v15 = v24[0];
  if (v14)
  {
    sub_1DB509C20();
    v16 = v15;

    strcpy(v24, "JetPackCache");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    v17 = v23[0];
    (*(v0 + 104))(v2, *MEMORY[0x1E6968F70], v23[0]);
    sub_1DB301E30();
    sub_1DB509C80();
    (*(v0 + 8))(v2, v17);
    v18 = *(v4 + 8);
    v18(v9, v3);
    (*(v4 + 16))(v6, v12, v3);
    v19 = v23[1];
    v20 = v23[2];
    v21 = JetPackAssetDiskCache.__allocating_init(url:)(v6);
    if (!v20)
    {
      v19 = v21;
    }

    v18(v12, v3);
  }

  else
  {
    v19 = v24[0];
    sub_1DB509B20();

    swift_willThrow();
  }

  return v19;
}

uint64_t JetPackAssetDiskCache.__allocating_init(url:)(char *a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static JetPackAssetDiskCache.prepareDefaultLocation(url:)(a1, v15);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v26 = a1;
    v23 = v6;
    v16 = *(v4 + 16);
    v17 = v3;
    v16(v12, &v15[*(v13 + 20)], v3);
    v24 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
    v25 = swift_allocObject();
    v22 = v16;
    v16(v9, v12, v3);
    LOBYTE(v27) = 0;
    type metadata accessor for AssetSQLiteDatabase(0);
    swift_allocObject();
    v18 = AssetSQLiteDatabase.init(url:mode:)(v9, &v27);
    v19 = *(v4 + 8);
    v19(v12, v17);
    v20 = v25;
    *(v25 + 16) = v18;
    v22(v23, v15, v17);
    v28 = v24;
    v29 = &protocol witness table for JetPackAssetDiskCacheSQLiteMetadataStore;
    *&v27 = v20;
    v19(v26, v17);
    sub_1DB32DF10(v15);
    v3 = swift_allocObject();
    (*(v4 + 32))(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL, v23, v17);
    sub_1DB2FEA0C(&v27, v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  }

  return v3;
}

uint64_t static JetPackAssetDiskCache.prepareDefaultLocation(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v57 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509B70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DB509CA0();
  v44 = *(v43 - 8);
  v7 = MEMORY[0x1EEE9AC00](v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0x737465737361;
  v54 = 0xE600000000000000;
  v10 = *MEMORY[0x1E6968F70];
  v37 = *(v4 + 104);
  v37(v6, v10, v3, v7);
  v39 = sub_1DB301E30();
  v40 = a1;
  sub_1DB509C80();
  v38 = *(v4 + 8);
  v38(v6, v3);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1DB509BC0();
  v53 = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v53];

  v14 = v53;
  if (v13)
  {
    v53 = 0x62642E65726F7473;
    v54 = 0xE800000000000000;
    (v37)(v6, v10, v3);
    type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
    v15 = v14;
    v16 = v41;
    sub_1DB509C80();
    v38(v6, v3);
    return (*(v44 + 32))(v16, v9, v43);
  }

  else
  {
    v42 = v9;
    v18 = v43;
    v19 = v53;
    v20 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v21 = v55;
    v22 = v56;
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    v47 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
    v24._object = 0x80000001DB529B20;
    v24._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    swift_getErrorValue();
    v25 = v45;
    v26 = v46;
    v52[3] = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
    sub_1DB301CDC(v52, v48);
    v49 = 0u;
    v50 = 0u;
    sub_1DB301D4C(v48, &v49);
    v51 = 0;
    v28 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
      v47 = v28;
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[40 * v30];
    v32 = v49;
    v33 = v50;
    v31[64] = v51;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v47 = v28;
    sub_1DB30623C(v52, &qword_1ECC426B0, &qword_1DB50EEB0);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v23 + 32) = v47;
    Logger.error(_:)(v23, v21, v22);

    __swift_destroy_boxed_opaque_existential_0(&v53);
    sub_1DB32DF6C();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();

    return (*(v44 + 8))(v42, v18);
  }
}

uint64_t JetPackAssetDiskCache._cache(_:)(uint64_t a1, uint64_t a2)
{
  v3[167] = v2;
  v3[166] = a2;
  v3[165] = a1;
  v4 = sub_1DB509B70();
  v3[168] = v4;
  v3[169] = *(v4 - 8);
  v3[170] = swift_task_alloc();
  v5 = sub_1DB509CA0();
  v3[171] = v5;
  v3[172] = *(v5 - 8);
  v3[173] = swift_task_alloc();
  v6 = sub_1DB509E00();
  v3[174] = v6;
  v3[175] = *(v6 - 8);
  v3[176] = swift_task_alloc();
  v7 = sub_1DB50A230();
  v3[177] = v7;
  v3[178] = *(v7 - 8);
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB32824C, 0, 0);
}

uint64_t sub_1DB32824C()
{
  v138 = v0;
  v137 = *MEMORY[0x1E69E9840];
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Cache Asset", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v6 = (v0 + 776);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1416);

  (*(v9 + 16))(v8, v7, v10);
  sub_1DB50A2C0();
  swift_allocObject();
  v129 = sub_1DB50A2B0();
  *(v0 + 1448) = v129;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1328);
  sub_1DB50BEB0();
  v12 = *(v0 + 520);
  v132 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  *&v135[0] = sub_1DB301BC0(0, 30, 0, MEMORY[0x1E69E7CC0]);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000001DB529B50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = type metadata accessor for JetPackAsset(0);
  *(v0 + 1456) = v15;
  v16 = (v11 + *(v15 + 28));
  v17 = *v16;
  v18 = v16[1];
  *(v0 + 1048) = MEMORY[0x1E69E6158];
  *(v0 + 1024) = v17;
  *(v0 + 1032) = v18;
  sub_1DB301CDC(v0 + 1024, v0 + 960);
  *v6 = 0u;
  *(v0 + 792) = 0u;

  sub_1DB301D4C(v0 + 960, v0 + 776);
  *(v0 + 808) = 0;
  v19 = *&v135[0];
  v125 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
    *&v135[0] = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 1328);
  *(v19 + 2) = v21 + 1;
  v23 = &v19[40 * v21];
  v24 = *v6;
  v25 = *(v0 + 792);
  v23[64] = *(v0 + 808);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  *&v135[0] = v19;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v13 + 32) = v19;
  Logger.info(_:)(v13, v12, v132);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  v27 = (v22 + *(v15 + 24));
  if ((v27[1] & 1) == 0)
  {
    v37 = *v27;
    sub_1DB50BEB0();
    v38 = *(v0 + 560);
    v39 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v38);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB50EE90;
    *(v0 + 1016) = MEMORY[0x1E69E6158];
    *(v0 + 992) = 0xD000000000000029;
    *(v0 + 1000) = 0x80000001DB529BB0;
    *(v41 + 48) = 0u;
    *(v41 + 32) = 0u;
    sub_1DB301D4C(v0 + 992, v41 + 32);
    *(v41 + 64) = 0;
    *(v40 + 32) = v41;
    Logger.info(_:)(v40, v38, v39);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    sub_1DB5098C0();
    swift_allocObject();
    sub_1DB5098B0();
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1DB32E68C(&qword_1EE30DBC8, &protocol conformance descriptor for JetPackAsset.Metadata);
    v47 = sub_1DB5098A0();
    v49 = v48;
    v50 = (*(v0 + 1336) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
    v51 = v37;
    v53 = v50[3];
    v52 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v53);
    v134 = *(v52 + 56);
    sub_1DB30C1AC(v47, v49);
    v134(v135, v51, v47, v49, v53, v52);
    v100 = *(v0 + 1328);
    v101 = *(v0 + 1320);
    v102 = v135[1];
    *(v0 + 216) = v135[0];
    *(v0 + 232) = v102;
    *(v0 + 248) = v135[2];
    *(v0 + 264) = v136;
    sub_1DB32DFF8(v0 + 216);
    sub_1DB30C158(v47, v49);

    sub_1DB30C158(v47, v49);
    sub_1DB314AF4(v100, v101);
    v103 = v129;
    goto LABEL_28;
  }

  v28 = *(v0 + 1408);
  v29 = *(v0 + 1400);
  v30 = *(v0 + 1392);
  sub_1DB329ABC(v125, v18);
  sub_1DB509DF0();
  v31 = sub_1DB509DE0();
  v33 = v32;
  (*(v29 + 8))(v28, v30);
  *(v0 + 1264) = 0x6B63617074656A2ELL;
  *(v0 + 1272) = 0xE800000000000000;
  *(v0 + 1248) = v31;
  *(v0 + 1256) = v33;
  *&v135[0] = sub_1DB50A860();
  *(&v135[0] + 1) = v34;
  sub_1DB50A770();
  v130 = v135[0];
  sub_1DB5098C0();
  swift_allocObject();
  *(v0 + 1464) = sub_1DB5098B0();
  type metadata accessor for JetPackAsset.Metadata(0);
  sub_1DB32E68C(&qword_1EE30DBC8, &protocol conformance descriptor for JetPackAsset.Metadata);
  v35 = sub_1DB5098A0();
  *(v0 + 1472) = v35;
  *(v0 + 1480) = v36;
  v42 = v35;
  v43 = v36;
  v44 = (*(v0 + 1336) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v45 = v44[3];
  v46 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v45);
  *(v0 + 156) = 1;
  *(v0 + 160) = 0;
  *(v0 + 164) = 1;
  *(v0 + 168) = v125;
  *(v0 + 176) = v18;
  *(v0 + 184) = v130;
  *(v0 + 200) = v42;
  *(v0 + 208) = v43;
  v126 = *(v46 + 40);

  sub_1DB30C1AC(v42, v43);
  v126(v0 + 160, v45, v46);
  v121 = v42;
  v122 = v43;
  v55 = *(v0 + 1384);
  v56 = *(v0 + 1376);
  v123 = *(v0 + 1368);
  v57 = *(v0 + 1360);
  v58 = *(v0 + 1352);
  v59 = *(v0 + 1344);
  v127 = *(v0 + 1328);
  v60 = *(v0 + 176);
  *(v0 + 272) = *(v0 + 160);
  *(v0 + 288) = v60;
  *(v0 + 304) = *(v0 + 192);
  *(v0 + 320) = *(v0 + 208);
  sub_1DB32DFF8(v0 + 272);
  v61 = *(v0 + 400);
  *(v0 + 328) = *(v0 + 384);
  *(v0 + 344) = v61;
  *(v0 + 360) = *(v0 + 416);
  *(v0 + 376) = *(v0 + 432);
  *(v0 + 1280) = v130;
  (*(v58 + 104))(v57, *MEMORY[0x1E6968F70], v59);
  sub_1DB301E30();
  sub_1DB509C90();
  (*(v58 + 8))(v57, v59);

  v62 = sub_1DB509C30();
  v64 = v63;
  *(v0 + 1488) = v62;
  *(v0 + 1496) = v63;
  (*(v56 + 8))(v55, v123);
  sub_1DB30BE90(v127, v0 + 576);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v131 = v64;
    v128 = *(v0 + 896);
    v65 = *(v0 + 904);

    sub_1DB50BEB0();
    v66 = *(v0 + 680);
    v67 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), v66);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1DB50EE90;
    *(v0 + 1112) = MEMORY[0x1E69E6158];
    *(v0 + 1088) = 0xD000000000000016;
    *(v0 + 1096) = 0x80000001DB529B90;
    *(v69 + 48) = 0u;
    *(v69 + 32) = 0u;
    sub_1DB301D4C(v0 + 1088, v69 + 32);
    *(v69 + 64) = 0;
    *(v68 + 32) = v69;
    Logger.info(_:)(v68, v66, v67);

    __swift_destroy_boxed_opaque_existential_0((v0 + 656));
    sub_1DB50BEB0();
    v70 = *(v0 + 720);
    v124 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 696), v70);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1DB50EE90;
    *&v135[0] = sub_1DB301BC0(0, 15, 0, MEMORY[0x1E69E7CC0]);
    v72._countAndFlagsBits = 0x203A6D6F7266;
    v72._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    v73 = MEMORY[0x1E69E6158];
    *(v0 + 1144) = MEMORY[0x1E69E6158];
    *(v0 + 1120) = v128;
    *(v0 + 1128) = v65;
    sub_1DB301CDC(v0 + 1120, v0 + 1152);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;

    sub_1DB301D4C(v0 + 1152, v0 + 816);
    *(v0 + 848) = 0;
    v74 = *&v135[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_1DB301BC0(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
      *&v135[0] = v74;
    }

    v75 = (v0 + 856);
    v77 = *(v74 + 2);
    v76 = *(v74 + 3);
    if (v77 >= v76 >> 1)
    {
      v74 = sub_1DB301BC0((v76 > 1), v77 + 1, 1, v74);
    }

    *(v74 + 2) = v77 + 1;
    v78 = &v74[40 * v77];
    v79 = *(v0 + 816);
    v80 = *(v0 + 832);
    v78[64] = *(v0 + 848);
    *(v78 + 2) = v79;
    *(v78 + 3) = v80;
    *&v135[0] = v74;
    sub_1DB30623C(v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
    v81._countAndFlagsBits = 0x203A6F74202C20;
    v81._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    *(v0 + 1208) = v73;
    *(v0 + 1184) = v62;
    *(v0 + 1192) = v131;
    sub_1DB301CDC(v0 + 1184, v0 + 1216);
    *v75 = 0u;
    *(v0 + 872) = 0u;

    sub_1DB301D4C(v0 + 1216, v0 + 856);
    *(v0 + 888) = 0;
    v82 = *&v135[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_1DB301BC0(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
      *&v135[0] = v82;
    }

    v83 = (v0 + 1304);
    v85 = *(v82 + 2);
    v84 = *(v82 + 3);
    if (v85 >= v84 >> 1)
    {
      v82 = sub_1DB301BC0((v84 > 1), v85 + 1, 1, v82);
    }

    *(v82 + 2) = v85 + 1;
    v86 = &v82[40 * v85];
    v87 = *v75;
    v88 = *(v0 + 872);
    v86[64] = *(v0 + 888);
    *(v86 + 2) = v87;
    *(v86 + 3) = v88;
    *&v135[0] = v82;
    sub_1DB30623C(v0 + 1184, &qword_1ECC426B0, &qword_1DB50EEB0);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v89);
    *(v71 + 32) = v82;
    Logger.info(_:)(v71, v70, v124);

    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    v90 = [objc_opt_self() defaultManager];
    v91 = sub_1DB50A620();

    v92 = sub_1DB50A620();

    *v83 = 0;
    v93 = [v90 copyItemAtPath:v91 toPath:v92 error:v0 + 1304];

    v94 = *v83;
    if (!v93)
    {
      v120 = v94;
      sub_1DB509B20();

      swift_willThrow();
      sub_1DB30C158(v121, v122);

      sub_1DB32DFF8(v0 + 328);
      sub_1DB32E04C(v129, "Cache Asset");

      (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

      v104 = *(v0 + 8);
      goto LABEL_14;
    }

    v95 = v94;
    sub_1DB30C158(v121, v122);

    v96 = *(v0 + 1456);
    v103 = *(v0 + 1448);
    v97 = *(v0 + 1320);
    sub_1DB314AF4(*(v0 + 1328), v97);
    sub_1DB32DFF8(v0 + 328);
    v98 = *(v0 + 332);
    v99 = v97 + *(v96 + 24);
    *v99 = *(v0 + 328);
    *(v99 + 4) = v98;
LABEL_28:
    sub_1DB32E04C(v103, "Cache Asset");

    (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

    v104 = *(v0 + 8);
LABEL_14:

    return v104();
  }

  sub_1DB50BEB0();
  v105 = *(v0 + 640);
  v133 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v105);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1DB50EE90;
  *&v135[0] = sub_1DB301BC0(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v107._object = 0x80000001DB529B70;
  v107._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v107);
  *(v0 + 952) = MEMORY[0x1E69E6158];
  *(v0 + 928) = v62;
  *(v0 + 936) = v64;
  sub_1DB301CDC(v0 + 928, v0 + 1056);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;

  sub_1DB301D4C(v0 + 1056, v0 + 736);
  *(v0 + 768) = 0;
  v108 = *&v135[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v108 = sub_1DB301BC0(0, *(*&v135[0] + 16) + 1, 1, *&v135[0]);
    *&v135[0] = v108;
  }

  v110 = *(v108 + 2);
  v109 = *(v108 + 3);
  if (v110 >= v109 >> 1)
  {
    v108 = sub_1DB301BC0((v109 > 1), v110 + 1, 1, v108);
  }

  v111 = *(v0 + 1328);
  *(v108 + 2) = v110 + 1;
  v112 = &v108[40 * v110];
  v113 = *(v0 + 736);
  v114 = *(v0 + 752);
  v112[64] = *(v0 + 768);
  *(v112 + 2) = v113;
  *(v112 + 3) = v114;
  *&v135[0] = v108;
  sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v115);
  *(v106 + 32) = v108;
  Logger.info(_:)(v106, v105, v133);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v116 = [objc_opt_self() defaultManager];
  v117 = sub_1DB50A620();
  [v116 createFileAtPath:v117 contents:0 attributes:0];

  v118 = v111[3];
  v119 = v111[4];
  __swift_project_boxed_opaque_existential_1(v111, v118);
  *(v0 + 1504) = (*(v119 + 8))(v118, v119);

  return MEMORY[0x1EEE6DFA0](sub_1DB329480, 0, 0);
}

uint64_t sub_1DB329480()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1312;
  *(v0 + 24) = sub_1DB32957C;
  *(v0 + 80) = swift_continuation_init();
  *(v0 + 152) = 1;
  sub_1DB30828C(v0 + 80);
  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DB32957C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1512) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = sub_1DB329978;
  }

  else
  {

    *(v1 + 1520) = *(v1 + 1312);
    v3 = sub_1DB3296DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3296DC()
{
  v1 = *(v0 + 1520);
  v2 = sub_1DB50A620();

  *(v0 + 1296) = 0;
  v3 = [v1 writeToFile:v2 blockSize:0x20000 error:v0 + 1296];

  v4 = *(v0 + 1296);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1480);
  v7 = *(v0 + 1472);
  if (v3)
  {
    v8 = v4;
    sub_1DB30C158(v7, v6);

    v9 = *(v0 + 1456);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1320);
    sub_1DB314AF4(*(v0 + 1328), v11);
    sub_1DB32DFF8(v0 + 328);
    v12 = *(v0 + 332);
    v13 = v11 + *(v9 + 24);
    *v13 = *(v0 + 328);
    *(v13 + 4) = v12;
    sub_1DB32E04C(v10, "Cache Asset");
  }

  else
  {
    v15 = *(v0 + 1448);
    v16 = v4;
    sub_1DB509B20();

    swift_willThrow();
    sub_1DB30C158(v7, v6);

    sub_1DB32DFF8(v0 + 328);
    sub_1DB32E04C(v15, "Cache Asset");
  }

  (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DB329978()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[181];

  sub_1DB30C158(v2, v1);

  sub_1DB32DFF8((v0 + 41));
  sub_1DB32E04C(v3, "Cache Asset");

  (*(v0[178] + 8))(v0[180], v0[177]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB329ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v6 = *(&v46 + 1);
  v38 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001DB529DC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v40 = MEMORY[0x1E69E6158];
  v39[0] = a1;
  v39[1] = a2;
  sub_1DB301CDC(v39, v49);
  v41 = 0u;
  v42 = 0u;

  sub_1DB301D4C(v49, &v41);
  LOBYTE(v43) = 0;
  v9 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
    v50 = v9;
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = v41;
  v14 = v42;
  v12[64] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v50 = v9;
  sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v7 + 32) = v50;
  Logger.info(_:)(v7, v6, v38);

  __swift_destroy_boxed_opaque_existential_0(&v45);
  v16 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v17 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v16);
  v18 = (*(v17 + 32))(a1, a2, v16, v17);
  sub_1DB50BEB0();
  v19 = *(&v46 + 1);
  v20 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
  v22._countAndFlagsBits = 0x20646E756F46;
  v22._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = *(v18 + 16);
  v40 = MEMORY[0x1E69E6530];
  v39[0] = v23;
  sub_1DB301CDC(v39, v49);
  v41 = 0u;
  v42 = 0u;
  sub_1DB301D4C(v49, &v41);
  LOBYTE(v43) = 0;
  v24 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[40 * v26];
  v28 = v41;
  v29 = v42;
  v27[64] = v43;
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v50 = v24;
  sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
  v30._object = 0x80000001DB529C90;
  v30._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  *(v21 + 32) = v50;
  Logger.info(_:)(v21, v19, v20);

  __swift_destroy_boxed_opaque_existential_0(&v45);
  v31 = *(v18 + 16);
  if (v31)
  {
    v32 = v31 - 1;
    for (i = 32; ; i += 56)
    {
      v34 = *(v18 + i);
      v35 = *(v18 + i + 16);
      v36 = *(v18 + i + 32);
      v48 = *(v18 + i + 48);
      v46 = v35;
      v47 = v36;
      v45 = v34;
      v41 = *(v18 + i);
      v42 = *(v18 + i + 16);
      v43 = *(v18 + i + 32);
      v44 = *(v18 + i + 48);
      sub_1DB32E354(&v45, v39);
      sub_1DB32D488(&v41);
      sub_1DB32DFF8(&v45);
      if (!v32)
      {
        break;
      }

      --v32;
    }
  }
}

uint64_t JetPackAssetDiskCache._asset(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1DB50A230();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB32A2F4, 0, 0);
}

uint64_t sub_1DB32A2F4()
{
  v55 = v0;
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50A270();
  __swift_project_value_buffer(v1, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v2 = sub_1DB50A250();
  v3 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v2, v3, v5, "Retrieve Cached Asset", "", v4, 2u);
    MEMORY[0x1E1288220](v4, -1, -1);
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);

  (*(v9 + 16))(v7, v6, v8);
  sub_1DB50A2C0();
  swift_allocObject();
  v45 = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  sub_1DB50BEB0();
  v12 = *(v0 + 40);
  v44 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB50EE90;
  v54[0] = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v14._object = 0x80000001DB529BF0;
  v14._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v10;
  *(v0 + 144) = v11;
  sub_1DB301CDC(v0 + 136, v0 + 168);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v15 = v54[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1DB301BC0(0, *(v54[0] + 2) + 1, 1, v54[0]);
    v54[0] = v15;
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
  }

  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 240);
  *(v15 + 2) = v17 + 1;
  v21 = &v15[40 * v17];
  v22 = *(v0 + 96);
  v23 = *(v0 + 112);
  v21[64] = *(v0 + 128);
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v54[0] = v15;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v13 + 32) = v15;
  Logger.info(_:)(v13, v12, v44);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v25 = (v18 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v26 = *(v18 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v27 = *(v18 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v27 + 16))(&v46, v20, v19, v26, v27);
  v28 = v48;
  if (v48 == 1)
  {
    v29 = *(v0 + 232);
    sub_1DB50BEB0();
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v31);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB50EE90;
    *(v0 + 224) = MEMORY[0x1E69E6158];
    *(v0 + 200) = 0xD000000000000026;
    *(v0 + 208) = 0x80000001DB529C20;
    *(v33 + 48) = 0u;
    *(v33 + 32) = 0u;
    sub_1DB301D4C(v0 + 200, v33 + 32);
    *(v33 + 64) = 0;
    *(v32 + 32) = v33;
    Logger.info(_:)(v32, v31, v30);

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v34 = type metadata accessor for JetPackAsset(0);
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  }

  else
  {
    v35 = *(v0 + 232);
    v37 = v51;
    v36 = v52;
    v39 = v49;
    v38 = v50;
    v41 = v46;
    v40 = v47;
    v53 = BYTE4(v46) & 1;
    LODWORD(v54[0]) = v46;
    BYTE4(v54[0]) = BYTE4(v46) & 1;
    v54[1] = v47;
    v54[2] = v48;
    v54[3] = v49;
    v54[4] = v50;
    v54[5] = v51;
    v54[6] = v52;
    sub_1DB32A8F8(v54, v35);
    sub_1DB32E2DC(v41, v40, v28, v39, v38, v37, v36);
  }

  sub_1DB32E04C(v45, "Retrieve Cached Asset");

  (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1DB32A8F8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v91 = type metadata accessor for JetPackAsset.Metadata(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1DB509B70();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1DB509CA0();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v95 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v88 - v9;
  v105 = sub_1DB50A230();
  v10 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  v93 = *a1;
  v124 = *(a1 + 4);
  v122 = *(a1 + 5);
  v123 = *(a1 + 7);
  v16 = *(a1 + 2);
  v94 = *(a1 + 1);
  v100 = v16;
  v17 = *(a1 + 4);
  v98 = *(a1 + 3);
  v18 = *(a1 + 6);
  v99 = *(a1 + 5);
  v104 = v18;
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v19 = sub_1DB50A270();
  __swift_project_value_buffer(v19, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v20 = sub_1DB50A250();
  v21 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v20, v21, v23, "Retrieve Cached Asset by Record", "", v22, 2u);
    MEMORY[0x1E1288220](v22, -1, -1);
  }

  v10[2](v12, v15, v105);
  sub_1DB50A2C0();
  swift_allocObject();
  v24 = sub_1DB50A2B0();
  v25 = v104;
  if (v104 >> 60 == 15 || !v17)
  {
    goto LABEL_11;
  }

  v90 = a2;
  v106 = v98;
  v89 = v17;
  v107 = v17;
  v26 = v96;
  v27 = v97;
  (*(v96 + 13))(v6, *MEMORY[0x1E6968F70], v97);
  v28 = v99;
  sub_1DB30C1AC(v99, v25);
  sub_1DB301E30();
  v29 = v95;
  sub_1DB509C90();
  (*(v26 + 1))(v6, v27);
  v30 = v25;
  v31 = v101;
  v32 = v103;
  v33 = v102;
  (*(v101 + 32))(v103, v29, v102);
  if (!v100)
  {
    (*(v31 + 8))(v32, v33);
    sub_1DB32E340(v28, v30);
    a2 = v90;
LABEL_11:
    v41 = type metadata accessor for JetPackAsset(0);
    (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
    goto LABEL_24;
  }

  v97 = v24;
  v96 = v15;
  v95 = v10;
  v34 = objc_opt_self();

  v35 = [v34 defaultManager];
  sub_1DB509C30();
  v36 = sub_1DB50A620();

  v37 = [v35 fileExistsAtPath_];

  if (v37)
  {
    sub_1DB509890();
    swift_allocObject();
    sub_1DB509880();
    sub_1DB32E68C(&qword_1EE30DBC0, &protocol conformance descriptor for JetPackAsset.Metadata);
    v38 = v92;
    v39 = v99;
    v40 = v104;
    sub_1DB509870();
    v74 = v38;
    v75 = v103;
    v76 = sub_1DB509C30();
    v78 = v77;
    sub_1DB32E340(v39, v40);

    (*(v31 + 8))(v75, v33);
    v79 = v90;
    v90[3] = &type metadata for JetPackFileStreamSource;
    v79[4] = &protocol witness table for JetPackFileStreamSource;
    v80 = swift_allocObject();
    *v79 = v80;
    v80[2] = v76;
    v80[3] = v78;
    v81 = v94;
    v82 = v100;
    v80[4] = v94;
    v80[5] = v82;
    v83 = type metadata accessor for JetPackAsset(0);
    sub_1DB32E6D0(v74, v79 + v83[5], type metadata accessor for JetPackAsset.Metadata);
    v84 = v124;
    v85 = v79 + v83[6];
    *v85 = v93;
    v85[4] = v84;
    v86 = (v79 + v83[7]);
    *v86 = v81;
    v86[1] = v82;
    *(v79 + v83[8]) = 1;
    *(v79 + v83[9]) = 0;
    *(v79 + v83[10]) = 0;
    v87 = (v79 + v83[11]);
    *v87 = 0;
    v87[1] = 0;
    (*(*(v83 - 1) + 56))(v79, 0, 1, v83);
  }

  else
  {

    sub_1DB32DF6C();
    v42 = swift_allocError();
    *v43 = 3;
    swift_willThrow();
    v44 = v90;
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v45 = v109;
    v46 = v110;
    v47 = __swift_project_boxed_opaque_existential_1(&v106, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1DB50EE90;
    v121 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v49._object = 0x80000001DB529D50;
    v49._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v49);
    swift_getErrorValue();
    v50 = v117;
    v51 = v118;
    v120 = v118;
    v52 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(*(v51 - 8) + 16))(v52, v50, v51);
    sub_1DB301CDC(&v119, v113);
    v114 = 0u;
    v115 = 0u;
    sub_1DB301D4C(v113, &v114);
    v116 = 0;
    v53 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v99;
    v92 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1DB301BC0(0, *(v53 + 2) + 1, 1, v53);
    }

    v57 = *(v53 + 2);
    v56 = *(v53 + 3);
    if (v57 >= v56 >> 1)
    {
      v53 = sub_1DB301BC0((v56 > 1), v57 + 1, 1, v53);
    }

    *(v53 + 2) = v57 + 1;
    v58 = &v53[40 * v57];
    v59 = v114;
    v60 = v115;
    v58[64] = v116;
    *(v58 + 2) = v59;
    *(v58 + 3) = v60;
    v121 = v53;
    sub_1DB30623C(&v119, &qword_1ECC426B0, &qword_1DB50EEB0);
    v61._countAndFlagsBits = 0x3D6C727520;
    v61._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    v62 = v102;
    v120 = v102;
    v63 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(v101 + 16))(v63, v103, v62);
    sub_1DB301CDC(&v119, v113);
    v114 = 0u;
    v115 = 0u;
    sub_1DB301D4C(v113, &v114);
    v116 = 0;
    v64 = v121;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1DB301BC0(0, *(v64 + 2) + 1, 1, v64);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1DB301BC0((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[40 * v66];
    v68 = v114;
    v69 = v115;
    v67[64] = v116;
    *(v67 + 2) = v68;
    *(v67 + 3) = v69;
    v121 = v64;
    sub_1DB30623C(&v119, &qword_1ECC426B0, &qword_1DB50EEB0);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v70);
    *(v48 + 32) = v121;
    Logger.error(_:)(v48, v45, v46);

    __swift_destroy_boxed_opaque_existential_0(&v106);
    LODWORD(v106) = v93;
    BYTE4(v106) = v124;
    *(&v106 + 5) = v122;
    HIBYTE(v106) = v123;
    v107 = v94;
    v108 = v100;
    v109 = v98;
    v110 = v89;
    v111 = v55;
    v71 = v104;
    v112 = v104;
    sub_1DB32D488(&v106);
    sub_1DB32E340(v55, v71);

    (*(v101 + 8))(v103, v102);
    v72 = type metadata accessor for JetPackAsset(0);
    (*(*(v72 - 8) + 56))(v44, 1, 1, v72);
  }

  v10 = v95;
  v15 = v96;
  v24 = v97;
LABEL_24:
  sub_1DB32E04C(v24, "Retrieve Cached Asset by Record");

  return (v10[1])(v15, v105);
}

uint64_t JetPackAssetDiskCache._asset(withID:)(uint64_t a1, int a2)
{
  *(v3 + 104) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB32B608, 0, 0);
}

uint64_t sub_1DB32B608()
{
  v37 = v0;
  v1 = *(v0 + 104);
  v2 = (*(v0 + 96) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 8))(&v21, v1, v3, v4);
  v5 = v23;
  if (v23 == 1)
  {
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 88);
    sub_1DB50BEB0();
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    *(v0 + 80) = MEMORY[0x1E69E6158];
    *(v0 + 56) = 0xD000000000000026;
    *(v0 + 64) = 0x80000001DB529C20;
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1DB301D4C(v0 + 56, v10 + 32);
    *(v10 + 64) = 0;
    *(v9 + 32) = v10;
    Logger.info(_:)(v9, v7, v8);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v11 = type metadata accessor for JetPackAsset(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 88);
    v14 = v26;
    v13 = v27;
    v16 = v24;
    v15 = v25;
    v18 = v21;
    v17 = v22;
    v28 = BYTE4(v21) & 1;
    v29 = v21;
    v30 = BYTE4(v21) & 1;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    sub_1DB32A8F8(&v29, v12);
    sub_1DB32E2DC(v18, v17, v5, v16, v15, v14, v13);
  }

  v19 = *(v0 + 8);

  return v19();
}

void JetPackAssetDiskCache._evict(asset:)(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for JetPackAsset(0) + 24);
  if ((*(v1 + 4) & 1) == 0)
  {
    JetPackAssetDiskCache._evict(cacheID:)(*v1);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCache._evict(cacheID:)(Swift::Int32 cacheID)
{
  v3 = v1;
  v4 = *&cacheID;
  v5 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v6 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v5);
  (*(v6 + 8))(&v23, v4, v5, v6);
  if (!v2)
  {
    v7 = v25;
    if (v25 == 1)
    {
      sub_1DB32DF6C();
      swift_allocError();
      *v8 = 1;
      swift_willThrow();
    }

    else
    {
      v10 = v28;
      v9 = v29;
      v12 = v26;
      v11 = v27;
      v14 = v23;
      v13 = v24;
      v30 = BYTE4(v23) & 1;
      v15 = v23;
      v16 = BYTE4(v23) & 1;
      v17 = v24;
      v18 = v25;
      v19 = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      sub_1DB32BC88(&v15);
      sub_1DB32E2DC(v14, v13, v7, v12, v11, v10, v9);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCache._evict(cacheKey:)(Swift::String cacheKey)
{
  v3 = v1;
  object = cacheKey._object;
  countAndFlagsBits = cacheKey._countAndFlagsBits;
  v6 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v7 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v6);
  (*(v7 + 16))(&v20, countAndFlagsBits, object, v6, v7);
  if (!v2)
  {
    v8 = v22;
    if (v22 != 1)
    {
      v10 = v20;
      v9 = v21;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = v26;
      if ((v20 & 0x100000000) == 0)
      {
        JetPackAssetDiskCache._evict(cacheID:)(v20);
        sub_1DB32E2DC(v10, v9, v8, v11, v12, v13, v14);
        return;
      }

      sub_1DB32E2DC(v20, v21, v22, v23, v24, v25, v26);
    }

    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(&v20, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    v19[3] = MEMORY[0x1E69E6158];
    v19[0] = 0xD000000000000026;
    v19[1] = 0x80000001DB529C20;
    *(v18 + 48) = 0u;
    *(v18 + 32) = 0u;
    sub_1DB301D4C(v19, v18 + 32);
    *(v18 + 64) = 0;
    *(v17 + 32) = v18;
    Logger.info(_:)(v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }
}

uint64_t sub_1DB32BC88(int *a1)
{
  v2 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v51 = sub_1DB509B70();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_1DB509CA0();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v49 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46[-v8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 4);
  v48 = *(a1 + 3);
  v56 = v11;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v12 = v64;
  v13 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  v57 = sub_1DB301BC0(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v15._object = 0x80000001DB529D30;
  v15._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  if (v10)
  {
    v16 = 0;
    memset(v62, 0, 24);
  }

  else
  {
    LODWORD(v62[0]) = v9;
    v16 = MEMORY[0x1E69E72F0];
  }

  v62[3] = v16;
  sub_1DB301CDC(v62, v58);
  v59 = 0u;
  v60 = 0u;
  sub_1DB301D4C(v58, &v59);
  v61 = 0;
  v17 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v2;
  v47 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[40 * v20];
  v22 = v59;
  v23 = v60;
  v21[64] = v61;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v57 = v17;
  sub_1DB30623C(v62, &qword_1ECC426B0, &qword_1DB50EEB0);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v14 + 32) = v57;
  Logger.info(_:)(v14, v12, v13);

  __swift_destroy_boxed_opaque_existential_0(v63);
  if (v56)
  {
    v25 = v10;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    sub_1DB32DF6C();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  v63[0] = v48;
  v63[1] = v56;
  v28 = v50;
  v29 = v51;
  (*(v50 + 104))(v5, *MEMORY[0x1E6968F70], v51);
  sub_1DB301E30();
  v30 = v53;
  v31 = v49;
  sub_1DB509C90();
  (*(v28 + 8))(v5, v29);
  v32 = v54;
  v33 = v52;
  v34 = v55;
  (*(v54 + 32))(v52, v31, v55);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_1DB509C30();
  v37 = sub_1DB50A620();

  v38 = [v36 fileExistsAtPath_];

  if (v38)
  {
    v39 = [v35 defaultManager];
    v40 = sub_1DB509BC0();
    v63[0] = 0;
    v41 = [v39 removeItemAtURL:v40 error:v63];

    if (!v41)
    {
      v45 = v63[0];
      sub_1DB509B20();

      swift_willThrow();
      return (*(v32 + 8))(v33, v34);
    }

    v42 = v63[0];
  }

  v43 = *(v30 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v44 = *(v30 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v43);
  (*(v44 + 48))(v47, v43, v44);
  return (*(v32 + 8))(v33, v34);
}

uint64_t JetPackAssetDiskCache._allCachedAssets.getter()
{
  v1[43] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v1[44] = swift_task_alloc();
  v2 = type metadata accessor for JetPackAsset(0);
  v1[45] = v2;
  v1[46] = *(v2 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB32C3AC, 0, 0);
}

uint64_t sub_1DB32C3AC()
{
  v45 = v0;
  v1 = (*(v0 + 344) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  result = (*(v3 + 24))(v2, v3);
  v5 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v6 = 0;
    v7 = (result + 32);
    v38 = *(v0 + 368);
    v41 = (v0 + 280);
    v8 = MEMORY[0x1E69E7CC0];
    v39 = result;
    while (v6 < *(v5 + 16))
    {
      v11 = *(v0 + 352);
      v10 = *(v0 + 360);
      v13 = v7[1];
      v12 = v7[2];
      v14 = *v7;
      *(v0 + 64) = *(v7 + 6);
      *(v0 + 32) = v13;
      *(v0 + 48) = v12;
      *(v0 + 16) = v14;
      v15 = v7[1];
      v43[0] = *v7;
      v43[1] = v15;
      v43[2] = v7[2];
      v44 = *(v7 + 6);
      sub_1DB32E354(v0 + 16, v0 + 72);
      sub_1DB32A8F8(v43, v11);
      if ((*(v38 + 48))(v11, 1, v10) == 1)
      {
        sub_1DB30623C(*(v0 + 352), &qword_1ECC46F20, qword_1DB5105D0);
        if (qword_1EE30C928 != -1)
        {
          swift_once();
        }

        sub_1DB50BEB0();
        v16 = *(v0 + 152);
        v40 = *(v0 + 160);
        __swift_project_boxed_opaque_existential_1((v0 + 128), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1DB50EE90;
        v18 = sub_1DB301BC0(0, 25, 0, MEMORY[0x1E69E7CC0]);
        if (("Retrieve Cached Asset" & 0x2F00000000000000) != 0x2000000000000000)
        {
          *(v0 + 272) = MEMORY[0x1E69E6158];
          *(v0 + 248) = 0xD000000000000018;
          *(v0 + 256) = 0x80000001DB529C70;
          *(v0 + 168) = 0u;
          *(v0 + 184) = 0u;
          sub_1DB301D4C(v0 + 248, v0 + 168);
          *(v0 + 200) = 0;
          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          if (v20 >= v19 >> 1)
          {
            v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v20 + 1;
          v21 = &v18[40 * v20];
          v22 = *(v0 + 168);
          v23 = *(v0 + 184);
          v21[64] = *(v0 + 200);
          *(v21 + 2) = v22;
          *(v21 + 3) = v23;
        }

        if (*(v0 + 20))
        {
          v24 = v0 + 280;
          *v41 = 0uLL;
          *(v0 + 296) = 0uLL;
        }

        else
        {
          v31 = *(v0 + 16);
          *(v0 + 304) = MEMORY[0x1E69E72F0];
          *(v0 + 280) = v31;
          v24 = v0 + 280;
        }

        sub_1DB301CDC(v24, v0 + 312);
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        sub_1DB301D4C(v0 + 312, v0 + 208);
        *(v0 + 240) = 0;
        v33 = *(v18 + 2);
        v32 = *(v18 + 3);
        if (v33 >= v32 >> 1)
        {
          v18 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v18);
        }

        *(v18 + 2) = v33 + 1;
        v34 = &v18[40 * v33];
        v35 = *(v0 + 208);
        v36 = *(v0 + 224);
        v34[64] = *(v0 + 240);
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        sub_1DB30623C(v41, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v17 + 32) = v18;
        Logger.error(_:)(v17, v16, v40);
        sub_1DB32DFF8(v0 + 16);

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 128));
        v5 = v39;
      }

      else
      {
        v26 = *(v0 + 384);
        v25 = *(v0 + 392);
        v27 = *(v0 + 376);
        v28 = *(v0 + 352);
        sub_1DB32DFF8(v0 + 16);
        sub_1DB32E6D0(v28, v27, type metadata accessor for JetPackAsset);
        sub_1DB32E6D0(v27, v26, type metadata accessor for JetPackAsset);
        sub_1DB32E6D0(v26, v25, type metadata accessor for JetPackAsset);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB302A0C(0, v8[2] + 1, 1, v8);
        }

        v30 = v8[2];
        v29 = v8[3];
        if (v30 >= v29 >> 1)
        {
          v8 = sub_1DB302A0C((v29 > 1), v30 + 1, 1, v8);
        }

        v9 = *(v0 + 392);
        v8[2] = v30 + 1;
        result = sub_1DB32E6D0(v9, v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for JetPackAsset);
      }

      ++v6;
      v7 = (v7 + 56);
      if (v42 == v6)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v37 = *(v0 + 8);

    return v37(v8);
  }

  return result;
}