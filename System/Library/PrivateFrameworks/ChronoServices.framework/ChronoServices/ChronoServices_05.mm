id sub_195F6CF7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_195FA0EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_195F6D0BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  v2 = *v0;
  v3 = sub_195FA0EC8();
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

void *sub_195F6D218()
{
  v1 = v0;
  v2 = sub_195FA0478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  v6 = *v0;
  v7 = sub_195FA0EC8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_195F6D450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  v2 = *v0;
  v3 = sub_195FA0EC8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

uint64_t sub_195F6D5BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_195FA0ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_195FA0D78();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_195F6D7C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  result = sub_195FA0ED8();
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
      sub_195FA1398();

      sub_195FA0958();
      result = sub_195FA13E8();
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

uint64_t sub_195F6DA00(uint64_t a1)
{
  v2 = v1;
  v33 = sub_195FA0478();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  v7 = sub_195FA0ED8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_195F6E0A8(&qword_1EAEEBCD0, MEMORY[0x1E6968FC0]);
      result = sub_195FA0818();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_195F6DD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  result = sub_195FA0ED8();
  v5 = result;
  if (*(v3 + 16))
  {
    v39 = v2;
    v6 = 0;
    v7 = v3 + 56;
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
    v40 = v3;
    v41 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v44 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v24 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v42 = v22;
      v43 = v20;
      if (v21)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      *(inited + 32) = v25;
      *(inited + 40) = v21;
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_195EB6308(v24, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_195FAC070;
      v27 = sub_195EB5F80();
      v28 = sub_195EB6074(v27);
      v30 = v29;

      *(v26 + 32) = v28;
      *(v26 + 40) = v30;

      sub_195EB6214(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      sub_195FA0828();

      sub_195FA0958();

      result = sub_195FA13E8();
      v5 = v41;
      v32 = -1 << *(v41 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v41 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v43;
      v14[2] = v42;
      v14[3] = v21;
      ++*(v41 + 16);
      v3 = v40;
      v10 = v44;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_195F6E0A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_195FA0478();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IconSourcePredicate.description.getter()
{
  v1 = 0x65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t IconSourcePredicate.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F6E1C4()
{
  result = qword_1EAEEE320;
  if (!qword_1EAEEE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE320);
  }

  return result;
}

uint64_t sub_195F6E218()
{
  v1 = 0x65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

id RelevanceCacheEntry.key.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v3 = [v1 key];

    return v3;
  }
}

unint64_t RelevanceCacheError.debugDescription.getter()
{
  v1 = v0[1];
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0xD000000000000037;
    }

    if (v1 == 1)
    {
      return 0xD00000000000002ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0xD000000000000029;
      case 3:
        return 0xD000000000000042;
      case 4:
        return 0xD000000000000015;
    }
  }

  v3 = *v0;
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](0xD000000000000034, 0x8000000195FC21F0);
  MEMORY[0x19A8C3F70](v3, v1);
  MEMORY[0x19A8C3F70](46, 0xE100000000000000);
  return 0;
}

id RelevanceCacheEntry.value.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_14ChronoServices19RelevanceCacheErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_195F6E484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F6E4DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_195F6E55C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_195F6E5A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_195F6E604(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE328, &qword_195FAFC38);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  v6 = objc_allocWithZone(_CHSRelevanceCacheBuf);
  sub_195EC08E4(a1, a2);
  v7 = sub_195FA04B8();
  v8 = [v6 initVerifiedRootObjectFromData_];

  sub_195EC0890(a1, a2);
  if (v8)
  {
    *(v2 + 16) = v8;
    v9 = *(v2 + 32);
    *(v2 + 32) = 0;

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    sub_195F36864();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    swift_willThrow();
    sub_195EC0890(a1, a2);

    type metadata accessor for RelevanceCacheReader();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_195F6E73C@<X0>(char **a1@<X8>)
{
  v3 = [*(v1 + 16) groups];
  if (v3)
  {
    v4 = v3;
    sub_195EB4B30(0, &qword_1EAEEBCF0, off_1E74528D0);
    v5 = sub_195FA0B38();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
LABEL_41:
    v6 = sub_195FA0E88();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_42:
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_42;
  }

LABEL_6:
  v54 = v1;
  v1 = 0;
  v7 = v5 & 0xC000000000000001;
  v56 = MEMORY[0x1E69E7CC0];
  v55 = a1;
  do
  {
    v8 = v1;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x19A8C4520](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v11 = [v9 extensionIdentity];
      if (v11)
      {
        break;
      }

LABEL_9:
      ++v8;
      if (v1 == v6)
      {
        a1 = v55;
        goto LABEL_43;
      }
    }

    v12 = v11;
    v13 = [v11 deviceIdentifier];
    if (v13)
    {
      v14 = v13;
      a1 = sub_195FA08B8();
      v16 = v15;

      v7 = v5 & 0xC000000000000001;
    }

    else
    {
      a1 = 0;
      v16 = 0;
    }

    v17 = [v12 extensionBundleIdentifier];
    if (!v17)
    {

      goto LABEL_9;
    }

    v18 = v17;
    v19 = sub_195FA08B8();
    v52 = v20;

    v21 = [v12 containerBundleIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = sub_195FA08B8();
      v49 = v24;
      v50 = v23;
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    if (v16)
    {
      v25 = a1;
    }

    else
    {
      v25 = 0;
    }

    v48 = v25;
    v26 = [objc_allocWithZone(CHSExtensionIdentity) init];

    v27 = &v26[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    *v27 = v19;
    v27[1] = v52;
    v28 = v26;

    v29 = &v28[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    *v29 = v50;
    *(v29 + 1) = v49;

    v30 = &v28[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    *v30 = v48;
    v30[1] = v16;

    v31 = [v10 kind];
    if (v31)
    {
      v32 = v31;
      sub_195FA08B8();
    }

    LODWORD(v33) = [v10 isDeletion];
    if (v33)
    {
      v34 = objc_allocWithZone(CHSWidgetRelevanceKey);
      v35 = v28;
      v36 = sub_195FA0888();

      v37 = [v34 initWithExtensionIdentity:v35 kind:v36];
    }

    else
    {
      v53 = [v10 supportsBackgroundRefresh];
      [v10 lastRelevanceUpdate];
      v39 = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = v10;
      *(v40 + 24) = v54;
      v51 = objc_allocWithZone(CHSWidgetRelevanceProperties);
      v41 = v10;

      v42 = sub_195FA0888();

      aBlock[4] = sub_195F6F46C;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_195F6F474;
      aBlock[3] = &block_descriptor_10;
      v33 = _Block_copy(aBlock);
      v37 = [v51 initWithWidgetExtensionIdentity:v28 kind:v42 supportsBackgroundRefresh:v53 lastRelevanceUpdate:v33 relevanceFunction:v39];

      v43 = v33;
      LOBYTE(v33) = 0;
      _Block_release(v43);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_195F38BB4(0, *(v56 + 2) + 1, 1, v56);
    }

    v45 = *(v56 + 2);
    v44 = *(v56 + 3);
    if (v45 >= v44 >> 1)
    {
      v56 = sub_195F38BB4((v44 > 1), v45 + 1, 1, v56);
    }

    *(v56 + 2) = v45 + 1;
    v46 = &v56[16 * v45];
    *(v46 + 4) = v37;
    v46[40] = v33;
    a1 = v55;
    v7 = v5 & 0xC000000000000001;
  }

  while (v1 != v6);
LABEL_43:

  *a1 = v56;
  return result;
}

char *sub_195F6ECD4()
{
  v1 = v0;
  v2 = [v0 deviceIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_195FA08B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 extensionBundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_195FA08B8();
    v11 = v10;

    v12 = [v1 containerBundleIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_195FA08B8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    if (v6)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(CHSExtensionIdentity) init];
    v20 = &v19[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    *v20 = v9;
    v20[1] = v11;
    v17 = v19;

    v21 = &v17[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    *v21 = v14;
    v21[1] = v16;

    v22 = &v17[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    *v22 = v18;
    v22[1] = v6;
  }

  else
  {

    return 0;
  }

  return v17;
}

uint64_t sub_195F6EEA0(void *a1, uint64_t a2)
{
  v2 = [a1 relevances];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    sub_195EB4B30(0, &qword_1EAEEBD30, off_1E74528C0);
    v5 = sub_195FA0B38();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v27 = v3;
  if (!(v5 >> 62))
  {
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_25:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

LABEL_24:
  v25 = v5 & 0xFFFFFFFFFFFFFF8;
  v6 = sub_195FA0E88();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = 0;
  v24 = v5 & 0xC000000000000001;
  v8 = MEMORY[0x1E69E7CC0];
  v22 = v5;
  do
  {
    v9 = v7;
    while (1)
    {
      if (v24)
      {
        v10 = MEMORY[0x19A8C4520](v9, v5);
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = [v10 attributeKey];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v13 = v6;
    v14 = v12;
    sub_195FA08B8();

    v15 = *(a2 + 24);
    v17 = MEMORY[0x1EEE9AC00](v16);
    MEMORY[0x1EEE9AC00](v17);

    os_unfair_lock_lock(v15 + 4);
    sub_195F6F514(&v26);
    os_unfair_lock_unlock(v15 + 4);

    v18 = v26;

    sub_195EB4B30(0, &qword_1EAEEC148, off_1E7452640);
    v19 = sub_195F6F1EC([v11 intentReference]);
    [objc_allocWithZone(CHSWidgetRelevance) initWithAttribute:v18 intentReference:v19];

    MEMORY[0x19A8C40E0]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_195FA0B58();
    }

    sub_195FA0B78();
    v8 = v27;
    v6 = v13;
    v20 = v7 == v13;
    v5 = v22;
  }

  while (!v20);
LABEL_26:

  return v8;
}

id sub_195F6F1EC(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 intentDataAsData];
    if (v2 || (v2 = [v1 partialIntentDataAsData]) != 0 || (v2 = objc_msgSend(v1, sel_schemaDataAsData)) != 0)
    {
      v3 = v2;
      v4 = sub_195FA04D8();
      v6 = v5;

      sub_195EC0890(v4, v6);
      v7 = [v1 stableHash];
      v8 = [v1 intentDataAsData];
      if (v8)
      {
        v9 = v8;
        v10 = sub_195FA04D8();
        v12 = v11;

        v13 = sub_195FA04B8();
        sub_195EC0890(v10, v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = [v1 partialIntentDataAsData];
      if (v14)
      {
        v15 = v14;
        v16 = sub_195FA04D8();
        v18 = v17;

        v19 = sub_195FA04B8();
        sub_195EC0890(v16, v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = [v1 schemaDataAsData];
      if (v20)
      {
        v21 = v20;
        v22 = sub_195FA04D8();
        v24 = v23;

        v25 = sub_195FA04B8();
        sub_195EC0890(v22, v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntentData:v13 configData:v19 schemaData:v25 stableHash:v7];

      return v26;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_195F6F3F8()
{

  sub_195EC0890(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

id sub_195F6F474(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_195EB4B30(0, &qword_1EAEEBD50, off_1E7452800);
  v3 = sub_195FA0B28();

  return v3;
}

id static CHSWidgetDescriptor.mock(extensionIdentity:kind:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v4 = CHSDefaultTestFamilyMaskSingle();
  v5 = objc_allocWithZone(CHSWidgetDescriptor);
  v6 = sub_195FA0888();

  v7 = [v5 initWithExtensionIdentity:a1 kind:v6 supportedFamilies:v4 intentType:0];

  return v7;
}

id static ControlIconGenerator.appIconForControls(container:size:scale:)(uint64_t *a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:a2 scale:{a3, a4}];
  [v4 setShouldApplyMask_];
  v5 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v6 = sub_195FA0888();

  v7 = [v5 initWithBundleIdentifier_];

  v8 = [v7 prepareImageForDescriptor_];
  return v8;
}

uint64_t CHSExtensionIdentity.partial.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v8;
  a1[3] = v7;
}

uint64_t DeviceScopedIdentity<>.extensionBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *DeviceScopedIdentity<>.init(extensionBundleIdentifier:deviceID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

id sub_195F6F7FC()
{
  result = [objc_allocWithZone(CHSControlService) init];
  qword_1EAEEC158 = result;
  return result;
}

CHSControlService __swiftcall CHSControlService.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static CHSControlService.shared.getter()
{
  if (qword_1EAEEC150 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEC158;

  return v1;
}

uint64_t sub_195F6FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  return MEMORY[0x1EEE6DFA0](sub_195F6FA80, 0, 0);
}

uint64_t sub_195F6FA80()
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 72) + **(v2 + 72));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_195F6FBFC;

  return v5(v1, v2);
}

uint64_t sub_195F6FBFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_195F6FDAC;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_195F6FD24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_195F6FD24()
{
  v1 = v0[14];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_195F6FDAC()
{
  v1 = v0[13];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_195F6FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_195F712D0(a3, v25 - v10);
  v12 = sub_195FA0BC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_195F71340(v11);
  }

  else
  {
    sub_195FA0BB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_195FA0B88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_195FA0918() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_195F71340(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_195F71340(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_195F7024C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for CHSControlConfiguration(0);
    v5 = sub_195FA07E8();
  }

  if (a2)
  {
    v6 = sub_195FA0318();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t CHSControlService.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:completion:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v39 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = &v35 - v16;
  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v17 = sub_195FA0678();
  __swift_project_value_buffer(v17, qword_1EAEF72E8);

  v18 = sub_195FA0658();
  v19 = sub_195FA0CC8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v36 = v8;
    v23 = a7;
    v24 = a3;
    v25 = a4;
    v26 = v22;
    v40 = v22;
    *v21 = 136446722;
    v27 = v39;
    *(v21 + 4) = sub_195EBD554(v39, a2, &v40);
    *(v21 + 12) = 1026;
    *(v21 + 14) = v24 & 1;
    *(v21 + 18) = 2082;
    *(v21 + 20) = sub_195EBD554(v25, a5, &v40);
    _os_log_impl(&dword_195EB2000, v18, v19, "Fetching control descriptor for extension: %{public}s, userInitiated: %{BOOL,public}d reason: %{public}s", v21, 0x1Cu);
    swift_arrayDestroy();
    v28 = v26;
    a4 = v25;
    a3 = v24;
    a7 = v23;
    v8 = v36;
    MEMORY[0x19A8C5B70](v28, -1, -1);
    v29 = v21;
    a6 = v37;
    MEMORY[0x19A8C5B70](v29, -1, -1);
  }

  else
  {

    v27 = v39;
  }

  v30 = sub_195FA0BC8();
  v31 = v38;
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v8;
  *(v32 + 40) = v27;
  *(v32 + 48) = a2;
  *(v32 + 56) = a3 & 1;
  *(v32 + 64) = a4;
  *(v32 + 72) = a5;
  *(v32 + 80) = a6;
  *(v32 + 88) = a7;

  v33 = v8;

  sub_195F6FE44(0, 0, v31, &unk_195FAFCC8, v32);
}

uint64_t sub_195F705FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a6;
  *(v8 + 96) = a8;
  *(v8 + 152) = a7;
  *(v8 + 80) = a5;
  return MEMORY[0x1EEE6DFA0](sub_195F70638, 0, 0);
}

uint64_t sub_195F70638()
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v10 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_195F707C4;
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 152);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);

  return v10(v8, v7, v6, v4, v5, v1, v2);
}

uint64_t sub_195F707C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_195F70974;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_195F708EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_195F708EC()
{
  v1 = v0[18];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_195F70974()
{
  v1 = v0[17];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_195F70AFC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_195EB4B30(0, &qword_1EAEEBE70, off_1E74525A0);
    v5 = sub_195FA0B28();
  }

  if (a2)
  {
    v6 = sub_195FA0318();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_195F70BA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_195F70CA0;

  return v6(a1);
}

uint64_t sub_195F70CA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_195F70D98(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_195F70E0C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sSo17CHSControlServiceC14ChronoServicesE14reloadControls12forExtension4kind6reasonySS_SSSgSStF_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF72E8);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v22 = a1;
  v23 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_195EBD554(a1, a2, v24);
    *(v15 + 12) = 2082;
    if (a4)
    {
      v17 = a4;
    }

    else
    {
      a3 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_195EBD554(a3, v17, v24);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_195EBD554(a5, a6, v24);
    _os_log_impl(&dword_195EB2000, v13, v14, "Reloading control for extension: %{public}s kind: %{public}s reason: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, v24);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v20 + 24))(v22, a2, v23, a4, a5, a6, v19, v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_195F710E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_195F32774;

  return sub_195F705FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_195F71208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_195F32D80;

  return sub_195F6FA60(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_195F712D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F71340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F713A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_195F32D80;

  return sub_195F70BA8(a1, v4);
}

uint64_t sub_195F71460(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_195F32774;

  return sub_195F70BA8(a1, v4);
}

uint64_t ConcreteFileManagerFactory.defaultFileManager.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerFactory.makeFileManager()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerPrimitives.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t sub_195F71664@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t sub_195F716D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerPrimitives.__allocating_init(fileManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool __swiftcall ConcreteFileManagerPrimitives.fileExists(atPath:)(Swift::String atPath)
{
  v2 = *(v1 + 16);
  v3 = sub_195FA0888();
  LOBYTE(v2) = [v2 fileExistsAtPath_];

  return v2;
}

id ConcreteFileManagerPrimitives.fileExists(atPath:isDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = sub_195FA0888();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t ConcreteFileManagerPrimitives.contentsOfDirectory(atPath:)(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 16);
  v4 = sub_195FA0888();
  v25[0] = 0;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:v25];

  v6 = v25[0];
  if (v5)
  {
    v7 = sub_195FA0B38();
    v8 = v6;

    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v7 + 40;
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        v12 = (v11 + 16 * v10);
        v13 = v10;
        while (1)
        {
          if (v13 >= *(v7 + 16))
          {
            __break(1u);
          }

          v15 = *(v12 - 1);
          v14 = *v12;
          v10 = v13 + 1;
          v25[0] = v15;
          v25[1] = v14;
          sub_195ECC284();

          if ((sub_195FA0DF8() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          ++v13;
          if (v9 == v10)
          {
            goto LABEL_17;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v24;
        v26 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_195F391DC(0, *(v24 + 16) + 1, 1);
          v17 = v26;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_195F391DC((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v17 = v26;
        }

        *(v17 + 16) = v20;
        v24 = v17;
        v21 = v17 + 16 * v19;
        *(v21 + 32) = v15;
        *(v21 + 40) = v14;
        v11 = v7 + 40;
      }

      while (v9 - 1 != v13);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

LABEL_17:
  }

  else
  {
    v22 = v25[0];
    sub_195FA0328();

    swift_willThrow();
  }

  return v24;
}

void *ConcreteFileManagerPrimitives.contentsOfDirectory(at:includingPropertiesForKeys:)(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  v5 = sub_195FA0398();
  if (a2)
  {
    type metadata accessor for URLResourceKey(0);
    a2 = sub_195FA0B28();
  }

  v11[0] = 0;
  v6 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:a2 options:0 error:v11];

  v7 = v11[0];
  if (v6)
  {
    sub_195FA0478();
    a2 = sub_195FA0B38();
    v8 = v7;
  }

  else
  {
    v9 = v11[0];
    sub_195FA0328();

    swift_willThrow();
  }

  return a2;
}

char *ConcreteFileManagerPrimitives.recursiveContentsOfDirectory(at:includingPropertiesForKeys:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_195FA0478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_195FA0348();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA0C78();
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = v13;
  v27 = v10;
  sub_195FA0C58();
  sub_195FA0338();
  if (v29)
  {
    v24 = v5;
    v26 = (v5 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v16 = swift_dynamicCast();
        v17 = *(v5 + 56);
        if (v16)
        {
          break;
        }

        v17(v9, 1, 1, v4);
        sub_195F3AE44(v9);
        sub_195FA0338();
        if (!v29)
        {
          goto LABEL_15;
        }
      }

      v17(v9, 0, 1, v4);
      v18 = *v26;
      (*v26)(v30, v9, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v3;
      v23 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_195F38EE4(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_195F38EE4((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      v23(&v15[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21], v30, v4);
      sub_195FA0338();
      v3 = v25;
    }

    while (v29);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  (*(v28 + 8))(v12, v27);

  return v15;
}

void *ConcreteFileManagerPrimitives.extendedAttribute<A>(at:key:of:)@<X0>(uint64_t *a1@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_195FA0DB8();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  return sub_195F418E0(v4, v5, v6, WitnessTable, v8, a3);
}

id ConcreteFileManagerPrimitives.removeItem(at:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  v3 = sub_195FA0398();
  v6[0] = 0;
  LODWORD(v2) = [v2 removeItemAtURL:v3 error:v6];

  if (v2)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_195FA0328();

  return swift_willThrow();
}

id sub_195F721F0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  v6 = sub_195FA0398();
  v7 = sub_195FA0398();
  v10[0] = 0;
  LODWORD(a3) = [v5 *a3];

  if (a3)
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_195FA0328();

  return swift_willThrow();
}

id ConcreteFileManagerPrimitives.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 16);
  v7 = sub_195FA0398();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a3 = sub_195FA07E8();
  }

  v11[0] = 0;
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v11];

  if (v8)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_195FA0328();

  return swift_willThrow();
}

uint64_t ConcreteFileManagerPrimitives.lastModificationDate(at:)@<X0>(uint64_t a2@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  sub_195FA0448();
  v5 = sub_195FA0888();

  v17[0] = 0;
  v6 = [v4 attributesOfItemAtPath:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    v8 = sub_195FA0808();
    v9 = v7;

    if (*(v8 + 16) && (v10 = sub_195F59E54(*MEMORY[0x1E696A350]), (v11 & 1) != 0))
    {
      sub_195EBDAFC(*(v8 + 56) + 32 * v10, v17);

      v12 = sub_195FA0518();
      v13 = swift_dynamicCast();
      return (*(*(v12 - 8) + 56))(a2, v13 ^ 1u, 1, v12);
    }

    else
    {

      v15 = sub_195FA0518();
      return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
    }
  }

  else
  {
    v16 = v17[0];
    sub_195FA0328();

    return swift_willThrow();
  }
}

uint64_t ConcreteFileManagerPrimitives.creationDate(at:)()
{
  v1 = sub_195FA0278();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE340, &qword_195FAFD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC070;
  v6 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v7 = v6;
  sub_195F72FCC(inited);
  swift_setDeallocating();
  sub_195F731C0(inited + 32);
  sub_195FA0378();

  if (!v0)
  {
    sub_195FA0268();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void *ConcreteFileManagerPrimitives.subpathsOfDirectory(atPath:)(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 16);
  v4 = sub_195FA0888();
  v10[0] = 0;
  v5 = [v3 subpathsOfDirectoryAtPath:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {
    v4 = sub_195FA0B38();
    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    sub_195FA0328();

    swift_willThrow();
  }

  return v4;
}

uint64_t ConcreteFileManagerPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_195F728A8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v4 = sub_195FA0888();
  v5 = [v3 fileExistsAtPath_];

  return v5;
}

id sub_195F728F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 16);
  v6 = sub_195FA0888();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t sub_195F72AD4()
{
  v1 = sub_195FA0278();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE340, &qword_195FAFD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC070;
  v6 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v7 = v6;
  sub_195F72FCC(inited);
  swift_setDeallocating();
  sub_195F731C0(inited + 32);
  sub_195FA0378();

  if (!v0)
  {
    sub_195FA0268();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_195F72CB0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_195FA0E88();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_195FA0EF8();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_195FA0E88();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x19A8C4520](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_195FA0D78();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_195EB4B30(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_195FA0D88();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_195FA0D78();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_195EB4B30(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_195FA0D88();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_195F72FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE348, &qword_195FAFDC8);
    v3 = sub_195FA0EF8();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_195FA08B8();
      sub_195FA1398();
      v27 = v7;
      sub_195FA0958();
      v8 = sub_195FA13E8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_195FA08B8();
        v18 = v17;
        if (v16 == sub_195FA08B8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_195FA12B8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_195F731C0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SandboxExtension.token.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_195F732A4()
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F73308(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F73354@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_195FA10D8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_195F733D4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_195FA10D8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_195F7342C(uint64_t a1)
{
  v2 = sub_195F7402C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F73468(uint64_t a1)
{
  v2 = sub_195F7402C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtension.__allocating_init(token:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t SandboxExtension.init(token:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t SandboxExtension.deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sandbox_extension_release();
  }

  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sandbox_extension_release();
  }

  return swift_deallocClassInstance();
}

char *static SandboxExtension.issue(url:readonly:)(uint64_t a1, char a2)
{
  v3 = v2;
  sub_195FA0438();
  sub_195FA0918();

  v4 = sandbox_extension_issue_file();

  if (v4)
  {
    v6 = sub_195FA0878();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v3 = swift_allocObject();
      *(v3 + 24) = v9;
      *(v3 + 32) = 0;
      *(v3 + 40) = 1;
      *(v3 + 16) = v8;
    }

    else
    {
      sub_195F73700();
      swift_allocError();
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 1;
      swift_willThrow();
    }

    free(v4);
    return v3;
  }

  v10 = MEMORY[0x19A8C3C80](v5);
  v11 = MEMORY[0x19A8C3C80]();
  result = strerror(v11);
  if (result)
  {
    v13 = sub_195FA0878();
    v3 = v14;
    sub_195F73700();
    swift_allocError();
    *v15 = v10;
    v15[1] = v13;
    v15[2] = v3;
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_195F73700()
{
  result = qword_1EAEEBC38[0];
  if (!qword_1EAEEBC38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAEEBC38);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  v1 = v0;
  if (*(v0 + 40))
  {
    sub_195FA0918();
    v2 = sandbox_extension_consume();

    if (v2 < 0)
    {
      v12 = MEMORY[0x19A8C3C80](v3);
      v13 = MEMORY[0x19A8C3C80]();
      if (strerror(v13))
      {
        v14 = sub_195FA0878();
        v16 = v15;
        sub_195F73700();
        swift_allocError();
        *v17 = v12;
        v17[1] = v14;
        v17[2] = v16;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(v1 + 32) = v2;
      *(v1 + 40) = 0;
    }
  }

  else
  {
    if (qword_1EAEED008 != -1)
    {
      swift_once();
    }

    v4 = sub_195FA0678();
    __swift_project_value_buffer(v4, qword_1EAEF7348);

    v5 = sub_195FA0658();
    v6 = sub_195FA0C98();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = SandboxExtension.description.getter();
      v11 = sub_195EBD554(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_195EB2000, v5, v6, "SandboxExtension already consumed: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x19A8C5B70](v8, -1, -1);
      MEMORY[0x19A8C5B70](v7, -1, -1);
    }
  }
}

unint64_t SandboxExtension.description.getter()
{
  v1 = v0;
  sub_195FA0F38();

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);

  v4 = sub_195F73F90(16, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x19A8C3EF0](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x19A8C3F70](v11, v13);

  MEMORY[0x19A8C3F70](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v14 = sub_195FA1288();
  MEMORY[0x19A8C3F70](v14);

  MEMORY[0x19A8C3F70](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE350, &qword_195FAFDE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1468();
  sub_195FA11F8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SandboxExtension.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SandboxExtension.init(from:)(a1);
  return v2;
}

uint64_t *SandboxExtension.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE358, &qword_195FAFDE8);
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1448();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v14;
    v10 = sub_195FA1138();
    v12 = v11;
    (*(v8 + 8))(v7, v5);
    *(v3 + 16) = v10;
    *(v3 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t *sub_195F73DDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SandboxExtension.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_195F73E34(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE350, &qword_195FAFDE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1468();
  sub_195FA11F8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_195F73F90(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_195FA0988();

    return sub_195FA0A68();
  }

  return result;
}

unint64_t sub_195F7402C()
{
  result = qword_1EAEEBF78[0];
  if (!qword_1EAEEBF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAEEBF78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ChronoServices12SandboxErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_195F7412C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F74194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_195F741E8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

unint64_t sub_195F7422C()
{
  result = qword_1EAEEE360;
  if (!qword_1EAEEE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE360);
  }

  return result;
}

unint64_t sub_195F74284()
{
  result = qword_1EAEEBF68;
  if (!qword_1EAEEBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF68);
  }

  return result;
}

unint64_t sub_195F742DC()
{
  result = qword_1EAEEBF70;
  if (!qword_1EAEEBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF70);
  }

  return result;
}

id sub_195F74330()
{
  v0 = type metadata accessor for ControlsClient();
  result = [objc_allocWithZone(v0) init];
  qword_1EAEEC2D8 = v0;
  unk_1EAEEC2E0 = &protocol witness table for ControlsClient;
  qword_1EAEEC2C0 = result;
  return result;
}

id ControlsClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static ControlsClientFactory.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_195EC97E0(&qword_1EAEEC2C0, a1);
}

uint64_t static ControlsClientFactory.shared.setter(uint64_t *a1)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EAEEC2C0, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t (*static ControlsClientFactory.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_195F74764@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_195EC97E0(&qword_1EAEEC2C0, a1);
}

uint64_t sub_195F747E4(uint64_t *a1)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EAEEC2C0, a1);
  return swift_endAccess();
}

uint64_t (*sub_195F748C0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_195F74894();
  return sub_195F74908;
}

uint64_t sub_195F74928(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE380, qword_195FB00A0);
    sub_195EB5F38(&qword_1EAEEBEA8, &unk_1EAEEE380, qword_195FB00A0, MEMORY[0x1E695BF88]);
    v4 = sub_195FA0738();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t (*sub_195F74A14(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_195F74914();
  return sub_195F74A5C;
}

char *ControlsClient.init()()
{
  v1 = v0;
  v29 = sub_195FA0CF8();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue;
  v6 = sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  v26[3] = "ension";
  v26[4] = v6;
  sub_195FA07A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v26[2] = sub_195EC6890(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  v7 = *MEMORY[0x1E69E8098];
  v8 = v2 + 104;
  v9 = *(v2 + 104);
  v26[0] = v8;
  v9(v28, v7, v29);
  *&v0[v27] = sub_195FA0D38();
  v27 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue;
  sub_195FA07A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_195FA0E38();
  v9(v28, v7, v29);
  *&v0[v27] = sub_195FA0D38();
  *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection] = 0;
  v10 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts] = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions] = v10;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_sandboxExtensions] = v10;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData] = xmmword_195FAD860;
  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue_liveControlsDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE380, qword_195FB00A0);
  swift_allocObject();
  *&v1[v14] = sub_195FA06F8();
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___liveControlsDidChangePublisher] = 0;
  v15 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue_previewControlsDidChangePublisher;
  swift_allocObject();
  *&v1[v15] = sub_195FA06F8();
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___previewControlsDidChangePublisher] = 0;
  v16 = &v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange];
  v17 = type metadata accessor for ControlsClient();
  *v16 = 0;
  *(v16 + 1) = 0;
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = CHSChronodStartupNotification;
  v20 = *&v18[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  aBlock[4] = sub_195F7573C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195F75A80;
  aBlock[3] = &block_descriptor_11;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v20;

  swift_beginAccess();
  notify_register_dispatch(v19, &unk_1EAEF7338, v24, v22);
  swift_endAccess();
  _Block_release(v22);

  return v23;
}

uint64_t sub_195F75004(uint64_t a1, char *a2)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (qword_1EAEEC280 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = sub_195FA0678();
    v43 = __swift_project_value_buffer(v10, qword_1EAEF7318);
    v11 = sub_195FA0658();
    v12 = sub_195FA0C98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_195EB2000, v11, v12, "Detected chronod relaunch.", v13, 2u);
      MEMORY[0x19A8C5B70](v13, -1, -1);
    }

    v53 = MEMORY[0x1E69E7CC8];
    v14 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
    os_unfair_lock_lock(*(v14 + 16));
    sub_195F75744(a2, &v53);
    v45 = v7;
    v46 = v4;
    os_unfair_lock_unlock(*(v14 + 16));
    BSDispatchQueueAssert();
    sub_195F7F55C();
    v15 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection];
    if (v15)
    {
      v16 = v15;
      if ([v16 remoteTarget])
      {
        sub_195FA0E08();
        swift_unknownObjectRelease();

        sub_195F2DB00(&aBlock, &unk_1EAEED4B0, &qword_195FAC080);
      }

      else
      {
        aBlock = 0u;
        v50 = 0u;
        sub_195F2DB00(&aBlock, &unk_1EAEED4B0, &qword_195FAC080);
        [v16 activate];
      }
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    v51 = sub_195F83984;
    v52 = v17;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_195EBDBE8;
    *(&v50 + 1) = &block_descriptor_340;
    v18 = _Block_copy(&aBlock);
    v19 = a2;
    sub_195FA0798();
    v48 = MEMORY[0x1E69E7CC0];
    a2 = sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v9, v6, v18);
    _Block_release(v18);
    (*(v46 + 8))(v6, v3);
    (*(v44 + 8))(v9, v45);

    v20 = v19;
    v21 = sub_195FA0658();
    v22 = sub_195FA0C98();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      v24 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
      swift_beginAccess();
      v25 = *&v20[v24];
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = sub_195FA0E88();
      }

      else
      {
        v26 = *(v25 + 16);
      }

      *(v23 + 4) = v26;

      _os_log_impl(&dword_195EB2000, v21, v22, "Resubscribing to %{public}ld active sessions.", v23, 0xCu);
      MEMORY[0x19A8C5B70](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v46 = v53;
    v27 = v20;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      v28 = 0;
      v3 = 0;
      v9 = sub_195FA1018() | 0x8000000000000000;
    }

    else
    {
      v9 = v46;
      v29 = -1 << *(v46 + 32);
      v28 = ~v29;
      v6 = (v46 + 64);
      v30 = -v29;
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v3 = v31 & *(v46 + 64);
    }

    v4 = 0;
    v45 = v28;
    v32 = (v28 + 64) >> 6;
    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_21:
    v33 = v4;
    v34 = v3;
    v7 = v4;
    if (v3)
    {
LABEL_25:
      v35 = (v34 - 1) & v34;
      v36 = (v7 << 9) | (8 * __clz(__rbit64(v34)));
      v37 = *(*(v9 + 48) + v36);
      a2 = *(*(v9 + 56) + v36);

      if (v37)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v7 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v7 >= v32)
      {
        goto LABEL_31;
      }

      v34 = *&v6[8 * v7];
      ++v33;
      if (v34)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v38 = sub_195FA1048();
    if (!v38)
    {
      break;
    }

    v40 = v39;
    v47 = v38;
    type metadata accessor for ControlSessionKey();
    swift_dynamicCast();
    v41 = v48;
    v47 = v40;
    type metadata accessor for ControlSessionSubscriptionRequest();
    swift_dynamicCast();
    a2 = v48;
    v7 = v4;
    v35 = v3;
    if (!v41)
    {
      break;
    }

LABEL_29:

    sub_195F7DF30(a2, v27);

    v4 = v7;
    v3 = v35;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_195EB9E70(v9);
}

void sub_195F75744(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_195FA0E88();

    if (v6)
    {
LABEL_3:
      *a2 = *(a1 + v4);

      return;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_3;
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v7 = sub_195FA0678();
  __swift_project_value_buffer(v7, qword_1EAEF7318);
  v8 = sub_195FA0658();
  v9 = sub_195FA0C98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_195EB2000, v8, v9, "No active sessions - not reconnecting.", v10, 2u);
    MEMORY[0x19A8C5B70](v10, -1, -1);
  }
}

uint64_t sub_195F758B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v19 = v3;

  v10 = 0;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = *(v19 + 56) + 32 * (v12 | (v11 << 6));
        v20 = *(v13 + 24);
        v14 = *(v13 + 16);

        v15 = sub_195F7F24C();
        if (v15)
        {
          v16 = v15;
          v17 = sub_195FA0888();

          v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          [v16 updateControlHost:v17 configuration:v14 activationState:v18];

          result = swift_unknownObjectRelease();
          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v11 = v10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F75A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall ControlsClient.start()()
{
  v1 = *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F83AFC;
  *(v3 + 24) = v2;
  v7[4] = sub_195EC7340;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_195EC7454;
  v7[3] = &block_descriptor_10;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t ControlsClient.subscribeToSession(withRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_195FA0778();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_195FA07D8();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_195F75F3C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_16;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_195FA0798();
  v20 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t ControlsClient.unsubscribe(fromSession:)(uint64_t a1)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_195FA07D8();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_195F764E0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_22;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_195FA0798();
  v16 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_195F76244(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  sub_195F764E8(a1, a2, &v12);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v12)
  {
    sub_195FA05D8();
    v11[3] = type metadata accessor for ControlSessionKey();
    v11[4] = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey, &protocol conformance descriptor for ControlSessionKey);
    v11[0] = a2;

    v5 = sub_195FA05C8();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v8 = sub_195F7F24C();
    if (v8)
    {
      v9 = v8;
      v10 = sub_195FA04B8();
      [v9 unsubscribeFromSession_];
      sub_195EC0890(v5, v7);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_195EC0890(v5, v7);
    }
  }
}

uint64_t sub_195F764E8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  swift_beginAccess();
  sub_195F5A224(a2);
  swift_endAccess();

  v6 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_195F363B4(a2, v7);

  if (v8)
  {

    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v10 = sub_195FA0678();
    __swift_project_value_buffer(v10, qword_1EAEF7318);

    v11 = sub_195FA0658();
    v12 = sub_195FA0CC8();

    if (os_log_type_enabled(v11, v12))
    {
      v20 = a3;
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v13 = 136446210;
      v14 = sub_195F61F20();
      v16 = sub_195EBD554(v14, v15, v19);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_195EB2000, v11, v12, "Unsubscribing from session: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x19A8C5B70](v18, -1, -1);
      v17 = v13;
      a3 = v20;
      MEMORY[0x19A8C5B70](v17, -1, -1);
    }

    swift_beginAccess();
    sub_195F5A1FC(a2);
    swift_endAccess();

    *a3 = 1;
  }

  return result;
}

uint64_t ControlsClient.setVisiblySettled(_:forSession:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195FA0778();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_195FA07D8();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA05D8();
  v24 = type metadata accessor for ControlSessionKey();
  v25 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey, &protocol conformance descriptor for ControlSessionKey);
  aBlock[0] = a2;

  v12 = sub_195FA05C8();
  v20 = v9;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v19[1] = *&v2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v2;
  v15[5] = v12;
  v19[0] = v12;
  v15[6] = v14;
  v25 = sub_195F82000;
  v26 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v24 = &block_descriptor_28;
  v16 = _Block_copy(aBlock);

  v17 = v2;
  sub_195EC08E4(v12, v14);
  sub_195FA0798();
  v22 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v11, v8, v16);
  _Block_release(v16);
  sub_195EC0890(v19[0], v14);
  (*(v6 + 8))(v8, v5);
  (*(v21 + 8))(v11, v20);
}

void *sub_195F76BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF7318);

  v9 = sub_195FA0658();
  v10 = sub_195FA0C98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136446466;
    v13 = NSStringFromCHSControlVisibility(a1);

    if (!v13)
    {
      __break(1u);
      return result;
    }

    v15 = sub_195FA08B8();
    v17 = v16;

    v18 = sub_195EBD554(v15, v17, v29);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2082;
    v19 = sub_195F61F20();
    v21 = sub_195EBD554(v19, v20, v29);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_195EB2000, v9, v10, "Set visibly %{public}s for session: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v12, -1, -1);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  else
  {
  }

  v22 = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v22 + 16));
  v23 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v24 = *(a3 + v23);

  v25 = sub_195F363B4(a2, v24);

  if (v25)
  {
    swift_beginAccess();
    *(v25 + 32) = a1;
  }

  os_unfair_lock_unlock(*(v22 + 16));
  result = sub_195F7F24C();
  if (result)
  {
    v26 = result;
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v28 = sub_195FA04B8();
    [v26 setVisibility:v27 forSession:v28];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ControlsClient.setTaskPriority(_:forSession:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_195FA0778();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA07D8();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_195FA05D8();
  v27 = type metadata accessor for ControlSessionKey();
  v28 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey, &protocol conformance descriptor for ControlSessionKey);
  aBlock[0] = a2;

  v14 = sub_195FA05C8();
  v23 = v7;
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v22[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = a2;
  *(v17 + 32) = v3;
  *(v17 + 40) = v14;
  *(v17 + 48) = v16;
  v28 = sub_195F82058;
  v29 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v27 = &block_descriptor_34;
  v18 = _Block_copy(aBlock);
  v22[0] = v10;
  v19 = v18;

  v20 = v3;
  sub_195EC08E4(v14, v16);
  sub_195FA0798();
  v25 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v12, v9, v19);
  _Block_release(v19);
  sub_195EC0890(v14, v16);
  (*(v23 + 8))(v9, v6);
  (*(v24 + 8))(v12, v22[0]);
}

void sub_195F77390(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF7318);

  v9 = sub_195FA0658();
  v10 = sub_195FA0C98();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136446466;
    v13 = 0xD000000000000019;
    v14 = "foregroundOpportunistic";
    if (a1 == 2)
    {
      v13 = 0xD000000000000017;
      v14 = "backgroundConfigured";
    }

    v15 = "0:8^v16";
    v16 = 0xD000000000000014;
    if (a1)
    {
      v15 = "backgroundOpportunistic";
    }

    else
    {
      v16 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v13;
    }

    if (a1 <= 1u)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_195EBD554(v17, v18 | 0x8000000000000000, v31);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2082;
    v20 = sub_195F61F20();
    v22 = sub_195EBD554(v20, v21, v31);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_195EB2000, v9, v10, "Set widget task priority %{public}s for session: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v12, -1, -1);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  else
  {
  }

  v23 = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v23 + 16));
  v24 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v25 = *(a3 + v24);

  v26 = sub_195F363B4(a2, v25);

  if (v26)
  {
    swift_beginAccess();
    *(v26 + 24) = a1;
  }

  os_unfair_lock_unlock(*(v23 + 16));
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v28 = sub_195F7F24C();
  if (v28)
  {
    v29 = v28;
    v30 = sub_195FA04B8();
    [v29 setTaskPriority:v27 forSession:v30];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t ControlsClient.setEnvironmentModifiers(_:forSession:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = sub_195FA0778();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_195FA07D8();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA05D8();
  v29 = type metadata accessor for ControlSessionKey();
  v30 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey, &protocol conformance descriptor for ControlSessionKey);
  aBlock[0] = a3;

  v12 = sub_195FA05C8();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v22[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v3;
  v16 = a1;
  v15[4] = a1;
  v17 = v23;
  v15[5] = v23;
  v15[6] = v12;
  v15[7] = v14;
  v30 = sub_195F82068;
  v31 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v29 = &block_descriptor_40;
  v22[0] = _Block_copy(aBlock);

  v18 = v3;
  sub_195EC08E4(v16, v17);
  sub_195EC08E4(v12, v14);
  sub_195FA0798();
  v27 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  v19 = v24;
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  v20 = v22[0];
  MEMORY[0x19A8C42F0](0, v11, v8, v22[0]);
  _Block_release(v20);
  sub_195EC0890(v12, v14);
  (*(v19 + 8))(v8, v6);
  (*(v25 + 8))(v11, v26);
}

void *sub_195F77B7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v9 = sub_195FA0678();
  __swift_project_value_buffer(v9, qword_1EAEF7318);

  v10 = sub_195FA0658();
  v11 = sub_195FA0C98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136446210;
    v14 = sub_195F61F20();
    v16 = sub_195EBD554(v14, v15, v28);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_195EB2000, v10, v11, "Set environment modifiers for session: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x19A8C5B70](v13, -1, -1);
    MEMORY[0x19A8C5B70](v12, -1, -1);
  }

  v17 = *(a2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v19 = *(a2 + v18);

  v20 = sub_195F363B4(a1, v19);

  if (v20)
  {
    swift_beginAccess();
    v21 = *(v20 + 40);
    v22 = *(v20 + 48);
    *(v20 + 40) = a3;
    *(v20 + 48) = a4;
    sub_195EC08E4(a3, a4);
    sub_195EC5A34(v21, v22);
  }

  os_unfair_lock_unlock(*(v17 + 16));
  result = sub_195F7F24C();
  if (result)
  {
    v24 = result;
    v25 = sub_195FA04B8();
    v26 = sub_195FA04B8();
    [v24 setEnvironmentModifiers:v25 forSession:v26];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_195F77E04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F77E28, 0, 0);
}

uint64_t sub_195F77E28()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_195F77F2C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000019, 0x8000000195FC24E0, sub_195F82078, v4, v6);
}

uint64_t sub_195F77F2C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_195F78048;
  }

  else
  {

    v2 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F78048()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_195F780AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27[0] = v9;
    v14 = a4;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: setControlState", v13, 2u);
    v16 = v15;
    a4 = v14;
    v9 = v27[0];
    MEMORY[0x19A8C5B70](v16, -1, -1);
  }

  v17 = sub_195F7F24C();
  if (v17)
  {
    v18 = v17;
    v19 = sub_195FA04B8();
    (*(v7 + 16))(v9, a4, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    (*(v7 + 32))(v21 + v20, v9, v6);
    aBlock[4] = sub_195F837F0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_328;
    v22 = _Block_copy(aBlock);
    v23 = a1;

    [v18 setControlState:v19 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_195FA0658();
    v25 = sub_195FA0C98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_195EB2000, v24, v25, "xpc error: setControlState - unable to obtain the remote target", v26, 2u);
      MEMORY[0x19A8C5B70](v26, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F78438(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F7845C, 0, 0);
}

uint64_t sub_195F7845C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_195F78560;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001ELL, 0x8000000195FC2500, sub_195F820BC, v4, v6);
}

uint64_t sub_195F78560()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_195F83AA4;
  }

  else
  {

    v2 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7867C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v27 = a4;
  v28 = a6;
  v26 = a5;
  v31 = sub_195FA0778();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v29 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v16 + 16))(&v26 - v17, a1, v15);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v27;
  *(v20 + 4) = v27;
  (*(v16 + 32))(&v20[v19], v18, v15);
  aBlock[4] = v28;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  sub_195EC08E4(a3, v21);
  sub_195FA0798();
  v35 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  v24 = v31;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v22);
  _Block_release(v22);
  (*(v34 + 8))(v11, v24);
  (*(v32 + 8))(v14, v33);
}

void sub_195F78A38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27[0] = v9;
    v14 = a4;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: performControlAction", v13, 2u);
    v16 = v15;
    a4 = v14;
    v9 = v27[0];
    MEMORY[0x19A8C5B70](v16, -1, -1);
  }

  v17 = sub_195F7F24C();
  if (v17)
  {
    v18 = v17;
    v19 = sub_195FA04B8();
    (*(v7 + 16))(v9, a4, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    (*(v7 + 32))(v21 + v20, v9, v6);
    aBlock[4] = sub_195F83590;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_310;
    v22 = _Block_copy(aBlock);
    v23 = a1;

    [v18 performControlAction:v19 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_195FA0658();
    v25 = sub_195FA0C98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_195EB2000, v24, v25, "xpc error: performControlAction - unable to obtain the remote target", v26, 2u);
      MEMORY[0x19A8C5B70](v26, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F78DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23[0] = a3;
  v23[1] = a4;
  v8 = sub_195FA0778();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_195FA07D8();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v23[2] = *(a2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v15 + 16))(v23 - v16, v23[0], v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  sub_195FA0798();
  v28 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v10, v20);
  _Block_release(v20);
  (*(v27 + 8))(v10, v8);
  (*(v11 + 8))(v13, v26);
}

Swift::Void __swiftcall ControlsClient.reloadControls(forExtension:kind:reason:)(Swift::String forExtension, Swift::String_optional kind, Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v6 = kind.value._object;
  v7 = kind.value._countAndFlagsBits;
  v8 = forExtension._object;
  v9 = forExtension._countAndFlagsBits;
  v10 = sub_195FA0778();
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v20 = *(v13 - 8);
  v21 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = v9;
  v16[4] = v8;
  v16[5] = v7;
  v16[6] = v6;
  v16[7] = countAndFlagsBits;
  v16[8] = object;
  aBlock[4] = sub_195F82100;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_50_0;
  v17 = _Block_copy(aBlock);

  v18 = v3;

  sub_195FA0798();
  v23 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v22 + 8))(v12, v10);
  (*(v20 + 8))(v15, v21);
}

void sub_195F79474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF7318);
  v9 = sub_195FA0658();
  v10 = sub_195FA0C98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_195EB2000, v9, v10, "xpc: reloadControls(forExtension:kind:reason)", v11, 2u);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  v12 = sub_195F7F24C();
  if (v12)
  {
    v13 = v12;
    v14 = sub_195FA0888();
    if (a5)
    {
      a5 = sub_195FA0888();
    }

    oslog = sub_195FA0888();
    [v13 reloadControlsForExtension:v14 kind:a5 reason:?];
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_195FA0658();
    v15 = sub_195FA0C98();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v15, "xpc error: reloadControls(forExtension:kind:reason) - unable to obtain the remote target", v16, 2u);
      MEMORY[0x19A8C5B70](v16, -1, -1);
    }
  }
}

void sub_195F796E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: updateControlHostConfiguration", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v15 = a4;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v14);
  *(a1 + v14) = 0x8000000000000000;
  v17 = a5 & 1;
  sub_195F5D400(a2, a3, a4, v17, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v14) = v24;
  swift_endAccess();
  v18 = sub_195F7F24C();
  if (v18)
  {
    v19 = v18;
    v20 = sub_195FA0888();
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v19 updateControlHost:v20 configuration:v15 activationState:v21];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = sub_195FA0658();
    v22 = sub_195FA0C98();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_195EB2000, v21, v22, "xpc error: updateControlHostConfiguration - unable to obtain the remote target", v23, 2u);
      MEMORY[0x19A8C5B70](v23, -1, -1);
    }
  }
}

uint64_t sub_195F79980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v6 = sub_195FA0778();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_195FA07D8();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  LOBYTE(a1) = *(a1 + 24);
  v22 = *&v4[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  *(v15 + 48) = a1;
  aBlock[4] = v20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = v4;

  sub_195FA0798();
  v25 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v11, v8, v16);
  _Block_release(v16);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

void sub_195F79C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: updateControlHostActivationState", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v15 = a4;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v14);
  *(a1 + v14) = 0x8000000000000000;
  v17 = a5 & 1;
  sub_195F5D400(a2, a3, a4, v17, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v14) = v24;
  swift_endAccess();
  v18 = sub_195F7F24C();
  if (v18)
  {
    v19 = v18;
    v20 = sub_195FA0888();
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v19 updateControlHost:v20 activationState:v21];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = sub_195FA0658();
    v22 = sub_195FA0C98();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_195EB2000, v21, v22, "xpc error: updateControlHostActivationState - unable to obtain the remote target", v23, 2u);
      MEMORY[0x19A8C5B70](v23, -1, -1);
    }
  }
}

void sub_195F79F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v5 = sub_195FA0678();
  __swift_project_value_buffer(v5, qword_1EAEF7318);
  v6 = sub_195FA0658();
  v7 = sub_195FA0C98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_195EB2000, v6, v7, "xpc: invalidateControlHost", v8, 2u);
    MEMORY[0x19A8C5B70](v8, -1, -1);
  }

  swift_beginAccess();

  sub_195F5A3C0(a2, a3, v14);

  sub_195F83534(v14[0], v14[1], v14[2]);
  swift_endAccess();
  v9 = sub_195F7F24C();
  if (v9)
  {
    v10 = v9;
    v11 = sub_195FA0888();
    [v10 invalidateControlHost_];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_195FA0658();
    v12 = sub_195FA0C98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_195EB2000, v11, v12, "xpc error: invalidateControlHost - unable to obtain the remote target", v13, 2u);
      MEMORY[0x19A8C5B70](v13, -1, -1);
    }
  }
}

uint64_t sub_195F7A12C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F0, &qword_195FB00C0);
  *v3 = v0;
  v3[1] = sub_195F7A234;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000195FC2520, sub_195F821BC, v2, v4);
}

uint64_t sub_195F7A234()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_195F7A350;
  }

  else
  {

    v2 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7A350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_195F7A3B4(uint64_t a1, char *a2)
{
  v4 = sub_195FA0778();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[1] = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v11 + 16))(v19 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_195F83338;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_286;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_195FA0798();
  v23 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_195F7A75C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF7318);
  v9 = sub_195FA0658();
  v10 = sub_195FA0C98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_195EB2000, v9, v10, "xpc: allControlConfigurationsByHost", v11, 2u);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  v12 = sub_195F7F24C();
  if (v12)
  {
    v13 = v12;
    (*(v5 + 16))(v7, a2, v4);
    v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    (*(v5 + 32))(v15 + v14, v7, v4);
    aBlock[4] = sub_195F833A8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F83B78;
    aBlock[3] = &block_descriptor_292;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    [v13 allControlConfigurationsByHostWithCompletion_];
    _Block_release(v16);
    return swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_195FA0658();
    v20 = sub_195FA0C98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_195EB2000, v19, v20, "xpc error: allControlConfigurationsByHost - unable to obtain the remote target", v21, 2u);
      MEMORY[0x19A8C5B70](v21, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7AA98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a2;
  v7 = sub_195FA0778();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA07D8();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  v25[1] = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v14 + 16))(v25 - v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = v25[0];
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25[0];
  aBlock[4] = sub_195F8346C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_298;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  v23 = v20;
  sub_195FA0798();
  v29 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v12, v9, v21);
  _Block_release(v21);
  (*(v28 + 8))(v9, v7);
  (*(v26 + 8))(v12, v27);
}

void sub_195F7AE64(void *a1, int a2, id a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 configurationsByHost];
    type metadata accessor for CHSControlConfiguration(0);
    sub_195FA0808();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0BA8();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0B98();
  }

  else
  {
    sub_195F2DE84(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0BA8();
  }
}

uint64_t ControlsClient.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F7AFA0, 0, 0);
}

uint64_t sub_195F7AFA0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F8, &qword_195FB00D0);
  *v8 = v0;
  v8[1] = sub_195F7B0D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000004BLL, 0x8000000195FC2550, sub_195F821C4, v7, v9);
}

uint64_t sub_195F7B0D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_195F7B1EC;
  }

  else
  {

    v2 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7B1EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_195F7B250(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v28 = a5;
  v27 = a3;
  v32 = sub_195FA0778();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v31 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v16 + 16))(&v27 - v17, a1, v15);
  v19 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  *(v20 + 32) = a4;
  *(v20 + 40) = v28;
  v22 = v30;
  *(v20 + 48) = v29;
  *(v20 + 56) = v22;
  (*(v16 + 32))(v20 + v19, v18, v15);
  aBlock[4] = sub_195F8326C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_268;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  sub_195FA0798();
  v36 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  v25 = v32;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v23);
  _Block_release(v23);
  (*(v35 + 8))(v11, v25);
  (*(v33 + 8))(v14, v34);
}

void sub_195F7B634(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v34 = a2;
  v35 = a5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v32 - v10;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7318);
  v13 = sub_195FA0658();
  v14 = sub_195FA0C98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v9;
    v16 = a1;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_195EB2000, v13, v14, "xpc: fetchControlDescriptors", v15, 2u);
    v18 = v17;
    a1 = v16;
    v9 = v33;
    MEMORY[0x19A8C5B70](v18, -1, -1);
  }

  v19 = sub_195F7F24C();
  if (v19)
  {
    v20 = v19;
    v34 = sub_195FA0888();
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v22 = sub_195FA0888();
    v23 = v36;
    (*(v9 + 16))(v11, v37, v36);
    v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    (*(v9 + 32))(v25 + v24, v11, v23);
    aBlock[4] = sub_195F832E8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7BE84;
    aBlock[3] = &block_descriptor_274;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    v28 = v34;
    [v20 fetchControlDescriptorsForExtensionBundleIdentifier:v34 userInitiated:v21 reason:v22 completion:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_195FA0658();
    v30 = sub_195FA0C98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_195EB2000, v29, v30, "xpc error: fetchControlDescriptors - unable to obtain the remote target", v31, 2u);
      MEMORY[0x19A8C5B70](v31, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F7BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a2;
  v7 = sub_195FA0778();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA07D8();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  v24[1] = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v14 + 16))(v24 - v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = v24[0];
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24[0];
  aBlock[4] = sub_195F83310;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_280;
  v21 = _Block_copy(aBlock);

  v22 = v20;
  sub_195FA0798();
  v28 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v12, v9, v21);
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_195F7BDE0(uint64_t a1, int a2, id a3)
{
  if (a1)
  {
    sub_195F2AC80(a1);
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
    return sub_195FA0BA8();
  }

  if (!a3)
  {
    goto LABEL_3;
  }

  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  return sub_195FA0B98();
}

uint64_t sub_195F7BE84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_195FA0B38();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t ControlsClient.controlDescriptor(matching:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7BF40, 0, 0);
}

uint64_t sub_195F7BF40()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE400, &qword_195FB00E0);
  *v2 = v0;
  v2[1] = sub_195F7C04C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000195FC25A0, sub_195F821C8, v1, v3);
}

uint64_t sub_195F7C04C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_195F78048;
  }

  else
  {

    v2 = sub_195F7C168;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7C184(uint64_t a1, char *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = sub_195FA0778();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_195FA07D8();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v22[1] = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v12 + 16))(v22 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v22[0];
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_195F831B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_256;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v17;
  sub_195FA0798();
  v26 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_195F7C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v9 = sub_195FA0678();
  __swift_project_value_buffer(v9, qword_1EAEF7318);
  v10 = sub_195FA0658();
  v11 = sub_195FA0C98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v8;
    v13 = a3;
    v14 = a2;
    v15 = v12;
    *v12 = 0;
    _os_log_impl(&dword_195EB2000, v10, v11, "xpc: controlDescriptor(matching:)", v12, 2u);
    v16 = v15;
    a2 = v14;
    a3 = v13;
    v8 = v27;
    MEMORY[0x19A8C5B70](v16, -1, -1);
  }

  v17 = sub_195F7F24C();
  if (v17)
  {
    v18 = v17;
    (*(v6 + 16))(v8, a3, v5);
    v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v20 = swift_allocObject();
    (*(v6 + 32))(v20 + v19, v8, v5);
    aBlock[4] = sub_195F831E0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F83B78;
    aBlock[3] = &block_descriptor_262;
    v21 = _Block_copy(aBlock);

    [v18 controlDescriptorMatching:a2 completion:v21];
    _Block_release(v21);
    return swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_195FA0658();
    v24 = sub_195FA0C98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_195EB2000, v23, v24, "xpc error: controlDescriptor(matching:) - unable to obtain the remote target", v25, 2u);
      MEMORY[0x19A8C5B70](v25, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7C898(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
    return sub_195FA0BA8();
  }

  if (!a2)
  {
    goto LABEL_3;
  }

  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  return sub_195FA0B98();
}

uint64_t ControlsClient.unsubscribeToPushes(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7C948, 0, 0);
}

uint64_t sub_195F7C948()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CA38;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000019, 0x8000000195FC25C0, sub_195F821D0, v1, v3);
}

uint64_t sub_195F7CA38()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_195F83AA8;
  }

  else
  {

    v2 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7CB54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_195F7F24C();
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a3, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_195F830C8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_244;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    [v11 unsubscribeToPushes:a2 completion:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v17 = sub_195FA0678();
    __swift_project_value_buffer(v17, qword_1EAEF7318);
    v18 = sub_195FA0658();
    v19 = sub_195FA0C98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_195EB2000, v18, v19, "xpc error: unsubscribeToPushes - unable to obtain the remote target", v20, 2u);
      MEMORY[0x19A8C5B70](v20, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t ControlsClient.sendPushToken(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7CE40, 0, 0);
}

uint64_t sub_195F7CE40()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CF30;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000013, 0x8000000195FC25E0, sub_195F82210, v1, v3);
}

uint64_t sub_195F7CF30()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_195F7A350;
  }

  else
  {

    v2 = sub_195F7D04C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F7D064(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a4;
  v26 = a5;
  v9 = sub_195FA0778();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_195FA07D8();
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v27 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v16 + 16))(&v25 - v17, a1, v15);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  (*(v16 + 32))(v20 + v19, v18, v15);
  aBlock[4] = v26;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = a3;
  sub_195FA0798();
  v32 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v11, v21);
  _Block_release(v21);
  (*(v31 + 8))(v11, v9);
  (*(v29 + 8))(v14, v30);
}

uint64_t sub_195F7D408(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_195F7F24C();
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a3, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_195F83010;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_226;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    [v11 sendPushToken:a2 completion:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v17 = sub_195FA0678();
    __swift_project_value_buffer(v17, qword_1EAEF7318);
    v18 = sub_195FA0658();
    v19 = sub_195FA0C98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_195EB2000, v18, v19, "xpc error: sendPushToken - unable to obtain the remote target", v20, 2u);
      MEMORY[0x19A8C5B70](v20, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t ControlsClient.sendPushUpdate(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7D6F4, 0, 0);
}

uint64_t sub_195F7D6F4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CA38;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000014, 0x8000000195FC2600, sub_195F82250, v1, v3);
}

uint64_t sub_195F7D7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_195F7F24C();
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a3, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_195F82F4C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_208;
    v14 = _Block_copy(aBlock);
    v15 = a1;

    [v11 sendPushUpdate:a2 completion:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v17 = sub_195FA0678();
    __swift_project_value_buffer(v17, qword_1EAEF7318);
    v18 = sub_195FA0658();
    v19 = sub_195FA0C98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_195EB2000, v18, v19, "xpc error: sendPushUpdate - unable to obtain the remote target", v20, 2u);
      MEMORY[0x19A8C5B70](v20, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7DAB0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
    return sub_195FA0B98();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
    return sub_195FA0BA8();
  }
}

uint64_t sub_195F7DB24@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_195F82E40;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_195ECF998(v4, v5);
}

uint64_t sub_195F7DBC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_195F82E08;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_195ECF998(v1, v2);
  return sub_195F7DCB0(v4, v3);
}

uint64_t sub_195F7DC54()
{
  v1 = (v0 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_195ECF998(*v1, v1[1]);
  return v2;
}

uint64_t sub_195F7DCB0(void (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_195ECF998(a1, a2);
  result = sub_195EB6E70(v6, v7);
  if (a1)
  {
    v9 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
    os_unfair_lock_lock(*(v9 + 16));
    v10 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
    v11 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
    v12 = *(v9 + 16);
    sub_195F40008(v10, v11);
    os_unfair_lock_unlock(v12);
    if (v11 >> 60 == 15)
    {
      return sub_195EB6E70(a1, a2);
    }

    else
    {
      a1(v10, v11);
      sub_195EB6E70(a1, a2);
      return sub_195EC5A34(v10, v11);
    }
  }

  return result;
}

uint64_t (*sub_195F7DDB4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_195F7DE3C;
}

void sub_195F7DE3C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      v8 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
      v9 = *(v8 + 16);

      os_unfair_lock_lock(v9);
      v10 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
      v11 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
      v12 = *(v8 + 16);
      sub_195F40008(v10, v11);
      os_unfair_lock_unlock(v12);
      if (v11 >> 60 == 15)
      {
        sub_195EB6E70(v6, v7);
      }

      else
      {
        v6(v10, v11);
        sub_195EB6E70(v6, v7);
        sub_195EC5A34(v10, v11);
      }
    }
  }

  free(v3);
}

void sub_195F7DF30(uint64_t a1, char *a2)
{
  BSDispatchQueueAssert();
  v4 = *(a1 + 16);
  v5 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *&a2[v6];
  if ((v7 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *&a2[v6];
    sub_195F5D254(a1, v4, isUniquelyReferenced_nonNull_native);
    *&a2[v6] = v31;
    swift_endAccess();
    os_unfair_lock_unlock(*(v5 + 16));
    sub_195FA05D8();
    v28 = type metadata accessor for ControlSessionSubscriptionRequest();
    v29 = sub_195EC6890(&unk_1EAEEBD80, type metadata accessor for ControlSessionSubscriptionRequest, &protocol conformance descriptor for ControlSessionSubscriptionRequest);
    aBlock[0] = a1;

    v6 = sub_195FA05C8();
    v26 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (qword_1EAEEC280 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v7 < 0)
  {
    v8 = *&a2[v6];
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = sub_195FA0E88();
  if (!__OFADD__(v9, 1))
  {
    *&a2[v6] = sub_195F82B7C(v8, v9 + 1, &qword_1EAEEE0B0, &qword_195FAEFC0, type metadata accessor for ControlSessionSubscriptionRequest, sub_195F5B560);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7318);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    v17 = sub_195F61F20();
    v19 = sub_195EBD554(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_195EB2000, v13, v14, "Subscribing to session: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v20 = sub_195F7F24C();
  if (v20)
  {
    v21 = v20;
    v22 = sub_195FA04B8();
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = v4;
    v23[4] = a1;
    v23[5] = nullsub_1;
    v23[6] = 0;
    v29 = sub_195F83A9C;
    v30 = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7F1A0;
    v28 = &block_descriptor_347;
    v24 = _Block_copy(aBlock);

    v25 = a2;

    [v21 subscribeToSessionWithRequest:v22 completion:v24];
    sub_195EC0890(v6, v26);
    swift_unknownObjectRelease();
    _Block_release(v24);
  }

  else
  {
    sub_195EC0890(v6, v26);
  }
}

void sub_195F7E3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  BSDispatchQueueAssert();
  v8 = *(a1 + 16);
  v9 = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v11 = *&v3[v10];
  if ((v11 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *&v4[v10];
    sub_195F5D254(a1, v8, isUniquelyReferenced_nonNull_native);
    *&v4[v10] = v37;
    swift_endAccess();
    os_unfair_lock_unlock(*(v9 + 16));
    sub_195FA05D8();
    v34 = type metadata accessor for ControlSessionSubscriptionRequest();
    v35 = sub_195EC6890(&unk_1EAEEBD80, type metadata accessor for ControlSessionSubscriptionRequest, &protocol conformance descriptor for ControlSessionSubscriptionRequest);
    aBlock[0] = a1;

    v31 = sub_195FA05C8();
    v32 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (qword_1EAEEC280 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v11 < 0)
  {
    v12 = *&v3[v10];
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_195FA0E88();
  if (!__OFADD__(v13, 1))
  {
    *&v4[v10] = sub_195F82B7C(v12, v13 + 1, &qword_1EAEEE0B0, &qword_195FAEFC0, type metadata accessor for ControlSessionSubscriptionRequest, sub_195F5B560);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v16 = sub_195FA0678();
  __swift_project_value_buffer(v16, qword_1EAEF7318);

  v17 = sub_195FA0658();
  v18 = sub_195FA0CC8();

  v30 = a2;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v21 = sub_195F61F20();
    v23 = sub_195EBD554(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_195EB2000, v17, v18, "Subscribing to session: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x19A8C5B70](v20, -1, -1);
    MEMORY[0x19A8C5B70](v19, -1, -1);
  }

  v24 = sub_195F7F24C();
  if (v24)
  {
    v25 = v24;
    v26 = sub_195FA04B8();
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = v8;
    v27[4] = a1;
    v27[5] = v30;
    v27[6] = a3;
    v35 = sub_195F82E04;
    v36 = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7F1A0;
    v34 = &block_descriptor_154;
    v28 = _Block_copy(aBlock);

    v29 = v4;

    [v25 subscribeToSessionWithRequest:v26 completion:v28];
    sub_195EC0890(v31, v32);
    swift_unknownObjectRelease();
    _Block_release(v28);
  }

  else
  {
    sub_195EC0890(v31, v32);
  }
}

void sub_195F7E844(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *))
{
  BSDispatchQueueAssertNot();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EAEEC280 != -1)
      {
        swift_once();
      }

      v14 = sub_195FA0678();
      __swift_project_value_buffer(v14, qword_1EAEF7318);

      v15 = sub_195FA0658();
      v16 = sub_195FA0CA8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v81[0] = v18;
        *v17 = 136446210;
        v19 = sub_195F61F20();
        v21 = sub_195EBD554(v19, v20, v81);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_195EB2000, v15, v16, "Error subscribing to session %{public}s: unknown response", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x19A8C5B70](v18, -1, -1);
        MEMORY[0x19A8C5B70](v17, -1, -1);
      }

      a7(0, 0);
      return;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v22 = a3;
    v23 = a3;
    v24 = a3;
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v25 = sub_195FA0678();
    __swift_project_value_buffer(v25, qword_1EAEF7318);

    v26 = a3;
    v27 = sub_195FA0658();
    v28 = sub_195FA0CA8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v81[0] = v31;
      *v29 = 136446466;
      v32 = sub_195F61F20();
      v34 = sub_195EBD554(v32, v33, v81);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2114;
      v35 = v22;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_195EB2000, v27, v28, "Error subscribing to session %{public}s: %{public}@", v29, 0x16u);
      sub_195F2DB00(v30, &unk_1EAEEE410, &qword_195FAAEB0);
      MEMORY[0x19A8C5B70](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x19A8C5B70](v31, -1, -1);
      MEMORY[0x19A8C5B70](v29, -1, -1);
    }

    v37 = v22;
    a7(0, v22);

    return;
  }

  sub_195FA05D8();
  type metadata accessor for ControlSessionSubscriptionResponse();
  sub_195EC08E4(a1, a2);
  sub_195EC6890(&qword_1EAEEBD78, type metadata accessor for ControlSessionSubscriptionResponse, &protocol conformance descriptor for ControlSessionSubscriptionResponse);
  sub_195FA05B8();
  swift_beginAccess();
  v38 = *(v81[0] + 16);
  v78 = v38;
  if (!v38)
  {
    goto LABEL_22;
  }

  swift_retain_n();
  SandboxExtension.consume()();
  if (!v39)
  {

LABEL_22:
    v53 = *(a4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
    os_unfair_lock_lock(v53[2]);
    v54 = v38;
    v55 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_sandboxExtensions;
    swift_beginAccess();
    if (v54)
    {
      v56 = *(a4 + v55);
      v77 = v53;
      if ((v56 & 0xC000000000000001) != 0)
      {
        if (v56 < 0)
        {
          v57 = *(a4 + v55);
        }

        else
        {
          v57 = v56 & 0xFFFFFFFFFFFFFF8;
        }

        v58 = sub_195FA0E88();
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          return;
        }

        *(a4 + v55) = sub_195F82B7C(v57, v58 + 1, &unk_1EAEEE0A0, &qword_195FB01F0, type metadata accessor for SandboxExtension, sub_195F5B574);
        v59 = v78;
      }

      else
      {
        v59 = v78;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(a4 + v55);
      sub_195F5D268(v59, a5, isUniquelyReferenced_nonNull_native);
      *(a4 + v55) = v79;
      v53 = v77;
    }

    else
    {
      sub_195F5A224(a5);
    }

    swift_endAccess();
    os_unfair_lock_unlock(v53[2]);
    goto LABEL_34;
  }

  v75 = a7;

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v40 = sub_195FA0678();
  __swift_project_value_buffer(v40, qword_1EAEF7318);

  v41 = v39;
  v42 = sub_195FA0658();
  v43 = sub_195FA0CA8();

  v76 = v39;

  v74 = v43;
  v44 = v43;
  v45 = v42;
  if (os_log_type_enabled(v42, v44))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v80[0] = v73;
    *v46 = 136446466;
    v48 = sub_195F61F20();
    v50 = sub_195EBD554(v48, v49, v80);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2114;
    v51 = v76;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 14) = v52;
    *v47 = v52;
    _os_log_impl(&dword_195EB2000, v45, v74, "[%{public}s] Failed consuming sandbox extension: %{public}@.", v46, 0x16u);
    sub_195F2DB00(v47, &unk_1EAEEE410, &qword_195FAAEB0);
    MEMORY[0x19A8C5B70](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x19A8C5B70](v73, -1, -1);
    MEMORY[0x19A8C5B70](v46, -1, -1);
  }

  else
  {
  }

  a7 = v75;
LABEL_34:
  v61 = *(a6 + 16);
  swift_beginAccess();
  v62 = [*(v61 + 32) contentType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_195FAC910;
  *(v63 + 32) = [*(v61 + 32) control];
  if (v62 == 1)
  {
    sub_195F80870(v63);
  }

  else
  {
    sub_195F80848(v63);
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v64 = sub_195FA0678();
  __swift_project_value_buffer(v64, qword_1EAEF7318);

  v65 = sub_195FA0658();
  v66 = sub_195FA0C98();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v79 = v68;
    *v67 = 136446210;
    v69 = sub_195F61F20();
    v71 = sub_195EBD554(v69, v70, &v79);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_195EB2000, v65, v66, "Successfully subscribed to session: %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x19A8C5B70](v68, -1, -1);
    MEMORY[0x19A8C5B70](v67, -1, -1);
  }

  a7(v72, 0);
  sub_195EC5A34(a1, a2);
}

uint64_t sub_195F7F1A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_195FA04D8();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_195EC5A34(v4, v8);
}

uint64_t sub_195F7F24C()
{
  BSDispatchQueueAssert();
  BSDispatchQueueAssert();
  sub_195F7F55C();
  v1 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection;
  v2 = *(v0 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (![v3 remoteTarget])
  {
    v17 = 0u;
    v18 = 0u;
    sub_195F2DB00(&v17, &unk_1EAEED4B0, &qword_195FAC080);
    [v3 activate];

    v4 = *(v0 + v1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v6 = sub_195FA0678();
    __swift_project_value_buffer(v6, qword_1EAEF7318);
    v5 = sub_195FA0658();
    v7 = sub_195FA0CB8();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_195EB2000, v5, v7, "Failed to establish a connection", v8, 2u);
      MEMORY[0x19A8C5B70](v8, -1, -1);
    }

    goto LABEL_21;
  }

  sub_195FA0E08();
  swift_unknownObjectRelease();

  sub_195F2DB00(&v17, &unk_1EAEED4B0, &qword_195FAC080);
  v4 = *(v0 + v1);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = v4;
  if ([v5 remoteTarget])
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4E8, &unk_195FB01E0);
    if (swift_dynamicCast())
    {

      return v14;
    }
  }

  else
  {
    sub_195F2DB00(&v17, &unk_1EAEED4B0, &qword_195FAC080);
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "Failed to cast connection to server interface protocol", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }

LABEL_21:
  return 0;
}

void sub_195F7F55C()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection])
  {
    return;
  }

  v2 = "com.apple.chrono";
  v3 = sub_195FA0888();
  v4 = sub_195FA0888();
  v16 = [objc_opt_self() endpointForMachName:v3 service:v4 instance:0];

  if (!v16)
  {
    goto LABEL_7;
  }

  v5 = [objc_opt_self() connectionWithEndpoint_];
  if (v5)
  {
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_195F828A0;
    *(v2 + 24) = v8;
    aBlock[4] = sub_195F36AC0;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F803A4;
    aBlock[3] = &block_descriptor_130;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v7 configureConnection_];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v12 = sub_195FA0678();
    __swift_project_value_buffer(v12, qword_1EAEF7318);
    v16 = sub_195FA0658();
    v13 = sub_195FA0CB8();
    if (os_log_type_enabled(v16, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_195EBD554(0xD000000000000018, v2 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_195EB2000, v16, v13, "Unable to get endpoint for mach-service: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x19A8C5B70](v15, -1, -1);
      MEMORY[0x19A8C5B70](v14, -1, -1);

      return;
    }
  }
}

void sub_195F7F8CC(void *a1, void *a2)
{
  v4 = sub_195FA0888();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EAEEC370 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAEEC378;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EAEEC358 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EAEEC340 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v19 = sub_195F7FC44;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_133;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_195F828A8;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_139;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_195F802A8;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_142;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_195F7FC50(uint64_t a1, char *a2)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v3 = sub_195FA0678();
  __swift_project_value_buffer(v3, qword_1EAEF7318);
  v4 = sub_195FA0658();
  v5 = sub_195FA0CC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_195EB2000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x19A8C5B70](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_195F7FD80(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_195F7FD80(char *a1)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v11 = *&a1[v10];
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = sub_195FA0E88();

    if (!v12)
    {
      return;
    }
  }

  else if (!*(v11 + 16))
  {
    return;
  }

  v24 = v4;
  v25 = v1;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v13 = sub_195FA0678();
  __swift_project_value_buffer(v13, qword_1EAEF7318);
  v14 = a1;
  v15 = sub_195FA0658();
  v16 = sub_195FA0CC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    v18 = *&a1[v10];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = sub_195FA0E88();
    }

    else
    {
      v19 = *(v18 + 16);
    }

    *(v17 + 4) = v19;

    _os_log_impl(&dword_195EB2000, v15, v16, "Reconnecting because we had %{public}ld subscriptions active.", v17, 0xCu);
    MEMORY[0x19A8C5B70](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  aBlock[4] = sub_195F828B0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_148;
  v21 = _Block_copy(aBlock);
  v22 = v14;
  sub_195FA0798();
  aBlock[10] = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v6, v21);
  _Block_release(v21);
  (*(v24 + 8))(v6, v3);
  (*(v26 + 8))(v9, v27);
}

void sub_195F801D4(uint64_t a1)
{
  BSDispatchQueueAssert();
  sub_195F7F55C();
  v2 = *(a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();

      sub_195F2DB00(v4, &unk_1EAEED4B0, &qword_195FAC080);
    }

    else
    {
      memset(v4, 0, sizeof(v4));
      sub_195F2DB00(v4, &unk_1EAEED4B0, &qword_195FAC080);
      [v3 activate];
    }
  }
}

void sub_195F802B4(uint64_t a1, const char *a2)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v3 = sub_195FA0678();
  __swift_project_value_buffer(v3, qword_1EAEF7318);
  oslog = sub_195FA0658();
  v4 = sub_195FA0CC8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_195EB2000, oslog, v4, a2, v5, 2u);
    MEMORY[0x19A8C5B70](v5, -1, -1);
  }
}

uint64_t sub_195F803A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_195F80458(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v27 = a2;
  v28 = a3;
  v8 = v5;
  v10 = sub_195FA0778();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_195FA07D8();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v16 = sub_195FA0678();
  __swift_project_value_buffer(v16, qword_1EAEF7318);

  v17 = sub_195FA0658();
  v18 = sub_195FA0CC8();
  if (os_log_type_enabled(v17, v18))
  {
    v26 = a4;
    v19 = a5;
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    if (a1 >> 62)
    {
      v21 = sub_195FA0E88();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_195EB2000, v17, v18, v27, v20, 0xCu);
    MEMORY[0x19A8C5B70](v20, -1, -1);

    a5 = v19;
    a4 = v26;
  }

  else
  {
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a5;
  v23 = _Block_copy(aBlock);

  v24 = v8;
  sub_195FA0798();
  v31 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v12, v23);
  _Block_release(v23);
  (*(v30 + 8))(v12, v10);
  (*(v13 + 8))(v15, v29);
}

uint64_t sub_195F80898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_195FA0778();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_195FA07D8();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertNot();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  sub_195FA0798();
  v21 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v10, v15);
  _Block_release(v15);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

id ControlsClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F80D10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_195F80D40, 0, 0);
}

uint64_t sub_195F80D40()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F8, &qword_195FB00D0);
  *v8 = v0;
  v8[1] = sub_195F80E70;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000004BLL, 0x8000000195FC2550, sub_195F83B74, v7, v9);
}

uint64_t sub_195F80E70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_195F83AA0;
  }

  else
  {

    v2 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F80F8C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F80FB0, 0, 0);
}

uint64_t sub_195F80FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE400, &qword_195FB00E0);
  *v2 = v0;
  v2[1] = sub_195F810BC;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000195FC25A0, sub_195F83B88, v1, v3);
}

uint64_t sub_195F810BC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_195F83AA4;
  }

  else
  {

    v2 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F81268()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F0, &qword_195FB00C0);
  *v3 = v0;
  v3[1] = sub_195F81370;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000195FC2520, sub_195F83B8C, v2, v4);
}

uint64_t sub_195F81370()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_195F83AA8;
  }

  else
  {

    v2 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195F8148C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F814B0, 0, 0);
}

uint64_t sub_195F814B0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CA38;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000013, 0x8000000195FC25E0, sub_195F83B84, v1, v3);
}

uint64_t sub_195F815A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F815C4, 0, 0);
}

uint64_t sub_195F815C4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CA38;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000014, 0x8000000195FC2600, sub_195F83B80, v1, v3);
}

uint64_t sub_195F816B4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F816D8, 0, 0);
}

uint64_t sub_195F816D8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_195F7CA38;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000019, 0x8000000195FC25C0, sub_195F83B7C, v1, v3);
}

uint64_t sub_195F8187C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_195F818A4, 0, 0);
}

uint64_t sub_195F818A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_195F78560;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000019, 0x8000000195FC24E0, sub_195F83AB4, v4, v6);
}

uint64_t sub_195F819A8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_195F819D0, 0, 0);
}

uint64_t sub_195F819D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_195F78560;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001ELL, 0x8000000195FC2500, sub_195F83AB0, v4, v6);
}

void ControlsClient.systemEnvironmentDidChange(_:)(uint64_t a1, unint64_t a2)
{
  BSDispatchQueueAssertNot();
  v5 = (v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
  v6 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
  v7 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_195EC08E4(a1, a2);
  sub_195EC5A34(v6, v7);
  v8 = v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange;
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(a1, a2);
    sub_195EB6E70(v9, v10);
  }
}

void sub_195F81BF4(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_195FA04D8();
  v9 = v8;

  a4(v7, v9);
  sub_195EC0890(v7, v9);
}

uint64_t sub_195F81CB4(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t), ...)
{
  BSDispatchQueueAssertNot();
  sub_195FA05D8();
  sub_195F82290();
  sub_195FA05B8();
  v6 = v17;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v7 = sub_195FA0678();
  __swift_project_value_buffer(v7, qword_1EAEF7318);

  v8 = sub_195FA0658();
  v9 = sub_195FA0CC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
    v13 = MEMORY[0x19A8C4110](v6, v12);
    v15 = sub_195EBD554(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_195EB2000, v8, v9, a3, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x19A8C5B70](v11, -1, -1);
    MEMORY[0x19A8C5B70](v10, -1, -1);
  }

  a4(v6);
}

uint64_t objectdestroy_24Tm()
{

  sub_195EC0890(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

unint64_t sub_195F82290()
{
  result = qword_1EAEEC2A8;
  if (!qword_1EAEEC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC2A8);
  }

  return result;
}

uint64_t keypath_set_82Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t dispatch thunk of ControlsClient.setControlState(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x160);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F32774;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ControlsClient.performControlAction(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195F32D80;

  return v9(a1, a2);
}

uint64_t sub_195F8281C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_195F828CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C8, &unk_195FAEFE0);
    v2 = sub_195FA10A8();
    v19 = v2;
    sub_195FA1018();
    v3 = sub_195FA1048();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CHSExtensionIdentity();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F0, qword_195FAC840);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_195F5AAE0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_195FA0D78();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_195FA1048();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_195F82B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v7 = sub_195FA10A8();
    v23 = v7;
    sub_195FA1018();
    if (sub_195FA1048())
    {
      type metadata accessor for ControlSessionKey();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v15 = *(v7 + 16);
        if (*(v7 + 24) <= v15)
        {
          a6(v15 + 1, 1);
        }

        v7 = v23;
        sub_195FA1398();
        swift_beginAccess();
        sub_195FA0958();
        swift_beginAccess();
        v8 = *(v22 + 32);
        sub_195FA0D98();

        result = sub_195FA13E8();
        v10 = v23 + 64;
        v11 = -1 << *(v23 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v23 + 64 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v23 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v23 + 48) + 8 * v14) = v22;
        *(*(v23 + 56) + 8 * v14) = v21;
        ++*(v23 + 16);
      }

      while (sub_195FA1048());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v7;
}

uint64_t sub_195F82E08(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_195F82F9C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t objectdestroy_198Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_195F831E0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);

  return sub_195F7C898(a1, a2);
}

void sub_195F8326C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_195F7B634(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_195F83338()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_195F7A75C(v2, v3);
}

uint64_t sub_195F833D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_195F83494(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}

void sub_195F83534(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_300Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_195EC0890(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_195F836A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

uint64_t objectdestroy_204Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_210Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_150Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_195F83B94(void *a1)
{
  v1 = a1;
  v2 = NSDateComponents.stableHash.getter();

  return v2;
}

id NSDateComponents.stableHash.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];

  v2 = [v1 hash];
  return v2;
}

id DateComponents.stableHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE580, &qword_195FB0218);
  v0 = sub_195FA0558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject() + v3;
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E6969A68], v0);
  v5(v4 + v2, *MEMORY[0x1E6969A78], v0);
  v5(v4 + 2 * v2, *MEMORY[0x1E6969A48], v0);
  v5(v4 + 3 * v2, *MEMORY[0x1E6969A58], v0);
  v5(v4 + 4 * v2, *MEMORY[0x1E6969A88], v0);
  v5(v4 + 5 * v2, *MEMORY[0x1E6969A98], v0);
  v6 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];
  v7 = sub_195FA0228();
  if ((v8 & 1) == 0)
  {
  }

  v9 = sub_195FA0228();
  if ((v10 & 1) == 0)
  {
  }

  v11 = sub_195FA0228();
  if ((v12 & 1) == 0)
  {
  }

  v13 = sub_195FA0228();
  if ((v14 & 1) == 0)
  {
  }

  v15 = sub_195FA0228();
  if ((v16 & 1) == 0)
  {
  }

  v17 = sub_195FA0228();
  if ((v18 & 1) == 0)
  {
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = [v6 hash];

  return v19;
}

uint64_t sub_195F84034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v8 + 104) = v16;
  *(v8 + 112) = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

  v42 = a3;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    goto LABEL_8;
  }

  v41 = a7;
  a7 = a5;
  a5 = a6;
  a6 = a4;
  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {
LABEL_10:

    a4 = a6;
    a6 = a5;
    a5 = a7;
    LOBYTE(a7) = v41;
    a3 = v42;
    goto LABEL_11;
  }

  v24 = sub_195FA12B8();

  a4 = a6;
  a6 = a5;
  a5 = a7;
  a7 = v41;
  a3 = v42;
  if ((v24 & 1) == 0)
  {
LABEL_8:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    a3 = v42;
    v28 = v27;
    if (v27)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 72) = a7 & 1;
  if (a6)
  {
    if (a7)
    {
      swift_beginAccess();
      *(v8 + 56) = a6;
    }

    else
    {

      swift_beginAccess();
      *(v8 + 64) = a5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE620, &qword_195FB04B8);
  swift_allocObject();
  v29 = sub_195FA06F8();
  *(v8 + 80) = v29;
  v44 = v29;
  sub_195EB5F38(&qword_1EAEEBEB0, &qword_1EAEEE620, &qword_195FB04B8, MEMORY[0x1E695BF88]);
  v30 = sub_195FA0738();
  v31 = *(v8 + 96);
  *(v8 + 88) = v30;
  *(v8 + 96) = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE628, &qword_195FB04C0);
  v33 = objc_allocWithZone(v32);
  swift_weakInit();
  swift_weakAssign();
  v43.receiver = v33;
  v43.super_class = v32;
  v34 = objc_msgSendSuper2(&v43, sel_init);
  v35 = *(v8 + 96);
  *(v8 + 96) = v34;

  v36 = *(v8 + 16);
  v37 = v34;
  v38 = v36;

  v39 = sub_195FA0888();

  [v38 addObserver:v37 forKeyPath:v39 options:0 context:0];

  return v8;
}

uint64_t sub_195F843FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v8 + 104) = v16;
  *(v8 + 112) = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

  v42 = a3;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    goto LABEL_8;
  }

  v41 = a7;
  a7 = a5;
  a5 = a6;
  a6 = a4;
  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {
LABEL_10:

    a4 = a6;
    a6 = a5;
    a5 = a7;
    LOBYTE(a7) = v41;
    a3 = v42;
    goto LABEL_11;
  }

  v24 = sub_195FA12B8();

  a4 = a6;
  a6 = a5;
  a5 = a7;
  a7 = v41;
  a3 = v42;
  if ((v24 & 1) == 0)
  {
LABEL_8:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    a3 = v42;
    v28 = v27;
    if (v27)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 72) = a7 & 1;
  if (a6)
  {
    if (a7)
    {
      swift_beginAccess();
      *(v8 + 56) = a6;
    }

    else
    {

      swift_beginAccess();
      *(v8 + 64) = a5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE630, &qword_195FB04C8);
  swift_allocObject();
  v29 = sub_195FA06F8();
  *(v8 + 80) = v29;
  v44 = v29;
  sub_195EB5F38(&qword_1EAEEBEC0, &qword_1EAEEE630, &qword_195FB04C8, MEMORY[0x1E695BF88]);
  v30 = sub_195FA0738();
  v31 = *(v8 + 96);
  *(v8 + 88) = v30;
  *(v8 + 96) = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE638, &qword_195FB04D0);
  v33 = objc_allocWithZone(v32);
  swift_weakInit();
  swift_weakAssign();
  v43.receiver = v33;
  v43.super_class = v32;
  v34 = objc_msgSendSuper2(&v43, sel_init);
  v35 = *(v8 + 96);
  *(v8 + 96) = v34;

  v36 = *(v8 + 16);
  v37 = v34;
  v38 = v36;

  v39 = sub_195FA0888();

  [v38 addObserver:v37 forKeyPath:v39 options:0 context:0];

  return v8;
}

uint64_t sub_195F847C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v8 = v7;
  LODWORD(v9) = a6;
  *(v8 + 60) = 0;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 64) = 1;
  *(v8 + 88) = 0;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v8 + 96) = v16;
  *(v8 + 104) = 0;
  *(v8 + 108) = 1;
  if (!a2)
  {
    goto LABEL_13;
  }

  v41 = v9;
  v9 = a5;
  a5 = a3;
  a3 = a4;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    a4 = a3;
    a3 = a5;
    a5 = v9;
    v9 = v41;
LABEL_10:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    v28 = v27;
    if (v27)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 != a1 || v22 != a2)
  {
    v24 = sub_195FA12B8();

    a4 = a3;
    a3 = a5;
    a5 = v9;
    v9 = v41;
    if (v24)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_12:

  a4 = a3;
  a3 = a5;
  a5 = v9;
  LOBYTE(v9) = v41;
LABEL_13:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_14:
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a7;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 65) = v9 & 1;
  if ((a5 & 0x100000000) == 0)
  {
    swift_beginAccess();
    if (v9)
    {
      *(v8 + 56) = a5;
    }

    else
    {
      *(v8 + 60) = a7;
      *(v8 + 64) = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE640, &qword_195FB04D8);
  swift_allocObject();
  v29 = sub_195FA06F8();
  *(v8 + 72) = v29;
  v43 = v29;
  sub_195EB5F38(&qword_1EAEEBE88, &qword_1EAEEE640, &qword_195FB04D8, MEMORY[0x1E695BF88]);
  v30 = sub_195FA0738();
  v31 = *(v8 + 88);
  *(v8 + 80) = v30;
  *(v8 + 88) = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE648, &qword_195FB04E0);
  v33 = objc_allocWithZone(v32);
  swift_weakInit();
  swift_weakAssign();
  v42.receiver = v33;
  v42.super_class = v32;
  v34 = objc_msgSendSuper2(&v42, sel_init);
  v35 = *(v8 + 88);
  *(v8 + 88) = v34;

  v36 = *(v8 + 16);
  v37 = v34;
  v38 = v36;

  v39 = sub_195FA0888();

  [v38 addObserver:v37 forKeyPath:v39 options:0 context:0];

  return v8;
}

uint64_t sub_195F84B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v10 + 72) = xmmword_195FB0230;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 112) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v10 + 120) = v18;
  *(v10 + 128) = xmmword_195FB0230;
  if (!a2)
  {
    goto LABEL_11;
  }

  v47 = a4;
  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v45 = a6;
  a6 = a8;
  a8 = a7;
  a7 = a5;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a5 = a7;
    a7 = a8;
    a8 = a6;
    a6 = v45;
    a4 = v47;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a5 = a7;
  a7 = a8;
  a8 = a6;
  a6 = v45;
  a4 = v47;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    a4 = v47;
    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v10 + 16) = v30;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  *(v10 + 56) = a5;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 64) = a6;
  *(v10 + 88) = a9 & 1;
  if (a8 == 1)
  {
    v31 = a7;
    v32 = 1;
LABEL_17:
    sub_195ECF2B0(v31, v32);
    goto LABEL_18;
  }

  if ((a9 & 1) == 0)
  {

    swift_beginAccess();
    v31 = *(v10 + 72);
    v32 = *(v10 + 80);
    *(v10 + 72) = a5;
    *(v10 + 80) = a6;
    goto LABEL_17;
  }

  swift_beginAccess();
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE650, &qword_195FB04E8);
  swift_allocObject();
  v33 = sub_195FA06F8();
  *(v10 + 96) = v33;
  v49 = v33;
  sub_195EB5F38(&qword_1EAEEBEB8, &qword_1EAEEE650, &qword_195FB04E8, MEMORY[0x1E695BF88]);
  v34 = sub_195FA0738();
  v35 = *(v10 + 112);
  *(v10 + 104) = v34;
  *(v10 + 112) = 0;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE658, &unk_195FB04F0);
  v37 = objc_allocWithZone(v36);
  swift_weakInit();
  swift_weakAssign();
  v48.receiver = v37;
  v48.super_class = v36;
  v38 = objc_msgSendSuper2(&v48, sel_init);
  v39 = *(v10 + 112);
  *(v10 + 112) = v38;

  v40 = *(v10 + 16);
  v41 = v38;
  v42 = v40;

  v43 = sub_195FA0888();

  [v42 addObserver:v41 forKeyPath:v43 options:0 context:0];

  return v10;
}

uint64_t sub_195F84F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  *(v8 + 64) = 0;
  v17 = v8 + 64;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 72) = 1;
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v17 + 40) = v18;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  if (!a2)
  {
    goto LABEL_11;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v43 = a7;
  a7 = a4;
  a4 = a6;
  a6 = a5;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a5 = a6;
    LOBYTE(a6) = a4;
    a4 = a7;
    LOBYTE(a7) = v43;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a5 = a6;
  a6 = a4;
  a4 = a7;
  a7 = v43;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v9 + 16) = v30;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  *(v9 + 56) = a8;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 73) = a7 & 1;
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    if (a7)
    {
      *(v9 + 56) = a5;
    }

    else
    {
      *(v9 + 64) = a8;
      *(v9 + 72) = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F0, &qword_195FB0488);
  swift_allocObject();
  v31 = sub_195FA06F8();
  *(v9 + 80) = v31;
  v46 = v31;
  sub_195EB5F38(&qword_1EAEEBE90, &qword_1EAEEE5F0, &qword_195FB0488, MEMORY[0x1E695BF88]);
  v32 = sub_195FA0738();
  v33 = *(v9 + 96);
  *(v9 + 88) = v32;
  *(v9 + 96) = 0;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F8, &qword_195FB0490);
  v35 = objc_allocWithZone(v34);
  swift_weakInit();
  swift_weakAssign();
  v45.receiver = v35;
  v45.super_class = v34;
  v36 = objc_msgSendSuper2(&v45, sel_init);
  v37 = *(v9 + 96);
  *(v9 + 96) = v36;

  v38 = *(v9 + 16);
  v39 = v36;
  v40 = v38;

  v41 = sub_195FA0888();

  [v40 addObserver:v39 forKeyPath:v41 options:0 context:0];

  return v9;
}

uint64_t sub_195F8532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, char a9)
{
  v10 = v9;
  *(v9 + 72) = 0;
  v17 = v9 + 72;
  *(v9 + 80) = 256;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 104) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v17 + 40) = v18;
  *(v17 + 48) = 0;
  *(v17 + 56) = 256;
  if (!a2)
  {
    goto LABEL_11;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v43 = a6;
  a6 = a5;
  a5 = a7;
  LOWORD(a7) = a8;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a8 = a7;
    a7 = a5;
    a5 = a6;
    LOBYTE(a6) = v43;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a8 = a7;
  a7 = a5;
  a5 = a6;
  a6 = v43;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v10 + 16) = v30;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  *(v10 + 56) = a5;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 64) = a6 & 1;
  *(v10 + 82) = a9 & 1;
  if ((a8 & 0x100) == 0)
  {
    swift_beginAccess();
    if (a9)
    {
      *(v10 + 56) = a7;
      *(v10 + 64) = a8 & 1;
    }

    else
    {
      *(v10 + 72) = a5;
      *(v10 + 80) = a6 & 1;
      *(v10 + 81) = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C0, &qword_195FB0458);
  swift_allocObject();
  v31 = sub_195FA06F8();
  *(v10 + 88) = v31;
  v47 = v31;
  sub_195EB5F38(&qword_1EAEEBE98, &qword_1EAEEE5C0, &qword_195FB0458, MEMORY[0x1E695BF88]);
  v32 = sub_195FA0738();
  v33 = *(v10 + 104);
  *(v10 + 96) = v32;
  *(v10 + 104) = 0;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C8, &qword_195FB0460);
  v35 = objc_allocWithZone(v34);
  swift_weakInit();
  swift_weakAssign();
  v46.receiver = v35;
  v46.super_class = v34;
  v36 = objc_msgSendSuper2(&v46, sel_init);
  v37 = *(v10 + 104);
  *(v10 + 104) = v36;

  v38 = *(v10 + 16);
  v39 = v36;
  v40 = v38;

  v41 = sub_195FA0888();

  [v40 addObserver:v39 forKeyPath:v41 options:0 context:0];

  return v10;
}

uint64_t sub_195F856EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  LOBYTE(v9) = a7;
  *(v7 + 57) = 2;
  v15 = v7 + 57;
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  *(v7 + 80) = 0;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v15 + 31) = v16;
  *(v15 + 39) = 2;
  if (!a2)
  {
    goto LABEL_11;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    goto LABEL_8;
  }

  v41 = v9;
  v9 = a5;
  a5 = a4;
  LOBYTE(a4) = a6;
  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {
LABEL_10:

    a6 = a4;
    a4 = a5;
    LOBYTE(a5) = v9;
    LOBYTE(v9) = v41;
    goto LABEL_11;
  }

  v24 = sub_195FA12B8();

  a6 = a4;
  a4 = a5;
  a5 = v9;
  LOBYTE(v9) = v41;
  if ((v24 & 1) == 0)
  {
LABEL_8:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    v28 = v27;
    if (v27)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5 & 1;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 58) = v9 & 1;
  if (a6 != 2)
  {
    swift_beginAccess();
    if (v9)
    {
      *(v8 + 56) = a6 & 1;
    }

    else
    {
      *v15 = a5 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A8, &qword_195FB0440);
  swift_allocObject();
  v29 = sub_195FA06F8();
  *(v8 + 64) = v29;
  v44 = v29;
  sub_195EB5F38(&qword_1EAEEBEA0, &qword_1EAEEE5A8, &qword_195FB0440, MEMORY[0x1E695BF88]);
  v30 = sub_195FA0738();
  v31 = *(v8 + 80);
  *(v8 + 72) = v30;
  *(v8 + 80) = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B0, &qword_195FB0448);
  v33 = objc_allocWithZone(v32);
  swift_weakInit();
  swift_weakAssign();
  v43.receiver = v33;
  v43.super_class = v32;
  v34 = objc_msgSendSuper2(&v43, sel_init);
  v35 = *(v8 + 80);
  *(v8 + 80) = v34;

  v36 = *(v8 + 16);
  v37 = v34;
  v38 = v36;

  v39 = sub_195FA0888();

  [v38 addObserver:v37 forKeyPath:v39 options:0 context:0];

  return v8;
}

uint64_t (*sub_195F85A9C(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = sub_195F85D04();
  os_unfair_lock_unlock(*(v3 + 16));

  *(a1 + 8) = v5 & 1;
  return sub_195F85B1C;
}

uint64_t sub_195F85B1C(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 88);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  sub_195F86658(v1);
  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t (*sub_195F85B84(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = sub_195F864E8(&qword_1EAEEE598, &qword_195FB0430);
  os_unfair_lock_unlock(*(v3 + 16));

  *a1 = v5;
  return sub_195F85C10;
}

uint64_t sub_195F85C10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[1] + 104);
  v4 = *(v3 + 16);
  if (a2)
  {

    os_unfair_lock_lock(v4);
    sub_195F8706C(v2, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
    os_unfair_lock_unlock(*(v3 + 16));
  }

  else
  {

    os_unfair_lock_lock(v4);
    sub_195F8706C(v2, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
    os_unfair_lock_unlock(*(v3 + 16));
  }
}

uint64_t sub_195F85D04()
{
  os_unfair_lock_assert_owner(*(*(v0 + 88) + 16));
  swift_beginAccess();
  v1 = *(v0 + 57);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);

    v3 = sub_195FA0888();

    v4 = [v2 valueForKey_];

    if (v4)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v6, v8);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    if (swift_dynamicCast())
    {
      LOBYTE(v1) = v7;
    }

    else
    {
      swift_beginAccess();
      LOBYTE(v1) = *(v0 + 56);
    }
  }

  return v1 & 1;
}

uint64_t sub_195F85E44()
{
  os_unfair_lock_assert_owner(*(*(v0 + 112) + 16));
  swift_beginAccess();
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = *(v0 + 16);

  v2 = sub_195FA0888();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE588, &qword_195FB0420);
  if (swift_dynamicCast())
  {
    v5 = v7;
  }

  else
  {
    v5 = (v0 + 56);
    swift_beginAccess();
  }

  return *v5;
}

uint64_t sub_195F85FAC()
{
  os_unfair_lock_assert_owner(*(*(v0 + 104) + 16));
  swift_beginAccess();
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 16);

  v2 = sub_195FA0888();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v5 = &v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = (v0 + 56);
    swift_beginAccess();
  }

  return *v5;
}

double sub_195F860F0()
{
  os_unfair_lock_assert_owner(*(*(v0 + 104) + 16));
  swift_beginAccess();
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 16);

  v2 = sub_195FA0888();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v5 = &v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = (v0 + 56);
    swift_beginAccess();
  }

  return *v5;
}

uint64_t sub_195F86230()
{
  os_unfair_lock_assert_owner(*(*(v0 + 120) + 16));
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = *(v0 + 16);

    v5 = sub_195FA0888();

    v6 = [v4 valueForKey_];

    if (v6)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v8, v10);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE590, &qword_195FB0428);
    if (swift_dynamicCast())
    {
      v3 = v9;
    }

    else
    {
      swift_beginAccess();
      v3 = *(v0 + 56);
    }
  }

  sub_195F8F7E0(v1, v2);
  return v3;
}

float sub_195F863AC()
{
  os_unfair_lock_assert_owner(*(*(v0 + 96) + 16));
  v1 = (v0 + 60);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    v2 = *(v0 + 16);

    v3 = sub_195FA0888();

    v4 = [v2 valueForKey_];

    if (v4)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v6, v8);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    v1 = v7;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v1 = (v0 + 56);
      swift_beginAccess();
    }
  }

  return *v1;
}

uint64_t sub_195F864E8(uint64_t *a1, uint64_t *a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 104) + 16));
  swift_beginAccess();
  if (*(v2 + 64))
  {
    v5 = *(v2 + 64);
  }

  else
  {
    v6 = *(v2 + 16);

    v7 = sub_195FA0888();

    v8 = [v6 valueForKey_];

    if (v8)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v10, v12);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    if (swift_dynamicCast())
    {
      v5 = v11;
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 56);
    }
  }

  return v5;
}

void sub_195F86658(int a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 88) + 16));
  swift_beginAccess();
  if (*(v1 + 57) == 2 && ((sub_195F85D04() ^ a1) & 1) != 0)
  {
    v11 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v10)
    {
      sub_195F2E09C(&v9, &v12);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v4 = v3;
      v5 = sub_195FA12A8();

      v6 = sub_195FA0888();

      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_195EB7914(&v9);
      v7 = *(v1 + 16);

      v8 = sub_195FA0888();

      [v7 removeObjectForKey_];
    }
  }
}

void sub_195F867E8(uint64_t a1, char a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 112) + 16));
  swift_beginAccess();
  if (*(v2 + 81) == 1)
  {
    v5 = COERCE_DOUBLE(sub_195F85E44());
    if (a2)
    {
      if (v6)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v6 & 1) != 0 || *&a1 != v5)
    {
LABEL_7:
      v15 = a1;
      v16 = a2 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE588, &qword_195FB0420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v14)
      {
        sub_195F2E09C(&v13, &v17);
        v7 = *(v2 + 16);
        __swift_project_boxed_opaque_existential_1(&v17, v18);
        v8 = v7;
        v9 = sub_195FA12A8();

        v10 = sub_195FA0888();

        [v8 setObject:v9 forKey:v10];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      }

      else
      {
        sub_195EB7914(&v13);
        v11 = *(v2 + 16);

        v12 = sub_195FA0888();

        [v11 removeObjectForKey_];
      }
    }
  }
}

void sub_195F869AC(uint64_t a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 104) + 16));
  swift_beginAccess();
  if (*(v1 + 72) == 1 && sub_195F85FAC() != a1)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v10)
    {
      sub_195F2E09C(&v9, &v12);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v4 = v3;
      v5 = sub_195FA12A8();

      v6 = sub_195FA0888();

      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_195EB7914(&v9);
      v7 = *(v1 + 16);

      v8 = sub_195FA0888();

      [v7 removeObjectForKey_];
    }
  }
}