void *sub_237FCC224(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_237FCC2D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237FCC3CC(uint64_t a1)
{
  v2 = sub_238032184();

  return sub_237FCDE84(a1, v2);
}

unint64_t sub_237FCC410(uint64_t a1)
{
  v2 = sub_238032234();

  return sub_237FCDF48(a1, v2);
}

uint64_t sub_237FCC454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5308, &unk_238034780);
  v35 = v4;
  result = sub_238032394();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

LABEL_35:
        __break(1u);
        return result;
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
  return result;
}

uint64_t sub_237FCC6F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
  v35 = v4;
  result = sub_238032394();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

LABEL_35:
        __break(1u);
        return result;
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
  return result;
}

uint64_t sub_237FCC99C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E8, &qword_238034768);
  v38 = v4;
  result = sub_238032394();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_237FA9354(v25, v7, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      }

      else
      {
        sub_237FA4CFC(v25, v7, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v26 = v23;
      }

      result = sub_238032184();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_237FA9354(v7, *(v10 + 56) + v24 * v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_237FCCCE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E0, &qword_238034760);
  v38 = v4;
  result = sub_238032394();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_237FA9354(v25, v7, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        sub_237FA4CFC(v25, v7, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v26 = v23;
      }

      result = sub_238032184();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_237FA9354(v7, *(v10 + 56) + v24 * v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_237FCD02C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
  v40 = v4;
  result = sub_238032394();
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
        sub_237FA9354(v28, v41, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      else
      {
        sub_237FA4CFC(v28, v41, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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
      result = sub_237FA9354(v41, *(v9 + 56) + v27 * v17, type metadata accessor for _DeviceActivityData.CategoryActivity);
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

uint64_t sub_237FCD3CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_238032394();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_237FCD66C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
  v37 = v4;
  result = sub_238032394();
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

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

uint64_t sub_237FCD92C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5260, &qword_238034700);
  v34 = v4;
  result = sub_238032394();
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

      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

uint64_t sub_237FCDBCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
  result = sub_238032394();
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
        sub_237FC156C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_237FD4F00(v23, &v36);
        sub_237FD4FB0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_238032234();
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
      result = sub_237FC156C(v35, (*(v7 + 56) + 32 * v15));
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

unint64_t sub_237FCDE84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_237FD5060();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_238032194();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_237FCDF48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_237FD4F00(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383E53B0](v9, a1);
      sub_237FD4F5C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_237FCE010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5308, &unk_238034780);
  v2 = *v0;
  v3 = sub_238032384();
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

        result = v20;
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

id sub_237FCE17C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
  v2 = *v0;
  v3 = sub_238032384();
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

        result = v20;
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

id sub_237FCE2E8()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E8, &qword_238034768);
  v5 = *v0;
  v6 = sub_238032384();
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
        sub_237FA4CFC(*(v5 + 56) + v22, v4, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_237FA9354(v4, *(v7 + 56) + v22, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        result = v21;
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

id sub_237FCE520()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52E0, &qword_238034760);
  v5 = *v0;
  v6 = sub_238032384();
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
        sub_237FA4CFC(*(v5 + 56) + v22, v4, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_237FA9354(v4, *(v7 + 56) + v22, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = v21;
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

void *sub_237FCE758()
{
  v1 = v0;
  v2 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
  v4 = *v0;
  v5 = sub_238032384();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_237FA4CFC(*(v4 + 56) + v26, v30, type metadata accessor for _DeviceActivityData.CategoryActivity);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_237FA9354(v25, *(v27 + 56) + v26, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_237FCE9D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_238032384();
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

void *sub_237FCEB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
  v2 = *v0;
  v3 = sub_238032384();
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

void *sub_237FCECB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5260, &qword_238034700);
  v2 = *v0;
  v3 = sub_238032384();
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_237FCEE18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
  v2 = *v0;
  v3 = sub_238032384();
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
        v18 = 40 * v17;
        sub_237FD4F00(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_237FD4FB0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_237FC156C(v22, (*(v4 + 56) + v17));
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

uint64_t sub_237FCEFBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _DeviceActivityData.CategoryActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCFAA0(v8, v9, a1, v4, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, sub_237FDC8B0);
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
    return sub_237FAD5CC(0, v2, 1, a1, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity);
  }

  return result;
}

uint64_t sub_237FCF178(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_237FD03AC(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_238010D30(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_238010CA4(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_237FA4CFC(v117 + v24 * v23, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_237FA4CFC(v26, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v29 = *(v9 + 28);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_237FA4DCC(v28, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4DCC(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_237FA4CFC(v33, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v34 = v122;
        sub_237FA4CFC(v5, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v35 = *(v123 + 28);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_237FA4DCC(v34, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FA4DCC(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 < v30 == v37 >= v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 < v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_237FA9354(v44 + v43, v113, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FA9354(v113, v44 + v38, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_237FB5990(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_237FB5990((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_237FD03AC(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_238010D30(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_238010CA4(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_237FA4CFC(v5, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v97 = v122;
    sub_237FA4CFC(v93, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v98 = *(v96 + 28);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_237FA4DCC(v97, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    result = sub_237FA4DCC(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v100 >= v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_237FA9354(v5, v121, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FA9354(v101, v93, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_237FCFAA0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), void (*a9)(unint64_t *, unint64_t *, unint64_t *))
{
  v123 = a8;
  v128 = a7;
  v113 = a1;
  v122 = a9;
  v12 = (a5)(0, a2);
  v124 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v117 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v110 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v129 = &v110 - v18;
  result = MEMORY[0x28223BE20](v17);
  v21 = &v110 - v20;
  v126 = a3;
  v22 = *(a3 + 8);
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_97:
    a3 = *v113;
    if (!*v113)
    {
      goto LABEL_136;
    }

    a4 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_238010D30(a4);
    }

    v131 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v126)
      {
        v106 = *(result + 16 * a4);
        v107 = result;
        v108 = *(result + 16 * (a4 - 1) + 40);
        sub_237FD087C(*v126 + *(v124 + 72) * v106, *v126 + *(v124 + 72) * *(result + 16 * (a4 - 1) + 32), *v126 + *(v124 + 72) * v108, a3, v123, a6, v122);
        if (v40)
        {
        }

        if (v108 < v106)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_238010D30(v107);
        }

        if (a4 - 2 >= *(v107 + 2))
        {
          goto LABEL_124;
        }

        v109 = &v107[16 * a4];
        *v109 = v106;
        *(v109 + 1) = v108;
        v131 = v107;
        sub_238010CA4(a4 - 1);
        result = v131;
        a4 = *(v131 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v112 = a4;
  v130 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v118 = v24;
    if (v23 + 1 >= v22)
    {
      v39 = v23 + 1;
      v40 = v114;
    }

    else
    {
      v27 = *v126;
      v28 = *(v124 + 72);
      a3 = *v126 + v28 * v26;
      sub_237FA4CFC(a3, v21, a6);
      v29 = v129;
      sub_237FA4CFC(v27 + v28 * v25, v129, a6);
      v30 = *(v12 + 24);
      v31 = *&v21[v30];
      v32 = *(v29 + v30);
      sub_237FA4DCC(v29, a6);
      result = sub_237FA4DCC(v21, a6);
      v111 = v25;
      v33 = v25 + 2;
      v125 = v28;
      v34 = v27 + v28 * (v25 + 2);
      while (v22 != v33)
      {
        sub_237FA4CFC(v34, v21, a6);
        v35 = v129;
        sub_237FA4CFC(a3, v129, a6);
        v36 = *(v12 + 24);
        v37 = *&v21[v36];
        v38 = *(v35 + v36);
        sub_237FA4DCC(v35, a6);
        result = sub_237FA4DCC(v21, a6);
        ++v33;
        v34 += v125;
        a3 += v125;
        if (v32 < v31 == v38 >= v37)
        {
          v39 = v33 - 1;
          goto LABEL_11;
        }
      }

      v39 = v22;
LABEL_11:
      a4 = v112;
      v25 = v111;
      v40 = v114;
      if (v32 < v31)
      {
        if (v39 < v111)
        {
          goto LABEL_127;
        }

        if (v111 < v39)
        {
          v41 = v125 * (v39 - 1);
          v42 = v39 * v125;
          v121 = v39;
          v43 = v39;
          v44 = v111;
          v45 = v111 * v125;
          do
          {
            if (v44 != --v43)
            {
              a3 = *v126;
              if (!*v126)
              {
                goto LABEL_133;
              }

              sub_237FA9354(a3 + v45, v117, v128);
              if (v45 < v41 || a3 + v45 >= a3 + v42)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FA9354(v117, a3 + v41, v128);
            }

            ++v44;
            v41 -= v125;
            v42 -= v125;
            v45 += v125;
          }

          while (v44 < v43);
          v40 = v114;
          a4 = v112;
          v12 = v130;
          v25 = v111;
          v39 = v121;
        }
      }
    }

    v46 = v126[1];
    if (v39 < v46)
    {
      if (__OFSUB__(v39, v25))
      {
        goto LABEL_126;
      }

      if (v39 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if ((v25 + a4) >= v46)
        {
          v47 = v126[1];
        }

        else
        {
          v47 = v25 + a4;
        }

        if (v47 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v39 != v47)
        {
          break;
        }
      }
    }

    v23 = v39;
    if (v39 < v25)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v118;
    }

    else
    {
      result = sub_237FB5990(0, *(v118 + 2) + 1, 1, v118);
      v24 = result;
    }

    a4 = *(v24 + 2);
    v48 = *(v24 + 3);
    a3 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_237FB5990((v48 > 1), a4 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = a3;
    v49 = &v24[16 * a4];
    *(v49 + 4) = v25;
    *(v49 + 5) = v23;
    v125 = *v113;
    if (!v125)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      while (1)
      {
        v50 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v51 = *(v24 + 4);
          v52 = *(v24 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_54:
          if (v54)
          {
            goto LABEL_114;
          }

          v67 = &v24[16 * a3];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_117;
          }

          v73 = &v24[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_121;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a3 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v77 = &v24[16 * a3];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_68:
        if (v72)
        {
          goto LABEL_116;
        }

        v80 = &v24[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v50 - 1;
        if (v50 - 1 >= a3)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v126)
        {
          goto LABEL_132;
        }

        v88 = v24;
        a3 = *&v24[16 * a4 + 32];
        v89 = *&v24[16 * v50 + 40];
        sub_237FD087C(*v126 + *(v124 + 72) * a3, *v126 + *(v124 + 72) * *&v24[16 * v50 + 32], *v126 + *(v124 + 72) * v89, v125, v123, a6, v122);
        if (v40)
        {
        }

        if (v89 < a3)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_238010D30(v88);
        }

        v12 = v130;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = a3;
        *(v91 + 5) = v89;
        v131 = v90;
        a4 = &v131;
        result = sub_238010CA4(v50);
        v24 = v131;
        a3 = *(v131 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v24[16 * a3 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_112;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_113;
      }

      v62 = &v24[16 * a3];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_115;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_118;
      }

      if (v66 >= v58)
      {
        v84 = &v24[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v87)
        {
          v50 = a3 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v114 = v40;
    v22 = v126[1];
    a4 = v112;
    if (v23 >= v22)
    {
      goto LABEL_97;
    }
  }

  v114 = v40;
  a4 = *v126;
  v92 = *(v124 + 72);
  v93 = *v126 + v92 * (v39 - 1);
  v94 = -v92;
  v111 = v25;
  v95 = v25 - v39;
  v121 = v39;
  v115 = v92;
  v116 = v47;
  a3 = a4 + v39 * v92;
LABEL_87:
  v119 = a3;
  v120 = v95;
  v125 = v93;
  v96 = v93;
  while (1)
  {
    sub_237FA4CFC(a3, v21, a6);
    v97 = v129;
    sub_237FA4CFC(v96, v129, a6);
    v98 = *(v12 + 24);
    v99 = *&v21[v98];
    v100 = *(v97 + v98);
    sub_237FA4DCC(v97, a6);
    result = sub_237FA4DCC(v21, a6);
    if (v100 >= v99)
    {
LABEL_86:
      v23 = v116;
      v93 = v125 + v115;
      v95 = v120 - 1;
      a3 = v119 + v115;
      if (++v121 != v116)
      {
        goto LABEL_87;
      }

      v40 = v114;
      v25 = v111;
      if (v116 < v111)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v101 = v127;
    v102 = v128;
    sub_237FA9354(a3, v127, v128);
    swift_arrayInitWithTakeFrontToBack();
    v103 = v102;
    v12 = v130;
    sub_237FA9354(v101, v96, v103);
    v96 += v94;
    a3 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_237FD03AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_237FA4CFC(v33, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_237FA4CFC(v35, v46, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v38 = *(v47 + 28);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_237FA4DCC(v41, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          sub_237FA4DCC(v36, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          if (v40 < v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_237FA4CFC(a2, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v21 = v46;
        sub_237FA4CFC(a4, v46, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v22 = *(v47 + 28);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_237FA4DCC(v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        sub_237FA4DCC(v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_237FDC7B0(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_237FD087C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v51 = a6;
  v54 = a3;
  v53 = a5(0);
  v11 = MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v18 = v54 - a2;
  if (v54 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v47 = a7;
  v19 = (a2 - a1) / v17;
  v57 = a1;
  v56 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v21;
    if (v21 >= 1)
    {
      v30 = -v17;
      v31 = a4 + v21;
      v49 = v30;
      v50 = a4;
      v32 = v51;
      do
      {
        v46 = v29;
        v33 = a2;
        v34 = a2 + v30;
        while (1)
        {
          v36 = v54;
          if (v33 <= a1)
          {
            v57 = v33;
            v55 = v46;
            goto LABEL_58;
          }

          v48 = v29;
          v54 += v30;
          v37 = v31 + v30;
          sub_237FA4CFC(v37, v15, v32);
          v38 = v34;
          v39 = v34;
          v40 = v15;
          v41 = v52;
          sub_237FA4CFC(v39, v52, v32);
          v42 = *(v53 + 24);
          v43 = *(v40 + v42);
          v44 = *(v41 + v42);
          v45 = v41;
          v15 = v40;
          sub_237FA4DCC(v45, v32);
          sub_237FA4DCC(v40, v32);
          if (v44 < v43)
          {
            break;
          }

          v29 = v37;
          if (v36 < v31 || v54 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v37;
            v34 = v38;
          }

          else
          {
            v34 = v38;
            if (v36 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
              v29 = v37;
            }
          }

          v31 = v29;
          v35 = v37 > v50;
          v30 = v49;
          if (!v35)
          {
            a2 = v33;
            goto LABEL_57;
          }
        }

        if (v36 < v33 || v54 >= v33)
        {
          a2 = v38;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v49;
        }

        else
        {
          a2 = v38;
          v30 = v49;
          if (v36 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v48;
      }

      while (v31 > v50);
    }

LABEL_57:
    v57 = a2;
    v55 = v29;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v20;
    v55 = a4 + v20;
    if (v20 >= 1 && a2 < v54)
    {
      do
      {
        v24 = v51;
        sub_237FA4CFC(a2, v15, v51);
        v25 = v52;
        sub_237FA4CFC(a4, v52, v24);
        v26 = *(v53 + 24);
        v27 = *&v15[v26];
        v28 = *(v25 + v26);
        sub_237FA4DCC(v25, v24);
        sub_237FA4DCC(v15, v24);
        if (v28 >= v27)
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = a4 + v17;
          a4 += v17;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        a1 += v17;
        v57 = a1;
      }

      while (a4 < v22 && a2 < v54);
    }
  }

LABEL_58:
  v47(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_237FD0DC4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_237FA4CFC(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_237FA9354(v30, v16, v41);
      sub_237FA9354(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_237FD1008(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_237FD1160(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v13);
  v41 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v9[5];
    v39 = v9[6];
    v40 = v16;
    v17 = v9[7];
    v37 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v38 = v17;
    v36 = *(v10 + 72);
    v43 = v12;
    do
    {
      v42 = v15;
      sub_237FA4CFC(v37 + v36 * v15, v12, type metadata accessor for DeviceActivityData.CategoryActivity);
      sub_238031C44();
      sub_237FA38E4(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      sub_238031E34();
      v18 = *&v12[v40];
      if (v18 == 0.0)
      {
        v18 = 0.0;
      }

      MEMORY[0x2383E5750](*&v18);
      v19 = *&v12[v39];
      MEMORY[0x2383E5730](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v33[5];
        v46 = v33[6];
        v47 = v21;
        v22 = v33[7];
        v44 = v33[8];
        v45 = v22;
        v23 = v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v24 = *(v32 + 72);
        do
        {
          sub_237FA4CFC(v23, v8, type metadata accessor for DeviceActivityData.ApplicationActivity);
          sub_238031BE4();
          sub_237FA38E4(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
          sub_238031E34();
          v25 = *&v8[v47];
          if (v25 == 0.0)
          {
            v25 = 0.0;
          }

          MEMORY[0x2383E5750](*&v25);
          MEMORY[0x2383E5730](*&v8[v46]);
          MEMORY[0x2383E5730](*&v8[v45]);
          sub_2380325D4();
          sub_237FA4DCC(v8, type metadata accessor for DeviceActivityData.ApplicationActivity);
          v23 += v24;
          --v20;
        }

        while (v20);
      }

      v26 = *&v43[v38];
      MEMORY[0x2383E5730](*(v26 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v35 + 20);
        v46 = *(v35 + 24);
        v47 = v28;
        v29 = v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v30 = *(v34 + 72);
        do
        {
          sub_237FA4CFC(v29, v5, type metadata accessor for DeviceActivityData.WebDomainActivity);
          sub_238031CC4();
          sub_237FA38E4(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
          sub_238031E34();
          v31 = *&v5[v47];
          if (v31 == 0.0)
          {
            v31 = 0.0;
          }

          MEMORY[0x2383E5750](*&v31);
          sub_2380325D4();
          sub_237FA4DCC(v5, type metadata accessor for DeviceActivityData.WebDomainActivity);
          v29 += v30;
          --v27;
        }

        while (v27);
      }

      v12 = v43;
      v15 = v42 + 1;
      result = sub_237FA4DCC(v43, type metadata accessor for DeviceActivityData.CategoryActivity);
    }

    while (v15 != v41);
  }

  return result;
}

uint64_t sub_237FD1640(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v7);
  if (v7)
  {
    v9 = *(v3 + 20);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_237FA4CFC(v10, v6, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_238031CC4();
      sub_237FA38E4(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      sub_238031E34();
      v12 = *&v6[v9];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      MEMORY[0x2383E5750](*&v12);
      sub_2380325D4();
      result = sub_237FA4DCC(v6, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_237FD17E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v7);
  if (v7)
  {
    v9 = v3[5];
    v14 = v3[6];
    v15 = v9;
    v10 = v3[7];
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_237FA4CFC(v11, v6, type metadata accessor for DeviceActivityData.ApplicationActivity);
      sub_238031BE4();
      sub_237FA38E4(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      sub_238031E34();
      v13 = *&v6[v15];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x2383E5750](*&v13);
      MEMORY[0x2383E5730](*&v6[v14]);
      MEMORY[0x2383E5730](*&v6[v10]);
      sub_2380325D4();
      result = sub_237FA4DCC(v6, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_237FD19B4(uint64_t a1, uint64_t a2)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v42 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v41 = *(v42 - 1);
  MEMORY[0x28223BE20](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v59 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v19 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v19);
  v52 = v19;
  if (v19)
  {
    v21 = 0;
    v49 = v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v48 = (v62 + 48);
    v39 = (v62 + 32);
    v22 = v15[5];
    v46 = v15[6];
    v47 = v22;
    v38 = (v62 + 8);
    v60 = (v63 + 48);
    v57 = (v63 + 32);
    v23 = v15[8];
    v45 = v15[7];
    v44 = v23;
    v43 = *(v59 + 72);
    v55 = v9;
    v56 = (v63 + 8);
    v50 = v14;
    v51 = v10;
    v53 = v17;
    do
    {
      v54 = v21;
      sub_237FA4CFC(v49 + v43 * v21, v17, type metadata accessor for _DeviceActivityData.CategoryActivity);
      sub_238031ED4();
      sub_237FA90E4(&v17[v47], v14, &qword_27DEE51D0, &qword_238034400);
      if ((*v48)(v14, 1, v10) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        v24 = v40;
        (*v39)(v40, v14, v10);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
        sub_238031E34();
        v25 = v24;
        v17 = v53;
        (*v38)(v25, v10);
      }

      v26 = *&v17[v46];
      if (v26 == 0.0)
      {
        v26 = 0.0;
      }

      MEMORY[0x2383E5750](*&v26);
      sub_237FD23C0(a1, *&v17[v45]);
      v27 = *&v17[v44];
      MEMORY[0x2383E5730](*(v27 + 16));
      v28 = *(v27 + 16);
      if (v28)
      {
        v30 = v42[5];
        v29 = v42[6];
        v62 = v42[7];
        v63 = v29;
        v31 = v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v32 = *(v41 + 72);
        v59 = v30;
        do
        {
          sub_237FA4CFC(v31, v9, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          sub_238031ED4();
          sub_237FA90E4(&v9[v30], v7, &qword_27DEE51B0, &qword_2380343D0);
          v36 = v61;
          if ((*v60)(v7, 1, v61) == 1)
          {
            sub_2380325D4();
          }

          else
          {
            v33 = v58;
            (*v57)(v58, v7, v36);
            sub_2380325D4();
            sub_237FD500C(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
            sub_238031E34();
            v9 = v55;
            v34 = v33;
            v30 = v59;
            (*v56)(v34, v36);
          }

          v35 = *&v9[v63];
          if (v35 == 0.0)
          {
            v35 = 0.0;
          }

          MEMORY[0x2383E5750](*&v35);
          sub_2380325D4();
          sub_237FA4DCC(v9, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v31 += v32;
          --v28;
        }

        while (v28);
      }

      v17 = v53;
      v21 = v54 + 1;
      result = sub_237FA4DCC(v53, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v10 = v51;
      v14 = v50;
    }

    while (v21 != v52);
  }

  return result;
}

uint64_t sub_237FD2088(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v13);
  if (v13)
  {
    v15 = v9[5];
    v26 = v9[6];
    v27 = v15;
    v16 = v9[7];
    v17 = v10;
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = (v23 + 6);
    v24 = (v23 + 4);
    v25 = v16;
    ++v23;
    v20 = *(v17 + 72);
    do
    {
      sub_237FA4CFC(v18, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_238031ED4();
      sub_237FA90E4(&v12[v27], v8, &qword_27DEE51B0, &qword_2380343D0);
      if ((*v19)(v8, 1, v3) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        (*v24)(v5, v8, v3);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
        sub_238031E34();
        (*v23)(v5, v3);
      }

      v21 = *&v12[v26];
      if (v21 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x2383E5750](*&v21);
      sub_2380325D4();
      result = sub_237FA4DCC(v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v18 += v20;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_237FD23C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x2383E5730](v13);
  if (v13)
  {
    v15 = v9[5];
    v30 = &v12[v9[6]];
    v31 = v15;
    v16 = v9[7];
    v28 = v9[8];
    v29 = v16;
    v17 = v9[9];
    v26 = v9[10];
    v27 = v17;
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = (v4 + 48);
    v22 = (v4 + 8);
    v23 = (v4 + 32);
    v25 = *(v10 + 72);
    do
    {
      sub_237FA4CFC(v18, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_238031ED4();
      sub_237FA90E4(&v12[v31], v8, &qword_27DEE51C0, &unk_238034790);
      if ((*v19)(v8, 1, v3) == 1)
      {
        sub_2380325D4();
      }

      else
      {
        v21 = v24;
        (*v23)(v24, v8, v3);
        sub_2380325D4();
        sub_237FD500C(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
        sub_238031E34();
        (*v22)(v21, v3);
      }

      if (*(v30 + 1))
      {
        sub_2380325D4();
        sub_238031ED4();
      }

      else
      {
        sub_2380325D4();
      }

      v20 = *&v12[v29];
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      MEMORY[0x2383E5750](*&v20);
      MEMORY[0x2383E5730](*&v12[v28]);
      MEMORY[0x2383E5730](*&v12[v27]);
      sub_2380325D4();
      result = sub_237FA4DCC(v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v18 += v25;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_237FD275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238031664();
  v11 = result;
  if (result)
  {
    result = sub_238031684();
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

  sub_238031674();
  sub_237FCBE14(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_237FD2814(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_237FBC9FC(a3, a4);
          return sub_237FCC044(v13, a2, a3, a4) & 1;
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

uint64_t _s14DeviceActivity0aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031A64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C0, &qword_238034750);
  MEMORY[0x28223BE20](v48);
  v49 = &v42 - v9;
  v10 = sub_238031654();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C8, &qword_238034758);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  if ((sub_2380315E4() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  if (*(a1 + *(v20 + 20)) != *(a2 + *(v20 + 20)))
  {
    goto LABEL_17;
  }

  v42 = v5;
  v43 = v4;
  v21 = *(v20 + 24);
  v22 = *(v17 + 48);
  v44 = a1;
  v45 = v20;
  sub_237FA90E4(a1 + v21, v19, &qword_27DEE50C8, &qword_2380357C0);
  v23 = a2 + v21;
  v24 = a2;
  sub_237FA90E4(v23, &v19[v22], &qword_27DEE50C8, &qword_2380357C0);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_237FA5750(v19, &qword_27DEE50C8, &qword_2380357C0);
      goto LABEL_10;
    }

LABEL_8:
    v26 = &qword_27DEE52C8;
    v27 = &qword_238034758;
LABEL_16:
    sub_237FA5750(v19, v26, v27);
    goto LABEL_17;
  }

  sub_237FA90E4(v19, v16, &qword_27DEE50C8, &qword_2380357C0);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_8;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_237FA38E4(&qword_27DEE52D8, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
  v28 = sub_238031E64();
  v29 = *(v11 + 8);
  v29(v13, v10);
  v29(v16, v10);
  sub_237FA5750(v19, &qword_27DEE50C8, &qword_2380357C0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v30 = v44;
  v31 = v45[7];
  v19 = v49;
  v32 = *(v48 + 48);
  sub_237FA90E4(v44 + v31, v49, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA90E4(v24 + v31, &v19[v32], &qword_27DEE51E0, &qword_2380365F0);
  v34 = v42;
  v33 = v43;
  v35 = *(v42 + 48);
  if (v35(v19, 1, v43) != 1)
  {
    v36 = v47;
    sub_237FA90E4(v19, v47, &qword_27DEE51E0, &qword_2380365F0);
    if (v35(&v19[v32], 1, v33) != 1)
    {
      v39 = v46;
      (*(v34 + 32))(v46, &v19[v32], v33);
      sub_237FA38E4(&qword_27DEE52D0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v40 = sub_238031E64();
      v41 = *(v34 + 8);
      v41(v39, v33);
      v41(v36, v33);
      sub_237FA5750(v19, &qword_27DEE51E0, &qword_2380365F0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v34 + 8))(v36, v33);
    goto LABEL_15;
  }

  if (v35(&v19[v32], 1, v33) != 1)
  {
LABEL_15:
    v26 = &qword_27DEE52C0;
    v27 = &qword_238034750;
    goto LABEL_16;
  }

  sub_237FA5750(v19, &qword_27DEE51E0, &qword_2380365F0);
LABEL_20:
  if (*(v30 + v45[8]) == *(v24 + v45[8]))
  {
    v37 = sub_237FC1FBC(*(v30 + v45[9]), *(v24 + v45[9]));
    return v37 & 1;
  }

LABEL_17:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s14DeviceActivity01_aB4DataV0B7SegmentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_238031A64();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C0, &qword_238034750);
  MEMORY[0x28223BE20](v57);
  v58 = &v53 - v8;
  v9 = sub_238031654();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52C8, &qword_238034758);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1;
  v21 = *a2;
  v20 = a2[1];
  v22 = a2;
  if (v18 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      sub_237FC75C8(v17, v18);
      sub_237FC75C8(v21, v20);
      sub_237FA38D0(v17, v18);
      goto LABEL_7;
    }

LABEL_5:
    sub_237FC75C8(v17, v18);
    sub_237FC75C8(v21, v20);
    sub_237FA38D0(v17, v18);
    sub_237FA38D0(v21, v20);
    goto LABEL_25;
  }

  if (v20 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_237FC75C8(v17, v18);
  sub_237FC75C8(v21, v20);
  v23 = sub_237FD2814(v17, v18, v21, v20);
  sub_237FA38D0(v21, v20);
  sub_237FA38D0(v17, v18);
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_7:
  v24 = v19;
  v25 = v22;
  if ((v19[2] != v22[2] || v19[3] != v22[3]) && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  if ((sub_2380315E4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = *(v26 + 28);
  v28 = *(v14 + 48);
  sub_237FA90E4(v19 + v27, v16, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FA90E4(v25 + v27, &v16[v28], &qword_27DEE50C8, &qword_2380357C0);
  v30 = v61;
  v29 = v62;
  v31 = *(v61 + 48);
  if (v31(v16, 1, v62) == 1)
  {
    if (v31(&v16[v28], 1, v29) == 1)
    {
      sub_237FA5750(v16, &qword_27DEE50C8, &qword_2380357C0);
      goto LABEL_18;
    }

LABEL_16:
    v32 = &qword_27DEE52C8;
    v33 = &qword_238034758;
    v34 = v16;
LABEL_24:
    sub_237FA5750(v34, v32, v33);
    goto LABEL_25;
  }

  sub_237FA90E4(v16, v13, &qword_27DEE50C8, &qword_2380357C0);
  if (v31(&v16[v28], 1, v29) == 1)
  {
    (*(v30 + 8))(v13, v29);
    goto LABEL_16;
  }

  v35 = &v16[v28];
  v36 = v56;
  (*(v30 + 32))(v56, v35, v29);
  sub_237FA38E4(&qword_27DEE52D8, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
  v37 = sub_238031E64();
  v38 = *(v30 + 8);
  v38(v36, v29);
  v38(v13, v29);
  sub_237FA5750(v16, &qword_27DEE50C8, &qword_2380357C0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v39 = v26;
  v40 = *(v26 + 32);
  v41 = v58;
  v42 = *(v57 + 48);
  sub_237FA90E4(v24 + v40, v58, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA90E4(v25 + v40, v41 + v42, &qword_27DEE51E0, &qword_2380365F0);
  v44 = v59;
  v43 = v60;
  v45 = *(v59 + 48);
  if (v45(v41, 1, v60) != 1)
  {
    v46 = v55;
    sub_237FA90E4(v41, v55, &qword_27DEE51E0, &qword_2380365F0);
    if (v45(v41 + v42, 1, v43) != 1)
    {
      v49 = v41 + v42;
      v50 = v54;
      (*(v44 + 32))(v54, v49, v43);
      sub_237FA38E4(&qword_27DEE52D0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v51 = sub_238031E64();
      v52 = *(v44 + 8);
      v52(v50, v43);
      v52(v46, v43);
      sub_237FA5750(v41, &qword_27DEE51E0, &qword_2380365F0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    (*(v44 + 8))(v46, v43);
    goto LABEL_23;
  }

  if (v45(v41 + v42, 1, v43) != 1)
  {
LABEL_23:
    v32 = &qword_27DEE52C0;
    v33 = &qword_238034750;
    v34 = v41;
    goto LABEL_24;
  }

  sub_237FA5750(v41, &qword_27DEE51E0, &qword_2380365F0);
LABEL_28:
  if (*(v24 + v39[9]) == *(v25 + v39[9]) && *(v24 + v39[10]) == *(v25 + v39[10]))
  {
    v47 = sub_237FC286C(*(v24 + v39[11]), *(v25 + v39[11]));
    return v47 & 1;
  }

LABEL_25:
  v47 = 0;
  return v47 & 1;
}

unint64_t sub_237FD37A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5288, &qword_238034720);
    v3 = sub_2380323A4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
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

unint64_t sub_237FD38D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5300, &qword_238034778);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52F8, &qword_238034770);
    v7 = sub_2380323A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v9, v5, &qword_27DEE5300, &qword_238034778);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237FA4EA4(*v5, v12, sub_237FA4F28);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
      result = sub_237FA9354(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_237FD3ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_237FD3B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_237FD3C50(uint64_t a1)
{
  sub_238031654();
  if (v1 <= 0x3F)
  {
    sub_237FD3F70(319, &qword_280C35360, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_237FD3F70(319, &qword_280C35340, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_237FD3F70(319, &qword_27DEE5238, type metadata accessor for DeviceActivityData.CategoryActivity, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237FD3DA4(uint64_t a1)
{
  sub_237FD3F20();
  if (v1 <= 0x3F)
  {
    sub_238031654();
    if (v2 <= 0x3F)
    {
      sub_237FD3F70(319, &qword_280C35360, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_237FD3F70(319, &qword_280C35340, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_237FD3F70(319, &qword_280C350D8, type metadata accessor for _DeviceActivityData.CategoryActivity, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237FD3F20()
{
  if (!qword_280C356C0)
  {
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C356C0);
    }
  }
}

void sub_237FD3F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_237FD3FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5240;
  if (!qword_27DEE5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5240);
  }

  return result;
}

unint64_t sub_237FD4040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34F68;
  if (!qword_280C34F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F68);
  }

  return result;
}

unint64_t sub_237FD4098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34F70;
  if (!qword_280C34F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F70);
  }

  return result;
}

unint64_t sub_237FD40EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52B8, &qword_238034748);
    v3 = sub_2380323A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_237FD4204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52A8, &qword_238034738);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52B0, &qword_238034740);
    v7 = sub_2380323A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v9, v5, &qword_27DEE52A8, &qword_238034738);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237FA4EA4(*v5, v12, sub_237FA4F28);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for _DeviceActivityData.Metadata(0);
      result = sub_237FA9354(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for _DeviceActivityData.Metadata);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_237FD4400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5298, &qword_238035C20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52A0, &qword_238034730);
    v7 = sub_2380323A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v9, v5, &qword_27DEE5298, &qword_238035C20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237FA4EA4(*v5, v12, sub_237FA4F28);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
      result = sub_237FA9354(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for _DeviceActivityData.ActivitySegment);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_237FD45FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5278, &qword_238035BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5280, &qword_238034718);
    v7 = sub_2380323A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v9, v5, &qword_27DEE5278, &qword_238035BF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237FA4EA4(*v5, v12, sub_237FA4F28);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_238031A64();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_237FD47FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5248, &qword_2380346E8);
    v3 = sub_2380323A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_237FA4EA4(v5, v6, sub_237FA4F28);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_237FD490C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5268, &qword_238034708);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5270, &qword_238034710);
    v7 = sub_2380323A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237FA90E4(v9, v5, &qword_27DEE5268, &qword_238034708);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237FA4EA4(*v5, v12, sub_237FA4F28);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_238031B94();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_237FD4B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5250, &qword_2380346F0);
    v3 = sub_2380323A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_237FA90E4(v4, v13, &qword_27DEE5258, &qword_2380346F8);
      result = sub_237FCC410(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_237FC156C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_237FD4C48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000238036D60 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5A64726F636572 && a2 == 0xEE00656D614E656ELL || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41747365676E6F6CLL && a2 == 0xEF79746976697463 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369507473726966 && a2 == 0xEB0000000070756BLL || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000238036DC0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036DF0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_2380324E4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_237FD4FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237FD500C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_237FD5060()
{
  result = qword_27DEE52F0;
  if (!qword_27DEE52F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE52F0);
  }

  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.application.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031BE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.ApplicationActivity.application.setter(uint64_t a1)
{
  v3 = sub_238031BE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.ApplicationActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.numberOfPickups.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.numberOfNotifications.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

int *DeviceActivityData.ApplicationActivity.init(_:totalActivityDuration:numberOfPickups:numberOfNotifications:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_238031BE4();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(a5 + result[5]) = a6;
  *(a5 + result[6]) = a2;
  *(a5 + result[7]) = a3;
  *(a5 + result[8]) = a4;
  return result;
}

uint64_t DeviceActivityData.ApplicationActivity.hash(into:)(uint64_t a1)
{
  sub_238031BE4();
  sub_237FD6950(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
  sub_238031E34();
  v2 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v3 = *(v1 + v2[5]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2383E5750](*&v3);
  MEMORY[0x2383E5730](*(v1 + v2[6]));
  MEMORY[0x2383E5730](*(v1 + v2[7]));
  return sub_2380325D4();
}

uint64_t _DeviceActivityData.ApplicationActivity.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DeviceActivityData.ApplicationActivity.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 20);

  return sub_237FD64D4(v3, a1);
}

uint64_t _DeviceActivityData.ApplicationActivity.token.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 20);

  return sub_237FA4A1C(a1, v3);
}

uint64_t _DeviceActivityData.ApplicationActivity.localizedDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 24));

  return v1;
}

uint64_t _DeviceActivityData.ApplicationActivity.localizedDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.numberOfPickups.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.numberOfNotifications.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ApplicationActivity.init(bundleIdentifier:token:localizedDisplayName:totalActivityDuration:numberOfPickups:numberOfNotifications:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, double a10@<D0>)
{
  v18 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v19 = v18[5];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v18[6]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_237FA4A1C(a3, &a9[v19]);
  *v21 = a4;
  *(v21 + 1) = a5;
  *&a9[v18[7]] = a10;
  *&a9[v18[8]] = a6;
  *&a9[v18[9]] = a7;
  a9[v18[10]] = a8;
  return result;
}

int *_DeviceActivityData.ApplicationActivity.update(using:)(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *(v1 + result[7]) = *(a1 + result[7]) + *(v1 + result[7]);
  v4 = result[8];
  v5 = *(a1 + v4);
  v6 = *(v1 + v4);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v4) = v8;
    v9 = result[9];
    v10 = *(a1 + v9);
    v11 = *(v1 + v9);
    v7 = __OFADD__(v11, v10);
    v12 = v11 + v10;
    if (!v7)
    {
      *(v1 + v9) = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FD5C20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FD6DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FD5C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA47D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FD5C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA47D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.ApplicationActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5310, &qword_2380347A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA47D8(v7, v8, v9);
  sub_238032614();
  v11[15] = 0;
  sub_238032464();
  if (!v1)
  {
    type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
    sub_237FA49CC(&qword_280C34B18, MEMORY[0x277CD4AF8]);
    sub_238032454();
    v11[13] = 2;
    sub_238032444();
    v11[12] = 3;
    sub_238032484();
    v11[11] = 4;
    sub_238032494();
    v11[10] = 5;
    sub_238032494();
    v11[9] = 6;
    sub_238032474();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _DeviceActivityData.ApplicationActivity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_238031ED4();
  v10 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  sub_237FD64D4(v2 + v10[5], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_2380325D4();
    sub_237FA49CC(&qword_280C34B10, MEMORY[0x277CD4B00]);
    sub_238031E34();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v10[6] + 8))
  {
    sub_2380325D4();
    sub_238031ED4();
  }

  else
  {
    sub_2380325D4();
  }

  v11 = *(v2 + v10[7]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x2383E5750](*&v11);
  MEMORY[0x2383E5730](*(v2 + v10[8]));
  MEMORY[0x2383E5730](*(v2 + v10[9]));
  return sub_2380325D4();
}

uint64_t sub_237FD61E0(uint64_t (*a1)(void *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t sub_237FD6258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FD62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.ApplicationActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  sub_237FD64D4(a1 + v7[5], v6);

  sub_238031BB4();
  v8 = *(a1 + v7[7]);
  v9 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  *(a2 + v9[5]) = v8;
  *(a2 + v9[6]) = *(a1 + v7[8]);
  *(a2 + v9[7]) = *(a1 + v7[9]);
  v10 = *(a1 + v7[10]);
  result = sub_237FA4B3C(a1);
  *(a2 + v9[8]) = v10;
  return result;
}

uint64_t _s14DeviceActivity0aB4DataV011ApplicationB0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4D40]() & 1) != 0 && (v4 = type metadata accessor for DeviceActivityData.ApplicationActivity(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_237FD64D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14DeviceActivity01_aB4DataV011ApplicationB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2 && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v28 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v14 = *(v28 + 20);
  v15 = *(v11 + 48);
  sub_237FD64D4(a1 + v14, v13);
  sub_237FD64D4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_237FD64D4(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_237FA49CC(&qword_27DEE50A0, MEMORY[0x277CD4B08]);
      v19 = sub_238031E64();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_237FA5750(v13, &qword_27DEE51C0, &unk_238034790);
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_237FA5750(v13, &qword_27DEE51C8, &unk_2380343F0);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_237FA5750(v13, &qword_27DEE51C0, &unk_238034790);
LABEL_12:
  v21 = v28;
  v22 = *(v28 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v26)
  {
    goto LABEL_9;
  }

  if (*(a1 + v21[7]) == *(a2 + v21[7]) && *(a1 + v21[8]) == *(a2 + v21[8]) && *(a1 + v21[9]) == *(a2 + v21[9]))
  {
    v17 = *(a1 + v21[10]) ^ *(a2 + v21[10]) ^ 1;
    return v17 & 1;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_237FD6950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237FD6A08(uint64_t a1)
{
  result = sub_238031BE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_237FD6AC0(uint64_t a1)
{
  sub_237FD6B78(319);
  if (v1 <= 0x3F)
  {
    sub_237FD6BDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237FD6B78(uint64_t a1)
{
  if (!qword_280C35108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF8, &unk_2380343E0);
    v1 = sub_2380321B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C35108);
    }
  }
}

void sub_237FD6BDC()
{
  if (!qword_280C35380)
  {
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C35380);
    }
  }
}

uint64_t _s19ApplicationActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_237FD6CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5340;
  if (!qword_27DEE5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5340);
  }

  return result;
}

unint64_t sub_237FD6D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FE8;
  if (!qword_280C34FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FE8);
  }

  return result;
}

unint64_t sub_237FD6D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FF0;
  if (!qword_280C34FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FF0);
  }

  return result;
}

uint64_t sub_237FD6DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x8000000238036E10 == a2;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238036E30 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7370756B636950 || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036E50 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574737572547369 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_2380324E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _DeviceActivityData.CategoryActivity.init(identifier:token:totalActivityDuration:applicationActivities:webDomainActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v15 = v14[5];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  (*(*(v16 - 8) + 56))(&a6[v15], 1, 1, v16);
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_237FAA864(a3, &a6[v15]);
  *&a6[v14[6]] = a7;
  v18 = a4;

  sub_237FAA8D4(&v18);

  *&a6[v14[7]] = v18;
  v18 = a5;

  sub_237FAAF84(&v18);

  result = sub_237FA5750(a3, &qword_27DEE51D0, &qword_238034400);
  *&a6[v14[8]] = v18;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.update(using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v3 - 8);
  v174 = &v169 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5348, &unk_238034A58);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v169 - v6;
  v7 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v190 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v184 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v183 = (&v169 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v194 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v187 = (&v169 - v15);
  MEMORY[0x28223BE20](v14);
  v186 = &v169 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v17 - 8);
  v176 = &v169 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5350, &qword_238034A68);
  MEMORY[0x28223BE20](v19 - 8);
  v189 = (&v169 - v20);
  v21 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v22 = *(v21 - 1);
  v23 = MEMORY[0x28223BE20](v21);
  v188 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v169 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v169 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v195 = &v169 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v169 - v33;
  v35 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v36 = *(v35 + 24);
  v172 = a1;
  *(v1 + v36) = *(a1 + v36) + *(v1 + v36);
  v173 = v35;
  v37 = *(v35 + 28);
  v171 = v1;
  v38 = *(v1 + v37);
  v39 = *(v38 + 16);
  v191 = v22;
  v192 = v30;
  v196 = v7;
  v197 = v21;
  v193 = v39;
  v170 = v37;
  v181 = v38;
  if (v39)
  {
    v40 = 0;
    v182 = v21[10];
    v180 = (v38 + ((*(v22 + 80) + 32) & ~*(v22 + 80)));
    v41 = MEMORY[0x277D84F98];
    while (v40 < *(v38 + 16))
    {
      v42 = *(v22 + 72);
      sub_237FA4C34(v180 + v42 * v40, v34, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v43 = v34[v182];
      v44 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v45 = sub_238031E74();
      v46 = [v44 initWithIdentifier:v45 trusted:v43];

      sub_237FA4C34(v34, v195, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v198 = v41;
      v49 = sub_237FCC3CC(v46);
      v50 = v41[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_86;
      }

      v53 = v48;
      if (v41[3] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_237FCE520();
        }
      }

      else
      {
        sub_237FCCCE4(v52, isUniquelyReferenced_nonNull_native);
        v54 = sub_237FCC3CC(v46);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_100;
        }

        v49 = v54;
      }

      v30 = v192;
      v41 = v198;
      if (v53)
      {
        sub_237FDC930(v195, v198[7] + v49 * v42, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        v198[(v49 >> 6) + 8] |= 1 << v49;
        *(v41[6] + 8 * v49) = v46;
        sub_237FDC8C8(v195, v41[7] + v49 * v42, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v56 = v41[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_95;
        }

        v41[2] = v58;
      }

      ++v40;
      sub_237FA4C9C(v34, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v38 = v181;
      v22 = v191;
      v21 = v197;
      if (v193 == v40)
      {
        v37 = *(v173 + 28);
        v7 = v196;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v41 = MEMORY[0x277D84F98];
LABEL_17:
  v59 = *(v172 + v37);
  v180 = *(v59 + 16);
  if (v180)
  {
    v60 = 0;
    v178 = v59 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v179 = (v22 + 56);
    v175 = (v22 + 48);
    v177 = v59;
    while (v60 < *(v59 + 16))
    {
      v193 = *(v22 + 72);
      sub_237FA4C34(v178 + v193 * v60, v30, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v61 = v30[v21[10]];
      v62 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v63 = sub_238031E74();
      v64 = [v62 initWithIdentifier:v63 trusted:v61];

      v65 = v41[2];
      v195 = v64;
      if (v65 && (v66 = sub_237FCC3CC(v64), (v67 & 1) != 0))
      {
        v68 = v189;
        sub_237FA4C34(v41[7] + v66 * v193, v189, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        (*v179)(v68, 0, 1, v21);
        sub_237FDC8C8(v68, v27, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        (*v179)(v189, 1, 1, v21);
        v69 = [v64 identifier];
        v182 = sub_238031EA4();
        v71 = v70;

        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
        v73 = v64;
        v74 = *(*(v72 - 8) + 56);
        v75 = v176;
        v74(v176, 1, 1, v72);
        v76 = [v73 trusted];
        v77 = v197[5];
        v74(v27 + v77, 1, 1, v72);
        v78 = (v27 + v197[6]);
        *v27 = v182;
        v27[1] = v71;
        sub_237FA39BC(v75, v27 + v77, &qword_27DEE51C0, &unk_238034790);
        *v78 = 0;
        v78[1] = 0;
        *(v27 + v197[7]) = 0;
        *(v27 + v197[8]) = 0;
        *(v27 + v197[9]) = 0;
        *(v27 + v197[10]) = v76;
        v21 = v197;
        if ((*v175)(v189, 1, v197) != 1)
        {
          sub_237FA5750(v189, &qword_27DEE5350, &qword_238034A68);
        }
      }

      v30 = v192;
      *(v27 + v21[7]) = *&v192[v21[7]] + *(v27 + v21[7]);
      v79 = v21[8];
      v80 = *&v30[v79];
      v81 = *(v27 + v79);
      v57 = __OFADD__(v81, v80);
      v82 = v81 + v80;
      if (v57)
      {
        goto LABEL_88;
      }

      *(v27 + v79) = v82;
      v83 = v21[9];
      v84 = *&v30[v83];
      v85 = *(v27 + v83);
      v57 = __OFADD__(v85, v84);
      v86 = v85 + v84;
      if (v57)
      {
        goto LABEL_89;
      }

      *(v27 + v83) = v86;
      sub_237FA4C34(v27, v188, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v41;
      v88 = v195;
      v89 = sub_237FCC3CC(v195);
      v91 = v41[2];
      v92 = (v90 & 1) == 0;
      v57 = __OFADD__(v91, v92);
      v93 = v91 + v92;
      if (v57)
      {
        goto LABEL_90;
      }

      v94 = v90;
      if (v41[3] >= v93)
      {
        v7 = v196;
        if ((v87 & 1) == 0)
        {
          v98 = v89;
          sub_237FCE520();
          v89 = v98;
          v7 = v196;
        }
      }

      else
      {
        sub_237FCCCE4(v93, v87);
        v89 = sub_237FCC3CC(v88);
        v7 = v196;
        if ((v94 & 1) != (v95 & 1))
        {
          goto LABEL_100;
        }
      }

      v22 = v191;
      v41 = v198;
      if (v94)
      {
        sub_237FDC930(v188, v198[7] + v89 * v193, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      }

      else
      {
        v198[(v89 >> 6) + 8] |= 1 << v89;
        *(v41[6] + 8 * v89) = v195;
        sub_237FDC8C8(v188, v41[7] + v89 * v193, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v96 = v41[2];
        v57 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v57)
        {
          goto LABEL_96;
        }

        v41[2] = v97;
      }

      ++v60;
      sub_237FA4C9C(v30, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C9C(v27, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v59 = v177;
      if (v180 == v60)
      {
        goto LABEL_38;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_38:
  v99 = v41[2];
  if (v99)
  {
    v100 = sub_237FCC1FC(v41[2], 0);
    v101 = sub_237FD0D84(&v198, v100 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v99, v41);
    v102 = v198;
    swift_bridgeObjectRetain_n();
    sub_237FBDBF0(v102);
    if (v101 != v99)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      sub_237FD5060();
      sub_238032534();
      __break(1u);
      v168 = *(v167 - 256);
      goto LABEL_102;
    }

    v7 = v196;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v198 = v100;
  sub_237FDA4C4(&v198);
  v180 = 0;

  v182 = v41;

  v103 = v171;
  *(v171 + v170) = v198;
  v104 = *(v173 + 32);
  v105 = *(v103 + v104);
  v197 = *(v105 + 16);
  v181 = v104;
  v193 = v105;
  if (v197)
  {
    v106 = 0;
    v195 = *(v7 + 28);
    v192 = (v105 + ((*(v190 + 80) + 32) & ~*(v190 + 80)));
    v107 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v106 >= *(v105 + 16))
      {
        goto LABEL_91;
      }

      v108 = v7;
      v109 = *(v190 + 72);
      v110 = v186;
      sub_237FA4C34(&v192[v109 * v106], v186, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v111 = *(v110 + v195);
      v112 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v113 = sub_238031E74();
      v114 = [v112 initWithIdentifier:v113 trusted:v111];

      sub_237FA4C34(v110, v187, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v107;
      v116 = sub_237FCC3CC(v114);
      v118 = v107[2];
      v119 = (v117 & 1) == 0;
      v57 = __OFADD__(v118, v119);
      v120 = v118 + v119;
      if (v57)
      {
        goto LABEL_92;
      }

      v121 = v117;
      if (v107[3] < v120)
      {
        break;
      }

      if (v115)
      {
        goto LABEL_52;
      }

      v125 = v116;
      sub_237FCE2E8();
      v116 = v125;
      v107 = v198;
      if ((v121 & 1) == 0)
      {
LABEL_53:
        v107[(v116 >> 6) + 8] |= 1 << v116;
        *(v107[6] + 8 * v116) = v114;
        sub_237FDC8C8(v187, v107[7] + v116 * v109, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v123 = v107[2];
        v57 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v57)
        {
          goto LABEL_97;
        }

        v107[2] = v124;
        goto LABEL_45;
      }

LABEL_44:
      sub_237FDC930(v187, v107[7] + v116 * v109, type metadata accessor for _DeviceActivityData.WebDomainActivity);

LABEL_45:
      v106 = (v106 + 1);
      sub_237FA4C9C(v186, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v7 = v108;
      v105 = v193;
      if (v197 == v106)
      {
        v104 = *(v173 + 32);
        goto LABEL_59;
      }
    }

    sub_237FCC99C(v120, v115);
    v116 = sub_237FCC3CC(v114);
    if ((v121 & 1) != (v122 & 1))
    {
      goto LABEL_100;
    }

LABEL_52:
    v107 = v198;
    if ((v121 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v107 = MEMORY[0x277D84F98];
LABEL_59:
  v126 = *(v172 + v104);
  v192 = *(v126 + 16);
  if (v192)
  {
    v127 = 0;
    v191 = v126 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
    v188 = v126;
    v189 = (v190 + 56);
    v187 = (v190 + 48);
    while (1)
    {
      if (v127 >= *(v126 + 16))
      {
        goto LABEL_93;
      }

      v128 = *(v190 + 72);
      v129 = v194;
      sub_237FA4C34(v191 + v128 * v127, v194, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v130 = *(v129 + *(v7 + 28));
      v131 = objc_allocWithZone(MEMORY[0x277D77B40]);
      v132 = sub_238031E74();
      v133 = [v131 initWithIdentifier:v132 trusted:v130];

      if (v107[2] && (v134 = sub_237FCC3CC(v133), (v135 & 1) != 0))
      {
        v136 = v185;
        sub_237FA4C34(v107[7] + v134 * v128, v185, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        (*v189)(v136, 0, 1, v196);
        v7 = v196;
        v137 = v183;
        sub_237FDC8C8(v136, v183, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      }

      else
      {
        (*v189)(v185, 1, 1, v7);
        v138 = [v133 identifier];
        v197 = sub_238031EA4();
        v195 = v139;

        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
        v141 = *(*(v140 - 8) + 56);
        v142 = v174;
        v141(v174, 1, 1, v140);
        v143 = v128;
        v144 = [v133 trusted];
        v145 = v133;
        v146 = *(v196 + 20);
        v147 = v140;
        v137 = v183;
        v141(v183 + v146, 1, 1, v147);
        v7 = v196;
        v148 = v195;
        *v137 = v197;
        v137[1] = v148;
        v149 = v137 + v146;
        v133 = v145;
        sub_237FA39BC(v142, v149, &qword_27DEE51B0, &qword_2380343D0);
        *(v137 + *(v7 + 24)) = 0;
        *(v137 + *(v7 + 28)) = v144;
        v128 = v143;
        if ((*v187)(v185, 1, v7) != 1)
        {
          sub_237FA5750(v185, &qword_27DEE5348, &unk_238034A58);
        }
      }

      *(v137 + *(v7 + 24)) = *(v194 + *(v7 + 24)) + *(v137 + *(v7 + 24));
      sub_237FA4C34(v137, v184, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v150 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v107;
      v151 = sub_237FCC3CC(v133);
      v153 = v107[2];
      v154 = (v152 & 1) == 0;
      v57 = __OFADD__(v153, v154);
      v155 = v153 + v154;
      if (v57)
      {
        goto LABEL_94;
      }

      v156 = v152;
      if (v107[3] < v155)
      {
        break;
      }

      if (v150)
      {
        goto LABEL_74;
      }

      v160 = v151;
      sub_237FCE2E8();
      v151 = v160;
      v107 = v198;
      if (v156)
      {
LABEL_61:
        sub_237FDC930(v184, v107[7] + v151 * v128, type metadata accessor for _DeviceActivityData.WebDomainActivity);

        goto LABEL_62;
      }

LABEL_75:
      v107[(v151 >> 6) + 8] |= 1 << v151;
      *(v107[6] + 8 * v151) = v133;
      sub_237FDC8C8(v184, v107[7] + v151 * v128, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v158 = v107[2];
      v57 = __OFADD__(v158, 1);
      v159 = v158 + 1;
      if (v57)
      {
        goto LABEL_98;
      }

      v107[2] = v159;
LABEL_62:
      ++v127;
      sub_237FA4C9C(v194, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C9C(v183, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v126 = v188;
      if (v192 == v127)
      {
        goto LABEL_79;
      }
    }

    sub_237FCC99C(v155, v150);
    v151 = sub_237FCC3CC(v133);
    if ((v156 & 1) != (v157 & 1))
    {
      goto LABEL_100;
    }

LABEL_74:
    v107 = v198;
    if (v156)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_79:
  v161 = v107[2];
  if (!v161)
  {
    goto LABEL_82;
  }

  v162 = sub_237FCC1D4(v107[2], 0);
  v163 = sub_237FD0D44(&v198, v162 + ((*(v190 + 80) + 32) & ~*(v190 + 80)), v161, v107);
  v164 = v198;
  swift_bridgeObjectRetain_n();
  sub_237FBDBF0(v164);
  if (v163 != v161)
  {
    __break(1u);
LABEL_82:

    v162 = MEMORY[0x277D84F90];
  }

  v198 = v162;
  v165 = v180;
  sub_237FDA3E0(&v198);
  if (!v165)
  {

    result = swift_bridgeObjectRelease_n();
    *(v171 + v181) = v198;
    return result;
  }

  v168 = v165;
LABEL_102:

  __break(1u);
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v78 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v79 = *(v98 - 8);
  v5 = MEMORY[0x28223BE20](v98 - 8);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v78 - v7;
  v8 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = (&v78 - v13);
  v14 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v78 = *(v105 - 8);
  v17 = MEMORY[0x28223BE20](v105);
  v100 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v78 - v19;
  v92 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v103 = *(v92 - 8);
  v20 = MEMORY[0x28223BE20](v92);
  v91 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v78 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v78 - v31;
  v86 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v33 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  sub_237FA90E4(a1 + v83[5], v25, &qword_27DEE51D0, &qword_238034400);
  v36 = (*(v27 + 48))(v25, 1, v26);
  v85 = a1;
  v81 = v33;
  if (v36 == 1)
  {
    sub_237FA5750(v25, &qword_27DEE51D0, &qword_238034400);

    v37 = sub_238031E74();
    v38 = [objc_opt_self() shortLocalizedNameForIdentifier_];
    sub_238031EA4();

    sub_238031BF4();
  }

  else
  {
    (*(v27 + 32))(v32, v25, v26);
    v102 = a1[1];
    (*(v27 + 16))(v30, v32, v26);

    v39 = sub_238031E74();
    v40 = [objc_opt_self() shortLocalizedNameForIdentifier_];
    sub_238031EA4();
    v101 = v41;

    a1 = v85;
    sub_238031C04();
    (*(v27 + 8))(v32, v26);
  }

  v42 = v83;
  v43 = *(a1 + v83[6]);
  v44 = v86[5];
  v84 = v35;
  *&v35[v44] = v43;
  v45 = *(a1 + v42[7]);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v89 = *(v103 + 72);
    v48 = MEMORY[0x277D84F90];
    v49 = v91;
    do
    {
      v101 = v48;
      v102 = v47;
      v103 = v46;
      v50 = v90;
      sub_237FA4C34(v47, v90, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C34(v50, v49, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v51 = v92;
      v52 = v16;
      sub_237FA90E4(v49 + *(v92 + 20), v95, &qword_27DEE51C0, &unk_238034790);

      sub_238031BB4();
      sub_237FA4C9C(v50, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v53 = v94;
      *(v52 + v94[5]) = *(v49 + v51[7]);
      *(v52 + v53[6]) = *(v49 + v51[8]);
      *(v52 + v53[7]) = *(v49 + v51[9]);
      v54 = v51[10];
      v48 = v101;
      v55 = *(v49 + v54);
      sub_237FA4C9C(v49, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v56 = v53[8];
      v16 = v52;
      *(v52 + v56) = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_237FB5E08(0, v48[2] + 1, 1, v48);
      }

      v58 = v48[2];
      v57 = v48[3];
      v59 = v100;
      if (v58 >= v57 >> 1)
      {
        v48 = sub_237FB5E08((v57 > 1), v58 + 1, 1, v48);
      }

      v48[2] = v58 + 1;
      sub_237FDC8C8(v52, v48 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v58, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v47 = v102 + v89;
      v46 = v103 - 1;
    }

    while (v103 != 1);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
    v59 = v100;
  }

  *&v84[v86[6]] = v48;
  v60 = *(v85 + v83[8]);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v103 = *(v78 + 72);
    v101 = (v79 + 32);
    v102 = (v79 + 48);
    v94 = (v79 + 8);
    v95 = (v79 + 16);
    v63 = MEMORY[0x277D84F90];
    v64 = v80;
    v65 = v98;
    do
    {
      v66 = v104;
      sub_237FA4C34(v62, v104, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C34(v66, v59, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v67 = v99;
      sub_237FA90E4(v59 + *(v105 + 20), v99, &qword_27DEE51B0, &qword_2380343D0);
      if ((*v102)(v67, 1, v65) == 1)
      {
        sub_237FA5750(v67, &qword_27DEE51B0, &qword_2380343D0);

        sub_238031C94();
      }

      else
      {
        v68 = v87;
        (*v101)(v87, v67, v65);
        (*v95)(v88, v68, v65);

        v59 = v100;
        sub_238031C84();
        (*v94)(v68, v65);
      }

      sub_237FA4C9C(v104, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v69 = v105;
      v70 = v97;
      *(v64 + *(v97 + 20)) = *(v59 + *(v105 + 24));
      v71 = *(v59 + *(v69 + 28));
      sub_237FA4C9C(v59, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      *(v64 + *(v70 + 24)) = v71;
      sub_237FDC8C8(v64, v106, type metadata accessor for DeviceActivityData.WebDomainActivity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_237FB5DE0(0, v63[2] + 1, 1, v63);
      }

      v73 = v63[2];
      v72 = v63[3];
      if (v73 >= v72 >> 1)
      {
        v63 = sub_237FB5DE0((v72 > 1), v73 + 1, 1, v63);
      }

      v63[2] = v73 + 1;
      sub_237FDC8C8(v106, v63 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v73, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v62 += v103;
      --v61;
    }

    while (v61);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  sub_237FA4C9C(v85, type metadata accessor for _DeviceActivityData.CategoryActivity);
  v74 = v86;
  v75 = v84;
  *&v84[v86[7]] = v63;
  v76 = v82;
  sub_237FDC8C8(v75, v82, type metadata accessor for DeviceActivityData.CategoryActivity);
  return (*(v81 + 56))(v76, 0, 1, v74);
}

uint64_t DeviceActivityData.CategoryActivity.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031C44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.CategoryActivity.category.setter(uint64_t a1)
{
  v3 = sub_238031C44();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.CategoryActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.applicationActivities.getter()
{
  type metadata accessor for DeviceActivityData.CategoryActivity(0);
}

uint64_t DeviceActivityData.CategoryActivity.applicationActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData.CategoryActivity(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

int *DeviceActivityData.CategoryActivity.init(_:totalActivityDuration:applicationActivities:webDomainActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_238031C44();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  *(a4 + result[5]) = a5;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t DeviceActivityData.CategoryActivity.hash(into:)(uint64_t a1)
{
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  sub_238031E34();
  v3 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v4 = *(v1 + v3[5]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  sub_237FD17E8(a1, *(v1 + v3[6]));
  v5 = *(v1 + v3[7]);

  return sub_237FD1640(a1, v5);
}

uint64_t DeviceActivityData.CategoryActivity.hashValue.getter()
{
  sub_2380325B4();
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  sub_238031E34();
  v1 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  sub_237FD17E8(v4, *(v0 + v1[6]));
  sub_237FD1640(v4, *(v0 + v1[7]));
  return sub_2380325F4();
}

uint64_t sub_237FD979C(uint64_t a1, int *a2)
{
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  sub_238031E34();
  v5 = *(v2 + a2[5]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x2383E5750](*&v5);
  sub_237FD17E8(a1, *(v2 + a2[6]));
  v6 = *(v2 + a2[7]);

  return sub_237FD1640(a1, v6);
}

uint64_t sub_237FD9870(uint64_t a1, int *a2)
{
  sub_2380325B4();
  sub_238031C44();
  sub_237FDCDF0(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  sub_238031E34();
  v4 = *(v2 + a2[5]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  sub_237FD17E8(v6, *(v2 + a2[6]));
  sub_237FD1640(v6, *(v2 + a2[7]));
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.CategoryActivity.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.localizedDisplayName.getter()
{
  v0 = sub_238031E74();
  v1 = [objc_opt_self() shortLocalizedNameForIdentifier_];
  v2 = sub_238031EA4();

  return v2;
}

uint64_t _DeviceActivityData.CategoryActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_237FD9B7C(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t sub_237FD9BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.webDomainActivities.getter()
{
  type metadata accessor for _DeviceActivityData.CategoryActivity(0);
}

uint64_t _DeviceActivityData.CategoryActivity.webDomainActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_237FD9D1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FDD2B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FD9D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA4018(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FD9D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA4018(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.CategoryActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5358, &qword_238034A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA4018(v9, v10, v11);
  sub_238032614();
  LOBYTE(v15) = 0;
  sub_238032464();
  if (!v2)
  {
    v12 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
    LOBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
    sub_237FA41C0(&qword_280C34B00, MEMORY[0x277CD4AF8]);
    sub_238032454();
    LOBYTE(v15) = 2;
    sub_238032484();
    v15 = *(v3 + *(v12 + 28));
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5360, &qword_238034A78);
    sub_237FA4210(&qword_280C34A88, &qword_280C34FE0, &protocol conformance descriptor for _DeviceActivityData.ApplicationActivity, MEMORY[0x277D83948]);
    sub_2380324A4();
    v15 = *(v3 + *(v12 + 32));
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5368, &qword_238034A80);
    sub_237FA4B98(&qword_280C34A68, &qword_280C34F90, &protocol conformance descriptor for _DeviceActivityData.WebDomainActivity, MEMORY[0x277D83948]);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _DeviceActivityData.CategoryActivity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_238031ED4();
  v11 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  sub_237FA90E4(v2 + v11[5], v10, &qword_27DEE51D0, &qword_238034400);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_2380325D4();
    sub_237FA41C0(&qword_280C34AF8, MEMORY[0x277CD4B00]);
    sub_238031E34();
    (*(v5 + 8))(v7, v4);
  }

  v12 = *(v2 + v11[6]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x2383E5750](*&v12);
  sub_237FD23C0(a1, *(v2 + v11[7]));
  return sub_237FD2088(a1, *(v2 + v11[8]));
}

uint64_t _DeviceActivityData.CategoryActivity.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FDA35C()
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_237FDA3A0(uint64_t a1)
{
  sub_2380325B4();
  _DeviceActivityData.CategoryActivity.hash(into:)(v2);
  return sub_2380325F4();
}

uint64_t sub_237FDA3E0(void *a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_237FAAFD8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FDA5A8(v6, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FDAB80, sub_237FDA6F8);
  *a1 = v3;
  return result;
}

uint64_t sub_237FDA4C4(void *a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_237FAABC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FDA5A8(v6, type metadata accessor for _DeviceActivityData.ApplicationActivity, sub_237FDB4A8, sub_237FDA93C);
  *a1 = v3;
  return result;
}

uint64_t sub_237FDA5A8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_2380324B4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_238031FD4();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_237FDA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_237FA4C34(v24, v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FA4C34(v21, v14, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v25 = *(v8 + 24);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_237FA4C9C(v14, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_237FDC8C8(v24, v11, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FDC8C8(v11, v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FDA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_237FA4C34(v24, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4C34(v21, v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v25 = *(v8 + 28);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_237FA4C9C(v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_237FDC8C8(v24, v11, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FDC8C8(v11, v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FDAB80(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_237FDBDD0(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_238010D30(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_238010CA4(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_237FA4C34(v117 + v24 * v23, v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_237FA4C34(v26, v122, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v29 = *(v9 + 24);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_237FA4C9C(v28, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_237FA4C34(v33, v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v34 = v122;
        sub_237FA4C34(v5, v122, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v35 = *(v123 + 24);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_237FA4C9C(v34, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 < v30 == v37 >= v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 < v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_237FDC8C8(v44 + v43, v113, type metadata accessor for _DeviceActivityData.WebDomainActivity);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FDC8C8(v113, v44 + v38, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_237FB5990(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_237FB5990((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_237FDBDD0(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_238010D30(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_238010CA4(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_237FA4C34(v5, v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v97 = v122;
    sub_237FA4C34(v93, v122, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v98 = *(v96 + 24);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_237FA4C9C(v97, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    if (v100 >= v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_237FDC8C8(v5, v121, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FDC8C8(v101, v93, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_237FDB4A8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_238010D30(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_237FDC2B4(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_238010D30(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_238010CA4(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_237FA4C34(v117 + v24 * v23, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_237FA4C34(v26, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v29 = *(v9 + 28);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_237FA4C9C(v28, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_237FA4C34(v33, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v34 = v122;
        sub_237FA4C34(v5, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v35 = *(v123 + 28);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_237FA4C9C(v34, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 < v30 == v37 >= v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 < v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_237FDC8C8(v44 + v43, v113, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_237FDC8C8(v113, v44 + v38, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_237FB5990(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_237FB5990((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_237FDC2B4(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_238010D30(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_238010CA4(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_237FA4C34(v5, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v97 = v122;
    sub_237FA4C34(v93, v122, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v98 = *(v96 + 28);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_237FA4C9C(v97, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    result = sub_237FA4C9C(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v100 >= v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_237FDC8C8(v5, v121, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_237FDC8C8(v101, v93, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_237FDBDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_237FA4C34(v33, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_237FA4C34(v35, v46, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v38 = *(v47 + 24);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_237FA4C9C(v41, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          sub_237FA4C9C(v36, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          if (v40 < v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_237FA4C34(a2, v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v21 = v46;
        sub_237FA4C34(a4, v46, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v22 = *(v47 + 24);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_237FA4C9C(v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        sub_237FA4C9C(v12, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_237FDC7C8(&v51, &v50, &v49, type metadata accessor for _DeviceActivityData.WebDomainActivity);
  return 1;
}

uint64_t sub_237FDC2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_237FA4C34(v33, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_237FA4C34(v35, v46, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v38 = *(v47 + 28);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_237FA4C9C(v41, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          sub_237FA4C9C(v36, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          if (v40 < v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_237FA4C34(a2, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v21 = v46;
        sub_237FA4C34(a4, v46, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v22 = *(v47 + 28);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_237FA4C9C(v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        sub_237FA4C9C(v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_237FDC7C8(&v51, &v50, &v49, type metadata accessor for _DeviceActivityData.ApplicationActivity);
  return 1;
}

uint64_t sub_237FDC7C8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_237FDC8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FDC930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s14DeviceActivity0aB4DataV08CategoryB0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4DA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_237FC23F4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_237FC2644(v7, v8);
}

uint64_t _s14DeviceActivity01_aB4DataV08CategoryB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D8, &qword_238034408);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = v7;
  v25 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v14 = v25[5];
  v15 = *(v11 + 48);
  sub_237FA90E4(a1 + v14, v13, &qword_27DEE51D0, &qword_238034400);
  sub_237FA90E4(a2 + v14, &v13[v15], &qword_27DEE51D0, &qword_238034400);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_237FA90E4(v13, v10, &qword_27DEE51D0, &qword_238034400);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = &v13[v15];
      v18 = v24;
      (*(v5 + 32))(v24, v17, v4);
      sub_237FA41C0(&qword_27DEE5098, MEMORY[0x277CD4B08]);
      v19 = sub_238031E64();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v10, v4);
      sub_237FA5750(v13, &qword_27DEE51D0, &qword_238034400);
      if (v19)
      {
        goto LABEL_10;
      }

LABEL_13:
      v22 = 0;
      return v22 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_237FA5750(v13, &qword_27DEE51D8, &qword_238034408);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_237FA5750(v13, &qword_27DEE51D0, &qword_238034400);
LABEL_10:
  v21 = v25;
  if (*(a1 + v25[6]) != *(a2 + v25[6]) || (sub_237FC3438(*(a1 + v25[7]), *(a2 + v25[7])) & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = sub_237FC3A10(*(a1 + v21[8]), *(a2 + v21[8]));
  return v22 & 1;
}

uint64_t sub_237FDCDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_237FDCEF0(uint64_t a1)
{
  sub_238031C44();
  if (v1 <= 0x3F)
  {
    sub_237FDD144(319, &qword_27DEE5398, type metadata accessor for DeviceActivityData.ApplicationActivity);
    if (v2 <= 0x3F)
    {
      sub_237FDD144(319, &qword_27DEE53A0, type metadata accessor for DeviceActivityData.WebDomainActivity);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}