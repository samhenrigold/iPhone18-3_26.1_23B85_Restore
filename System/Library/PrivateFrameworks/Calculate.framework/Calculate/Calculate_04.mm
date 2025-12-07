uint64_t sub_1C1EC1D48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1EC3D20;

  return v6(a1);
}

uint64_t sub_1C1EC1E40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1EC1F38;

  return v6(a1);
}

uint64_t sub_1C1EC1F38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1EC2030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
  v35 = v4;
  result = sub_1C1F52BC4();
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

      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
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

uint64_t sub_1C1EC22D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      sub_1C1F52CD4();

      sub_1C1F524A4();
      v9 = sub_1C1F52CF4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1C1EC2484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
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

unint64_t sub_1C1EC25F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for StocksKitCurrencyCache.ProviderData(uint64_t a1)
{
  result = qword_1EDC2F3A0;
  if (!qword_1EDC2F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1EC2740(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C1EC2790(result, a2);

    return sub_1C1EC27E4(a3, a4);
  }

  return result;
}

uint64_t sub_1C1EC2790(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C1EC27E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1EC2790(result, a2);
  }

  return result;
}

uint64_t sub_1C1EC281C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1EC2884(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C1E83580(a1, &qword_1EBF21260, &qword_1C1F56D28);
  v4 = sub_1C1F52304();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, v3, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1C1EC2948()
{
  v2 = v0[4];
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C1EC3D1C;

  return sub_1C1EBD440(v2, v6, v7, v8, v3, v4, v5);
}

uint64_t sub_1C1EC29F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EBE638(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1C1EC2AA0(uint64_t a1)
{
  sub_1C1E83580(a1, &qword_1EBF21270, &qword_1C1F56D38);
  sub_1C1F522F4();
  v2 = sub_1C1F52004();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.refresh()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C1EC3D28;

  return v5();
}

uint64_t dispatch thunk of StocksKitCurrencyCache.refresh(timeout:)(double a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC2D98;
  v6.n128_f64[0] = a1;

  return v8(v6);
}

uint64_t sub_1C1EC2D98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC3D1C;

  return v7(a1);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.providerData.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC1958;

  return v7(a1);
}

void sub_1C1EC3228(uint64_t a1)
{
  sub_1C1EC32E0(319);
  if (v1 <= 0x3F)
  {
    sub_1C1EC34EC(319, &qword_1EBF212C8, &type metadata for StocksKitCurrencyCache.ProviderLogo, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1EC32E0(uint64_t a1)
{
  if (!qword_1EDC2E900)
  {
    sub_1C1F51FD4();
    v1 = sub_1C1F528D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC2E900);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1EC3390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C1EC33E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C1EC347C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1EC349C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C1EC34EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1EC353C()
{
  result = qword_1EDC2C298;
  if (!qword_1EDC2C298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C298);
  }

  return result;
}

uint64_t sub_1C1EC3588()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EBD0AC(v3, v4, v2);
}

uint64_t sub_1C1EC363C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EC1788(v2, v3, v4);
}

uint64_t sub_1C1EC36FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1EC3D1C;

  return sub_1C1EC1870(a1, v4, v5, v6);
}

uint64_t sub_1C1EC37C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EC1D48(a1, v4);
}

uint64_t sub_1C1EC3880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC3D1C;

  return sub_1C1EBC868(v2, v3);
}

uint64_t objectdestroy_32Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1EC396C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C1EC3D1C;

  return sub_1C1EBBC7C(v2);
}

uint64_t objectdestroy_57Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1EC3A60()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C1EC3D1C;

  return sub_1C1EBBA80(v2);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1EC3B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EC1E40(a1, v4);
}

uint64_t sub_1C1EC3C30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC1958;

  return sub_1C1EC1E40(a1, v4);
}

uint64_t sub_1C1EC3D2C(uint64_t a1)
{
  v3 = *(*a1 + 176);
  v4 = (*a1 + 176);
  result = (v3)();
  if (result)
  {
    v6 = CalculateExpression.format.getter();

    if (v6 != 2)
    {
      return 0;
    }

    if (!(v3)(v7))
    {
      return 1;
    }

    v8 = CalculateExpression.postfixStack.getter();

    if (v8 >> 62)
    {
      if (sub_1C1F52994())
      {
LABEL_6:
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6911DB0](0, v8);
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }
        }

        v9 = CalculateExpression.rich.getter();
        v10 = (*(*v9 + 392))(v9);

        if (v10 >> 62)
        {
          v3 = sub_1C1F52994();
        }

        else
        {
          v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = (*a1 + 408);
        v1 = *v11;
        v4 = (*v11)(v16);
        if (!v3)
        {
          goto LABEL_17;
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          if (!(*v12 >> 62))
          {
            result = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if ((result & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

LABEL_27:
          result = sub_1C1F52994();
          if ((result & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (result < v3)
            {
              __break(1u);
              return result;
            }
          }

LABEL_16:
          sub_1C1E98F60(0, v3);
LABEL_17:
          v4(v16, 0);
          v13 = *CalculateExpression.rich.getter();
          v14 = (*(v13 + 392))();

          v15 = v1(v16);
          sub_1C1E8CECC(v14);
          v15(v16, 0);
          (*(*a1 + 232))(0);
          (*(*a1 + 256))(1);

          return 1;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.RollOutOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

BOOL sub_1C1EC40B4(void *a1)
{
  v1 = a1;
  v2 = NSNumberFormatter.shouldIgnoreChanges.getter();

  return v2;
}

BOOL NSNumberFormatter.shouldIgnoreChanges.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EBF21C80);
  swift_endAccess();
  if (v1)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_1C1EC418C(v5);
  return *(&v4 + 1) != 0;
}

uint64_t sub_1C1EC418C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D8, &qword_1C1F574F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NSNumberFormatter.ignoreChanges(_:)(void (*a1)(void))
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_1EBF21C80);
  swift_endAccess();
  if (v3)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_1EBF21C80, v4, 1);
  swift_endAccess();

  a1();
  sub_1C1EC4384(v1, v8);
  return sub_1C1EC418C(v8);
}

void sub_1C1EC4314(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v4 = a1;
  NSNumberFormatter.ignoreChanges(_:)(sub_1C1EC44EC);
  _Block_release(v5);
}

uint64_t sub_1C1EC4384(void *a1, uint64_t a2)
{
  sub_1C1E83510(a2, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1C1F52C54();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(a1, &unk_1EBF21C80, v9, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C1EC4540(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EC5418, v92);
  v4 = v92[0];
  if (!v92[0])
  {
    return 0;
  }

  v5 = v92[1];
  v6 = v92[2];
  v7 = v92[3];
  v8 = *(*v92[0] + 416);
  v9 = *v92[0] + 416;

  v82 = v9;
  v83 = v8;
  v10 = v8(v5);
  type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v92[0]) = 16;
  v11 = sub_1C1E7DD60();
  v12 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v92, v11 & 1);
  v81 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_92;
  }

  v87 = v10;
  v88 = v12;
  if (v5 < 0)
  {
LABEL_18:

    sub_1C1E98278(v4, v5, v6, v7);

    return 0;
  }

  v84 = v7;
  v85 = v6;
  v13 = 0;
  v2 = *(*v4 + 392);
  v6 = v5;
  v5 = 16;
  v7 = 15;
  v86 = v6;
  do
  {
    v17 = v2();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](v6, v17);
    }

    else
    {
      if (v6 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v10 = *(v17 + 8 * v6 + 32);
    }

    v18 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v92[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89) = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89))
    {

      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      LOBYTE(v92[0]) = *(v10 + v18);
      LOBYTE(v89) = 15;
      v19 = static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89);

      if (v19)
      {
        v15 = __OFSUB__(v13--, 1);
        if (v15)
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          if (((*(*v6 + 256))() & 1) == 0)
          {
            goto LABEL_100;
          }

          v63 = v2();
          if (v63 >> 62)
          {
            goto LABEL_139;
          }

          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_96;
        }
      }
    }
  }

  while (v6-- > 0);
  v7 = v84;
  v6 = v85;
  v5 = v86;
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

  v10 = v87;
  if (!v87)
  {
    v21 = *(*v4 + 408);
    v2 = v88;

    v10 = v21(v92);
    if (*v22 >> 62)
    {
LABEL_120:
      if (sub_1C1F52994() < 0)
      {
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
        goto LABEL_131;
      }
    }

    sub_1C1E98664(0, 0, v2);

    (v10)(v92, 0);

    v23 = v4;
    v24 = v86;
    v25 = v6;
    goto LABEL_28;
  }

  if ((*(*a1 + 224))(v14) & 1) != 0 || ((*(*v4 + 584))() & 1) != 0 || ((*(*v4 + 568))() & 1) != 0 || ((*(*v4 + 576))())
  {
LABEL_25:

    sub_1C1E98278(v4, v5, v6, v7);
    return 0;
  }

LABEL_31:
  v27 = v83(v5);
  v78 = v5;
  if (v27)
  {
    v10 = v27;
    v28 = ~v5;
    v78 = v5;
    while (1)
    {
      v80 = v28;
      v29 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v92[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
      {
        break;
      }

      LOBYTE(v89) = *(v10 + v29);
      v77 = v10;
      if (CalculateExpression.TokenType.isPostfixOperator.getter())
      {
        LOBYTE(v89) = *(v10 + v29);
        v91 = 9;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v89, &v91) & 1) == 0)
        {
          break;
        }

        if (!(*(*a1 + 176))())
        {
          break;
        }

        v30 = CalculateExpression.engine.getter();

        v31 = v30 == 1;
        v10 = v77;
        if (!v31)
        {
          break;
        }
      }

      LOBYTE(v92[0]) = *(v10 + v29);
      LOBYTE(v89) = 7;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        break;
      }

      v32 = (*(*v4 + 408))(v92);
      v34 = v33;
      v10 = *v33;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v34 = v10;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v10 < 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_1C1E98444(v10);
        *v34 = v10;
      }

      v36 = v78;
      v37 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78 >= v37)
      {
        goto LABEL_126;
      }

      v79 = v37 - 1;
      memmove(((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 32), ((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 40), 8 * (v80 + v37));
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v79;
      *v34 = v10;

      v32(v92, 0);

      v78 = v36 - 1;
      v10 = v83(v36 - 1);
      v28 = v80 + 1;
      v6 = v85;
      v5 = v86;
      if (!v10)
      {
        goto LABEL_49;
      }
    }

LABEL_48:
  }

LABEL_49:
  v38 = v83(v78);
  if (v38)
  {
    LOBYTE(v92[0]) = *(v38 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89) = 15;
    v10 = v38;
    v39 = static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89);

    if (v39)
    {
      goto LABEL_25;
    }
  }

  v40 = v78 + 1;
  if (__OFADD__(v78, 1))
  {
    goto LABEL_130;
  }

  v41 = v83(v78 + 1);
  if (!v41)
  {
    goto LABEL_63;
  }

  v42 = v41;
  v43 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v92[0]) = *(v41 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v89) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89) & 1) == 0 || ((*(*v42 + 256))() & 1) == 0)
  {

LABEL_63:
    v7 = *(*v4 + 408);

    v10 = (v7)(v92);
    if (!(*v53 >> 62))
    {
      v54 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_65;
    }

LABEL_131:
    v54 = sub_1C1F52994();
LABEL_65:
    if (v54 < v81)
    {
      __break(1u);
    }

    else if ((v81 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v81, v81, v88);

      v55 = (v10)(v92, 0);
      v56 = (v2)(v55);
      if (!(v56 >> 62))
      {
        v10 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_69;
      }

LABEL_134:
      v10 = sub_1C1F52994();
LABEL_69:
      v82 = v7;

      if (v81 < v10)
      {
        v58 = 0;
        v5 = v86;
        do
        {
          v59 = v5 + 1;
          v60 = (v2)(v57);
          v10 = v60;
          if ((v60 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1C6911DB0](v5 + 1, v60);
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_122;
            }

            if (v59 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_123;
            }

            v6 = *(v60 + 8 * v5 + 40);
          }

          v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v92[0]) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v89) = 15;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89))
          {

            v15 = __OFADD__(v58++, 1);
            if (v15)
            {
              goto LABEL_127;
            }
          }

          else
          {
            LOBYTE(v92[0]) = *(v6 + v10);
            LOBYTE(v89) = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89))
            {
              if (!v58)
              {
                goto LABEL_93;
              }

              v15 = __OFSUB__(v58--, 1);
              if (v15)
              {
                goto LABEL_129;
              }
            }

            else
            {
            }
          }

          v7 = v5 + 2;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_124;
          }

          v62 = (v2)(v61);
          if (v62 >> 62)
          {
            v10 = sub_1C1F52994();
          }

          else
          {
            v10 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v5;
        }

        while (v7 < v10);
      }

      goto LABEL_101;
    }

    __break(1u);
    goto LABEL_134;
  }

  v44 = (*(*v42 + 232))();
  v46 = v45;
  LOBYTE(v92[0]) = *(v42 + v43);
  v47 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v44, v46, v92, v47 & 1);
  v48 = (*(*v4 + 408))(v92);
  v50 = v49;
  v51 = *v49;
  v52 = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v50 = v51;
  if (!v52 || (v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
  {
    v51 = sub_1C1E98444(v51);
    *v50 = v51;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v40 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *((v51 & 0xFFFFFFFFFFFFFF8) + 8 * v40 + 0x20) = v2;

    v48(v92, 0);

    v23 = v4;
    v24 = v5;
    v25 = v85;
LABEL_28:
    v26 = v7;
LABEL_29:
    sub_1C1E98278(v23, v24, v25, v26);
    return 1;
  }

  while (1)
  {
    __break(1u);
LABEL_139:
    v64 = sub_1C1F52994();
LABEL_96:

    if (__OFSUB__(v64, 1))
    {
      break;
    }

    if (v64 - 2 != v5 || (v65 = (*v4 + 272), v66 = *v65, (*v65)(&v91, result), v90 = 1, v10 = sub_1C1EBB52C(), sub_1C1F52684(), v67 = sub_1C1F52684(), v92[0] != v89) && (v66(&v91, v67), v90 = 2, sub_1C1F52684(), sub_1C1F52684(), v92[0] != v89))
    {
      v76 = v82(v92);
      sub_1C1E98338(v5 + 1);

      v76(v92, 0);

      v23 = v4;
      v25 = v85;
      v24 = v86;
      v26 = v84;
      goto LABEL_29;
    }

LABEL_100:

LABEL_101:
    v68 = 0;
    v6 = v81 - 1;
    v7 = 15;
    do
    {
      v69 = (v2)(v57);
      if ((v69 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6911DB0](v6, v69);
      }

      else
      {
        if (v6 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_120;
        }

        v10 = *(v69 + 8 * v6 + 32);
      }

      v70 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v92[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v89) = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89))
      {

        v15 = __OFADD__(v68++, 1);
        if (v15)
        {
          goto LABEL_125;
        }
      }

      else
      {
        LOBYTE(v92[0]) = *(v10 + v70);
        LOBYTE(v89) = 15;
        v71 = static CalculateExpression.TokenType.== infix(_:_:)(v92, &v89);

        if (v71)
        {
          if (!v68)
          {
            goto LABEL_115;
          }

          v15 = __OFSUB__(v68--, 1);
          if (v15)
          {
            goto LABEL_128;
          }
        }
      }

      --v6;
    }

    while (v6 >= 0);
    v6 = -1;
LABEL_115:
    LOBYTE(v92[0]) = 15;
    v72 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v92, 1);
    v73 = v6 + 1;
    v75 = v82(v92);
    v5 = v86;
    if (*v74 >> 62)
    {
      if (sub_1C1F52994() >= v73)
      {
        goto LABEL_117;
      }
    }

    else if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v73)
    {
LABEL_117:
      sub_1C1E98664(v73, v73, v72);

      v75(v92, 0);

      v23 = v4;
      v24 = v86;
      v25 = v85;
      v26 = v84;
      goto LABEL_29;
    }

    __break(1u);
LABEL_137:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EC5418(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))() & 1) != 0 || ((*(*v1 + 576))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 552))() & 1;
  }
}

uint64_t CalculateExpression.CloseParenthesisOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EC5504@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1EC5550(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_1C1EC55B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C1EC5604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C1EC56A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1EC56F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_1C1EC575C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C1EC57A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C1EC5890(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1C1EC58E0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1EC5970;
}

void sub_1C1EC5970(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C1EC5A28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1C1EC5AC0()
{
  v1 = v0;
  v2 = (*(*v0 + 184))();
  if (v2)
  {
    v3 = v2;
    if (((*(*v2 + 232))(v2) & 1) == 0)
    {
      (*(*v3 + 256))();
    }
  }

  v4 = *(*v1 + 208);

  return v4();
}

uint64_t sub_1C1EC5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a5;
  *(v12 + 40) = 0;
  *(v12 + 32) = 0;
  swift_weakInit();
  *(v12 + 88) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v13;
  *(v12 + 64) = a6;
  return v12;
}

uint64_t sub_1C1EC5C54()
{
  v1 = v0;
  v3 = v0[11];
  v2 = v0[12];
  v4 = *(*v0 + 136);

  v6 = (v4)(v5);
  if (!v2)
  {

    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v7)
  {

LABEL_12:

    if (v1[10])
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = v4();
    goto LABEL_14;
  }

  v9 = sub_1C1F52C64();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v0[11] = (v4)(v10);
    v0[12] = v12;

    v14 = (v4)(v13);
    v16 = v15;
    v17 = sub_1C1E7DD60() & 1;
    v18._countAndFlagsBits = v14;
    v18._object = v16;
    v22.value.super.super.isa = 0;
    v22.is_nil = 0;
    v23.value = 1;
    v23.is_nil = 2;
    v20 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v18, v17, v22, v23, v19);

    *(v1 + 9) = v20;
    goto LABEL_12;
  }

  if (!v0[10])
  {
    goto LABEL_13;
  }

LABEL_8:
  v11 = v1[9];
LABEL_14:

  return v11;
}

uint64_t sub_1C1EC5DD8()
{
  v14 = v0[48];
  v13 = 10;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
  {
    v1 = (*(*v0 + 160))();
    if (!v2)
    {
      (*(*v0 + 136))(v1);
    }

    v3 = sub_1C1F52464();
    v5 = v4;

    v6 = objc_opt_self();
    v7 = [v6 trigonometricSet];
    v8 = sub_1C1F527C4();

    LOBYTE(v7) = sub_1C1EA68E0(v3, v5, v8);

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v6 laTeXTrigonometricSet];
      v11 = sub_1C1F527C4();

      v9 = sub_1C1EA68E0(v3, v5, v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *CalculateExpression.Token.deinit()
{

  swift_weakDestroy();

  return v0;
}

uint64_t CalculateExpression.Token.__deallocating_deinit()
{

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C1EC6010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EC605C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

void (*sub_1C1EC60B0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1E9E790;
}

uint64_t sub_1C1EC6190()
{
  v1 = v0;
  result = (*(*v0 + 232))();
  if ((result & 1) == 0)
  {
    result = (*(*v0 + 184))();
    if (result)
    {
      v3 = CalculateExpression.plain.getter(result);

      if (v3 == v1)
      {
        type metadata accessor for CalculateExpression.RichExpression();

        v5 = sub_1C1E88104(v4);
        sub_1C1E917DC(v5);
        sub_1C1EE4254(0);
      }
    }
  }

  return result;
}

uint64_t sub_1C1EC6274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EC62C8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t sub_1C1EC6324(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  *(v1 + 24) = 1;
  return result;
}

uint64_t (*sub_1C1EC637C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EC63D0;
}

uint64_t sub_1C1EC63D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 24) = 1;
  }

  return result;
}

char *sub_1C1EC6408()
{
  v1 = (*(*v0 + 264))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
    sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100, MEMORY[0x1E69E6310]);
    v13 = sub_1C1F523E4();

    return v13;
  }

  v3 = sub_1C1F52994();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1C1EAF018(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6911DB0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = (*(*v6 + 136))();
      v9 = v8;

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C1EAF018((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EC6620()
{
  v4 = 0;
  v5 = 0;
  v1 = (*(*v0 + 264))();

  sub_1C1ECD060(v1, v0, &v5, &v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
  sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100, MEMORY[0x1E69E6310]);
  v2 = sub_1C1F523E4();

  return v2;
}

uint64_t sub_1C1EC6740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v76 = a2;
  v77 = a4;
  v83 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21310, &qword_1C1F572A8);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21318, &qword_1C1F572B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v67 - v15;
  v17 = *a1;
  v18 = *(**a1 + 136);
  countAndFlagsBits = v18(v14);
  v21 = v20;
  LOBYTE(v81) = *(v17 + 48);
  LOBYTE(v80[0]) = 1;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v81, v80))
  {
    object = v21;
    v71 = a5;
    type metadata accessor for CalculateExpression(0);
    v22 = (v18)();
    v24 = static CalculateExpression.isHighPrecisionLiteral(_:)(v22, v23);

    if (v24)
    {
      v70 = v16;
      v26 = v76;
      if ((*(*v76 + 184))(v25))
      {
        v28._countAndFlagsBits = countAndFlagsBits;
        v28._object = object;
        v84.value.super.super.isa = 0;
        v84.is_nil = 0;
        v85.value = 1;
        v85.is_nil = 2;
        v29 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v28, 1, v84, v85, v27);
        countAndFlagsBits = v29._countAndFlagsBits;

        object = v29._object;
        v26 = v76;
      }

      v30 = v5;
      v16 = v70;
    }

    else
    {
      v26 = v76;
      v30 = v5;
    }

    v33 = *(*v26 + 184);
    v34 = *v26 + 184;
    if (!v33())
    {
      goto LABEL_14;
    }

    v35 = CalculateExpression.isArabic.getter();

    if ((v35 & 1) == 0)
    {
      goto LABEL_14;
    }

    v67[1] = v34;
    v68 = v33;
    sub_1C1F52164();
    sub_1C1F525F4();
    v69 = v37;
    v70 = v36;
    sub_1C1E785EC(&qword_1EBF21320, &qword_1EBF21310, &qword_1C1F572A8, MEMORY[0x1E69E9290]);
    v38 = v73;
    sub_1C1F52154();
    sub_1C1F52174();
    if (v30)
    {

      v39 = *(v72 + 8);
      v39(v10, v38);
      v39(v74, v38);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21328, &qword_1C1F572B8);
      (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
    }

    else
    {

      v41 = *(v72 + 8);
      v41(v10, v38);
      v41(v74, v38);
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21328, &qword_1C1F572B8);
    v43 = (*(*(v42 - 8) + 48))(v16, 1, v42);
    sub_1C1E83580(v16, &qword_1EBF21318, &qword_1C1F572B0);
    if (v43 == 1)
    {
LABEL_14:
      a5 = v71;
      v31 = v83;
      v32 = v77;
      v21 = object;
      goto LABEL_15;
    }

    v72 = type metadata accessor for CalculateExpression.Token();
    v70 = type metadata accessor for CalculateExpression.RichToken(0);
    LOBYTE(v81) = 5;
    v45 = sub_1C1E7DD60();
    v46 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v81, v45 & 1);
    v47 = v68;
    v48 = v68();
    v74 = countAndFlagsBits;
    v49 = sub_1C1ECCBD0(v46, v48);

    v51 = (*(*v49 + 136))(v50);
    v73 = v52;

    LOBYTE(v81) = 1;
    v54 = (v47)(v53);
    v55 = sub_1C1E8FBEC(12337, 0xE200000000000000, &v81, v54);
    v56 = v47();
    v57 = sub_1C1ECCBD0(v55, v56);

    v59 = (*(*v57 + 136))(v58);
    v61 = v60;

    v81 = v74;
    v82 = object;
    v80[0] = 101;
    v80[1] = 0xE100000000000000;
    v78 = v51;
    v79 = v73;
    MEMORY[0x1C69117F0](v59, v61);

    MEMORY[0x1C69117F0](94, 0xE100000000000000);
    sub_1C1E94E48();
    countAndFlagsBits = sub_1C1F52914();
    v21 = v62;

    v31 = v83;
    v63 = *v83;
    if (!*v83)
    {
      a5 = v71;
      v32 = v77;
      goto LABEL_15;
    }

    a5 = v71;
    v32 = v77;
    if (*(v63 + 48) != 53)
    {
      v64 = countAndFlagsBits;
      v65 = v21;
      LOBYTE(v81) = *(v63 + 48);
      LOBYTE(v80[0]) = 6;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
LABEL_19:
        v81 = 40;
        v82 = 0xE100000000000000;
        MEMORY[0x1C69117F0](v64, v65);

        MEMORY[0x1C69117F0](41, 0xE100000000000000);
        countAndFlagsBits = v81;
        v21 = v82;
        goto LABEL_15;
      }

      v63 = *v31;
      countAndFlagsBits = v64;
      if (!*v31)
      {
        goto LABEL_15;
      }
    }

    v66 = *(v63 + 48);
    if (v66 == 53)
    {
      goto LABEL_15;
    }

    v64 = countAndFlagsBits;
    v65 = v21;
    LOBYTE(v81) = v66;
    LOBYTE(v80[0]) = 4;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*v32 || *(*v32 + 48) == 53)
    {
      countAndFlagsBits = v64;
      goto LABEL_15;
    }

    LOBYTE(v81) = *(*v32 + 48);
    LOBYTE(v80[0]) = 6;
    if ((sub_1C1F52414() & 1) == 0)
    {
LABEL_28:
      countAndFlagsBits = v64;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v31 = v83;
  v32 = v77;
LABEL_15:
  *v32 = *v31;

  *v31 = v17;

  *a5 = countAndFlagsBits;
  a5[1] = v21;
  return result;
}

uint64_t CalculateExpression.PlainExpression.init()()
{
  swift_weakInit();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  return v0;
}

void sub_1C1EC7008()
{
  if (v0[40] != 1)
  {
    return;
  }

  v1 = v0;
  v2 = MEMORY[0x1E69E7CD0];
  v0[40] = 0;
  v26 = v2;
  v3 = (*(*v0 + 264))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_60;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_61:

    v17 = 0;
LABEL_62:
    v10 = 0;
    v14 = 0;
    goto LABEL_63;
  }

LABEL_4:
  v19 = v1;
  v6 = 0;
  v20 = 0;
  v7 = 0;
  v8 = 0;
  v21 = 0;
  v22 = 0;
  v9 = v4 & 0xC000000000000001;
  v1 = 1;
  v23 = 0;
  while (1)
  {
    if (v9)
    {
      v11 = MEMORY[0x1C6911DB0](v6, v4);
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v11 = *(v4 + 8 * v6 + 32);

      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v5 = sub_1C1F52994();
        if (!v5)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    LOBYTE(v24) = v11[48];
    v25 = 17;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v25))
    {

      if (v12 == v5)
      {
        goto LABEL_46;
      }

      goto LABEL_6;
    }

    if (v7)
    {
      LOBYTE(v24) = v11[48];
      v25 = 35;
      HIDWORD(v23) |= static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v25);
    }

    else
    {
      LOBYTE(v23) = BYTE4(v23) | v23;
    }

    LOBYTE(v24) = v11[48];
    v25 = 14;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v25) & 1) != 0 || (LOBYTE(v24) = v11[48], v25 = 0, (static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v25)))
    {
      (*(*v11 + 136))();
      v10 = sub_1C1F52464();
      v14 = v13;

      if (v1)
      {

        if (v12 != v5)
        {
          v1 = 0;
          v7 = 1;
          v21 = v14;
          v22 = v11;
          v9 = v4 & 0xC000000000000001;
          goto LABEL_7;
        }

        v1 = v19;
        goto LABEL_48;
      }

      sub_1C1EACF44(&v24, v10, v14);

      LOBYTE(v24) = v11[48];
      v25 = 14;
      v15 = static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v25);

      if ((v15 & 1) == 0)
      {
        v9 = v4 & 0xC000000000000001;
        if (v12 != v5)
        {
          goto LABEL_34;
        }

LABEL_46:

        v10 = v8;
        v1 = v19;
        v14 = v21;
        v11 = v22;
LABEL_48:
        v17 = v20;
        if ((v23 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v9 = v4 & 0xC000000000000001;
      if (v12 == v5)
      {
        goto LABEL_45;
      }

LABEL_28:
      v1 = 0;
      v7 = 0;
      v20 = 1;
      goto LABEL_6;
    }

    if (v20)
    {

      if (v12 == v5)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    LOBYTE(v24) = v11[48];
    if (CalculateExpression.TokenType.isOperator.getter())
    {

      if (v12 == v5)
      {
        goto LABEL_50;
      }

      goto LABEL_33;
    }

    LOBYTE(v24) = v11[48];
    v25 = 35;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      break;
    }

    if (v12 == v5)
    {
      goto LABEL_50;
    }

    v20 = 0;
    v1 = 0;
    v7 = 0;
    v10 = v8;
    v9 = v4 & 0xC000000000000001;
LABEL_7:
    ++v6;
    v8 = v10;
  }

  LOBYTE(v24) = v11[48];
  v25 = 19;
  if (sub_1C1F52414())
  {

    v9 = v4 & 0xC000000000000001;
    if (v12 == v5)
    {
      goto LABEL_50;
    }

LABEL_33:
    v20 = 0;
LABEL_34:
    v1 = 0;
    v7 = 0;
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  LOBYTE(v24) = v11[48];
  v16 = CalculateExpression.TokenType.isAnyUnknown.getter();

  v9 = v4 & 0xC000000000000001;
  if ((v16 & 1) == 0)
  {
    if (v12 == v5)
    {
LABEL_45:

      v17 = 1;
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  if (v12 != v5)
  {
    goto LABEL_33;
  }

LABEL_50:

  v17 = 0;
LABEL_51:
  v10 = v8;
  v1 = v19;
  v14 = v21;
  v11 = v22;
  if (v23)
  {
LABEL_49:

    goto LABEL_63;
  }

LABEL_52:
  if (v14)
  {
    sub_1C1EACF44(&v24, v10, v14);

    if (!v11 || v11[48] == 53)
    {

      goto LABEL_62;
    }

    LOBYTE(v24) = v11[48];
    v25 = 14;
    sub_1C1E9019C();
    v18 = sub_1C1F52414();

    v10 = 0;
    v14 = 0;
    v17 |= v18;
  }

  else
  {

    v10 = 0;
  }

LABEL_63:
  *(v1 + 48) = v10;
  *(v1 + 56) = v14;

  *(v1 + 64) = v26;

  *(v1 + 88) = v17 & 1;
}

uint64_t sub_1C1EC7570(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1C1EC7638(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_1C1EC76D0()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1C1EC7710()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }
}

uint64_t sub_1C1EC7748()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }

  return *(v0 + 88);
}

uint64_t sub_1C1EC7770(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1F52424();
  v3 = sub_1C1F52424();
  v8[4] = sub_1C1EC7868;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C1EC7874;
  v8[3] = &block_descriptor_50;
  v4 = _Block_copy(v8);
  v5 = [v2 calc:v3 stringByReplacingOccurrencesOfRegex:v4 usingBlockWithResult:?];
  _Block_release(v4);

  v6 = sub_1C1F52454();
  return v6;
}

id sub_1C1EC7874(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();

  v5 = sub_1C1F52424();

  return v5;
}

id sub_1C1EC78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1C1F52454();
  v9 = v8;

  v6(v7, v9, a3, a4);

  v10 = sub_1C1F52424();

  return v10;
}

unint64_t sub_1C1EC79C0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1C1ECC744(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1C1F52A64();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1C1F52AE4();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t CalculateExpression.PlainExpression.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1C1ECD7BC(a1);

  return v2;
}

uint64_t CalculateExpression.PlainExpression.init(_:)(uint64_t a1)
{
  v1 = sub_1C1ECD7BC(a1);

  return v1;
}

uint64_t sub_1C1EC7B8C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = -v3;
    if (!__OFSUB__(0, v3))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v3 = sub_1C1F52994();
  result = v7;
  v4 = -v3;
  if (__OFSUB__(0, v3))
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = -result;
  if (v4 <= 0 && v4 > v5)
  {
    goto LABEL_22;
  }

  result = v3 - result;
  if (__OFADD__(v3, v5))
  {
    goto LABEL_20;
  }

  if (v3 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_1C1ECD5C4(result, v3);
}

void sub_1C1EC7C98()
{
  if (v0[24] != 1)
  {
    return;
  }

  v0[24] = 0;
  v4 = (*v0 + 264);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
LABEL_91:
    v1 = v6;
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = (v5)(v8);
  v10 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_97;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_99:
  v2 = MEMORY[0x1C6911DB0](v10, v1);
LABEL_16:

  v17 = *(v2 + 48);

  v49 = v17;
  v48 = 10;
  v10 += static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48) & 1;
LABEL_17:
  v18 = v5();
  if (v18 >> 62)
  {
    v2 = v18;
    v19 = sub_1C1F52994();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= v19)
  {
    goto LABEL_48;
  }

  v21 = (v5)(v20);
  LOBYTE(v1) = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](v10, v21);
LABEL_23:

    v22 = *(v2 + 48);

    v49 = v22;
    v48 = 15;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      v23 = v5();
      if (!(v23 >> 62))
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_26;
      }

      goto LABEL_110;
    }

LABEL_48:
    LOBYTE(v1) = 0;
    ++v10;
LABEL_50:
    v31 = v5();
    if (v31 >> 62)
    {
      LOBYTE(v3) = v31;
      v32 = sub_1C1F52994();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v32)
    {
      goto LABEL_58;
    }

    v23 = (v5)(v33);
    v2 = v23;
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_103;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v10 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v23 + 8 * v10 + 32);

      goto LABEL_57;
    }

LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v10 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v21 + 8 * v10 + 32);

    goto LABEL_23;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  v3 = MEMORY[0x1C6911DB0](v10, v2);
LABEL_57:

  v34 = *(v3 + 48);

  v49 = v34;
  v48 = 8;
  v35 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
  LOBYTE(v1) = (v35 ^ 1) & v1;
  v10 += v35 & 1;
LABEL_58:
  v36 = v5();
  if (v36 >> 62)
  {
    LOBYTE(v3) = v36;
    v37 = sub_1C1F52994();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= v37)
  {
    goto LABEL_67;
  }

  v23 = (v5)(v38);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1C6911DB0](v10, v23);
LABEL_65:

    v40 = *(v39 + 48);

    v49 = v40;
    v48 = 7;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      LOBYTE(v1) = 0;
      ++v10;
      LOBYTE(v3) = 1;
    }

    else
    {
LABEL_67:
      LOBYTE(v3) = 0;
    }

    if ((*(*v0 + 624))())
    {
      v41 = 0;
LABEL_73:
      v0[89] = v41;
      v0[90] = v3;
      v0[91] = v1 & 1;
      return;
    }

    v42 = v5();
    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_72:

      v41 = v10 == v43;
      goto LABEL_73;
    }

LABEL_106:
    v43 = sub_1C1F52994();
    goto LABEL_72;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_108;
  }

  if (v10 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v23 + 8 * v10 + 32);

    goto LABEL_65;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  v2 = v23;
  v24 = sub_1C1F52994();
LABEL_26:

  if (v10 >= v24)
  {
LABEL_49:
    LOBYTE(v1) = 0;
    goto LABEL_50;
  }

  v3 = 0;
  while (1)
  {
    v6 = (v5)(v25);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v10, v6);
    }

    else
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v2 = *(v6 + 8 * v10 + 32);
    }

    v26 = *(v2 + 48);

    v49 = v26;
    v48 = 15;
    v6 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
    if (v6)
    {
      v27 = __OFADD__(v3++, 1);
      if (v27)
      {
        goto LABEL_89;
      }

      goto LABEL_41;
    }

    v6 = v5();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v10, v6);
    }

    else
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v2 = *(v6 + 8 * v10 + 32);
    }

    v28 = *(v2 + 48);

    v49 = v28;
    v48 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      v27 = __OFSUB__(v3--, 1);
      if (v27)
      {
        __break(1u);
LABEL_97:
        v11 = MEMORY[0x1C6911DB0](0, v10);
LABEL_8:

        v12 = *(v11 + 48);

        v49 = v12;
        v48 = 4;
        v10 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48) & 1;
LABEL_10:
        v13 = v5();
        if (v13 >> 62)
        {
          v2 = v13;
          v14 = sub_1C1F52994();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10 >= v14)
        {
          goto LABEL_17;
        }

        v16 = (v5)(v15);
        v1 = v16;
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        if (v10 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v16 + 8 * v10 + 32);

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_102;
      }

      if (v3 <= 0)
      {
        break;
      }
    }

LABEL_41:
    v29 = v5();
    if (v29 >> 62)
    {
      v2 = v29;
      v30 = sub_1C1F52994();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v10;

    if (v10 >= v30)
    {
      goto LABEL_49;
    }
  }

  v44 = v5();
  if (v44 >> 62)
  {
    v2 = v44;
    v45 = sub_1C1F52994();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v45, 1))
  {
    __break(1u);
    goto LABEL_113;
  }

  if (v45 - 1 != v10)
  {
    LOBYTE(v1) = 0;
    goto LABEL_85;
  }

  v46 = (v5)(v6);
  v45 = v46;
  if ((v46 & 0xC000000000000001) != 0)
  {
LABEL_113:
    v2 = MEMORY[0x1C6911DB0](v10, v45);
LABEL_83:

    v47 = *(v2 + 48);

    v49 = v47;
    v48 = 16;
    v6 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
    LOBYTE(v1) = v6;
LABEL_85:
    v27 = __OFADD__(v10++, 1);
    if (!v27)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v46 + 8 * v10 + 32);

    goto LABEL_83;
  }

  __break(1u);
}

uint64_t sub_1C1EC849C(char a1)
{
  if ((a1 & 1) != 0 || ((*(*v1 + 568))() & 1) == 0)
  {
    if ((*(*v1 + 600))() & 1) != 0 || ((*(*v1 + 536))())
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(*v1 + 624))() ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1C1EC8580()
{
  v1 = (*(*v0 + 264))();
  if (v1 >> 62)
  {
    v2 = sub_1C1F52994();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_1C1EC8608(uint64_t a1)
{
  v2 = (*(*v1 + 280))(v7);
  v4 = v3;

  MEMORY[0x1C6911980](v5);
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  return v2(v7, 0);
}

uint64_t sub_1C1EC86DC(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC0];
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  a1 = (*(*a1 + 616))(a2 == 1);
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for CalculateExpression.Token();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 32) = 0;
  swift_weakInit();
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 16) = 40;
  *(v6 + 24) = 0xE100000000000000;
  swift_beginAccess();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;

  *(v6 + 48) = 15;
  *(v6 + 64) = v5;
  v7 = (*(*v2 + 280))(v20);
  v9 = v8;
  MEMORY[0x1C6911980]();
  if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  a1 = v7(v20, 0);
  v10 = 1;
LABEL_8:
  v11 = (*(*v4 + 264))(a1);
  v12 = (*v3 + 280);
  v13 = *v12;
  v14 = (*v12)(v20);
  sub_1C1EC8A24(v11);
  result = v14(v20, 0);
  if (v10)
  {
    type metadata accessor for CalculateExpression.Token();
    v16 = swift_allocObject();
    *(v16 + 40) = 0;
    *(v16 + 32) = 0;
    swift_weakInit();
    *(v16 + 88) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 16) = 41;
    *(v16 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;

    *(v16 + 48) = 16;
    *(v16 + 64) = v5;
    v17 = v13(v20);
    v19 = v18;
    MEMORY[0x1C6911980]();
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    return v17(v20, 0);
  }

  return result;
}

uint64_t sub_1C1EC8A24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1F52994();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C1F52994();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1E8CFBC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1ECC964(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C1EC8B14()
{
  v15 = 0;
  v16 = 0xE000000000000000;
  v1 = (*v0 + 288);
  v2 = *v1;
  v3 = (*v1)(0);
  if (v3)
  {
    v14 = *(v3 + 48);
    v13 = 4;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
    {
      MEMORY[0x1C69117F0](45, 0xE100000000000000);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v2(v4);
  if (v5)
  {
    v6 = v5;
    v14 = *(v5 + 48);
    v13 = 1;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
    {
      v7 = (*(*v6 + 136))();
      MEMORY[0x1C69117F0](v7);

      v9 = v4 + 1;
      v10 = (*(*v0 + 264))(v8);
      if (v10 >> 62)
      {
        v11 = sub_1C1F52994();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v11)
      {
        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1C1EC8D04(void *a1, unint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *a2;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = v10;
  v13 = (*v10)();
  v14 = v13;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v13 + 8 * v9 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_65;
  }

  v9 = MEMORY[0x1C6911DB0](v9, v13);
LABEL_5:

  sub_1C1ECD230(v8, v7);
  v4 = sub_1C1ECAE48(v8, v7, a3);
  v152 = v4;
  type metadata accessor for CalculateExpression.PlainExpression();
  v14 = swift_allocObject();
  v15 = swift_weakInit();
  *(v14 + 24) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v14 + 32) = MEMORY[0x1E69E7CC0];
  *(v14 + 40) = 1;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = MEMORY[0x1E69E7CD0];
  *(v14 + 72) = 0;
  *(v14 + 80) = v16;
  *(v14 + 88) = 0;
  v17 = (*(*v9 + 368))(v15);
  v18 = *v9;
  if ((v17 & 1) == 0)
  {
    v20 = (*(v18 + 384))();
    v21 = *v9;
    if (v20)
    {
      v147 = a3;
      v22 = (*(v21 + 304))();
      if (!v22)
      {
        goto LABEL_42;
      }

      v23 = v22;
      if ((*(*v22 + 568))() & 1) != 0 || ((*(*v23 + 576))())
      {

        goto LABEL_42;
      }

      v151[0] = 0;
      v51 = sub_1C1ECBCC4(v23, v151, v147);
      v52 = v4;
      v53 = v51;
      if (v52 >> 62)
      {
        goto LABEL_183;
      }

      goto LABEL_41;
    }

    if ((*(v21 + 392))())
    {
      v24 = (*(*v9 + 304))();
      if (v24)
      {
        v12 = v11;
        v150[0] = 0;
        v25 = a3;
        v147 = sub_1C1ECBCC4(v24, v150, a3);
        v26 = v4 >> 62;
        if (!(v4 >> 62))
        {
          if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
LABEL_19:
            v27 = v4;
            v7 = type metadata accessor for CalculateExpression.Token();
            v28 = *(*v5 + 184);

            v30 = v28(v29);
            v31 = sub_1C1ECCBD0(v9, v30);

            v32 = *(*v14 + 632);
            v32(v31);

            v33 = *(*v14 + 640);
            v33(v147, 0);
            v34 = swift_allocObject();
            *(v34 + 40) = 0;
            *(v34 + 32) = 0;
            swift_weakInit();
            *(v34 + 88) = 0u;
            *(v34 + 72) = 0u;
            *(v34 + 16) = 40;
            *(v34 + 24) = 0xE100000000000000;
            swift_beginAccess();
            *(v34 + 32) = 0;
            *(v34 + 40) = 0;

            *(v34 + 48) = 15;
            *(v34 + 64) = MEMORY[0x1E69E7CC0];
            v32(v34);

            if (v26)
            {
              v35 = sub_1C1F52994();
            }

            else
            {
              v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v35)
            {
              v49 = __OFSUB__(v35, 1);
              result = v35 - 1;
              if (v49)
              {
                __break(1u);
              }

              else if ((v27 & 0xC000000000000001) == 0)
              {
                if ((result & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v67 = *(v27 + 8 * result + 32);

LABEL_61:
                  v33(v67, 0);

                  v68 = swift_allocObject();
                  *(v68 + 40) = 0;
                  *(v68 + 32) = 0;
                  swift_weakInit();
                  *(v68 + 88) = 0u;
                  *(v68 + 72) = 0u;
                  *(v68 + 16) = 41;
                  *(v68 + 24) = 0xE100000000000000;
                  swift_beginAccess();
                  *(v68 + 32) = 0;
                  *(v68 + 40) = 0;

                  *(v68 + 48) = 16;
                  *(v68 + 64) = MEMORY[0x1E69E7CC0];
                  v32(v68);

                  goto LABEL_157;
                }

                __break(1u);
                goto LABEL_191;
              }

              v67 = MEMORY[0x1C6911DB0](result, v27);
              goto LABEL_61;
            }

LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

LABEL_172:
          *v25 = 1;
          v140 = v12();
          if (!(v140 >> 62))
          {
            v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_174:

            *v7 = v141;
            return v14;
          }

LABEL_186:
          v141 = sub_1C1F52994();
          goto LABEL_174;
        }

LABEL_171:
        if (sub_1C1F52994() == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_172;
      }
    }

    if (v4 >> 62)
    {
      if (sub_1C1F52994() == 1)
      {
        goto LABEL_23;
      }

      v36 = sub_1C1F52994();
    }

    else
    {
      v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36 == 1)
      {
LABEL_23:
        v7 = type metadata accessor for CalculateExpression.Token();
        v37 = *(*v3 + 184);

        v39 = v37(v38);
        v40 = sub_1C1ECCBD0(v9, v39);

        v25 = (*v14 + 632);
        a3 = *v25;
        (*v25)(v40);

        v5 = swift_allocObject();
        *(v5 + 40) = 0;
        *(v5 + 32) = 0;
        swift_weakInit();
        *(v5 + 88) = 0u;
        *(v5 + 72) = 0u;
        *(v5 + 16) = 40;
        *(v5 + 24) = 0xE100000000000000;
        swift_beginAccess();
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;

        *(v5 + 48) = 15;
        v8 = MEMORY[0x1E69E7CC0];
        *(v5 + 64) = MEMORY[0x1E69E7CC0];
        v26 = v14;
        (a3)(v5);

        if ((v4 & 0xC000000000000001) != 0)
        {
LABEL_169:
          v41 = MEMORY[0x1C6911DB0](0, v4);
          goto LABEL_26;
        }

        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v41 = *(v4 + 32);

LABEL_26:
          (*(*v14 + 640))(v41, 0);

          v42 = swift_allocObject();
          *(v42 + 40) = 0;
          *(v42 + 32) = 0;
          swift_weakInit();
          *(v42 + 88) = 0u;
          *(v42 + 72) = 0u;
          *(v42 + 16) = 41;
          *(v42 + 24) = 0xE100000000000000;
          swift_beginAccess();
          *(v42 + 32) = 0;
          *(v42 + 40) = 0;

          *(v42 + 48) = 16;
          *(v42 + 64) = v8;
          (a3)(v42);
          goto LABEL_156;
        }

        __break(1u);
        goto LABEL_171;
      }
    }

    if (!v36)
    {
      type metadata accessor for CalculateExpression.Token();
      v134 = *(*v3 + 184);

      v136 = v134(v135);
      v137 = sub_1C1ECCBD0(v9, v136);

      v112 = *(*v14 + 632);
      v112(v137);

      v138 = swift_allocObject();
      *(v138 + 40) = 0;
      *(v138 + 32) = 0;
      swift_weakInit();
      *(v138 + 88) = 0u;
      *(v138 + 72) = 0u;
      *(v138 + 16) = 40;
      *(v138 + 24) = 0xE100000000000000;
      swift_beginAccess();
      *(v138 + 32) = 0;
      *(v138 + 40) = 0;

      *(v138 + 48) = 15;
      v139 = MEMORY[0x1E69E7CC0];
      *(v138 + 64) = MEMORY[0x1E69E7CC0];
      v112(v138);

      v127 = swift_allocObject();
      *(v127 + 40) = 0;
      *(v127 + 32) = 0;
      swift_weakInit();
      *(v127 + 88) = 0u;
      *(v127 + 72) = 0u;
      *(v127 + 16) = 41;
      *(v127 + 24) = 0xE100000000000000;
      swift_beginAccess();
      *(v127 + 32) = 0;
      *(v127 + 40) = 0;

      *(v127 + 48) = 16;
      *(v127 + 64) = v139;
      goto LABEL_155;
    }

    *a3 = 1;
    v133 = (v11)();
    if (!(v133 >> 62))
    {
      v80 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_153;
    }

LABEL_179:
    v80 = sub_1C1F52994();
    goto LABEL_153;
  }

  v147 = a3;
  v19 = (*(v18 + 280))();
  v144 = v3;
  v146 = v11;
  if (v19)
  {
    a3 = v19;
    if ((*(*v19 + 568))() & 1) != 0 || ((*(*a3 + 576))())
    {
    }

    else
    {
      v151[0] = 0;
      v43 = sub_1C1ECBCC4(a3, v151, v147);
      v44 = v4;
      v45 = v43;
      if (v44 >> 62 && sub_1C1F52994() < 0)
      {
        __break(1u);
        goto LABEL_177;
      }

      sub_1C1ECD3D4(0, 0, v45);

      v4 = v152;
    }
  }

  v11 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v46 = v4;
    v47 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 == 1)
    {
      goto LABEL_31;
    }

LABEL_67:
    if (v47 == 2)
    {
      v62 = v46;
      if ((v46 & 0xC000000000000001) != 0)
      {
        goto LABEL_164;
      }

      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        a3 = *(v46 + 32);

        goto LABEL_71;
      }

      __break(1u);
      goto LABEL_166;
    }

LABEL_76:
    if (v11)
    {
      v11 = v46;
      v72 = sub_1C1F52994();
    }

    else
    {
      v11 = v46;
      v72 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v72 == 2)
    {
      v46 = v11 & 0xC000000000000001;
      if ((v11 & 0xC000000000000001) != 0)
      {
LABEL_166:
        v75 = MEMORY[0x1C6911DB0](0, v11);
        v74 = v75;
        v73 = v144;
        goto LABEL_83;
      }

      v73 = v144;
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v74 = *(v11 + 32);

LABEL_83:
        v76 = (*(*v74 + 648))(v75);
        v78 = v77;

        if (v78)
        {
          if (v76 == 51 && v78 == 0xE100000000000000)
          {

LABEL_90:
            type metadata accessor for CalculateExpression.Token();
            v82 = swift_allocObject();
            *(v82 + 40) = 0;
            *(v82 + 32) = 0;
            swift_weakInit();
            *(v82 + 88) = 0u;
            *(v82 + 72) = 0u;
            *(v82 + 16) = 10193122;
            *(v82 + 24) = 0xA300000000000000;
            swift_beginAccess();
            *(v82 + 32) = 0;
            *(v82 + 40) = 0;

            *(v82 + 48) = 10;
            *(v82 + 64) = MEMORY[0x1E69E7CC0];
            (*(*v14 + 632))(v82);

            if (v46)
            {
              v50 = MEMORY[0x1C6911DB0](1, v11);
LABEL_103:
              (*(*v14 + 640))(v50, 2);
              goto LABEL_156;
            }

            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
            {
              v50 = *(v11 + 40);

              goto LABEL_103;
            }

LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
            return result;
          }

          v81 = sub_1C1F52C64();

          if (v81)
          {
            goto LABEL_90;
          }
        }

        v142 = v11;
        type metadata accessor for CalculateExpression.Token();
        type metadata accessor for CalculateExpression.RichToken(0);
        LOBYTE(v151[0]) = 10;
        v83 = sub_1C1E7DD60();
        v84 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(1953460082, 0xE400000000000000, v151, v83 & 1);
        v85 = (*(*v73 + 184))();
        v86 = sub_1C1ECCBD0(v84, v85);

        v87 = *(*v14 + 632);
        v87(v86);

        v88 = swift_allocObject();
        *(v88 + 40) = 0;
        *(v88 + 32) = 0;
        swift_weakInit();
        *(v88 + 88) = 0u;
        *(v88 + 72) = 0u;
        *(v88 + 16) = 40;
        *(v88 + 24) = 0xE100000000000000;
        swift_beginAccess();
        *(v88 + 32) = 0;
        *(v88 + 40) = 0;

        *(v88 + 48) = 15;
        *(v88 + 64) = MEMORY[0x1E69E7CC0];
        v87(v88);

        if (v46)
        {
          v89 = MEMORY[0x1C6911DB0](1, v142);
LABEL_96:
          v148 = *(*v14 + 640);
          v148(v89, 0);

          v90 = swift_allocObject();
          *(v90 + 40) = 0;
          *(v90 + 32) = 0;
          swift_weakInit();
          *(v90 + 88) = 0u;
          *(v90 + 72) = 0u;
          *(v90 + 16) = 44;
          *(v90 + 24) = 0xE100000000000000;
          swift_beginAccess();
          *(v90 + 32) = 0;
          *(v90 + 40) = 0;

          *(v90 + 48) = 11;
          v91 = MEMORY[0x1E69E7CC0];
          *(v90 + 64) = MEMORY[0x1E69E7CC0];
          v87(v90);

          v92 = swift_allocObject();
          *(v92 + 40) = 0;
          *(v92 + 32) = 0;
          swift_weakInit();
          *(v92 + 88) = 0u;
          *(v92 + 72) = 0u;
          *(v92 + 16) = 32;
          *(v92 + 24) = 0xE100000000000000;
          swift_beginAccess();
          *(v92 + 32) = 0;
          *(v92 + 40) = 0;

          *(v92 + 48) = 17;
          *(v92 + 64) = v91;
          v87(v92);

          if (v46)
          {
            v93 = MEMORY[0x1C6911DB0](0, v142);
LABEL_100:
            v148(v93, 0);

            v94 = swift_allocObject();
            *(v94 + 40) = 0;
            *(v94 + 32) = 0;
            swift_weakInit();
            *(v94 + 88) = 0u;
            *(v94 + 72) = 0u;
            *(v94 + 16) = 41;
            *(v94 + 24) = 0xE100000000000000;
            swift_beginAccess();
            *(v94 + 32) = 0;
            *(v94 + 40) = 0;

            *(v94 + 48) = 16;
            *(v94 + 64) = MEMORY[0x1E69E7CC0];
            v87(v94);
            goto LABEL_156;
          }

          if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v93 = *(v142 + 32);

            goto LABEL_100;
          }

LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v89 = *(v142 + 40);

          goto LABEL_96;
        }

LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      __break(1u);
      goto LABEL_169;
    }

    *v147 = 1;
    v79 = v146();
    if (!(v79 >> 62))
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_153:

      *v7 = v80;
      return v14;
    }

    goto LABEL_179;
  }

LABEL_65:
  v46 = v4;
  if (sub_1C1F52994() != 1)
  {
    v47 = sub_1C1F52994();
    goto LABEL_67;
  }

  while (1)
  {
LABEL_31:
    type metadata accessor for CalculateExpression.Token();
    v5 = swift_allocObject();
    *(v5 + 40) = 0;
    *(v5 + 32) = 0;
    swift_weakInit();
    *(v5 + 88) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 16) = 10127586;
    *(v5 + 24) = 0xA300000000000000;
    swift_beginAccess();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;

    *(v5 + 48) = 10;
    *(v5 + 64) = MEMORY[0x1E69E7CC0];
    (*(*v14 + 632))(v5);

    if (v11)
    {
      v48 = sub_1C1F52994();
    }

    else
    {
      v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v48)
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      v50 = MEMORY[0x1C6911DB0](v48, v46);
      goto LABEL_103;
    }

    v49 = __OFSUB__(v48--, 1);
    if (v49)
    {
      goto LABEL_105;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      goto LABEL_106;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v48 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = *(v46 + 8 * v48 + 32);

      goto LABEL_103;
    }

    __break(1u);
LABEL_109:
    v54 = v4;
    if (sub_1C1F52994() != 1)
    {
      break;
    }

LABEL_44:
    v7 = type metadata accessor for CalculateExpression.Token();
    v56 = *(*v5 + 184);

    v58 = v56(v57);
    v59 = sub_1C1ECCBD0(v9, v58);

    v11 = *v14 + 632;
    v60 = *v11;
    (*v11)(v59);

    v61 = swift_allocObject();
    *(v61 + 40) = 0;
    *(v61 + 32) = 0;
    swift_weakInit();
    *(v61 + 88) = 0u;
    *(v61 + 72) = 0u;
    *(v61 + 16) = 40;
    *(v61 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;

    *(v61 + 48) = 15;
    v8 = MEMORY[0x1E69E7CC0];
    *(v61 + 64) = MEMORY[0x1E69E7CC0];
    v60(v61);

    if (v143)
    {
      v63 = sub_1C1F52994();
    }

    else
    {
      v63 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v63)
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      v64 = MEMORY[0x1C6911DB0](v63, v54);
LABEL_53:
      (*(*v14 + 640))(v64, 0);

      v65 = swift_allocObject();
      *(v65 + 40) = 0;
      *(v65 + 32) = 0;
      swift_weakInit();
      *(v65 + 88) = 0u;
      *(v65 + 72) = 0u;
      *(v65 + 16) = 41;
      *(v65 + 24) = 0xE100000000000000;
      swift_beginAccess();
      *(v65 + 32) = 0;
      *(v65 + 40) = 0;

      *(v65 + 48) = 16;
      *(v65 + 64) = v8;
      v60(v65);
      goto LABEL_156;
    }

    v49 = __OFSUB__(v63--, 1);
    if (v49)
    {
      goto LABEL_160;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      goto LABEL_161;
    }

    if ((v63 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v63 < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v54 + 8 * v63 + 32);

      goto LABEL_53;
    }

    __break(1u);
LABEL_164:
    v46 = v62;
    v69 = MEMORY[0x1C6911DB0](0);
    a3 = v69;
LABEL_71:
    v4 = (*(*a3 + 648))(v69);
    v71 = v70;

    if (!v71)
    {
      goto LABEL_76;
    }

    if (v4 == 50 && v71 == 0xE100000000000000)
    {
    }

    else
    {
      a3 = sub_1C1F52C64();

      if ((a3 & 1) == 0)
      {
        goto LABEL_76;
      }
    }
  }

  v55 = sub_1C1F52994();
  while (1)
  {
    if (v55 == 2)
    {
      v95 = v54;
      if ((v54 & 0xC000000000000001) != 0)
      {
LABEL_177:
        v54 = v95;
        v97 = MEMORY[0x1C6911DB0](0);
        v96 = v97;
      }

      else
      {
        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_179;
        }

        v96 = *(v54 + 32);
      }

      v98 = (*(*v96 + 648))(v97);
      v100 = v99;

      if (v100)
      {
        if (v98 == 12337 && v100 == 0xE200000000000000)
        {

          goto LABEL_44;
        }

        v101 = sub_1C1F52C64();

        if (v101)
        {
          goto LABEL_44;
        }
      }
    }

    if (v143)
    {
      v102 = sub_1C1F52994();
    }

    else
    {
      v102 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v102 != 2)
    {
      *v147 = 1;
      v114 = (v11)();
      if (v114 >> 62)
      {
        goto LABEL_179;
      }

      v80 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_153;
    }

    v53 = v54 & 0xC000000000000001;
    if ((v54 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v103 = *(v54 + 32);

      goto LABEL_127;
    }

    __break(1u);
LABEL_183:
    if (sub_1C1F52994() < 0)
    {
      __break(1u);
      goto LABEL_185;
    }

LABEL_41:
    sub_1C1ECD3D4(0, 0, v53);

    v4 = v152;
LABEL_42:
    v143 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_109;
    }

    v54 = v4;
    v55 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55 == 1)
    {
      goto LABEL_44;
    }
  }

  v104 = MEMORY[0x1C6911DB0](0, v54);
  v103 = v104;
LABEL_127:
  v105 = (*(*v103 + 648))(v104);
  v107 = v106;

  v149 = v54 & 0xC000000000000001;
  if (v107)
  {

    type metadata accessor for CalculateExpression.Token();
    v108 = *(*v5 + 184);

    v110 = v108(v109);
    v111 = sub_1C1ECCBD0(v9, v110);

    v112 = *(*v14 + 632);
    v112(v111);

    if (v53)
    {
      v113 = MEMORY[0x1C6911DB0](0, v54);
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_194;
      }

      v113 = *(v54 + 32);
    }

    v123 = (*v14 + 640);
    v124 = *v123;
    (*v123)(v113, 0);

    v125 = swift_allocObject();
    *(v125 + 40) = 0;
    *(v125 + 32) = 0;
    swift_weakInit();
    *(v125 + 88) = 0u;
    *(v125 + 72) = 0u;
    *(v125 + 16) = 40;
    *(v125 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v125 + 32) = 0;
    *(v125 + 40) = 0;

    *(v125 + 48) = 15;
    *(v125 + 64) = MEMORY[0x1E69E7CC0];
    v112(v125);

    if (v149)
    {
      v126 = MEMORY[0x1C6911DB0](1, v54);
    }

    else
    {
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_195;
      }

      v126 = *(v54 + 40);
    }

    v124(v126, 0);

    v127 = swift_allocObject();
    *(v127 + 40) = 0;
    *(v127 + 32) = 0;
    swift_weakInit();
    *(v127 + 88) = 0u;
    *(v127 + 72) = 0u;
    *(v127 + 16) = 41;
    *(v127 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v127 + 32) = 0;
    *(v127 + 40) = 0;

    *(v127 + 48) = 16;
    *(v127 + 64) = MEMORY[0x1E69E7CC0];
LABEL_155:
    v112(v127);
  }

  else
  {
    type metadata accessor for CalculateExpression.Token();
    v115 = *(*v5 + 184);

    v117 = v115(v116);
    v118 = sub_1C1ECCBD0(v9, v117);

    v119 = (*v14 + 632);
    v120 = *v119;
    (*v119)(v118);

    v121 = swift_allocObject();
    *(v121 + 32) = v105;
    *(v121 + 40) = 0;
    swift_weakInit();
    *(v121 + 72) = v105;
    *(v121 + 80) = 0;
    *(v121 + 88) = v105;
    *(v121 + 96) = 0;
    *(v121 + 16) = 40;
    *(v121 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v121 + 32) = v105;
    *(v121 + 40) = 0;

    *(v121 + 48) = 15;
    *(v121 + 64) = MEMORY[0x1E69E7CC0];
    v120(v121);

    if (v149)
    {
      v122 = MEMORY[0x1C6911DB0](0, v54);
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_196;
      }

      v122 = *(v54 + 32);
    }

    v145 = *(*v14 + 640);
    v145(v122, 0);

    v128 = swift_allocObject();
    *(v128 + 32) = v105;
    *(v128 + 40) = 0;
    swift_weakInit();
    *(v128 + 72) = v105;
    *(v128 + 80) = 0;
    *(v128 + 88) = v105;
    *(v128 + 96) = 0;
    *(v128 + 16) = 44;
    *(v128 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v128 + 32) = v105;
    *(v128 + 40) = 0;

    *(v128 + 48) = 11;
    v129 = MEMORY[0x1E69E7CC0];
    *(v128 + 64) = MEMORY[0x1E69E7CC0];
    v120(v128);

    v130 = swift_allocObject();
    *(v130 + 32) = v105;
    *(v130 + 40) = 0;
    swift_weakInit();
    *(v130 + 72) = v105;
    *(v130 + 80) = 0;
    *(v130 + 88) = v105;
    *(v130 + 96) = 0;
    *(v130 + 16) = 32;
    *(v130 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v130 + 32) = v105;
    *(v130 + 40) = 0;

    *(v130 + 48) = 17;
    *(v130 + 64) = v129;
    v120(v130);

    if (v149)
    {
      v131 = MEMORY[0x1C6911DB0](1, v54);
    }

    else
    {
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_197;
      }

      v131 = *(v54 + 40);
    }

    v145(v131, 0);

    v132 = swift_allocObject();
    *(v132 + 32) = v105;
    *(v132 + 40) = 0;
    swift_weakInit();
    *(v132 + 72) = v105;
    *(v132 + 80) = 0;
    *(v132 + 88) = v105;
    *(v132 + 96) = 0;
    *(v132 + 16) = 41;
    *(v132 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v132 + 32) = v105;
    *(v132 + 40) = 0;

    *(v132 + 48) = 16;
    *(v132 + 64) = MEMORY[0x1E69E7CC0];
    v120(v132);
  }

LABEL_156:

LABEL_157:

  return v14;
}

uint64_t sub_1C1ECAE48(void *a1, unint64_t *a2, _BYTE *a3)
{
  v5 = v3;
  v9 = *a2;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = (*v10)();
  if (v12 >> 62)
  {
    v4 = v12;
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v13)
  {
    goto LABEL_18;
  }

  v15 = (v11)(v14);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v9 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

  v16 = MEMORY[0x1C6911DB0](v9, v15);
LABEL_8:

  v4 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v28 = v17;
  v27 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v28, &v27) & 1) == 0)
  {
LABEL_18:
    v24 = sub_1C1ECB468(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1F563C0;
    *(result + 32) = v24;
    return result;
  }

  sub_1C1ECD230(a1, a2);
  v5 = sub_1C1ECB11C(a1, a2, a3);
  v9 = *a2;
  v18 = v11();
  if (v18 >> 62)
  {
LABEL_25:
    v19 = sub_1C1F52994();
    goto LABEL_11;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  if (v9 >= v19)
  {
LABEL_20:
    *a3 = 1;
    return v5;
  }

  result = (v11)(v20);
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C6911DB0](v9, result);
LABEL_16:

    v23 = *(v22 + *v4);

    v26 = v23;
    v25 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25))
    {
      sub_1C1ECD230(a1, a2);
      return v5;
    }

    goto LABEL_20;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(result + 8 * v9 + 32);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECB11C(void *a1, unint64_t *a2, _BYTE *a3)
{
  v30 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 392);
  while (1)
  {
    sub_1C1ECBCC4(a1, a2, a3);

    MEMORY[0x1C6911980](v7);
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    v8 = sub_1C1F52724();
    v9 = v30;
    v10 = *a2;
    v11 = (v6)(v8);
    if (v11 >> 62)
    {
      v12 = sub_1C1F52994();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v12)
    {
LABEL_31:

      return v9;
    }

    result = (v6)(v13);
    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = MEMORY[0x1C6911DB0](v10, result);
LABEL_12:

    v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v29 = v16;
    v28 = 11;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v29, &v28) & 1) == 0)
    {
      goto LABEL_31;
    }

    v17 = v6();
    if (v17 >> 62)
    {
      v18 = sub_1C1F52994();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < v18)
    {
      *a2 = ++v10;
    }

    v20 = (v6)(v19);
    if (v20 >> 62)
    {
      v21 = sub_1C1F52994();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v21)
    {
    }

    else
    {
      result = (v6)(v22);
      if ((result & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C6911DB0](v10, result);
      }

      else
      {
        if (v10 < 0)
        {
          goto LABEL_34;
        }

        if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v23 = *(result + 8 * v10 + 32);
      }

      v24 = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v27 = v24;
      v26 = 17;
      v25 = static CalculateExpression.TokenType.== infix(_:_:)(&v27, &v26);

      if (v25)
      {
        *a2 = v10 + 1;
      }
    }
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v15 = *(result + 8 * v10 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C1ECB468(void *a1, unint64_t *a2, unint64_t a3)
{
  v4 = v3;
  type metadata accessor for CalculateExpression.PlainExpression();
  v8 = swift_allocObject();
  v9 = swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = 1;
  *(v8 + 32) = v10;
  *(v8 + 40) = 1;
  v11 = MEMORY[0x1E69E7CD0];
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = v11;
  *(v8 + 72) = 0;
  *(v8 + 80) = v10;
  *(v8 + 88) = 0;
  v12 = *a2;
  v13 = (*a1 + 392);
  v14 = *v13;
  v15 = (*v13)(v9);
  if (v15 >> 62)
  {
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= v16)
  {
    return v8;
  }

  v18 = (v14)(v17);
  v19 = v18;
  v52 = v14;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v18 + 8 * v12 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_61;
  }

  v14 = MEMORY[0x1C6911DB0](v12, v18);
LABEL_8:

  v20 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v60 = v20;
  v59 = 4;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v60, &v59) & 1) == 0)
  {
    v14 = v52;
    goto LABEL_18;
  }

  v21 = v52();
  v22 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1C6911DB0](v12, v21);
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v12 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_69;
    }

    v23 = *(v21 + 8 * v12 + 32);
  }

  type metadata accessor for CalculateExpression.Token();
  v24 = (*(*a1 + 176))();
  v25 = sub_1C1ECCBD0(v23, v24);

  (*(*v8 + 632))(v25);

  v26 = sub_1C1ECD230(a1, a2);
  v12 = *a2;
  v14 = v52;
  v27 = (v52)(v26);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_67:
  v28 = sub_1C1F52994();
LABEL_15:

  if (v12 >= v28)
  {
    return v8;
  }

LABEL_18:
  v29 = v14();
  v19 = v29;
  if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 8 * v12 + 32);

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_61:
  v30 = MEMORY[0x1C6911DB0](v12, v19);
LABEL_22:

  v31 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v58 = *(v30 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v57 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v58, &v57) & 1) == 0)
  {
    v56 = *(v30 + v31);
    v55 = 10;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v56, &v55))
    {
      v36 = sub_1C1EC8D04(a1, a2, a3);
      (*(*v8 + 640))(v36, 0);
    }

    else
    {
      v54[1] = *(v30 + v31);
      v37 = CalculateExpression.TokenType.isOperand.getter();
      if (v37)
      {
        type metadata accessor for CalculateExpression.Token();
        v38 = *(*v4 + 184);

        v40 = v38(v39);
        v41 = sub_1C1ECCBD0(v30, v40);

        (*(*v8 + 632))(v41);

        v37 = sub_1C1ECD230(a1, a2);
      }

      else
      {
        *a3 = 1;
      }
    }

    goto LABEL_42;
  }

  v22 = v4;
  v32 = sub_1C1ECAE48(a1, a2, a3);
  v4 = v32;
  v20 = v32 >> 62;
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_69:
  if (sub_1C1F52994() != 1)
  {
LABEL_25:
    *a3 = 1;
  }

LABEL_26:
  if (v20)
  {
    a3 = sub_1C1F52994();
    if (a3)
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_42;
  }

  a3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_28:
  if (a3 < 1)
  {
    goto LABEL_74;
  }

  v33 = 0;
  v34 = *(*v8 + 640);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1C6911DB0](v33, v4);
    }

    else
    {
      v35 = *(v4 + 8 * v33 + 32);
    }

    ++v33;
    v34(v35, 0);
  }

  while (a3 != v33);

  v14 = v52;
LABEL_42:
  a3 = *a2;
  v42 = (v14)(v37);
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_44;
  }

LABEL_64:
  v43 = sub_1C1F52994();
LABEL_44:

  if (a3 >= v43)
  {
LABEL_55:

    return v8;
  }

  v45 = (v14)(v44);
  v22 = v45;
  if ((v45 & 0xC000000000000001) == 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (a3 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v45 + 8 * a3 + 32);

      goto LABEL_49;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v46 = MEMORY[0x1C6911DB0](a3, v45);
LABEL_49:

  v47 = *(v46 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v54[0] = v47;
  v53 = 8;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v54, &v53) & 1) == 0)
  {
    goto LABEL_55;
  }

  result = v14();
  v22 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_75:
    v49 = MEMORY[0x1C6911DB0](a3, v22);
    goto LABEL_54;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(result + 8 * a3 + 32);

LABEL_54:

    type metadata accessor for CalculateExpression.Token();
    v50 = (*(*a1 + 176))();
    v51 = sub_1C1ECCBD0(v49, v50);

    (*(*v8 + 632))(v51);

    sub_1C1ECD230(a1, a2);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECBCC4(void *a1, unint64_t *a2, _BYTE *a3)
{
  type metadata accessor for CalculateExpression.PlainExpression();
  v6 = swift_allocObject();
  v7 = swift_weakInit();
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 1;
  *(v6 + 32) = v8;
  *(v6 + 40) = 1;
  v9 = MEMORY[0x1E69E7CD0];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = v9;
  *(v6 + 72) = 0;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = *a2;
  v13 = (*v10)(v7);
  if (v13 >> 62)
  {
    goto LABEL_50;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v12 < v14)
  {
    v16 = 0;
    v47 = a3;
    v48 = v10;
    v49 = a2;
    v50 = v11;
    v52 = a1;
    do
    {
      v17 = v11(v15);
      if ((v17 & 0xC000000000000001) != 0)
      {
        a1 = v55;
        v12 = MEMORY[0x1C6911DB0](v12, v17);
      }

      else
      {
        if (v12 < 0)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v14 = sub_1C1F52994();
          goto LABEL_3;
        }

        if (v12 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        a1 = v55;
        v12 = *(v17 + 8 * v12 + 32);
      }

      v18 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v55[0] = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v54) = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
      {
        v19 = __OFADD__(v16++, 1);
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v55[0] = *(v12 + v18);
        LOBYTE(v54) = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
        {
          if (!v16)
          {
            goto LABEL_44;
          }

          v19 = __OFSUB__(v16--, 1);
          if (v19)
          {
            goto LABEL_49;
          }
        }

        else if (!v16)
        {
          v55[0] = *(v12 + v18);
          LOBYTE(v54) = 11;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
          {
LABEL_44:

            return v6;
          }

          v16 = 0;
        }
      }

      v55[0] = *(v12 + v18);
      LOBYTE(v54) = 10;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
      {
        a1 = v52;
        v20 = sub_1C1EC8D04(v52, a2, a3);
        (*(*v6 + 640))(v20, 0);
        v11 = v50;
      }

      else
      {
        v55[0] = *(v12 + v18);
        LOBYTE(v54) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
        {
          v22 = (*(*v12 + 280))();
          if (v22)
          {
            v54 = 0;
            v53 = 0;
            v23 = *sub_1C1ECBCC4(v22, &v54, &v53);
            v24 = (*(v23 + 264))();
            v25 = (*(*v6 + 280))(v55);
            sub_1C1EC8A24(v24);
            v25(v55, 0);
          }

          type metadata accessor for CalculateExpression.Token();
          v26 = swift_allocObject();
          *(v26 + 40) = 0;
          *(v26 + 32) = 0;
          swift_weakInit();
          *(v26 + 88) = 0u;
          *(v26 + 72) = 0u;
          *(v26 + 16) = 94;
          *(v26 + 24) = 0xE100000000000000;
          swift_beginAccess();
          *(v26 + 32) = 0;
          *(v26 + 40) = 0;

          *(v26 + 48) = 7;
          *(v26 + 64) = MEMORY[0x1E69E7CC0];
          v27 = *(*v6 + 280);
          v28 = v27(v55);
          v30 = v29;
          MEMORY[0x1C6911980]();
          if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C1F526E4();
          }

          sub_1C1F52724();
          v28(v55, 0);
          v31 = sub_1C1ECD230(v52, v49);
          v32 = (*(*v12 + 304))(v31);
          if (v32)
          {
            v54 = 0;
            v53 = 0;
            v33 = *sub_1C1ECBCC4(v32, &v54, &v53);
            v34 = (*(v33 + 264))();
            v35 = v27(v55);
            sub_1C1EC8A24(v34);
            v35(v55, 0);
          }

          a3 = v47;
          v10 = v48;
          a2 = v49;
          v11 = v50;
          a1 = v52;
          goto LABEL_38;
        }

        v55[0] = *(v12 + v18);
        if ((CalculateExpression.TokenType.isAnyUnknown.getter() & 1) == 0)
        {
          v55[0] = *(v12 + v18);
          LOBYTE(v54) = 1;
          a1 = v52;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
          {
            type metadata accessor for CalculateExpression.Token();
            v36 = *(*v51 + 184);

            v38 = v36(v37);
            v39 = sub_1C1ECCBD0(v12, v38);

            (*(*v6 + 632))(v39);

            sub_1C1ECD230(v52, a2);
          }

          else
          {
            sub_1C1ECD230(v52, a2);
            type metadata accessor for CalculateExpression.Token();
            v40 = *(*v52 + 176);

            v42 = v40(v41);
            v43 = sub_1C1ECCBD0(v12, v42);

            (*(*v6 + 632))(v43);
          }

          v10 = v48;
          v11 = v50;
          goto LABEL_38;
        }

        *a3 = 1;
        a1 = v52;
        sub_1C1ECD230(v52, a2);
      }

LABEL_38:
      v12 = *a2;
      v44 = v11(v21);
      if (v44 >> 62)
      {
        v45 = sub_1C1F52994();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v12 < v45);
  }

  return v6;
}

void *CalculateExpression.PlainExpression.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t CalculateExpression.Token._notesFormattedText.getter()
{
  v1 = sub_1C1E90090(&unk_1F418DCA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  if (*(v1 + 16) && (v2 = sub_1C1E901F0(v0[48]), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);

    return v4;
  }

  else
  {

    return (*(*v0 + 136))(v6);
  }
}

char *sub_1C1ECC638(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C1ECC744(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C1ECC7DC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C1ECC850(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C1ECC7DC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1C1E9B32C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1ECC850(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1C1F52AE4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1C1ECC964(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1F52994();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1F52994();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1E785EC(&qword_1EBF21300, &qword_1EBF212F8, &qword_1C1F57298, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212F8, &qword_1C1F57298);
            v9 = sub_1C1E98D2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CalculateExpression.Token();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECCB04(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_1C1F524B4();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C1F524E4();

  return sub_1C1F525F4();
}

uint64_t sub_1C1ECCBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*a1 + 232);
  countAndFlagsBits = v6();
  v9 = v8;
  v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v71 = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v70 = 1;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v71, &v70))
  {
    v11 = sub_1C1E982B8(countAndFlagsBits, v9);
    if (v12)
    {
      if (v11 == 45 && v12 == 0xE100000000000000)
      {
        goto LABEL_17;
      }

      v14 = sub_1C1F52C64();

      if (v14)
      {
        goto LABEL_18;
      }
    }

    v15 = sub_1C1E982B8(countAndFlagsBits, v9);
    if (!v16)
    {
      goto LABEL_19;
    }

    if (v15 != 43 || v16 != 0xE100000000000000)
    {
      v18 = sub_1C1F52C64();

      if ((v18 & 1) == 0)
      {
LABEL_19:
        v35 = sub_1C1E982B8(countAndFlagsBits, v9);
        if (!v36)
        {
          goto LABEL_29;
        }

        if (v35 == 101 && v36 == 0xE100000000000000)
        {
        }

        else
        {
          v38 = sub_1C1F52C64();

          if ((v38 & 1) == 0)
          {
LABEL_29:
            v48 = sub_1C1E982B8(countAndFlagsBits, v9);
            if (!v49)
            {
              goto LABEL_38;
            }

            if (v48 == 46 && v49 == 0xE100000000000000)
            {
            }

            else
            {
              v51 = sub_1C1F52C64();

              if ((v51 & 1) == 0)
              {
LABEL_38:
                (*(*a1 + 400))(v48);
                if (v61)
                {
                  v20 = countAndFlagsBits;
                  if (a2)
                  {
LABEL_40:

                    v62 = sub_1C1E7DD60() & 1;
                    v63._countAndFlagsBits = v20;
                    v63._object = v9;
                    v72.value.super.super.isa = 0;
                    v72.is_nil = 0;
                    v73.value = 1;
                    v73.is_nil = 2;
                    v65 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v63, v62, v72, v73, v64);
                    countAndFlagsBits = v65._countAndFlagsBits;
                    object = v65._object;

                    v25 = v9;
                    goto LABEL_41;
                  }
                }

                else
                {
                  v20 = sub_1C1F52C34();
                  v67 = v66;

                  v9 = v67;
                  if (a2)
                  {
                    goto LABEL_40;
                  }
                }

                v25 = v9;
                countAndFlagsBits = v20;
                goto LABEL_44;
              }
            }

            v52 = sub_1C1ECCB04(1, countAndFlagsBits, v9);
            v54 = v53;
            v56 = v55;
            v58 = v57;

            countAndFlagsBits = MEMORY[0x1C6911770](v52, v54, v56, v58);
            v60 = v59;

            v9 = v60;
            goto LABEL_38;
          }
        }

        v39 = sub_1C1ECCB04(1, countAndFlagsBits, v9);
        v41 = v40;
        v43 = v42;
        v45 = v44;

        countAndFlagsBits = MEMORY[0x1C6911770](v39, v41, v43, v45);
        v47 = v46;

        v9 = v47;
        goto LABEL_29;
      }

LABEL_18:

      v26 = sub_1C1ECCB04(1, countAndFlagsBits, v9);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      countAndFlagsBits = MEMORY[0x1C6911770](v26, v28, v30, v32);
      v34 = v33;

      v9 = v34;
      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (a2)
  {

    v20 = (v6)(v19);
    v22 = v21;
    countAndFlagsBits = (*(*a1 + 736))(a2);
    object = v23;

    v25 = v22;
LABEL_41:
    v9 = object;
    goto LABEL_44;
  }

  v20 = 0;
  v25 = 0;
LABEL_44:
  v69 = *(a1 + v10);
  return (*(v3 + 240))(countAndFlagsBits, v9, v20, v25, &v69, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C1ECD060(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v8;
    }

    v24 = MEMORY[0x1E69E7CC0];
    sub_1C1EAF018(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v8 = v24;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v22 = v11;
      sub_1C1EC6740(&v22, a2, a3, a4, v23);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v23[0];
      v13 = v23[1];
      v24 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v23[0];
        sub_1C1EAF018((v14 > 1), v15 + 1, 1);
        v12 = v18;
        v8 = v24;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v9;
      if (v10 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1C1ECD230(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*a1 + 392);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v7)
  {
    *a2 = ++v3;
  }

  v9 = (v5)(v8);
  if (v9 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v10)
  {
    result = (v5)(result);
    if ((result & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
      }

      else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(result + 8 * v3 + 32);

        goto LABEL_12;
      }

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1C6911DB0](v3, result);
LABEL_12:

    v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v15 = v13;
    v14 = 17;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      *a2 = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1ECD3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1F52994();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_1C1E8CFBC(result, 1);
    return sub_1C1ECD69C(v7, v6, 1, v4, type metadata accessor for CalculateExpression.PlainExpression);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C1ECD4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CalculateExpression.Token();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1F52994();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ECD5C4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1F52994();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C1E8CFBC(result, 1);

  return sub_1C1ECD4C8(v5, v3, 0);
}

uint64_t sub_1C1ECD69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1ECD7BC(uint64_t a1)
{
  v2 = v1;
  v4 = swift_weakInit();
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v6 = v1 + 32;
  *(v1 + 24) = 1;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  *(v1 + 72) = 0;
  *(v1 + 80) = v5;
  *(v1 + 88) = 0;
  v85 = *(*a1 + 176);
  (v85)(v4);
  swift_beginAccess();
  swift_weakAssign();

  v92 = 0;
  v91 = 0;
  if (!swift_weakLoadStrong() || (v7 = CalculateExpression.format.getter(), v8 = , v7 != 2))
  {
    v31 = *sub_1C1ECBCC4(a1, &v92, &v91);
    v32 = (*(v31 + 264))();

    swift_beginAccess();
    *(v1 + 32) = v32;

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_57;
    }

    v33 = CalculateExpression.allowPartialExpressions.getter();

    if ((v33 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (*v6 >> 62)
    {
      goto LABEL_165;
    }

    v10 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_167;
    }

LABEL_31:
    if (v34 < 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v18 = v10 - 1;
      swift_beginAccess();
      v35 = *v6;
      if ((*v6 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1C6911DB0](v10 - 1);
      }

      else
      {
        if (v18 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          v6 = sub_1C1F52994();
          if (v6)
          {
            goto LABEL_129;
          }

          return v2;
        }

        v36 = *(v35 + 8 * v10 + 24);
      }

      swift_endAccess();
      v37 = *(v36 + 48);

      LOBYTE(v89[0]) = v37;
      v88[0] = 16;
      Strong = static CalculateExpression.TokenType.== infix(_:_:)(v89, v88);
      if ((Strong & 1) == 0)
      {
        swift_beginAccess();
        v38 = *v6;
        if ((*v6 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1C6911DB0](v10 - 1);
        }

        else
        {
          if (v18 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_150;
          }

          v39 = *(v38 + 8 * v10 + 24);
        }

        swift_endAccess();
        v40 = *(v39 + 48);

        LOBYTE(v89[0]) = v40;
        v88[0] = 17;
        Strong = static CalculateExpression.TokenType.== infix(_:_:)(v89, v88);
        if ((Strong & 1) == 0)
        {
          break;
        }
      }

      --v10;
      if (v18 < 1)
      {
        goto LABEL_57;
      }
    }

    swift_beginAccess();
    v41 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
LABEL_174:
      v42 = MEMORY[0x1C6911DB0](v18);
    }

    else
    {
      if (v18 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_176;
      }

      v42 = *(v41 + 8 * v10 + 24);
    }

    swift_endAccess();
    v43 = *(v42 + 48);

    v88[0] = v43;
    if (CalculateExpression.TokenType.isBinaryOperator.getter())
    {
      goto LABEL_53;
    }

    result = swift_beginAccess();
    v45 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_180;
    }

    if (v18 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_182:
      __break(1u);
      return result;
    }

    v46 = *(v45 + 8 * v10 + 24);

    while (1)
    {
      swift_endAccess();
      v47 = *(v46 + 48);

      LOBYTE(v89[0]) = v47;
      v86[0] = 15;
      Strong = static CalculateExpression.TokenType.== infix(_:_:)(v89, v86);
      if ((Strong & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_53:
      if (*v6 >> 62)
      {
LABEL_176:
        v84 = sub_1C1F52994();
        v49 = v84 - v18;
        if (__OFSUB__(v84, v18))
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }
      }

      else
      {
        v48 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v49 = v48 - v18;
        if (__OFSUB__(v48, v18))
        {
          goto LABEL_178;
        }
      }

      v50 = v49 - 1;
      if (!__OFSUB__(v49, 1))
      {
        swift_beginAccess();
        sub_1C1EC7B8C(v50);
        Strong = swift_endAccess();
        goto LABEL_57;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      v46 = MEMORY[0x1C6911DB0](v18);
    }
  }

  v89[0] = MEMORY[0x1E69E7CC0];
  v9 = (*a1 + 392);
  v10 = *v9;
  v11 = (*v9)(v8);
  if (v11 >> 62)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v12, 2))
  {
    __break(1u);
    goto LABEL_158;
  }

  v13 = (*(*a1 + 416))(v12 - 2);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v14 == 53)
  {
    goto LABEL_18;
  }

  v90 = v14;
  v88[0] = 4;
  sub_1C1E9019C();
  v13 = sub_1C1F52414();
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = (v10)();
  if (v15 >> 62)
  {
    goto LABEL_168;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {

    v18 = i - 2;
    if (__OFSUB__(i, 2))
    {
      __break(1u);
LABEL_170:
      MEMORY[0x1C6911DB0](v18, i);
      goto LABEL_16;
    }

    v19 = (v10)(v17);
    i = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_170;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_172:
      sub_1C1F526E4();
      goto LABEL_17;
    }

    if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_174;
    }

LABEL_16:

    MEMORY[0x1C6911980](v20);
    if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_172;
    }

LABEL_17:
    v13 = sub_1C1F52724();
LABEL_18:
    v21 = (v10)(v13);
    v12 = v21;
    if (v21 >> 62)
    {
LABEL_158:
      v22 = sub_1C1F52994();
      if (!v22)
      {
LABEL_159:

        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        MEMORY[0x1C6911DB0](v24, v12);
LABEL_25:

        MEMORY[0x1C6911980](v25);
        if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_163;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_159;
      }
    }

    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      goto LABEL_160;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_161;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_25;
    }

    __break(1u);
LABEL_165:
    Strong = sub_1C1F52994();
    v10 = Strong;
    v34 = Strong - 1;
    if (!__OFSUB__(Strong, 1))
    {
      goto LABEL_31;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    ;
  }

  __break(1u);
LABEL_163:
  sub_1C1F526E4();
LABEL_26:
  sub_1C1F52724();
  type metadata accessor for CalculateExpression.RichExpression();
  v26 = swift_weakLoadStrong();
  v27 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v89[0], v26);
  v28 = *sub_1C1ECBCC4(v27, &v92, &v91);
  v29 = (*(v28 + 264))();

  swift_beginAccess();
  *(v2 + 32) = v29;

LABEL_57:
  if (v91)
  {
    goto LABEL_60;
  }

  v51 = (*(*a1 + 392))(Strong);
  if (v51 >> 62)
  {
LABEL_154:
    v83 = sub_1C1F52994();

    if (v83)
    {
      goto LABEL_61;
    }

LABEL_60:
    swift_beginAccess();
    *v6 = MEMORY[0x1E69E7CC0];

    goto LABEL_61;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v52)
  {
    goto LABEL_60;
  }

LABEL_61:
  v53 = 0;
  while (2)
  {
    swift_beginAccess();
    if (*v6 >> 62)
    {
      if (v53 >= sub_1C1F52994())
      {
        goto LABEL_127;
      }
    }

    else if (v53 >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_127;
    }

    swift_beginAccess();
    v55 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x1C6911DB0](v53);
    }

    else
    {
      if (v53 < 0)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v53 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_138;
      }

      v56 = *(v55 + 8 * v53 + 32);
    }

    swift_endAccess();
    v57 = *(v56 + 48);

    v87[1] = v57;
    if ((CalculateExpression.TokenType.isWordBasedBitwiseOperator.getter() & 1) == 0)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v58 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x1C6911DB0](v53);
    }

    else
    {
      if (v53 < 0)
      {
        goto LABEL_140;
      }

      if (v53 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      v59 = *(v58 + 8 * v53 + 32);
    }

    swift_endAccess();
    v60 = *(v59 + 48);

    v88[0] = v60;
    v87[0] = 9;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v88, v87))
    {
      if (!v85() || (v61 = CalculateExpression.engine.getter(), , v61 != 1))
      {
LABEL_62:
        v54 = v53;
        goto LABEL_63;
      }
    }

    if (*v6 >> 62)
    {
      v62 = sub_1C1F52994();
    }

    else
    {
      v62 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v53 + 1;
    if (v53 + 1 >= v62)
    {
      goto LABEL_98;
    }

    type metadata accessor for CalculateExpression.Token();
    v63 = swift_allocObject();
    *(v63 + 40) = 0;
    *(v63 + 32) = 0;
    swift_weakInit();
    *(v63 + 88) = 0u;
    *(v63 + 72) = 0u;
    *(v63 + 16) = 32;
    *(v63 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v63 + 32) = 0;
    *(v63 + 40) = 0;

    *(v63 + 48) = 17;
    *(v63 + 64) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v64 = *v6;
    v65 = *v6 >> 62;
    if (v65)
    {
      if (sub_1C1F52994() < v54)
      {
        goto LABEL_143;
      }
    }

    else if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v54)
    {
      goto LABEL_143;
    }

    if (v54 < 0)
    {
      goto LABEL_144;
    }

    if (v65)
    {
      if (sub_1C1F52994() < v54)
      {
        goto LABEL_149;
      }

      v66 = sub_1C1F52994();
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66 < v54)
      {
        goto LABEL_148;
      }
    }

    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_145;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v6 = v64;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v65)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    if (v65)
    {
LABEL_95:
      sub_1C1F52994();
      goto LABEL_96;
    }

    if (v67 > *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_96:
      v64 = sub_1C1F52AD4();
      *v6 = v64;
    }

    sub_1C1ECD69C(v53 + 1, v53 + 1, 1, v63, type metadata accessor for CalculateExpression.Token);
    *v6 = v64;
    swift_endAccess();

LABEL_98:
    if (v53 < 1)
    {
      goto LABEL_63;
    }

    swift_beginAccess();
    v69 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v70 = MEMORY[0x1C6911DB0](v53);
    }

    else
    {
      if (v53 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_142;
      }

      v70 = *(v69 + 8 * v53 + 32);
    }

    swift_endAccess();
    v71 = *(v70 + 48);

    v88[0] = v71;
    if (CalculateExpression.TokenType.isPrefixOperator.getter())
    {
      goto LABEL_63;
    }

    type metadata accessor for CalculateExpression.Token();
    v72 = swift_allocObject();
    *(v72 + 40) = 0;
    *(v72 + 32) = 0;
    swift_weakInit();
    *(v72 + 88) = 0u;
    *(v72 + 72) = 0u;
    *(v72 + 16) = 32;
    *(v72 + 24) = 0xE100000000000000;
    swift_beginAccess();
    *(v72 + 32) = 0;
    *(v72 + 40) = 0;

    *(v72 + 48) = 17;
    *(v72 + 64) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v73 = *v6;
    v74 = *v6 >> 62;
    if (!v74)
    {
      v75 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75 < v53)
      {
        goto LABEL_146;
      }

      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_126;
      }

LABEL_106:
      v77 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v6 = v73;
      if (v77)
      {
        if (!v74)
        {
          if (v76 > *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_112:
            v73 = sub_1C1F52AD4();
            *v6 = v73;
          }

          sub_1C1ECD69C(v53, v53, 1, v72, type metadata accessor for CalculateExpression.Token);
          *v6 = v73;
          swift_endAccess();

LABEL_63:
          v53 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_139;
          }

          continue;
        }
      }

      else if (!v74)
      {
        goto LABEL_112;
      }

      sub_1C1F52994();
      goto LABEL_112;
    }

    break;
  }

  if (sub_1C1F52994() < v53)
  {
    goto LABEL_146;
  }

  result = sub_1C1F52994();
  if (result < v53)
  {
    goto LABEL_182;
  }

  v78 = sub_1C1F52994();
  v76 = v78 + 1;
  if (!__OFADD__(v78, 1))
  {
    goto LABEL_106;
  }

LABEL_126:
  __break(1u);
LABEL_127:
  a1 = *v6;
  if (*v6 >> 62)
  {
    goto LABEL_151;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_129:
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_154;
    }

    v79 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x1C6911DB0](v79, a1);
      }

      else
      {
        v80 = *(a1 + 8 * v79 + 32);
      }

      ++v79;
      v81 = *(*v80 + 192);

      v81(v82);
    }

    while (v6 != v79);
  }

  return v2;
}

unint64_t sub_1C1ECE720()
{
  result = qword_1EBF212E8;
  if (!qword_1EBF212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF212E8);
  }

  return result;
}

void type metadata accessor for CalculateGraphableType()
{
  if (!qword_1EBF212F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBF212F0);
    }
  }
}

uint64_t sub_1C1ECEABC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v10 = a1;
  v11 = v2;
  if (((*(*a1 + 224))() & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = (*(*v10 + 392))();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  v20 = v12;
  v21 = sub_1C1F52994();
  v12 = v20;
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1C6911DB0](0, v12);

    v14 = *(v35 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v14 == 53)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v13 = *(v12 + 32);

    v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v14 == 53)
    {
      goto LABEL_14;
    }
  }

  LOBYTE(v39) = v14;
  v38 = 4;
  sub_1C1E9019C();
  if ((sub_1C1F52414() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v39) = 15;
  v15 = sub_1C1E7DD60();
  v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v39, v15 & 1);
  v7 = *(*v10 + 408);
  v5 = (v7)(&v39);
  if (*v16 >> 62)
  {
    goto LABEL_53;
  }

LABEL_10:
  sub_1C1E98664(0, 0, v4);

  (v5)(&v39, 0);
  LOBYTE(v39) = 16;
  v17 = sub_1C1E7DD60();
  CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v39, v17 & 1);
  v4 = (v7)(&v39);
  v19 = v18;
  MEMORY[0x1C6911980]();
  if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    sub_1C1F52724();
    v4(&v39, 0);
LABEL_14:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1ECF290, &v39);
    v4 = v39;
    if (!v39)
    {
      return 0;
    }

    v5 = v40;
    v3 = v41;
    v10 = v42;
    v22 = *(*v39 + 416);

    v7 = v22(v5);
    type metadata accessor for CalculateExpression.RichToken(0);
    LOBYTE(v39) = 8;
    v23 = sub_1C1E7DD60();
    v6 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v39, v23 & 1);
    if (!v7)
    {

      sub_1C1E98278(v4, v5, v3, v10);

      return 0;
    }

    v8 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v39) = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (CalculateExpression.TokenType.isOperator.getter())
    {
      break;
    }

    LOBYTE(v39) = v8[v7];
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      v38 = v8[v7];
      v37 = 16;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v38, &v37) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_49:
      __break(1u);
    }

    else
    {
      v25 = *(*v4 + 408);
      v9 = (*v4 + 408);

      v8 = v25(&v39);
      if (!(*v26 >> 62))
      {
        if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < v11)
        {
          goto LABEL_51;
        }

        goto LABEL_27;
      }
    }

    if (sub_1C1F52994() < v11)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_27:
    if ((v11 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v11, v11, v6);

      (v8)(&v39, 0);
      goto LABEL_40;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    if ((sub_1C1F52994() & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_55:
    sub_1C1F526E4();
  }

  LOBYTE(v39) = v8[v7];
  v38 = 8;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v39, &v38) & 1) != 0 || (LOBYTE(v39) = v8[v7], v38 = 9, (static CalculateExpression.TokenType.== infix(_:_:)(&v39, &v38)))
  {
    v39 = v4;
    v40 = v5;
    v41 = v3;
    v42 = v10;
    sub_1C1EBA244(v6, &v39);
LABEL_40:

    sub_1C1E98278(v4, v5, v3, v10);
    return 1;
  }

  LOBYTE(v39) = v8[v7];
  v38 = 7;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v39, &v38) & 1) == 0 || (v27 = (*(*v7 + 304))()) == 0)
  {
LABEL_33:
    v28 = *(*v4 + 408);

    v29 = v28(&v39);
    v31 = v30;
    v32 = *v30;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v31 = v32;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
    {
      v32 = sub_1C1E98444(v32);
      *v31 = v32;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v6;

      v29(&v39, 0);
      goto LABEL_40;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    result = sub_1C1F52994();
    if (result >= v31)
    {
      goto LABEL_44;
    }

    goto LABEL_60;
  }

  if ((*(*v27 + 576))())
  {

    goto LABEL_33;
  }

  v31 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_58;
  }

  v36 = *(*v4 + 408);

  v9 = v36(&v39);
  if (*v34 >> 62)
  {
    goto LABEL_59;
  }

  result = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v31)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_44:
  if ((v31 & 0x8000000000000000) == 0)
  {
    sub_1C1E98664(v31, v31, v6);

    v9(&v39, 0);

    goto LABEL_40;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.FactorialOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1ECF314(uint64_t a1)
{
  v3 = *(*a1 + 176);
  result = v3();
  if (!result)
  {
    return result;
  }

  v5 = CalculateExpression.format.getter();

  if (v5 != 2)
  {
    return 0;
  }

  v7 = (v3)(v6);
  if (v7)
  {
    v8 = v7;
    v9 = CalculateExpression.postfixStack.getter();

    if (v9 >> 62)
    {
      v10 = sub_1C1F52994();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

LABEL_11:

          v13 = CalculateExpression.rich.getter();
          v14 = (*(*v13 + 392))(v13);

          if (!(v14 >> 62))
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

            v16 = (*(*a1 + 408))(v25);
            sub_1C1E98C40(v15);
            v16(v25, 0);

            goto LABEL_17;
          }

LABEL_31:
          v15 = sub_1C1F52994();
          goto LABEL_13;
        }

        MEMORY[0x1C6911DB0](v12, v9);
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_17:
  v17 = (*(*a1 + 392))(v7);
  if (v17 >> 62)
  {
    v8 = sub_1C1F52994();

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_19:
    type metadata accessor for CalculateExpression.RichToken(0);
    v18 = (*(*a1 + 384))(v25);
    v19 = (v3)(v18);
    sub_1C1E8FBEC(48, 0xE100000000000000, v25, v19);
    v1 = (*(*a1 + 408))(v25);
    v21 = v20;
    MEMORY[0x1C6911980]();
    if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_20:
      sub_1C1F52724();
      v1(v25, 0);
      goto LABEL_21;
    }

LABEL_33:
    sub_1C1F526E4();
    goto LABEL_20;
  }

  v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_21:
  v22 = v8 == 0;
  v23 = v8 != 0;
  v24 = v22;
  (*(*a1 + 232))(v24);
  (*(*a1 + 256))(v23);
  return 1;
}

uint64_t CalculateExpression.DropOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1C1ECF768(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  v5 = *(*a1 + 176);
  v6 = (*a1 + 176);
  if (!v5())
  {
    goto LABEL_10;
  }

  v7 = CalculateExpression.format.getter();

  if (v7 != 2 || ((*(*a1 + 248))(v8) & 1) == 0 || *(v2 + 16) == 101 && *(v2 + 24) == 0xE100000000000000)
  {
    goto LABEL_10;
  }

  if (sub_1C1F52C64())
  {
    goto LABEL_10;
  }

  type metadata accessor for CalculateExpression.RichToken(0);
  v9 = (*(*a1 + 384))(&v108);
  v10 = (v5)(v9);
  sub_1C1E8FBEC(48, 0xE100000000000000, &v108, v10);
  v11 = (*(*a1 + 408))(&v108);
  v13 = v12;
  MEMORY[0x1C6911980]();
  if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    sub_1C1F52724();
    v11(&v108, 0);
    (*(*a1 + 232))(1);
    (*(*a1 + 256))(0);
LABEL_10:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1ED0E04, &v108);
    v14 = v108;
    if (!v108)
    {
      return 0;
    }

    v15 = v109;
    v99 = v110;
    v100 = v111;
    v16 = *(*v108 + 416);

    v103 = v15;
    v101 = v14;
    v98 = v16;
    v17 = v16(v15);
    type metadata accessor for CalculateExpression.RichToken(0);
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    v20 = *(*a1 + 384);

    v22 = v20(&v108, v21);
    v23 = (v5)(v22);
    v102 = v18;
    v104 = sub_1C1E8FBEC(v19, v18, &v108, v23);
    v24 = (v20)(&v108);
    v25 = (v5)(v24);
    v26 = sub_1C1E8FBEC(48, 0xE100000000000000, &v108, v25);
    if (!v17)
    {
      if (v19 == 12336 && v18 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v33 = v26;
        v34 = v103;
      }

      else
      {
        v34 = v103;
        v33 = v104;
      }

      v35 = *(*v14 + 408);

      v36 = v35(&v108);
      LOBYTE(v14) = v37;
      if (!(*v37 >> 62) || (sub_1C1F52994() & 0x8000000000000000) == 0)
      {
        sub_1C1E98664(0, 0, v33);

        v36(&v108, 0);
        (*(*a1 + 232))(0);

        sub_1C1E98278(v101, v34, v99, v100);
LABEL_83:

        return 1;
      }

      __break(1u);
      goto LABEL_127;
    }

    v27 = v19;
    v28 = (*(*v17 + 408))();
    if (v28)
    {
      v28 = (*(*v17 + 264))(0);
    }

    v29 = v18;
    if (((*(*v17 + 376))(v28) & 1) != 0 && (v27 != 46 || v18 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      break;
    }

    if (((*(*a1 + 224))() & 1) != 0 && (v27 != 101 || v18 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      if (v27 == 12336 && v18 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v104 = v26;
      }

      if (v27 == 46 && v18 == 0xE100000000000000 || (v40 = sub_1C1F52C64(), (v40 & 1) != 0))
      {
        v40 = (*(*v104 + 240))(11824, 0xE200000000000000);
      }

      if (!(v5)(v40) || (v41 = CalculateExpression.format.getter(), , v41 != 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1C1F563C0;
        *(v50 + 32) = v104;
        v51 = *(*v14 + 400);

        v51(v50);
LABEL_69:
        (*(*a1 + 232))(0);

        sub_1C1E98278(v101, v103, v99, v100);
        goto LABEL_83;
      }

      v42 = *(*v14 + 408);

      v43 = v42(&v108);
      v45 = v44;
      v46 = *v44;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v45 = v46;
      if (!result || (v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
      {
        result = sub_1C1E98444(v46);
        v46 = result;
        *v45 = result;
      }

      if ((v103 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v103 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        *((v46 & 0xFFFFFFFFFFFFFF8) + 8 * v103 + 0x20) = v104;

        v43(&v108, 0);
        v47 = v98(v103 - 1);
        if (v47)
        {
          v48 = *(v47 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v48 != 53)
          {
            LOBYTE(v108) = v48;
            LOBYTE(v105) = 4;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              v49 = v42(&v108);
              sub_1C1E98338(v103 - 1);

              v49(&v108, 0);
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_137:
      __break(1u);
      return result;
    }

    v30 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v108) = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
    {
      LOBYTE(v105) = *(v17 + v30);
      v107 = 15;
      v31 = v27;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v105, &v107))
      {
        goto LABEL_33;
      }

      LOBYTE(v108) = *(v17 + v30);
      v31 = v27;
      if (CalculateExpression.TokenType.isConstant.getter())
      {
        goto LABEL_33;
      }

      LOBYTE(v108) = *(v17 + v30);
      LOBYTE(v105) = 18;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v108, &v105))
      {
        goto LABEL_33;
      }

      LOBYTE(v108) = *(v17 + v30);
      LOBYTE(v105) = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v108, &v105))
      {
        goto LABEL_33;
      }

      LOBYTE(v108) = *(v17 + v30);
      LOBYTE(v105) = 1;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v108, &v105))
      {
        if (v5())
        {
          (*(*v17 + 744))();
        }

        if (v27 == 101 && v18 == 0xE100000000000000 || (sub_1C1F52C64()) && (v108 = (*(*v17 + 232))(), v109 = v57, v105 = 101, v106 = 0xE100000000000000, sub_1C1E94E48(), v58 = sub_1C1F52934(), , (v58) || (v27 == 46 && v18 == 0xE100000000000000 || (sub_1C1F52C64()) && ((v59 = *(*v17 + 232), v108 = v59(), v109 = v60, v105 = 46, v106 = 0xE100000000000000, sub_1C1E94E48(), v61 = sub_1C1F52934(), v62 = , (v61) || (v108 = (v59)(v62), v109 = v63, v105 = 101, v106 = 0xE100000000000000, v64 = sub_1C1F52934(), , (v64)))
        {
LABEL_46:

          v38 = v101;
          v39 = v103;
LABEL_47:
          sub_1C1E98278(v38, v39, v99, v100);
          return 0;
        }

        v65 = *(*v17 + 232);
        v65();
        v66 = sub_1C1F525A4();

        if (v66 & 1) != 0 || ((v65)(v67), v68 = sub_1C1F525A4(), v69 = , (v68) || ((v65)(v69), v70 = sub_1C1F525A4(), v71 = , (v70))
        {
          v72 = (*(*v17 + 248))(&v108);
          sub_1C1ED0F68();

          v71 = v72(&v108, 0);
        }

        v73 = (v65)(v71);
        sub_1C1EAAEDC(45, 0xE100000000000000, v73, v74);
        v76 = v75;

        v78 = v101;
        if (v76)
        {
          v79 = (v65)(v77);
          sub_1C1EAAEDC(43, 0xE100000000000000, v79, v80);
          v82 = v81;

          if (v82)
          {
            v84 = (v65)(v83);
            sub_1C1EAAEDC(101, 0xE100000000000000, v84, v85);
            v87 = v86;

            v89 = v103;
            if ((v87 & 1) == 0)
            {
              (v65)(v88);
              v65();

              v90 = sub_1C1F52574();

              if (v90 >= 4)
              {
                goto LABEL_114;
              }
            }

LABEL_124:
            v108 = (v65)(v88);
            v109 = v96;

            MEMORY[0x1C69117F0](v27, v102);

            (*(*v17 + 240))(v108, v109);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(0);

            v55 = v78;
            v56 = v89;
            goto LABEL_82;
          }

          (v65)(v83);
          v65();
        }

        else
        {
          (v65)(v77);
          v65();

          v78 = v101;
        }

        v95 = sub_1C1F52574();

        v89 = v103;
        if (v95 >= 4)
        {
LABEL_114:

          v38 = v78;
          v39 = v89;
          goto LABEL_47;
        }

        goto LABEL_124;
      }

LABEL_120:

      v55 = v101;
      v56 = v103;
LABEL_82:
      sub_1C1E98278(v55, v56, v99, v100);
      goto LABEL_83;
    }

    v31 = v27;
LABEL_33:
    if (v31 == 101 && v18 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      goto LABEL_46;
    }

    if (v31 == 12336 && v18 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      v3 = v103;

      v104 = v26;
    }

    else
    {
      v3 = v103;
    }

    v11 = v101;
    if (v31 == 46 && v102 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      (*(*v104 + 240))(11824, 0xE200000000000000);
    }

    v52 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = *(*v101 + 408);
      v5 = (*v101 + 408);

      v29 = v6(&v108);
      if (!(*v53 >> 62))
      {
        if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < v52)
        {
          goto LABEL_132;
        }

        goto LABEL_78;
      }
    }

    if (sub_1C1F52994() < v52)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_78:
    if ((v52 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v3 + 1, v3 + 1, v104);

      v29(&v108, 0);
      LOBYTE(v108) = *(v17 + v30);
      LOBYTE(v105) = 18;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v108, &v105))
      {
        v54 = v6(&v108);
        sub_1C1E98338(v3);

        v54(&v108, 0);
      }

      (*(*a1 + 232))(0);

      v55 = v101;
      v56 = v3;
      goto LABEL_82;
    }

LABEL_133:
    __break(1u);
LABEL_134:
    sub_1C1F526E4();
  }

  if (v27 == 101 && v18 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    goto LABEL_46;
  }

  (*(*a1 + 232))(0);
  if ((v27 != 48 || v18 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0 && (v27 != 12336 || v18 != 0xE200000000000000) && (sub_1C1F52C64() & 1) == 0)
  {
    v91 = *(*v17 + 240);

    v92 = v91(v27, v18);
    if (!(v5)(v92))
    {
      goto LABEL_129;
    }

    v93 = CalculateExpression.format.getter();

    if (v93 != 2)
    {
      goto LABEL_129;
    }

    v36 = (v103 - 1);
    if (__OFSUB__(v103, 1))
    {
      goto LABEL_137;
    }

    v94 = v98(v103 - 1);
    if (!v94)
    {
      goto LABEL_120;
    }

    LODWORD(v14) = *(v94 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v14 == 53)
    {
      goto LABEL_120;
    }

LABEL_127:
    LOBYTE(v108) = v14;
    LOBYTE(v105) = 4;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      v97 = (*(*v101 + 408))(&v108);
      sub_1C1E98338(v36);

      v97(&v108, 0);

      v55 = v101;
      v56 = v103;
      goto LABEL_82;
    }

LABEL_129:

    sub_1C1E98278(v101, v103, v99, v100);

    goto LABEL_83;
  }

  sub_1C1E98278(v14, v103, v99, v100);
  return 1;
}

uint64_t sub_1C1ED0E04(void *a1)
{
  v1 = *a1;
  if (((*(**a1 + 568))() & 1) == 0 && ((*(*v1 + 576))() & 1) == 0 && ((*(*v1 + 552))() & 1) == 0)
  {
    if ((*(*v1 + 464))())
    {
      v2 = CalculateExpression.RichExpression.EditingToken.token.getter();
      if (!v2)
      {
        return v2 & 1;
      }

      v4 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v4 != 53)
      {
        sub_1C1E9019C();
        LOBYTE(v2) = sub_1C1F52414();
        return v2 & 1;
      }
    }

    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  LOBYTE(v2) = 1;
  return v2 & 1;
}

void sub_1C1ED0F68()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  sub_1C1F524D4();

  sub_1C1F52524();
}

uint64_t CalculateExpression.LiteralOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return v0;
}

uint64_t CalculateExpression.LiteralOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1C1ED1090(char *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = v4 == 121 && v3 == 0xE100000000000000;
  if (v5 || (sub_1C1F52C64() & 1) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
    if (v4 || v3 != 0xE000000000000000)
    {
      if (sub_1C1F52C64())
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  *a1 = v6;
}

uint64_t sub_1C1ED1128()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v33 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(10127586, 0xA300000000000000, &v33, v1 & 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3 == 50 && v4 == 0xE100000000000000;
  if (!v5 && (sub_1C1F52C64() & 1) == 0)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0xE000000000000000;
    }

    v7 = v6;
    if (v6 || (v21 = sub_1C1F52C64(), v3 == 121 ? (v22 = v4 == 0xE100000000000000) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), (v21 & 1) != 0 || (v23 & 1) != 0 || (sub_1C1F52C64() & 1) != 0))
    {
      v30 = 18;
      v8 = sub_1C1E7DD60();
      v9 = &v30;
      v10 = v8 & 1;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v32 = 1;

      v24 = sub_1C1E7DD60();
      v9 = &v32;
      v10 = v24 & 1;
      v11 = v3;
      v12 = v4;
    }

    v13 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v11, v12, v9, v10);
    type metadata accessor for CalculateExpression.RichExpression();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F563C0;
    *(v14 + 32) = v13;

    v15 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v14, 0);
    v16 = (*(*v2 + 288))(v15);
    v17 = *(*v2 + 280);
    v18 = v17(v16);
    if (v18)
    {
      v19 = v18;
      if (v7)
      {
        v20 = 1;
      }

      else
      {
        v25 = sub_1C1F52C64();
        v27 = v3 == 121 && v4 == 0xE100000000000000;
        v20 = 1;
        if ((v25 & 1) == 0 && !v27)
        {
          v20 = sub_1C1F52C64();
        }
      }

      (*(*v19 + 304))(v20 & 1);
    }

    v28 = v17(v18);
    if (v28)
    {
      v31 = 1;
      (*(*v28 + 280))(&v31);
    }
  }

  return v2;
}

uint64_t CalculateExpression.RootOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t CalculateExpression.AllClearOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1C1ED14F8(uint64_t a1)
{
  v2 = *(*a1 + 176);
  result = (v2)();
  if (result)
  {
    v4 = CalculateExpression.format.getter();

    if (v4 != 2)
    {
      return 0;
    }

    v6 = (v2)(v5);
    if (v6)
    {
      v7 = CalculateExpression.postfixStack.getter();

      if (v7 >> 62)
      {
        v6 = sub_1C1F52994();
      }

      else
      {
        v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (v6 >= *sub_1C1ED52A0())
    {
      return 0;
    }

    if (!(v2)())
    {
      return 1;
    }

    v8 = CalculateExpression.postfixStack.getter();

    if (v8 >> 62)
    {
      v9 = sub_1C1F52994();
      if (v9)
      {
LABEL_11:
        v10 = __OFSUB__(v9, 1);
        result = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else if ((v8 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

LABEL_16:

          v11 = CalculateExpression.rich.getter();
          v2 = (*(*v11 + 392))(v11);

          if (!(v2 >> 62))
          {
            v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v12)
            {
              goto LABEL_18;
            }

            goto LABEL_33;
          }

LABEL_32:
          v12 = sub_1C1F52994();
          if (v12)
          {
LABEL_18:
            v17[0] = MEMORY[0x1E69E7CC0];
            result = sub_1C1F52B14();
            if ((v12 & 0x8000000000000000) == 0)
            {
              type metadata accessor for CalculateExpression.RichToken(0);
              v13 = 0;
              do
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v14 = MEMORY[0x1C6911DB0](v13, v2);
                }

                else
                {
                }

                ++v13;
                sub_1C1E9C29C(v14);
                sub_1C1F52AF4();
                sub_1C1F52B24();
                sub_1C1F52B34();
                sub_1C1F52B04();
              }

              while (v12 != v13);

              v15 = v17[0];
              goto LABEL_34;
            }

LABEL_38:
            __break(1u);
            return result;
          }

LABEL_33:

          v15 = MEMORY[0x1E69E7CC0];
LABEL_34:
          v16 = (*(*a1 + 408))(v17);
          sub_1C1E8CECC(v15);
          v16(v17, 0);
          (*(*a1 + 256))(0);
          (*(*a1 + 232))(1);

          return 1;
        }

        MEMORY[0x1C6911DB0](result, v8);
        goto LABEL_16;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.EnterOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1ED18E8()
{
  v1 = sub_1C1ED1A68(&unk_1F418DE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21330, &qword_1C1F573B0);
  swift_arrayDestroy();
  result = type metadata accessor for CalculateExpression.RichToken(0);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    result = sub_1C1EAC150(v3, v4);
    if (v5)
    {
      v6 = *(*(v1 + 56) + result);

      v8 = v6;
      v7 = sub_1C1E7DD60();
      return CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v3, v4, &v8, v7 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpression.ConstantOperation.deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return v0;
}

uint64_t CalculateExpression.ConstantOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C1ED1A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21338, &qword_1C1F573E8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C1ED1B7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1C1F52B64();

    if (v4)
    {
      type metadata accessor for _NumberFormatterObserver();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1C1ED2A90(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1C1ED1D68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21348, &qword_1C1F573F0);

  v5 = sub_1C1EB9370(v4);
  v6 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  *(v1 + v6) = 0x8000000000000000;
  sub_1C1ED3A14(v5, a1 + v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v6) = v9;
  return swift_endAccess();
}

uint64_t sub_1C1ED1E2C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v5 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  v6 = sub_1C1EB4BE4(a1 + v4);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + v5);
    v14 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1ED3D58();
      v10 = v14;
    }

    v11 = *(v10 + 48);
    v12 = sub_1C1F52034();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);

    sub_1C1ED3568(v8, v10);
    *(v2 + v5) = v10;
  }

  return swift_endAccess();
}

BOOL sub_1C1ED1F30()
{
  v1 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) == 0;
}

id sub_1C1ED1F80(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C1ED4C30(a1);

  return v4;
}

id _NumberFormatterObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter;
  v2 = *&v0[OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter];

  v3 = v2;
  v4 = sub_1C1F52424();

  [v3 removeObserver:v0 forKeyPath:v4];

  v5 = *&v0[v1];

  v6 = v5;
  v7 = sub_1C1F52424();

  [v6 removeObserver:v0 forKeyPath:v7];

  v8 = *&v0[v1];

  v9 = v8;
  v10 = sub_1C1F52424();

  [v9 removeObserver:v0 forKeyPath:v10];

  v11 = *&v0[v1];

  v12 = v11;
  v13 = sub_1C1F52424();

  [v12 removeObserver:v0 forKeyPath:v13];

  v14 = *&v0[v1];

  v15 = v14;
  v16 = sub_1C1F52424();

  [v15 removeObserver:v0 forKeyPath:v16];

  v17 = *&v0[v1];

  v18 = v17;
  v19 = sub_1C1F52424();

  [v18 removeObserver:v0 forKeyPath:v19];

  v21.receiver = v0;
  v21.super_class = type metadata accessor for _NumberFormatterObserver();
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

id _NumberFormatterObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1ED2338()
{
  result = sub_1C1ED430C(MEMORY[0x1E69E7CC0]);
  qword_1EDC2F378 = result;
  return result;
}

uint64_t static NumberFormatterObserver.sharedObservers.getter()
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NumberFormatterObserver.sharedObservers.setter(uint64_t a1)
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC2F378 = a1;
}

uint64_t (*static NumberFormatterObserver.sharedObservers.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C1ED24E0@<X0>(void *a1@<X8>)
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC2F378;
}

uint64_t sub_1C1ED2560(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC2F370;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC2F378 = v1;
}

id sub_1C1ED25E8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EDC2F388 = result;
  return result;
}

uint64_t NumberFormatterObserver.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *NumberFormatterObserver.init(_:didChange:willChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1E7B48C(a1, a2, a3, a4, a5);
  sub_1C1E7A724(a4, a5);

  return v8;
}

uint64_t NumberFormatterObserver.deinit()
{
  v1 = v0;
  if (qword_1EDC2F380 != -1)
  {
    swift_once();
  }

  [qword_1EDC2F388 lock];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v5 = v2;
  v4(v1);

  v6 = *(v1 + 16);
  v7 = *((*v3 & *v6) + 0x88);
  v8 = v6;
  LOBYTE(v7) = v7();

  if (v7)
  {
    if (qword_1EDC2F370 != -1)
    {
      swift_once();
    }

    v9 = *(*(v1 + 16) + OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter);
    swift_beginAccess();
    v10 = v9;
    v11 = sub_1C1ED2BA8(v10);
    swift_endAccess();
  }

  [qword_1EDC2F388 unlock];

  sub_1C1E7A724(*(v1 + 40), *(v1 + 48));
  v12 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v13 = sub_1C1F52034();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return v1;
}

uint64_t NumberFormatterObserver.__deallocating_deinit()
{
  NumberFormatterObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1ED293C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1ED29D4(uint64_t a1)
{
  v2 = sub_1C1ED5210(&qword_1EDC2C2B0, type metadata accessor for NSKeyValueChangeKey, &unk_1C1F57678);
  v3 = sub_1C1ED5210(&qword_1EBF21390, type metadata accessor for NSKeyValueChangeKey, &unk_1C1F575CC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C1ED2A90(uint64_t a1)
{
  v2 = sub_1C1F528B4();

  return sub_1C1ED2AD4(a1, v2);
}

unint64_t sub_1C1ED2AD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C1F528C4();

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

uint64_t sub_1C1ED2BA8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1C1ED2A90(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1C1ED3888(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1C1ED3FD8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1C1F52B64();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1C1F52994();
  v8 = sub_1C1ED2CF4(v4, v7);

  v9 = sub_1C1ED2A90(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1C1ED3888(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1C1ED2CF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
    v2 = sub_1C1F52BD4();
    v19 = v2;
    sub_1C1F52B44();
    v3 = sub_1C1F52B74();
    if (v3)
    {
      v4 = v3;
      sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for _NumberFormatterObserver();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1C1ED3300(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1C1F528B4();
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
        v5 = sub_1C1F52B74();
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

uint64_t sub_1C1ED2F24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C1F52034();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
  v39 = v4;
  result = sub_1C1F52BC4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C1ED5210(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1C1F523B4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C1ED3300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
  result = sub_1C1F52BC4();
  v7 = result;
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
    v14 = result + 64;
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
        v23 = v21;
      }

      result = sub_1C1F528B4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
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
        return result;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_1C1ED3568(int64_t a1, uint64_t a2)
{
  v38 = sub_1C1F52034();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1C1F52964();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1C1ED5210(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1C1F523B4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}