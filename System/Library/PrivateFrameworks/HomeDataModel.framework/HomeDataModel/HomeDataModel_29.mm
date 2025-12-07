uint64_t sub_1D194D330(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C8, &qword_1D1E855D8);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
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

uint64_t sub_1D194D550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
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

unint64_t sub_1D194D77C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A0, &qword_1D1E85678);
  result = sub_1D1E6880C();
  v4 = result;
  v21 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v21 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v21 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v21 + 48) + 32 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v14);

      sub_1D1E678EC();
      sub_1D176D34C(v22, v17);
      sub_1D1E6926C();
      result = sub_1D1E686CC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = (*(v4 + 48) + 32 * result);
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v16;
      v18[3] = v17;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v12 = *(v21 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v4;
  }

  return result;
}

uint64_t sub_1D194D96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6880C();
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
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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

uint64_t sub_1D194DBF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647498, &qword_1D1E85670);
  result = sub_1D1E6880C();
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
      v17 = (*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D1E6920C();
      sub_1D1E6922C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
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
      v13 = (*(v5 + 48) + 2 * v12);
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

uint64_t sub_1D194DE90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
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
      v20 = sub_1D1E6920C();
      a4(v20);
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

uint64_t sub_1D194E0D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      result = sub_1D1E691FC();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v4 = v7;
  }

  return result;
}

uint64_t sub_1D194E2BC(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v33 - v4);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v1;
    v34 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v37 = *(v35 + 72);
      sub_1D1741C08(v20 + v37 * (v17 | (v9 << 6)), v5, &qword_1EC643018, &qword_1D1E9AC00);
      sub_1D1E6920C();
      v22 = v5[3];
      v21 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v22);
      (*(v21 + 8))(v22, v21);
      sub_1D1E678EC();

      v23 = v5[3];
      v24 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v23);
      (*(v24 + 16))(v23, v24);
      sub_1D1E678EC();

      v25 = v36;
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*(v5 + *(v25 + 40)));
      result = sub_1D1E6926C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v34;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v34;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1741A90(v5, *(v8 + 48) + v16 * v37, &qword_1EC643018, &qword_1D1E9AC00);
      ++*(v8 + 16);
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

        v2 = v33;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D194E6B0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v32 - v4);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v1;
    v34 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v37 = *(v35 + 72);
      sub_1D1741C08(v20 + v37 * (v17 | (v9 << 6)), v5, &qword_1EC643010, &qword_1D1E90E20);
      sub_1D1E6920C();
      v22 = v5[3];
      v21 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v22);
      (*(v21 + 8))(v22, v21);
      sub_1D1E678EC();

      v23 = v5[3];
      v24 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v23);
      (*(v24 + 16))(v23, v24);
      sub_1D1E678EC();

      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v6 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v6 = v34;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1741A90(v5, *(v8 + 48) + v16 * v37, &qword_1EC643010, &qword_1D1E90E20);
      ++*(v8 + 16);
      v13 = v38;
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

        v2 = v33;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D194EAC0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = _s7MergeIdVMa(0);
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D8, &qword_1D1E855E0);
  result = sub_1D1E6880C();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v3;
    v39 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v4 + 48);
    v45 = v11;
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = result + 56;
    v42 = v9;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v48 = *(v47 + 72);
      v26 = v49;
      sub_1D1951A7C(v25 + v48 * (v22 | (v14 << 6)), v49, _s7MergeIdVMa);
      sub_1D1E6920C();
      sub_1D1741C08(v26, v8, &qword_1EC642590, qword_1D1E71260);
      v27 = v46;
      if ((*v44)(v8, 1, v46) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v28 = v8;
        v29 = v43;
        (*v41)(v43, v28, v27);
        sub_1D1E6922C();
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        v30 = v29;
        v8 = v28;
        (*v40)(v30, v27);
      }

      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v11 = v45;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1D1951AE4(v49, *(v13 + 48) + v21 * v48, _s7MergeIdVMa);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
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
    *v2 = v13;
  }

  return result;
}

uint64_t sub_1D194EF84(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticMediaSystemComponent(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A8, &qword_1D1E85680);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D176CA00(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D1951A7C(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for StaticMediaSystemComponent);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_1D194F150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473B8, &qword_1D1E855C8);
  result = sub_1D1E6880C();
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
      v19 = *v17;
      v18 = v17[1];
      sub_1D1E6920C();
      sub_1D1E6922C();
      if (v18)
      {

        sub_1D1E678EC();
      }

      result = sub_1D1E6926C();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D194F3A4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MatterTilePath(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_1D1951A7C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for MatterTilePath);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v22 = v34;
      MEMORY[0x1D3892890](*&v5[*(v34 + 20)]);
      if (v5[*(v22 + 24) + 2] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6923C();
      }

      result = sub_1D1E6926C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
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

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for MatterTilePath);
      ++*(v8 + 16);
      v6 = v32;
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

        v2 = v31;
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D194F6FC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647468, &qword_1D1E85648);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D176CCD4(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D1951A7C(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_1D194F8C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647460, &qword_1D1E85640);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D176CD14(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D1951A7C(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_1D194FA94(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647478, &qword_1D1E85658);
  result = sub_1D1E6880C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D194FD80(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ActionService(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647428, &qword_1D1E85618);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
      v19 = *(v29 + 72);
      sub_1D1951A7C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for ActionService);
      sub_1D1E6920C();
      ActionService.hash(into:)(v30);
      result = sub_1D1E6926C();
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
      result = sub_1D1951AE4(v5, *(v8 + 48) + v15 * v19, type metadata accessor for ActionService);
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

        v2 = v28;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D1950058(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticZone(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  result = sub_1D1E6880C();
  v12 = result;
  if (*(v10 + 16))
  {
    v37 = v1;
    v13 = 0;
    v14 = *(v10 + 56);
    v39 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v38 = (v15 + 63) >> 6;
    v43 = v4 + 16;
    v44 = result;
    v40 = v4;
    v41 = v10;
    v18 = (v4 + 8);
    v45 = v9;
    v42 = result + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_15:
      v50 = v13;
      v23 = *(v10 + 48);
      v48 = *(v46 + 72);
      sub_1D1951A7C(v23 + v48 * (v20 | (v13 << 6)), v9, type metadata accessor for StaticZone);
      sub_1D1E6920C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v24 = v47;
      sub_1D1E678EC();
      v25 = *&v9[*(v24 + 24)];
      MEMORY[0x1D3892850](*(v25 + 16));
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v28 = *(v40 + 72);
        v29 = *(v40 + 16);
        do
        {
          v29(v6, v27, v3);
          sub_1D1E676EC();
          (*v18)(v6, v3);
          v27 += v28;
          --v26;
        }

        while (v26);
      }

      result = sub_1D1E6926C();
      v12 = v44;
      v30 = -1 << *(v44 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v42 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v9 = v45;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v42 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            v10 = v41;
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v42 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
      v9 = v45;
LABEL_7:
      *(v42 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v9, *(v12 + 48) + v19 * v48, type metadata accessor for StaticZone);
      ++*(v12 + 16);
      v17 = v49;
      v13 = v50;
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v38)
      {

        v2 = v37;
        goto LABEL_29;
      }

      v22 = *(v39 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v49 = (v22 - 1) & v22;
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
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D19504E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticActionSet(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
      v19 = *(v29 + 72);
      sub_1D1951A7C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for StaticActionSet);
      sub_1D1E6920C();
      StaticActionSet.hash(into:)(v30);
      result = sub_1D1E6926C();
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
      result = sub_1D1951AE4(v5, *(v8 + 48) + v15 * v19, type metadata accessor for StaticActionSet);
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

        v2 = v28;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D19507B8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticRoom(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
      v19 = *(v29 + 72);
      sub_1D1951A7C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for StaticRoom);
      sub_1D1E6920C();
      StaticRoom.hash(into:)(v30);
      result = sub_1D1E6926C();
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
      result = sub_1D1951AE4(v5, *(v8 + 48) + v15 * v19, type metadata accessor for StaticRoom);
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

        v2 = v28;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D1950A90(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticUser(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647408, &qword_1D1E85600);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_1D1951A7C(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticUser);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v21 = v33;
      sub_1D1E678EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v5[*(v21 + 28)]);
      MEMORY[0x1D3892850](v5[*(v21 + 32)]);
      result = sub_1D1E6926C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v6 = v31;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v6 = v31;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v34, type metadata accessor for StaticUser);
      ++*(v8 + 16);
      v13 = v35;
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

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D1950E08(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DataModel.StateSubscription.Reason(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E0, &qword_1D1E855E8);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1D176CFB8(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1D1951A7C(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for DataModel.StateSubscription.Reason);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_1D1950FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
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
      result = sub_1D1E684EC();
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

void *sub_1D19511E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1D19514E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D1951268(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v29 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
LABEL_6:
    if (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v9 << 6);
      goto LABEL_13;
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
        return sub_1D19E1A90(v7, v5, v8, v3);
      }

      v18 = *(v3 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v9 << 6);
LABEL_13:
        v19 = *(*a2 + 16);
        if (v19)
        {
          v20 = *(*(v3 + 48) + v16);
          v21 = (*a2 + 32);
          v22 = v20 & 0xC0;
          do
          {
            v24 = *v21++;
            v23 = v24;
            v25 = v24 >> 6;
            if (v24 >> 6)
            {
              if (v25 == 1)
              {
                if (v22 == 64)
                {
                  goto LABEL_15;
                }
              }

              else if (v22 == 128)
              {
LABEL_15:
                if (((v23 ^ v20) & 0x3F) == 0)
                {
                  goto LABEL_6;
                }
              }
            }

            else if (v20 <= 0x3F && v23 == v20)
            {
              goto LABEL_6;
            }

            --v19;
          }

          while (v19);
        }

        *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D19511E0(v27, v5, v3, a2);

  MEMORY[0x1D3893640](v27, -1, -1);
  return v28;
}

uint64_t sub_1D19514E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
LABEL_5:
  if (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v8 << 6);
    goto LABEL_12;
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

      return sub_1D19E1A90(v6, a2, v7, a3);
    }

    v17 = *(a3 + 56 + 8 * v8);
    ++v16;
    if (v17)
    {
      v11 = (v17 - 1) & v17;
      v15 = __clz(__rbit64(v17)) | (v8 << 6);
LABEL_12:
      v18 = *(*a4 + 16);
      if (v18)
      {
        v19 = *(*(a3 + 48) + v15);
        v20 = (*a4 + 32);
        v21 = v19 & 0xC0;
        do
        {
          v22 = *v20++;
          result = v22;
          v23 = v22 >> 6;
          if (v22 >> 6)
          {
            if (v23 == 1)
            {
              if (v21 == 64)
              {
                goto LABEL_14;
              }
            }

            else if (v21 == 128)
            {
LABEL_14:
              result = result ^ v19;
              if ((result & 0x3F) == 0)
              {
                goto LABEL_5;
              }
            }
          }

          else if (v19 <= 0x3F && result == v19)
          {
            goto LABEL_5;
          }

          --v18;
        }

        while (v18);
      }

      *(v6 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D19516B4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v15 = &v19 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_1D1741C08(v17, v11, a2, a3);
      a4(v15, v11);
      result = sub_1D1741A30(v15, a2, a3);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      return 0;
    }

    v12 = v1 & 0x3F;
    v13 = "HFVacuumCleanMode_Vacuum";
    v14 = "HFVacuumCleanMode_VacuumThenMop";
    if (v12 == 2)
    {
      v15 = 0xD000000000000015;
    }

    else
    {
      v14 = "HFVacuumCleanMode_Auto";
      v15 = 0xD00000000000001FLL;
    }

    v16 = 0xD000000000000018;
    if (v12)
    {
      v13 = "HFVacuumCleanMode_Mop";
    }

    else
    {
      v16 = 0xD00000000000001BLL;
    }

    v17 = v12 <= 1;
    if (v12 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    if (v17)
    {
      v11 = v16;
    }

    else
    {
      v11 = v15;
    }
  }

  else
  {
    v3 = 0xD000000000000015;
    if (*a1 > 4u)
    {
      v18 = "HFVacuumCleanMode_Night";
      v19 = "HFVacuumCleanMode_Day";
      v20 = 0xD000000000000017;
      if (v1 != 8)
      {
        v19 = "SecondaryTag(_:existingTags:)";
        v20 = 0xD000000000000015;
      }

      if (v1 == 7)
      {
        v20 = 0xD000000000000015;
      }

      else
      {
        v18 = v19;
      }

      v21 = "HFVacuumCleanMode_Min";
      if (v1 == 5)
      {
        v3 = 0xD00000000000001ALL;
      }

      else
      {
        v21 = "HFVacuumCleanMode_Max";
      }

      if (*a1 <= 6u)
      {
        v10 = v21;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v20;
      }
    }

    else
    {
      v4 = "HFVacuumCleanMode_Quick";
      v5 = "HFVacuumCleanMode_LowNoise";
      v6 = "HFVacuumCleanMode_LowEnergy";
      if (v1 == 3)
      {
        v7 = 0xD00000000000001ALL;
      }

      else
      {
        v6 = "HFVacuumCleanMode_Vacation";
        v7 = 0xD00000000000001BLL;
      }

      if (v1 == 2)
      {
        v8 = 0xD000000000000017;
      }

      else
      {
        v5 = v6;
        v8 = v7;
      }

      if (*a1)
      {
        v4 = "HFVacuumCleanMode_Quiet";
        v9 = 0xD000000000000017;
      }

      else
      {
        v9 = 0xD000000000000016;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v5;
      }

      if (*a1 <= 1u)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }
    }
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

void sub_1D19519A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3891EF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D1764A98(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1D1951A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1951AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1951B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D1951BB0(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v52 = a2 << 32;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v48 = v6;
  v49 = v2;
  while (v5)
  {
LABEL_11:
    v13 = __clz(__rbit64(v5)) | (v7 << 6);
    v53 = *(*(a1 + 48) + 4 * v13);
    v14 = *(a1 + 56) + 16 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v50 + *(type metadata accessor for EndpointPath(0) + 24));
    sub_1D1741AF8(v15, v16);
    sub_1D1741AF8(v15, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v8;
    v20 = sub_1D171D15C(v17);
    v21 = v8[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_32;
    }

    v24 = v19;
    if (v8[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v8 = v55;
      }
    }

    else
    {
      sub_1D172684C(v23, isUniquelyReferenced_nonNull_native);
      v8 = v55;
      v25 = sub_1D171D15C(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

      v20 = v25;
    }

    if ((v24 & 1) == 0)
    {
      v8[(v20 >> 6) + 8] |= 1 << v20;
      *(v8[6] + 2 * v20) = v17;
      *(v8[7] + 8 * v20) = MEMORY[0x1E69E7CC8];
      v27 = v8[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_34;
      }

      v8[2] = v29;
    }

    v30 = v8[7];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v30 + 8 * v20);
    v32 = v55;
    *(v30 + 8 * v20) = 0x8000000000000000;
    v33 = sub_1D171D1A4(v52 | v53);
    v35 = *(v32 + 16);
    v36 = (v34 & 1) == 0;
    v28 = __OFADD__(v35, v36);
    v37 = v35 + v36;
    if (v28)
    {
      goto LABEL_33;
    }

    v38 = v34;
    if (*(v32 + 24) < v37)
    {
      sub_1D1726570(v37, v31);
      v33 = sub_1D171D1A4(v52 | v53);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_36;
      }

LABEL_25:
      v40 = v55;
      if (v38)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }

    if (v31)
    {
      goto LABEL_25;
    }

    v45 = v33;
    sub_1D1737C6C();
    v33 = v45;
    v40 = v55;
    if (v38)
    {
LABEL_4:
      v9 = v40[7] + 16 * v33;
      v10 = *v9;
      *v9 = v15;
      v11 = *(v9 + 8);
      *(v9 + 8) = v16;
      sub_1D1757AE8(v10, v11);
      goto LABEL_5;
    }

LABEL_26:
    v40[(v33 >> 6) + 8] |= 1 << v33;
    v41 = v40[6] + 8 * v33;
    *v41 = v53;
    *(v41 + 4) = a2;
    v42 = v40[7] + 16 * v33;
    *v42 = v15;
    *(v42 + 8) = v16;
    v43 = v40[2];
    v28 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v28)
    {
      goto LABEL_35;
    }

    v40[2] = v44;
LABEL_5:
    v5 &= v5 - 1;
    *(v30 + 8 * v20) = v40;

    sub_1D1757AE8(v15, v16);
    v6 = v48;
    v2 = v49;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      v54 = v8;
      v55 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v54, &v55);

      return v55;
    }

    v5 = *(v2 + 8 * v12);
    ++v7;
    if (v5)
    {
      v7 = v12;
      goto LABEL_11;
    }
  }

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
  sub_1D1E690FC();
  __break(1u);
LABEL_37:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.resume()()
{
  v1[4] = v0;
  type metadata accessor for EndpointPath(0);
  v1[5] = swift_task_alloc();
  v2 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v1[6] = v2;
  v1[7] = *(v2 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for ClusterPath(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1952084, 0, 0);
}

uint64_t sub_1D1952084()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  StaticRVCClusterGroup.resumeExpectedValues.getter(&v7);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7;
  sub_1D1A1456C(&v9, &v8);

  v0[11] = v8;
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D19521B0;
  v5 = v0[10];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D19521B0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 104) = a1;

  sub_1D1959D30(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19522E4, 0, 0);
}

uint64_t sub_1D19522E4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D19581A4(v0[4], v2, type metadata accessor for StaticRVCClusterGroup);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  sub_1D1959DD8(v2, v5 + v4, type metadata accessor for StaticRVCClusterGroup);
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[15] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D1952488;
  v8 = v0[13];

  return sub_1D19152BC(0x656D75736572, 0xE600000000000000, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E857B0, v5);
}

uint64_t sub_1D1952488()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1959F84, 0, 0);
  }

  else
  {
    v4 = *(v2 + 104);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1D1952640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1952668, 0, 0);
}

uint64_t sub_1D1952668()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D19527DC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_64;
  v0[14] = v5;
  [v4 resumeWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19527DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D1959F7C;
  }

  else
  {
    v2 = sub_1D19528EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19528EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 3);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19529DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = MEMORY[0x1E69E7CC8];
  *a2 = MEMORY[0x1E69E7CC8];
  v7 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = 0x8000000000000000;
  v10 = sub_1D171D15C(v7);
  v11 = *(v6 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v9;
  if (*(v6 + 24) >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v14 = MEMORY[0x1E69E7CC8];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D1737DF0();
    v14 = v6;
    goto LABEL_7;
  }

  sub_1D172684C(v13, isUniquelyReferenced_nonNull_native);
  v14 = v6;
  v15 = sub_1D171D15C(v7);
  if ((v3 & 1) != (v16 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_7:

  *a2 = v14;
  if ((v3 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v17 = *(v14 + 56);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = 0x8000000000000000;
  result = sub_1D1753B88(a1, 2, 0x1800000004, v18);
  *(v17 + 8 * v10) = v20;
  return result;
}

uint64_t StaticRVCClusterGroup.pause()()
{
  v1[4] = v0;
  type metadata accessor for EndpointPath(0);
  v1[5] = swift_task_alloc();
  v2 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v1[6] = v2;
  v1[7] = *(v2 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for ClusterPath(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1952C78, 0, 0);
}

uint64_t sub_1D1952C78()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  StaticRVCClusterGroup.pauseExpectedValues.getter(&v7);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7;
  sub_1D1A1456C(&v9, &v8);

  v0[11] = v8;
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D1952DA4;
  v5 = v0[10];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1952DA4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 104) = a1;

  sub_1D1959D30(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1952ED8, 0, 0);
}

uint64_t sub_1D1952ED8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D19581A4(v0[4], v2, type metadata accessor for StaticRVCClusterGroup);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  sub_1D1959DD8(v2, v5 + v4, type metadata accessor for StaticRVCClusterGroup);
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[15] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D195307C;
  v8 = v0[13];

  return sub_1D19152BC(0x6573756170, 0xE500000000000000, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E857C8, v5);
}

uint64_t sub_1D195307C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1953234, 0, 0);
  }

  else
  {
    v4 = *(v2 + 104);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1D1953234()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    v5 = *(v0 + 24);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1953438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1953460, 0, 0);
}

uint64_t sub_1D1953460()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D19535D4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_60_0;
  v0[14] = v5;
  [v4 pauseWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19535D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D1959F7C;
  }

  else
  {
    v2 = sub_1D19536E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19536E4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 0);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

void StaticRVCClusterGroup.goHomeCommand.getter(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 48)))
  {
    v3 = 4;
    v4 = 2;
  }

  else
  {
    StaticRVCClusterGroup.stopCommand.getter(&v5);
    v4 = v5;
    v3 = v6;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
}

void *StaticRVCClusterGroup.goHomeExpectedValues.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 48)) == 1)
  {
    result = sub_1D1953870(&v4);
  }

  else
  {
    result = sub_1D19539E8(&v4);
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D1953870@<X0>(void *a1@<X8>)
{
  v4 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  v5 = *(v1 + *(type metadata accessor for EndpointPath(0) + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = 0x8000000000000000;
  v8 = sub_1D171D15C(v5);
  v9 = *(v4 + 16);
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v7;
  if (*(v4 + 24) >= v11)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = MEMORY[0x1E69E7CC8];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D1737DF0();
    v12 = v4;
    goto LABEL_7;
  }

  sub_1D172684C(v11, isUniquelyReferenced_nonNull_native);
  v12 = v4;
  v13 = sub_1D171D15C(v5);
  if ((v2 & 1) != (v14 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v8 = v13;
LABEL_7:

  *a1 = v12;
  if ((v2 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v15 = *(v12 + 56);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v15 + 8 * v8);
  *(v15 + 8 * v8) = 0x8000000000000000;
  result = sub_1D1753B88(64, 2, 0x1800000004, v16);
  *(v15 + 8 * v8) = v18;
  return result;
}

uint64_t sub_1D19539E8@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v32 = 0;
  StaticRVCClusterGroup.firstRunMode(with:)(&v32, v33);
  v5 = v34;
  v6 = MEMORY[0x1E69E7CC8];
  if (v34)
  {
    v31 = a1;
    a1 = v33[0];
    v30 = v33[1];
    v7 = v35;
    v8 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v6;
    v11 = sub_1D171D15C(v8);
    v12 = v6[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = v10;
    if (v6[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v6 = v33[0];
      }
    }

    else
    {
      sub_1D172684C(v14, isUniquelyReferenced_nonNull_native);
      v6 = v33[0];
      v16 = sub_1D171D15C(v8);
      if ((v15 & 1) != (v17 & 1))
      {
LABEL_22:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v11 = v16;
    }

    if ((v15 & 1) == 0)
    {
      sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC();
    }

    v1 = v6[7];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(v1 + 8 * v11);
    *(v1 + 8 * v11) = 0x8000000000000000;
    sub_1D1753B88(a1, 2, 0x1900000001, v18);
    *(v1 + 8 * v11) = v33[0];
    sub_1D192F928(a1, v30, v5, v7);
    a1 = v31;
  }

  v19 = *(v2 + *(type metadata accessor for EndpointPath(0) + 24));
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v6;
  v3 = sub_1D171D15C(v19);
  v22 = v6[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v1) = v21;
  if (v6[3] >= v24)
  {
    if (v20)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1737DF0();
    v6 = v33[0];
    goto LABEL_16;
  }

  sub_1D172684C(v24, v20);
  v6 = v33[0];
  v25 = sub_1D171D15C(v19);
  if ((v1 & 1) != (v26 & 1))
  {
    goto LABEL_22;
  }

  v3 = v25;
LABEL_16:

  if ((v1 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v27 = v6[7];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *(v27 + 8 * v3);
  *(v27 + 8 * v3) = 0x8000000000000000;
  result = sub_1D1753B88(0, 2, 0x1800000004, v28);
  *(v27 + 8 * v3) = v33[0];
  *a1 = v6;
  return result;
}

uint64_t StaticRVCClusterGroup.goHome()()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for EndpointPath(0);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for StaticRVCClusterGroup(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for ClusterPath(0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1953DDC, 0, 0);
}

uint64_t sub_1D1953DDC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[5];
  sub_1D1741B10(0, &qword_1EC6474C8, 0x1E696F5C0);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 24;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1D1953ECC;
  v5 = v0[14];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1953ECC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 128) = a1;

  sub_1D1959D30(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1954000, 0, 0);
}

uint64_t sub_1D1954000()
{
  v44 = v0;
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 40);
    if (*(v2 + *(*(v0 + 64) + 48)) == 1)
    {
      v3 = *(v0 + 96);
      v4 = *(v0 + 72);
      sub_1D1953870(&v42);
      v40 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v42, &v40);

      v5 = v40;
      *(v0 + 136) = v40;
      sub_1D19581A4(v2, v3, type metadata accessor for StaticRVCClusterGroup);
      v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v7 = swift_allocObject();
      *(v0 + 144) = v7;
      sub_1D1959DD8(v3, v7 + v6, type metadata accessor for StaticRVCClusterGroup);
      v8 = v1;
      v42 = 0xD000000000000016;
      v43 = 0x80000001D1EBE710;
      v9 = EndpointPath.description.getter();
      MEMORY[0x1D3890F70](v9);

      v10 = v42;
      v11 = v43;
      *(v0 + 152) = v43;
      if (qword_1EC6422E8 != -1)
      {
        swift_once();
      }

      if (qword_1EC649398)
      {
      }

      else
      {
        v5 = 0;
      }

      ObjectType = swift_getObjectType();
      v29 = v8;
      v30 = sub_1D190C444(v10, v11, ObjectType, 0x656D6F486F67, 0xE600000000000000, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v31 = swift_allocObject();
      *(v0 + 160) = v31;
      *(v31 + 24) = 0;
      *(v31 + 16) = v30;
      v32 = swift_allocObject();
      v32[2] = &unk_1D1E857E8;
      v32[3] = v7;
      v32[4] = v29;
      v32[5] = v5;
      v32[6] = v10;
      v32[7] = v11;
      v32[8] = ObjectType;
      v32[9] = 0x656D6F486F67;
      v32[10] = 0xE600000000000000;
      v32[11] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v33 = swift_allocObject();
      *(v0 + 168) = v33;
      v34 = v29;

      swift_defaultActor_initialize();
      *(v33 + 16) = 0;
      v35 = *(*v33 + 112);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v36 - 8) + 56))(&v33[v35], 1, 1, v36);
      v37 = &v33[*(*v33 + 120)];
      *v37 = 0;
      *(v37 + 1) = 0;
      *(v33 + 14) = &unk_1D1E84150;
      *(v33 + 15) = v32;
      v38 = swift_allocObject();
      *(v0 + 176) = v38;
      v38[2] = v10;
      v38[3] = v11;
      v38[4] = ObjectType;
      v38[5] = 0x656D6F486F67;
      v38[6] = 0xE600000000000000;
      v38[7] = v31;

      return MEMORY[0x1EEE6DFA0](sub_1D19546E4, v33, 0);
    }

    else
    {
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = sub_1D1954BE8;

      return StaticRVCClusterGroup.stop()();
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 88);
    v13 = *(v0 + 40);
    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EE07A0B0);
    sub_1D19581A4(v13, v12, type metadata accessor for StaticRVCClusterGroup);
    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 88);
    if (v17)
    {
      v19 = *(v0 + 48);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446210;
      v39 = v21;
      v40 = 0xD000000000000016;
      v41 = 0x80000001D1EBE710;
      v42 = 3829371;
      v43 = 0xE300000000000000;
      *(v0 + 16) = *(v18 + *(v19 + 20));
      v22 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v22);

      MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
      *(v0 + 216) = *(v18 + *(v19 + 24));
      v23 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v23);

      MEMORY[0x1D3890F70](125, 0xE100000000000000);
      MEMORY[0x1D3890F70](v42, v43);

      sub_1D1959D30(v18, type metadata accessor for StaticRVCClusterGroup);
      v24 = sub_1D1B1312C(v40, v41, &v39);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v15, v16, "%{public}s: tried running Go Home command but operationalStateCluster was nil", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {

      sub_1D1959D30(v18, type metadata accessor for StaticRVCClusterGroup);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1D19546E4()
{
  v1 = v0[22];
  v2 = (v0[21] + *(*v0[21] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D1958D20;
  v2[1] = v1;
  sub_1D17169C0(v3, v4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1D19547C0;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19547C0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D19548D4;
  }

  else
  {
    v2 = sub_1D1954B18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19548D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);

  *(v0 + 24) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);

    v6 = *(v0 + 32);
    sub_1D19581A4(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D1959DD8(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v12 = *(v0 + 128);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1954B18()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1954BE8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D1954D90;
  }

  else
  {
    v2 = sub_1D1954CFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1954CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1954D90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1954E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1954E4C, 0, 0);
}

uint64_t sub_1D1954E4C()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[24] = v2;
  v3 = v0[22];
  v4 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1954FC0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_56;
  v0[14] = v5;
  [v4 goHomeWithExpectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1954FC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D1955190;
  }

  else
  {
    v2 = sub_1D19550D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19550D0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_1D1958308(v2, v1, 128);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1955190(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D1955220()
{
  v10 = v0;
  sub_1D19539E8(v0 + 2);
  v1 = v0[2];
  v0[5] = v1;
  v9 = 0;
  StaticRVCClusterGroup.firstRunMode(with:)(&v9, v6);
  if (v7)
  {
    v2 = v6[0];
    sub_1D192F928(v6[0], v6[1], v7, v8);
    v0[3] = v1;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D1955350;

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v2, v0 + 3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1955350()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D19554C8;
  }

  else
  {
    v2 = sub_1D1955464;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1955464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19554C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticRVCClusterGroup.changeToRunMode(containing:expectedValues:)(_BYTE *a1, uint64_t *a2)
{
  *(v3 + 56) = *a1;
  v4 = *a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D1955558, 0, 0);
}

uint64_t sub_1D1955558()
{
  v11 = v0;
  v10 = *(v0 + 56);
  v1.n128_f64[0] = StaticRVCClusterGroup.firstRunMode(with:)(&v10, v7);
  if (v8)
  {
    v2 = *(v0 + 32);
    v3 = v7[0];
    sub_1D192F928(v7[0], v7[1], v8, v9);
    *(v0 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1D195566C;

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v3, (v0 + 16));
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(v1);
  }
}

uint64_t sub_1D195566C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19557A0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1D19557C8(const char *a1@<X1>, char a2@<W0>, uint64_t a3@<X8>, ...)
{
  v7 = type metadata accessor for StaticRVCClusterGroup(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v24) = a2;
  StaticRVCClusterGroup.firstRunMode(with:)(&v24, &v25);
  if (v27)
  {
    v10 = v25;
    sub_1D192F928(v25, v26, v27, v28);
    v11 = 0;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D19581A4(v3, v9, type metadata accessor for StaticRVCClusterGroup);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6834C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446210;
      v24 = v16;
      v25 = 3829371;
      v26 = 0xE300000000000000;
      v17 = type metadata accessor for EndpointPath(0);
      v23 = *&v9[*(v17 + 20)];
      v18 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v18);

      MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
      LOWORD(v23) = *&v9[*(v17 + 24)];
      v19 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v19);

      MEMORY[0x1D3890F70](125, 0xE100000000000000);
      v20 = v25;
      v21 = v26;
      sub_1D1959D30(v9, type metadata accessor for StaticRVCClusterGroup);
      v22 = sub_1D1B1312C(v20, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1D16EC000, v13, v14, a1, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      sub_1D1959D30(v9, type metadata accessor for StaticRVCClusterGroup);
    }

    v10 = 0;
    v11 = -1;
  }

  *a3 = v10;
  *(a3 + 8) = v11;
}

uint64_t StaticRVCClusterGroup.startExpectedValues.getter@<X0>(void *a1@<X8>)
{
  v5 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v5, v6);
  v2 = v7;
  if (v7)
  {
    v3 = v6[0];
    sub_1D192F928(v6[0], v6[1], v7, v8);
  }

  else
  {
    v3 = 0;
  }

  return StaticRVCClusterGroup.startExpectedValues(with:)(v3, v2 == 0, a1);
}

uint64_t StaticRVCClusterGroup.startExpectedValues(with:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7CC8];
  if ((a2 & 1) == 0)
  {
    v9 = *(v3 + *(type metadata accessor for EndpointPath(0) + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v7;
    v4 = sub_1D171D15C(v9);
    v12 = v7[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = v11;
    if (v7[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
      }
    }

    else
    {
      sub_1D172684C(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D171D15C(v9);
      if ((v15 & 1) != (v17 & 1))
      {
LABEL_22:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v4 = v16;
    }

    if ((v15 & 1) == 0)
    {
      sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC();
    }

    v18 = v7[7];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v18 + 8 * v4);
    *(v18 + 8 * v4) = 0x8000000000000000;
    sub_1D1753B88(a1, 2, 0x1900000001, v19);
    *(v18 + 8 * v4) = v32;
  }

  v20 = *(v3 + *(type metadata accessor for EndpointPath(0) + 24));
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v7;
  v5 = sub_1D171D15C(v20);
  v23 = v7[2];
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v4) = v22;
  if (v7[3] >= v25)
  {
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1737DF0();
    v7 = v31;
    goto LABEL_16;
  }

  sub_1D172684C(v25, v21);
  v26 = sub_1D171D15C(v20);
  if ((v4 & 1) != (v27 & 1))
  {
    goto LABEL_22;
  }

  v5 = v26;
LABEL_16:

  if ((v4 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v28 = v7[7];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v28 + 8 * v5);
  *(v28 + 8 * v5) = 0x8000000000000000;
  result = sub_1D1753B88(1, 2, 0x1800000004, v29);
  *(v28 + 8 * v5) = v33;
  *a3 = v7;
  return result;
}

uint64_t sub_1D1955DE4()
{
  v13 = v0;
  v12 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v12, &v8);
  v1 = v10;
  if (v10)
  {
    v2 = v8;
    sub_1D192F928(v8, v9, v10, v11);
  }

  else
  {
    v2 = 0;
  }

  StaticRVCClusterGroup.startExpectedValues(with:)(v2, v1 == 0, v0 + 2);
  v3 = v0[2];
  v0[5] = v3;
  v12 = 1;
  StaticRVCClusterGroup.firstRunMode(with:)(&v12, &v8);
  if (v10)
  {
    v4 = v8;
    sub_1D192F928(v8, v9, v10, v11);
    v0[3] = v3;
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1D1955F5C;

    return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v4, v0 + 3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D1955F5C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D1959F74;
  }

  else
  {
    v2 = sub_1D1959F78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  type metadata accessor for EndpointPath(0);
  v3[6] = swift_task_alloc();
  v5 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ClusterPath(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[11] = v6;
  v3[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D19561B0, 0, 0);
}

uint64_t sub_1D19561B0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[5];
  v4 = [objc_allocWithZone(MEMORY[0x1E696F690]) init];
  v0[13] = v4;
  v5 = sub_1D1E685DC();
  [v4 setNewMode_];

  sub_1D1741B10(0, &qword_1EC6474D0, 0x1E696F5C8);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 25;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1D19562EC;
  v7 = v0[11];

  return sub_1D1A092C4(v7);
}

uint64_t sub_1D19562EC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 120) = a1;

  sub_1D1959D30(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1956420, 0, 0);
}

uint64_t sub_1D1956420()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  v16 = MEMORY[0x1E69E7CC0];
  v17 = v1;
  sub_1D1A1456C(&v17, &v16);
  v6 = v16;
  v0[16] = v16;
  sub_1D19581A4(v5, v3, type metadata accessor for StaticRVCClusterGroup);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[17] = v8;
  *(v8 + 16) = v2;
  sub_1D1959DD8(v3, v8 + v7, type metadata accessor for StaticRVCClusterGroup);
  v9 = v2;
  v17 = 0xD000000000000016;
  v18 = 0x80000001D1EBE710;
  v10 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v10);

  v11 = v17;
  v12 = v18;
  v0[18] = v18;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1D19565FC;
  v14 = v0[15];

  return sub_1D1915750(0x6F5465676E616863, 0xEC00000065646F4DLL, v14, v6, v11, v12, &unk_1D1E85818, v8);
}

uint64_t sub_1D19565FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = sub_1D19567EC;
  }

  else
  {
    v4 = *(v2 + 120);

    v3 = sub_1D195675C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D195675C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19567EC()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);

    v5 = *(v0 + 24);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 104);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D19569FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1956A24, 0, 0);
}

uint64_t sub_1D1956A24()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[25] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1956BA4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647520, &qword_1D1E85850);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_52;
  v0[14] = v6;
  [v5 changeToModeWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1956BA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D1956D70;
  }

  else
  {
    v2 = sub_1D1956CB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1956CB4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  sub_1D1958E3C(v2, v1);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1956D70(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void static StaticRVCClusterGroup.validate(response:endpointPath:)(void *a1, uint64_t a2)
{
  sub_1D1958E3C(a1, a2);
}

{
  sub_1D19596C4(a1, a2);
}

uint64_t StaticRVCClusterGroup.changeToCleanMode(containing:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for StaticRVCClusterGroup(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1956E8C, 0, 0);
}

uint64_t sub_1D1956E8C()
{
  v31 = v0;
  v29 = v0[6];
  v1 = *(v0[5] + *(v29 + 44));
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = 0;
    v4 = (v1 + 56);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(v4 - 3);
      v0[8] = *(v4 - 1);
      v6 = *v4;
      v0[9] = *v4;

      v8 = sub_1D192D6B0(v7, v6);

      if (v8)
      {
        break;
      }

      ++v3;
      v4 += 4;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    v28 = swift_task_alloc();
    v0[10] = v28;
    *v28 = v0;
    v28[1] = sub_1D1957278;

    return StaticRVCClusterGroup.changeToCleanMode(index:)(v5);
  }

  else
  {
LABEL_7:
    if (qword_1EE07A0A8 != -1)
    {
LABEL_18:
      swift_once();
    }

    v9 = v0[7];
    v10 = v0[5];
    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE07A0B0);
    sub_1D19581A4(v10, v9, type metadata accessor for StaticRVCClusterGroup);

    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[7];
    if (v14)
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBE730, &v30);
      *(v17 + 12) = 2080;
      v0[2] = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474D8, &qword_1D1E85828);
      v19 = sub_1D1E678BC();
      v21 = sub_1D1B1312C(v19, v20, &v30);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2080;
      v0[3] = *(v15 + *(v29 + 44));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473A8, &qword_1D1E855B0);
      v22 = sub_1D1E678BC();
      v24 = v23;
      sub_1D1959D30(v15, type metadata accessor for StaticRVCClusterGroup);
      v25 = sub_1D1B1312C(v22, v24, &v30);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s Couldn't find a clean mode that contained all the specified tags: %s allRunningModes: %s'", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {

      sub_1D1959D30(v15, type metadata accessor for StaticRVCClusterGroup);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1D1957278()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19573C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D19573C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticRVCClusterGroup.changeToCleanMode(index:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for EndpointPath(0);
  v2[13] = swift_task_alloc();
  v3 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ClusterPath(0);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1957560, 0, 0);
}

uint64_t sub_1D1957560()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[11];
  v3 = v0[12];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F660]) init];
  v0[19] = v5;
  v6 = sub_1D1E685DC();
  [v5 setNewMode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 1;
  v8 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = 2;
  v9 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D1741A30(v8, &qword_1EC6474E8, &unk_1D1E86820);
  v0[20] = sub_1D1951BB0(v9, 0x1Au);

  sub_1D1741B10(0, &qword_1EC6474F0, 0x1E696F5B8);
  sub_1D19581A4(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 26;
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1D1957720;
  v11 = v0[18];

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D1957720(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 176) = a1;

  sub_1D1959D30(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1957854, 0, 0);
}

uint64_t sub_1D1957854()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  sub_1D19581A4(v0[12], v3, type metadata accessor for StaticRVCClusterGroup);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = v2;
  sub_1D1959DD8(v3, v6 + v5, type metadata accessor for StaticRVCClusterGroup);
  v7 = v2;
  v8 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v8);

  v0[24] = 0x80000001D1EBE710;
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1D1957A14;
  v10 = v0[22];

  return sub_1D1915EBC(0x6F5465676E616863, 0xEC00000065646F4DLL, v10, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E85840, v6);
}

uint64_t sub_1D1957A14()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_1D1957C00;
  }

  else
  {
    v4 = *(v2 + 176);

    v3 = sub_1D1957B74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1957B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1957C00()
{
  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = *(v0 + 80);
    sub_1D19581A4(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D1959D90(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D1959DD8(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t StaticRVCClusterGroup.changeToCleanModeCommand(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1D1957E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1957E40, 0, 0);
}

uint64_t sub_1D1957E40()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[25] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1957FC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647508, &qword_1D1E90960);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_23;
  v0[14] = v6;
  [v5 changeToModeWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1957FC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D1959F80;
  }

  else
  {
    v2 = sub_1D19580D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19580D0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  sub_1D19596C4(v2, v1);
  v3 = *(v0 + 152);
  v3[3] = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);
  *v3 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19581A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D195820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1952640(a1, a2, a3, a4, v4 + v11);
}

void sub_1D1958308(void *a1, uint64_t a2, int a3)
{
  v67 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 commandResponseState];
  v11 = [v10 errorStateID];
  v12 = [v11 unsignedCharValue];

  StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v12, &v73);
  v13 = v73;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EE07A0B0);
  v68 = a2;
  sub_1D19581A4(a2, v9, type metadata accessor for EndpointPath);
  v15 = v10;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  v69 = v17;
  v18 = os_log_type_enabled(v16, v17);
  v19 = v13 >> 8;
  v20 = v13;
  if (v18)
  {
    v65 = v3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75 = v62;
    *v21 = 16909826;
    *(v21 + 4) = v12;
    *(v21 + 5) = 2114;
    v66 = a3;
    v63 = v19;
    if (v19 <= 0xFE)
    {
      sub_1D1959F00();
      swift_allocError();
      *v26 = v20;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v64 = v20;
    *(v21 + 7) = v23;
    v61 = v22;
    *v22 = v24;
    *(v21 + 15) = 2082;
    v27 = [v15 errorStateLabel];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1D1E6781C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = sub_1D1B1312C(v29, v31, &v75);

    *(v21 + 17) = v32;
    *(v21 + 25) = 2082;
    v33 = [v15 errorStateDetails];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1D1E6781C();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    v25 = v66;
    v38 = sub_1D1B1312C(v35, v37, &v75);

    *(v21 + 27) = v38;
    *(v21 + 35) = 2082;
    v73 = 3829371;
    v74 = 0xE300000000000000;
    v39 = v70;
    v72 = *&v9[*(v70 + 20)];
    v40 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v40);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v72) = *&v9[*(v39 + 24)];
    v41 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v41);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v42 = v73;
    v43 = v74;
    sub_1D1959D30(v9, type metadata accessor for EndpointPath);
    v44 = sub_1D1B1312C(v42, v43, &v75);

    *(v21 + 37) = v44;
    *(v21 + 45) = 1026;
    *(v21 + 47) = v25;
    _os_log_impl(&dword_1D16EC000, v16, v69, "Validate MTRRVCOperationalStateClusterOperationalCommandResponseParams: (%{public}hhu) (%{public}@) label:(%{public}s) details:(%{public}s) path: %{public}s commandID: %{public}u", v21, 0x33u);
    v45 = v61;
    sub_1D1741A30(v61, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v45, -1, -1);
    v46 = v62;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v46, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);

    v20 = v64;
    if (v63 > 0xFE)
    {
      goto LABEL_22;
    }
  }

  else
  {

    sub_1D1959D30(v9, type metadata accessor for EndpointPath);
    v25 = a3;
    if (v19 > 0xFE)
    {
      goto LABEL_22;
    }
  }

  if (v20 > 0xFF || v20)
  {
    v47 = v20;
    v48 = v71;
    sub_1D19581A4(v68, v71, type metadata accessor for EndpointPath);
    *(v48 + *(v67 + 20)) = 24;
    v49 = [v15 errorStateDetails];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D1E6781C();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = type metadata accessor for MatterCommandError(0);
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError, &protocol conformance descriptor for MatterCommandError);
    swift_allocError();
    v56 = v55;
    v57 = v54[8];
    v58 = type metadata accessor for StaticEndpoint(0);
    (*(*(v58 - 8) + 56))(&v56[v57], 1, 1, v58);
    *v56 = v47;
    sub_1D1959DD8(v71, &v56[v54[5]], type metadata accessor for ClusterPath);
    *&v56[v54[6]] = v25;
    v59 = &v56[v54[7]];
    *v59 = v51;
    v59[1] = v53;
    swift_willThrow();
  }

LABEL_22:
}

uint64_t sub_1D19589A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1953438(a1, a2, a3, a4, v4 + v11);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for StaticRVCClusterGroup(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 28) + 16))
  {
  }

  v6 = (v0 + v3 + *(v1 + 60));
  if (*v6)
  {

    if (v6[9] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1958C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1954E24(a1, a2, a3, a4, v4 + v11);
}

uint64_t sub_1D1958D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19569FC(a1, a2, a3, a4, v12, v4 + v11);
}

void sub_1D1958E3C(void *a1, uint64_t a2)
{
  v51 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 status];
  v10 = [v9 unsignedCharValue];

  StaticRVCClusterGroup.RunModeCommandError.init(rawValue:)(v10, &v57);
  v52 = v57;
  v55 = BYTE2(v57);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A0B0);
  sub_1D19581A4(a2, v8, type metadata accessor for EndpointPath);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  v53 = v12;

  if (!os_log_type_enabled(v13, v14))
  {

    sub_1D1959D30(v8, type metadata accessor for EndpointPath);
    if (v55)
    {
      return;
    }

    goto LABEL_13;
  }

  v50 = v2;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v59 = v48;
  *v15 = 16909314;
  *(v15 + 4) = v10;
  *(v15 + 5) = 2114;
  v49 = a2;
  if (v55)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_1D1959EAC();
    swift_allocError();
    v19 = BYTE1(v52);
    *v20 = v52;
    v20[1] = v19 & 1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v18 = v17;
  }

  *(v15 + 7) = v17;
  v47 = v16;
  *v16 = v18;
  *(v15 + 15) = 2082;
  v21 = [v53 statusText];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D1E6781C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = sub_1D1B1312C(v23, v25, &v59);

  *(v15 + 17) = v26;
  *(v15 + 25) = 2082;
  v57 = 3829371;
  v58 = 0xE300000000000000;
  v56 = *&v8[*(v6 + 20)];
  v27 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v27);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v56) = *&v8[*(v6 + 24)];
  v28 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v28);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v29 = v57;
  v30 = v58;
  sub_1D1959D30(v8, type metadata accessor for EndpointPath);
  v31 = sub_1D1B1312C(v29, v30, &v59);

  *(v15 + 27) = v31;
  _os_log_impl(&dword_1D16EC000, v13, v14, "Validate MTRRVCRunModeClusterChangeToModeResponseParams: (%{public}hhu) (%{public}@) statusText:(%{public}s) path: %{public}s", v15, 0x23u);
  v32 = v47;
  sub_1D1741A30(v47, &unk_1EC644000, &unk_1D1E75B00);
  MEMORY[0x1D3893640](v32, -1, -1);
  v33 = v48;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v33, -1, -1);
  MEMORY[0x1D3893640](v15, -1, -1);

  a2 = v49;
  if ((v55 & 1) == 0)
  {
LABEL_13:
    v34 = v54;
    sub_1D19581A4(a2, v54, type metadata accessor for EndpointPath);
    *(v34 + *(v51 + 20)) = 25;
    v35 = [v53 statusText];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = v52 & 0x1FF | 0x4000;
    v41 = type metadata accessor for MatterCommandError(0);
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError, &protocol conformance descriptor for MatterCommandError);
    swift_allocError();
    v43 = v42;
    v44 = v41[8];
    v45 = type metadata accessor for StaticEndpoint(0);
    (*(*(v45 - 8) + 56))(&v43[v44], 1, 1, v45);
    *v43 = v40;
    sub_1D1959DD8(v54, &v43[v41[5]], type metadata accessor for ClusterPath);
    *&v43[v41[6]] = 0;
    v46 = &v43[v41[7]];
    *v46 = v37;
    v46[1] = v39;
    swift_willThrow();
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for StaticRVCClusterGroup(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 28) + 16))
  {
  }

  v6 = (v0 + v3 + *(v1 + 60));
  if (*v6)
  {

    if (v6[9] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D19595B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticRVCClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1957E18(a1, a2, a3, a4, v12, v4 + v11);
}

void sub_1D19596C4(void *a1, uint64_t a2)
{
  v54 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 status];
  v10 = [v9 unsignedCharValue];

  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        v58 = 0;
        v55 = 1;
        v56 = 1;
        goto LABEL_14;
      case 3:
        v58 = 0;
        v55 = 2;
        v56 = 1;
        goto LABEL_14;
      case 64:
        v58 = 0;
        v55 = 3;
        v56 = 1;
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v58 = 0;
      v55 = 0;
      v56 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v56 = 0;
    v58 = 0;
    goto LABEL_13;
  }

  v56 = 0;
  v58 = 1;
LABEL_13:
  v55 = v10;
LABEL_14:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A0B0);
  sub_1D19581A4(a2, v8, type metadata accessor for EndpointPath);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  v57 = v12;

  if (!os_log_type_enabled(v13, v14))
  {

    sub_1D1959D30(v8, type metadata accessor for EndpointPath);
    if (v58)
    {
      return;
    }

    goto LABEL_26;
  }

  v51 = a2;
  v52 = v2;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v62 = v50;
  *v15 = 16909314;
  *(v15 + 4) = v10;
  *(v15 + 5) = 2114;
  v17 = v6;
  if (v58)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    sub_1D1959E40();
    swift_allocError();
    v20 = v56;
    *v21 = v55;
    v21[1] = v20;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    v19 = v18;
  }

  *(v15 + 7) = v18;
  v49 = v16;
  *v16 = v19;
  *(v15 + 15) = 2082;
  v22 = [v57 statusText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D1E6781C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v6 = v17;
  v27 = sub_1D1B1312C(v24, v26, &v62);

  *(v15 + 17) = v27;
  *(v15 + 25) = 2082;
  v60 = 3829371;
  v61 = 0xE300000000000000;
  v28 = v53;
  v59 = *&v8[*(v53 + 20)];
  v29 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v29);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v59) = *&v8[*(v28 + 24)];
  v30 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v30);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v31 = v60;
  v32 = v61;
  sub_1D1959D30(v8, type metadata accessor for EndpointPath);
  v33 = sub_1D1B1312C(v31, v32, &v62);

  *(v15 + 27) = v33;
  _os_log_impl(&dword_1D16EC000, v13, v14, "Validate MTRRVCCleanModeClusterChangeToModeResponseParams: (%{public}hhu) (%{public}@) statusText:(%{public}s) path: %{public}s", v15, 0x23u);
  v34 = v49;
  sub_1D1741A30(v49, &unk_1EC644000, &unk_1D1E75B00);
  MEMORY[0x1D3893640](v34, -1, -1);
  v35 = v50;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v35, -1, -1);
  MEMORY[0x1D3893640](v15, -1, -1);

  a2 = v51;
  if ((v58 & 1) == 0)
  {
LABEL_26:
    sub_1D19581A4(a2, v6, type metadata accessor for EndpointPath);
    v6[*(v54 + 20)] = 26;
    v36 = [v57 statusText];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1D1E6781C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    if (v56)
    {
      v41 = 256;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41 | v55 | 0x8000;
    v43 = type metadata accessor for MatterCommandError(0);
    sub_1D1959D90(&qword_1EC6474F8, type metadata accessor for MatterCommandError, &protocol conformance descriptor for MatterCommandError);
    swift_allocError();
    v45 = v44;
    v46 = v43[8];
    v47 = type metadata accessor for StaticEndpoint(0);
    (*(*(v47 - 8) + 56))(&v45[v46], 1, 1, v47);
    *v45 = v42;
    sub_1D1959DD8(v6, &v45[v43[5]], type metadata accessor for ClusterPath);
    *&v45[v43[6]] = 0;
    v48 = &v45[v43[7]];
    *v48 = v38;
    v48[1] = v40;
    swift_willThrow();
  }
}

uint64_t sub_1D1959D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1959D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1959DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1959E40()
{
  result = qword_1EC647500;
  if (!qword_1EC647500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647500);
  }

  return result;
}

unint64_t sub_1D1959EAC()
{
  result = qword_1EC647518;
  if (!qword_1EC647518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647518);
  }

  return result;
}

unint64_t sub_1D1959F00()
{
  result = qword_1EC647540;
  if (!qword_1EC647540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647540);
  }

  return result;
}

uint64_t sub_1D1959F88(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2 == 6)
  {
    v3 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 32) = 0;
    v6 = inited + 32;
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 36) = 10;
    if ((a2 - 1) > 3u)
    {
      v7 = 5;
    }

    else
    {
      v7 = qword_1D1E86840[(a2 - 1)];
    }

    *(inited + 40) = v7;
    *(inited + 48) = 2;
    v3 = sub_1D18D4B28(inited);
    swift_setDeallocating();
    sub_1D1741A30(v6, &qword_1EC646E70, &qword_1D1E83830);
  }

  v8 = sub_1D1964C58(v3, v2, 3u);

  return v8;
}

id sub_1D195A08C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v21 = a3;
  v22 = a4;
  v8 = sub_1D1E692CC();
  v9 = sub_1D1E692AC();
  v10 = sub_1D1E692CC();
  StaticRVCClusterGroup.Command.commandFields.getter(&v19);
  if (v19)
  {
    v11 = MatterCommandFields.asDictionary()();
  }

  else
  {
    v11 = 0;
  }

  v19 = a3;
  v20 = a4;
  v12 = StaticRVCClusterGroup.Command.expectedValues.getter();
  v13 = sub_1D195D618(v12, v6, a3, a4);

  sub_1D18F9814(v13);

  if (v11)
  {
    v14 = sub_1D1E675DC();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v16 = sub_1D1E67BFC();

  v17 = [v15 initWithCommandID:v8 endpointID:v9 clusterID:v10 accessory:a1 commandFields:v14 expectedValues:v16];

  return v17;
}

id sub_1D195A2B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  v5 = a3 ^ 1;
  v6 = sub_1D1E692CC();
  v7 = sub_1D1E692AC();
  v8 = sub_1D1E692CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v10 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 11;
  *(inited + 40) = v5 & 1;
  *(inited + 48) = 0;
  v11 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v10, &qword_1EC646E70, &qword_1D1E83830);
  v12 = sub_1D1964C58(v11, v3, 6u);

  sub_1D18F9814(v12);

  v13 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v14 = sub_1D1E67BFC();

  v15 = [v13 initWithCommandID:v6 endpointID:v7 clusterID:v8 accessory:a1 commandFields:0 expectedValues:v14];

  return v15;
}

id sub_1D195A43C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D1E692CC();
  v7 = sub_1D1E692AC();
  v8 = sub_1D1E692CC();
  v9 = 20;
  if (a3 - 1 >= 2 && a3 != 4)
  {
    if (a3 == 6)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = 5;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v11 = sub_1D1E684DC();
  sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D17524E4(v9, 2, v11, isUniquelyReferenced_nonNull_native);

  v10 = MatterCommandFields.asDictionary()();

LABEL_7:
  v13 = sub_1D1959F88(a2, a3);
  sub_1D18F9814(v13);

  if (v10)
  {
    v14 = sub_1D1E675DC();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v16 = sub_1D1E67BFC();

  v17 = [v15 initWithCommandID:v6 endpointID:v7 clusterID:v8 accessory:a1 commandFields:v14 expectedValues:v16];

  return v17;
}

uint64_t StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v366 = a3;
  v367 = a2;
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v356 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v356 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v356 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v356 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v356 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v356 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v356 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v42 = &v356 - v41;
  v44 = *a1;
  v43 = *(a1 + 8);
  v45 = *(a1 + 16);
  v46 = v45 >> 5;
  if (v45 >> 5 <= 1)
  {
    v362 = v38;
    v363 = v33;
    v361 = v39;
    if (!v46)
    {
      v49 = v367;
      if (v44)
      {
        StaticRVCClusterGroup.firstCleaningRunningMode.getter(&v379);
        v50 = v380;
        if (!v380)
        {
          goto LABEL_179;
        }
      }

      else
      {
        StaticRVCClusterGroup.firstIdleRunningMode.getter(&v379);
        v50 = v380;
        if (!v380)
        {
LABEL_179:
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v336 = sub_1D1E6709C();
          __swift_project_value_buffer(v336, qword_1EE07A0B0);
          v337 = v361;
          sub_1D1963018(v49, v361, type metadata accessor for StaticRVCClusterGroup);
          v338 = v362;
          sub_1D1963018(v49, v362, type metadata accessor for StaticRVCClusterGroup);
          v339 = sub_1D1E6707C();
          v340 = sub_1D1E6835C();
          if (os_log_type_enabled(v339, v340))
          {
            v341 = swift_slowAlloc();
            v365 = swift_slowAlloc();
            *&v375 = v365;
            *v341 = 136446466;
            v342 = v363;
            LOBYTE(v379) = *(v337 + *(v363 + 20));
            v343 = sub_1D1E678BC();
            v345 = v344;
            sub_1D196310C(v337, type metadata accessor for StaticRVCClusterGroup);
            v346 = sub_1D1B1312C(v343, v345, &v375);

            *(v341 + 4) = v346;
            *(v341 + 12) = 2082;
            v347 = v338 + *(v342 + 24);
            v348 = *(v347 + 2);
            v349 = *(v347 + 3);
            v379 = *v347;
            *&v380 = v348;
            *(&v380 + 1) = v349;

            v350 = sub_1D1E678BC();
            v352 = v351;
            v49 = v367;
            sub_1D196310C(v338, type metadata accessor for StaticRVCClusterGroup);
            v353 = sub_1D1B1312C(v350, v352, &v375);

            *(v341 + 14) = v353;
            _os_log_impl(&dword_1D16EC000, v339, v340, "Start/Pause button was pressed, but current state is unsupported. Operational State: (%{public}s). Running Mode: (%{public}s)", v341, 0x16u);
            v354 = v365;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v354, -1, -1);
            MEMORY[0x1D3893640](v341, -1, -1);

            goto LABEL_185;
          }

          sub_1D196310C(v338, type metadata accessor for StaticRVCClusterGroup);
          v165 = v337;
          goto LABEL_184;
        }
      }

      v74 = v49;
      v108 = v379;
      sub_1D192F928(v379, *(&v379 + 1), v50, *(&v380 + 1));
      v109 = 0;
      goto LABEL_35;
    }

    LODWORD(v91) = v45 & 0x1F;
    v57 = v44;
    v51 = v43;
    LODWORD(v92) = v45;
    sub_1D1962B64(v44, v43, v45 & 0x1F);
    v49 = v367;
    if (qword_1EE07A0A8 == -1)
    {
LABEL_26:
      v93 = sub_1D1E6709C();
      v94 = __swift_project_value_buffer(v93, qword_1EE07A0B0);
      sub_1D1963018(v49, v42, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1962B64(v57, v51, v91);
      v359 = v94;
      v95 = sub_1D1E6707C();
      v96 = sub_1D1E6835C();
      LODWORD(v365) = v92;
      sub_1D1962B38(v57, v51, v92, sub_1D18FB818, sub_1D1771B5C);
      v97 = os_log_type_enabled(v95, v96);
      v364 = v57;
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v375 = v99;
        *v98 = 136446466;
        *&v379 = v57;
        *(&v379 + 1) = v51;
        LOBYTE(v380) = v91;
        v100 = v51;
        sub_1D1962B64(v57, v51, v91);
        v101 = sub_1D1E678BC();
        v103 = sub_1D1B1312C(v101, v102, &v375);

        *(v98 + 4) = v103;
        *(v98 + 12) = 2082;
        v104 = &v42[*(v363 + 28)];
        v105 = *(v104 + 2);
        if (v105)
        {
          v106 = *(v104 + 1);
        }

        else
        {
          v105 = 0xE700000000000000;
          v106 = 0x6E776F6E6B6E75;
        }

        sub_1D196310C(v42, type metadata accessor for StaticRVCClusterGroup);
        v166 = sub_1D1B1312C(v106, v105, &v375);

        *(v98 + 14) = v166;
        _os_log_impl(&dword_1D16EC000, v95, v96, "Setting RVC clean mode to: %{public}s, current mode: %{public}s", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v99, -1, -1);
        MEMORY[0x1D3893640](v98, -1, -1);

        v49 = v367;
      }

      else
      {
        v100 = v51;

        sub_1D196310C(v42, type metadata accessor for StaticRVCClusterGroup);
      }

      v167 = v364;
      if (!v91)
      {
        v186 = v365;
        sub_1D1962B38(v364, v100, v365, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v167, v100, v186, sub_1D18FB818, sub_1D1771B5C);
        v187 = v366;
        *v366 = v167;
LABEL_117:
        v232 = 1;
        goto LABEL_118;
      }

      v360 = v100;
      if (v91 == 1)
      {
        LOBYTE(v375) = v364;
        StaticRVCClusterGroup.bestFitSelectingSecondaryTag(_:existingTags:)(&v375, 0, &v379);
        v168 = v380;
        if (v380)
        {
          v170 = *(&v379 + 1);
          v169 = v379;
          v171 = *(&v380 + 1);

          v172 = sub_1D1E6707C();
          v173 = sub_1D1E6835C();
          sub_1D192F928(v169, v170, v168, v171);
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v363 = swift_slowAlloc();
            *&v375 = v363;
            *v174 = 136446466;
            LOBYTE(v379) = v167;
            v175 = ModeClusterSemanticTag.description.getter();
            v177 = sub_1D1B1312C(v175, v176, &v375);

            *(v174 + 4) = v177;
            *(v174 + 12) = 2082;
            v379 = __PAIR128__(v170, v169);
            *&v380 = v168;
            *(&v380 + 1) = v171;

            v178 = sub_1D1E678BC();
            v180 = sub_1D1B1312C(v178, v179, &v375);

            *(v174 + 14) = v180;
            _os_log_impl(&dword_1D16EC000, v172, v173, "Setting RVC clean mode with best fit for tag %{public}s to: %{public}s", v174, 0x16u);
            v181 = v363;
            swift_arrayDestroy();
            v182 = v181;
            v183 = v367;
            MEMORY[0x1D3893640](v182, -1, -1);
            v184 = v174;
            v49 = v183;
            MEMORY[0x1D3893640](v184, -1, -1);

            v185 = v364;
          }

          else
          {

            v185 = v167;
          }

          sub_1D1962B38(v185, v360, v365, sub_1D18FB818, sub_1D1771B5C);
          sub_1D192F928(v169, v170, v168, v171);
LABEL_116:
          v187 = v366;
          *v366 = v169;
          goto LABEL_117;
        }

        v196 = v167;
        goto LABEL_122;
      }

      if (v364 | v100)
      {
        if (v364 ^ 1 | v100)
        {
          StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(1, 1, 0, &v379);
          if (v380)
          {
            v169 = v379;
            sub_1D192F928(v379, *(&v379 + 1), v380, *(&v380 + 1));
            v224 = sub_1D1E6707C();
            v225 = sub_1D1E6835C();
            if (os_log_type_enabled(v224, v225))
            {
              v226 = swift_slowAlloc();
              v227 = swift_slowAlloc();
              *&v379 = v227;
              *v226 = 136446210;
              *&v375 = v169;
              v228 = sub_1D1E678BC();
              v230 = v49;
              v231 = sub_1D1B1312C(v228, v229, &v379);

              *(v226 + 4) = v231;
              v49 = v230;
              _os_log_impl(&dword_1D16EC000, v224, v225, "Setting RVC clean mode with best fit for Vacuum+Mop: %{public}s", v226, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v227);
              MEMORY[0x1D3893640](v227, -1, -1);
              MEMORY[0x1D3893640](v226, -1, -1);
            }

            sub_1D1962B38(v364, v360, v365, sub_1D18FB818, sub_1D1771B5C);
            goto LABEL_116;
          }
        }

        else
        {
          StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(0, 1, 0, &v379);
          if (v380)
          {
            v74 = v49;
            v108 = v379;
            sub_1D192F928(v379, *(&v379 + 1), v380, *(&v380 + 1));
            v188 = sub_1D1E6707C();
            v189 = sub_1D1E6835C();
            if (os_log_type_enabled(v188, v189))
            {
              v190 = swift_slowAlloc();
              v191 = swift_slowAlloc();
              *&v379 = v191;
              *v190 = 136446210;
              *&v375 = v108;
              v192 = sub_1D1E678BC();
              v194 = sub_1D1B1312C(v192, v193, &v379);

              *(v190 + 4) = v194;
              _os_log_impl(&dword_1D16EC000, v188, v189, "Setting RVC clean mode with best fit for Mop: %{public}s", v190, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v191);
              MEMORY[0x1D3893640](v191, -1, -1);
              MEMORY[0x1D3893640](v190, -1, -1);
            }

            v195 = v364;
            goto LABEL_108;
          }
        }

        v196 = v364;
LABEL_122:
        sub_1D1962B38(v196, v360, v365, sub_1D18FB818, sub_1D1771B5C);
        goto LABEL_179;
      }

      v215 = v49;
      v216 = v364;
      v74 = v215;
      StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)(1, 0, 0, &v379);
      if (!v380)
      {
        sub_1D1962B38(v167, v360, v365, sub_1D18FB818, sub_1D1771B5C);
        v49 = v215;
        goto LABEL_179;
      }

      v108 = v379;
      sub_1D192F928(v379, *(&v379 + 1), v380, *(&v380 + 1));
      v217 = sub_1D1E6707C();
      v218 = sub_1D1E6835C();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        *&v379 = v220;
        *v219 = 136446210;
        *&v375 = v108;
        v221 = sub_1D1E678BC();
        v223 = sub_1D1B1312C(v221, v222, &v379);

        *(v219 + 4) = v223;
        _os_log_impl(&dword_1D16EC000, v217, v218, "Setting RVC clean mode with best fit for Vacuum: %{public}s", v219, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v220);
        MEMORY[0x1D3893640](v220, -1, -1);
        MEMORY[0x1D3893640](v219, -1, -1);
      }

      v195 = v216;
LABEL_108:
      sub_1D1962B38(v195, v360, v365, sub_1D18FB818, sub_1D1771B5C);
      v109 = 1;
      goto LABEL_35;
    }

LABEL_190:
    swift_once();
    goto LABEL_26;
  }

  if (v46 != 2)
  {
    if (v46 == 3)
    {
      v47 = v366;
      *v366 = v44;
      v48 = 3;
LABEL_146:
      *(v47 + 8) = v48;
      return sub_1D196310C(v367, type metadata accessor for StaticRVCClusterGroup);
    }

    if (!(v43 | v44) && v45 == 128)
    {
      v71 = v33;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v72 = sub_1D1E6709C();
      v73 = __swift_project_value_buffer(v72, qword_1EE07A0B0);
      v74 = v367;
      sub_1D1963018(v367, v28, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1963018(v74, v25, type metadata accessor for StaticRVCClusterGroup);
      v75 = sub_1D1E6707C();
      v76 = sub_1D1E6835C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v365 = v73;
        v78 = v77;
        v364 = swift_slowAlloc();
        *&v375 = v364;
        *v78 = 136446466;
        LOBYTE(v379) = v28[*(v71 + 20)];
        v79 = sub_1D1E678BC();
        v81 = v80;
        sub_1D196310C(v28, type metadata accessor for StaticRVCClusterGroup);
        v82 = sub_1D1B1312C(v79, v81, &v375);
        v74 = v367;

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        v83 = &v25[*(v71 + 24)];
        v84 = *(v83 + 2);
        v85 = *(v83 + 3);
        v379 = *v83;
        *&v380 = v84;
        *(&v380 + 1) = v85;

        v86 = sub_1D1E678BC();
        v88 = v87;
        sub_1D196310C(v25, type metadata accessor for StaticRVCClusterGroup);
        v89 = sub_1D1B1312C(v86, v88, &v375);

        *(v78 + 14) = v89;
        _os_log_impl(&dword_1D16EC000, v75, v76, "Generating pause cleaning command. Current operational state: %{public}s. Current run mode: %{public}s", v78, 0x16u);
        v90 = v364;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v90, -1, -1);
        MEMORY[0x1D3893640](v78, -1, -1);
      }

      else
      {

        sub_1D196310C(v25, type metadata accessor for StaticRVCClusterGroup);
        sub_1D196310C(v28, type metadata accessor for StaticRVCClusterGroup);
      }

      v125 = (v74 + *(v71 + 24));
      v126 = v125[1];
      v379 = *v125;
      v380 = v126;
      if (!StaticRVCClusterGroup.RunMode.isIdle.getter())
      {
        goto LABEL_102;
      }

      v127 = *(v74 + *(v71 + 20));
      v128 = sub_1D1E6707C();
      if (v127 == 4)
      {
        v129 = sub_1D1E6833C();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          v131 = "Attempted to pause RVC, but it's already idle. This is expected to fail.";
LABEL_100:
          _os_log_impl(&dword_1D16EC000, v128, v129, v131, v130, 2u);
          MEMORY[0x1D3893640](v130, -1, -1);
          sub_1D1962B38(0, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        }
      }

      else
      {
        v129 = sub_1D1E6835C();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          v131 = "Generating a pause while seeking charger, pausing RVC.";
          goto LABEL_100;
        }
      }

LABEL_102:
      v213 = v366;
      *v366 = 0;
      *(v213 + 8) = 4;
      return sub_1D196310C(v74, type metadata accessor for StaticRVCClusterGroup);
    }

    if (v44 == 1 && !v43 && v45 == 128)
    {
      v107 = 1;
LABEL_45:
      v47 = v366;
      *v366 = v107;
      v48 = 4;
      goto LABEL_146;
    }

    if (v44 == 2 && !v43 && v45 == 128)
    {
      v107 = 2;
      goto LABEL_45;
    }

    v361 = v39;
    v362 = v38;
    v363 = v33;
    if (v44 != 3 || v43 || v45 != 128)
    {
      v247 = v34;
      v248 = (v367 + *(v33 + 24));
      v249 = v248[1];
      v379 = *v248;
      v380 = v249;
      if (StaticRVCClusterGroup.RunMode.isIdle.getter())
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v250 = sub_1D1E6709C();
        __swift_project_value_buffer(v250, qword_1EE07A0B0);
        v49 = v367;
        sub_1D1963018(v367, v9, type metadata accessor for StaticRVCClusterGroup);
        v251 = sub_1D1E6707C();
        v252 = sub_1D1E6833C();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          *&v379 = v254;
          *v253 = 136446210;
          sub_1D1963018(v9, v247, type metadata accessor for StaticRVCClusterGroup);
          v255 = sub_1D1E678BC();
          v256 = v49;
          v258 = v257;
          sub_1D196310C(v9, type metadata accessor for StaticRVCClusterGroup);
          v259 = sub_1D1B1312C(v255, v258, &v379);
          v49 = v256;

          *(v253 + 4) = v259;
          v260 = "Asked to stop cleaning, but we are already idle. %{public}s";
LABEL_174:
          _os_log_impl(&dword_1D16EC000, v251, v252, v260, v253, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v254);
          v297 = v254;
          goto LABEL_175;
        }

        v317 = v9;
      }

      else
      {
        StaticRVCClusterGroup.stopCommand.getter(&v379);
        v109 = BYTE8(v379);
        if (BYTE8(v379) != 255)
        {
          v108 = v379;
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v318 = sub_1D1E6709C();
          __swift_project_value_buffer(v318, qword_1EE07A0B0);
          sub_1D1963018(v367, v12, type metadata accessor for StaticRVCClusterGroup);
          v319 = sub_1D1E6707C();
          v320 = sub_1D1E6835C();
          if (os_log_type_enabled(v319, v320))
          {
            v321 = swift_slowAlloc();
            v322 = swift_slowAlloc();
            *&v379 = v322;
            *v321 = 136446210;
            LOBYTE(v375) = v12[*(v363 + 20)];
            v323 = sub_1D1E678BC();
            v325 = v324;
            sub_1D196310C(v12, type metadata accessor for StaticRVCClusterGroup);
            v326 = sub_1D1B1312C(v323, v325, &v379);

            *(v321 + 4) = v326;
            _os_log_impl(&dword_1D16EC000, v319, v320, "Generating stop cleaning command. Current operational state: %{public}s", v321, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v322);
            MEMORY[0x1D3893640](v322, -1, -1);
            MEMORY[0x1D3893640](v321, -1, -1);
          }

          else
          {

            sub_1D196310C(v12, type metadata accessor for StaticRVCClusterGroup);
          }

          v74 = v367;
          goto LABEL_35;
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v289 = sub_1D1E6709C();
        __swift_project_value_buffer(v289, qword_1EE07A0B0);
        v49 = v367;
        sub_1D1963018(v367, v15, type metadata accessor for StaticRVCClusterGroup);
        v251 = sub_1D1E6707C();
        v290 = sub_1D1E6833C();
        if (os_log_type_enabled(v251, v290))
        {
          v253 = swift_slowAlloc();
          v291 = swift_slowAlloc();
          *&v379 = v291;
          *v253 = 136446210;
          sub_1D17859B8();
          v292 = sub_1D1E6817C();
          v293 = v49;
          v295 = v294;
          sub_1D196310C(v15, type metadata accessor for StaticRVCClusterGroup);
          v296 = sub_1D1B1312C(v292, v295, &v379);
          v49 = v293;

          *(v253 + 4) = v296;
          _os_log_impl(&dword_1D16EC000, v251, v290, "Could not create stop command. %{public}s", v253, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v291);
          v297 = v291;
LABEL_175:
          MEMORY[0x1D3893640](v297, -1, -1);
          MEMORY[0x1D3893640](v253, -1, -1);

          goto LABEL_179;
        }

        v317 = v15;
      }

LABEL_178:
      sub_1D196310C(v317, type metadata accessor for StaticRVCClusterGroup);
      goto LABEL_179;
    }

    v197 = v37;
    v198 = v36;
    v199 = v35;
    v365 = v40;
    v49 = v367;
    v200 = (v367 + *(v33 + 24));
    v201 = v200[1];
    v379 = *v200;
    v380 = v201;
    if (StaticRVCClusterGroup.RunMode.isIdle.getter())
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v202 = sub_1D1E6709C();
      __swift_project_value_buffer(v202, qword_1EE07A0B0);
      sub_1D1963018(v49, v22, type metadata accessor for StaticRVCClusterGroup);
      v203 = sub_1D1E6707C();
      v204 = sub_1D1E6835C();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v379 = v206;
        *v205 = 136446210;
        LOBYTE(v375) = v22[*(v363 + 20)];
        v207 = v49;
        v208 = sub_1D1E678BC();
        v210 = v209;
        sub_1D196310C(v22, type metadata accessor for StaticRVCClusterGroup);
        v211 = v208;
        v49 = v207;
        v212 = sub_1D1B1312C(v211, v210, &v379);

        *(v205 + 4) = v212;
        _os_log_impl(&dword_1D16EC000, v203, v204, "Generating start cleaning command. Current operational state: %{public}s", v205, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v206);
        MEMORY[0x1D3893640](v206, -1, -1);
        MEMORY[0x1D3893640](v205, -1, -1);
      }

      else
      {

        sub_1D196310C(v22, type metadata accessor for StaticRVCClusterGroup);
      }

      StaticRVCClusterGroup.startCommand.getter(&v379);
      v74 = v49;
      v109 = BYTE8(v379);
      if (BYTE8(v379) == 255)
      {
        v198 = v365;
        sub_1D1963018(v74, v365, type metadata accessor for StaticRVCClusterGroup);
        v251 = sub_1D1E6707C();
        v252 = sub_1D1E6833C();
        v49 = v74;
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          *&v379 = v254;
          *v253 = 136446210;
          sub_1D17859B8();
          v327 = sub_1D1E6817C();
          v329 = v328;
          sub_1D196310C(v198, type metadata accessor for StaticRVCClusterGroup);
          v330 = sub_1D1B1312C(v327, v329, &v379);

          *(v253 + 4) = v330;
          v260 = "StaticRVCClusterGroup returned nil start command. (%{public}s)";
          goto LABEL_174;
        }

        goto LABEL_176;
      }

      v108 = v379;
LABEL_35:
      v110 = v366;
      *v366 = v108;
      *(v110 + 8) = v109;
      return sub_1D196310C(v74, type metadata accessor for StaticRVCClusterGroup);
    }

    v298 = v200[1];
    v379 = *v200;
    v380 = v298;
    if (!StaticRVCClusterGroup.RunMode.isCleaning.getter())
    {
      v299 = v200[1];
      v375 = *v200;
      *v376 = v299;
      if (!StaticRVCClusterGroup.RunMode.isMapping.getter())
      {
        goto LABEL_179;
      }
    }

    if (!sub_1D17C4F24(*(v49 + *(v363 + 20)), &unk_1F4D65210))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v331 = sub_1D1E6709C();
      __swift_project_value_buffer(v331, qword_1EE07A0B0);
      sub_1D1963018(v49, v198, type metadata accessor for StaticRVCClusterGroup);
      v251 = sub_1D1E6707C();
      v252 = sub_1D1E6835C();
      if (os_log_type_enabled(v251, v252))
      {
        v253 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        *&v379 = v254;
        *v253 = 136446210;
        LOBYTE(v375) = *(v198 + *(v363 + 20));
        v332 = sub_1D1E678BC();
        v334 = v333;
        sub_1D196310C(v198, type metadata accessor for StaticRVCClusterGroup);
        v335 = sub_1D1B1312C(v332, v334, &v379);

        *(v253 + 4) = v335;
        v260 = "Asked to start cleaning, but current state is unsupported. Operational State: (%{public}s)";
        goto LABEL_174;
      }

LABEL_176:

      v317 = v198;
      goto LABEL_178;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v300 = sub_1D1E6709C();
    __swift_project_value_buffer(v300, qword_1EE07A0B0);
    sub_1D1963018(v49, v197, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1963018(v49, v199, type metadata accessor for StaticRVCClusterGroup);
    v301 = sub_1D1E6707C();
    v302 = sub_1D1E6835C();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      v365 = swift_slowAlloc();
      *&v375 = v365;
      *v303 = 136446466;
      v304 = v363;
      LOBYTE(v379) = *(v197 + *(v363 + 20));
      v305 = sub_1D1E678BC();
      v307 = v306;
      sub_1D196310C(v197, type metadata accessor for StaticRVCClusterGroup);
      v308 = sub_1D1B1312C(v305, v307, &v375);

      *(v303 + 4) = v308;
      *(v303 + 12) = 2082;
      v309 = v199 + *(v304 + 24);
      v310 = *(v309 + 16);
      v311 = *(v309 + 24);
      v379 = *v309;
      *&v380 = v310;
      *(&v380 + 1) = v311;

      v312 = sub_1D1E678BC();
      v314 = v313;
      v49 = v367;
      sub_1D196310C(v199, type metadata accessor for StaticRVCClusterGroup);
      v315 = sub_1D1B1312C(v312, v314, &v375);

      *(v303 + 14) = v315;
      _os_log_impl(&dword_1D16EC000, v301, v302, "Asked to start cleaning, but we are not idle. Generating resume command. Current operational state: %{public}s. Current run mode: %{public}s", v303, 0x16u);
      v316 = v365;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v316, -1, -1);
      MEMORY[0x1D3893640](v303, -1, -1);
    }

    else
    {

      sub_1D196310C(v199, type metadata accessor for StaticRVCClusterGroup);
      sub_1D196310C(v197, type metadata accessor for StaticRVCClusterGroup);
    }

    v187 = v366;
    *v366 = 1;
    v232 = 4;
LABEL_118:
    *(v187 + 8) = v232;
    return sub_1D196310C(v49, type metadata accessor for StaticRVCClusterGroup);
  }

  v51 = &v375;
  v52 = v367 + *(v33 + 60);
  v53 = *(v52 + 16);
  v379 = *v52;
  v380 = v53;
  v54 = *(v52 + 80);
  v383 = *(v52 + 64);
  v384 = v54;
  v385[0] = *(v52 + 96);
  *(v385 + 13) = *(v52 + 109);
  v55 = *(v52 + 48);
  v381 = *(v52 + 32);
  v382 = v55;
  v56 = *(&v379 + 1);
  v57 = v379;
  v58 = v380;
  v59 = *(v52 + 40);
  v386 = *(v52 + 24);
  v387 = v59;
  *(v390 + 13) = *(v52 + 101);
  v60 = *(v52 + 88);
  v61 = *(v52 + 56);
  v389 = *(v52 + 72);
  v390[0] = v60;
  v388 = v61;
  LODWORD(v365) = v45;
  if (!v379)
  {
    v362 = v34;
    v363 = v33;
    v111 = v43;
    v112 = v44;
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v113 = sub_1D1E6709C();
    __swift_project_value_buffer(v113, qword_1EE07A0B0);
    v49 = v367;
    sub_1D1963018(v367, v32, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1771B4C(v112, v111);
    v114 = sub_1D1E6707C();
    v115 = sub_1D1E6833C();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v369[0] = v117;
      *v116 = 136446466;
      *&v375 = v112;
      BYTE8(v375) = v111;
      v118 = sub_1D1E678BC();
      v120 = sub_1D1B1312C(v118, v119, v369);

      *(v116 + 4) = v120;
      *(v116 + 12) = 2082;
      sub_1D1963018(v32, v362, type metadata accessor for StaticRVCClusterGroup);
      v121 = sub_1D1E678BC();
      v123 = v122;
      sub_1D196310C(v32, type metadata accessor for StaticRVCClusterGroup);
      v124 = sub_1D1B1312C(v121, v123, v369);
      v49 = v367;

      *(v116 + 14) = v124;
      _os_log_impl(&dword_1D16EC000, v114, v115, "Trying to create a selectRooms command but there is no service area! %{public}s rvcCluster:%{public}s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v117, -1, -1);
      MEMORY[0x1D3893640](v116, -1, -1);

      sub_1D1962B38(v112, v111, v365, sub_1D18FB818, sub_1D1771B5C);
LABEL_185:
      result = sub_1D196310C(v49, type metadata accessor for StaticRVCClusterGroup);
      v355 = v366;
      *v366 = 0;
      *(v355 + 8) = -1;
      return result;
    }

    v164 = v365;
    sub_1D1962B38(v112, v111, v365, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v112, v111, v164, sub_1D18FB818, sub_1D1771B5C);

    v165 = v32;
LABEL_184:
    sub_1D196310C(v165, type metadata accessor for StaticRVCClusterGroup);
    goto LABEL_185;
  }

  v359 = v379;
  if (!v43)
  {
    v363 = v380;
    v360 = v43;
    v132 = v44;
    sub_1D1771B4C(v44, 0);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v133 = sub_1D1E6709C();
    __swift_project_value_buffer(v133, qword_1EE07A0B0);
    sub_1D1741C08(&v379, &v375, &qword_1EC646FD0, &qword_1D1E841D0);
    v42 = v360;
    v134 = v365;
    sub_1D1962B38(v132, v360, v365, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1741C08(&v379, &v375, &qword_1EC646FD0, &qword_1D1E841D0);
    v135 = sub_1D1E6707C();
    v136 = sub_1D1E6835C();
    sub_1D1962B38(v132, v42, v134, sub_1D18FB818, sub_1D1771B5C);
    if (!os_log_type_enabled(v135, v136))
    {
      sub_1D1962B38(v132, v42, v134, sub_1D18FB818, sub_1D1771B5C);

      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
LABEL_144:
      v47 = v366;
      *v366 = v132;
      goto LABEL_145;
    }

    LODWORD(v361) = v136;
    v362 = v135;
    v364 = v132;
    v137 = swift_slowAlloc();
    v357 = swift_slowAlloc();
    v377[0] = v357;
    v358 = v137;
    *v137 = 136315394;
    v49 = *(v57 + 16);
    if (!v49)
    {
      v139 = MEMORY[0x1E69E7CC0];
LABEL_143:
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      *&v375 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
      v279 = sub_1D1E678BC();
      v281 = sub_1D1B1312C(v279, v280, v377);

      v282 = v358;
      *(v358 + 1) = v281;
      *(v282 + 6) = 2080;
      *&v375 = v363;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
      v283 = sub_1D1E678BC();
      v285 = v284;
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      v286 = sub_1D1B1312C(v283, v285, v377);

      *(v282 + 14) = v286;
      v287 = v362;
      _os_log_impl(&dword_1D16EC000, v362, v361, "Changing selected areas to: %s, current selectedAreas: %s", v282, 0x16u);
      v288 = v357;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v288, -1, -1);
      MEMORY[0x1D3893640](v282, -1, -1);
      v132 = v364;
      sub_1D1962B38(v364, v360, v365, sub_1D18FB818, sub_1D1771B5C);

      goto LABEL_144;
    }

    v138 = 0;
    v91 = v57 + 32;
    v92 = (v364 + 32);
    v139 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v140 = *(v57 + 16);
LABEL_57:
      if (v138 < v140)
      {
        v141 = (v91 + 48 * v138);
        v143 = *v141;
        v142 = v141[1];
        *&v376[9] = *(v141 + 25);
        v375 = v143;
        *v376 = v142;
        ++v138;
        v144 = *(v364 + 16);
        v145 = v92;
        do
        {
          if (!v144)
          {
            if (v138 != v49)
            {
              goto LABEL_57;
            }

            goto LABEL_143;
          }

          v146 = *v145++;
          --v144;
        }

        while (v146 != v143);
        sub_1D18B869C(&v375, v369);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v368 = v139;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178D634(0, *(v139 + 16) + 1, 1);
          v139 = v368;
        }

        v149 = *(v139 + 16);
        v148 = *(v139 + 24);
        v42 = (v149 + 1);
        if (v149 >= v148 >> 1)
        {
          sub_1D178D634((v148 > 1), v149 + 1, 1);
          v139 = v368;
        }

        *(v139 + 16) = v42;
        v150 = (v139 + 48 * v149);
        v151 = v375;
        v152 = *v376;
        *(v150 + 57) = *&v376[9];
        v150[2] = v151;
        v150[3] = v152;
        v57 = v359;
        if (v138 != v49)
        {
          continue;
        }

        goto LABEL_143;
      }

      break;
    }

    __break(1u);
    goto LABEL_190;
  }

  if (v43 == 1)
  {
    v361 = v39;
    v362 = v38;
    v363 = v33;
    v364 = v44;
    v360 = v43;
    v375 = v379;
    *v376 = v380;
    *&v376[40] = *(v52 + 56);
    *&v376[56] = *(v52 + 72);
    *&v376[72] = *(v52 + 88);
    *&v376[85] = *(v52 + 101);
    *&v376[8] = *(v52 + 24);
    *&v376[24] = *(v52 + 40);
    ServiceArea.map(for:)(v44, v377);
    v62 = v378;
    if (!v378)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v235 = sub_1D1E6709C();
      __swift_project_value_buffer(v235, qword_1EE07A0B0);
      *&v376[48] = v383;
      *&v376[64] = v384;
      *&v376[80] = v385[0];
      *&v376[93] = *(v385 + 13);
      v375 = v379;
      *v376 = v380;
      *&v376[16] = v381;
      *&v376[32] = v382;
      sub_1D1741C08(&v379, v369, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D192D0CC(&v375, v369);
      v236 = sub_1D1E6707C();
      v237 = sub_1D1E6833C();
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v240 = v56;
        v241 = v239;
        *v238 = 67109378;
        v372 = v388;
        v373 = v389;
        v374[0] = v390[0];
        *(v374 + 13) = *(v390 + 13);
        v370 = v386;
        v371 = v387;
        v242 = v57;
        v243 = v364;
        *(v238 + 4) = v364;
        *(v238 + 8) = 2082;
        v368 = v239;
        v369[0] = v242;
        v369[1] = v240;
        v369[2] = v58;
        v244 = sub_1D1E678BC();
        v246 = sub_1D1B1312C(v244, v245, &v368);

        *(v238 + 10) = v246;
        _os_log_impl(&dword_1D16EC000, v236, v237, "Failed to find map for selected map ID: %u rvcCluster:%{public}s", v238, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v241);
        MEMORY[0x1D3893640](v241, -1, -1);
        MEMORY[0x1D3893640](v238, -1, -1);
        sub_1D1962B38(v243, v360, v365, sub_1D18FB818, sub_1D1771B5C);
      }

      else
      {
        sub_1D1962B38(v364, v360, v365, sub_1D18FB818, sub_1D1771B5C);

        sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      }

      v49 = v367;
      goto LABEL_179;
    }

    *&v376[40] = v388;
    *&v376[56] = v389;
    *&v376[72] = v390[0];
    *&v376[85] = *(v390 + 13);
    *&v376[8] = v386;
    v362 = v377[1];
    v363 = v56;
    v375 = __PAIR128__(v56, v57);
    *v376 = v58;
    *&v376[24] = v387;
    LODWORD(v361) = v377[0];
    v63 = ServiceArea.validAreas(for:)(LODWORD(v377[0]));
    v64 = *(v63 + 16);
    if (v64)
    {
      v357 = v62;
      *&v375 = MEMORY[0x1E69E7CC0];
      v358 = v63;
      sub_1D178D5B4(0, v64, 0);
      v65 = v358;
      v66 = v375;
      v67 = *(v375 + 16);
      v68 = 8;
      do
      {
        v69 = v65[v68];
        *&v375 = v66;
        v70 = *(v66 + 24);
        if (v67 >= v70 >> 1)
        {
          sub_1D178D5B4((v70 > 1), v67 + 1, 1);
          v65 = v358;
          v66 = v375;
        }

        *(v66 + 16) = v67 + 1;
        *(v66 + 4 * v67 + 32) = v69;
        v68 += 12;
        ++v67;
        --v64;
      }

      while (v64);

      v57 = v359;
      v62 = v357;
    }

    else
    {

      v66 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v261 = sub_1D1E6709C();
    __swift_project_value_buffer(v261, qword_1EE07A0B0);
    sub_1D1741C08(&v379, &v375, &qword_1EC646FD0, &qword_1D1E841D0);
    sub_1D1741C08(&v379, &v375, &qword_1EC646FD0, &qword_1D1E841D0);

    v262 = sub_1D1E6707C();
    v263 = sub_1D1E6835C();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v359 = swift_slowAlloc();
      v369[0] = v359;
      *v264 = 136315650;
      LODWORD(v375) = v361;
      *(&v375 + 1) = v362;
      *v376 = v62;
      v265 = sub_1D1E678BC();
      LODWORD(v362) = v263;
      v267 = sub_1D1B1312C(v265, v266, v369);

      *&v376[40] = v388;
      *&v376[56] = v389;
      *&v376[72] = v390[0];
      *&v376[85] = *(v390 + 13);
      v268 = v387;
      *&v376[8] = v386;
      *(v264 + 4) = v267;
      *(v264 + 12) = 2080;
      *&v375 = v57;
      *(&v375 + 1) = v363;
      *v376 = v58;
      *&v376[24] = v268;
      v269 = v364;
      v270 = ServiceArea.supportedAreas(for:)(v364);
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      *&v375 = v270;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
      v271 = sub_1D1E678BC();
      v273 = sub_1D1B1312C(v271, v272, v369);

      *(v264 + 14) = v273;
      *(v264 + 22) = 2080;
      *&v375 = v58;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
      v274 = sub_1D1E678BC();
      v276 = v275;
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      v277 = sub_1D1B1312C(v274, v276, v369);

      *(v264 + 24) = v277;
      _os_log_impl(&dword_1D16EC000, v262, v362, "Changing selected map to: %s, areas to select: %s, current selectedAreas: %s", v264, 0x20u);
      v278 = v359;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v278, -1, -1);
      MEMORY[0x1D3893640](v264, -1, -1);

      sub_1D1962B38(v269, v360, v365, sub_1D18FB818, sub_1D1771B5C);
    }

    else
    {

      sub_1D1962B38(v364, v360, v365, sub_1D18FB818, sub_1D1771B5C);

      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
    }

    v47 = v366;
    *v366 = v66;
LABEL_145:
    v48 = 2;
    goto LABEL_146;
  }

  v153 = v43;
  v154 = v44;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v155 = sub_1D1E6709C();
  __swift_project_value_buffer(v155, qword_1EE07A0B0);
  *&v376[48] = v383;
  *&v376[64] = v384;
  *&v376[80] = v385[0];
  *&v376[93] = *(v385 + 13);
  v375 = v379;
  *v376 = v380;
  *&v376[16] = v381;
  *&v376[32] = v382;
  sub_1D192D0CC(&v375, v369);
  v156 = sub_1D1E6707C();
  v157 = sub_1D1E6835C();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v369[0] = v159;
    *v158 = 136315138;
    v377[0] = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647550, &unk_1D1E858A0);
    v160 = sub_1D1E678BC();
    v162 = v161;
    sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
    v163 = sub_1D1B1312C(v160, v162, v369);

    *(v158 + 4) = v163;
    _os_log_impl(&dword_1D16EC000, v156, v157, "Changing selected map to all. Current selectedAreas: %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v159);
    MEMORY[0x1D3893640](v159, -1, -1);
    MEMORY[0x1D3893640](v158, -1, -1);
  }

  else
  {

    sub_1D1741A30(&v379, &qword_1EC646FD0, &qword_1D1E841D0);
  }

  v233 = v367;
  sub_1D1962B38(v154, v153, v365, sub_1D18FB818, sub_1D1771B5C);
  v234 = v366;
  *v366 = MEMORY[0x1E69E7CC0];
  *(v234 + 8) = 2;
  return sub_1D196310C(v233, type metadata accessor for StaticRVCClusterGroup);
}

uint64_t sub_1D195D618(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v7; i = v28)
    {
      v28 = i;
      v12 = v10;
LABEL_10:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(a1 + 48) + 8 * v14);
      v16 = *(a1 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v15;
      v20 = inited + 32;
      *(inited + 40) = v17;
      *(inited + 48) = v18;
      v21 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v17, v18);
      sub_1D1741A30(v20, &qword_1EC6474E8, &unk_1D1E86820);
      v22 = sub_1D1E692AC();
      v23 = sub_1D1E692CC();
      v24 = sub_1D1E692CC();
      v25 = [objc_opt_self() attributePathWithEndpointID:v22 clusterID:v23 attributeID:v24];

      v26 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v21, v25);

      result = sub_1D17A386C(v26);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return i;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v28 = i;
        v10 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.CleanMode.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x1D3892850](4);
      sub_1D1E6923C();

      return sub_1D1E678EC();
    }

    else
    {
      if (v4 | v5)
      {
        if (v4 ^ 1 | v5)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }

      return MEMORY[0x1D3892850](v8);
    }
  }

  else
  {
    MEMORY[0x1D3892850](3);
    MEMORY[0x1D3892850](v4);
    if (v5)
    {
      sub_1D1E6922C();

      return sub_1D176D34C(a1, v5);
    }

    else
    {
      return sub_1D1E6922C();
    }
  }
}

uint64_t StaticRVCClusterGroup.Command.CleanMode.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195D9FC()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195DA54(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[9] = *v1;
  v5 = v2;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.CleanMode.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.RunMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.RoomSelection.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1D3892850](2);
      return sub_1D1E6924C();
    }

    else
    {
      return MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](1);
    result = MEMORY[0x1D3892850](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 32;
      do
      {
        v4 += 4;
        result = sub_1D1E6924C();
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.RoomSelection.hashValue.getter()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D195DC18()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D195DC70(uint64_t a1)
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.RoomSelection.hash(into:)();
  return sub_1D1E6926C();
}

void StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v5 = type metadata accessor for StaticEndpoint(0);
  v82 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = type metadata accessor for StaticRVCClusterGroup(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v78 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v78 - v19;
  v21 = *(type metadata accessor for StaticMatterDevice(0) + 56);
  v83 = a2;
  v22 = *(a2 + v21);
  v23 = a1;
  v24 = [a1 endpointID];
  v25 = [v24 unsignedShortValue];

  if (!*(v22 + 16) || (v26 = sub_1D171D15C(v25), (v27 & 1) == 0))
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_1D1963018(*(v22 + 56) + v82[9] * v26, v7, type metadata accessor for StaticEndpoint);
  sub_1D1741C08(&v7[*(v5 + 40)], v10, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D196310C(v7, type metadata accessor for StaticEndpoint);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

LABEL_6:
    sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
    sub_1D1741A30(v10, &qword_1EC644778, &unk_1D1E75B10);
LABEL_7:
    v28 = v84;
    *v84 = 0;
    v28[1] = 0;
    v29 = -4;
LABEL_8:
    *(v28 + 16) = v29;
    return;
  }

  v30 = v20;
  sub_1D1963080(v10, v20);
  v31 = v23;
  HMMatterCommand.associatedMatterCommand.getter(&v87);
  if (!v90)
  {

    sub_1D1741A30(&v87, &qword_1EC646A98, &unk_1D1E858B0);
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
LABEL_41:

    goto LABEL_42;
  }

  v32 = v85;
  if (v86 > 1u)
  {
    if (v86 != 2)
    {
      if (v86 == 3)
      {

        sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
        v28 = v84;
        *v84 = v32;
        v28[1] = 0;
        v29 = 96;
      }

      else
      {
        if (v85)
        {
          if (v85 == 1)
          {

            sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
            sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
            v45 = xmmword_1D1E85870;
          }

          else
          {

            sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
            sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
            v45 = xmmword_1D1E85860;
          }

          v28 = v84;
          *v84 = v45;
        }

        else
        {

          sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
          sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
          v28 = v84;
          *v84 = 0;
          v28[1] = 0;
        }

        v29 = 0x80;
      }

      goto LABEL_8;
    }

    v39 = &v20[*(v11 + 60)];
    v40 = *v39;
    if (*v39)
    {
      v41 = *(v39 + 1);
      v42 = v39[114];

      v43 = *(v32 + 16);
      sub_1D19630E4(v32, 2);
      if (!v43)
      {
        sub_1D19630E4(v32, 2);
        sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
LABEL_61:
        v28 = v84;
        *v84 = xmmword_1D1E85880;
        goto LABEL_62;
      }

      if (v43 == *(v40 + 16))
      {
        if ((v42 & 1) == 0 || !v41)
        {
          sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
          sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
LABEL_60:
          sub_1D19630E4(v32, 2);
          goto LABEL_61;
        }

        v44 = *(v41 + 16);
        sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
        if (v44 <= 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
      }

      v28 = v84;
      *v84 = v32;
      v28[1] = 0;
LABEL_62:
      v29 = 64;
      goto LABEL_8;
    }

    v51 = qword_1EE07A0A8;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_1D1E6709C();
    __swift_project_value_buffer(v52, qword_1EE07A0B0);
    v53 = v80;
    sub_1D1963018(v20, v80, type metadata accessor for StaticRVCClusterGroup);

    v54 = sub_1D1E6707C();
    v55 = sub_1D1E6833C();
    sub_1D19630E4(v32, 2);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v87 = v57;
      *v56 = 136446466;
      v58 = MEMORY[0x1D3891260](v32, MEMORY[0x1E69E7668]);
      v82 = v31;
      v60 = v59;
      sub_1D19630E4(v32, 2);
      v61 = sub_1D1B1312C(v58, v60, &v87);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      sub_1D1963018(v53, v81, type metadata accessor for StaticRVCClusterGroup);
      v62 = sub_1D1E678BC();
      v64 = v63;
      sub_1D196310C(v53, type metadata accessor for StaticRVCClusterGroup);
      v65 = sub_1D1B1312C(v62, v64, &v87);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_1D16EC000, v54, v55, "Trying to create a selectRooms command but there is no service area! %{public}s rvcCluster:%{public}s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v56, -1, -1);

      sub_1D19630E4(v32, 2);
    }

    else
    {
      sub_1D19630E4(v32, 2);
      sub_1D19630E4(v32, 2);

      sub_1D196310C(v53, type metadata accessor for StaticRVCClusterGroup);
    }

LABEL_42:
    sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
    sub_1D196310C(v30, type metadata accessor for StaticRVCClusterGroup);
    goto LABEL_7;
  }

  if (v86)
  {
    StaticRVCClusterGroup.cleanMode(with:)(v85, &v87);
    v46 = v89;
    if (v89)
    {
      v48 = v87;
      v47 = v88;
      v49 = v90;
      v50 = *(StaticRVCClusterGroup.CleanMode.secondaryTags.getter() + 2);

      if (v50)
      {

        sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
        sub_1D196310C(v30, type metadata accessor for StaticRVCClusterGroup);

        sub_1D192F928(v48, v47, v46, v49);
        v29 = 32;
      }

      else
      {
        v87 = v48;
        v88 = v47;
        v89 = v46;
        v90 = v49;
        if (StaticRVCClusterGroup.CleanMode.isVacuumOnly.getter())
        {

          sub_1D192F928(v48, v47, v46, v49);
          sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
          sub_1D196310C(v30, type metadata accessor for StaticRVCClusterGroup);
          v32 = 0;
          v49 = 0;
          v29 = 34;
        }

        else
        {
          v87 = v48;
          v88 = v47;
          v89 = v46;
          v90 = v49;
          if ((StaticRVCClusterGroup.CleanMode.isMopOnly.getter() & 1) == 0)
          {
            v87 = v48;
            v88 = v47;
            v89 = v46;
            v90 = v49;
            v77 = StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter();

            sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
            sub_1D196310C(v30, type metadata accessor for StaticRVCClusterGroup);
            sub_1D192F928(v48, v47, v46, v49);
            if (v77)
            {
              v28 = v84;
              *v84 = xmmword_1D1E85860;
              v29 = 34;
              goto LABEL_8;
            }

            goto LABEL_7;
          }

          sub_1D192F928(v48, v47, v46, v49);
          sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
          sub_1D196310C(v30, type metadata accessor for StaticRVCClusterGroup);
          v49 = 0;
          v29 = 34;
          v32 = 1;
        }
      }

      v28 = v84;
      *v84 = v32;
      v28[1] = v49;
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  StaticRVCClusterGroup.runMode(with:)(v85, &v87);
  v33 = v89;
  if (!v89)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v66 = sub_1D1E6709C();
    __swift_project_value_buffer(v66, qword_1EE07A0B0);
    v67 = v20;
    v68 = v79;
    sub_1D1963018(v67, v79, type metadata accessor for StaticRVCClusterGroup);
    v69 = sub_1D1E6707C();
    v70 = sub_1D1E6833C();
    if (!os_log_type_enabled(v69, v70))
    {

      sub_1D196310C(v68, type metadata accessor for StaticRVCClusterGroup);
      goto LABEL_42;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v87 = v72;
    *v71 = 134218242;
    *(v71 + 4) = v32;
    *(v71 + 12) = 2082;
    sub_1D1963018(v68, v81, type metadata accessor for StaticRVCClusterGroup);
    v73 = sub_1D1E678BC();
    v75 = v74;
    sub_1D196310C(v68, type metadata accessor for StaticRVCClusterGroup);
    v76 = sub_1D1B1312C(v73, v75, &v87);

    *(v71 + 14) = v76;
    _os_log_impl(&dword_1D16EC000, v69, v70, "Failed to find runMode for id: %lu rvcCluster:%{public}s", v71, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x1D3893640](v72, -1, -1);
    MEMORY[0x1D3893640](v71, -1, -1);

    goto LABEL_41;
  }

  v34 = v90;
  v36 = v87;
  v35 = v88;
  v37 = StaticRVCClusterGroup.RunMode.isCleaning.getter();

  sub_1D196310C(v83, type metadata accessor for StaticMatterDevice);
  sub_1D196310C(v20, type metadata accessor for StaticRVCClusterGroup);
  sub_1D192F928(v36, v35, v33, v34);
  v38 = v84;
  if (v37)
  {
    *v84 = xmmword_1D1E85870;
  }

  else
  {
    *v84 = 0;
    v38[1] = 0;
  }

  *(v38 + 16) = 0;
}

id StaticRVCClusterGroup.Command.Template.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-1] - v5;
  v7 = type metadata accessor for StaticRVCClusterGroup(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-1] - v12;
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = a2;
  v18 = type metadata accessor for StaticEndpoint(0);
  sub_1D1741C08(v17 + *(v18 + 40), v6, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC644778, &unk_1D1E75B10);
    return 0;
  }

  else
  {
    sub_1D1963080(v6, v13);
    v26[0] = v14;
    v26[1] = v15;
    v27 = v16;
    sub_1D1963018(v13, v11, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1962B38(v14, v15, v16, sub_1D1962B64, sub_1D1771B4C);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(v26, v11, &v28);
    v20 = v29;
    if (v29 == 255)
    {
      v19 = 0;
    }

    else
    {
      v21 = v28;
      v22 = v17 + *(v18 + 20);
      v23 = type metadata accessor for EndpointPath(0);
      v19 = sub_1D195A08C(v25, *(v22 + *(v23 + 24)), v21, v20);
      sub_1D19630F8(v21, v20);
    }

    sub_1D196310C(v13, type metadata accessor for StaticRVCClusterGroup);
  }

  return v19;
}

double StaticRVCClusterGroup.Command.Template.matterCommand(endpoint:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28[-v5];
  v7 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StaticRVCClusterGroup(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28[-v15];
  v17 = *v2;
  v30 = *(v2 + 8);
  v31 = v17;
  v29 = *(v2 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 16))(v18, v19);
  sub_1D1741C08(v9, v6, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D196310C(v9, type metadata accessor for StaticClusterGroups);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC644778, &unk_1D1E75B10);
    result = 0.0;
    v21 = v32;
    *v32 = 0u;
    v21[1] = 0u;
    *(v21 + 4) = 0;
  }

  else
  {
    v22 = v32;
    sub_1D1963080(v6, v16);
    v24 = v30;
    v23 = v31;
    v33[0] = v31;
    v33[1] = v30;
    v25 = v29;
    v34 = v29;
    sub_1D1963018(v16, v14, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1962B38(v23, v24, v25, sub_1D1962B64, sub_1D1771B4C);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(v33, v14, &v35);
    v26 = v36;
    if (v36 == 255)
    {
      sub_1D196310C(v16, type metadata accessor for StaticRVCClusterGroup);
      *(v22 + 4) = 0;
      result = 0.0;
      *v22 = 0u;
      v22[1] = 0u;
    }

    else
    {
      v27 = v35;
      *(v22 + 3) = &type metadata for StaticRVCClusterGroup.Command;
      *(v22 + 4) = sub_1D18FA450();
      *v22 = v27;
      *(v22 + 8) = v26;
      sub_1D196310C(v16, type metadata accessor for StaticRVCClusterGroup);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.isCompatible(with:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D17419CC(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v4 >> 5;
    if (v4 >> 5 == 2)
    {
      if (v10 >> 5 != 1)
      {
        if (v10 >> 5)
        {
          sub_1D1771B4C(v3, v2);
          goto LABEL_22;
        }

        sub_1D1771B4C(v3, v2);
        goto LABEL_14;
      }

      sub_1D1771B4C(v3, v2);
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          sub_1D1962B38(v3, v2, v4, sub_1D1962B64, sub_1D1771B4C);
        }

        else if (v3)
        {
          sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
          sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
          return (v10 >> 5) - 1 < 2u;
        }

LABEL_22:
        sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
        return 0;
      }

      v7 = v4 & 0x1F;
      if (v10 >> 5 != 2)
      {
        if (v10 >> 5)
        {
          sub_1D1962B64(v3, v2, v7);
          goto LABEL_22;
        }

        sub_1D1962B64(v3, v2, v7);
LABEL_14:
        sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
        return (v8 & 1) != 0;
      }

      sub_1D1962B64(v3, v2, v7);
    }

    sub_1D1962B38(v3, v2, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v8, v9, v10, sub_1D18FB818, sub_1D1771B5C);
    return 1;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 1)
  {
    if (!v7)
    {
      MEMORY[0x1D3892850](0);
      v9 = v4 & 1;
      return MEMORY[0x1D3892850](v9);
    }

    v11 = v6 & 0x1F;
    MEMORY[0x1D3892850](1);
    if (v11)
    {
      if (v11 != 1)
      {
        if (v4 | v5)
        {
          if (v4 ^ 1 | v5)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          return MEMORY[0x1D3892850](v9);
        }

        goto LABEL_32;
      }

      MEMORY[0x1D3892850](4);
      sub_1D1E6923C();

      return sub_1D1E678EC();
    }

    else
    {
      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v4);
      if (v5)
      {
        sub_1D1E6922C();

        return sub_1D176D34C(a1, v5);
      }

      else
      {
        return sub_1D1E6922C();
      }
    }
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v8 = 6;
LABEL_10:
        MEMORY[0x1D3892850](v8);
        return sub_1D1E6924C();
      }

      if (v5 | v4 || v6 != 128)
      {
        if (v4 == 1 && !v5 && v6 == 128)
        {
          v9 = 4;
        }

        else if (v4 == 2 && !v5 && v6 == 128)
        {
          v9 = 5;
        }

        else if (v4 == 3 && !v5 && v6 == 128)
        {
          v9 = 7;
        }

        else
        {
          v9 = 8;
        }
      }

      else
      {
        v9 = 3;
      }

      return MEMORY[0x1D3892850](v9);
    }

    MEMORY[0x1D3892850](2);
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = 2;
        goto LABEL_10;
      }

LABEL_32:
      v9 = 0;
      return MEMORY[0x1D3892850](v9);
    }

    MEMORY[0x1D3892850](1);
    result = MEMORY[0x1D3892850](*(v4 + 16));
    v12 = *(v4 + 16);
    if (v12)
    {
      v13 = v4 + 32;
      do
      {
        v13 += 4;
        result = sub_1D1E6924C();
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t StaticRVCClusterGroup.Command.Template.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195F5DC()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195F634(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[9] = *v1;
  v5 = v2;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v4);
  return sub_1D1E6926C();
}

void StaticRVCClusterGroup.Command.init(clusterKind:commandID:expectedValues:commandFields:)(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{

  v8 = *a1;
  v9 = *a3;
  if (v8 <= 0x19)
  {
    if (v8 != 24)
    {
      if (v8 == 25)
      {
        if (v9)
        {
          sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
          v10 = sub_1D1E684DC();
          v11 = v10;
          if (*(v9 + 16))
          {
            v12 = sub_1D171D228(v10);
            if (v13)
            {
              v14 = *(v9 + 56) + 16 * v12;
              v15 = *v14;
              v16 = *(v14 + 8);
              sub_1D1741AF8(*v14, *(v14 + 8));

              if (v16 == 2)
              {
                *a4 = v15;
                *(a4 + 8) = 0;
                return;
              }

              goto LABEL_31;
            }
          }

          goto LABEL_25;
        }

LABEL_26:
        *a4 = 0;
        v21 = -1;
        goto LABEL_27;
      }

LABEL_16:

      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v26 = 1;
    }

    else
    {
      if (!a2)
      {
        *a4 = 0;
        v21 = 4;
        goto LABEL_27;
      }

      v26 = 2;
    }

    *a4 = v26;
    v21 = 4;
    goto LABEL_27;
  }

  if (v8 == 26)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v22 = sub_1D1E684DC();
    v11 = v22;
    if (*(v9 + 16))
    {
      v23 = sub_1D171D228(v22);
      if (v24)
      {
        v25 = *(v9 + 56) + 16 * v23;
        v15 = *v25;
        v16 = *(v25 + 8);
        sub_1D1741AF8(*v25, *(v25 + 8));

        if (v16 == 2)
        {
          *a4 = v15;
          v21 = 1;
          goto LABEL_27;
        }

LABEL_31:
        sub_1D1757AE8(v15, v16);
        goto LABEL_26;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v8 != 27)
  {
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_26;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v17 = sub_1D1E684DC();
  v11 = v17;
  if (!*(v9 + 16))
  {
    goto LABEL_25;
  }

  v18 = sub_1D171D228(v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(v9 + 56) + 16 * v18;
  v15 = *v20;
  v16 = *(v20 + 8);
  sub_1D1741AF8(*v20, *(v20 + 8));

  if (v16 != 3)
  {
    goto LABEL_31;
  }

  *a4 = v15;
  v21 = 2;
LABEL_27:
  *(a4 + 8) = v21;
}

uint64_t StaticRVCClusterGroup.Command.commandID.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 3)
  {
    return 0;
  }

  if (v1 == 3)
  {
    return 2;
  }

  return qword_1D1E86880[*v0];
}

uint64_t StaticRVCClusterGroup.Command.executionOrder.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else if (v1 == 3)
  {
    return 1;
  }

  else
  {
    return *v0 + 3;
  }
}

unint64_t StaticRVCClusterGroup.Command.expectedValues.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 1;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      v6 = 26;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 1;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      v6 = 25;
    }

    *(inited + 36) = v6;
    *(inited + 40) = v1;
    goto LABEL_16;
  }

  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    v7 = swift_initStackObject();
    *(v7 + 32) = 2;
    v5 = v7 + 32;
    *(v7 + 16) = xmmword_1D1E739C0;
    *(v7 + 36) = 27;
    *(v7 + 40) = v1;
    *(v7 + 48) = 3;
    v3 = sub_1D18D4B28(v7);
    swift_setDeallocating();
    sub_1D19637F0(v1, 2);
LABEL_18:
    sub_1D1741A30(v5, &qword_1EC646E70, &qword_1D1E83830);
    return v3;
  }

  if (v2 != 3)
  {
    if (!v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 4;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 36) = 24;
      *(inited + 40) = 2;
      *(inited + 48) = 2;
LABEL_17:
      v3 = sub_1D18D4B28(inited);
      swift_setDeallocating();
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 4;
    v5 = inited + 32;
    *(inited + 36) = 24;
    if (v1 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 64;
    }

    *(inited + 40) = v8;
LABEL_16:
    *(inited + 48) = 2;
    goto LABEL_17;
  }

  return 0;
}

void StaticRVCClusterGroup.Command.commandFields.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);

      v5 = sub_1D1E684DC();
      v10 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v10;
      v8 = v3;
      v9 = 3;
      goto LABEL_7;
    }

    if (v4 != 3)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v3 = v3;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v5 = sub_1D1E684DC();
  v6 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v6;
  v8 = v3;
  v9 = 2;
LABEL_7:
  sub_1D17524E4(v8, v9, v5, isUniquelyReferenced_nonNull_native);

  v11 = v12;

LABEL_8:
  *a1 = v11;
}

unint64_t StaticRVCClusterGroup.Command.operationType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) >= 4u)
  {
    v5 = *v1;
    *(a1 + 24) = &type metadata for StaticRVCClusterGroup.Command.RVCOperationType;
    result = sub_1D1963804();
    *(a1 + 32) = result;
    v4 = v5 == 1;
  }

  else
  {
    *(a1 + 24) = &type metadata for StaticRVCClusterGroup.Command.RVCOperationType;
    result = sub_1D1963804();
    *(a1 + 32) = result;
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D195FDE8(uint64_t a1)
{
  v2 = sub_1D1963BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D195FE24(uint64_t a1)
{
  v2 = sub_1D1963BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D195FE60(uint64_t a1)
{
  v2 = sub_1D1963CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D195FE9C(uint64_t a1)
{
  v2 = sub_1D1963CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D195FED8()
{
  v1 = *v0;
  v2 = 0x755265676E616863;
  v3 = 0x6165724170696B73;
  if (v1 != 5)
  {
    v3 = 0x656D6F486F67;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6F527463656C6573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x656D75736572;
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

uint64_t sub_1D195FFC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1964E7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D195FFE8(uint64_t a1)
{
  v2 = sub_1D1963A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960024(uint64_t a1)
{
  v2 = sub_1D1963A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960060(uint64_t a1)
{
  v2 = sub_1D1963AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196009C(uint64_t a1)
{
  v2 = sub_1D1963AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19600D8(uint64_t a1)
{
  v2 = sub_1D1963C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960114(uint64_t a1)
{
  v2 = sub_1D1963C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960150(uint64_t a1)
{
  v2 = sub_1D1963C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196018C(uint64_t a1)
{
  v2 = sub_1D1963C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19601C8(uint64_t a1)
{
  v2 = sub_1D1963B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960204(uint64_t a1)
{
  v2 = sub_1D1963B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960240(uint64_t a1)
{
  v2 = sub_1D1963B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196027C(uint64_t a1)
{
  v2 = sub_1D1963B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647560, &qword_1D1E858C8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647568, &qword_1D1E858D0);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647570, &qword_1D1E858D8);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647578, &qword_1D1E858E0);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647580, &qword_1D1E858E8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v43 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647588, &qword_1D1E858F0);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647590, &qword_1D1E858F8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647598, &unk_1D1E85900);
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v60 = *v2;
  v23 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1963A90();
  v61 = v22;
  sub_1D1E6930C();
  if (v23 <= 1)
  {
    v57 = v17;
    v30 = v58;
    v29 = v59;
    if (!v23)
    {
      v65 = 0;
      sub_1D1963CDC();
      v31 = v63;
      v32 = v61;
      sub_1D1E68DFC();
      sub_1D1E68F0C();
      (*(v57 + 8))(v19, v16);
      return (*(v62 + 8))(v32, v31);
    }

    v68 = 3;
    sub_1D1963BE0();
    v39 = v12;
    v25 = v63;
    v26 = v61;
    sub_1D1E68DFC();
    sub_1D1E68F0C();
    (*(v30 + 8))(v39, v29);
    return (*(v62 + 8))(v26, v25);
  }

  if (v23 == 2)
  {
    v69 = 4;
    sub_1D1963B8C();
    v24 = v52;
    v25 = v63;
    v26 = v61;
    sub_1D1E68DFC();
    v64 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
    sub_1D1963D30(&qword_1EC6475C0, MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
    v27 = v55;
    sub_1D1E68F1C();
    v28 = v54;
    goto LABEL_8;
  }

  if (v23 == 3)
  {
    v70 = 5;
    sub_1D1963B38();
    v24 = v53;
    v25 = v63;
    v26 = v61;
    sub_1D1E68DFC();
    v27 = v57;
    sub_1D1E68F5C();
    v28 = v56;
LABEL_8:
    (*(v28 + 8))(v24, v27);
    return (*(v62 + 8))(v26, v25);
  }

  if (v60)
  {
    if (v60 == 1)
    {
      v67 = 2;
      sub_1D1963C34();
      v34 = v46;
      v35 = v63;
      v36 = v61;
      sub_1D1E68DFC();
      v38 = v47;
      v37 = v48;
    }

    else
    {
      v71 = 6;
      sub_1D1963AE4();
      v34 = v49;
      v35 = v63;
      v36 = v61;
      sub_1D1E68DFC();
      v38 = v50;
      v37 = v51;
    }

    (*(v38 + 8))(v34, v37);
    return (*(v62 + 8))(v36, v35);
  }

  else
  {
    v66 = 1;
    sub_1D1963C88();
    v40 = v43;
    v41 = v63;
    v42 = v61;
    sub_1D1E68DFC();
    (*(v44 + 8))(v40, v45);
    return (*(v62 + 8))(v42, v41);
  }
}

uint64_t StaticRVCClusterGroup.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v4, v1, v2);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475E8, &qword_1D1E85910);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475F0, &qword_1D1E85918);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475F8, &qword_1D1E85920);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v51 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647600, &qword_1D1E85928);
  v59 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v70 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647608, &qword_1D1E85930);
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v51 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647610, &qword_1D1E85938);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647618, &qword_1D1E85940);
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647620, &unk_1D1E85948);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - v20;
  v22 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D1963A90();
  v23 = v73;
  sub_1D1E692FC();
  if (!v23)
  {
    v24 = v17;
    v51 = v15;
    v52 = v14;
    v25 = v70;
    v26 = v71;
    v73 = v19;
    v27 = v21;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v74 = v28;
    v75 = v28 + 32;
    v76 = 0;
    v77 = v29;
    v30 = sub_1D18085C4();
    if (v30 != 7 && v76 == v77 >> 1)
    {
      if (v30 <= 2u)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            LOBYTE(v78) = 1;
            sub_1D1963C88();
            v38 = v52;
            sub_1D1E68C4C();
            (*(v55 + 8))(v38, v56);
            (*(v73 + 8))(v27, v18);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = 4;
          }

          else
          {
            LOBYTE(v78) = 2;
            sub_1D1963C34();
            v45 = v66;
            sub_1D1E68C4C();
            (*(v57 + 8))(v45, v58);
            (*(v73 + 8))(v27, v18);
            swift_unknownObjectRelease();
            v49 = 4;
            v48 = 1;
          }

          goto LABEL_21;
        }

        LOBYTE(v78) = 0;
        sub_1D1963CDC();
        sub_1D1E68C4C();
        v39 = v69;
        v44 = v51;
        v48 = sub_1D1E68D6C();
        (*(v54 + 8))(v24, v44);
        (*(v73 + 8))(v27, v18);
        swift_unknownObjectRelease();
        v49 = 0;
      }

      else
      {
        if (v30 <= 4u)
        {
          v31 = v73;
          if (v30 == 3)
          {
            LOBYTE(v78) = 3;
            sub_1D1963BE0();
            sub_1D1E68C4C();
            v32 = v53;
            v48 = sub_1D1E68D6C();
            (*(v59 + 8))(v25, v32);
            (*(v31 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v49 = 1;
          }

          else
          {
            LOBYTE(v78) = 4;
            sub_1D1963B8C();
            sub_1D1E68C4C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
            sub_1D1963D30(&qword_1EC647628, MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
            v46 = v60;
            sub_1D1E68D7C();
            (*(v61 + 8))(v26, v46);
            (*(v31 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v48 = v78;
            v49 = 2;
          }

LABEL_21:
          v36 = v72;
          v39 = v69;
          goto LABEL_22;
        }

        v39 = v69;
        v40 = v73;
        v41 = v21;
        if (v30 == 5)
        {
          LOBYTE(v78) = 5;
          sub_1D1963B38();
          v42 = v67;
          sub_1D1E68C4C();
          v43 = v63;
          v50 = sub_1D1E68DBC();
          (*(v62 + 8))(v42, v43);
          (*(v40 + 8))(v41, v18);
          swift_unknownObjectRelease();
          v48 = v50;
          v49 = 3;
        }

        else
        {
          LOBYTE(v78) = 6;
          sub_1D1963AE4();
          v47 = v68;
          sub_1D1E68C4C();
          (*(v64 + 8))(v47, v65);
          (*(v40 + 8))(v27, v18);
          swift_unknownObjectRelease();
          v49 = 4;
          v48 = 2;
        }
      }

      v36 = v72;
LABEL_22:
      *v39 = v48;
      *(v39 + 8) = v49;
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    v33 = sub_1D1E688EC();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v35 = &type metadata for StaticRVCClusterGroup.Command;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v73 + 8))(v27, v18);
    swift_unknownObjectRelease();
  }

  v36 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1D1961734()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else if (v1 == 3)
  {
    return 1;
  }

  else
  {
    return *v0 + 3;
  }
}

uint64_t StaticRVCClusterGroup.Command.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      sub_1D1E6884C();

      v6[0] = 0xD000000000000013;
      v6[1] = 0x80000001D1EBE850;
    }

    else
    {
      sub_1D1E6884C();

      strcpy(v6, "changeRunMode(");
      HIBYTE(v6[1]) = -18;
    }

    goto LABEL_14;
  }

  if (v2 == 2)
  {
    strcpy(v6, "selectRooms(");
    BYTE5(v6[1]) = 0;
    HIWORD(v6[1]) = -5120;
    v3 = MEMORY[0x1D3891260](v1, MEMORY[0x1E69E7668]);
LABEL_15:
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v6[0];
  }

  if (v2 == 3)
  {
    strcpy(v6, "skipArea(");
    WORD1(v6[1]) = 0;
    HIDWORD(v6[1]) = -385875968;
LABEL_14:
    v3 = sub_1D1E68FAC();
    goto LABEL_15;
  }

  v4 = 0x656D75736572;
  if (v1 != 1)
  {
    v4 = 0x656D6F486F67;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t sub_1D19619B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v4, v1, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1961A10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v5, v2, v3);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.run(command:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 152) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1D1961A88, 0, 0);
}

uint64_t sub_1D1961A88()
{
  v28 = v0;
  v1 = *(v0 + 152);
  if (v1 <= 1)
  {
    if (*(v0 + 152))
    {
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_1D196213C;
      v15 = *(v0 + 72);

      return StaticRVCClusterGroup.changeToCleanMode(index:)(v15);
    }

    else
    {
      StaticRVCClusterGroup.runMode(with:)(*(v0 + 72), v25);
      v5 = v26;
      if (v26)
      {
        v6 = v27;
        v8 = v25[0];
        v7 = v25[1];
        v9 = StaticRVCClusterGroup.RunMode.isIdle.getter();
        sub_1D192F928(v8, v7, v5, v6);
        if (v9)
        {
          sub_1D19539E8(v25);
        }

        else
        {
          StaticRVCClusterGroup.startExpectedValues(with:)(*(v0 + 72), 0, v25);
        }

        v19 = v25[0];
      }

      else
      {
        v16 = *(v0 + 64);
        v17 = *(v0 + 72);
        *(v0 + 40) = &type metadata for StaticRVCClusterGroup.Command;
        *(v0 + 48) = sub_1D18FA450();
        *(v0 + 16) = v17;
        *(v0 + 24) = 0;
        v18 = type metadata accessor for EndpointPath(0);
        v24 = MEMORY[0x1E69E7CC8];
        ExpectedValuesBuilder.addValues(from:in:)((v0 + 16), *(v16 + *(v18 + 24)), v25);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));

        v19 = v24;
      }

      *(v0 + 96) = v19;
      *(v0 + 56) = v19;
      v22 = swift_task_alloc();
      *(v0 + 104) = v22;
      *v22 = v0;
      v22[1] = sub_1D1962000;
      v23 = *(v0 + 72);

      return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v23, (v0 + 56));
    }
  }

  else if (v1 == 2)
  {
    v10 = *(v0 + 72);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_1D17CD838;

    return StaticRVCClusterGroup.select(areaIDs:)(v10);
  }

  else if (v1 == 3)
  {
    v2 = *(v0 + 72);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1D1961F0C;

    return StaticRVCClusterGroup.skipArea(areaToSkip:)(v2);
  }

  else
  {
    v12 = *(v0 + 72);
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = swift_task_alloc();
        *(v0 + 136) = v13;
        *v13 = v0;
        v13[1] = sub_1D1962324;

        return StaticRVCClusterGroup.resume()();
      }

      else
      {
        v21 = swift_task_alloc();
        *(v0 + 144) = v21;
        *v21 = v0;
        v21[1] = sub_1D1962418;

        return StaticRVCClusterGroup.goHome()();
      }
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 128) = v20;
      *v20 = v0;
      v20[1] = sub_1D1962230;

      return StaticRVCClusterGroup.pause()();
    }
  }
}

uint64_t sub_1D1961F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1962000()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D196250C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D196213C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1962230()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1962324()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1962418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D196250C()
{

  v1 = *(v0 + 8);

  return v1();
}

char *StaticRVCClusterGroup.defaultCommands()()
{
  StaticRVCClusterGroup.firstCleaningRunningMode.getter(&v18);
  if (v20)
  {
    v1 = v18;
    sub_1D192F928(v18, v19, v20, v21);
    v2 = sub_1D177EC74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1D177EC74((v3 > 1), v4 + 1, 1, v2);
    }

    v6 = 0;
  }

  else
  {
    v2 = sub_1D177EC74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v7 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      v2 = sub_1D177EC74((v7 > 1), v4 + 1, 1, v2);
    }

    v1 = 0;
    v6 = 4;
  }

  *(v2 + 2) = v5;
  v8 = &v2[16 * v4];
  *(v8 + 4) = v1;
  v8[40] = v6;
  StaticRVCClusterGroup.firstVacuumCleaningMode.getter(&v18);
  if (v20)
  {
    v9 = v18;
    sub_1D192F928(v18, v19, v20, v21);
    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v2 = sub_1D177EC74((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v12;
    v13 = &v2[16 * v11];
    *(v13 + 4) = v9;
    v13[40] = 1;
    if (*(v0 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60)))
    {
      v14 = MEMORY[0x1E69E7CC0];
      v15 = *(v2 + 3);
      if ((v11 + 2) > (v15 >> 1))
      {
        v2 = sub_1D177EC74((v15 > 1), v11 + 2, 1, v2);
      }

      *(v2 + 2) = v11 + 2;
      v16 = &v2[16 * v12];
      *(v16 + 4) = v14;
      v16[40] = 2;
    }
  }

  return v2;
}