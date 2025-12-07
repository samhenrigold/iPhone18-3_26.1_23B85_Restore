uint64_t sub_1E6111980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755D8, &qword_1E65F1B90);
  result = sub_1E65E6868();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v19 = *(v3 + 48) + 40 * (v16 | (v6 << 6));
      v20 = *(v19 + 32);
      v21 = *(v19 + 16);
      v30 = *v19;
      v31 = v21;
      v32 = v20;
      sub_1E65E6D28();
      sub_1E611473C(&v30, v29);
      sub_1E65DB978();
      result = sub_1E65E6D78();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v30;
      v15 = v31;
      *(v13 + 32) = v32;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_1E6111BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075418, &qword_1E65F1A90);
  result = sub_1E65E6868();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1E65E6D28();
      sub_1E65E03B8();
      result = sub_1E65E6D78();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_1E6111DF0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E33F8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075638, &qword_1E65F1BD0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C90, MEMORY[0x1E699EC38], MEMORY[0x1E699EC40]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E611210C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0F68();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075430, &qword_1E65F1AA0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BA8, MEMORY[0x1E699DF68], MEMORY[0x1E699DF78]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112428(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0C18();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075458, &qword_1E65F1AB0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BB0, MEMORY[0x1E699DDD0], MEMORY[0x1E699DDE0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112744(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0BC8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075468, &qword_1E65F1AB8);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BB8, MEMORY[0x1E699DD90], MEMORY[0x1E699DDA0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112A60(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E1038();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075478, &qword_1E65F1AC0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BC0, MEMORY[0x1E699DFF0], MEMORY[0x1E699E000]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112D7C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0E08();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075490, &qword_1E65F1AD0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BD0, MEMORY[0x1E699DEE8], MEMORY[0x1E699DEF0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6113098(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E10D8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754A0, &qword_1E65F1AD8);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BD8, MEMORY[0x1E699E070], MEMORY[0x1E699E080]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61133B4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0FD8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754B0, &qword_1E65F1AE0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BE0, MEMORY[0x1E699DFB0], MEMORY[0x1E699DFC0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61136D0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0D28();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754C0, &qword_1E65F1AE8);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BE8, MEMORY[0x1E699DE78], MEMORY[0x1E699DE80]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61139EC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E1088();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754D0, &qword_1E65F1AF0);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BF0, MEMORY[0x1E699E030], MEMORY[0x1E699E040]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6113D08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1E65E6868();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_1E65E6D28();
      a4(v28, v19);
      result = sub_1E65E6D78();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }

  return result;
}

uint64_t sub_1E6113F2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65E0F18();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075448, &qword_1E65F1AA8);
  v7 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED075438, MEMORY[0x1E699DF40], MEMORY[0x1E699DF48]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6114248(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754E8, &qword_1E65F1B00);
  result = sub_1E65E6868();
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
      result = sub_1E65E6D18();
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

uint64_t sub_1E6114438(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E647734C(a1, v1 + v5);
}

uint64_t sub_1E6114510(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6474370(a1, v1 + v5);
}

uint64_t sub_1E61145E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E647424C(a1, v1 + v5);
}

uint64_t sub_1E61147EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E61147FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757E0, &qword_1E65F1D80);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v25 - v6;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757E8, &qword_1E65F1D88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F0, &qword_1E65F1D90);
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v25 - v11;
  v29 = *v2;
  v26 = type metadata accessor for AppComposer;
  sub_1E5E1D484(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = *(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1E5E1FA80(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v12 + 32) & ~v12));
  v27 = v2;
  sub_1E5E1D484(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v14 = (v12 + 16) & ~v12;
  v15 = swift_allocObject();
  sub_1E5E1FA80(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1E5E25708();

  sub_1E65DF138();
  sub_1E65DEF48();
  sub_1E65E4CC8();
  v16 = v26;
  sub_1E5E1D484(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v17 = swift_allocObject();
  sub_1E5E1FA80(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14);
  type metadata accessor for AppFeature(0);
  sub_1E611BCE4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&unk_1EE2D6800, &qword_1ED0757F0, &qword_1E65F1D90, MEMORY[0x1E699CE68]);
  v18 = v31;
  v19 = v28;
  sub_1E65E4DE8();
  sub_1E5E1D484(v27, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v20 = swift_allocObject();
  sub_1E5E1FA80(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v14);
  v21 = v34;
  v22 = v19;
  v23 = sub_1E65E4F08();

  (*(v32 + 8))(v18, v33);
  (*(v30 + 8))(v21, v22);
  return v23;
}

uint64_t sub_1E6114CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v10 + 28) + 8))
  {
    if (*(v4 + *(v10 + 28) + 8) == 1)
    {
      sub_1E5E1D484(v4, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
      v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v17 = swift_allocObject();
      sub_1E5E1FA80(v11, v17 + v16);
      v18 = (v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v18 = a1;
      v18[1] = a2;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756A8, &qword_1E65F1C58));

      return sub_1E65DF068();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5E1D484(v4, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = swift_allocObject();
    sub_1E5E1FA80(v11, v13 + v12);
    v14 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v14 = a1;
    v14[1] = a2;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B0, &qword_1E65F1C60));

    return sub_1E65DF108();
  }

  return result;
}

void *sub_1E6114F70(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v76 = a5;
  v74 = a4;
  v84 = a3;
  v85 = a2;
  v8 = type metadata accessor for AppComposer(0);
  v81 = *(v8 - 8);
  v77 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075688, &qword_1E65F1C18);
  v78 = *(v83 - 1);
  MEMORY[0x1EEE9AC00](v83);
  v11 = &v71 - v10;
  v12 = sub_1E65DF158();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E65DF088();
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075690, &qword_1E65F1C20);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v73 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  v22 = sub_1E5E1BF18(a1, v6);
  v72 = *a1;
  v23 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E65EA660;
  *(v24 + 32) = v22;
  sub_1E5DEF094();
  v75 = v22;
  v25 = sub_1E65E5EF8();

  [v23 setViewControllers:v25 animated:0];

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  type metadata accessor for NavigationController();
  sub_1E65DF208();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075698, &qword_1E65F1C28);
  (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
  v30 = v84;
  v29 = v85;
  v76 = sub_1E6114CD4(v85, v84, v74, v76);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;

  sub_1E65DF148();
  sub_1E65DF078();
  type metadata accessor for AppFeature(0);
  sub_1E611BCE4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E611BCE4(&qword_1EE2D67E8, MEMORY[0x1E699CF48], MEMORY[0x1E699CF40]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v78 + 1))(v11, v83);
  (*(v80 + 8))(v15, v13);
  sub_1E611A0F4(v21, v73);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756A0, &qword_1E65F1C40);
  v32 = objc_allocWithZone(v83);
  v33 = v72;
  v34 = sub_1E65DF1F8();

  sub_1E5DFE50C(v21, &qword_1ED075690, &qword_1E65F1C20);
  v35 = v79;
  v36 = v82;
  v78 = type metadata accessor for AppComposer;
  sub_1E5E1D484(v79, v82, type metadata accessor for AppComposer);
  v37 = *(v81 + 80);
  v38 = ((v37 + 16) & ~v37) + v77;
  v80 = v37;
  v81 = (v37 + 16) & ~v37;
  v74 = v38;
  v39 = swift_allocObject();
  sub_1E5E1FA80(v36, v39 + ((v37 + 16) & ~v37));
  sub_1E5FED46C(&qword_1EE2D67D0, &qword_1ED0756A0, &qword_1E65F1C40, MEMORY[0x1E699CFA0]);
  sub_1E5FED46C(&qword_1EE2D67E0, &qword_1ED0756A0, &qword_1E65F1C40, MEMORY[0x1E699CF90]);
  v40 = sub_1E65DF188();
  v73 = v40;

  v87 = v40;
  sub_1E5E1D484(v35, v36, type metadata accessor for AppComposer);
  v41 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v81;
  sub_1E5E1FA80(v36, v42 + v81);
  v44 = (v42 + v41);
  v45 = v84;
  v46 = v85;
  *v44 = v85;
  v44[1] = v45;
  sub_1E65E25F8();
  v77 = sub_1E5FED46C(&qword_1EE2D67D8, &qword_1ED0756A0, &qword_1E65F1C40, MEMORY[0x1E699CF98]);
  sub_1E611BCE4(&qword_1EE2D6228, MEMORY[0x1E699F360], MEMORY[0x1E699F358]);

  sub_1E65DF118();

  v47 = v88;
  v86 = v88;
  v48 = v79;
  v49 = v82;
  sub_1E5E1D484(v79, v82, v78);
  v76 = v41;
  v50 = swift_allocObject();
  v51 = v50 + v43;
  v52 = v49;
  sub_1E5E1FA80(v49, v51);
  v53 = (v50 + v41);
  *v53 = v46;
  v54 = v84;
  v53[1] = v84;
  sub_1E65E3AB8();
  sub_1E611BCE4(qword_1EE2D59B8, MEMORY[0x1E699EFD0], MEMORY[0x1E699EFC8]);

  sub_1E65DF118();

  v55 = v87;
  v86 = v87;
  v56 = v78;
  sub_1E5E1D484(v48, v49, v78);
  v57 = v76;
  v58 = swift_allocObject();
  sub_1E5E1FA80(v52, v58 + v81);
  v59 = (v58 + v57);
  *v59 = v85;
  v59[1] = v54;
  sub_1E65E1E08();
  sub_1E611BCE4(qword_1EE2D63C8, MEMORY[0x1E699F028], MEMORY[0x1E699F020]);

  sub_1E65DF118();

  v60 = v88;
  v86 = v88;
  v61 = v82;
  v62 = v56;
  sub_1E5E1D484(v48, v82, v56);
  v63 = swift_allocObject();
  v64 = v81;
  sub_1E5E1FA80(v61, v63 + v81);
  sub_1E65DC108();
  sub_1E611BCE4(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0], MEMORY[0x1E699D3B8]);
  sub_1E65DF118();

  v65 = v87;
  v86 = v87;
  sub_1E5E1D484(v48, v61, v62);
  v66 = v76;
  v67 = swift_allocObject();
  sub_1E5E1FA80(v61, v67 + v64);
  v68 = (v67 + v66);
  v69 = v84;
  *v68 = v85;
  v68[1] = v69;
  sub_1E65E1E68();
  sub_1E611BCE4(&qword_1EE2D62E0, MEMORY[0x1E699F0A0], MEMORY[0x1E699F098]);

  sub_1E65DF118();

  return v88;
}

uint64_t sub_1E6115BD8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  *(v3 + 136) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6115BFC, 0, 0);
}

uint64_t sub_1E6115BFC()
{
  if (*(v0 + 136) == 1)
  {
    swift_beginAccess();
    v1 = qword_1ED075948;
    v2 = qword_1ED075950;
    *(v0 + 80) = qword_1ED075948;
    *(v0 + 88) = v2;
    sub_1E65E6058();
    sub_1E5E05374(v1, v2);
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6115D0C, v4, v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E6115D0C()
{
  v1 = v0[12];

  v1(v0 + 10);
  sub_1E5E0476C(v0[10], v0[11]);

  return MEMORY[0x1EEE6DFA0](sub_1E6115D90, 0, 0);
}

uint64_t sub_1E6115D90()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1E6115EA0;

    return RoutingContext.reset(animated:)(1, v1, v2);
  }

  else
  {
    sub_1E5DFE50C((v0 + 2), &unk_1ED074320, &unk_1E65EA730);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E6115EA0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E6116018;
  }

  else
  {
    v2 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6115FB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6116018()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E611609C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Requesting onAppear sync....", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[7];

  v0[8] = *(v5 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6116208, v7, v6);
}

uint64_t sub_1E6116208()
{

  sub_1E5E20198(12, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E6116280()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[14] = *(v2 + 8);
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611632C, v4, v3);
}

uint64_t sub_1E611632C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E60827D4, 0, 0);
}

uint64_t sub_1E61163B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v110 = a4;
  v114 = a3;
  v138 = a5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756C8, &qword_1E65F1CA0);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v102 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756D0, &qword_1E65F1CA8);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = v102 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756D8, &qword_1E65F1CB0);
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v119 = v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756E0, &qword_1E65F1CB8);
  v12 = *(v11 - 8);
  v129 = v11;
  v130 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v120 = v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756E8, &qword_1E65F1CC0);
  v15 = *(v14 - 8);
  v132 = v14;
  v133 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v124 = v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756F0, &qword_1E65F1CC8);
  v18 = *(v17 - 8);
  v134 = v17;
  v135 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v128 = v102 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756F8, &qword_1E65F1CD0);
  v21 = *(v20 - 8);
  v136 = v20;
  v137 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v131 = v102 - v22;
  v23 = type metadata accessor for AppComposer(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8);
  v113 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v102 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  v30 = *(v29 - 8);
  v143 = v29;
  v144 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v111 = v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = v102 - v33;
  v118 = sub_1E608BA10();
  v123 = sub_1E636D2C8();
  v141 = sub_1E60C9A58(a1, a2);
  v139 = sub_1E633BDBC();
  v140 = sub_1E6177B8C(a1, a2);
  v142 = sub_1E6019D3C(a1, a2);
  v108 = a1;
  v34 = a2;
  v125 = sub_1E638F90C(a1, a2);
  v105 = type metadata accessor for AppComposer;
  v35 = v5;
  v36 = v5;
  v103 = v5;
  v37 = v28;
  sub_1E5E1D484(v35, v28, type metadata accessor for AppComposer);
  v38 = *(v24 + 80);
  v112 = ((v38 + 16) & ~v38) + v25;
  v39 = (v38 + 16) & ~v38;
  v107 = v39;
  v106 = v38 | 7;
  v40 = (v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102[1] = v40 + 16;
  v41 = swift_allocObject();
  sub_1E5E1FA80(v37, v41 + v39);
  v42 = (v41 + v40);
  *v42 = a1;
  v42[1] = v34;
  v104 = v34;
  sub_1E5E25708();

  v43 = v145;
  sub_1E65DEF68();
  v44 = v36;
  v45 = v37;
  v109 = v37;
  v46 = v105;
  sub_1E5E1D484(v44, v37, v105);
  v48 = v143;
  v47 = v144;
  v49 = v111;
  (*(v144 + 16))(v111, v43, v143);
  v50 = v47;
  v51 = (v40 + 16 + *(v47 + 80)) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v53 = v107;
  sub_1E5E1FA80(v45, v52 + v107);
  v54 = (v52 + v40);
  v55 = v104;
  *v54 = v108;
  v54[1] = v55;
  (*(v50 + 32))(v52 + v51, v49, v48);
  v56 = v103;
  v57 = v113;
  sub_1E5E1D484(v103, v113, v46);
  v58 = swift_allocObject();
  sub_1E5E1FA80(v57, v58 + v53);
  v59 = (v58 + v40);
  *v59 = &unk_1E65FA338;
  v59[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075708, &qword_1E65F1CE0);
  sub_1E65DF0D8();
  sub_1E611A560();
  sub_1E611BCE4(&qword_1ED075728, MEMORY[0x1E699CF60], MEMORY[0x1E699CF58]);
  v60 = v115;
  sub_1E65DF198();
  v61 = v56;
  v62 = v109;
  sub_1E5E1D484(v61, v109, v46);
  v63 = swift_allocObject();
  sub_1E5E1FA80(v62, v63 + v53);
  v64 = v116;
  v65 = &v60[*(v116 + 36)];
  v66 = v60;
  *v65 = sub_1E611A618;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  v67 = sub_1E65E25F8();
  v68 = sub_1E611A638();
  v69 = sub_1E611BCE4(&qword_1EE2D6228, MEMORY[0x1E699F360], MEMORY[0x1E699F358]);

  v70 = v117;
  sub_1E65E4798();

  sub_1E5E8891C(v66);
  v71 = sub_1E65E3828();

  v146 = v64;
  v147 = v67;
  v148 = v68;
  v149 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_1E611BCE4(&qword_1ED075748, MEMORY[0x1E699ED58], MEMORY[0x1E699ED50]);
  v74 = v119;
  v75 = v121;
  sub_1E65E4798();

  v76 = v75;
  (*(v122 + 8))(v70, v75);
  v77 = sub_1E65E3AB8();

  v146 = v76;
  v147 = v71;
  v148 = OpaqueTypeConformance2;
  v149 = v73;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1E611BCE4(qword_1EE2D59B8, MEMORY[0x1E699EFD0], MEMORY[0x1E699EFC8]);
  v80 = v120;
  v81 = v126;
  sub_1E65E4798();

  v82 = v81;
  (*(v127 + 8))(v74, v81);
  v83 = sub_1E65E1E08();

  v146 = v82;
  v147 = v77;
  v148 = v78;
  v149 = v79;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_1E611BCE4(qword_1EE2D63C8, MEMORY[0x1E699F028], MEMORY[0x1E699F020]);
  v86 = v124;
  v87 = v129;
  sub_1E65E4798();

  v88 = v87;
  (*(v130 + 8))(v80, v87);
  v89 = sub_1E65DC108();

  v146 = v88;
  v147 = v83;
  v148 = v84;
  v149 = v85;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_1E611BCE4(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0], MEMORY[0x1E699D3B8]);
  v92 = v128;
  v93 = v132;
  sub_1E65E4798();

  v94 = v93;
  (*(v133 + 8))(v86, v93);
  v95 = sub_1E65DC128();

  v146 = v94;
  v147 = v89;
  v148 = v90;
  v149 = v91;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_1E611BCE4(&qword_1ED075750, MEMORY[0x1E699D3E0], MEMORY[0x1E699D3D8]);
  v98 = v131;
  v99 = v134;
  sub_1E65E4798();

  (*(v135 + 8))(v92, v99);
  sub_1E65E1E68();

  v146 = v99;
  v147 = v95;
  v148 = v96;
  v149 = v97;
  swift_getOpaqueTypeConformance2();
  sub_1E611BCE4(&qword_1EE2D62E0, MEMORY[0x1E699F0A0], MEMORY[0x1E699F098]);
  v100 = v136;
  sub_1E65E4798();

  (*(v137 + 8))(v98, v100);
  return (*(v144 + 8))(v145, v143);
}

uint64_t sub_1E61173B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v43 = a5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v42 = &v34 - v13;
  v40 = type metadata accessor for AppComposer;
  sub_1E5E1D484(a1, &v34 - v13, type metadata accessor for AppComposer);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v34 = *(v10 + 80);
  v16 = swift_allocObject();
  v41 = v16;
  sub_1E5E1FA80(v14, v16 + v15);
  v17 = (v16 + ((v15 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v38;
  *v17 = v37;
  v17[1] = v18;
  v19 = v36;
  (*(v6 + 16))(v8, v39, v36);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v20, v8, v19);
  v22 = v35;
  sub_1E5E1D484(a1, v35, type metadata accessor for AppComposer);
  v23 = swift_allocObject();
  sub_1E5E1FA80(v22, v23 + v15);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075758, &qword_1E65F1D08);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075760, &qword_1E65F1D10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075768, &qword_1E65F1D18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075770, &qword_1E65F1D20);
  v26 = sub_1E5FED46C(&qword_1ED075778, &qword_1ED075770, &qword_1E65F1D20, MEMORY[0x1E699CE00]);
  v44 = v25;
  v45 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v24;
  v45 = MEMORY[0x1E69E6370];
  v46 = OpaqueTypeConformance2;
  v47 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1E611B5F8();
  v28 = v43;
  sub_1E65DF168();
  v29 = a1;
  v30 = v42;
  sub_1E5E1D484(v29, v42, v40);
  v31 = swift_allocObject();
  sub_1E5E1FA80(v30, v31 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075708, &qword_1E65F1CE0);
  v33 = (v28 + *(result + 36));
  *v33 = sub_1E611B6B0;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_1E6117808@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v17[1] = a3;
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  sub_1E5E1D484(a1, v17 - v11, type metadata accessor for AppComposer);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1E5E1FA80(v12, v14 + v13);
  sub_1E5E1D484(a1, v10, type metadata accessor for AppComposer);
  v15 = swift_allocObject();
  sub_1E5E1FA80(v10, v15 + v13);
  sub_1E6117E24(sub_1E611B834, v14, sub_1E611B84C, v15, x8_0);
}

uint64_t sub_1E61179C4(uint64_t a1)
{
  v2 = type metadata accessor for AppComposer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1E5E1D484(a1, &v13 - v7, type metadata accessor for AppComposer);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1E5E1FA80(v8, v10 + v9);
  sub_1E5E1D484(a1, v6, type metadata accessor for AppComposer);
  v11 = swift_allocObject();
  sub_1E5E1FA80(v6, v11 + v9);
  sub_1E65DB138();
  sub_1E611BCE4(&qword_1ED0757D8, MEMORY[0x1E699D098], MEMORY[0x1E699D090]);
  return sub_1E65DEE58();
}

uint64_t sub_1E6117BA4()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1E65E42C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1E65D7688();
  sub_1E65E61E8();
  (*(v1 + 16))(v4, v6, v0);
  sub_1E65E42B8();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 16))(v11, v13, v7);
  sub_1E611BCE4(&qword_1ED0757D0, MEMORY[0x1E69803F0], MEMORY[0x1E69803E8]);
  sub_1E65E3CB8();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E6117E24@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v90 = a4;
  v94 = a3;
  v89 = a2;
  v93 = a1;
  v99 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075770, &qword_1E65F1D20);
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075768, &qword_1E65F1D18);
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v78 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v87 = &v78 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v86 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  v105 = v5;
  v106 = type metadata accessor for AppComposer;
  v101 = &v78 - v23;
  sub_1E5E1D484(v5, &v78 - v23, type metadata accessor for AppComposer);
  v25 = *(v13 + 80);
  v103 = (v25 + 16) & ~v25;
  v104 = v103 + v14;
  v26 = swift_allocObject();
  v100 = v26;
  sub_1E5E1FA80(v24, v26 + ((v25 + 16) & ~v25));
  sub_1E65E5148();
  v107 = sub_1E65E5138();
  sub_1E5E1D484(v5, v22, type metadata accessor for AppComposer);
  v27 = ((v25 + 32) & ~v25) + v14;
  v85 = ((v25 + 32) & ~v25);
  v84 = v27;
  v28 = swift_allocObject();
  v102 = v28;
  *(v28 + 16) = &unk_1E65F1D38;
  *(v28 + 24) = v26;
  v82 = &unk_1E65F1D38;
  sub_1E5E1FA80(v22, v28 + ((v25 + 32) & ~v25));
  *(v28 + v27) = 0;
  v29 = v28 + (v27 & 0xFFFFFFFFFFFFFFF8);
  v83 = sub_1E6172524;
  *(v29 + 8) = sub_1E6172524;
  *(v29 + 16) = 0;
  v30 = (v28 + (((v27 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v31 = MEMORY[0x1E69AB380];
  v33 = v106;
  v32 = v107;
  *v30 = v107;
  v30[1] = v31;
  v34 = v86;
  sub_1E5E1D484(v105, v86, v33);
  v35 = (v25 + 48) & ~v25;
  v36 = v35 + v14;
  v37 = (v35 + v14) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v80 = v38;
  v39 = v100;
  v38[2] = &unk_1E65F1D38;
  v38[3] = v39;
  v38[4] = v32;
  v38[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v34, v38 + v35);
  *(v38 + v36) = 0;
  v40 = v38 + v37;
  v41 = v83;
  *(v40 + 1) = v83;
  *(v40 + 2) = 0;
  v42 = v105;
  v43 = v87;
  sub_1E5E1D484(v105, v87, v33);
  v44 = swift_allocObject();
  v45 = v82;
  v44[2] = v82;
  v44[3] = v39;
  v44[4] = v107;
  v44[5] = MEMORY[0x1E69AB380];
  v46 = v44;
  v79 = v44;
  sub_1E5E1FA80(v43, v44 + v35);
  v47 = v46 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v47 = v41;
  *(v47 + 1) = 0;
  v47[16] = 0;
  v48 = v42;
  v49 = v42;
  v50 = v88;
  v51 = v106;
  sub_1E5E1D484(v49, v88, v106);
  v52 = swift_allocObject();
  *(v52 + 16) = v45;
  *(v52 + 24) = v39;
  sub_1E5E1FA80(v50, v85 + v52);
  v53 = v101;
  sub_1E5E1D484(v48, v101, v51);
  v54 = (v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = v54;
  v81 = v25;
  v55 = swift_allocObject();
  v82 = v55;
  v56 = v103;
  sub_1E5E1FA80(v53, v55 + v103);
  v57 = (v55 + v54);
  *v57 = v107;
  v88 = &unk_1E65EB918;
  v57[1] = MEMORY[0x1E69AB380];
  v57[2] = &unk_1E65EB918;
  v87 = &unk_1E65FA770;
  v57[3] = v102;
  v57[4] = &unk_1E65FA770;
  v58 = v80;
  v86 = &unk_1E65EB920;
  v57[5] = v80;
  v57[6] = &unk_1E65EB920;
  v59 = v79;
  v85 = &unk_1E65FA780;
  v57[7] = v79;
  v57[8] = &unk_1E65FA780;
  v83 = v52;
  v57[9] = v52;
  sub_1E5E1D484(v48, v53, v51);
  v60 = swift_allocObject();
  sub_1E5E1FA80(v53, v60 + v56);
  swift_retain_n();
  swift_retain_n();

  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075790, &qword_1E65F1D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075798, &qword_1E65F1D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757A0, &qword_1E65F1D50);
  sub_1E5E25708();
  sub_1E5FED46C(&qword_1ED0757A8, &qword_1ED075790, &qword_1E65F1D40, MEMORY[0x1E699CE08]);
  sub_1E611B9E4();
  sub_1E611BA60();
  v61 = v92;
  sub_1E65DEE38();
  v62 = sub_1E5FED46C(&qword_1ED075778, &qword_1ED075770, &qword_1E65F1D20, MEMORY[0x1E699CE00]);
  v63 = v91;
  v64 = v95;
  sub_1E65E46F8();
  v65 = v64;
  (*(v96 + 8))(v61, v64);
  v66 = v105;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v110 = v111;
  v67 = v66;
  v68 = v101;
  sub_1E5E1D484(v67, v101, v106);
  v69 = v84;
  v70 = swift_allocObject();
  sub_1E5E1FA80(v68, v70 + v103);
  v71 = (v70 + v69);
  *v71 = v107;
  v72 = v88;
  v71[1] = MEMORY[0x1E69AB380];
  v71[2] = v72;
  v73 = v87;
  v71[3] = v102;
  v71[4] = v73;
  v74 = v86;
  v71[5] = v58;
  v71[6] = v74;
  v75 = v85;
  v71[7] = v59;
  v71[8] = v75;
  v71[9] = v83;

  v108 = v65;
  v109 = v62;
  swift_getOpaqueTypeConformance2();
  v76 = v97;
  sub_1E65E4918();

  return (*(v98 + 8))(v63, v76);
}

uint64_t sub_1E61187D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E3DF8();
  v5 = sub_1E65E4438();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075760, &qword_1E65F1D10);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1E611887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E5E1D484(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E5E1FA80(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1E64B80F8(0, 0, v10, a3, v13);
}

uint64_t sub_1E6118A48()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6118AF8, v3, v2);
}

uint64_t sub_1E6118AF8()
{

  sub_1E5E20198(26, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E6118B70()
{
  v0 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E65D77C8();
  return sub_1E65DF0C8();
}

uint64_t sub_1E6118C2C(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3)
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v5 + 104))(&v9 - v6, *a3, v4);
  sub_1E65E4EE8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E6118D1C(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 112) = a3;
  v8 = type metadata accessor for RouteDestination(0);
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = type metadata accessor for RouteSource(0);
  *(v5 + 168) = swift_task_alloc();
  v9 = *a2;
  *(v5 + 176) = *a1;
  *(v5 + 192) = v9;
  sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v5 + 216) = v11;
  *(v5 + 224) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E6118E58, v11, v10);
}

uint64_t sub_1E6118E58()
{
  v25 = v0;
  v1 = *(v0 + 184);
  if (v1 <= 2)
  {
    if (v1 <= 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 = *(v0 + 176);
    *&v24 = 0x7974696C61646F6DLL;
    *(&v24 + 1) = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v2);
    goto LABEL_10;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {

      goto LABEL_13;
    }

    if (v1 != 5)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v3 = sub_1E65E6C18();

  if ((v3 & 1) == 0)
  {

LABEL_19:

    v17 = *(v0 + 8);

    return v17();
  }

LABEL_13:
  v4 = *(v0 + 112);
  v24 = *(v0 + 192);
  v4(&v24);
  if (!*(v0 + 80))
  {

    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    goto LABEL_19;
  }

  v5 = *(v0 + 128);
  sub_1E5DF599C((v0 + 56), v0 + 16);
  v6 = *(v5 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      return sub_1E65E69D8();
    }

    else
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 136);
      v21 = *(v0 + 40);
      v20 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      *(v18 + *(v19 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E600F5B0((v0 + 105));
      v22 = swift_task_alloc();
      *(v0 + 256) = v22;
      *v22 = v0;
      v22[1] = sub_1E6119538;
      v23 = *(v0 + 152);

      return RoutingContext.appendDestination(_:priority:)(v23, (v0 + 105), v21, v20);
    }
  }

  else
  {
    v7 = *(v0 + 168);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v0 + 232) = v13;
    *(v13 + 16) = xmmword_1E65EA670;
    v14 = v13 + v12;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1D484(v7, v14 + *(v9 + 20), type metadata accessor for RouteSource);
    *(v14 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611CC44(v7, type metadata accessor for RouteSource);
    *(v0 + 96) = 1;
    *(v0 + 104) = 0;
    sub_1E600F5B0((v0 + 106));
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_1E6119380;

    return RoutingContext.presentDestinations(_:style:priority:)(v13, (v0 + 96), (v0 + 106), v11, v10);
  }
}

uint64_t sub_1E6119380()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1E6119710;
  }

  else
  {
    v5 = sub_1E61194B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E61194B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6119538()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 264) = v0;

  sub_1E611CC44(v3, type metadata accessor for RouteDestination);
  v4 = *(v2 + 216);
  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_1E6119684;
  }

  else
  {
    v6 = sub_1E611CCBC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E6119684()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6119710()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61197BC()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611986C, v3, v2);
}

uint64_t sub_1E611986C()
{

  sub_1E5E20198(26, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

unint64_t sub_1E61198F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F8, &qword_1E65F1DB8);
  v6 = sub_1E65DEE78();
  result = sub_1E65DEE88();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v6 + 16))
  {
    (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);

    sub_1E65DF048();
    (*(v3 + 8))(v5, v2);
    v8 = v12[0];
    v9 = v12[1];
    v10 = type metadata accessor for AppState(0);
    v11 = a1 + *(v10 + 248);
    sub_1E5E07DA0(*v11, *(v11 + 8));
    *v11 = v8;
    *(v11 + 8) = v9;
    result = sub_1E65DEE98();
    *(a1 + *(v10 + 244)) = result & 1;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1E6119A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppComposer(0);
  swift_getObjectType();
  sub_1E65DB6B8();
  sub_1E6119B08(a1);
}

void sub_1E6119B08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C68, &qword_1E65EE618);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - v9);
  (*(v8 + 16))(&v22 - v9, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 != *MEMORY[0x1E699CE40])
  {
    if (v11 == *MEMORY[0x1E699CE48])
    {
      (*(v8 + 96))(v10, v7);
      v12 = *v10;
      v13 = v10[1];
      v14 = *(v1 + *(type metadata accessor for AppComposer(0) + 20) + 8);
      if (v14 < 2)
      {
        v15 = [objc_opt_self() standardUserDefaults];
        if (v13 <= 2)
        {
          if (!v13)
          {
            goto LABEL_31;
          }

          goto LABEL_6;
        }

        goto LABEL_21;
      }

      if (v14 == 3)
      {
        sub_1E5E0476C(v12, v13);
        return;
      }

      goto LABEL_35;
    }

    if (v11 == *MEMORY[0x1E699CE50])
    {
      (*(v8 + 96))(v10, v7);
      v16 = *v10;
      v17 = *(v1 + *(type metadata accessor for AppComposer(0) + 20) + 8);
      if (v17 >= 2)
      {
        if (v17 == 3)
        {
          return;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F8, &qword_1E65F1DB8);
        v18 = sub_1E65DEE78();
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v16 < *(v18 + 16))
        {
          (*(v4 + 16))(v6, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v3);

          sub_1E65DF048();
          (*(v4 + 8))(v6, v3);
          v12 = v22;
          v13 = v23;
          v15 = [objc_opt_self() standardUserDefaults];
          if (v13 <= 2)
          {
            if (!v13)
            {
              goto LABEL_31;
            }

LABEL_6:
            if (v13 == 1 || v13 == 2)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

LABEL_21:
          if (v13 == 3 || v13 == 4 || v13 == 5)
          {
            goto LABEL_31;
          }

LABEL_30:
          v22 = 0x7974696C61646F6DLL;
          v23 = 0xE90000000000003ALL;
          MEMORY[0x1E694D7C0](v12, v13);
LABEL_31:
          v20 = sub_1E65E5C48();

          sub_1E5E0476C(v12, v13);
          v21 = sub_1E65E5C48();
          [v15 setObject:v20 forKey:v21];

          return;
        }

        __break(1u);
      }

LABEL_35:
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    if (v11 != *MEMORY[0x1E699CE60] && v11 != *MEMORY[0x1E699CE58])
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_1E611A04C(char a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6115BD8(a1, v5, v4);
}

uint64_t sub_1E611A0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075690, &qword_1E65F1C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E611A240(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E611607C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E611A348(uint64_t (*a1)(void, void))
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(*v4, v4[1]);
}

uint64_t sub_1E611A3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1E61173B8(v1 + v4, v7, v8, v9, a1);
}

uint64_t sub_1E611A4D0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E628CB54(v0 + v2, v4, v5);
}

unint64_t sub_1E611A560()
{
  result = qword_1ED075710;
  if (!qword_1ED075710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075708, &qword_1E65F1CE0);
    sub_1E5FED46C(&qword_1ED075718, &qword_1ED075720, &qword_1E65F1CE8, MEMORY[0x1E699CF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075710);
  }

  return result;
}

unint64_t sub_1E611A638()
{
  result = qword_1ED075730;
  if (!qword_1ED075730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0756C8, &qword_1E65F1CA0);
    sub_1E5FED46C(&qword_1ED075738, &qword_1ED075740, &qword_1E65F1CF0, MEMORY[0x1E699CF78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075730);
  }

  return result;
}

uint64_t sub_1E611A6F0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E611607C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_6Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E611B4C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1E6117808(v1 + v4, v5, a1);
}

uint64_t sub_1E611B564@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E61187D4(v4, a1);
}

unint64_t sub_1E611B5F8()
{
  result = qword_1ED075780;
  if (!qword_1ED075780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075760, &qword_1E65F1D10);
    sub_1E5FED46C(&qword_1ED075788, &qword_1ED075700, &qword_1E65F1CD8, MEMORY[0x1E699CE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075780);
  }

  return result;
}

uint64_t sub_1E611B744(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6118A28(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E611B864(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E64C4638(a1, v1 + v5);
}

uint64_t sub_1E611B940()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64C49F4((v0 + v2), v3);
}

unint64_t sub_1E611B9E4()
{
  result = qword_1ED0757B0;
  if (!qword_1ED0757B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075798, &qword_1E65F1D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757B0);
  }

  return result;
}

unint64_t sub_1E611BA60()
{
  result = qword_1ED0757B8;
  if (!qword_1ED0757B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0757A0, &qword_1E65F1D50);
    sub_1E5FED46C(&qword_1ED0757C0, &qword_1ED0757C8, &qword_1E65F1D58, MEMORY[0x1E699CF50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757B8);
  }

  return result;
}

uint64_t sub_1E611BB10(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64C55E4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E611BBD4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E611BC60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E611BCE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_90Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E611C9FC(_OWORD *a1, __int128 *a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6118D1C(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1E611CAF0()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E611979C(v0 + v3);
}

void sub_1E611CBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1E6119A9C(a1, a2, a3, v8);
}

uint64_t sub_1E611CC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E611CCC0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075818, &qword_1E65F1DD0);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - v3;
  v5 = sub_1E65E17D8();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v36 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075820, &qword_1E65F1DD8);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075828, &qword_1E65F1DE0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = sub_1E65DA4C8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v27 = swift_projectBox();
      v28 = v37;
      (*(v37 + 16))(v12, v27, v10);
      sub_1E65E1898();
      v29 = swift_allocBox();
      sub_1E65DAB08();
      sub_1E6481298(v41, v42, v43, v9);
      sub_1E65DAB18();
      sub_1E6481298(v41, v42, v43, v38);
      sub_1E65E1888();
      (*(v28 + 8))(v12, v10);
      return v29 | 0x8000000000000000;
    }

    else
    {
      v32 = swift_projectBox();
      v34 = v39;
      v33 = v40;
      (*(v39 + 16))(v4, v32, v40);
      sub_1E65DAA28();
      sub_1E611CCC0(v41);

      sub_1E65DAA18();
      sub_1E65E1878();
      v35 = swift_allocBox();
      sub_1E65DAA38();
      sub_1E611CCC0(v41);

      sub_1E65E1868();
      (*(v34 + 8))(v4, v33);
      return v35 | 0xC000000000000000;
    }
  }

  else if (v22)
  {
    v30 = swift_projectBox();
    (*(v14 + 16))(v16, v30, v13);
    sub_1E65E18B8();
    v31 = swift_allocBox();
    sub_1E64897C4();
    (*(v14 + 8))(v16, v13);
    return v31 | 0x4000000000000000;
  }

  else
  {
    v23 = v19;
    v24 = swift_projectBox();
    (*(v18 + 16))(v21, v24, v23);
    sub_1E65E17B8();
    v25 = swift_allocBox();
    sub_1E65DA4B8();
    sub_1E65E17C8();
    (*(v18 + 8))(v21, v23);
    return v25;
  }
}

uint64_t sub_1E611D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_1E65DB848();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for RouteSource(0);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination(0);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075870, &qword_1E65F1E68);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v10 = sub_1E65DB438();
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E611D47C, 0, 0);
}

uint64_t sub_1E611D47C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 40);
  sub_1E5DFD1CC(*(v0 + 48), v2, &qword_1ED075870, &qword_1E65F1E68);
  sub_1E5DFD1CC(v4, v3, &qword_1ED075868, &qword_1E65F1E60);
  sub_1E5DFD1CC(v2, v1, &qword_1ED075870, &qword_1E65F1E68);
  v5 = sub_1E65E1118();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 192);
  if (v7 == 1)
  {
    sub_1E5DFE50C(*(v0 + 192), &qword_1ED075870, &qword_1E65F1E68);
  }

  else
  {
    sub_1E65E10E8();
    (*(v6 + 8))(v8, v5);
  }

  v9 = *(v0 + 176);
  sub_1E5DFD1CC(*(v0 + 184), v9, &qword_1ED075868, &qword_1E65F1E60);
  v10 = sub_1E65E1458();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v14 = *(v0 + 176);
  if (v13 == 1)
  {
    sub_1E5DFE50C(*(v0 + 176), &qword_1ED075868, &qword_1E65F1E60);
  }

  else
  {
    sub_1E65E1408();
    (*(v11 + 8))(v14, v10);
  }

  v15 = *(v0 + 168);
  sub_1E5DFD1CC(*(v0 + 184), v15, &qword_1ED075868, &qword_1E65F1E60);
  v16 = v12(v15, 1, v10);
  v17 = *(v0 + 168);
  if (v16 == 1)
  {
    sub_1E5DFE50C(*(v0 + 168), &qword_1ED075868, &qword_1E65F1E60);
  }

  else
  {
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    sub_1E65E13F8();
    (*(v11 + 8))(v17, v10);
    v21 = sub_1E65E1778();
    (*(v19 + 8))(v18, v20);
    if (v21)
    {
      sub_1E65E6358();
    }
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 184);

  sub_1E65DB418();
  sub_1E5DFE50C(v23, &qword_1ED075868, &qword_1E65F1E60);
  sub_1E5DFE50C(v22, &qword_1ED075870, &qword_1E65F1E68);
  *(v0 + 28) = *(type metadata accessor for AppComposer(0) + 20);
  swift_storeEnumTagMultiPayload();
  *(v0 + 232) = type metadata accessor for AppEnvironment(0);
  v24 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 240) = v25;
  v28 = (v24 + *v24);
  v26 = swift_task_alloc();
  *(v0 + 248) = v26;
  *v26 = v0;
  v26[1] = sub_1E611D8C0;

  return v28();
}

uint64_t sub_1E611D8C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1E611DB18;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = sub_1E611D9F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E611D9F0()
{
  v1 = v0[33];
  v0[34] = v1;
  v2 = v1;
  v3 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[35] = v4;
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_1E611DD88;
  v6 = v0[28];
  v7 = v0[12];

  return (v9)(v7, v6, 0);
}

uint64_t sub_1E611DB18()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v0[34] = 0;
  v12 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[35] = v13;
  v18 = (v12 + *v12);
  v14 = swift_task_alloc();
  v0[36] = v14;
  *v14 = v0;
  v14[1] = sub_1E611DD88;
  v15 = v0[28];
  v16 = v0[12];

  return (v18)(v16, v15, 0);
}

uint64_t sub_1E611DD88()
{

  return MEMORY[0x1EEE6DFA0](sub_1E611DEA0, 0, 0);
}

uint64_t sub_1E611DEA0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v2 = v1;
  (*(v5 + 16))(&v2[v10], v4, v7);
  v12 = sub_1E65D74E8();
  (*(*(v12 - 8) + 16))(&v2[v11], v8, v12);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D4EC(v3, &v2[*(v19 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v4, v7);
  sub_1E612205C(v3, type metadata accessor for RouteSource);
  *&v2[*(v19 + 24)] = MEMORY[0x1E69E7CD0];
  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v15 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v0 + 296) = v16;
  *(v16 + 16) = xmmword_1E65EA670;
  sub_1E5E1D4EC(v2, v16 + v15, type metadata accessor for RouteDestination);
  *(v0 + 16) = 0;
  *(v0 + 24) = 192;
  v17 = swift_task_alloc();
  *(v0 + 304) = v17;
  *v17 = v0;
  v17[1] = sub_1E611E114;

  return RoutingContext.presentDestinations(_:style:priority:)(v16, (v0 + 16), (v0 + 25), v13, v14);
}

uint64_t sub_1E611E114()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  sub_1E5F94E00(*(v2 + 16), *(v2 + 24));

  if (v0)
  {
    v3 = sub_1E611E384;
  }

  else
  {
    v3 = sub_1E611E25C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E611E25C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1E612205C(v0[17], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E611E384()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1E612205C(v0[17], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E611E4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E611E4CC, 0, 0);
}

uint64_t sub_1E611E4CC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ServiceSubscriptionService.performPurchase.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E611E5E8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E611E5E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E5FAD050;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1E611E710;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E611E710()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E611E798()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E60102EC;

  return v5();
}

uint64_t sub_1E611E8CC()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611E97C, v3, v2);
}

uint64_t sub_1E611E97C()
{

  sub_1E5E20198(3, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E611E9F4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E611EAC0, 0, 0);
}

uint64_t sub_1E611EAC0()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EB70, v3, v2);
}

uint64_t sub_1E611EB70()
{

  sub_1E5E20198(13, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    *(v0 + 128) = *(v0 + 56);
    v1 = sub_1E611ECA8;
  }

  else
  {
    v1 = sub_1E611EC48;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E611EC48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E611ECA8(uint64_t a1)
{
  *(v1 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611ED34, v3, v2);
}

uint64_t sub_1E611ED34()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E611EDC0, 0, 0);
}

uint64_t sub_1E611EDC0(uint64_t a1)
{
  *(v1 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EE4C, v3, v2);
}

uint64_t sub_1E611EE4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E611EF04()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EFB4, v3, v2);
}

uint64_t sub_1E611EFB4()
{

  sub_1E5E20198(24, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E611F02C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v60 = a1;
  v76 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v55 - v11;
  v57 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v55 - v16;
  v17 = type metadata accessor for BrowsingIdentity(0);
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v55 - v20;
  v21 = sub_1E65E1518();
  v58 = *(v21 - 8);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v55 - v27;
  v29 = sub_1E65D7848();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E65E11C8();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  type metadata accessor for AppState(0);
  v67 = v35;
  v37 = v60;
  v66 = v36;
  sub_1E611F96C(v60, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v28);
  sub_1E5DFE50C(v25, &qword_1ED071F78, &unk_1E65EA3F0);
  v38 = *(v30 + 48);
  v39 = v38(v28, 1, v29);
  v68 = v32;
  if (v39 == 1)
  {
    sub_1E65D77C8();
    if (v38(v28, 1, v29) != 1)
    {
      sub_1E5DFE50C(v28, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
  }

  (*(v58 + 16))(v77, v37, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v40 = v61;
  sub_1E65E4C98();
  v41 = v65;
  sub_1E60EE7BC(v65);
  sub_1E5DFE50C(v40, &qword_1ED071E58, &qword_1E65EA150);
  v42 = v63;
  v43 = *(v62 + 48);
  v44 = v43(v41, 1, v63);
  v45 = v69;
  if (v44 == 1)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    v47 = v64;
    (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
    if (v43(v41, 1, v42) != 1)
    {
      sub_1E5DFE50C(v41, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    v47 = v64;
    sub_1E5E1E180(v41, v64, type metadata accessor for BrowsingIdentity);
  }

  sub_1E5E1E180(v47, v45, type metadata accessor for BrowsingIdentity);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v48 - 8) + 48))(v45, 1, v48) != 1)
  {
    v49 = *(v48 + 48);
    v50 = v56;
    sub_1E5E1E180(v45, v56, type metadata accessor for RemoteParticipantScope);
    swift_getEnumCaseMultiPayload();
    sub_1E612205C(v50, type metadata accessor for RemoteParticipantScope);
    v51 = sub_1E65DA2A8();
    (*(*(v51 - 8) + 8))(v45 + v49, v51);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  sub_1E65E4C98();
  sub_1E65E4C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v52 = v72;
  sub_1E65E4D78();
  v53 = v74;
  sub_1E65E4C98();
  (*(v73 + 8))(v52, v53);
  return sub_1E65E1148();
}

uint64_t sub_1E611F96C(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65E11A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v13 = 3u >> v18[15];
  v14 = sub_1E65E1508();
  if (((1 << v14) & 0x1FEB) != 0)
  {
    return sub_1E65E11B8();
  }

  if (v14 != 2)
  {
    if (a2 < 2u)
    {
      v17 = MEMORY[0x1E699E788];
      if ((v13 & 1) == 0)
      {
        v17 = MEMORY[0x1E699E790];
      }

      (*(v4 + 104))(v7, *v17, v3);
      return sub_1E65E1198();
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_16:
    (*(v4 + 104))(v10, *MEMORY[0x1E699E790], v3);
    return sub_1E65E1198();
  }

  if (a2 < 2u)
  {
    v16 = MEMORY[0x1E699E788];
    if ((v13 & 1) == 0)
    {
      v16 = MEMORY[0x1E699E790];
    }

    (*(v4 + 104))(v12, *v16, v3);
    return sub_1E65E1198();
  }

  if (a2 == 3)
  {
    goto LABEL_16;
  }

LABEL_17:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E611FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5E1D4EC(a3, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v17);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1E5E1E180(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for AppComposer);
  v14 = (v13 + v12);
  *v14 = a1;
  v14[1] = a2;
  sub_1E5DF599C(v17, v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E65E3868();
}

uint64_t sub_1E611FE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a7;
  v80 = a6;
  v79 = a5;
  v78 = a4;
  v64 = a3;
  v65 = a2;
  v85 = a8;
  v87 = sub_1E65E5128();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E5038();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E65E1478();
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E5058();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v61 - v16;
  v69 = sub_1E65E1118();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v17;
  v67 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073810, &qword_1E65EDA98);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v61 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v61 = &v61 - v22;
  v23 = sub_1E65D8F28();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA190;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v81 = a1;
  v28 = sub_1E65E10F8();
  v29 = MEMORY[0x1E69E6158];
  *(inited + 48) = v28;
  *(inited + 56) = v30;
  *(inited + 72) = v29;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  (*(v24 + 104))(v26, *MEMORY[0x1E69CBCA0], v23);
  v31 = sub_1E65D8F18();
  v33 = v32;
  (*(v24 + 8))(v26, v23);
  *(inited + 96) = v31;
  *(inited + 104) = v33;
  *(inited + 120) = v29;
  *(inited + 128) = 0x6973736572706D69;
  v34 = v64;
  v35 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v34;
  *(inited + 168) = v35;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  v36 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  *(inited + 216) = v29;
  *(inited + 192) = v36;
  *(inited + 200) = v37;
  v38 = sub_1E6215168(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
  swift_arrayDestroy();
  sub_1E65E13F8();
  v39 = v62;
  v40 = sub_1E65E1778();
  (*(v63 + 8))(v20, v39);
  if (v40)
  {
    v41 = v61;
    sub_1E65DA1D8();
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v61;
  }

  v43 = sub_1E65DA208();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v41, v42, 1, v43);
  if ((*(v44 + 48))(v41, 1, v43) == 1)
  {
    sub_1E5DFE50C(v41, &qword_1ED073570, &unk_1E65F4570);
  }

  else
  {
    v45 = sub_1E65DA1E8();
    (*(v44 + 8))(v41, v43);
    v46 = sub_1E61208EC(v45);

    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v38;
      sub_1E6121BA8(v46, sub_1E6120FF4, 0, isUniquelyReferenced_nonNull_native, &v88);
    }
  }

  v48 = v68;
  v49 = v67;
  v50 = v69;
  (*(v68 + 16))(v67, v81, v69);
  v51 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v77;
  (*(v48 + 32))(v52 + v51, v49, v50);

  v53 = v72;
  sub_1E65E1158();

  v54 = v70;
  sub_1E65E1108();
  sub_1E65E1468();
  (*(v71 + 8))(v54, v74);
  sub_1E65E5048();
  sub_1E65E5028();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1E6215168(MEMORY[0x1E69E7CC0]);
  sub_1E6215168(v55);
  v56 = v82;
  sub_1E65E5068();
  v57 = sub_1E65E5078();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = v84;
  sub_1E65E5118();
  swift_getOpaqueTypeConformance2();
  v59 = v76;
  sub_1E65E4738();
  (*(v86 + 8))(v58, v87);
  sub_1E5DFE50C(v56, &qword_1ED073660, &qword_1E65ED8C0);
  return (*(v75 + 8))(v53, v59);
}

unint64_t sub_1E61208EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075840, &qword_1E65F1DF8);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1E604FBF8(*(a1 + 48) + 40 * v12, v27);
        sub_1E5DFA11C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1E604FBF8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E5DFA11C(v25 + 8, v20);
        sub_1E5DFE50C(v24, &qword_1ED075848, &qword_1E65F1E00);
        v21 = v18;
        sub_1E6121EB8(v20, v22);
        v13 = v21;
        sub_1E6121EB8(v22, v23);
        sub_1E6121EB8(v23, &v21);
        result = sub_1E6215038(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1E6121EB8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1E6121EB8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1E5DFE50C(v24, &qword_1ED075848, &qword_1E65F1E00);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6120BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E1118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1E64B80F8(0, 0, v9, &unk_1E65F1E10, v12);
}

uint64_t sub_1E6120DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1E65E1188();
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6120E38, 0, 0);
}

uint64_t sub_1E6120E38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1E65E1118();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 6, v3);
  sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6120F64, v6, v5);
}

uint64_t sub_1E6120F64()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E612205C(v1, MEMORY[0x1E699E780]);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6120FF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1E5DFA11C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1E6121040@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + v13);
    result = sub_1E604FBF8(*(v4 + 56) + 40 * v13, v20);
    v16 = *v20;
    v17 = *&v20[16];
    v18 = *v21;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18)
    {
      v19 = v1[5];
      *v20 = v14;
      *&v20[8] = v16;
      *v21 = v17;
      *&v21[8] = v18;
      v19(v20);
      return sub_1E5DFE50C(v20, &qword_1ED075878, &qword_1E65F1E70);
    }

    else
    {
LABEL_13:
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121170@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - v3;
  v49 = sub_1E65DF3B8();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D76A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075898, &qword_1E65F1E90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v43 = &v40 - v14;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  if (v19)
  {
    v42 = v1[2];
    v20 = v17;
LABEL_11:
    v41 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v7 + 16))(v9, *(v15 + 48) + *(v7 + 72) * v24, v6);
    (*(v4 + 16))(v48, *(v15 + 56) + *(v4 + 72) * v24, v49);
    v25 = v6;
    v26 = v45;
    v27 = *(v45 + 48);
    v28 = *(v7 + 32);
    v29 = v43;
    v28(v43, v9, v25);
    (*(v4 + 32))(v29 + v27, v48, v49);
    v30 = v44;
    (*(v44 + 56))(v29, 0, 1, v26);
    v31 = v41;
    v18 = v42;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v18;
    v1[3] = v23;
    v1[4] = v31;
    v32 = v1[5];
    v33 = v46;
    sub_1E5FAB460(v29, v46, &qword_1ED075898, &qword_1E65F1E90);
    v34 = 1;
    v35 = (*(v30 + 48))(v33, 1, v26);
    v36 = v47;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v40;
      sub_1E5FAB460(v37, v40, &qword_1ED0743E0, &qword_1E65F0AE8);
      v32(v38);
      sub_1E5DFE50C(v38, &qword_1ED0743E0, &qword_1E65F0AE8);
      v34 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68);
    return (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v43;
        v30 = v44;
        v26 = v45;
        (*(v44 + 56))(v43, 1, 1, v45);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v42 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121600@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E5DFA11C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1E6121EB8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1E5DFE50C(v21, &qword_1ED075838, &qword_1E65F1DF0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121760@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075880, &qword_1E65F1E78);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - v4;
  v45 = sub_1E65DA2D8();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075888, &qword_1E65F1E80);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_1E5FAB460(v14, v36, &qword_1ED075888, &qword_1E65F1E80);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_1E5FAB460(v39, v42, &qword_1ED075880, &qword_1E65F1E78);
      v37(v40);
      sub_1E5DFE50C(v40, &qword_1ED075880, &qword_1E65F1E78);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v13, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121B44()
{
  v1 = *(sub_1E65E1118() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E6120BC8(v2, v3);
}

unint64_t sub_1E6121BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1E6121600(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1E6121EB8(v44, v42);
  v14 = *a5;
  result = sub_1E6215038(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E641B45C(v20, a4 & 1);
    result = sub_1E6215038(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E64244DC();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E6121EB8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1E6121EB8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E6121600(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1E6121EB8(v44, v42);
        v32 = *a5;
        result = sub_1E6215038(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1E641B45C(v36, 1);
          result = sub_1E6215038(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1E6121EB8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1E6121EB8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1E6121600(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1E5E24EE4(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_1E6121EB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E6121EC8(uint64_t a1)
{
  v4 = *(sub_1E65E1118() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6120DA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E6121FC0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1E60E5CF8((v0 + v2), v6, v7, v0 + v4);
}

uint64_t sub_1E612205C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61220BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61220E0, 0, 0);
}

uint64_t sub_1E61220E0()
{
  v1 = *(v0 + 16);
  sub_1E612218C(*(v0 + 32), v1);
  v2 = sub_1E65D7A38();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E612218C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v59 = a1;
  v60 = a1;
  v4 = sub_1E65E5C28();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v53 - v9;
  v10 = sub_1E65D7848();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v53 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v16 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v18 = &v53 - v17;
  v61 = sub_1E65DF658();
  v19 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65DF6C8();
  v72 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  v28 = *v2;
  swift_getKeyPath();
  v58 = v28;
  sub_1E65E4EC8();

  v29 = type metadata accessor for AppComposer(0);
  v30 = *(v29 + 20);
  v63 = v3;
  sub_1E6093FD0(*(v3 + v30 + 8));
  (*(v16 + 8))(v18, v62);
  sub_1E65DF648();
  (*(v19 + 8))(v21, v61);
  v31 = v59;
  v32 = sub_1E6462C54(v27, v59);
  v61 = v33;
  v62 = v32;
  v64 = v22;
  v71 = v27;
  if (v60 == 6)
  {
    v34 = v57;
    v35 = v72;
    (*(v72 + 104))(v25, *MEMORY[0x1E699E6E8], v22);
    v36 = sub_1E65DF6B8();
    (*(v35 + 8))(v25, v22);
    v37 = sub_1E65D8F38();
    if (v36)
    {
      v38 = MEMORY[0x1E69CBDB8];
    }

    else
    {
      v38 = MEMORY[0x1E69CBDB0];
    }

    (*(*(v37 - 8) + 104))(v34, *v38, v37);
  }

  else
  {
    v39 = *MEMORY[0x1E69CBDB0];
    v37 = sub_1E65D8F38();
    v34 = v57;
    (*(*(v37 - 8) + 104))(v57, v39, v37);
  }

  v40 = v31;
  sub_1E65D8F38();
  (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
  v41 = (v63 + *(v29 + 36));
  v43 = *v41;
  v42 = v41[1];
  v44 = sub_1E65D74E8();
  (*(*(v44 - 8) + 56))(v67, 1, 1, v44);
  swift_getKeyPath();
  sub_1E5FA9D34(v43, v42);
  v45 = v73;
  sub_1E65E4EC8();

  if (v40 == 6)
  {
    v46 = v72;
    v47 = v64;
    (*(v72 + 104))(v25, *MEMORY[0x1E699E6E8], v64);
    v48 = sub_1E65DF6B8();
    (*(v46 + 8))(v25, v47);
    if (v48)
    {
      v49 = v54;
      sub_1E65E5BA8();
      v45 = v73;
      sub_1E65DF228();
      (*(v55 + 8))(v49, v56);
    }

    else
    {
      v45 = v73;
      sub_1E65DF548();
    }
  }

  else
  {
    sub_1E65DF548();
    v47 = v64;
    v46 = v72;
  }

  (*(v65 + 8))(v45, v66);
  v50 = sub_1E65D9908();
  (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
  v51 = sub_1E65D9F88();
  (*(*(v51 - 8) + 56))(v69, 1, 1, v51);
  sub_1E65D7A28();
  return (*(v46 + 8))(v71, v47);
}

uint64_t sub_1E6122A0C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v60 = a4;
  v61 = a2;
  v58 = a5;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  sub_1E5E1DEAC(a3, &v50 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  *(v22 + v21 + v9) = a1;
  v59 = a3;
  sub_1E5E1DEAC(a3, v17);
  v23 = ((v20 + 32) & ~v20) + v9;
  v55 = (v20 + 32) & ~v20;
  v53 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1E65F1EA0;
  *(v24 + 24) = v22;
  v50 = v22;
  v25 = v24;
  sub_1E5E1FA80(v17, v24 + ((v20 + 32) & ~v20));
  *(v25 + v23) = 0;
  v26 = v25 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v51 = sub_1E6172524;
  v52 = v25;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v29 = v60;
  v28 = v61;
  *v27 = v61;
  v27[1] = v29;
  v30 = v54;
  sub_1E5E1DEAC(a3, v54);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65F1EA0;
  v34[3] = v22;
  v34[4] = v28;
  v34[5] = v29;
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v35 = v34 + v33;
  v36 = v51;
  *(v35 + 1) = v51;
  *(v35 + 2) = 0;
  v37 = v56;
  sub_1E5E1DEAC(v59, v56);
  v38 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = &unk_1E65F1EA0;
  v40 = v50;
  v41 = v61;
  v39[3] = v50;
  v39[4] = v41;
  v39[5] = v29;
  sub_1E5E1FA80(v37, v39 + v31);
  v42 = v39 + v38;
  *v42 = v36;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = v57;
  sub_1E5E1DEAC(v59, v57);
  v44 = swift_allocObject();
  *(v44 + 16) = &unk_1E65F1EA0;
  *(v44 + 24) = v40;
  sub_1E5E1FA80(v43, v44 + v55);
  v45 = v61;
  swift_unknownObjectRetain_n();
  result = swift_retain_n();
  v47 = v58;
  v48 = v60;
  *v58 = v45;
  v47[1] = v48;
  v49 = v52;
  v47[2] = &unk_1E65EB918;
  v47[3] = v49;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v39;
  v47[8] = &unk_1E65FA780;
  v47[9] = v44;
  return result;
}

uint64_t sub_1E6122DB8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E61220BC(a1, v5, v6);
}

uint64_t sub_1E6122EBC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  result = sub_1E65DC1A8();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1E6122F00(uint64_t *a1)
{
  sub_1E61260C0(*a1, *(a1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  return sub_1E65DC1B8();
}

uint64_t sub_1E6122F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a5;
  v57 = a6;
  v50 = a4;
  v54 = a7;
  v55 = a2;
  v9 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v35 - v21;
  v51 = type metadata accessor for AppState(0);
  v23 = *(a1 + *(v51 + 100) + 8);
  v24 = *(v23 + 16);
  v58 = v20;
  if (v24 && (v25 = sub_1E6215038(v55, a3), (v26 & 1) != 0))
  {
    (*(v20 + 16))(v18, *(v23 + 56) + *(v20 + 72) * v25, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    (*(v20 + 32))(v22, v18, v19);
  }

  else
  {
    v27 = *(v20 + 56);
    v47 = v18;
    v27(v18, 1, 1, v19);
    type metadata accessor for AppComposer(0);
    v48 = a3;

    LODWORD(v46) = sub_1E65DAE08();
    LODWORD(v45) = v56(a1);
    sub_1E65D76E8();
    sub_1E65E0778();
    sub_1E5E0024C(MEMORY[0x1E69E7CC0]);
    v59[0] = 2;
    v42 = sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E65E06E8();
    v44 = type metadata accessor for ActionButtonDescriptor(0);
    v43 = type metadata accessor for ArtworkDescriptor(0);
    v41 = type metadata accessor for ContextMenu(0);
    v40 = type metadata accessor for ItemContext(0);
    v39 = type metadata accessor for ItemMetrics(0);
    v37 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    v36 = type metadata accessor for SectionMetrics(0);
    v35[4] = type metadata accessor for ViewDescriptor(0);
    v35[3] = sub_1E6125B9C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v35[2] = sub_1E6125B9C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v35[1] = sub_1E6125B9C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    v50 = a1;
    sub_1E6125B9C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    v49 = v15;
    sub_1E6125B9C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6125B9C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6125B9C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E6125B9C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    sub_1E6125B9C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E6125B9C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v28 = v47;
    a1 = v50;
    sub_1E65DC1C8();
    if ((*(v58 + 48))(v28, 1, v19) != 1)
    {
      sub_1E5DFE50C(v28, &qword_1ED0758B0, &qword_1E65F1FB0);
    }
  }

  v38 = v22;
  v56(a1);
  sub_1E65DC218();
  v29 = *(v51 + 24);
  v30 = sub_1E65DC1D8();
  v56 = v31;
  v57 = v30;
  LODWORD(v55) = sub_1E65DC1E8();
  (*(v52 + 16))(v12, a1 + v29, v53);
  v53 = sub_1E65DC1A8();
  LODWORD(v52) = v32;
  LODWORD(v50) = sub_1E65DC208();
  v51 = sub_1E65DC228();
  v49 = v33;
  sub_1E65DC1F8();
  v48 = type metadata accessor for ActionButtonDescriptor(0);
  v47 = type metadata accessor for ArtworkDescriptor(0);
  v46 = type metadata accessor for ContextMenu(0);
  v45 = type metadata accessor for ItemContext(0);
  v44 = type metadata accessor for ItemMetrics(0);
  v43 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v42 = type metadata accessor for SectionMetrics(0);
  v41 = type metadata accessor for ViewDescriptor(0);
  v40 = sub_1E6125B9C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v39 = sub_1E6125B9C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v37 = sub_1E6125B9C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v36 = sub_1E6125B9C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6125B9C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E6125B9C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6125B9C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65DC1C8();
  return (*(v58 + 8))(v38, v19);
}

uint64_t sub_1E6123AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for AppState(0);

  return sub_1E6407C10(v9, a3, a4);
}

uint64_t sub_1E6123D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a4;
  v33 = a8;
  v26 = a7;
  v30 = a3;
  v31 = a5;
  v28 = a9;
  v29 = a1;
  v11 = sub_1E65D7968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = *(a6 + 2);
  v15 = *(a6 + 5);
  v16 = *(a6 + 8);
  v27 = *(a6 + 7);
  v25 = v16;
  v17 = *(a6 + 9);
  v18 = *(v12 + 16);
  v24 = *a6;
  v34 = *(a6 + 24);
  v18(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v19 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = a6[3];
  *(v20 + 48) = a6[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a6[4];
  v22 = a6[1];
  *(v20 + 16) = *a6;
  *(v20 + 32) = v22;
  *(v20 + 96) = v26;
  (*(v12 + 32))(v20 + v19, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v35 = v24;
  v36 = v14;
  v37 = v34;
  v38 = v15;
  v39 = &unk_1E65F1FA8;
  v40 = v20;
  v41 = v25;
  v42 = v17;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6205B08(v29, v30, v31, &v35, v28);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E6123F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for PageMetricsClick(0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6123FE0, 0, 0);
}

uint64_t sub_1E6123FE0()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 16);
  if (*(v0 + 24) && *(v0 + 24) != 1)
  {
    sub_1E5FED3F8(*(v0 + 16), 2u);
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v35 = *(*(v0 + 40) + 48);
  v5 = sub_1E65D7938();
  v6 = sub_1E65D7958();
  v7 = sub_1E6124524(v5, 0, v6, v1);

  sub_1E5DFD1CC(v4, v3, &qword_1ED073578, &qword_1E65F0E60);
  v8 = v2[5];
  v9 = sub_1E65D8C68();
  (*(*(v9 - 8) + 16))(v3 + v8, v4 + v8, v9);
  sub_1E5DFD1CC(v4 + v2[6], v3 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v36 = *(v4 + v2[7]);

  sub_1E5FAA0F0(v7);
  sub_1E5DFD1CC(v4 + v2[8], v3 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v10 = (v4 + v2[9]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v4 + v2[10]);
  v14 = v13[1];
  v32 = v11;
  v33 = *v13;
  v15 = *(v4 + v2[11]);
  v16 = (v4 + v2[12]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v2[14];
  v20 = (v4 + v2[13]);
  v21 = v20[1];
  v30 = *v20;
  v31 = v17;
  v22 = sub_1E65D8F28();
  (*(*(v22 - 8) + 16))(v3 + v19, v4 + v19, v22);
  sub_1E5DFD1CC(v4 + v2[15], v3 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v3 + v2[7]) = v36;
  v23 = (v3 + v2[9]);
  *v23 = v32;
  v23[1] = v12;
  v24 = (v3 + v2[10]);
  *v24 = v33;
  v24[1] = v14;
  *(v3 + v2[11]) = v15;
  v25 = (v3 + v2[12]);
  *v25 = v31;
  v25[1] = v18;
  v26 = (v3 + v2[13]);
  *v26 = v30;
  v26[1] = v21;

  v34 = (v35 + *v35);
  v27 = swift_task_alloc();
  *(v0 + 80) = v27;
  *v27 = v0;
  v27[1] = sub_1E6124348;
  v28 = *(v0 + 72);

  return v34(v28);
}

uint64_t sub_1E6124348()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1E6126060(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61244C0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61244C0()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1E6124524(unint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  LODWORD(v61) = a2;
  v59 = a1;
  v6 = sub_1E65D86A8();
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v62 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - v14;
  v16 = sub_1E65D8F28();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (v54 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v26 = v54 - v25;
  if ((a3 & 0x8000000000000000) != 0 || *(a4 + 16) <= a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v55 = v24;
  v27 = *(v24 + 16);
  v28 = a4 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * a3;
  v58 = v23;
  v27(v26, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A8, &qword_1E65F1F98);
  v29 = *(v10 + 72);
  v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v57 = v29;
  v31 = swift_allocObject();
  v54[3] = v31;
  v32 = v31 + v30;
  if (v61)
  {
    (*(v64 + 56))(v31 + v30, 1, 1, v63);
  }

  else
  {
    sub_1E6125C54(v59, v31 + v30);
  }

  v61 = v26;
  sub_1E65E0548();
  v34 = type metadata accessor for SectionMetrics(0);
  v35 = (*(*(v34 - 8) + 48))(v21, 1, v34);
  v56 = v9;
  if (v35 == 1)
  {
    sub_1E5DFE50C(v21, &qword_1ED072630, &qword_1E65EB948);
    v36 = 1;
    v37 = v57;
  }

  else
  {
    v59 = *v21;

    v38 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v54[0] = v39;
    v54[1] = v38;
    v54[2] = v21[2];
    (*(v60 + 16))(v18, v21 + *(v34 + 24), v16);

    v37 = v57;
    sub_1E65D8678();
    sub_1E6126060(v21, type metadata accessor for SectionMetrics);
    v36 = 0;
  }

  v41 = v63;
  v40 = v64;
  (*(v64 + 56))(v32 + v37, v36, 1, v63);
  sub_1E5DFD1CC(v32, v15, &qword_1ED0758A0, &qword_1E65F1F90);
  sub_1E6125BE4(v15, v13);
  v42 = *(v40 + 48);
  v43 = (v40 + 32);
  v44 = v42(v13, 1, v41);
  v45 = v61;
  if (v44 == 1)
  {
    sub_1E5DFE50C(v13, &qword_1ED0758A0, &qword_1E65F1F90);
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v60 = v32;
    v46 = *v43;
    (*v43)(v62, v13, v41);
    v33 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1E64F6A68(0, *(v33 + 2) + 1, 1, v33);
    }

    v48 = *(v33 + 2);
    v47 = *(v33 + 3);
    if (v48 >= v47 >> 1)
    {
      v33 = sub_1E64F6A68((v47 > 1), v48 + 1, 1, v33);
    }

    *(v33 + 2) = v48 + 1;
    v49 = &v33[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v48];
    v41 = v63;
    v46(v49, v62, v63);
    v32 = v60;
    v37 = v57;
  }

  sub_1E5DFD1CC(v32 + v37, v15, &qword_1ED0758A0, &qword_1E65F1F90);
  sub_1E6125BE4(v15, v13);
  if (v42(v13, 1, v41) == 1)
  {
    sub_1E5DFE50C(v13, &qword_1ED0758A0, &qword_1E65F1F90);
  }

  else
  {
    v50 = *v43;
    (*v43)(v62, v13, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1E64F6A68(0, *(v33 + 2) + 1, 1, v33);
    }

    v52 = *(v33 + 2);
    v51 = *(v33 + 3);
    if (v52 >= v51 >> 1)
    {
      v33 = sub_1E64F6A68((v51 > 1), v52 + 1, 1, v33);
    }

    *(v33 + 2) = v52 + 1;
    v50(&v33[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v52], v62, v41);
  }

  (*(v55 + 8))(v45, v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v33;
}

uint64_t sub_1E6124CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, __int128 *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = *(a6 + 2);
  v14 = *(a6 + 5);
  v15 = *(a6 + 8);
  v16 = *(a6 + 9);
  v17 = swift_allocObject();
  v18 = *(a6 + 24);
  v19 = a6[3];
  *(v17 + 48) = a6[2];
  *(v17 + 64) = v19;
  *(v17 + 80) = a6[4];
  v20 = *a6;
  v21 = a6[1];
  *(v17 + 16) = *a6;
  *(v17 + 32) = v21;
  *(v17 + 96) = a7;
  *(v17 + 104) = a2;
  *(v17 + 112) = a3 & 1;
  *(v17 + 120) = a4;
  v26 = v20;
  v27 = v13;
  v28 = v18;
  v29 = v14;
  v30 = &unk_1E65F1F00;
  v31 = v17;
  v32 = v15;
  v33 = v16;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(a1, a5, &v26, a8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E6124E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  *(v6 + 25) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  *(v6 + 72) = type metadata accessor for PageMetricsClick(0);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6124EC0, 0, 0);
}

uint64_t sub_1E6124EC0()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 16);
  if (*(v0 + 24) && *(v0 + 24) != 1)
  {
    sub_1E5FED3F8(*(v0 + 16), 2u);
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v33 = *(*(v0 + 40) + 48);
  v5 = sub_1E6124524(*(v0 + 56), *(v0 + 25) & 1, *(v0 + 64), v1);

  sub_1E5DFD1CC(v4, v3, &qword_1ED073578, &qword_1E65F0E60);
  v6 = v2[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 16))(v3 + v6, v4 + v6, v7);
  sub_1E5DFD1CC(v4 + v2[6], v3 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v34 = *(v4 + v2[7]);

  sub_1E5FAA0F0(v5);
  sub_1E5DFD1CC(v4 + v2[8], v3 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v8 = (v4 + v2[9]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v4 + v2[10]);
  v12 = v11[1];
  v30 = v9;
  v31 = *v11;
  v13 = *(v4 + v2[11]);
  v14 = (v4 + v2[12]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v2[14];
  v18 = (v4 + v2[13]);
  v19 = v18[1];
  v28 = *v18;
  v29 = v15;
  v20 = sub_1E65D8F28();
  (*(*(v20 - 8) + 16))(v3 + v17, v4 + v17, v20);
  sub_1E5DFD1CC(v4 + v2[15], v3 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v3 + v2[7]) = v34;
  v21 = (v3 + v2[9]);
  *v21 = v30;
  v21[1] = v10;
  v22 = (v3 + v2[10]);
  *v22 = v31;
  v22[1] = v12;
  *(v3 + v2[11]) = v13;
  v23 = (v3 + v2[12]);
  *v23 = v29;
  v23[1] = v16;
  v24 = (v3 + v2[13]);
  *v24 = v28;
  v24[1] = v19;

  v32 = (v33 + *v33);
  v25 = swift_task_alloc();
  *(v0 + 88) = v25;
  *v25 = v0;
  v25[1] = sub_1E6125218;
  v26 = *(v0 + 80);

  return v32(v26);
}

uint64_t sub_1E6125218()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1E6126060(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6125390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1E60975F0(a1, &v9 - v5);
  v7 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_1E60112B8(v6, a2);
  return sub_1E5DFE50C(v6, &qword_1ED072640, &qword_1E65EB958);
}

uint64_t sub_1E6125488(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = sub_1E65E4F38();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65E4F68();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E65E3E08();
  v5 = *(v31 - 8);
  v32 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E3C68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E4F88();
  v35 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  sub_1E61259CC();
  v34 = sub_1E65E63C8();
  sub_1E65E4F78();
  sub_1E65E4FB8();
  v18 = *(v12 + 8);
  v33 = v12 + 8;
  v36 = v18;
  v18(v15, v11);
  (*(v8 + 16))(v10, v37, v7);
  v19 = v30;
  v20 = v31;
  (*(v5 + 16))(v30, v38, v31);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v19, v20);
  aBlock[4] = sub_1E6125A18;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);

  v25 = v39;
  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E6125B9C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v27 = v40;
  v26 = v41;
  sub_1E65E6738();
  v28 = v34;
  MEMORY[0x1E694DDB0](v17, v25, v27, v24);
  _Block_release(v24);

  (*(v44 + 8))(v27, v26);
  (*(v42 + 8))(v25, v43);
  return v36(v17, v35);
}

unint64_t sub_1E61259CC()
{
  result = qword_1EE2D4600;
  if (!qword_1EE2D4600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4600);
  }

  return result;
}

uint64_t sub_1E6125A18()
{
  sub_1E65E3C68();
  sub_1E65E3E08();
  return sub_1E65E3C38();
}

uint64_t sub_1E6125AD8(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6124E20(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_1E6125B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6125BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6125C54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D8F28();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v13 = *(sub_1E65E0518() + 16);

  if (v13 <= a1)
  {
    goto LABEL_6;
  }

  result = sub_1E65E0518();
  if (*(result + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 16))(v9, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);

    sub_1E65E04B8();
    (*(v7 + 8))(v9, v6);
    v15 = type metadata accessor for ItemMetrics(0);
    if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED072668, &qword_1E65EB978);
LABEL_6:
      v16 = sub_1E65D86A8();
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }

    v17 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v25 = v18;
    v26 = v17;
    v19 = &v12[*(v15 + 24)];
    v20 = *(v19 + 1);
    if (v20)
    {
      v21 = *v19;
      v23 = v20;
      v24 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
      v24 = 0;
    }

    (*(v27 + 16))(v29, &v12[*(v15 + 32)], v28);

    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E6126060(v12, type metadata accessor for ItemMetrics);
    v22 = sub_1E65D86A8();
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  return result;
}

uint64_t sub_1E6126060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61260C0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1E61260D4(uint64_t a1)
{
  v4 = *(sub_1E65D7968() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6123F48(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_1E61261B8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a4;
  if (*a1)
  {
    if (*a1 == 1)
    {
      *(v6 + 72) = 1;
      v15 = (*(a5 + 32) + **(a5 + 32));
      v11 = swift_task_alloc();
      *(v6 + 48) = v11;
      *v11 = v6;
      v11[1] = sub_1E6126508;

      return v15(v6 + 72, a2, a3, a4, a5);
    }

    else
    {
      v14 = swift_task_alloc();
      *(v6 + 64) = v14;
      *v14 = v6;
      v14[1] = sub_1E6126654;

      return sub_1E6338A90(a2, a3, a4, a5);
    }
  }

  else
  {
    v13 = swift_task_alloc();
    *(v6 + 40) = v13;
    *v13 = v6;
    v13[1] = sub_1E6126414;

    return sub_1E63387E0(a2, a3, a4, a5);
  }
}

uint64_t sub_1E6126414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6126508()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6126748, v4, v3);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1E6126654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6126760@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v196 = a4;
  v197 = a5;
  v185 = a3;
  v188 = a2;
  v179 = a1;
  v186 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v183 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v182 = &v159 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v195 = &v159 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v180 = &v159 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v194 = &v159 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D0, &qword_1E65F1FD8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v178 = &v159 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v177 = &v159 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v173 = &v159 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v171 = &v159 - v26;
  v172 = sub_1E65DAC98();
  v170 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v166 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1E65DFA38();
  MEMORY[0x1EEE9AC00](v169);
  v165 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1E65DA0B8();
  v167 = *(v168 - 8);
  v29 = MEMORY[0x1EEE9AC00](v168);
  v164 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v163 = &v159 - v31;
  v162 = sub_1E65D9D58();
  v160 = *(v162 - 8);
  v32 = MEMORY[0x1EEE9AC00](v162);
  v161 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v159 = &v159 - v34;
  v174 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v174);
  v37 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v189 = (&v159 - v38);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v39 = MEMORY[0x1EEE9AC00](v176);
  v175 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v193 = &v159 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v181 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v191 = &v159 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v192 = &v159 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v190 = &v159 - v49;
  v50 = sub_1E65D9AC8();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v159 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v6;
  v54 = sub_1E65D80A8();
  v55 = sub_1E65D9AA8();
  v57 = v56;
  MEMORY[0x1E6941490]();
  v58 = sub_1E65D9AA8();
  v60 = v59;
  (*(v51 + 8))(v53, v50);
  v199 = v54;
  if (v55 == v58 && v57 == v60)
  {
  }

  else
  {
    v61 = sub_1E65E6C18();

    if ((v61 & 1) == 0)
    {
      v62 = sub_1E65D8198();
      v63 = sub_1E65D9AA8();
      v65 = sub_1E637CA94(v63, v64, v62);

      if (v65)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v66 = *(sub_1E65DADF8() - 8);
        v67 = *(v66 + 72);
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1E65EB9E0;
        v70 = (v69 + v68);
        *v70 = sub_1E65D9AA8();
        v70[1] = v71;
        swift_storeEnumTagMultiPayload();
        *(v70 + v67) = 1;
        swift_storeEnumTagMultiPayload();
        v202 = v69;
        sub_1E5FA9E2C(v199);
        v199 = v202;
      }
    }
  }

  v72 = *(sub_1E65D8058() + 16);

  if (v72)
  {
    v73 = sub_1E65D8058();
    v74 = v190;
    sub_1E63C4134(v196, v197, v73, v190);

    v75 = 0;
  }

  else
  {
    v75 = 1;
    v74 = v190;
  }

  v76 = sub_1E65D72D8();
  v77 = *(v76 - 8);
  v78 = *(v77 + 56);
  v79 = v77 + 56;
  v200 = v76;
  (v78)(v74, v75, 1);
  v80 = v189;
  sub_1E65D8128();
  v81 = v80;
  v82 = v37;
  sub_1E6128038(v81, v37, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = v79;
  if (EnumCaseMultiPayload == 1)
  {
    v84 = v167;
    v85 = v163;
    v86 = v168;
    (*(v167 + 32))(v163, v82, v168);
    v87 = v164;
    (*(v84 + 16))(v164, v85, v86);
    v88 = v166;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DFA28();
    (*(v170 + 8))(v88, v172);
    sub_1E65DA0A8();
    sub_1E61280A0();
    v89 = v175;
    sub_1E65DC438();
    v90 = *(v84 + 8);
    v90(v87, v86);
    v90(v85, v86);
  }

  else
  {
    v91 = v160;
    v92 = v159;
    v93 = v162;
    (*(v160 + 32))(v159, v37, v162);
    v94 = v161;
    (*(v91 + 16))(v161, v92, v93);
    v89 = v175;
    sub_1E613467C(v94, v175);
    (*(v91 + 8))(v92, v93);
  }

  sub_1E61280F8(v189, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  v95 = sub_1E6128158(v89, v193);
  v96 = sub_1E63B0584(v95);
  v97 = sub_1E61DCAE8(v96);

  v176 = sub_1E600C07C(v97);

  v98 = sub_1E65D8108();
  if (v99 == -1)
  {
    v100 = 9;
  }

  else
  {
    v202 = v98;
    LOBYTE(v203) = v99 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v100 = v201;
  }

  LODWORD(v175) = v100;
  v101 = v178;
  v102 = v177;
  sub_1E65D80E8();
  v103 = sub_1E65D76A8();
  v104 = 1;
  LODWORD(v178) = (*(*(v103 - 8) + 48))(v102, 1, v103);
  sub_1E5DFE50C(v102, &qword_1ED0752D8, &qword_1E660CC30);
  v105 = *(sub_1E65D8068() + 16);

  if (v105)
  {
    v106 = sub_1E65D8068();
    v107 = v192;
    sub_1E63C4134(v196, v197, v106, v192);

    v104 = 0;
  }

  else
  {
    v107 = v192;
  }

  (v78)(v107, v104, 1, v200);
  v108 = sub_1E65D81E8();
  if (v110 == -1)
  {
    LODWORD(v177) = 4;
  }

  else
  {
    v111 = v110;
    v112 = v108;
    v113 = v109;
    LODWORD(v177) = sub_1E61A8FC0(v108, v109, v110 & 1);
    sub_1E5F87158(v112, v113, v111);
  }

  v174 = sub_1E65D8188();
  sub_1E5DFD1CC(v179, v101, &qword_1ED0758D0, &qword_1E65F1FD8);
  v114 = sub_1E65DFDA8();
  v115 = *(v114 - 8);
  v116 = (*(v115 + 48))(v101, 1, v114);
  v189 = v78;
  if (v116 == 1)
  {
    sub_1E5DFE50C(v101, &qword_1ED0758D0, &qword_1E65F1FD8);
    v117 = sub_1E65DFB58();
    v119 = v118;
    v120 = sub_1E65D8078();
    v122 = v121;
    v123 = sub_1E65D81B8();
    if (v124)
    {
      v125 = v123;
    }

    else
    {
      v125 = 0;
    }

    if (v124)
    {
      v126 = v124;
    }

    else
    {
      v126 = 0xE000000000000000;
    }

    v202 = v120;
    v203 = v122;

    MEMORY[0x1E694D7C0](v125, v126);

    v78 = v189;

    MEMORY[0x1E694D7C0](v117, v119);
    swift_bridgeObjectRelease_n();

    v179 = v202;
    v173 = v203;
  }

  else
  {
    v179 = sub_1E65DFD38();
    v173 = v127;
    (*(v115 + 8))(v101, v114);
  }

  v128 = v180;
  sub_1E65D8208();
  sub_1E6127B6C(v128, v194);
  v129 = sub_1E65D8238();
  if (v131 == -1)
  {
    v135 = 4;
  }

  else
  {
    v202 = v129;
    v203 = v130;
    v204 = v131 & 1;
    v132 = v129;
    v133 = v130;
    v134 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E5F87158(v132, v133, v134);
    v135 = v201;
  }

  LODWORD(v180) = v135;
  v136 = v182;
  v137 = v191;
  v182 = sub_1E65D8088();
  v172 = v138;
  v171 = sub_1E65D8078();
  v170 = v139;
  v169 = sub_1E65D81D8();
  v168 = v140;
  if (*(v199 + 16))
  {
    sub_1E63C4134(v196, v197, v199, v137);
    v141 = 0;
  }

  else
  {
    v141 = 1;
  }

  (v78)(v137, v141, 1, v200);
  sub_1E65D8178();
  v142 = sub_1E65D83D8();
  v143 = *(v142 - 8);
  v144 = *(v143 + 48);
  v145 = v144(v136, 1, v142);
  if (v145 == 1)
  {
    sub_1E5DFE50C(v136, &qword_1ED074528, &unk_1E660F4D0);
    v146 = 1;
    v147 = v195;
  }

  else
  {
    v147 = v195;
    sub_1E608F7E4(v145);
    (*(v143 + 8))(v136, v142);
    v146 = 0;
  }

  v148 = sub_1E65DFD08();
  v149 = *(*(v148 - 8) + 56);
  v150 = 1;
  v149(v147, v146, 1, v148);
  v151 = *(sub_1E65D8248() + 16);

  if (v151)
  {
    v152 = sub_1E65D8248();
    v153 = v181;
    sub_1E63C4134(v196, v197, v152, v181);

    v150 = 0;
  }

  else
  {
    v153 = v181;
  }

  (v189)(v153, v150, 1, v200);
  v154 = v183;
  sub_1E65D8158();
  v155 = v144(v154, 1, v142);
  if (v155 == 1)
  {
    sub_1E5DFE50C(v154, &qword_1ED074528, &unk_1E660F4D0);
    v156 = 1;
    v157 = v184;
  }

  else
  {
    v157 = v184;
    sub_1E608F7E4(v155);
    (*(v143 + 8))(v154, v142);
    v156 = 0;
  }

  v149(v157, v156, 1, v148);
  return sub_1E65DF858();
}

uint64_t sub_1E6127B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DFA88();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D89E8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1E65D7BD8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  v33 = a1;
  sub_1E5DFD1CC(a1, v16, &qword_1ED0758B8, &qword_1E65F1FC0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E5DFE50C(v33, &qword_1ED0758B8, &qword_1E65F1FC0);
    sub_1E5DFE50C(v16, &qword_1ED0758B8, &qword_1E65F1FC0);
    v24 = 1;
    v25 = v36;
  }

  else
  {
    sub_1E6127FD0(v16, v23, MEMORY[0x1E69CB038]);
    v26 = MEMORY[0x1E69CB038];
    sub_1E6128038(v23, v21, MEMORY[0x1E69CB038]);
    (*(v8 + 32))(v13, v21, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_1E65D89D8();
    sub_1E65D89B8();
    sub_1E65D89C8();
    v27 = v32;
    sub_1E65DFB88();
    sub_1E5DFE50C(v33, &qword_1ED0758B8, &qword_1E65F1FC0);
    v28 = *(v8 + 8);
    v28(v11, v7);
    v28(v13, v7);
    sub_1E61280F8(v23, v26);
    v29 = v36;
    sub_1E6127FD0(v27, v36, MEMORY[0x1E699D4A0]);
    v24 = 0;
    v25 = v29;
  }

  return (*(v34 + 56))(v25, v24, 1, v35);
}

uint64_t sub_1E6127FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6128038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E61280A0()
{
  result = qword_1EE2D6600;
  if (!qword_1EE2D6600)
  {
    sub_1E65DFA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6600);
  }

  return result;
}

uint64_t sub_1E61280F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6128158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61281E0@<X0>(uint64_t *a1@<X8>)
{
  v101 = a1;
  v92 = type metadata accessor for AppStateService();
  Description = v92[-1].Description;
  MEMORY[0x1EEE9AC00](v92);
  v90 = v2;
  v93 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for RemoteBrowsingService();
  v88 = v89[-1].Description;
  MEMORY[0x1EEE9AC00](v89);
  v86 = v3;
  v87 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v80 - v5;
  v6 = type metadata accessor for AccountService();
  v7 = v6[-1].Description;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v10 = *(v9 - 8);
  v107 = v9;
  v108 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v80 - v13;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v15 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v111 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v16 = type metadata accessor for AppEnvironment(0);
  v17 = v16[6];
  v94 = v17;
  v96 = v16[7];
  v81 = v16[25];
  swift_getKeyPath();
  v18 = v7[2];
  v98 = (v7 + 2);
  v99 = v18;
  v18(&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v17, v6);
  v19 = *(v7 + 80);
  v97 = v19 | 7;
  v20 = swift_allocObject();
  v95 = v7[4];
  v100 = (v7 + 4);
  v95(v20 + ((v19 + 16) & ~v19), &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  v21 = v106;
  sub_1E65E4E08();
  v22 = v107;
  v23 = v101;
  v101[3] = v107;
  v23[4] = &off_1F5FAA7F8;
  v105 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v25 = v108 + 16;
  v26 = *(v108 + 16);
  v26(boxed_opaque_existential_1, v21, v22);
  v113 = v26;
  v103 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1E65F2010;
  v112 = sub_1E65E60A8();
  v27 = *(v112 - 8);
  v114 = *(v27 + 56);
  v110 = v27 + 56;
  v28 = v116;
  v114(v116, 1, 1, v112);
  v29 = v111;
  v30 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v30;
  v82 = v6;
  v99(v30, v111 + v94, v6);
  v31 = v109;
  (v26)();
  v32 = (v19 + 32) & ~v19;
  v33 = v32;
  v85 = v32;
  v34 = v108;
  v35 = *(v108 + 80);
  v36 = (v105 + v32 + v35) & ~v35;
  v84 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v95(v37 + v33, v30, v6);
  v38 = *(v34 + 32);
  v104 = v34 + 32;
  v105 = v38;
  v39 = v107;
  v38(v37 + v36, v31, v107);
  v40 = sub_1E6059EAC(0, 0, v28, &unk_1E65F2058, v37);
  v41 = v102;
  *(v102 + 32) = v40;
  v114(v28, 1, 1, v112);
  v42 = v88;
  v43 = v29 + v81;
  v44 = v87;
  v45 = v89;
  (*(v88 + 16))(v87, v43, v89);
  v46 = v31;
  v47 = v106;
  v113(v46, v106, v39);
  v48 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v49 = (v86 + v35 + v48) & ~v35;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  (*(v42 + 32))(v50 + v48, v44, v45);
  v51 = v109;
  v105(v50 + v49, v109, v39);
  v52 = v116;
  *(v41 + 40) = sub_1E6059EAC(0, 0, v116, &unk_1E65F2068, v50);
  v114(v52, 1, 1, v112);
  v53 = Description;
  v89 = Description[2];
  v54 = v93;
  v55 = v92;
  (v89)(v93, v111 + v96, v92);
  v113(v51, v47, v39);
  v56 = *(v53 + 80);
  v57 = (v56 + 32) & ~v56;
  v80 = v35;
  v88 = v57;
  v58 = (v90 + v35 + v57) & ~v35;
  v90 = v35 | v56;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  Description = v53[4];
  v60 = v59 + v57;
  v61 = v55;
  (Description)(v60, v54, v55);
  v62 = v109;
  v105(v59 + v58, v109, v39);
  v63 = v116;
  v64 = sub_1E6059EAC(0, 0, v116, &unk_1E65F2078, v59);
  *(v102 + 48) = v64;
  v114(v63, 1, 1, v112);
  v65 = v61;
  (v89)(v54, v111 + v96, v61);
  v66 = v106;
  v67 = v107;
  v113(v62, v106, v107);
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  (Description)(v68 + v88, v54, v65);
  v69 = v67;
  v70 = v105;
  v105(v68 + v58, v62, v67);
  v71 = v116;
  v72 = sub_1E6059EAC(0, 0, v116, &unk_1E65F2088, v68);
  v73 = v102;
  *(v102 + 56) = v72;
  v114(v71, 1, 1, v112);
  v74 = v83;
  v75 = v82;
  v99(v83, v111 + v94, v82);
  v76 = v69;
  v113(v62, v66, v69);
  v77 = v84;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  v95(v78 + v85, v74, v75);
  v70(v78 + v77, v62, v76);
  *(v73 + 64) = sub_1E6059EAC(0, 0, v116, &unk_1E65F2098, v78);
  result = (*(v108 + 8))(v66, v76);
  v101[5] = v73;
  return result;
}

uint64_t sub_1E6128D28(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65E38E8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6128DE8, 0, 0);
}

uint64_t sub_1E6128DE8()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[8] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching primary account...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = AccountService.fetchPrimaryAccount.getter();
  v0[9] = v6;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1E6128FA0;

  return v9();
}

uint64_t sub_1E6128FA0(void *a1)
{
  *(*v2 + 88) = v1;

  if (v1)
  {
    v4 = sub_1E6129140;
  }

  else
  {

    v4 = sub_1E61290D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61290D0()
{
  **(v0 + 24) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6129140()
{
  v19 = v0;
  v1 = *(v0 + 88);

  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to fetch primary account: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = *(v0 + 40);
  (*(v13 + 104))(v12, *MEMORY[0x1E69CADA0], v14);
  sub_1E612C000();
  v15 = sub_1E65D97C8();
  (*(v13 + 8))(v12, v14);
  if (v15)
  {

    **(v0 + 24) = 0;
  }

  else
  {
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E6129368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612949C, 0, 0);
}

uint64_t sub_1E612949C()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6129598;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6129598()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61296B0, 0, 0);
}

uint64_t sub_1E61296B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612978C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E612978C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6129888, 0, 0);
}

uint64_t sub_1E6129888()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6129988, v4, v3);
  }
}

uint64_t sub_1E6129988()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E612978C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6129A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6129BC0, 0, 0);
}

uint64_t sub_1E6129BC0()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6129CBC;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6129CBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6129DD4, 0, 0);
}

uint64_t sub_1E6129DD4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6129EB0;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6129EB0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6129FAC, 0, 0);
}

uint64_t sub_1E6129FAC()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612A0FC, v6, v5);
  }
}

uint64_t sub_1E612A0FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E612A180, 0, 0);
}

uint64_t sub_1E612A180()
{
  sub_1E5FC789C(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6129EB0;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E612A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612A364, 0, 0);
}

uint64_t sub_1E612A364()
{
  v1 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E612A460;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E612A460()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612A578, 0, 0);
}

uint64_t sub_1E612A578()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612A654;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E612A654()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612A750, 0, 0);
}

uint64_t sub_1E612A750()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612A850, v4, v3);
  }
}

uint64_t sub_1E612A850()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E612A654;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E612A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612AA50, 0, 0);
}

uint64_t sub_1E612AA50()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E612AB4C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E612AB4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612AC64, 0, 0);
}

uint64_t sub_1E612AC64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612AD40;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E612AD40()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612AE3C, 0, 0);
}

uint64_t sub_1E612AE3C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612AF3C, v4, v3);
  }
}

uint64_t sub_1E612AF3C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E612AD40;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E612B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612B13C, 0, 0);
}

uint64_t sub_1E612B13C()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E612B238;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E612B238()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612B350, 0, 0);
}

uint64_t sub_1E612B350()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612B42C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E612B42C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612B528, 0, 0);
}

uint64_t sub_1E612B528()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612B628, v4, v3);
  }
}

uint64_t sub_1E612B628()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E612B42C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E612B6F4(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6128D28(a1, v1 + v5);
}

uint64_t sub_1E612B7D0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6129368(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612B92C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6129A54(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612BA88(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612A230(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612BBE4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612A91C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_5(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E612BEA4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612B008(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1E612C000()
{
  result = qword_1ED0758F0;
  if (!qword_1ED0758F0)
  {
    sub_1E65E38E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0758F0);
  }

  return result;
}

uint64_t sub_1E612C058@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_1E65D7968();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33 - v13;
  v37 = v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v44 = a2 + 32;
    v39 = (v12 + 48);
    v40 = (v12 + 56);
    v38 = (v12 + 32);
    v45 = MEMORY[0x1E69E7CC0];
    v41 = v8;
    v42 = v9;
    v35 = v14;
    while (1)
    {
      v16 = *(v44 + 8 * v15);
      v17 = *(v16 + 16);

      if (v17)
      {
        break;
      }

      v21 = 1;
      v22 = v41;
LABEL_13:
      (*v40)(v22, v21, 1, v9);

      if ((*v39)(v22, 1, v9) == 1)
      {
        sub_1E5DFE50C(v22, &qword_1ED0758F8, &qword_1E65F20A8);
      }

      else
      {
        v23 = *v38;
        v24 = v36;
        (*v38)(v36, v22, v9);
        v23(v43, v24, v9);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = v45;
        }

        else
        {
          v25 = sub_1E64F6A90(0, v45[2] + 1, 1, v45);
        }

        v27 = v25[2];
        v26 = v25[3];
        v14 = v35;
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1E64F6A90((v26 > 1), v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v45 = v25;
        v9 = v42;
        v23(v25 + v28 + *(v37 + 72) * v27, v43, v42);
      }

      if (++v15 == v14)
      {
        goto LABEL_22;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780) - 8);
      v20 = a1(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18);
      if (v3)
      {
        break;
      }

      if (v20)
      {
        v22 = v41;
        MEMORY[0x1E693F330](v18, v15);
        v21 = 0;
        v9 = v42;
        goto LABEL_13;
      }

      if (v17 == ++v18)
      {
        v21 = 1;
        v22 = v41;
        v9 = v42;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_22:
    if (v45[2])
    {
      v30 = v37;
      v31 = v34;
      (*(v37 + 16))(v34, v45 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v9);
      v32 = 0;
    }

    else
    {
      v32 = 1;
      v31 = v34;
      v30 = v37;
    }

    return (*(v30 + 56))(v31, v32, 1, v9);
  }
}

uint64_t sub_1E612C4B4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1E65D7968();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v32 - v12;
  v42 = *(a2 + 16);
  if (v42)
  {
    v13 = 0;
    v43 = a2 + 32;
    v36 = (v9 + 48);
    v37 = (v9 + 56);
    v35 = (v9 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    v38 = v8;
    v39 = v7;
    v40 = v9;
    while (1)
    {
      v15 = v14;
      v16 = *(v43 + 8 * v13);
      v17 = *(v16 + 16);

      if (v17)
      {
        break;
      }

      v24 = 1;
LABEL_14:
      (*v37)(v7, v24, 1, v8);

      v14 = v15;
      if ((*v36)(v7, 1, v8) == 1)
      {
        sub_1E5DFE50C(v7, &qword_1ED0758F8, &qword_1E65F20A8);
      }

      else
      {
        v25 = v34;
        v26 = *v35;
        (*v35)(v34, v7, v8);
        v26(v41, v25, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1E64F6A90(0, v14[2] + 1, 1, v14);
        }

        v28 = v14[2];
        v27 = v14[3];
        v9 = v40;
        if (v28 >= v27 >> 1)
        {
          v14 = sub_1E64F6A90((v27 > 1), v28 + 1, 1, v14);
        }

        v14[2] = v28 + 1;
        v8 = v38;
        v26(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v41, v38);
        v7 = v39;
      }

      if (++v13 == v42)
      {
        goto LABEL_22;
      }
    }

    v18 = 0;
    v19 = *(sub_1E65E0B48() - 8);
    v20 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    v22 = v44;
    while (1)
    {
      v23 = a1(v20);
      if (v22)
      {
        break;
      }

      if (v23)
      {
        v44 = 0;
        v7 = v39;
        MEMORY[0x1E693F330](v18, v13);
        v24 = 0;
        v9 = v40;
        goto LABEL_13;
      }

      ++v18;
      v20 += v21;
      if (v17 == v18)
      {
        v44 = 0;
        v24 = 1;
        v7 = v39;
        v9 = v40;
LABEL_13:
        v8 = v38;
        goto LABEL_14;
      }
    }

    v44 = v22;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_22:
    if (v14[2])
    {
      v30 = v33;
      (*(v9 + 16))(v33, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
      v31 = 0;
    }

    else
    {
      v31 = 1;
      v30 = v33;
    }

    return (*(v9 + 56))(v30, v31, 1, v8);
  }
}

uint64_t sub_1E612C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v7[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v7[8] = swift_task_alloc();
  v8 = sub_1E65D72D8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = sub_1E65D8F28();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7[21] = swift_task_alloc();
  v10 = sub_1E65D8C68();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v7[25] = swift_task_alloc();
  v7[26] = type metadata accessor for PageMetricsClick(0);
  v7[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v7[28] = swift_task_alloc();
  v11 = type metadata accessor for ItemMetrics(0);
  v7[29] = v11;
  v7[30] = *(v11 - 8);
  v7[31] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v7[32] = v12;
  v7[33] = *(v12 - 8);
  v7[34] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v7[35] = v13;
  v7[36] = *(v13 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  v7[39] = swift_task_alloc();
  v14 = sub_1E65D7968();
  v7[40] = v14;
  v7[41] = *(v14 - 8);
  v7[42] = swift_task_alloc();
  type metadata accessor for ItemContext(0);
  v7[43] = swift_task_alloc();
  v7[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v7[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612CE68, 0, 0);
}

unint64_t sub_1E612CE68()
{
  sub_1E5FEDD5C(v0[3], v0[45]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
    {
      (*(v0[41] + 8))(v0[45], v0[40]);
    }

    else
    {
      sub_1E5DFE50C(v0[45], &qword_1ED072828, &qword_1E65EBE20);
    }

    goto LABEL_15;
  }

  if ((EnumCaseMultiPayload - 8) < 5)
  {
LABEL_15:

    v18 = v0[1];

    return v18();
  }

  if (EnumCaseMultiPayload != 6)
  {
    v20 = v0[45];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    (*(*(v21 - 8) + 8))(v20, v21);
    goto LABEL_15;
  }

  sub_1E612E55C(v0[45], v0[43], type metadata accessor for ItemContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v2 = sub_1E65DC1A8();
  if (v3 > 1u)
  {
    v22 = v0[43];
LABEL_30:
    sub_1E612E5C4(v22, type metadata accessor for ItemContext);
    goto LABEL_15;
  }

  v4 = v2;
  v111 = v3;
  swift_getKeyPath();
  v5 = *(v4 + 16);
  v114 = v0;
  if (v5)
  {
    v6 = v0[36];
    v117 = MEMORY[0x1E69E7CC0];
    sub_1E601C82C(0, v5, 0);
    v7 = v117;
    v10 = *(v6 + 16);
    v8 = v6 + 16;
    v9 = v10;
    v110 = v4;
    v11 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v13 = v114[38];
      v14 = v114[35];
      v9(v13, v11, v14);
      swift_getAtKeyPath();
      (*(v8 - 8))(v13, v14);
      v15 = v114[2];
      v17 = *(v117 + 16);
      v16 = *(v117 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1E601C82C((v16 > 1), v17 + 1, 1);
      }

      *(v117 + 16) = v17 + 1;
      *(v117 + 8 * v17 + 32) = v15;
      v11 += v12;
      --v5;
    }

    while (v5);

    v0 = v114;
    v4 = v110;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v23 = v0[43];
  v25 = v0[40];
  v24 = v0[41];
  v26 = v0[39];
  *(swift_task_alloc() + 16) = v23;
  sub_1E612C058(sub_1E612E53C, v7, v26);

  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    v27 = v0[43];
    v28 = v0[39];
    sub_1E5FED3F8(v4, v111);
    v29 = &qword_1ED0758F8;
    v30 = &qword_1E65F20A8;
    v31 = v28;
LABEL_29:
    sub_1E5DFE50C(v31, v29, v30);
    v22 = v27;
    goto LABEL_30;
  }

  (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
  result = sub_1E65D7958();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (result >= *(v4 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  (*(v0[36] + 16))(v0[37], v4 + ((*(v0[36] + 80) + 32) & ~*(v0[36] + 80)) + *(v0[36] + 72) * result, v0[35]);
  sub_1E5FED3F8(v4, v111);
  v32 = sub_1E65E0518();
  result = sub_1E65D7938();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (result >= *(v32 + 16))
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v33 = v0[29];
  v34 = v0[30];
  v35 = v0[28];
  (*(v0[33] + 16))(v0[34], v32 + ((*(v0[33] + 80) + 32) & ~*(v0[33] + 80)) + *(v0[33] + 72) * result, v0[32]);

  sub_1E65E04B8();
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    v36 = v0[42];
    v27 = v0[43];
    v37 = v0[40];
    v38 = v0[41];
    v40 = v0[36];
    v39 = v0[37];
    v41 = v0[35];
    v42 = v0[28];
    (*(v0[33] + 8))(v0[34], v0[32]);
    (*(v40 + 8))(v39, v41);
    (*(v38 + 8))(v36, v37);
    v29 = &qword_1ED072668;
    v30 = &qword_1E65EB978;
    v31 = v42;
    goto LABEL_29;
  }

  v43 = v0[31];
  v44 = v0[29];
  v46 = v0[24];
  v45 = v0[25];
  v47 = v0[22];
  v48 = v0[23];
  v49 = v0[21];
  sub_1E612E55C(v0[28], v43, type metadata accessor for ItemMetrics);
  v50 = sub_1E65D9D78();
  (*(*(v50 - 8) + 56))(v45, 1, 1, v50);
  (*(v48 + 16))(v46, &v43[*(v44 + 20)], v47);
  v51 = sub_1E65D74E8();
  (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1E65EB9E0;
  v107 = v52;
  v112 = *v43;
  v113 = *(v43 + 1);

  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65D7938();
  if (!*&v43[*(v44 + 24) + 8])
  {
    sub_1E65E04A8();
  }

  v53 = v0[31];
  v54 = v0[29];
  v55 = v0[15];
  v105 = *(v54 + 32);
  v109 = (v0[17] + 16);
  v108 = *v109;
  (*v109)(v0[20], v53 + v105, v0[16]);

  sub_1E65D9F78();
  v106 = v53;
  v104 = *(v54 + 28);
  sub_1E65D98F8();
  sub_1E6427498(MEMORY[0x1E69E7CC0]);

  sub_1E65D8678();
  sub_1E65E0548();
  v56 = type metadata accessor for SectionMetrics(0);
  v57 = *(*(v56 - 8) + 48);
  if (v57(v55, 1, v56) == 1)
  {
    sub_1E5DFE50C(v0[15], &qword_1ED072630, &qword_1E65EB948);
    sub_1E65E0508();
  }

  else
  {
    v58 = v0[15];

    sub_1E612E5C4(v58, type metadata accessor for SectionMetrics);
  }

  v59 = v0[14];
  sub_1E65D7958();
  sub_1E65E0548();
  if (v57(v59, 1, v56) == 1)
  {
    v60 = v0[7];
    sub_1E5DFE50C(v0[14], &qword_1ED072630, &qword_1E65EB948);
    sub_1E65E0538();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v60, 1, v61);
    v64 = v0[10];
    v103 = v0[11];
    v65 = v0[8];
    v66 = v0[9];
    v67 = v0[7];
    if (v63 == 1)
    {
      sub_1E5DFE50C(v0[7], &qword_1ED072648, &qword_1E65EB960);
      (*(v64 + 56))(v65, 1, 1, v66);
      sub_1E65D72C8();
      if ((*(v64 + 48))(v65, 1, v66) != 1)
      {
        sub_1E5DFE50C(v114[8], &qword_1ED072D90, &qword_1E66040F0);
      }
    }

    else
    {
      sub_1E65E0448();
      (*(v62 + 8))(v67, v61);
      (*(v64 + 56))(v65, 0, 1, v66);
      (*(v64 + 32))(v103, v65, v66);
    }

    v0 = v114;
    sub_1E65E5D58();
  }

  else
  {
    v68 = v0[14];

    sub_1E612E5C4(v68, type metadata accessor for SectionMetrics);
  }

  v69 = v0[13];
  sub_1E65E0548();
  v70 = v57(v69, 1, v56);
  v71 = v0[19];
  if (v70 == 1)
  {
    v72 = v0[16];
    v73 = v0[17];
    sub_1E5DFE50C(v0[13], &qword_1ED072630, &qword_1E65EB948);
    (*(v73 + 104))(v71, *MEMORY[0x1E69CBCB0], v72);
  }

  else
  {
    v75 = v0[17];
    v74 = v0[18];
    v76 = v0[16];
    v77 = v0[13];
    v108(v74, v77 + *(v56 + 24), v76);
    sub_1E612E5C4(v77, type metadata accessor for SectionMetrics);
    (*(v75 + 32))(v71, v74, v76);
  }

  v78 = v0[12];
  sub_1E65E0548();
  v79 = v57(v78, 1, v56);
  v80 = v0[12];
  v81 = v0;
  if (v79 == 1)
  {
    sub_1E5DFE50C(v0[12], &qword_1ED072630, &qword_1E65EB948);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    sub_1E612E5C4(v80, type metadata accessor for SectionMetrics);
  }

  v83 = v0[26];
  v82 = v81[27];
  v102 = v81[24];
  v84 = v81[23];
  v100 = v81[25];
  v101 = v81[22];
  v115 = v81[21];
  v85 = v81[16];
  v87 = v81[5];
  v86 = v81[6];
  sub_1E65D8678();
  v88 = v83[8];
  v89 = sub_1E65DA208();
  (*(*(v89 - 8) + 56))(v82 + v88, 1, 1, v89);
  v108(v82 + v83[14], v106 + v105, v85);
  v90 = v83[15];
  v91 = sub_1E65D9908();
  v92 = *(v91 - 8);
  (*(v92 + 16))(v82 + v90, v106 + v104, v91);
  (*(v92 + 56))(v82 + v90, 0, 1, v91);
  sub_1E5FAB460(v100, v82, &qword_1ED073578, &qword_1E65F0E60);
  (*(v84 + 32))(v82 + v83[5], v102, v101);
  sub_1E5FAB460(v115, v82 + v83[6], &qword_1ED072340, &qword_1E65EA410);
  *(v82 + v83[7]) = v107;
  v93 = (v82 + v83[9]);
  *v93 = 0;
  v93[1] = 0;
  v94 = (v82 + v83[10]);
  *v94 = 0;
  v94[1] = 0;
  *(v82 + v83[11]) = v87;
  v95 = (v82 + v83[12]);
  *v95 = 0;
  v95[1] = 0;
  v96 = (v82 + v83[13]);
  *v96 = v112;
  v96[1] = v113;
  v97 = *(v86 + 48);

  v116 = (v97 + *v97);
  v98 = swift_task_alloc();
  v81[46] = v98;
  *v98 = v81;
  v98[1] = sub_1E612DE50;
  v99 = v81[27];

  return v116(v99);
}

uint64_t sub_1E612DE50()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1E612E1A0;
  }

  else
  {
    v2 = sub_1E612DF64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E612DF64()
{
  v1 = v0[41];
  v12 = v0[42];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  sub_1E612E5C4(v0[27], type metadata accessor for PageMetricsClick);
  sub_1E612E5C4(v9, type metadata accessor for ItemMetrics);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  sub_1E612E5C4(v0[43], type metadata accessor for ItemContext);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E612E1A0()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[36];
  v12 = v0[37];
  v13 = v0[40];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  sub_1E612E5C4(v0[27], type metadata accessor for PageMetricsClick);
  sub_1E612E5C4(v9, type metadata accessor for ItemMetrics);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v1, v13);
  sub_1E612E5C4(v2, type metadata accessor for ItemContext);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E612E3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E612E428(void *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  return sub_1E65E0528();
}

uint64_t sub_1E612E474(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  MEMORY[0x1E6947EA0](v6);
  v7 = _s10Blackbeard11ItemContextO2eeoiySbAC_ACtFZ_0(v5, a2);
  sub_1E612E5C4(v5, type metadata accessor for ItemContext);
  return v7 & 1;
}

uint64_t sub_1E612E55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E612E5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E612E624@<X0>(uint64_t *a1@<X8>)
{
  v108 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v105 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v102 = v3;
  v103 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AppStateService();
  v100 = v101[-1].Description;
  MEMORY[0x1EEE9AC00](v101);
  v99 = v4;
  v110 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for RemoteBrowsingService();
  v115 = v121[-1].Description;
  MEMORY[0x1EEE9AC00](v121);
  v96 = v5;
  v97 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v124 = &v86 - v7;
  v8 = type metadata accessor for ContentAvailabilityService();
  v9 = v8[-1].Description;
  MEMORY[0x1EEE9AC00](v8);
  v106 = v10;
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v111 = *(v109 - 8);
  v12 = MEMORY[0x1EEE9AC00](v109);
  v116 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v86 - v14;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v17 = type metadata accessor for AppEnvironment(0);
  v18 = v17[7];
  v98 = v17[6];
  v107 = v18;
  v19 = v17[14];
  v91 = v19;
  v20 = *(v16 + 8);
  v86 = v17[25];
  swift_getKeyPath();
  v21 = v9[2];
  v89 = (v9 + 2);
  v90 = v21;
  v22 = v16 + v19;
  v23 = v16;
  v117 = v16;
  v21(v11, v22, v8);
  v88 = v8;
  v92 = *(v9 + 80);
  v24 = (v92 + 17) & ~v92;
  v93 = v92 | 7;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = v9[4];
  v94 = (v9 + 4);
  v95 = v26;
  v26(v25 + v24, v11, v8);

  v27 = v123;
  sub_1E65E4E08();
  v28 = v109;
  v87 = v11;
  v29 = v108;
  v108[3] = v109;
  v29[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v31 = v111;
  v32 = v111 + 16;
  v33 = *(v111 + 16);
  v33(boxed_opaque_existential_1, v27, v28);
  v114 = v33;
  v118 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1E65F2010;
  v119 = sub_1E65E60A8();
  v34 = *(v119 - 8);
  v120 = *(v34 + 56);
  v113 = v34 + 56;
  v120(v124, 1, 1, v119);
  v35 = v115;
  v36 = v97;
  v37 = v121;
  v115[2](v97, v23 + v86, v121);
  v38 = v28;
  v33(v116, v27, v28);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = *(v31 + 80);
  v41 = (v96 + v40 + v39) & ~v40;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (v35)[4]((v42 + v39), v36, v37);
  v43 = *(v31 + 32);
  v115 = (v31 + 32);
  v121 = v43;
  v44 = v116;
  v45 = v38;
  (v43)(v42 + v41, v116, v38);
  v46 = v124;
  v47 = sub_1E6059EAC(0, 0, v124, &unk_1E65F2168, v42);
  v48 = v112;
  *(v112 + 32) = v47;
  v120(v46, 1, 1, v119);
  v49 = v87;
  v50 = v88;
  v90(v87, v117 + v91, v88);
  v51 = v114;
  v114(v44, v123, v38);
  v52 = (v92 + 32) & ~v92;
  v53 = (v106 + v52 + v40) & ~v40;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v95(v54 + v52, v49, v50);
  v55 = v116;
  (v121)(v54 + v53, v116, v38);
  v56 = v124;
  *(v48 + 40) = sub_1E6059EAC(0, 0, v124, &unk_1E65F2178, v54);
  v120(v56, 1, 1, v119);
  v57 = v100;
  v106 = v100[2];
  v58 = v101;
  v106(v110, v117 + v107, v101);
  v51(v55, v123, v45);
  v59 = *(v57 + 80);
  v86 = v40;
  v60 = (v59 + 32) & ~v59;
  v97 = v60;
  v61 = (v99 + v40 + v60) & ~v40;
  v99 = v40 | v59;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v100 = v57[4];
  v63 = v62 + v60;
  v64 = v110;
  v65 = v58;
  (v100)(v63, v110, v58);
  v66 = v55;
  (v121)(v62 + v61, v55, v45);
  v67 = v124;
  v68 = sub_1E6059EAC(0, 0, v124, &unk_1E65F2188, v62);
  v69 = v112;
  *(v112 + 48) = v68;
  v120(v67, 1, 1, v119);
  v70 = v64;
  v106(v64, v117 + v107, v65);
  v71 = v123;
  v72 = v109;
  v114(v66, v123, v109);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  (v100)(&v97[v73], v70, v65);
  v74 = v66;
  (v121)(v73 + v61, v66, v72);
  v75 = v124;
  *(v69 + 56) = sub_1E6059EAC(0, 0, v124, &unk_1E65F2198, v73);
  v120(v75, 1, 1, v119);
  v77 = Description;
  v76 = v105;
  v78 = v103;
  Description[2](v103, v117 + v98, v105);
  v114(v74, v71, v72);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = (v102 + v86 + v79) & ~v86;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  (v77)[4]((v81 + v79), v78, v76);
  (v121)(v81 + v80, v74, v72);
  v82 = sub_1E6059EAC(0, 0, v75, &unk_1E65F21A8, v81);
  v83 = v111;
  v84 = v112;
  *(v112 + 64) = v82;
  result = (*(v83 + 8))(v123, v72);
  v108[5] = v84;
  return result;
}

uint64_t sub_1E612F220(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v4 = sub_1E65DE3E8();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612F2E4, 0, 0);
}

uint64_t sub_1E612F2E4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD30], v3);
  v5 = sub_1E637C87C(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = ContentAvailabilityService.requireSupportedDevice.getter();
    *(v0 + 64) = v7;
    v14 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_1E612F4E4;

    return v14();
  }

  else
  {
    v10 = sub_1E65DAE38();
    if (v10 == sub_1E65DAE38())
    {
      v11 = 1;
    }

    else
    {
      v12 = sub_1E65DAE38();
      v11 = v12 == sub_1E65DAE38();
    }

    **(v0 + 24) = v11;

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E612F4E4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E612F670;
  }

  else
  {
    v2 = sub_1E612F5F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E612F5F8()
{

  **(v0 + 24) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E612F670()
{
  v17 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to check for required supported device: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E612F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612F9C8, 0, 0);
}

uint64_t sub_1E612F9C8()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E612FAC4;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E612FAC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612FBDC, 0, 0);
}

uint64_t sub_1E612FBDC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E612FCB8;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E612FCB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E612FDB4, 0, 0);
}

uint64_t sub_1E612FDB4()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612FF04, v6, v5);
  }
}

uint64_t sub_1E612FF04()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E612FF88, 0, 0);
}

uint64_t sub_1E612FF88()
{
  sub_1E5FC789C(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E612FCB8;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6130038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613016C, 0, 0);
}

uint64_t sub_1E613016C()
{
  v1 = ContentAvailabilityService.makeSupportedDeviceChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6130268;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6130268()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6130380, 0, 0);
}

uint64_t sub_1E6130380()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E613045C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E613045C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6130558, 0, 0);
}

uint64_t sub_1E6130558()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6130658, v4, v3);
  }
}

uint64_t sub_1E6130658()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E613045C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6130724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6130858, 0, 0);
}

uint64_t sub_1E6130858()
{
  v1 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6130954;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6130954()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6130A6C, 0, 0);
}

uint64_t sub_1E6130A6C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6130B48;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6130B48()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6130C44, 0, 0);
}

uint64_t sub_1E6130C44()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6130D44, v4, v3);
  }
}

uint64_t sub_1E6130D44()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6130B48;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6130E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6130F44, 0, 0);
}

uint64_t sub_1E6130F44()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6131040;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6131040()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6131158, 0, 0);
}

uint64_t sub_1E6131158()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6131234;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6131234()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6131330, 0, 0);
}

uint64_t sub_1E6131330()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6131430, v4, v3);
  }
}

uint64_t sub_1E6131430()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6131234;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E61314FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6131630, 0, 0);
}

uint64_t sub_1E6131630()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E613172C;
  v4 = v0[6];

  return v6(v4);
}