uint64_t sub_1BF92F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5248();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1BF9B57A8();
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF92F8D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9908, &qword_1BF9C0730);
  result = sub_1BF9B5248();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1BF9B57A8();
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF92FB94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  result = sub_1BF9B5248();
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
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_39;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        sub_1BF9B57A8();
        switch(v15 >> 8)
        {
          case 2u:
            v16 = 0;
            goto LABEL_18;
          case 3u:
            v16 = 1;
            goto LABEL_18;
          case 4u:
            v16 = 2;
            goto LABEL_18;
          case 5u:
            v16 = 4;
            goto LABEL_18;
          case 6u:
            v16 = 5;
LABEL_18:
            MEMORY[0x1BFB5EAC0](v16);
            goto LABEL_19;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v15 == 2)
            {
              v25 = 0;
              goto LABEL_34;
            }

            if (v15 == 3)
            {
              v25 = 1;
LABEL_34:
              MEMORY[0x1BFB5EAC0](v25);
              goto LABEL_36;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_36:
            sub_1BF9B4B48();

LABEL_19:
            result = sub_1BF9B57E8();
            v17 = -1 << *(v5 + 32);
            v18 = result & ~v17;
            v19 = v18 >> 6;
            if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
            {
              v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v21 = 0;
              v22 = (63 - v17) >> 6;
              do
              {
                if (++v19 == v22 && (v21 & 1) != 0)
                {
                  goto LABEL_41;
                }

                v23 = v19 == v22;
                if (v19 == v22)
                {
                  v19 = 0;
                }

                v21 |= v23;
                v24 = *(v11 + 8 * v19);
              }

              while (v24 == -1);
              v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            }

            *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
            *(*(v5 + 48) + 2 * v20) = v15;
            ++*(v5 + 16);
            if (v9)
            {
              goto LABEL_6;
            }

            break;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {

LABEL_39:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF92FED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  result = sub_1BF9B5248();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v36 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        sub_1BF9B57A8();
        v35 = v17;
        sub_1BF8C0D00(v17, v18, v19, v20, v21);
        DeliveryVehicle.rawValue.getter(v22, v23);
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
        v24 = -1 << *(v5 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v5 + 48) + 40 * v27;
        v3 = v34;
        *v32 = v35;
        *(v32 + 8) = v18;
        *(v32 + 16) = v19;
        *(v32 + 24) = v20;
        *(v32 + 32) = v21;
        ++*(v5 + 16);
        v10 = v36;
        if (!v36)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v33;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v36 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF93016C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1BF9B4558();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  v7 = sub_1BF9B5248();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        result = sub_1BF9B4A48();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1BF930488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  result = sub_1BF9B5248();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1BF92D494(v14, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_1BF932458(*(v3 + 48) + 120 * (v11 | (v6 << 6)), v14);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
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

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF9305C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  result = sub_1BF9B5248();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1BF9B57A8();

        sub_1BF9B4B48();
        result = sub_1BF9B57E8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF9307FC(unint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1BF95D270(0, v6, v8);
    v9 = sub_1BF930A54(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1BF9309C4(v11, v6, a2, a1);

    MEMORY[0x1BFB5F320](v11, -1, -1);
  }

  return v9;
}

void *sub_1BF9309C4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1BF930A54(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BF930A54(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v51 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_44:
    v27 = 0;
    v28 = v5 + 56;
    v29 = 1 << *(v5 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v53 = v30 & *(v5 + 56);
    v55 = 0;
    v31 = (v29 + 63) >> 6;
    v57 = v4 + 56;
LABEL_48:
    while (v53)
    {
      v32 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
LABEL_55:
      v50 = v32 | (v27 << 6);
      v35 = *(*(v5 + 48) + v50);
      sub_1BF9B57A8();
      sub_1BF9B4B48();

      result = sub_1BF9B57E8();
      v36 = -1 << *(v4 + 32);
      v37 = result & ~v36;
      if ((*(v57 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        v39 = v35;
        while (1)
        {
          v40 = 0xE600000000000000;
          v41 = 0x656E6F685069;
          switch(*(*(a4 + 48) + v37))
          {
            case 1:
              v41 = 0x72506E6F69736976;
              v40 = 0xE90000000000006FLL;
              break;
            case 2:
              v40 = 0xE400000000000000;
              v41 = 1684099177;
              break;
            case 3:
              v40 = 0xE700000000000000;
              v41 = 0x79616C50726163;
              break;
            case 4:
              v40 = 0xE500000000000000;
              v41 = 0x6863746177;
              break;
            case 5:
              v40 = 0xE700000000000000;
              v41 = 0x5654656C707061;
              break;
            case 6:
              v40 = 0xE700000000000000;
              v41 = 0x646F70656D6F68;
              break;
            case 7:
              v40 = 0xE300000000000000;
              v41 = 6513005;
              break;
            case 8:
              v40 = 0xE300000000000000;
              v41 = 6582128;
              break;
            default:
              break;
          }

          v42 = 0xE600000000000000;
          v43 = 0x656E6F685069;
          switch(v39)
          {
            case 1:
              v43 = 0x72506E6F69736976;
              v42 = 0xE90000000000006FLL;
              break;
            case 2:
              v42 = 0xE400000000000000;
              v43 = 1684099177;
              break;
            case 3:
              v42 = 0xE700000000000000;
              v43 = 0x79616C50726163;
              break;
            case 4:
              v42 = 0xE500000000000000;
              v43 = 0x6863746177;
              break;
            case 5:
              v42 = 0xE700000000000000;
              v43 = 0x5654656C707061;
              break;
            case 6:
              v42 = 0xE700000000000000;
              v43 = 0x646F70656D6F68;
              break;
            case 7:
              v42 = 0xE300000000000000;
              v43 = 6513005;
              break;
            case 8:
              v42 = 0xE300000000000000;
              v43 = 6582128;
              break;
            default:
              break;
          }

          if (v41 == v43 && v40 == v42)
          {
            break;
          }

          v45 = sub_1BF9B56D8();

          if (v45)
          {
            goto LABEL_83;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v57 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            v5 = a3;
            v4 = a4;
            goto LABEL_48;
          }
        }

LABEL_83:
        *(v51 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v46 = __OFADD__(v55++, 1);
        v5 = a3;
        v4 = a4;
        if (v46)
        {
          __break(1u);
LABEL_86:
          v6 = v55;
          goto LABEL_87;
        }
      }
    }

    v33 = v27;
    while (1)
    {
      v27 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        goto LABEL_86;
      }

      v34 = *(v28 + 8 * v27);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v53 = (v34 - 1) & v34;
        goto LABEL_55;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v49 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v52 = v9 & *(a4 + 56);
    v47 = (v8 + 63) >> 6;
    v56 = a3 + 56;
LABEL_6:
    while (v52)
    {
      v10 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v11 = v10 | (v7 << 6);
      v12 = a4;
LABEL_13:
      v15 = *(*(v12 + 48) + v11);
      sub_1BF9B57A8();
      sub_1BF9B4B48();

      result = sub_1BF9B57E8();
      v16 = -1 << *(v5 + 32);
      v4 = result & ~v16;
      v17 = v4 >> 6;
      v18 = 1 << v4;
      if (((1 << v4) & *(v56 + 8 * (v4 >> 6))) != 0)
      {
        v54 = v6;
        v19 = ~v16;
        v20 = v15;
        while (1)
        {
          v21 = 0xE600000000000000;
          v22 = 0x656E6F685069;
          switch(*(*(v5 + 48) + v4))
          {
            case 1:
              v22 = 0x72506E6F69736976;
              v21 = 0xE90000000000006FLL;
              break;
            case 2:
              v21 = 0xE400000000000000;
              v22 = 1684099177;
              break;
            case 3:
              v21 = 0xE700000000000000;
              v22 = 0x79616C50726163;
              break;
            case 4:
              v21 = 0xE500000000000000;
              v22 = 0x6863746177;
              break;
            case 5:
              v21 = 0xE700000000000000;
              v22 = 0x5654656C707061;
              break;
            case 6:
              v21 = 0xE700000000000000;
              v22 = 0x646F70656D6F68;
              break;
            case 7:
              v21 = 0xE300000000000000;
              v22 = 6513005;
              break;
            case 8:
              v21 = 0xE300000000000000;
              v22 = 6582128;
              break;
            default:
              break;
          }

          v23 = 0xE600000000000000;
          v24 = 0x656E6F685069;
          switch(v20)
          {
            case 1:
              v24 = 0x72506E6F69736976;
              v23 = 0xE90000000000006FLL;
              break;
            case 2:
              v23 = 0xE400000000000000;
              v24 = 1684099177;
              break;
            case 3:
              v23 = 0xE700000000000000;
              v24 = 0x79616C50726163;
              break;
            case 4:
              v23 = 0xE500000000000000;
              v24 = 0x6863746177;
              break;
            case 5:
              v23 = 0xE700000000000000;
              v24 = 0x5654656C707061;
              break;
            case 6:
              v23 = 0xE700000000000000;
              v24 = 0x646F70656D6F68;
              break;
            case 7:
              v23 = 0xE300000000000000;
              v24 = 6513005;
              break;
            case 8:
              v23 = 0xE300000000000000;
              v24 = 6582128;
              break;
            default:
              break;
          }

          if (v22 == v24 && v21 == v23)
          {
            break;
          }

          v26 = sub_1BF9B56D8();

          if (v26)
          {
            goto LABEL_41;
          }

          v4 = (v4 + 1) & v19;
          v17 = v4 >> 6;
          v5 = a3;
          v18 = 1 << v4;
          if ((*(v56 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
          {
            v6 = v54;
            goto LABEL_6;
          }
        }

LABEL_41:
        v51[v17] |= v18;
        v6 = v54 + 1;
        v5 = a3;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    v13 = v7;
    v12 = a4;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v47)
      {
LABEL_87:

        return sub_1BF931360(v51, a2, v6, v5);
      }

      v14 = *(v49 + 8 * v7);
      ++v13;
      if (v14)
      {
        v52 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF931360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5258();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_1BF931640(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1BF931918(v4);
  v4[9] = sub_1BF931730((v4 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1BF9316D0;
}

void sub_1BF9316D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1BF931730(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v7 = *v3;
  v8 = sub_1BF9B2AE4(a2);
  *(a1 + 25) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
  if (sub_1BF9B53A8())
  {
    v12 = sub_1BF9B2AE4(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v10;
  if (v11)
  {
    v14 = *(*(*v4 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1BF931848;
}

unint64_t sub_1BF931848(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(*(v2 + 56) + 8 * *(result + 16)) = v1;
    }

    else
    {
      v3 = *(result + 24);
      v4 = *(result + 16);

      return sub_1BF964038(v4, v3, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F0, &unk_1BF9C0710);
    sub_1BF932578();

    return sub_1BF9B53C8();
  }

  return result;
}

uint64_t (*sub_1BF931918(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BF931940;
}

void sub_1BF931988()
{
  OUTLINED_FUNCTION_65_0();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  v14 = swift_allocObject();
  (*(v9 + 16))(v13, v2, v7);
  sub_1BF931A94(v3, v13, v1, v0, v14, v7, v5);
  (*(v9 + 8))(v2, v7);
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF931A94(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a6);
  *(a5 + 56) = a1;
  sub_1BF8D2004(v20, a5 + 64);
  *(a5 + 104) = a3;
  sub_1BF8D2004(a4, a5 + 112);
  if (qword_1EDBF1D10 != -1)
  {
    swift_once();
  }

  *(a5 + 152) = byte_1EDC03418;
  *(a5 + 160) = unk_1EDC03420;
  v14 = type metadata accessor for OSFeatureFlagProvider();
  v15 = swift_allocObject();
  v15[2] = sub_1BF905224;
  v15[3] = 0;
  v15[4] = sub_1BF905228;
  v15[5] = 0;
  v18 = v14;
  v19 = &protocol witness table for OSFeatureFlagProvider;
  *&v17 = v15;
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1BF8C2C9C(&v17, a5 + 16);
  return a5;
}

uint64_t sub_1BF931BF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = a6;
  return a4;
}

uint64_t sub_1BF931C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98B8, &qword_1BF9C0298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF931C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_1BF911DC8(a4, a5);
  }
}

uint64_t sub_1BF931CD4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF30A8, a2, type metadata accessor for NoOpPrerequisite, &protocol conformance descriptor for NoOpPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931D50(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&qword_1EDBF2F20, a2, type metadata accessor for UnionPrerequisite, &protocol conformance descriptor for UnionPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931DCC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF2C08, a2, type metadata accessor for LocalePrerequisite, &protocol conformance descriptor for LocalePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931E48(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF2B00, a2, type metadata accessor for NetworkPrerequisite, &protocol conformance descriptor for NetworkPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931EC4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF2D78, a2, type metadata accessor for DevicePrerequisite, &protocol conformance descriptor for DevicePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931F40(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF1D00, a2, type metadata accessor for InvocationTypePrerequisite, &protocol conformance descriptor for InvocationTypePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931FBC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF1C20, a2, type metadata accessor for DeliveryVehiclePrerequisite, &protocol conformance descriptor for DeliveryVehiclePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF932038(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF0D88, a2, type metadata accessor for ShouldBeEnabledFromConfigPrerequisite, &protocol conformance descriptor for ShouldBeEnabledFromConfigPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF932264(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1BF9322AC()
{
  result = qword_1EDBF32E8;
  if (!qword_1EDBF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32E8);
  }

  return result;
}

unint64_t sub_1BF9323B0()
{
  result = qword_1EDBF3508;
  if (!qword_1EDBF3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3508);
  }

  return result;
}

unint64_t sub_1BF932404()
{
  result = qword_1EDBF32B8;
  if (!qword_1EDBF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32B8);
  }

  return result;
}

uint64_t sub_1BF932508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF932578()
{
  result = qword_1EBDE98E8;
  if (!qword_1EBDE98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE98E8);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1BF932600()
{
  result = qword_1EDBF3940;
  if (!qword_1EDBF3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3940);
  }

  return result;
}

void OUTLINED_FUNCTION_36_4()
{

  JUMPOUT(0x1BFB5DE90);
}

uint64_t sub_1BF9326D8()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 24))
  {
    sub_1BF8C192C(v1, &v16);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF9363E4(v2, v3, v4);

    *v0 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_11_12();
    sub_1BF935E2C(v9, v10, v11);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v12, v13, v14);
  }

  return result;
}

void sub_1BF932778()
{
  OUTLINED_FUNCTION_28_6();
  if (*(v3 + 24))
  {
    sub_1BF8C2C9C(v3, v14);
    v4 = v15;
    v5 = v16;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x1EEE9AC00](v6);
    v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    sub_1BF93790C(v8, v2, v0, v1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    OUTLINED_FUNCTION_41_2(v3);
    v10 = OUTLINED_FUNCTION_88();
    sub_1BF935FF8(v10, v11, v12);

    OUTLINED_FUNCTION_41_2(v14);
  }

  OUTLINED_FUNCTION_42_4();
}

uint64_t sub_1BF9328C4()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 24))
  {
    sub_1BF8DFCB8(v1, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF9368A4(v2, v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_12();
    sub_1BF9360F4(v10, v11, v12);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1BF932964(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF8C2C9C(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1BF936B10(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v6;
    return sub_1BF9324B4(a2);
  }

  else
  {
    OUTLINED_FUNCTION_41_2(a1);
    sub_1BF9361F0(v7, a2);
    sub_1BF9324B4(a2);
    return OUTLINED_FUNCTION_41_2(v7);
  }
}

uint64_t sub_1BF932A1C()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 40))
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF936D38(v2, v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_12();
    sub_1BF9362F0(v10, v11, v12);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1BF932B18(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1BF932BD8()
{
  if (*(v0 + 120))
  {
    v0 = *(v0 + 120);
  }

  else
  {
    OUTLINED_FUNCTION_1_15();
    sub_1BF936FCC(v1, v2, v3, &protocol conformance descriptor for ContextContainer);
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  return v0;
}

void *static ContextContainer.createContext(targetOwner:suggestionEnablementState:generationContext:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = sub_1BF9B4988();
  sub_1BF932E4C(a1, &v22);
  if (v23)
  {
    sub_1BF8C2C9C(&v22, &v24);
    v9 = v25;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v23 = v9;
    __swift_allocate_boxed_opaque_existential_1Tm(&v22);
    OUTLINED_FUNCTION_11();
    (*(v10 + 16))();
    sub_1BF8C192C(&v22, &v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_6(isUniquelyReferenced_nonNull_native, 0x7465677261745F5FLL, v12, isUniquelyReferenced_nonNull_native, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    sub_1BF8E8118(&v22, &qword_1EBDE9918, &qword_1BF9C0750);
  }

  v25 = &type metadata for SuggestionEnablementState;
  LOBYTE(v24) = v7;
  sub_1BF8C192C(&v24, &v22);
  swift_isUniquelyReferenced_nonNull_native();
  *&v21 = v8;
  sub_1BF9363E4(&v22, 0xD00000000000001BLL, 0x80000001BF9CC260);
  v15 = v21;
  type metadata accessor for ContextContainer();
  v16 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v16[14] = v15;
  v16[15] = a3;
  v16[16] = a4;
  OUTLINED_FUNCTION_1_15();
  sub_1BF936FCC(v17, v18, v19, &protocol conformance descriptor for ContextContainer);
  return v16;
}

uint64_t sub_1BF932E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9918, &qword_1BF9C0750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ContextContainer.__allocating_init(params:generationContext:)()
{
  OUTLINED_FUNCTION_28_6();
  v3 = v2;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[14] = v3;
  v4[15] = v1;
  v4[16] = v0;
  return v4;
}

void *static ContextContainer.createGenerationContext(generationId:sourceOwner:invocationType:)(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v4 = *a3;
  v5 = sub_1BF9B4988();
  v24 = sub_1BF9B4518();
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))();
  sub_1BF8C192C(&v23, &v21);
  swift_isUniquelyReferenced_nonNull_native();
  *&v20 = v5;
  sub_1BF9363E4(&v21, 0x6172656E65675F5FLL, 0xEF64695F6E6F6974);
  v7 = v5;
  sub_1BF932E4C(a2, &v21);
  if (v22)
  {
    sub_1BF8C2C9C(&v21, &v23);
    v8 = v24;
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    v22 = v8;
    __swift_allocate_boxed_opaque_existential_1Tm(&v21);
    OUTLINED_FUNCTION_11();
    (*(v9 + 16))();
    sub_1BF8C192C(&v21, &v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_6(isUniquelyReferenced_nonNull_native, 0x656372756F735F5FLL, v11, isUniquelyReferenced_nonNull_native, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_1BF8E8118(&v21, &qword_1EBDE9918, &qword_1BF9C0750);
  }

  v24 = &type metadata for InvocationType;
  LOWORD(v23) = v4;
  sub_1BF8C192C(&v23, &v21);
  swift_isUniquelyReferenced_nonNull_native();
  *&v20 = v7;
  sub_1BF9363E4(&v21, 0xD000000000000011, 0x80000001BF9CC280);
  v14 = v20;
  type metadata accessor for ContextContainer();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v15[14] = v14;
  OUTLINED_FUNCTION_1_15();
  sub_1BF936FCC(v16, v17, v18, &protocol conformance descriptor for ContextContainer);
  v15[15] = 0;
  v15[16] = 0;
  return v15;
}

void *ContextContainer.init(params:generationContext:)()
{
  OUTLINED_FUNCTION_28_6();
  v4 = v3;
  swift_defaultActor_initialize();
  v1[14] = v4;
  v1[15] = v2;
  v1[16] = v0;
  return v1;
}

uint64_t sub_1BF9331AC(uint64_t a1)
{
  OUTLINED_FUNCTION_39_5(a1);

  v1 = sub_1BF9B4978();

  return v1;
}

uint64_t ContextContainer.deinit()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContextContainer.__deallocating_deinit()
{
  ContextContainer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF933314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6472696874 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BF933460(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x646E6F636573;
      break;
    case 2:
      result = 0x6472696874;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF9334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF933314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF933504(uint64_t a1)
{
  v2 = sub_1BF936500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933540(uint64_t a1)
{
  v2 = sub_1BF936500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF93357C(uint64_t a1)
{
  v2 = sub_1BF936650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9335B8(uint64_t a1)
{
  v2 = sub_1BF936650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9335F4(uint64_t a1)
{
  v2 = sub_1BF9365FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933630(uint64_t a1)
{
  v2 = sub_1BF9365FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF93366C(uint64_t a1)
{
  v2 = sub_1BF9365A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9336A8(uint64_t a1)
{
  v2 = sub_1BF9365A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9336E4(uint64_t a1)
{
  v2 = sub_1BF936554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933720(uint64_t a1)
{
  v2 = sub_1BF936554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Party.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9920, &qword_1BF9C0758);
  OUTLINED_FUNCTION_1();
  v65 = v30;
  v66 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v64 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9928, &qword_1BF9C0760);
  OUTLINED_FUNCTION_1();
  v62 = v34;
  v63 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  v61 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9930, &qword_1BF9C0768);
  OUTLINED_FUNCTION_1();
  v59 = v38;
  v60 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  v58 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9938, &qword_1BF9C0770);
  OUTLINED_FUNCTION_1();
  v56 = v42;
  v57 = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v56 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9940, &qword_1BF9C0778);
  OUTLINED_FUNCTION_1();
  v48 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v56 - v50;
  v52 = *v24;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1BF936500();
  sub_1BF9B5898();
  switch(v52)
  {
    case 1:
      OUTLINED_FUNCTION_33_4();
      sub_1BF9365FC();
      v53 = v58;
      OUTLINED_FUNCTION_3_10(&type metadata for Party.SecondCodingKeys, &a12);
      v55 = v59;
      v54 = v60;
      goto LABEL_6;
    case 2:
      a13 = 2;
      sub_1BF9365A8();
      v53 = v61;
      OUTLINED_FUNCTION_3_10(&type metadata for Party.ThirdCodingKeys, &a13);
      v55 = v62;
      v54 = v63;
      goto LABEL_6;
    case 3:
      a14 = 3;
      sub_1BF936554();
      v53 = v64;
      OUTLINED_FUNCTION_3_10(&type metadata for Party.UnknownCodingKeys, &a14);
      v55 = v65;
      v54 = v66;
LABEL_6:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      sub_1BF936650();
      sub_1BF9B5598();
      (*(v56 + 8))(v45, v57);
      break;
  }

  (*(v48 + 8))(v51, v46);
  OUTLINED_FUNCTION_37();
}

uint64_t Party.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

void Party.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v94 = v24;
  v28 = v27;
  v90 = v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9960, &qword_1BF9C0780);
  OUTLINED_FUNCTION_1();
  v89 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v92 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9968, &qword_1BF9C0788);
  OUTLINED_FUNCTION_1();
  v86 = v34;
  v87 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  v88 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9970, &qword_1BF9C0790);
  OUTLINED_FUNCTION_1();
  v84 = v38;
  v85 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v77 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9978, &qword_1BF9C0798);
  OUTLINED_FUNCTION_1();
  v83 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v77 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9980, &unk_1BF9C07A0);
  OUTLINED_FUNCTION_1();
  v91 = v48;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v77 - v50;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1BF936500();
  v52 = v94;
  sub_1BF9B5868();
  if (v52)
  {
    goto LABEL_9;
  }

  v80 = v42;
  v81 = v46;
  v82 = v41;
  v53 = v92;
  v54 = v93;
  v94 = v28;
  v55 = v51;
  sub_1BF9B5568();
  sub_1BF8D21BC();
  if (v57 == v58 >> 1)
  {
LABEL_8:
    v69 = v91;
    sub_1BF9B5308();
    swift_allocError();
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
    *v71 = &type metadata for Party;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    OUTLINED_FUNCTION_11();
    (*(v72 + 104))(v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v55, v47);
    v28 = v94;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
    OUTLINED_FUNCTION_37();
    return;
  }

  v79 = 0;
  if (v57 < (v58 >> 1))
  {
    v59 = *(v56 + v57);
    sub_1BF8D21AC();
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    if (v61 == v63 >> 1)
    {
      v64 = v90;
      v65 = v91;
      v78 = v59;
      v66 = v59;
      v67 = v89;
      switch(v66)
      {
        case 1:
          OUTLINED_FUNCTION_33_4();
          sub_1BF9365FC();
          v73 = v82;
          OUTLINED_FUNCTION_2_14(&type metadata for Party.SecondCodingKeys, &a12);
          swift_unknownObjectRelease();
          v75 = v84;
          v74 = v85;
          goto LABEL_18;
        case 2:
          a13 = 2;
          sub_1BF9365A8();
          v73 = v88;
          OUTLINED_FUNCTION_2_14(&type metadata for Party.ThirdCodingKeys, &a13);
          swift_unknownObjectRelease();
          v75 = v86;
          v74 = v87;
LABEL_18:
          (*(v75 + 8))(v73, v74);
          goto LABEL_19;
        case 3:
          a14 = 3;
          sub_1BF936554();
          v76 = v79;
          sub_1BF9B54A8();
          if (v76)
          {
            (*(v65 + 8))(v55, v47);
            swift_unknownObjectRelease();
            v28 = v94;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v67 + 8))(v53, v54);
LABEL_19:
          (*(v65 + 8))(v55, v47);
          *v64 = v78;
          __swift_destroy_boxed_opaque_existential_1(v94);
          break;
        default:
          a11 = 0;
          sub_1BF936650();
          v68 = v81;
          OUTLINED_FUNCTION_2_14(&type metadata for Party.FirstCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v83 + 8))(v68, v80);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t AppIdDetails.appId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AppIdDetails.create(from:party:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  if (v7 == 3)
  {
    OUTLINED_FUNCTION_10();
    if (sub_1BF9B4C08())
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = 2;
    }
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
}

BOOL static AppIdDetails.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1BF9B56D8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1BF9342B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974726170 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF93437C(char a1)
{
  if (a1)
  {
    return 0x7974726170;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_1BF9343AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9342B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9343D4(uint64_t a1)
{
  v2 = sub_1BF936E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF934410(uint64_t a1)
{
  v2 = sub_1BF936E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIdDetails.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_39();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9988, &qword_1BF9C07B0);
  OUTLINED_FUNCTION_1();
  v34 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v33 - v31;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BF936E78();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v25)
  {
    OUTLINED_FUNCTION_33_4();
    sub_1BF936ECC();
    sub_1BF9B5638();
  }

  (*(v34 + 8))(v32, v28);
  OUTLINED_FUNCTION_37();
}

uint64_t AppIdDetails.hashValue.getter()
{
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

void AppIdDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_39();
  v21 = v20;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9990, &qword_1BF9C07B8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1BF936E78();
  sub_1BF9B5868();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v25 = sub_1BF9B5518();
    v27 = v26;
    OUTLINED_FUNCTION_33_4();
    sub_1BF936F20();
    sub_1BF9B5558();
    v28 = OUTLINED_FUNCTION_60();
    v29(v28);
    *v23 = v25;
    *(v23 + 8) = v27;
    *(v23 + 16) = BYTE6(a10);

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9347F8(uint64_t a1)
{
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t GenerationContext.getGenerationId()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  OUTLINED_FUNCTION_16_8();
  v6 = v5(a1);
  sub_1BF925088(0x6172656E65675F5FLL, 0xEF64695F6E6F6974, v6, &v12);

  if (v13)
  {
    v7 = sub_1BF9B4518();
    v8 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v4, v8 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
    {
      OUTLINED_FUNCTION_11();
      v9 = OUTLINED_FUNCTION_88();
      return v10(v9);
    }
  }

  else
  {
    sub_1BF8E8118(&v12, &qword_1EBDE9208, &unk_1BF9C2A50);
    v7 = sub_1BF9B4518();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  }

  sub_1BF9B4508();
  sub_1BF9B4518();
  result = __swift_getEnumTagSinglePayload(v4, 1, v7);
  if (result != 1)
  {
    return sub_1BF8E8118(v4, &qword_1EBDE9998, &qword_1BF9C07C0);
  }

  return result;
}

uint64_t GenerationContext.getInvocationType()@<X0>(__int16 *a1@<X8>)
{
  OUTLINED_FUNCTION_16_8();
  v3 = v2();
  sub_1BF925088(0xD000000000000011, 0x80000001BF9CC280, v3, &v7);

  if (!v8)
  {
    result = sub_1BF8E8118(&v7, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v5 = 1536;
    goto LABEL_6;
  }

  v5 = v6;
LABEL_6:
  *a1 = v5;
  return result;
}

uint64_t Context.getGenerationId()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934B60()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934BD0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_23_9();
  GenerationContext.getGenerationId()(v0);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t Context.getSourceOwner()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934C8C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934CFC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23_9();
  GenerationContext.getSourceOwner()(v0);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t Context.getInvocationType()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934DB8()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934E28()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23_9();
  GenerationContext.getInvocationType()(v0);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t sub_1BF934E9C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_16_8();
  v5 = v4();
  sub_1BF925088(a1, 0xEE0072656E776F5FLL, v5, &v14);

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        return sub_1BF8C2C9C(&v16, a2);
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1BF8E8118(&v14, &qword_1EBDE9208, &unk_1BF9C2A50);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  if (qword_1EDBF4B40 == -1)
  {
    v7 = qword_1EDBF4B48;
    a2[3] = type metadata accessor for DefaultOwner();
    OUTLINED_FUNCTION_9_9();
    a2[4] = sub_1BF936FCC(v8, 255, v9, &protocol conformance descriptor for DefaultOwner);
    *a2 = v7;
  }

  else
  {
    swift_once();
    v10 = *(&v17 + 1);
    v11 = qword_1EDBF4B48;
    a2[3] = type metadata accessor for DefaultOwner();
    OUTLINED_FUNCTION_9_9();
    a2[4] = sub_1BF936FCC(v12, 255, v13, &protocol conformance descriptor for DefaultOwner);
    *a2 = v11;

    if (v10)
    {
      return sub_1BF8E8118(&v16, &qword_1EBDE9918, &qword_1BF9C0750);
    }
  }

  return result;
}

SiriSuggestionsKit::SuggestionEnablementState __swiftcall Context.getSuggestionEnablementState()()
{
  v1 = v0;
  OUTLINED_FUNCTION_16_8();
  v3 = v2();
  sub_1BF925088(0xD00000000000001BLL, 0x80000001BF9CC260, v3, &v12);

  if (v13)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BF8E8118(&v12, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF9B47C8();
  __swift_project_value_buffer(v6, qword_1EDBF5570);
  v7 = sub_1BF9B47A8();
  v8 = sub_1BF9B5048();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BF8B8000, v7, v8, "error retrieving suggestionEnablementState from params in Context", v9, 2u);
    MEMORY[0x1BFB5F320](v9, -1, -1);
  }

  v5 = 0;
LABEL_10:
  *v1 = v5;
  return v4;
}

uint64_t sub_1BF935204@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_10();
  result = sub_1BF9B4C08();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

Swift::Void __swiftcall Context.setAppId(_:party:)(Swift::String _, SiriSuggestionsKit::Party party)
{
  v4 = v3;
  v5 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v8 = *party;
  if (v8 == 3)
  {
    OUTLINED_FUNCTION_10();
    if (sub_1BF9B4C08())
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      LOBYTE(v8) = 2;
    }
  }

  OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v9);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v10;
  v18[4] = *(v11 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_11();
  (*(v12 + 16))();
  v17 = &type metadata for AppIdDetails;
  v15[0] = countAndFlagsBits;
  v15[1] = object;
  v16 = v8;

  OUTLINED_FUNCTION_14_7();
  Context.setParam(for:key:value:)(v18, v13, v14, v15, v5, v4);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t Context.setParam(for:key:value:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1BF935604(a1, a2, a3);
  v7 = a4[3];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  v13[3] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_11();
  (*(v8 + 16))();
  OUTLINED_FUNCTION_36_5();
  v10 = v9();
  OUTLINED_FUNCTION_17_11();
  sub_1BF9326D8();
  return v10(&v12, 0);
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall Context.getAppId()()
{
  v2 = v0;
  v3 = v1;
  Context.getTargetOwner()(v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v13[3] = v4;
  v13[4] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))();
  OUTLINED_FUNCTION_14_7();
  Context.getParam(for:key:)(v13, v7, v8, v2, &v17);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v18)
  {
    v9 = swift_dynamicCast();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = sub_1BF8E8118(&v17, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
LABEL_6:
  result.value.appId._object = v10;
  result.value.appId._countAndFlagsBits = v9;
  result.is_nil = v12;
  result.value.party = v11;
  return result;
}

uint64_t Context.getParam(for:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a6@<X8>)
{
  v8 = sub_1BF935604(a1, a2, a3);
  v10 = v9;
  OUTLINED_FUNCTION_16_8();
  v12 = v11(a4);
  sub_1BF925088(v8, v10, v12, a6);
}

uint64_t sub_1BF935604(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v13, v5, v6);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = (*(v8 + 48))(v7, v8);
  v12 = v9;

  MEMORY[0x1BFB5DE90](58, 0xE100000000000000);

  __swift_destroy_boxed_opaque_existential_1(v13);
  v13[0] = v11;
  v13[1] = v12;

  MEMORY[0x1BFB5DE90](a2, a3);

  return v13[0];
}

uint64_t Context.setSourceDialogCallback(_:)()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_28_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_26_8(v5);

  return Context.getSourceOwner()();
}

uint64_t sub_1BF935798()
{
  OUTLINED_FUNCTION_65();

  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v0 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BF9358E0()
{
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[10] = v4;
  v0[11] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))();
  v7 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v0[15] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_11();
  v8();
  Context.setParam(for:key:value:)(v0 + 7, 0xD00000000000001FLL, 0x80000001BF9CC2A0, v0 + 12, v2, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v9();
}

Swift::Void __swiftcall Context.setSuggestionEnablementState(suggestionEnablementState:)(SiriSuggestionsKit::SuggestionEnablementState suggestionEnablementState)
{
  v1 = *suggestionEnablementState;
  v5 = &type metadata for SuggestionEnablementState;
  v4[32] = v1;
  OUTLINED_FUNCTION_36_5();
  v3 = v2();
  sub_1BF9326D8();
  v3(v4, 0);
}

uint64_t Context.getSourceDialogCallbacksProvider()()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_28_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_26_8(v5);

  return Context.getSourceOwner()();
}

uint64_t sub_1BF935B60()
{
  OUTLINED_FUNCTION_65();

  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v0 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BF935CA8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 80) = v2;
  *(v0 + 88) = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_11();
  (*(v4 + 16))();
  Context.getParam(for:key:)((v0 + 56), 0xD00000000000001FLL, 0x80000001BF9CC2A0, v1, (v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 128);
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99A0, &qword_1BF9C07F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v6 = *(v0 + 128);
      *(v6 + 32) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
    }
  }

  else
  {
    sub_1BF8E8118(v0 + 96, &qword_1EBDE9208, &unk_1BF9C2A50);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
  }

  OUTLINED_FUNCTION_77();

  return v7();
}

double sub_1BF935E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1BF8C2E64(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
    sub_1BF9B53A8();

    sub_1BF8C192C((*(v9 + 56) + 32 * v7), a3);
    sub_1BF9B53C8();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF935F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1BF8C2E64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
  sub_1BF9B53A8();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1BF9B53C8();
  *v3 = v9;
  return v7;
}

double sub_1BF935FF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BF8C2E64(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99E8, &unk_1BF9C1000);
    sub_1BF9B53A8();

    sub_1BF8C2C9C((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    sub_1BF9B53C8();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1BF9360F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1BF8C2E64(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
    sub_1BF9B53A8();

    sub_1BF8DFCB8((*(v9 + 56) + 48 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
    sub_1BF9B53C8();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1BF9361F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1BF9B2C5C(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D0, &unk_1BF9C0FE0);
    sub_1BF9B53A8();
    sub_1BF9324B4(*(v8 + 48) + 120 * v6);
    sub_1BF8C2C9C((*(v8 + 56) + 40 * v6), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
    sub_1BF932404();
    sub_1BF9B53C8();
    *v2 = v8;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1BF9362F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1BF8C2E64(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99F8, &qword_1BF9C1018);
    sub_1BF9B53A8();

    v8 = (*(v11 + 56) + 48 * v7);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
    a3[2] = v8[2];
    sub_1BF9B53C8();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

_OWORD *sub_1BF9363E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF8C2E64(a2, a3);
  OUTLINED_FUNCTION_3_15();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
  if (OUTLINED_FUNCTION_20_9(v12))
  {
    sub_1BF8C2E64(a2, a3);
    OUTLINED_FUNCTION_10_10();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v15 + 56) + 32 * v10));
    OUTLINED_FUNCTION_42_4();

    return sub_1BF8C192C(v16, v17);
  }

  else
  {
    sub_1BF963FCC(v10, a2, a3, a1, v15);
    OUTLINED_FUNCTION_42_4();
  }
}

unint64_t sub_1BF936500()
{
  result = qword_1EDBF4BA0;
  if (!qword_1EDBF4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BA0);
  }

  return result;
}

unint64_t sub_1BF936554()
{
  result = qword_1EBDE9948;
  if (!qword_1EBDE9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9948);
  }

  return result;
}

unint64_t sub_1BF9365A8()
{
  result = qword_1EBDE9950;
  if (!qword_1EBDE9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9950);
  }

  return result;
}

unint64_t sub_1BF9365FC()
{
  result = qword_1EBDE9958;
  if (!qword_1EBDE9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9958);
  }

  return result;
}

unint64_t sub_1BF936650()
{
  result = qword_1EDBF4B88;
  if (!qword_1EDBF4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B88);
  }

  return result;
}

void sub_1BF9366A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_15();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A18, &unk_1BF9C1050);
  if (OUTLINED_FUNCTION_20_9(v12))
  {
    sub_1BF8C2E64(v5, v3);
    OUTLINED_FUNCTION_10_10();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_34_4();
    sub_1BF96400C(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_42_4();
  }
}

uint64_t sub_1BF936788(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_1BF8C2E64(a1, a2);
  OUTLINED_FUNCTION_3_15();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
  result = sub_1BF9B53A8();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_88();
  result = sub_1BF8C2E64(v14, v15);
  if ((v12 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v17 = *v4;
  if (v12)
  {
    *(*(v17 + 56) + 8 * v11) = a4;
  }

  else
  {
    sub_1BF964070(v11, a1, a2, v17);
  }

  return result;
}

_OWORD *sub_1BF9368A4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BF8C2E64(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (*(v16 + 56) + 48 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1BF8DFCB8(a1, v17);
  }

  else
  {
    sub_1BF9640AC(v12, a2, a3, a1, v16);
  }
}

void sub_1BF9369F0(uint64_t a1, void *a2, char a3)
{
  sub_1BF9B2C5C(a2);
  OUTLINED_FUNCTION_3_15();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
  if (sub_1BF9B53A8())
  {
    sub_1BF9B2C5C(a2);
    OUTLINED_FUNCTION_10_10();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    *(*(v13 + 56) + 8 * v9) = a1;
  }

  else
  {
    sub_1BF932458(a2, v14);
    sub_1BF9640F0(v9, v14, a1, v13);
  }
}

void sub_1BF936B10(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF9B2C5C(a2);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D0, &unk_1BF9C0FE0);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1BF9B2C5C(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (*(v14 + 56) + 40 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    sub_1BF8C2C9C(a1, v15);
  }

  else
  {
    sub_1BF932458(a2, v16);
    sub_1BF96414C(v10, v16, a1, v14);
  }
}

uint64_t sub_1BF936C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_15();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D8, &unk_1BF9C0FF0);
  if (OUTLINED_FUNCTION_20_9(v12))
  {
    sub_1BF8C2E64(v5, v3);
    OUTLINED_FUNCTION_10_10();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_34_4();
    sub_1BF96400C(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_42_4();
  }
}

uint64_t sub_1BF936D38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99F8, &qword_1BF9C1018);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BF8C2E64(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = *(v16 + 56) + 48 * v12;

    return sub_1BF937D48(a1, v17);
  }

  else
  {
    sub_1BF9641B4(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1BF936E78()
{
  result = qword_1EDBF51E8[0];
  if (!qword_1EDBF51E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF51E8);
  }

  return result;
}

unint64_t sub_1BF936ECC()
{
  result = qword_1EDBF47D8;
  if (!qword_1EDBF47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47D8);
  }

  return result;
}

unint64_t sub_1BF936F20()
{
  result = qword_1EDBF4E78;
  if (!qword_1EDBF4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E78);
  }

  return result;
}

uint64_t sub_1BF936F74(uint64_t a1, uint64_t a2)
{
  result = sub_1BF936FCC(&qword_1EDBF31C8, a2, type metadata accessor for ContextContainer, &protocol conformance descriptor for ContextContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF936FCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1BF937018()
{
  result = qword_1EBDE99A8;
  if (!qword_1EBDE99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99A8);
  }

  return result;
}

unint64_t sub_1BF937070()
{
  result = qword_1EBDE99B0;
  if (!qword_1EBDE99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIdDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF937320(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF937440()
{
  result = qword_1EBDE99B8;
  if (!qword_1EBDE99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99B8);
  }

  return result;
}

unint64_t sub_1BF937498()
{
  result = qword_1EBDE99C0;
  if (!qword_1EBDE99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99C0);
  }

  return result;
}

unint64_t sub_1BF9374F0()
{
  result = qword_1EDBF51E0;
  if (!qword_1EDBF51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51E0);
  }

  return result;
}

unint64_t sub_1BF937548()
{
  result = qword_1EDBF4CF8;
  if (!qword_1EDBF4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4CF8);
  }

  return result;
}

unint64_t sub_1BF9375A0()
{
  result = qword_1EDBF4B78;
  if (!qword_1EDBF4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B78);
  }

  return result;
}

unint64_t sub_1BF9375F8()
{
  result = qword_1EDBF4B80;
  if (!qword_1EDBF4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B80);
  }

  return result;
}

unint64_t sub_1BF937650()
{
  result = qword_1EDBF4B58;
  if (!qword_1EDBF4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B58);
  }

  return result;
}

unint64_t sub_1BF9376A8()
{
  result = qword_1EDBF4B60;
  if (!qword_1EDBF4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B60);
  }

  return result;
}

unint64_t sub_1BF937700()
{
  result = qword_1EDBF4B68;
  if (!qword_1EDBF4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B68);
  }

  return result;
}

unint64_t sub_1BF937758()
{
  result = qword_1EDBF4B70;
  if (!qword_1EDBF4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B70);
  }

  return result;
}

unint64_t sub_1BF9377B0()
{
  result = qword_1EDBF4E80;
  if (!qword_1EDBF4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E80);
  }

  return result;
}

unint64_t sub_1BF937808()
{
  result = qword_1EDBF4B50;
  if (!qword_1EDBF4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B50);
  }

  return result;
}

unint64_t sub_1BF937860()
{
  result = qword_1EDBF4B90;
  if (!qword_1EDBF4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B90);
  }

  return result;
}

unint64_t sub_1BF9378B8()
{
  result = qword_1EDBF4B98;
  if (!qword_1EDBF4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B98);
  }

  return result;
}

uint64_t sub_1BF93790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a4;
  (*(v12 + 16))(v14, a1, a5);
  sub_1BF937A48(v14, a2, a3, isUniquelyReferenced_nonNull_native, &v18, a5, a6);
  result = (*(v12 + 8))(a1, a5);
  *a4 = v18;
  return result;
}

uint64_t sub_1BF937A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v29);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  v14 = *a5;
  v15 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99E8, &unk_1BF9C1000);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_1BF8C2E64(a2, a3);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_10:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *a5;
  if (v18)
  {
    v22 = (v21[7] + 40 * v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return sub_1BF8C2C9C(&v29, v22);
  }

  else
  {
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    MEMORY[0x1EEE9AC00](v24);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_1BF937C70(v17, a2, a3, v26, v21, a6, a7);
    __swift_destroy_boxed_opaque_existential_1(&v29);
  }
}

uint64_t sub_1BF937C70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1BF8C2C9C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1BF9363E4(va, a2, 0xEE0072656E776F5FLL);
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return swift_getObjectType();
}

uint64_t BridgeOwner.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static BridgeOwner.create(intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD000000000000011;
  v4 = *(a1 + 16);
  strcpy(v10, "intentBridge_");
  HIWORD(v10[1]) = -4864;
  v5 = "IntentType.action";
  if (v4 == 1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v5 = "tionsKit11ContextKeys";
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = "IntentType.inIntent";
  }

  MEMORY[0x1BFB5DE90](v6, v7 | 0x8000000000000000);

  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
  return result;
}

unint64_t BridgeOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 1;
  return result;
}

unint64_t sub_1BF937F68()
{
  result = qword_1EDBF4BA8;
  if (!qword_1EDBF4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BA8);
  }

  return result;
}

uint64_t sub_1BF937FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646972427369 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF93808C(char a1)
{
  if (a1)
  {
    return 0x6567646972427369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BF9380D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF937FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9380F8(uint64_t a1)
{
  v2 = sub_1BF9382DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF938134(uint64_t a1)
{
  v2 = sub_1BF9382DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BridgeOwner.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A20, &qword_1BF9C1060);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9382DC();
  sub_1BF9B5898();
  v14 = 0;
  v9 = v11[1];
  sub_1BF9B55F8();
  if (!v9)
  {
    v13 = 1;
    sub_1BF9B5608();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BF9382DC()
{
  result = qword_1EBDE9A28;
  if (!qword_1EBDE9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A28);
  }

  return result;
}

uint64_t BridgeOwner.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A30, &qword_1BF9C1068);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9382DC();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1BF9B5518();
  v8 = v7;
  v9 = sub_1BF9B5528();
  v10 = OUTLINED_FUNCTION_60();
  v11(v10);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF93850C(void *a1)
{
  a1[2] = sub_1BF938544();
  a1[3] = sub_1BF938598();
  result = sub_1BF9385EC();
  a1[4] = result;
  return result;
}

unint64_t sub_1BF938544()
{
  result = qword_1EDBF3870;
  if (!qword_1EDBF3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3870);
  }

  return result;
}

unint64_t sub_1BF938598()
{
  result = qword_1EDBF3878;
  if (!qword_1EDBF3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3878);
  }

  return result;
}

unint64_t sub_1BF9385EC()
{
  result = qword_1EDBF3880;
  if (!qword_1EDBF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BridgeOwner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF9387A0()
{
  result = qword_1EBDE9A38;
  if (!qword_1EBDE9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A38);
  }

  return result;
}

unint64_t sub_1BF9387F8()
{
  result = qword_1EBDE9A40;
  if (!qword_1EBDE9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A40);
  }

  return result;
}

unint64_t sub_1BF938850()
{
  result = qword_1EBDE9A48;
  if (!qword_1EBDE9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A48);
  }

  return result;
}

uint64_t ChannelGeneratorConfidenceLogger.__allocating_init(coreAnalyticsClient:)(void *a1)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_17();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_13(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_3_16();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void sub_1BF938980(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF9B47C8();
  __swift_project_value_buffer(v5, qword_1EDBF57F8);

  v6 = sub_1BF9B47A8();
  v7 = sub_1BF9B5038();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1BF8DE810(a1, a2, &v15);
    *(v8 + 12) = 2080;
    sub_1BF938F64();
    v10 = sub_1BF9B4978();
    v12 = sub_1BF8DE810(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1BF8B8000, v6, v7, "Logging metricName=%s, payload=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v9, -1, -1);
    MEMORY[0x1BFB5F320](v8, -1, -1);
  }

  v13 = sub_1BF9B4A98();
  sub_1BF938F64();
  v14 = sub_1BF9B4958();
  AnalyticsSendEvent();
}

uint64_t CoreAnalyticsLogger.__allocating_init(coreAnalyticsClient:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0();
  v2 = swift_allocObject();
  sub_1BF8D5C74(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BF938C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BF938CF0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = sub_1BF9B4A98();
  v6 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1BF9366A4(v5, 0x4E6C656E6E616863, 0xEB00000000656D61);
  v7 = sub_1BF9B4F48();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1BF9366A4(v7, 0xD000000000000011, 0x80000001BF9CC470);
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
  (*(v9 + 8))(0xD000000000000030, 0x80000001BF9CC490, v6, v8, v9);
}

uint64_t ChannelGeneratorConfidenceLogger.init(coreAnalyticsClient:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_17();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_0_13(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_3_16();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1BF938EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF8D5C74(&v9, a2 + 16);
  return a2;
}

unint64_t sub_1BF938F64()
{
  result = qword_1EDBF0550;
  if (!qword_1EDBF0550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF0550);
  }

  return result;
}

uint64_t AppUsageTimestampBiomeFetcher.__allocating_init(streamProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AppUsageTimestampBiomeFetcher.init(streamProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF939168()
{
  v1 = (*(v0[8] + 16))();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BF9B4988();
  v3 = [v1 publisherWithOptions_];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v4 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BF939C44;
  v0[5] = &block_descriptor_0;
  v5 = _Block_copy(v0 + 2);
  v0[6] = sub_1BF93969C;
  v0[7] = v2;
  v0[2] = v4;
  v0[3] = 1107296256;
  v0[4] = sub_1BF939C44;
  v0[5] = &block_descriptor_3;
  v6 = _Block_copy(v0 + 2);

  v7 = [v3 sinkWithCompletion:v5 receiveInput:v6];

  _Block_release(v6);
  _Block_release(v5);

  swift_beginAccess();
  v8 = *(v2 + 16);

  v9 = v0[1];

  return v9(v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BF939398(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = [a1 eventBody];
  if (v13)
  {
    v30 = v13;
    v14 = sub_1BF939A8C(v13);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = [v30 absoluteTimestamp];
      if (v18)
      {
        v19 = v18;
        sub_1BF9B44A8();

        v20 = sub_1BF9B44C8();
        v21 = 0;
      }

      else
      {
        v20 = sub_1BF9B44C8();
        v21 = 1;
      }

      __swift_storeEnumTagSinglePayload(v10, v21, 1, v20);
      sub_1BF939AF0(v10, v12);
      swift_beginAccess();
      if (*(*(a2 + 16) + 16) && (, sub_1BF8C2E64(v16, v17), v24 = v23, , (v24 & 1) != 0))
      {
        sub_1BF939BD0(v12);
      }

      else
      {
        sub_1BF939B60(v12, v7);
        v25 = sub_1BF9B44C8();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v25);
        if (EnumTagSinglePayload == 1)
        {
          sub_1BF939BD0(v7);
          v27 = 0.0;
        }

        else
        {
          sub_1BF9B4478();
          v27 = v28;
          (*(*(v25 - 8) + 8))(v7, v25);
        }

        swift_beginAccess();
        if (EnumTagSinglePayload == 1)
        {
          sub_1BF935F14(v16, v17);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *(a2 + 16);
          sub_1BF936788(v16, v17, isUniquelyReferenced_nonNull_native, v27);
          *(a2 + 16) = v31;
        }

        swift_endAccess();

        sub_1BF939BD0(v12);
      }
    }

    else
    {
      v22 = v30;
    }
  }
}

void sub_1BF9396A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t AppUsageTimestampBiomeFetcher.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF939764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9090B8;

  return sub_1BF939148();
}

uint64_t dispatch thunk of AppUsageTimestampFetcher.getAppUsageTimestamps(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9090B8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AppUsageTimestampBiomeFetcher.getAppUsageTimestamps(options:)(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF939C3C;

  return v6(a1);
}

uint64_t sub_1BF939A8C(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF9B4AA8();

  return v3;
}

uint64_t sub_1BF939AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF939B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF939BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF939C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1BF93A2F8(a3, v24 - v10);
  v12 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF8BA5D8(v11);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BF9B4E28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BF9B4B18() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1BF8BA5D8(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF8BA5D8(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

Swift::Void __swiftcall SuggestionsServiceRefreshable.refresh()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = *(v3 + 8);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v2;
  swift_unknownObjectRetain_n();
  sub_1BF939C48(0, 0, v7, &unk_1BF9C1490, v10);
}

uint64_t sub_1BF939FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(a6 + 16) + **(a6 + 16));
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1BF8BC564;

  return v11(a5, a6);
}

uint64_t sub_1BF93A10C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0(v8);
  *v9 = v10;
  v9[1] = sub_1BF8BC644;

  return sub_1BF939FF0(a1, v5, v6, v7, v3, v4);
}

uint64_t dispatch thunk of SuggestionsServiceRefreshable.refreshAsync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BC564;

  return v7(a1, a2);
}

uint64_t sub_1BF93A2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF93A368()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_16(v1);

  return v4(v3);
}

Swift::String_optional __swiftcall SiriSuggestions.Intent.getSiriHelpMentionedAppId()()
{
  v1 = type metadata accessor for SiriSuggestions.Intent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF93A558(v0, v3);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1BF90DBB4(v3);
LABEL_9:
    v8 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v4 = v3[2];
  v5 = *v3 == 0x4874736567677573 && v3[1] == 0xEB00000000706C65;
  if (!v5 && (sub_1BF9B56D8() & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_0_14();
  v8 = sub_1BF925194(v6, v7, v4);
  v10 = v9;

LABEL_10:
  v11 = v8;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1BF93A558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SiriHelpConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF93A6A0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

uint64_t SuggestionsRepository.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

unint64_t NoOpSuggestionsRepository.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultOwner();
  v3 = swift_allocObject();
  *(v3 + 40) = &type metadata for CoreSuggestionGroups;
  v4 = sub_1BF937F68();
  *(v3 + 16) = 4;
  *(v3 + 48) = v4;
  *(v3 + 56) = 1884254030;
  *(v3 + 64) = 0xE400000000000000;
  *(v3 + 72) = 1884254030;
  *(v3 + 80) = 0xE400000000000000;
  a1[3] = v2;
  result = sub_1BF93A93C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t DefaultSuggestionsRepository.deinit()
{

  return v0;
}

uint64_t DefaultSuggestionsRepository.__deallocating_deinit()
{
  DefaultSuggestionsRepository.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF93A93C()
{
  result = qword_1EDBF36D0;
  if (!qword_1EDBF36D0)
  {
    type metadata accessor for DefaultOwner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF36D0);
  }

  return result;
}

uint64_t sub_1BF93AA0C()
{
  v1 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF93F640(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier, v3, type metadata accessor for ActionIdentifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_1BF93E89C(v3, type metadata accessor for ActionIdentifier);
  return 0;
}

uint64_t sub_1BF93AAE4()
{
  v1 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  sub_1BF93F640(v0 + *(v4 + 20), v3, type metadata accessor for ActionIdentifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_1BF93E89C(v3, type metadata accessor for ActionIdentifier);
  return 0;
}

uint64_t sub_1BF93ABC0()
{
  v1 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[4];
  v5 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v4);
  (*(v5 + 24))(v4, v5);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_1BF93E89C(v3, type metadata accessor for ActionIdentifier);
  return 0;
}

uint64_t CandidateSuggestionConfigurator.suggestionId.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v6 - v5;
  (*(a2 + 24))(a1, a2);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v7;
  }

  OUTLINED_FUNCTION_0_15();
  sub_1BF93E89C(v7, v8);
  return 0;
}

uint64_t sub_1BF93AD70@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for ActionIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t CandidateSuggestionConfigurator.actionIdentifier.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = (*(a1 + 16))();
  a2[1] = v3;
  type metadata accessor for ActionIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF93AE20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF93F6AC;

  return CandidateSuggestionConfigurator.isValid(signal:)();
}

uint64_t sub_1BF93AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF93F6B0;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)();
}

uint64_t CandidateSuggestionConfigurator.isValidWithDebug(signal:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_84();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t sub_1BF93B070()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v2)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0x80000001BF9CC600;
  }

  v7 = *(v3 + 8);

  return v7(v2, v5, v6);
}

uint64_t CandidateSuggestionConfiguratorFactory.create(suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = (v10 - v9);
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = *(a4 + 8);

  v12(v11, a3, a4);
  OUTLINED_FUNCTION_0_15();
  return sub_1BF93E89C(v11, v13);
}

uint64_t sub_1BF93B258@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a1[4] = &off_1F3EFBD28;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BF93F608(v1, v3 + 16);
}

uint64_t sub_1BF93B2BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  a1[4] = &off_1F3EFBD70;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_1BF93F640(v1, boxed_opaque_existential_1Tm, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
}

uint64_t CandidateSuggestionConfigurator.create(actionIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

unint64_t DefaultCandidateSuggestionConfigurator.description.getter()
{
  sub_1BF9B5288();

  v0 = ActionIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t DefaultCandidateSuggestionConfigurator.deinit()
{
  OUTLINED_FUNCTION_0_15();
  sub_1BF93E89C(v0 + v1, v2);
  return v0;
}

uint64_t DefaultCandidateSuggestionConfigurator.__deallocating_deinit()
{
  OUTLINED_FUNCTION_0_15();
  sub_1BF93E89C(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1BF93B560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC644;

  return DefaultCandidateSuggestionConfigurator.updateContext(context:signal:)();
}

uint64_t sub_1BF93B5EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF93F6AC;

  return j_j__OUTLINED_FUNCTION_11_13();
}

uint64_t sub_1BF93B694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B0;

  return (sub_1BF93F6A0)(a1);
}

void static CandidateSuggestionConfigurators.merge(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A58, &qword_1BF9C1688);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v34 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A60, &unk_1BF9C1690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v34 - v7;
  v36 = type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v34 = v10 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = a1 + 32;
    v38 = xmmword_1BF9B6370;
    while (1)
    {
      sub_1BF8D2004(v13, v40);
      sub_1BF8D2004(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
      v14 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v14);
        v15 = *v5;

        sub_1BF93E89C(v5, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v14);
        sub_1BF8DFBF0(v5, &qword_1EBDE9A58, &qword_1BF9C1688);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
        v15 = swift_allocObject();
        *(v15 + 16) = v38;
        sub_1BF8D2004(v40, v15 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      v16 = *(v15 + 16);
      v17 = *(v12 + 16);
      if (__OFADD__(v17, v16))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > *(v12 + 24) >> 1)
      {
        sub_1BF8DDF88();
        v12 = v18;
      }

      if (*(v15 + 16))
      {
        if ((*(v12 + 24) >> 1) - *(v12 + 16) < v16)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v19 = *(v12 + 16);
          v20 = __OFADD__(v19, v16);
          v21 = v19 + v16;
          if (v20)
          {
            goto LABEL_29;
          }

          *(v12 + 16) = v21;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_27;
        }
      }

      v13 += 40;
      if (!--v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1BF8F19D4(v12, v40);
  v22 = v41;
  if (!v41)
  {

    sub_1BF8DFBF0(v40, &qword_1EBDE99C8, qword_1BF9C2D00);
    v24 = v37;
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v36);
    goto LABEL_23;
  }

  v23 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v24 = v37;
  (*(v23 + 24))(v22, v23);
  v25 = v36;
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v36);
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {

LABEL_23:
    sub_1BF8DFBF0(v24, &qword_1EBDE9A60, &unk_1BF9C1690);
    v26 = v35;
    *v35 = 0u;
    *(v26 + 1) = 0u;
    v26[4] = 0;
    return;
  }

  OUTLINED_FUNCTION_2_18();
  v27 = v24;
  v28 = v34;
  v30 = sub_1BF93F4D4(v27, v34, v29);
  MEMORY[0x1EEE9AC00](v30);
  *(&v34 - 2) = v28;
  if (sub_1BF9252F8(sub_1BF93E87C, (&v34 - 4), v12))
  {
    v31 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
    v32 = v35;
    v35[3] = v31;
    v32[4] = &off_1F3EFBD70;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32);
    sub_1BF93F640(v28, boxed_opaque_existential_1Tm + *(v31 + 20), type metadata accessor for ActionIdentifier);
    *boxed_opaque_existential_1Tm = v12;
    sub_1BF93E89C(v28, type metadata accessor for ActionIdentifier);
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BF93BC64(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(v7, v8);
  LOBYTE(a1) = static ActionIdentifier.== infix(_:_:)(v6, a2);
  sub_1BF93E89C(v6, type metadata accessor for ActionIdentifier);
  return a1 & 1;
}

uint64_t static CandidateSuggestionConfigurators.restrict(provider:for:complimentExistingRestrictions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedConfiguratorProvider;
  a4[4] = &off_1F3EFBD60;
  v8 = swift_allocObject();
  *a4 = v8;
  sub_1BF8D2004(a1, v8 + 16);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
}

uint64_t static CandidateSuggestionConfigurators.restrict(configurator:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a3[4] = &off_1F3EFBD28;
  v6 = swift_allocObject();
  *a3 = v6;
  sub_1BF8D2004(a1, v6 + 24);
  *(v6 + 16) = a2;
}

void *sub_1BF93BE64(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v6 = (*(v5 + 8))(a1, v4, v5);
  v9[2] = v2;
  v7 = sub_1BF93F2FC(sub_1BF93F298, v9, v6);

  return v7;
}

uint64_t sub_1BF93BF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  result = sub_1BF92457C(sub_1BF93F4B4, v6, v4);
  *a3 = result;
  return result;
}

uint64_t sub_1BF93BF5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 48) & 1) == 0 && (sub_1BF93C00C(a1))
  {
    return sub_1BF8D2004(a1, a3);
  }

  v7 = *(a2 + 40);
  a3[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a3[4] = &off_1F3EFBD28;
  v8 = swift_allocObject();
  *a3 = v8;
  sub_1BF8D2004(a1, v8 + 24);
  *(v8 + 16) = v7;
}

uint64_t sub_1BF93C00C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A58, &qword_1BF9C1688);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF8D2004(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1BF8DFBF0(&v20, &qword_1EBDE9240, &unk_1BF9C1A70);
    v23 = 0u;
    v24 = 0u;
    goto LABEL_8;
  }

  v10 = *(&v21 + 1);
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v11 + 8))(&v23, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (!*(&v24 + 1))
  {
LABEL_8:
    sub_1BF8DFBF0(&v23, &qword_1EBDE9208, &unk_1BF9C2A50);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  if (!*(&v26 + 1))
  {
LABEL_9:
    sub_1BF8DFBF0(&v25, &qword_1EBDE99C8, qword_1BF9C2D00);
    goto LABEL_10;
  }

  sub_1BF8D5C74(&v25, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v12 = sub_1BF9B56C8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1BF9B56C8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v12 != v13)
  {
    v14 = sub_1BF93C00C(v18);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
  sub_1BF8D2004(a1, &v25);
  if (swift_dynamicCast())
  {
    sub_1BF93F564(v18);
    v14 = 1;
  }

  else
  {
    sub_1BF8D2004(a1, v18);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      v15 = sub_1BF93F4D4(v6, v9, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
      MEMORY[0x1EEE9AC00](v15);
      *(&v17 - 2) = v2;
      v14 = sub_1BF9063B4();
      sub_1BF93E89C(v9, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      sub_1BF8DFBF0(v6, &qword_1EBDE9A58, &qword_1BF9C1688);
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_1BF93C3E0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1BF93C43C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93C460, 0, 0);
}

uint64_t sub_1BF93C460()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  OUTLINED_FUNCTION_5_12();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1BF93C578;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_1BF93C578()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t sub_1BF93C658(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93C678, 0, 0);
}

uint64_t sub_1BF93C678()
{
  v27 = v0;
  v1 = *(v0 + 72);
  v2 = *(v1 + 88);
  if (v2 == 255)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1BF9B5288();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    MEMORY[0x1BFB5DE90](0xD000000000000023, 0x80000001BF9CC6D0);
    sub_1BF9B5378();
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
  }

  else
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = *(v1 + 80);
    v7 = **(v0 + 80);
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    *(v0 + 32) = v5;
    *(v0 + 40) = v6;
    *(v0 + 48) = v2;
    *(swift_task_alloc() + 16) = v0 + 16;
    v8 = sub_1BF906310();

    if (v8)
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 8), *(*(v0 + 80) + 32));
      OUTLINED_FUNCTION_84();
      v20 = (v9 + *v9);
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_1BF93C9B0;
      v11 = OUTLINED_FUNCTION_22_5(*(v0 + 72));

      return v20(v11);
    }

    sub_1BF9B5288();

    strcpy(v21, "Restricted: ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    v15 = MEMORY[0x1BFB5E030](v7, &type metadata for DeliveryVehicle);
    MEMORY[0x1BFB5DE90](v15);

    v16 = MEMORY[0x1BFB5DE90](0x203A746F67202CLL, 0xE700000000000000);
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v26 = v2;
    v18 = DeliveryVehicle.rawValue.getter(v16, v17);
    MEMORY[0x1BFB5DE90](v18);

    MEMORY[0x1BFB5DE90](v21[0], v21[1]);

    v13 = 0xD00000000000001CLL;
    v14 = 0x80000001BF9CC700;
  }

  v19 = *(v0 + 8);

  return v19(0, v13, v14);
}

uint64_t sub_1BF93C9B0()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_9_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_17();

  return v4(v3);
}

uint64_t sub_1BF93CA98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B8;

  return sub_1BF93C658(a1);
}

uint64_t sub_1BF93CB34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BC644;

  return sub_1BF93C43C(a1, a2);
}

uint64_t sub_1BF93CBD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6AC;

  return sub_1BF93CA98(a1);
}

uint64_t sub_1BF93CC6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B0;

  return sub_1BF93C658(a1);
}

uint64_t sub_1BF93CD04(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93CD28, 0, 0);
}

uint64_t sub_1BF93CD28()
{
  OUTLINED_FUNCTION_6();
  v1 = **(v0 + 72);
  *(v0 + 80) = v1;
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    *(v0 + 96) = 0;
    sub_1BF8D2004(v1 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_5_12();
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_7_11(v3);

    return v5(v4);
  }

  else
  {
    OUTLINED_FUNCTION_77();

    return v7();
  }
}

uint64_t sub_1BF93CE64()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1BF93CF58, 0, 0);
}

uint64_t sub_1BF93CF58()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {
    OUTLINED_FUNCTION_77();

    return v2();
  }

  else
  {
    v0[12] = v1;
    sub_1BF8D2004(v0[10] + 40 * v1 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_5_12();
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_7_11(v4);

    return v6(v5);
  }
}

uint64_t sub_1BF93D098(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93D0B8, 0, 0);
}

uint64_t sub_1BF93D0B8()
{
  OUTLINED_FUNCTION_65();
  v1 = **(v0 + 120);
  sub_1BF93F1AC(*(v0 + 112), v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  memcpy((v2 + 16), (v0 + 16), 0x59uLL);
  OUTLINED_FUNCTION_8_9(&unk_1BF9B9AC8);
  v6 = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BF93D1B4;

  return v6(v1, 0, 0, 0, &unk_1BF9C1A40, v2);
}

void sub_1BF93D1B4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  *(v2 + 144) = v1;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BF93D2EC, 0, 0);
  }
}

uint64_t sub_1BF93D2EC()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 48);
    do
    {
      if ((*(v3 - 2) & 1) == 0)
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        MEMORY[0x1BFB5DE90](v5, v4);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 8);

  return v6(1, 0, 0xE000000000000000);
}

uint64_t sub_1BF93D418(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF93D438, 0, 0);
}

uint64_t sub_1BF93D438()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8988, &qword_1BF9B8490);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1BF9B6370;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_84();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1BF93D584;
  v5 = OUTLINED_FUNCTION_22_5(v0[3]);

  return v7(v5);
}

uint64_t sub_1BF93D584()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  *(v1 + 64) = v0;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BF93D680, 0, 0);
}

uint64_t sub_1BF93D680()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 64);
  *(v3 + 40) = v2;
  *(v3 + 48) = v1;
  return (*(v0 + 8))(*(v0 + 32));
}

uint64_t sub_1BF93D6B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B8;

  return sub_1BF93D098(a1);
}

uint64_t sub_1BF93D780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BC644;

  return sub_1BF93CD04(a1, a2);
}

uint64_t sub_1BF93D824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6AC;

  return sub_1BF93D6B0(a1);
}

uint64_t sub_1BF93D8B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B0;

  return sub_1BF93D098(a1);
}

uint64_t FilterSignal.init(filter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FilterSignal.create(actionIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v12 = *v3;
  v11 = v3[1];
  OUTLINED_FUNCTION_2_18();
  sub_1BF93F640(a1, v10, v13);
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v21[4] = v18;
  a3[3] = type metadata accessor for FilterSignal.FilterSignalConfigurator(0, v21);
  a3[4] = &off_1F3EFBCF0;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  sub_1BF93DA60(v10, v12, v11, v14, v15, v16, v17, v18, boxed_opaque_existential_1Tm);
}

uint64_t sub_1BF93DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1BF93F4D4(a1, a9, type metadata accessor for ActionIdentifier);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  result = type metadata accessor for FilterSignal.FilterSignalConfigurator(0, v19);
  v18 = (a9 + *(result + 60));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t sub_1BF93DAFC(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = *(a2 + 16);
  v3[38] = v4;
  v5 = sub_1BF9B50F8();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF93DC1C, 0, 0);
}

uint64_t sub_1BF93DC1C()
{
  v28 = v0;
  sub_1BF8DFE40(*(*(v0 + 280) + 40) + 56, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 304);
  if (v1)
  {
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);
    v5 = *(v0 + 328);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, *(v0 + 304));
    (*(v4 + 32))(v3, v5, v2);
    (*(v6 + *(v7 + 60)))(v3);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 304));
  }

  else
  {
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, *(v0 + 304));
    (*(v9 + 8))(v8, v10);
    if (qword_1EDBF08C0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 280);
    v12 = sub_1BF9B47C8();
    __swift_project_value_buffer(v12, qword_1EDBF08C8);
    sub_1BF93F1AC(v11, v0 + 16);
    v13 = sub_1BF9B47A8();
    v14 = sub_1BF9B5038();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      sub_1BF8DFE40(*(v0 + 56) + 56, v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      DynamicType = swift_getDynamicType();
      v25 = *(v0 + 224);
      v26 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      *(v0 + 240) = DynamicType;
      *(v0 + 248) = v26;
      *(v0 + 264) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A70, &qword_1BF9C1AA8);
      v18 = sub_1BF9B4B08();
      v20 = v19;
      sub_1BF93F5B4(v0 + 16);
      v21 = sub_1BF8DE810(v18, v20, &v27);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1BF8B8000, v13, v14, "subscribed signal value not as expected (got %s. by-passing filter", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB5F320](v16, -1, -1);
      MEMORY[0x1BFB5F320](v15, -1, -1);
    }

    else
    {

      sub_1BF93F5B4(v0 + 16);
    }
  }

  v22 = OUTLINED_FUNCTION_3_17();

  return v23(v22);
}

uint64_t sub_1BF93DF84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E028;

  return sub_1BF93DAFC(a1, a2);
}

uint64_t sub_1BF93E028()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1BF93E154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC564;

  return sub_1BF8BC550();
}

uint64_t sub_1BF93E200(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E2A4;

  return sub_1BF93DF84(a1, a2);
}

uint64_t sub_1BF93E2A4()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1BF93E390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E434;

  return sub_1BF93DAFC(a1, a2);
}

uint64_t sub_1BF93E434()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_9_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_17();

  return v4(v3);
}

uint64_t sub_1BF93E52C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AD0);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E5C0()
{
  OUTLINED_FUNCTION_65();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AC8);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E688()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AF0);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E71C()
{
  OUTLINED_FUNCTION_65();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AE8);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E89C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_17_0(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.isValid(signal:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_84();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.isValidWithDebug(signal:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15(v0, v1, v2);
  OUTLINED_FUNCTION_84();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_2(v4);

  return v7(v6);
}

uint64_t sub_1BF93EC8C(uint64_t a1)
{
  result = type metadata accessor for ActionIdentifier(319);
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

_BYTE *storeEnumTagSinglePayload for CandidateSuggestionConfigurators(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF93EDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF93EE3C(uint64_t a1)
{
  result = type metadata accessor for ActionIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BF93EEE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF93EEE8()
{
  result = qword_1EDBF0540;
  if (!qword_1EDBF0540)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDBF0540);
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

uint64_t sub_1BF93EF44(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF93EF84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF93EFFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF93F03C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF93F0C4(uint64_t a1)
{
  sub_1BF93F148(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionIdentifier(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF93F148(uint64_t a1)
{
  if (!qword_1EDBF0588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8878, &unk_1BF9BC920);
    v1 = sub_1BF9B4E08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBF0588);
    }
  }
}

uint64_t sub_1BF93F208()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_1BF8F5C60;

  return sub_1BF93D418(v2, v0 + 16);
}

void *sub_1BF93F2FC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A68, &unk_1BF9C1A60);
  result = sub_1BF9B5458();
  v6 = result;
  v7 = 0;
  v26 = a3;
  v27 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v24 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v26 + 48) + 8 * v18);
      v29 = *(*(v26 + 56) + 8 * v18);

      a1(&v28, &v29);

      if (v3)
      {
        break;
      }

      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v27;
      v20 = v28;
      *(v27[6] + 8 * v18) = v19;
      *(v27[7] + 8 * v18) = v20;
      v21 = v27[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_17;
      }

      v27[2] = v23;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v27;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF93F4D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BF93F640(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t TargetOwnerDefinition.getSafeSuggestionsRepo()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DelegateOwnedSuggestionsRepository();
  (*(a2 + 16))(v13, a1, a2);
  (*(v7 + 16))(v9, v3, a1);
  result = sub_1BF940090(v9, v13, v10, a1, *(a2 + 8));
  a3[3] = v10;
  a3[4] = &protocol witness table for DelegateOwnedSuggestionsRepository;
  *a3 = result;
  return result;
}

uint64_t DelegateOwnedSuggestionsRepository.getPooledSuggestions()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t DelegateOwnedSuggestionsRepository.getOwner()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DelegateOwnedSuggestionsRepository.description.getter()
{
  sub_1BF8D2004(v0 + 56, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A80, &qword_1BF9C1B10);
  return sub_1BF9B4B08();
}

uint64_t DelegateOwnedSuggestionsRepository.getAdditionalIntentTypes()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(*(v2 + 8) + 32))(v1);
}

uint64_t DelegateOwnedSuggestionsRepository.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t DelegateOwnedSuggestionsRepository.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF93FA5C()
{
  type metadata accessor for NoOpTargetOwnerDefinition();
  swift_allocObject();
  result = sub_1BF93FAF4();
  qword_1EBDE9A78 = result;
  return result;
}

uint64_t static NoOpTargetOwnerDefinition.Instance.getter()
{
  if (qword_1EBDE81C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF93FAF4()
{
  type metadata accessor for NoOpSuggestionsRepository();
  *(v0 + 16) = swift_initStaticObject();
  type metadata accessor for NoOpSuggestionFilter();
  *(v0 + 24) = swift_initStaticObject();
  return v0;
}

uint64_t NoOpTargetOwnerDefinition.getSuggestionsRepo()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for NoOpSuggestionsRepository();
  a1[4] = &protocol witness table for NoOpSuggestionsRepository;
  *a1 = v3;
}

uint64_t NoOpTargetOwnerDefinition.getSuggestionsFilter()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for NoOpSuggestionFilter();
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = v3;
}

uint64_t NoOpTargetOwnerDefinition.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

uint64_t NoOpTargetOwnerDefinition.deinit()
{

  return v0;
}

uint64_t NoOpTargetOwnerDefinition.__deallocating_deinit()
{
  NoOpTargetOwnerDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *DefaultTargetOwnerDefinition.__allocating_init(suggestions:resolvers:owner:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BF8D2004(a3, v14);
  v6 = type metadata accessor for NoOpSuggestionFilter();
  inited = swift_initStaticObject();
  sub_1BF8D2004(v14, v13);
  v8 = swift_allocObject();
  v8[16] = v6;
  v8[17] = &protocol witness table for NoOpSuggestionFilter;
  v8[13] = inited;
  v8[7] = a2;
  v9 = type metadata accessor for DefaultSuggestionsRepository();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  v8[5] = v9;
  v8[6] = &protocol witness table for DefaultSuggestionsRepository;
  v8[2] = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1BF8C2C9C(v13, (v8 + 8));
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

void *DefaultTargetOwnerDefinition.__allocating_init(suggestions:resolvers:owner:filter:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1BF940138(a1, a2, a3, v13, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

void *DefaultTargetOwnerDefinition.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t DefaultTargetOwnerDefinition.__deallocating_deinit()
{
  DefaultTargetOwnerDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1BF940090(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v9 = swift_allocObject();
  sub_1BF8C2C9C(&v11, v9 + 16);
  sub_1BF8C2C9C(a2, v9 + 56);
  return v9;
}

void *sub_1BF940138(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v12 + 32))(&v23 - v16, v18, v19);
  sub_1BF8D2004(a3, v24);
  v20 = swift_allocObject();
  (*(v12 + 16))(v15, v17, a6);
  v21 = sub_1BF94039C(a1, a2, v24, v15, MEMORY[0x1E69E7CC0], v20, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v12 + 8))(v17, a6);
  return v21;
}

void *sub_1BF94039C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  a6[16] = a7;
  a6[17] = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a6 + 13);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a7);
  a6[7] = a2;
  v16 = type metadata accessor for DefaultSuggestionsRepository();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a5;
  a6[5] = v16;
  a6[6] = &protocol witness table for DefaultSuggestionsRepository;
  a6[2] = v17;
  sub_1BF8C2C9C(a3, (a6 + 8));
  return a6;
}

uint64_t Context.setIntentQuery(_:)()
{
  OUTLINED_FUNCTION_7();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v6 = sub_1BF9B4E28();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF9404E8, v6, v5);
}

uint64_t sub_1BF9404E8()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[19];
  OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v2);
  v3 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v3 + 8));
  OUTLINED_FUNCTION_11();
  (*(v4 + 16))();
  v0[15] = type metadata accessor for SiriSuggestions.IntentQuery(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_16_9();
  sub_1BF943A54(v1, v5, v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_58_3(v0 + 7, v7, 0xED00007972657551, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  v8 = OUTLINED_FUNCTION_88();
  v0[25] = v9(v8);
  v0[26] = v10;
  v0[27] = swift_getObjectType();
  OUTLINED_FUNCTION_45_4();
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v11 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF940628()
{
  OUTLINED_FUNCTION_7();
  GenerationContext.addIntentQuery(_:)();
  swift_unknownObjectRelease();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1BF940698, v1, v2);
}

uint64_t sub_1BF940698()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  sub_1BF9439F0(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_1BF94074C;

  return Context.setIntentType(_:)();
}

uint64_t sub_1BF94074C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *v3 = *v0;

  sub_1BF8F5A94(v1[16], v1[17], *(v2 + 144));
  v4 = v1[24];
  v5 = v1[23];

  return MEMORY[0x1EEE6DFA0](sub_1BF940898, v5, v4);
}

uint64_t sub_1BF940898()
{
  OUTLINED_FUNCTION_7();
  v7 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 32);
    v6 = 3;
    Context.setAppId(_:party:)(*(&v2 - 1), &v6);
  }

  OUTLINED_FUNCTION_77();

  return v4();
}

Swift::Void __swiftcall Context.setSuggestionParameters(from:)(Swift::OpaquePointer from)
{
  Context.getTargetOwner()(v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6[3] = v2;
  v6[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_47_2();
  v4();
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A88, &qword_1BF9C1CF0);
  v5[0] = from._rawValue;

  OUTLINED_FUNCTION_58_3(v6, 0xD000000000000012, 0x80000001BF9CC840, v5);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t Context.setIntent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_72(v5);
  v4[20] = swift_task_alloc();
  OUTLINED_FUNCTION_45_4();
  v7 = sub_1BF9B4E28();
  v4[21] = v7;
  v4[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF940ACC, v7, v6);
}

uint64_t sub_1BF940ACC()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[16];
  OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v2);
  v3 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v3 + 8));
  OUTLINED_FUNCTION_11();
  (*(v4 + 16))();
  v0[15] = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_15_13();
  sub_1BF943A54(v1, v5, v6);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_58_3(v0 + 7, v7, 0xE800000000000000, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  v8 = OUTLINED_FUNCTION_88();
  v0[23] = v9(v8);
  v0[24] = v10;
  v0[25] = swift_getObjectType();
  OUTLINED_FUNCTION_45_4();
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v11 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF940C00()
{
  OUTLINED_FUNCTION_7();
  GenerationContext.addIntent(_:)();
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BF940C70, v1, v2);
}

uint64_t sub_1BF940C70()
{
  OUTLINED_FUNCTION_7();
  SiriSuggestions.Intent.getIntentQuery()();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1BF940D10;

  return Context.setIntentQuery(_:)();
}

uint64_t sub_1BF940D10()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 160);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v1, v4);

  OUTLINED_FUNCTION_77();

  return v5();
}

id Intent.migrateToV2()()
{
  v2 = OUTLINED_FUNCTION_31_8();
  if (v3)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = v2;

    *v0 = v6;
    v0[1] = v5;
    v0[2] = v4;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SiriSuggestions.Intent(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v0 = v2;
    v8 = v2;
    type metadata accessor for SiriSuggestions.Intent(0);
    swift_storeEnumTagMultiPayload();

    return v8;
  }
}

uint64_t ActionIdentifier.description.getter()
{
  type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_17();
  v3 = v2 - v1;
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_1_17();
  v8 = OUTLINED_FUNCTION_36_6();
  sub_1BF943A54(v8, v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF944EC4(v7, v3, type metadata accessor for SiriSuggestions.IntentQuery);
      MEMORY[0x1BFB5DE90](0x7551746E65746E69, 0xEC00000028797265);
      sub_1BF9B5378();
      MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
      v12 = 0;
      OUTLINED_FUNCTION_0_16();
      sub_1BF944BC8(v3, v13);
    }

    else
    {
      v15 = *(v7 + 8);
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(v7 + 32);
      v19 = *(v7 + 40);
      v24[0] = *v7;
      v24[1] = v15;
      v24[2] = v16;
      v24[3] = v17;
      v24[4] = v18;
      v25 = v19;
      v20 = IntentType.description.getter();
      MEMORY[0x1BFB5DE90](v20);

      MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
      v21 = OUTLINED_FUNCTION_36();
      sub_1BF8F5AAC(v21, v22, v16, v17, v18, v19);
      return 0x6449646E65746E69;
    }
  }

  else
  {
    sub_1BF9B5288();

    strcpy(v24, "suggestionId(");
    HIWORD(v24[1]) = -4864;
    v14 = OUTLINED_FUNCTION_36();
    MEMORY[0x1BFB5DE90](v14);

    MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
    return v24[0];
  }

  return v12;
}

BOOL static ActionIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v5 = OUTLINED_FUNCTION_72(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v59 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A90, &unk_1BF9C1D00);
  OUTLINED_FUNCTION_72(v18);
  OUTLINED_FUNCTION_9();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v59 - v21;
  v23 = v59 + *(v20 + 56) - v21;
  sub_1BF943A54(a1, v59 - v21, type metadata accessor for ActionIdentifier);
  sub_1BF943A54(a2, v23, type metadata accessor for ActionIdentifier);
  OUTLINED_FUNCTION_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_17();
    sub_1BF943A54(v22, v17, v30);
    v32 = *v17;
    v31 = v17[1];
    OUTLINED_FUNCTION_49_2();
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_16:
      sub_1BF8DFBF0(v22, &qword_1EBDE9A90, &unk_1BF9C1D00);
      return 0;
    }

    if (v32 == *v23 && v31 == *(v23 + 1))
    {
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      v57 = sub_1BF9B56D8();

      if ((v57 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_1_17();
    sub_1BF943A54(v22, v12, v33);
    v35 = *v12;
    v34 = *(v12 + 1);
    v37 = *(v12 + 2);
    v36 = *(v12 + 3);
    v38 = *(v12 + 4);
    v39 = v12[40];
    OUTLINED_FUNCTION_49_2();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1BF8F5AAC(v35, v34, v37, v36, v38, v39);
      goto LABEL_16;
    }

    v40 = v38;
    v41 = v36;
    v42 = v37;
    v43 = v34;
    v44 = v35;
    v45 = *v23;
    v46 = *(v23 + 1);
    v48 = *(v23 + 2);
    v47 = *(v23 + 3);
    v49 = *(v23 + 4);
    v50 = v23[40];
    v59[1] = v44;
    v59[2] = v43;
    v62 = v44;
    v63 = v43;
    v59[3] = v42;
    v59[4] = v41;
    v64 = v42;
    v65 = v41;
    v59[5] = v40;
    v66 = v40;
    v60 = v39;
    v67 = v39;
    v51 = IntentType.toString()();
    v61 = v45;
    v62 = v45;
    v63 = v46;
    v64 = v48;
    v65 = v47;
    v66 = v49;
    v67 = v50;
    v52 = IntentType.toString()();
    if (v51._countAndFlagsBits != v52._countAndFlagsBits || v51._object != v52._object)
    {
      OUTLINED_FUNCTION_49_2();
      v54 = sub_1BF9B56D8();

      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_55_3();
      if (v54)
      {
        goto LABEL_26;
      }

LABEL_23:
      OUTLINED_FUNCTION_5_13();
      return 0;
    }

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_55_3();
LABEL_26:
    OUTLINED_FUNCTION_5_13();
    return 1;
  }

  OUTLINED_FUNCTION_1_17();
  sub_1BF943A54(v22, v15, v25);
  OUTLINED_FUNCTION_49_2();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_16();
    sub_1BF944BC8(v15, v55);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v23, v8, v26);
  v27 = OUTLINED_FUNCTION_36_6();
  v29 = static SiriSuggestions.IntentQuery.== infix(_:_:)(v27, v28);
  sub_1BF944BC8(v8, type metadata accessor for SiriSuggestions.IntentQuery);
  sub_1BF944BC8(v15, type metadata accessor for SiriSuggestions.IntentQuery);
  OUTLINED_FUNCTION_5_13();
  return v29;
}

void Intent.getType()()
{
  v2 = OUTLINED_FUNCTION_31_8();
  if (v3)
  {
    v18 = v2;
    v19 = *(v1 + 8);
    v20 = *(v1 + 16);
    if (v3 == 1)
    {
      LOBYTE(v21) = 1;
    }

    else
    {
      LOBYTE(v21) = 2;
    }

    v4 = sub_1BF9415EC(v2, *(v1 + 8), *(v1 + 16), &v22);
    OUTLINED_FUNCTION_53_4(v4, v5, v6, v7, v8, v9, v10, v11, v12, v18, v19, v20, v21, v13, v22, v23);
    *(v0 + 40) = 2;
  }

  else
  {
    v14 = [v2 typeName];
    v15 = sub_1BF9B4AA8();
    v17 = v16;

    *v0 = v15;
    *(v0 + 8) = v17;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 16) = 0;
    *(v0 + 40) = 0;
  }
}

uint64_t sub_1BF9415EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v50 = a4;
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  v7 = [a1 identifier];
  v8 = sub_1BF9B4AA8();
  v10 = v9;

  v11 = sub_1BF988720(v8, v10);

  if (a3)
  {
    v12 = sub_1BF9886D8(a2, a3);

    v11 = v12;
  }

  v13 = [a1 parameters];
  sub_1BF8BE93C(0, &qword_1EBDE9650, 0x1E69AC948);
  v14 = sub_1BF9B4D08();

  v54 = v14;
  result = sub_1BF965210();
  v53 = result;
  if (result)
  {
    if (v53 >= 1)
    {
      v17 = 0;
      v52 = v54 & 0xC000000000000001;
      v18 = 0x1E80F9000uLL;
      *&v16 = 136315394;
      v51 = v16;
      while (1)
      {
        if (v52)
        {
          v19 = MEMORY[0x1BFB5E5E0](v17, v54);
        }

        else
        {
          v19 = *(v54 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 identifier];
        v22 = sub_1BF9B4AA8();
        v24 = v23;

        v25 = [v20 *(v18 + 3544)];
        if (v25)
        {
          v26 = v25;
          ObjectType = swift_getObjectType();
          v61 = &protocol witness table for LNValue;
          *&v59 = v26;
          swift_beginAccess();
          sub_1BF8C2C9C(&v59, v55);
          v27 = v56;
          v28 = v57;
          v29 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
          MEMORY[0x1EEE9AC00](v29);
          v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v32 + 16))(v31);
          v33 = v26;

          v34 = v27;
          v18 = 0x1E80F9000;
          sub_1BF93790C(v31, v22, v24, (v11 + 48), v34, v28);
          __swift_destroy_boxed_opaque_existential_1(v55);

          swift_endAccess();
        }

        else
        {
          if (qword_1EDBF5568 != -1)
          {
            swift_once();
          }

          v35 = sub_1BF9B47C8();
          __swift_project_value_buffer(v35, qword_1EDBF5570);

          v36 = v20;
          v33 = sub_1BF9B47A8();
          v37 = sub_1BF9B5038();

          if (os_log_type_enabled(v33, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v55[0] = v39;
            *v38 = v51;
            v40 = sub_1BF8DE810(v22, v24, v55);

            *(v38 + 4) = v40;
            *(v38 + 12) = 2080;
            v41 = [v36 value];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 value];
              sub_1BF9B51C8();
              swift_unknownObjectRelease();
              __swift_project_boxed_opaque_existential_1(&v59, ObjectType);
              DynamicType = swift_getDynamicType();
              __swift_destroy_boxed_opaque_existential_1(&v59);
              v58 = DynamicType;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AF0, &qword_1BF9C22C8);
              v45 = sub_1BF9B4B08();
              v47 = v46;
            }

            else
            {
              v45 = 0x756C61566F4E2323;
              v47 = 0xEE00232374655365;
            }

            v48 = sub_1BF8DE810(v45, v47, v55);

            *(v38 + 14) = v48;
            _os_log_impl(&dword_1BF8B8000, v33, v37, "Excluding parameter %s in IntentType as it does not conform to DisplayRepresentable - type: %s", v38, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5F320](v39, -1, -1);
            MEMORY[0x1BFB5F320](v38, -1, -1);

            v18 = 0x1E80F9000;
            goto LABEL_18;
          }
        }

LABEL_18:
        if (v53 == ++v17)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    sub_1BF9888CC(v50);
  }

  return result;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall Intent.getAppIdDetails()()
{
  v1 = OUTLINED_FUNCTION_31_8();
  if (v2)
  {
    Intent.getType()();
    IntentType.getAppIdDetails()();
    sub_1BF8F5AAC(v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v3 = sub_1BF944D50(v1);
    if (v4)
    {
      v7 = v3;
      v8 = v4;
      v3 = sub_1BF9B4C08();
      if (v3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 2;
      }

      *v0 = v7;
      *(v0 + 8) = v8;
      *(v0 + 16) = v9;
    }

    else
    {
      *v0 = 0;
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
    }
  }

  result.value.appId._object = v4;
  result.value.appId._countAndFlagsBits = v3;
  result.is_nil = v6;
  result.value.party = v5;
  return result;
}

void Intent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B20, &qword_1BF9B8638);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8DF5A8();
  sub_1BF9B5868();
  if (!v0)
  {
    v8 = sub_1BF9B5568();
    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);

      if (v9)
      {
        sub_1BF8D8230();
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v11 = v18;
          v19 = *(v6 + 8);
          swift_unknownObjectRetain();
          v20 = OUTLINED_FUNCTION_26();
          v19(v20);
          swift_unknownObjectRelease();
          v15 = v25;
          v14 = v24;
          goto LABEL_12;
        }
      }

      else
      {
        sub_1BF8D7F58();
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          v12 = OUTLINED_FUNCTION_26();
          v13(v12);
          v14 = 0;
          v15 = 0;
LABEL_12:
          *v4 = v11;
          *(v4 + 8) = v14;
          *(v4 + 16) = v15;
          *(v4 + 24) = v9;
          goto LABEL_9;
        }
      }

      swift_unknownObjectRelease();
      sub_1BF9B5308();
      swift_allocError();
      v22 = v21;
      sub_1BF9B54B8();
      sub_1BF9B52F8();
      OUTLINED_FUNCTION_11();
      (*(v23 + 104))(v22);
    }

    else
    {

      sub_1BF944DAC();
      swift_allocError();
    }

    swift_willThrow();
    v16 = OUTLINED_FUNCTION_26();
    v17(v16);
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

void Intent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B18, &qword_1BF9B8630);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = *v0;
  v17 = *(v0 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8DF5A8();
  sub_1BF9B5898();
  if (v10)
  {
    v19 = &type metadata for Intent.TransportAppIntent;
    v11 = sub_1BF944E00();
    v18[0] = v8;
    v18[1] = v17;
    v20 = v11;
    v18[2] = v9;

    v12 = v8;
    v13 = v7;
    v14 = 2;
  }

  else
  {
    v19 = &type metadata for NSCodingAdaptor;
    v20 = sub_1BF920C90();
    v18[0] = v8;
    v15 = v8;
    v13 = v7;
    v14 = 0;
  }

  sub_1BF8DA4AC(v13, v14, v18);
  (*(v4 + 8))(v7, v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_37();
}

void sub_1BF9420EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AD8, &qword_1BF9C22B8);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v31 - v28;
  v30 = *(v20 + 8);
  v31[1] = *(v20 + 16);
  v31[2] = v30;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1BF9455BC();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  v33 = 0;
  sub_1BF920C90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();
  if (!v21)
  {
    v32 = 1;
    sub_1BF9B55F8();
  }

  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_37();
}

void sub_1BF942268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AE8, &qword_1BF9C22C0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1BF9455BC();
  sub_1BF9B5868();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BF920BE8();
    sub_1BF9B5558();
    v16 = sub_1BF9B5518();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_22();
    v20(v19);
    *v14 = a10;
    v14[1] = v16;
    v14[2] = v18;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v12);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF94244C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_70(0x746E65746E496E69, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_70(0x6E65746E49707061, 0xE900000000000074) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65746E49707061 && a2 == 0xEB00000000325674)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70(0x6E65746E49707061, 0xEB00000000325674);

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

uint64_t sub_1BF942544(char a1)
{
  if (a1)
  {
    return 0x6E65746E49707061;
  }

  else
  {
    return 0x746E65746E496E69;
  }
}

uint64_t sub_1BF9425A8(uint64_t a1)
{
  v2 = sub_1BF9455BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9425E4(uint64_t a1)
{
  v2 = sub_1BF9455BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF942658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF94244C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF942680(uint64_t a1)
{
  v2 = sub_1BF8DF5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9426BC(uint64_t a1)
{
  v2 = sub_1BF8DF5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Intent.IntentDecodingErrors.hashValue.getter()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t Intent.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_57_4();

    OUTLINED_FUNCTION_20_10();
    v6 = [v1 identifier];
    v7 = sub_1BF9B4AA8();
    v9 = v8;

    MEMORY[0x1BFB5DE90](v7, v9);

    MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
    v10 = OUTLINED_FUNCTION_36();
    MEMORY[0x1BFB5DE90](v10);
  }

  else
  {
    v12 = 0x6E65746E496E692ELL;
    v2 = [v1 typeName];
    v3 = sub_1BF9B4AA8();
    v5 = v4;

    MEMORY[0x1BFB5DE90](v3, v5);
  }

  return v12;
}

uint64_t static Intent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      v23 = OUTLINED_FUNCTION_4_16();
      sub_1BF90DA94(v23, v24, v25, 0);
      v26 = OUTLINED_FUNCTION_2_19();
      sub_1BF90DA94(v26, v27, v28, 0);
      v15 = sub_1BF9B50B8();
      v29 = OUTLINED_FUNCTION_2_19();
      sub_1BF90D8B8(v29, v30, v31, 0);
      v19 = OUTLINED_FUNCTION_4_16();
      v22 = 0;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      v32 = OUTLINED_FUNCTION_4_16();
      sub_1BF90DA94(v32, v33, v34, 2);
      v35 = OUTLINED_FUNCTION_2_19();
      sub_1BF90DA94(v35, v36, v37, 2);
      if (sub_1BF9B50B8())
      {
        if (v2 != v5 || v3 != v6)
        {
          OUTLINED_FUNCTION_19_0();
          v15 = sub_1BF9B56D8();
          v39 = OUTLINED_FUNCTION_2_19();
          sub_1BF90D8B8(v39, v40, v41, 2);
          v19 = OUTLINED_FUNCTION_4_16();
          v22 = 2;
          goto LABEL_19;
        }

        v69 = OUTLINED_FUNCTION_2_19();
        sub_1BF90D8B8(v69, v70, v71, 2);
        OUTLINED_FUNCTION_47_2();
        sub_1BF90D8B8(v72, v73, v74, 2);
        return 1;
      }

      v60 = OUTLINED_FUNCTION_2_19();
      sub_1BF90D8B8(v60, v61, v62, 2);
      v52 = OUTLINED_FUNCTION_4_16();
      v55 = 2;
LABEL_21:
      sub_1BF90D8B8(v52, v53, v54, v55);
      return 0;
    }

LABEL_20:
    v43 = OUTLINED_FUNCTION_4_16();
    sub_1BF90DA94(v43, v44, v45, v7);
    v46 = OUTLINED_FUNCTION_2_19();
    sub_1BF90DA94(v46, v47, v48, v4);
    v49 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v49, v50, v51, v4);
    v52 = OUTLINED_FUNCTION_4_16();
    v55 = v7;
    goto LABEL_21;
  }

  if (v7 != 1)
  {
    goto LABEL_20;
  }

  sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
  v8 = OUTLINED_FUNCTION_4_16();
  sub_1BF90DA94(v8, v9, v10, 1);
  v11 = OUTLINED_FUNCTION_2_19();
  sub_1BF90DA94(v11, v12, v13, 1);
  if ((sub_1BF9B50B8() & 1) == 0)
  {
    v57 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v57, v58, v59, 1);
    v52 = OUTLINED_FUNCTION_4_16();
    v55 = 1;
    goto LABEL_21;
  }

  if (v2 != v5 || v3 != v6)
  {
    OUTLINED_FUNCTION_19_0();
    v15 = sub_1BF9B56D8();
    v16 = OUTLINED_FUNCTION_2_19();
    sub_1BF90D8B8(v16, v17, v18, 1);
    v19 = OUTLINED_FUNCTION_4_16();
    v22 = 1;
LABEL_19:
    sub_1BF90D8B8(v19, v20, v21, v22);
    return v15 & 1;
  }

  v56 = 1;
  v63 = OUTLINED_FUNCTION_2_19();
  sub_1BF90D8B8(v63, v64, v65, 1);
  OUTLINED_FUNCTION_47_2();
  sub_1BF90D8B8(v66, v67, v68, 1);
  return v56;
}

uint64_t Context.getIntentParameter(name:)()
{
  OUTLINED_FUNCTION_26_7();
  v2 = v1;
  Context.getTargetOwner()(v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v3;
  v9[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_11();
  (*(v5 + 16))();
  OUTLINED_FUNCTION_19_0();
  v6 = sub_1BF942CAC();
  Context.getParam(for:key:)(v9, v6, v7, v0, v2);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t Context.getIntentType()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  Context.getTargetOwner()(v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v20[3] = v5;
  v20[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v20);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_47_2();
  v7();
  OUTLINED_FUNCTION_6_11();
  v15 = OUTLINED_FUNCTION_44_4(v8, v9, 0xEC00000065707954, v10, v11, v12, v13, v14, v20[0]);
  Context.getParam(for:key:)(v15, v16, v17, a1, v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v25)
  {
    result = sub_1BF8DFBF0(v24, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_43_4();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1BF942E44()
{
  OUTLINED_FUNCTION_26_7();
  v4 = v3;
  Context.getTargetOwner()(v25);
  v5 = v26;
  v6 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v24[3] = v5;
  v24[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_11();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_6_11();
  v16 = OUTLINED_FUNCTION_44_4(v8, v9, v10, v11, v12, v13, v14, v15, v24[0]);
  Context.getParam(for:key:)(v16, v17, v1, v2, v18);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v29)
  {
    v19 = v0(0);
    OUTLINED_FUNCTION_43_4();
    v20 = swift_dynamicCast() ^ 1;
    v21 = v4;
    v22 = v19;
  }

  else
  {
    sub_1BF8DFBF0(v28, &qword_1EBDE9208, &unk_1BF9C2A50);
    v22 = v0(0);
    v21 = v4;
    v20 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v21, v20, 1, v22);
}

Swift::String_optional __swiftcall Context.getIntentTitleFallback()()
{
  v1 = v0;
  Context.getTargetOwner()(v28);
  v2 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  OUTLINED_FUNCTION_41_3(v2, v3, v4, v5, v6, v7, v8, v9, v27[0], v27[1], v27[2], v27[3], v27[4]);
  OUTLINED_FUNCTION_11();
  v11 = (*(v10 + 16))();
  v19 = OUTLINED_FUNCTION_44_4(v11, v12, v13, v14, v15, v16, v17, v18, v27[0]);
  Context.getParam(for:key:)(v19, 0xD000000000000015, v20 | 0x8000000000000000, v1, v21);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v30)
  {
    OUTLINED_FUNCTION_43_4();
    v22 = swift_dynamicCast();
    v23 = v22 == 0;
    if (v22)
    {
      v24 = v28[0];
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v28[1];
    }
  }

  else
  {
    sub_1BF8DFBF0(v29, &qword_1EBDE9208, &unk_1BF9C2A50);
    v24 = 0;
    v25 = 0;
  }

  result.value._object = v25;
  result.value._countAndFlagsBits = v24;
  return result;
}

uint64_t Context.getIntentType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AA8, &qword_1BF9C1D10);
  v7 = OUTLINED_FUNCTION_72(v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  Context.getIntentQuery()(a1, a2);
  sub_1BF944E54(v12, v10);
  v13 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    v14 = OUTLINED_FUNCTION_36_6();
    sub_1BF8DFBF0(v14, v15, &qword_1BF9C1D10);
    result = sub_1BF8DFBF0(v10, &qword_1EBDE9AA8, &qword_1BF9C1D10);
    v17 = 0;
    v18 = 0uLL;
    v19 = -1;
    v20 = 0uLL;
  }

  else
  {
    SiriSuggestions.IntentQuery.toV1Representation()(v22);
    sub_1BF8DFBF0(v12, &qword_1EBDE9AA8, &qword_1BF9C1D10);
    OUTLINED_FUNCTION_0_16();
    result = sub_1BF944BC8(v10, v21);
    v18 = v22[0];
    v20 = v22[1];
    v17 = v23;
    v19 = v24;
  }

  *a3 = v18;
  *(a3 + 16) = v20;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Context.getSuggestionParameters()()
{
  v1 = v0;
  Context.getTargetOwner()(v25);
  v2 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_41_3(v2, v3, v4, v5, v6, v7, v8, v9, v24[0], v24[1], v24[2], v24[3], v24[4]);
  OUTLINED_FUNCTION_11();
  v11 = (*(v10 + 16))();
  v19 = OUTLINED_FUNCTION_44_4(v11, v12, v13, v14, v15, v16, v17, v18, v24[0]);
  Context.getParam(for:key:)(v19, 0xD000000000000012, v20 | 0x8000000000000000, v1, v21);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A88, &qword_1BF9C1CF0);
    OUTLINED_FUNCTION_43_4();
    if (swift_dynamicCast())
    {
      v23 = v25[0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1BF8DFBF0(v26, &qword_1EBDE9208, &unk_1BF9C2A50);
    v23 = 0;
  }

  result.value._rawValue = v23;
  result.is_nil = v22;
  return result;
}

uint64_t Context.setIntentParam(name:value:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Context.getTargetOwner()(v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v8;
  v18[4] = *(v9 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_11();
  (*(v10 + 16))();
  OUTLINED_FUNCTION_22();
  v11 = sub_1BF942CAC();
  v13 = v12;
  v14 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v17[3] = v14;
  __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_11();
  (*(v15 + 16))();
  Context.setParam(for:key:value:)(v18, v11, v13, v17, a4, a5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t GenerationContext.addIntent(_:)()
{
  v1 = OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for SiriSuggestions.Intent(v1) - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_36();
  v6 = GenerationContext.getIntents()();
  OUTLINED_FUNCTION_15_13();
  v7 = OUTLINED_FUNCTION_22();
  sub_1BF943A54(v7, v8, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = OUTLINED_FUNCTION_28_0();
    sub_1BF8DDBD4(v16, v17, v18, v6);
    v6 = v19;
  }

  v10 = *(v6 + 24);
  if (*(v6 + 16) >= v10 >> 1)
  {
    v20 = OUTLINED_FUNCTION_34_5(v10);
    sub_1BF8DDBD4(v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_23_10();
  sub_1BF944EC4(v5, v11, type metadata accessor for SiriSuggestions.Intent);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB0, &qword_1BF9C1D18);
  v13 = OUTLINED_FUNCTION_21_9(v12);
  v14(v13);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return v0(v24, 0);
}

uint64_t GenerationContext.addIntentQuery(_:)()
{
  v1 = OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for SiriSuggestions.IntentQuery(v1) - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_36();
  v6 = GenerationContext.getIntentQueries()();
  OUTLINED_FUNCTION_16_9();
  v7 = OUTLINED_FUNCTION_22();
  sub_1BF943A54(v7, v8, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_28_0();
    sub_1BF8DDAE0(v17, v18, v19, v6);
    v6 = v20;
  }

  v10 = *(v6 + 24);
  if (*(v6 + 16) >= v10 >> 1)
  {
    v21 = OUTLINED_FUNCTION_34_5(v10);
    sub_1BF8DDAE0(v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v5, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
  v14 = OUTLINED_FUNCTION_21_9(v13);
  v15(v14);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return v0(v25, 0);
}

uint64_t Context.setIntentType(_:)()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 128) = v3;
  *(v1 + 152) = *v4;
  *(v1 + 192) = *(v4 + 16);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF943810()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  v5 = *(v0 + 192);
  OUTLINED_FUNCTION_22();
  Context.getTargetOwner()(v6);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  *(v0 + 80) = v7;
  OUTLINED_FUNCTION_59_4(*(v8 + 8));
  OUTLINED_FUNCTION_11();
  (*(v9 + 16))();
  *(v0 + 120) = &type metadata for SiriSuggestions.IntentType;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  *(v0 + 112) = v5;
  v10 = OUTLINED_FUNCTION_88();
  sub_1BF9439F0(v10, v11, v5);
  OUTLINED_FUNCTION_6_11();
  Context.setParam(for:key:value:)((v0 + 56), v12, 0xEC00000065707954, (v0 + 96), v4, v3);
  OUTLINED_FUNCTION_27_3((v0 + 96));
  v13 = OUTLINED_FUNCTION_22();
  *(v0 + 168) = v14(v13);
  *(v0 + 176) = v15;
  *(v0 + 184) = swift_getObjectType();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v5;
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v16 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BF943988()
{
  OUTLINED_FUNCTION_7();
  GenerationContext.addIntentType(_:)(v0 + 16, *(v0 + 184), *(v0 + 176));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v1();
}

uint64_t sub_1BF9439F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ActionIdentifier(uint64_t a1)
{
  result = qword_1EDBF3290;
  if (!qword_1EDBF3290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF943A54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);
  return a2;
}

uint64_t GenerationContext.addIntentType(_:)(uint64_t a1, uint64_t (*a2)(void *, void), uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = GenerationContext.getIntentTypes()();
  sub_1BF9439F0(v5, v6, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_28_0();
    sub_1BF8DDB20();
    v8 = v12;
  }

  v9 = *(v8 + 16);
  if (v9 >= *(v8 + 24) >> 1)
  {
    sub_1BF8DDB20();
    v8 = v13;
  }

  *(v8 + 16) = v9 + 1;
  v10 = v8 + 24 * v9;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  v14[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AC0, &qword_1BF9C1D28);
  v14[4] = v8;
  (*(*(a3 + 8) + 32))(v14, a2);
  OUTLINED_FUNCTION_51_3();
  sub_1BF9326D8();
  return a2(v14, 0);
}

uint64_t Context.setIntentTitleFallback(_:)()
{
  OUTLINED_FUNCTION_7();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v6 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF943C78()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[16];
  OUTLINED_FUNCTION_88();
  Context.getTargetOwner()(v3);
  v4 = v0[6];
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_59_4(*(v4 + 8));
  OUTLINED_FUNCTION_11();
  (*(v5 + 16))();
  v0[15] = MEMORY[0x1E69E6158];
  v0[12] = v2;
  v0[13] = v1;

  OUTLINED_FUNCTION_58_3(v0 + 7, 0xD000000000000015, 0x80000001BF9CC860, v0 + 12);
  OUTLINED_FUNCTION_27_3(v0 + 12);
  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t Context.setIntentType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  OUTLINED_FUNCTION_72(v6);
  *(v4 + 40) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v4 + 48) = *a1;
  *(v4 + 64) = v7;
  *(v4 + 80) = *(a1 + 32);
  *(v4 + 112) = *(a1 + 40);
  OUTLINED_FUNCTION_45_4();
  v9 = sub_1BF9B4E28();
  *(v4 + 88) = v9;
  *(v4 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BF943E50, v9, v8);
}

uint64_t sub_1BF943E50()
{
  OUTLINED_FUNCTION_45();
  IntentType.toV2Reprensentation()(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BF943F08;

  return Context.setIntentQuery(_:)();
}

uint64_t sub_1BF943F08()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BF94401C, v5, v4);
}

uint64_t sub_1BF94401C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v1, v2);

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t GenerationContext.getIntentTypes()()
{
  OUTLINED_FUNCTION_18_9();
  v1();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000016, v2, v0, v3);

  if (v8)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AC0, &qword_1BF9C1D28);
    if (OUTLINED_FUNCTION_25_7(v4))
    {
      return v6;
    }
  }

  else
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t GenerationContext.getIntents()()
{
  OUTLINED_FUNCTION_18_9();
  v1();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000012, v2, v0, v3);

  if (v8)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB0, &qword_1BF9C1D18);
    if (OUTLINED_FUNCTION_25_7(v4))
    {
      return v6;
    }
  }

  else
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t GenerationContext.getIntentQueries()()
{
  OUTLINED_FUNCTION_18_9();
  v1();
  OUTLINED_FUNCTION_29_4();
  sub_1BF925088(0xD000000000000017, v2, v0, v3);

  if (v8)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AB8, &qword_1BF9C1D20);
    if (OUTLINED_FUNCTION_25_7(v4))
    {
      return v6;
    }
  }

  else
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t static ActionIdentifier.< infix(_:_:)()
{
  v0 = ActionIdentifier.description.getter();
  v2 = v1;
  if (v0 == ActionIdentifier.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_88();
    v5 = sub_1BF9B56D8();
  }

  return v5 & 1;
}

void ActionIdentifier.hash(into:)(uint64_t a1)
{
  v1 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v2 = OUTLINED_FUNCTION_72(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v4 - v3;
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_1_17();
  v10 = OUTLINED_FUNCTION_36_6();
  sub_1BF943A54(v10, v11, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1BFB5EAC0](0);
    OUTLINED_FUNCTION_36();
    sub_1BF9B4B48();

    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = *v9;
    v18 = *(v9 + 8);
    v19 = *(v9 + 16);
    v20 = *(v9 + 24);
    v21 = *(v9 + 32);
    v22 = *(v9 + 40);
    MEMORY[0x1BFB5EAC0](2);
    v23 = IntentType.toString()();
    OUTLINED_FUNCTION_29(v23._countAndFlagsBits, v23._object);

    sub_1BF8F5AAC(v17, v18, v19, v20, v21, v22);
    return;
  }

  OUTLINED_FUNCTION_3_18();
  sub_1BF944EC4(v9, v5, v14);
  MEMORY[0x1BFB5EAC0](1);
  if (!*(v5 + 24))
  {
    if (!*(v5 + 16))
    {
      sub_1BF9B57C8();
      goto LABEL_11;
    }

    sub_1BF9B57C8();
    goto LABEL_10;
  }

  if (*(v5 + 24) != 1)
  {
LABEL_10:
    sub_1BF9B4B48();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  v15 = sub_1BF9B4B08();
  OUTLINED_FUNCTION_29(v15, v16);

LABEL_11:
  OUTLINED_FUNCTION_0_16();
  sub_1BF944BC8(v5, v24);
}

uint64_t ActionIdentifier.hashValue.getter()
{
  sub_1BF9B57A8();
  ActionIdentifier.hash(into:)(v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF944584(uint64_t a1)
{
  sub_1BF9B57A8();
  ActionIdentifier.hash(into:)(v2);
  return sub_1BF9B57E8();
}

id SuggestionsIntent.intentName.getter()
{
  v1 = OUTLINED_FUNCTION_42_5();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  v7 = *(v0 + 56);
  *(v3 + 40) = v7;
  return sub_1BF944F20(v1, v2, v4, v5, v6, v7);
}

__n128 SuggestionsIntent.__allocating_init(intentName:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  v4 = sub_1BF9B4988();
  OUTLINED_FUNCTION_17_1();
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 80) = v4;
  return result;
}

uint64_t SuggestionsIntent.__allocating_init(intentName:verb:intentProps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_26();
  SuggestionsIntent.init(intentName:verb:intentProps:)(v7, v8, a3, a4);
  return v6;
}

uint64_t SuggestionsIntent.init(intentName:verb:intentProps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  *(v4 + 80) = a4;
  return v4;
}

double sub_1BF94474C@<D0>(uint64_t a1@<X8>)
{
  sub_1BF9447F4(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

double sub_1BF944798(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v8 = v5;
  sub_1BF944F20(v7[0], v1, v2, v3, v4, v5);
  *&result = sub_1BF94484C(v7).n128_u64[0];
  return result;
}

id sub_1BF9447F4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_42_5();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v1 + 56);
  *(a1 + 40) = v8;
  return sub_1BF944F20(v3, v4, v5, v6, v7, v8);
}

__n128 sub_1BF94484C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_42_5();
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  v7 = *(v1 + 56);
  *(v1 + 56) = v4;
  sub_1BF8F5AAC(v5, v8, v9, v10, v11, v7);
  return result;
}

uint64_t SuggestionsIntentBuilder.__allocating_init(intentName:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1();
  v2 = swift_allocObject();
  SuggestionsIntentBuilder.init(intentName:)(a1);
  return v2;
}

uint64_t SuggestionsIntentBuilder.init(intentName:)(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
  *(v1 + 80) = sub_1BF9B4988();
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return v1;
}

uint64_t sub_1BF9449BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1BF944A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF8D7914(a3, v4);
  swift_beginAccess();

  sub_1BF9328C4();
  swift_endAccess();
}

uint64_t sub_1BF944A88()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  swift_beginAccess();
  v9 = *(v0 + 80);
  type metadata accessor for SuggestionsIntent();
  v10 = swift_allocObject();
  *(v10 + 64) = v7;
  *(v10 + 72) = v6;
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  *(v10 + 32) = v3;
  *(v10 + 40) = v4;
  *(v10 + 48) = v5;
  *(v10 + 56) = v8;
  *(v10 + 80) = v9;
  v11 = OUTLINED_FUNCTION_36();
  sub_1BF944F20(v11, v12, v3, v4, v5, v8);

  return v10;
}

uint64_t sub_1BF944B68()
{
  v1 = OUTLINED_FUNCTION_42_5();
  sub_1BF8F5AAC(v1, v2, v3, v4, v5, *(v0 + 56));

  return v0;
}

uint64_t SuggestionsIntentBuilder.__deallocating_deinit()
{
  SuggestionsIntentBuilder.deinit();
  v0 = OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF944BC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF944C50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1BF944CC4(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x1EEE69430](v2 > 1);
  }

  return result;
}

uint64_t sub_1BF944D08(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1BF944D50(void *a1)
{
  v1 = [a1 launchId];
  if (v1)
  {
    v2 = v1;
    sub_1BF9B4AA8();
    OUTLINED_FUNCTION_51_3();
  }

  return OUTLINED_FUNCTION_43();
}

unint64_t sub_1BF944DAC()
{
  result = qword_1EBDE9A98;
  if (!qword_1EBDE9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A98);
  }

  return result;
}

unint64_t sub_1BF944E00()
{
  result = qword_1EBDE9AA0;
  if (!qword_1EBDE9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AA0);
  }

  return result;
}

uint64_t sub_1BF944E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9AA8, &qword_1BF9C1D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF944EC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);
  return a2;
}

id sub_1BF944F20(id result, id a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 4:
      goto LABEL_3;
    case 1:

      result = result;
      break;
    case 2:
    case 3:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF944FE8()
{
  result = qword_1EBDE9AC8;
  if (!qword_1EBDE9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AC8);
  }

  return result;
}

unint64_t sub_1BF94503C()
{
  result = qword_1EDBF32A0;
  if (!qword_1EDBF32A0)
  {
    type metadata accessor for ActionIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32A0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BF9450B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF9450F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Intent.IntentDecodingErrors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF945200(uint64_t a1)
{
  result = type metadata accessor for SiriSuggestions.IntentQuery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Intent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}