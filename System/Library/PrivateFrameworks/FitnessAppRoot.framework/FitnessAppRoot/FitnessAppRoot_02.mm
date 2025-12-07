void *sub_1E5AAD974(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5AAD994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E5AAD994(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027438, &qword_1E5AD51D0);
  v10 = *(sub_1E5ACEF78() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E5ACEF78() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E5AADB6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1E5ACEF78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027430, &qword_1E5AD51C8);
  v39 = v4;
  result = sub_1E5AD0198();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
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
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1E5AAE5D8(&unk_1EE2FDC68, 255, MEMORY[0x1E699DBE8], MEMORY[0x1E699DBF0]);
      result = sub_1E5ACFB38();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1E5AADF34(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1E5ACEF78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E5AAD57C(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_1E5AAE190();
      goto LABEL_7;
    }

    sub_1E5AADB6C(result, a2 & 1);
    result = sub_1E5AAD57C(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_1E5AAE0D8(v14, v11, v20, a3);
    }
  }

  result = sub_1E5AD0358();
  __break(1u);
  return result;
}

uint64_t sub_1E5AAE0D8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_1E5ACEF78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

void *sub_1E5AAE190()
{
  v1 = v0;
  v29 = sub_1E5ACEF78();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027430, &qword_1E5AD51C8);
  v3 = *v0;
  v4 = sub_1E5AD0188();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_1E5AAE404()
{
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout);
  *v1 = xmmword_1E5AD5100;
  v1[1] = xmmword_1E5AD5110;
  v1[2] = xmmword_1E5AD5120;
  v1[3] = xmmword_1E5AD5130;
  v2 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
  *(v0 + v6) = sub_1E5A7C3E8(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 0;
  *(v0 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView) = 0;
  swift_unknownObjectWeakInit();
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5AAE570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027450, &qword_1E5AD51E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AAE5D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_OWORD *sub_1E5AAE620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SignOutAnimationState.init(horizontalOffset:firstLineVerticalOffset:secondLineVerticalOffset:isSecondLineVisible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_1E5AAE664()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5AAE6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5AAF128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5AAE70C(uint64_t a1)
{
  v2 = sub_1E5AAEDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAE748(uint64_t a1)
{
  v2 = sub_1E5AAEDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutAnimationState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027460, &qword_1E5AD5200);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAEDFC();
  sub_1E5AD03E8();
  v13 = v9;
  HIBYTE(v12) = 0;
  sub_1E5AAEE50();
  sub_1E5AD0308();
  if (!v2)
  {
    v13 = v8;
    HIBYTE(v12) = 1;
    sub_1E5AD0308();
    v13 = v10;
    HIBYTE(v12) = 2;
    sub_1E5AD0308();
    LOBYTE(v13) = 3;
    sub_1E5AD02E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignOutAnimationState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6934A80](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E6934A80](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1E6934A80](*&v5);
  return sub_1E5AD0398();
}

uint64_t SignOutAnimationState.hashValue.getter()
{
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t SignOutAnimationState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027478, &qword_1E5AD5208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAEDFC();
  sub_1E5AD03D8();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1E5AAEEA4();
    sub_1E5AD0288();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_1E5AD0288();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_1E5AD0288();
    v12 = v15;
    LOBYTE(v15) = 3;
    v13 = sub_1E5AD0268();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AAED00()
{
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AAED60(uint64_t a1)
{
  sub_1E5AD0378();
  SignOutAnimationState.hash(into:)();
  return sub_1E5AD03C8();
}

uint64_t _s14FitnessAppRoot21SignOutAnimationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E5AAEDFC()
{
  result = qword_1ED027468;
  if (!qword_1ED027468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027468);
  }

  return result;
}

unint64_t sub_1E5AAEE50()
{
  result = qword_1ED027470;
  if (!qword_1ED027470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027470);
  }

  return result;
}

unint64_t sub_1E5AAEEA4()
{
  result = qword_1ED027480;
  if (!qword_1ED027480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027480);
  }

  return result;
}

unint64_t sub_1E5AAEEFC()
{
  result = qword_1ED027488;
  if (!qword_1ED027488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027488);
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

uint64_t sub_1E5AAEF64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E5AAEFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E5AAF024()
{
  result = qword_1ED027490;
  if (!qword_1ED027490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027490);
  }

  return result;
}

unint64_t sub_1E5AAF07C()
{
  result = qword_1ED027498;
  if (!qword_1ED027498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027498);
  }

  return result;
}

unint64_t sub_1E5AAF0D4()
{
  result = qword_1ED0274A0;
  if (!qword_1ED0274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274A0);
  }

  return result;
}

uint64_t sub_1E5AAF128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5AE0A90 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5AE0AB0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5AE0AD0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5AE0AF0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5AD0348();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5AAF2A4(uint64_t a1)
{
  v2 = sub_1E5AAF990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF2E0(uint64_t a1)
{
  v2 = sub_1E5AAF990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF31C()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1E5AAF384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5AAFAB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5AAF3AC(uint64_t a1)
{
  v2 = sub_1E5AAF894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF3E8(uint64_t a1)
{
  v2 = sub_1E5AAF894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF424(uint64_t a1)
{
  v2 = sub_1E5AAF93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF460(uint64_t a1)
{
  v2 = sub_1E5AAF93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AAF49C(uint64_t a1)
{
  v2 = sub_1E5AAF8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AAF4D8(uint64_t a1)
{
  v2 = sub_1E5AAF8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkConditions.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274A8, &qword_1E5AD5430);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274B0, &qword_1E5AD5438);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274B8, &qword_1E5AD5440);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274C0, &qword_1E5AD5448);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AAF894();
  sub_1E5AD03E8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E5AAF93C();
      sub_1E5AD02B8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E5AAF8E8();
      v16 = v22;
      sub_1E5AD02B8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E5AAF990();
    sub_1E5AD02B8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E5AAF894()
{
  result = qword_1EE2FD308[0];
  if (!qword_1EE2FD308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2FD308);
  }

  return result;
}

unint64_t sub_1E5AAF8E8()
{
  result = qword_1ED0274C8;
  if (!qword_1ED0274C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274C8);
  }

  return result;
}

unint64_t sub_1E5AAF93C()
{
  result = qword_1ED0274D0;
  if (!qword_1ED0274D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274D0);
  }

  return result;
}

unint64_t sub_1E5AAF990()
{
  result = qword_1EE2FD2E0;
  if (!qword_1EE2FD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2E0);
  }

  return result;
}

uint64_t sub_1E5AAF9FC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5AAFBD8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NetworkConditions.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AAFAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5AAFBD8(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274E0, &qword_1E5AD5870);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274E8, &qword_1E5AD5878);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0274F0, &qword_1E5AD5880);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0274F8, qword_1E5AD5888);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5AAF894();
  v13 = v34;
  sub_1E5AD03D8();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5AD0298();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5A82BF4();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E5AAF93C();
          sub_1E5AD0228();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E5AAF8E8();
        v24 = v11;
        sub_1E5AD0228();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E5AAF990();
        v24 = v11;
        sub_1E5AD0228();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5AD00F8();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v22 = &type metadata for NetworkConditions;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E5AB01A0()
{
  result = qword_1ED0274D8;
  if (!qword_1ED0274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0274D8);
  }

  return result;
}

unint64_t sub_1E5AB01F8()
{
  result = qword_1EE2FD2D0;
  if (!qword_1EE2FD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2D0);
  }

  return result;
}

unint64_t sub_1E5AB0250()
{
  result = qword_1EE2FD2D8;
  if (!qword_1EE2FD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2D8);
  }

  return result;
}

unint64_t sub_1E5AB02A8()
{
  result = qword_1EE2FD2C0;
  if (!qword_1EE2FD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2C0);
  }

  return result;
}

unint64_t sub_1E5AB0300()
{
  result = qword_1EE2FD2C8;
  if (!qword_1EE2FD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2C8);
  }

  return result;
}

unint64_t sub_1E5AB0358()
{
  result = qword_1EE2FD2E8;
  if (!qword_1EE2FD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2E8);
  }

  return result;
}

unint64_t sub_1E5AB03B0()
{
  result = qword_1EE2FD2F0;
  if (!qword_1EE2FD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2F0);
  }

  return result;
}

unint64_t sub_1E5AB0408()
{
  result = qword_1EE2FD2F8;
  if (!qword_1EE2FD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2F8);
  }

  return result;
}

unint64_t sub_1E5AB0460()
{
  result = qword_1EE2FD300;
  if (!qword_1EE2FD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD300);
  }

  return result;
}

id sub_1E5AB04B4(uint64_t a1)
{
  if (!*(v1 + *(a1 + 36) + 8))
  {
    return 0;
  }

  v2 = sub_1E5ACFBA8();
  v3 = [objc_opt_self() _systemImageNamed_];

  return v3;
}

uint64_t sub_1E5AB0524@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void DynamicContentContainerViewController.currentViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DynamicContentContainerViewController.currentViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1E5AB07A8;
}

void sub_1E5AB07A8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
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

uint64_t DynamicContentContainerViewController.headlessFeatures.getter()
{
  sub_1E5AB2914();
}

uint64_t DynamicContentContainerViewController.headlessFeatures.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DynamicContentContainerViewController.appearanceHandlers.getter()
{
  sub_1E5AB2974();
}

uint64_t DynamicContentContainerViewController.appearanceHandlers.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DynamicContentContainerViewController.__allocating_init(store:tabItem:contentViewController:offlineContentViewController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v4);
  v11 = sub_1E5AB29D4(a1, a2, a3, a4);

  type metadata accessor for DynamicContentContainerViewController.TabItem(255, *(v5 + 10), *(v5 + 11), v12);
  v13 = sub_1E5ACFFD8();
  (*(*(v13 - 8) + 8))(a2, v13);

  return v11;
}

void *DynamicContentContainerViewController.init(store:tabItem:contentViewController:offlineContentViewController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1E5AB29D4(a1, a2, a3, a4);

  type metadata accessor for DynamicContentContainerViewController.TabItem(255, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58), v11);
  v12 = sub_1E5ACFFD8();
  (*(*(v12 - 8) + 8))(a2, v12);

  return v10;
}

id sub_1E5AB0BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicContentAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  result = [v1 isViewLoaded];
  if (result)
  {
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v11 = sub_1E5ACF038();
    __swift_project_value_buffer(v11, qword_1EE300080);
    sub_1E5ACF008();
    sub_1E5A95F34(a1, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = MEMORY[0x1E69E7D40];
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5A9B8E8(v9, &unk_1ED027520, &qword_1E5AD24C0);
        v18 = ((*v13 & *v1) + 104);
LABEL_13:
        sub_1E5AB16D0(*(v2 + *v18));
LABEL_14:
        sub_1E5ACF9A8();
        sub_1E5A95F34(a1, v6);
        sub_1E5ACFA58();

        return sub_1E5AB3224(v6);
      }

      v14 = *v9;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
      v16 = sub_1E5ACEEA8();
      (*(*(v16 - 8) + 8))(&v9[v15], v16);
    }

    else
    {
      v14 = *v9;
    }

    v17 = *v13 & *v2;
    v18 = (v17 + 112);
    if (v14 != 1)
    {
      v18 = (v17 + 104);
    }

    goto LABEL_13;
  }

  return result;
}

void sub_1E5AB0F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(a2);
  }
}

id sub_1E5AB0FA0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1E5ACEEE8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5ACFB98();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicContentContainerViewController.TabItem(255, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v8);
  v10 = sub_1E5ACFFD8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  (*(v11 + 16))(v14, &v0[*((v2 & v1) + 0x78)], v10);
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v17, v14, v9);
  result = [v0 tabBarItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = result;
  (*(v24 + 16))(v7, v17, v25);
  v20 = *&v17[*(v9 + 40)];
  sub_1E5ACF9A8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5ACFBE8();
  v21 = sub_1E5ACFBA8();

  [v19 setTitle_];

  result = [v0 tabBarItem];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_1E5AB04B4(v9);
  [v22 setImage_];

  return (*(v15 + 8))(v17, v9);
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1E5ACF988();
}

void sub_1E5AB146C(void *a1)
{
  v1 = a1;
  DynamicContentContainerViewController.viewDidLoad()();
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1);
  HeadlessFeatureHosting<>.onAppear()(ObjectType, &protocol witness table for DynamicContentContainerViewController<A, B>, &protocol witness table for DynamicContentContainerViewController<A, B>);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 40;
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *(v8 - 8);

      v9(v10);

      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_1E5AB15C0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  DynamicContentContainerViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall DynamicContentContainerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  HeadlessFeatureHosting<>.onDisappear()(ObjectType, &protocol witness table for DynamicContentContainerViewController<A, B>, &protocol witness table for DynamicContentContainerViewController<A, B>);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1);
}

void sub_1E5AB167C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  DynamicContentContainerViewController.viewDidDisappear(_:)(a3);
}

void sub_1E5AB16D0(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
      v6 = a1;
      v7 = sub_1E5ACFFB8();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v8 = sub_1E5ACF038();
    __swift_project_value_buffer(v8, qword_1EE300080);
    sub_1E5ACF008();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 willMoveToParentViewController_];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 view];

      if (!v13)
      {
        __break(1u);
        goto LABEL_32;
      }

      [v13 removeFromSuperview];
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      [v14 removeFromParentViewController];
    }

    if (!a1)
    {
      goto LABEL_30;
    }

    v16 = a1;
    [v2 addChildViewController_];
    v17 = [v2 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 view];
      if (v19)
      {
        v20 = v19;
        [v18 addSubview_];

        v21 = [v16 view];
        if (v21)
        {
          v22 = v21;
          [v21 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1E5AD2EC0;
          v24 = [v16 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 topAnchor];

            v27 = [v2 view];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 topAnchor];

              v30 = [v26 constraintEqualToAnchor_];
              *(v23 + 32) = v30;
              v31 = [v16 view];
              if (v31)
              {
                v32 = v31;
                v33 = [v31 bottomAnchor];

                v34 = [v2 view];
                if (v34)
                {
                  v35 = v34;
                  v36 = [v34 bottomAnchor];

                  v37 = [v33 constraintEqualToAnchor_];
                  *(v23 + 40) = v37;
                  v38 = [v16 view];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = [v38 leadingAnchor];

                    v41 = [v2 view];
                    if (v41)
                    {
                      v42 = v41;
                      v43 = [v41 leadingAnchor];

                      v44 = [v40 constraintEqualToAnchor_];
                      *(v23 + 48) = v44;
                      v45 = [v16 view];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = [v45 trailingAnchor];

                        v48 = [v2 view];
                        if (v48)
                        {
                          v49 = v48;
                          v50 = objc_opt_self();
                          v51 = [v49 trailingAnchor];

                          v52 = [v47 constraintEqualToAnchor_];
                          *(v23 + 56) = v52;
                          sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
                          v53 = sub_1E5ACFC68();

                          [v50 activateConstraints_];

                          [v16 didMoveToParentViewController_];
LABEL_30:
                          sub_1E5AB1C98(v2, a1);
                          return;
                        }

LABEL_42:
                        __break(1u);
                        return;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

void __swiftcall DynamicContentContainerViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong contentScrollViewForEdge_];
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = ObjectType;
    v7 = [(UIScrollView_optional *)&v8 contentScrollViewForEdge:a2];
  }
}

id sub_1E5AB1DDC(void *a1, uint64_t a2, NSDirectionalRectEdge a3)
{
  v4 = a1;
  DynamicContentContainerViewController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

id sub_1E5AB1E28(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.supportedInterfaceOrientations.getter();

  return v2;
}

id DynamicContentContainerViewController.supportedInterfaceOrientations.getter()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }
}

id sub_1E5AB1F0C(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.keyCommands.getter();

  if (v2)
  {
    sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
    v3 = sub_1E5ACFC68();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t DynamicContentContainerViewController.keyCommands.getter()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9.receiver = v0;
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_keyCommands);
    if (v7)
    {
      v3 = v7;
      sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
      v6 = sub_1E5ACFC78();
      goto LABEL_6;
    }

    return 0;
  }

  v3 = Strong;
  v4 = [Strong keyCommands];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
  v6 = sub_1E5ACFC78();

LABEL_6:
  return v6;
}

id sub_1E5AB20B8(void *a1)
{
  v1 = a1;
  DynamicContentContainerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED026D30, &qword_1E5AD43E0);
  v2 = sub_1E5ACFC68();

  return v2;
}

uint64_t DynamicContentContainerViewController.preferredFocusEnvironments.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v1 = swift_unknownObjectRetain();
    MEMORY[0x1E6934320](v1);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E5ACFC98();
    }

    sub_1E5ACFCC8();
    v0 = v3;
  }

  sub_1E5A9B8E8(&Strong, &qword_1ED026CB8, &qword_1E5AD3240);
  return v0;
}

id sub_1E5AB2224(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForStatusBarStyle.getter();

  return v2;
}

id sub_1E5AB2274(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForStatusBarHidden.getter();

  return v2;
}

uint64_t sub_1E5AB22C4(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.prefersHomeIndicatorAutoHidden.getter();

  return v2 & 1;
}

id DynamicContentContainerViewController.prefersHomeIndicatorAutoHidden.getter()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong prefersHomeIndicatorAutoHidden];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_prefersHomeIndicatorAutoHidden);
  }
}

id sub_1E5AB23A8(void *a1)
{
  v1 = a1;
  v2 = DynamicContentContainerViewController.childForHomeIndicatorAutoHidden.getter();

  return v2;
}

id sub_1E5AB23F8(SEL *a1)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v5.receiver = v1;
    v5.super_class = ObjectType;
    return objc_msgSendSuper2(&v5, *a1);
  }

  return result;
}

id DynamicContentContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E5AB2544(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E5AB2F6C();
}

id DynamicContentContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5AB25EC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x78);
  type metadata accessor for DynamicContentContainerViewController.TabItem(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  v7 = sub_1E5ACFFD8();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  MEMORY[0x1E6935220](&a1[*((*v2 & *a1) + 0x80)]);
}

uint64_t sub_1E5AB2790()
{
  sub_1E5AB2974();
}

uint64_t (*sub_1E5AB27BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DynamicContentContainerViewController.appearanceHandlers.modify(v2);
  return sub_1E5AB3284;
}

uint64_t sub_1E5AB282C()
{
  sub_1E5AB2914();
}

uint64_t (*sub_1E5AB2858(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DynamicContentContainerViewController.headlessFeatures.modify(v2);
  return sub_1E5AB28C8;
}

void sub_1E5AB28CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E5AB2914()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E5AB2974()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1E5AB29D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v31[0] = swift_getObjectType();
  v10 = *v4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v13 = sub_1E5ACEEE8();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v16 = MEMORY[0x1E69E7CC0];
  *&v4[*((*v11 & *v4) + 0x88)] = MEMORY[0x1E69E7CC0];
  *&v4[*((*v11 & *v4) + 0x90)] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027508, &qword_1E5AD5978);
  swift_allocObject();
  v31[1] = a1;

  *&v4[*((*v11 & *v4) + 0x60)] = sub_1E5ACF9C8();
  v17 = *((*v11 & *v4) + 0x78);
  v18 = *((v12 & v10) + 0x50);
  v19 = *((v12 & v10) + 0x58);
  type metadata accessor for DynamicContentContainerViewController.TabItem(255, v18, v19, v20);
  v21 = sub_1E5ACFFD8();
  (*(*(v21 - 8) + 16))(&v5[v17], a2, v21);
  *&v5[*((*v11 & *v5) + 0x68)] = a3;
  *&v5[*((*v11 & *v5) + 0x70)] = a4;
  v36.receiver = v5;
  v36.super_class = v31[0];
  v22 = a3;
  v23 = a4;
  v24 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v25;
  sub_1E5AB30FC();
  v27 = v24;

  sub_1E5ACF998();

  v34 = swift_getKeyPath();
  swift_getKeyPath();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v19;
  v29[4] = v28;
  sub_1E5AB31DC(&qword_1EE2FDC78, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  sub_1E5ACF998();

  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5AB0FA0();

  (*(v32 + 8))(v15, v33);
  return v27;
}

void sub_1E5AB2E94()
{
  v1 = MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v1 & *v0) + 0x88)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v1 & *v0) + 0x90)) = v2;
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5AB2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DynamicContentContainerViewController.TabItem(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_1E5ACFFD8();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5AB30FC()
{
  result = qword_1EE2FCA38;
  if (!qword_1EE2FCA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED027520, &qword_1E5AD24C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA38);
  }

  return result;
}

uint64_t sub_1E5AB31DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5AB3224(uint64_t a1)
{
  v2 = type metadata accessor for DynamicContentAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5AB3288()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000022;
    v8 = 0x722E657275676966;
    if (v1 != 10)
    {
      v8 = 0x792E657275676966;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x656D2E656C707061;
    v10 = 0x702E657275676966;
    if (v1 != 7)
    {
      v10 = 0x722E657275676966;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x632E657275676966;
    v3 = 0x642E657275676966;
    v4 = 0xD000000000000025;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0xD000000000000013;
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
}

uint64_t SidebarModality.init(item:kind:name:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for SidebarModality(0, a4, a5, v11);
  *(a6 + *(v12 + 36)) = v10;
  v13 = *(v12 + 40);
  v14 = sub_1E5ACEE48();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a3, v14);
}

uint64_t sub_1E5AB359C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5AB36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AB359C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AB3708@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5AB4800();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AB3734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB3788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModality.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v14[0] = a2;
  v14[1] = v5;
  type metadata accessor for SidebarModality.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1E5AD0318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AD03E8();
  v18 = 0;
  v11 = v14[2];
  v12 = v14[3];
  sub_1E5AD0308();
  if (!v12)
  {
    v17 = *(v11 + *(v14[0] + 36));
    v16 = 1;
    sub_1E5AB3A34();
    sub_1E5AD0308();
    v15 = 2;
    sub_1E5ACEE48();
    sub_1E5AB419C(&qword_1ED027548, MEMORY[0x1E6968850]);
    sub_1E5AD0308();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E5AB3A34()
{
  result = qword_1ED027540;
  if (!qword_1ED027540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027540);
  }

  return result;
}

uint64_t SidebarModality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v31 = sub_1E5ACEE48();
  v29 = *(v31 - 8);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarModality.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v38 = sub_1E5AD02A8();
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v28 - v11;
  v36 = a3;
  v14 = type metadata accessor for SidebarModality(0, a2, a3, v13);
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v12;
  v17 = v39;
  sub_1E5AD03D8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v14;
  v18 = v33;
  v19 = v34;
  v43 = 0;
  v20 = v35;
  v21 = v37;
  sub_1E5AD0288();
  v22 = *(v19 + 32);
  v23 = v16;
  v22(v16, v20, a2);
  v41 = 1;
  sub_1E5AB3F44();
  sub_1E5AD0288();
  v24 = v39;
  v16[*(v39 + 36)] = v42;
  v40 = 2;
  sub_1E5AB419C(&qword_1ED027558, MEMORY[0x1E6968868]);
  v25 = v31;
  sub_1E5AD0288();
  (*(v18 + 8))(v21, v38);
  (*(v29 + 32))(&v23[*(v24 + 40)], v32, v25);
  v26 = v28;
  (*(v28 + 16))(v30, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v23, v24);
}

unint64_t sub_1E5AB3F44()
{
  result = qword_1ED027550;
  if (!qword_1ED027550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027550);
  }

  return result;
}

uint64_t static SidebarModality.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5ACFB78() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for SidebarModality(0, a3, a4, v8);
  if (*(a1 + *(v9 + 36)) != *(a2 + *(v9 + 36)))
  {
    return 0;
  }

  v10 = *(v9 + 40);

  return MEMORY[0x1EEDC2F60](a1 + v10, a2 + v10);
}

uint64_t SidebarModality.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E5ACFB48();
  MEMORY[0x1E6934A50](*(v2 + *(a2 + 36)));
  sub_1E5ACEE48();
  sub_1E5AB419C(qword_1ED027560, MEMORY[0x1E6968858]);
  return sub_1E5ACFB48();
}

uint64_t SidebarModality.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  SidebarModality.hash(into:)(v3, a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AB414C(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  SidebarModality.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AB419C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5ACEE48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AB41FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v25 = *(v5 - 8);
  v6 = *(v25 + 84);
  v7 = sub_1E5ACEE48();
  v8 = *(v7 - 8);
  v9 = *(v25 + 64);
  if (v6 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xF4)
  {
    v12 = 244;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v13 = ((v11 + v9 + 1) & ~v11) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 < 2)
    {
LABEL_31:
      if (v6 == v12)
      {
        v21 = *(v25 + 48);

        return v21(a1, v6, v5);
      }

      else
      {
        v22 = a1 + v9;
        if (v10 > 0xF4)
        {
          v24 = *(v8 + 48);

          return v24(&v22[v11 + 1] & ~v11);
        }

        else
        {
          v23 = *v22;
          if (v23 >= 0xC)
          {
            return v23 - 11;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E5AB4490(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v24 = *(v7 - 8);
  v8 = *(v24 + 84);
  v9 = *(sub_1E5ACEE48() - 8);
  v10 = *(v24 + 64);
  if (v8 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xF4)
  {
    v13 = 244;
  }

  else
  {
    v13 = v11;
  }

  v14 = ((v12 + v10 + 1) & ~v12) + *(v9 + 64);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v13)
  {
    v21 = *(v24 + 56);

    v21(a1, a2, v8, v7);
  }

  else
  {
    v22 = &a1[v10];
    if (v11 > 0xF4)
    {
      v23 = *(v9 + 56);

      v23(&v22[v12 + 1] & ~v12, a2);
    }

    else
    {
      *v22 = a2 + 11;
    }
  }
}

uint64_t sub_1E5AB4824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5AE0D80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5AB48B8(uint64_t a1)
{
  v2 = sub_1E5AB4CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AB48F4(uint64_t a1)
{
  v2 = sub_1E5AB4CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AB4930(uint64_t a1)
{
  v2 = sub_1E5AB4D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AB496C(uint64_t a1)
{
  v2 = sub_1E5AB4D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnotherNavigationSplitViewAction.encode(to:)(void *a1)
{
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0275F0, &qword_1E5AD5CD8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AB4CA4();
  v12 = v2;
  sub_1E5AD03E8();
  sub_1E5AB4CF8(v15, v7);
  sub_1E5AB4D5C();
  sub_1E5AD02B8();
  v13 = sub_1E5ACF418();
  sub_1E5AB519C(&qword_1ED027608, MEMORY[0x1E697CB80]);
  sub_1E5AD0308();
  (*(*(v13 - 8) + 8))(v7, v13);
  (*(v16 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t type metadata accessor for AnotherNavigationSplitViewAction(uint64_t a1)
{
  result = qword_1ED027628;
  if (!qword_1ED027628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5AB4CA4()
{
  result = qword_1ED0275F8;
  if (!qword_1ED0275F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0275F8);
  }

  return result;
}

uint64_t sub_1E5AB4CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5AB4D5C()
{
  result = qword_1ED027600;
  if (!qword_1ED027600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027600);
  }

  return result;
}

uint64_t AnotherNavigationSplitViewAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027610, &qword_1E5AD5CE0);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027618, &unk_1E5AD5CE8);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AB4CA4();
  v11 = v30;
  sub_1E5AD03D8();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1E5AD0298();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1E5A82BF8() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_1E5AD00F8();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
    *v20 = v22;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_1E5AB4D5C();
  sub_1E5AD0228();
  sub_1E5ACF418();
  sub_1E5AB519C(&qword_1ED027620, MEMORY[0x1E697CB90]);
  v22 = v10;
  sub_1E5AD0288();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1E5AB51E0(v4, v12);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E5AB519C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5ACF418();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AB51E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AB5274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACF418();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5AB52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACF418();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1E5AB535C(uint64_t a1)
{
  result = sub_1E5ACF418();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1E5AB5424()
{
  result = qword_1ED027638;
  if (!qword_1ED027638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027638);
  }

  return result;
}

unint64_t sub_1E5AB547C()
{
  result = qword_1ED027640;
  if (!qword_1ED027640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027640);
  }

  return result;
}

unint64_t sub_1E5AB54D4()
{
  result = qword_1ED027648;
  if (!qword_1ED027648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027648);
  }

  return result;
}

unint64_t sub_1E5AB552C()
{
  result = qword_1ED027650;
  if (!qword_1ED027650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027650);
  }

  return result;
}

unint64_t sub_1E5AB5584()
{
  result = qword_1ED027658;
  if (!qword_1ED027658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027658);
  }

  return result;
}

unint64_t sub_1E5AB55DC()
{
  result = qword_1ED027660[0];
  if (!qword_1ED027660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED027660);
  }

  return result;
}

uint64_t sub_1E5AB5644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C65536D657469 && a2 == 0xEC00000064657463)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5AD0348();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5AB56E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AB5644(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5AB5714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB5768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5AB57BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AB5810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarAction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v23 = a2;
  v21[0] = v6;
  v21[1] = v5;
  v26 = type metadata accessor for SidebarAction.ItemSelectedCodingKeys(255, v6, v5, a4);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1E5AD0318();
  v29 = *(v24 - 8);
  v8 = MEMORY[0x1EEE9AC00](v24);
  v22 = v21 - v9;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarAction.CodingKeys(255, v6, v5, v13);
  swift_getWitnessTable();
  v14 = sub_1E5AD0318();
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v22;
  v18 = v24;
  v19 = v21[0];
  sub_1E5AD03E8();
  (*(v10 + 16))(v12, v28, v23);
  sub_1E5AD02B8();
  sub_1E5AD0308();
  (*(*(v19 - 8) + 8))(v12, v19);
  (*(v29 + 8))(v17, v18);
  return (*(v25 + 8))(v16, v14);
}

uint64_t SidebarAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v36 = a4;
  v44 = type metadata accessor for SidebarAction(0, a2, a3, a5);
  v35 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v33 - v8;
  type metadata accessor for SidebarAction.ItemSelectedCodingKeys(255, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E5AD02A8();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v33 - v11;
  type metadata accessor for SidebarAction.CodingKeys(255, a2, a3, v12);
  swift_getWitnessTable();
  v13 = sub_1E5AD02A8();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v49;
  sub_1E5AD03D8();
  if (v17)
  {
    goto LABEL_9;
  }

  v34 = 0;
  v49 = a1;
  v18 = v42;
  *&v45 = sub_1E5AD0298();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  *&v47 = sub_1E5ACFFF8();
  *(&v47 + 1) = v19;
  *&v48 = v20;
  *(&v48 + 1) = v21;
  sub_1E5ACFFE8();
  swift_getWitnessTable();
  sub_1E5ACFEA8();
  if ((v45 & 1) != 0 || (v33 = v47, v45 = v47, v46 = v48, (sub_1E5ACFEC8() & 1) == 0))
  {
    v25 = sub_1E5AD00F8();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
    *v27 = v44;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v43 + 8))(v16, v18);
    goto LABEL_8;
  }

  v22 = v41;
  v23 = v34;
  sub_1E5AD0228();
  v24 = v44;
  if (v23)
  {
    (*(v43 + 8))(v16, v18);
LABEL_8:
    swift_unknownObjectRelease();
    a1 = v49;
LABEL_9:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v28 = v39;
  v29 = v38;
  sub_1E5AD0288();
  v30 = v43;
  (*(v37 + 8))(v22, v29);
  (*(v30 + 8))(v16, v18);
  swift_unknownObjectRelease();
  (*(v35 + 32))(v36, v28, v24);
  v32 = v49;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1E5AB6170(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t AnotherNavigationSplitViewFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E5ACF418();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5AB4CF8(a4, v15);
  (*(v7 + 32))(v12, v15, v6);
  sub_1E5ACF3F8();
  sub_1E5AB6584(&qword_1ED0277E8, MEMORY[0x1E697CB78], MEMORY[0x1E697CB88]);
  LOBYTE(a4) = sub_1E5ACFB78();
  v16 = *(v7 + 8);
  v16(v10, v6);
  result = (v16)(v12, v6);
  *a2 = (a4 & 1) == 0;
  return result;
}

uint64_t sub_1E5AB6584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5AB65D0()
{
  result = qword_1ED027800;
  if (!qword_1ED027800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027800);
  }

  return result;
}

uint64_t sub_1E5AB6624(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E5ACF418();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for AnotherNavigationSplitViewAction(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5AB4CF8(a4, v15);
  (*(v7 + 32))(v12, v15, v6);
  sub_1E5ACF3F8();
  sub_1E5AB6584(&qword_1ED0277E8, MEMORY[0x1E697CB78], MEMORY[0x1E697CB88]);
  LOBYTE(a4) = sub_1E5ACFB78();
  v16 = *(v7 + 8);
  v16(v10, v6);
  result = (v16)(v12, v6);
  *a2 = (a4 & 1) == 0;
  return result;
}

uint64_t sub_1E5AB680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for SidebarFeature(255, *(a1 + 16), *(a1 + 48), a4);
  swift_getWitnessTable();
  v8 = sub_1E5ACFA78();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD638](v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_1E5AB68BC(uint64_t a1)
{
  sub_1E5ACFFD8();
  swift_getWitnessTable();
  sub_1E5ACF0D8();
  return sub_1E5ACF098();
}

uint64_t sub_1E5AB6954(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF088();
  return v2;
}

uint64_t sub_1E5AB69BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF098();
  return v1;
}

uint64_t sub_1E5AB6A28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  return v2;
}

uint64_t SidebarView.init(store:signOutViewBuilder:currentTimeViewBuilder:modalitiesViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a5)(uint64_t)@<X4>, void (*a7)(uint64_t)@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v43 = a17;
  v18 = type metadata accessor for SidebarView(0, &v36);
  sub_1E5ACF0C8();
  v19 = a9 + *(v18 + 100);
  *v19 = sub_1E5ACF0B8() & 1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  v22 = a9 + *(v18 + 104);
  v44[0] = 1;
  sub_1E5ACF788();
  v23 = v37;
  *v22 = v36;
  *(v22 + 8) = v23;
  v24 = swift_allocObject();
  v24[2] = a10;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a13;
  v24[6] = a14;
  v24[7] = a15;
  v24[8] = a16;
  v24[9] = a17;
  v24[10] = a1;
  v24[11] = a2;
  type metadata accessor for SidebarFeature(255, a10, a14, v25);

  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  *a9 = sub_1E5ACF0E8();
  *(a9 + 8) = v26;
  *(a9 + 16) = v27 & 1;
  v28 = a3();
  v29 = a5(v28);
  a7(v29);
}

uint64_t SidebarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v141 = *(a1 - 8);
  v142 = *(v141 + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v140 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v148 = v2 + 72;
  v4 = *(v2 + 16);
  v5 = v2;
  v144 = v2;
  v6 = sub_1E5ACFFD8();
  v7 = sub_1E5ACF838();
  v138 = *(v7 - 8);
  v139 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v97 - v8;
  v9 = sub_1E5ACF4C8();
  v135 = *(v9 - 8);
  v136 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v132 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v97 - v12;
  v13 = *(v5 + 48);
  *&v147 = *(v13 + 24);
  v127 = v13;
  v176 = v147;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E5ACF0A8();
  v130 = *(v15 - 8);
  v131 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v97 - v16;
  *&v150 = v4;
  v17 = sub_1E5ACFD08();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027808, ",=");
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027810, "J=");
  v21 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=", MEMORY[0x1E697D680]);
  v171 = v20;
  v172 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v171 = v19;
  v172 = v6;
  v173 = OpaqueTypeConformance2;
  v174 = WitnessTable;
  v146 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v171 = v19;
  v172 = v6;
  v173 = OpaqueTypeConformance2;
  v174 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  v171 = OpaqueTypeMetadata2;
  v172 = v150;
  v25 = v147;
  v173 = v24;
  v174 = v147;
  swift_getOpaqueTypeMetadata2();
  v26 = sub_1E5ACF1E8();
  v27 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v171 = v17;
  v172 = AssociatedTypeWitness;
  v173 = v26;
  v174 = v27;
  v175 = AssociatedConformanceWitness;
  sub_1E5ACF868();
  v29 = v144;
  *&v149 = *(v144 + 40);
  swift_getTupleTypeMetadata2();
  v123 = sub_1E5ACF8E8();
  v122 = swift_getWitnessTable();
  v30 = sub_1E5ACF818();
  v125 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v116 = MEMORY[0x1E6981870];
  v117 = &v97 - v31;
  v32 = swift_getWitnessTable();
  v171 = v30;
  v172 = v6;
  v119 = v30;
  v120 = v32;
  v98 = v6;
  v33 = v32;
  v34 = v146;
  v173 = v32;
  v174 = v146;
  v35 = swift_getOpaqueTypeMetadata2();
  v126 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v118 = &v97 - v36;
  v171 = v30;
  v172 = v6;
  v173 = v33;
  v174 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v170 = v25;
  v38 = swift_getWitnessTable();
  v171 = v35;
  v172 = v6;
  v107 = v35;
  v108 = v38;
  v173 = v37;
  v174 = v38;
  v109 = v37;
  v145 = swift_getOpaqueTypeMetadata2();
  v124 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v121 = &v97 - v39;
  v40 = v29;
  v41 = *(v29 + 24);
  v42 = *(v29 + 56);
  v171 = v41;
  v172 = v42;
  *&v147 = v41;
  v43 = v42;
  v101 = v42;
  swift_getOpaqueTypeMetadata2();
  v171 = v41;
  v172 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1E5ACF138();
  v100 = *(v40 + 32);
  sub_1E5ACFFD8();
  v99 = *(v40 + 64);
  v169 = v99;
  swift_getWitnessTable();
  sub_1E5ACF818();
  swift_getWitnessTable();
  sub_1E5ACF138();
  swift_getTupleTypeMetadata2();
  v44 = sub_1E5ACF2D8();
  v45 = v98;
  v171 = v35;
  v172 = v98;
  v173 = v37;
  v174 = v38;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = swift_getWitnessTable();
  v48 = v145;
  v171 = v145;
  v172 = v44;
  v49 = v44;
  v102 = v44;
  v173 = v46;
  v174 = v47;
  v50 = v46;
  v104 = v47;
  v105 = v46;
  v51 = v47;
  v52 = swift_getOpaqueTypeMetadata2();
  v112 = v52;
  v116 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v103 = &v97 - v53;
  v171 = v48;
  v172 = v49;
  v173 = v50;
  v174 = v51;
  v111 = swift_getOpaqueTypeConformance2();
  v171 = v52;
  v172 = MEMORY[0x1E69E6370];
  v173 = v111;
  v174 = MEMORY[0x1E69E6388];
  v113 = MEMORY[0x1E6981440];
  v54 = swift_getOpaqueTypeMetadata2();
  v55 = *(v54 - 8);
  v114 = v54;
  v115 = v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v106 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v110 = &v97 - v58;
  sub_1E5ACF288();
  *&v59 = v150;
  *(&v59 + 1) = v147;
  *&v60 = v100;
  *(&v60 + 1) = v149;
  v149 = v60;
  v150 = v59;
  v164 = v59;
  v165 = v60;
  *&v59 = v99;
  *(&v59 + 1) = *v148;
  *&v60 = v127;
  *(&v60 + 1) = v101;
  v147 = v59;
  v148 = v60;
  v166 = v60;
  v167 = v59;
  v61 = v134;
  v168 = v134;
  v62 = v117;
  sub_1E5ACF808();
  v63 = v128;
  sub_1E5AB68BC(v40);
  v64 = v61;
  sub_1E5AB680C(v40, v65, v66, v67);
  v160 = v150;
  v161 = v149;
  v162 = v148;
  v163 = v147;
  swift_getKeyPath();
  v68 = v129;
  sub_1E5ACFA48();

  v69 = v132;
  sub_1E5ACF4B8();
  v71 = v118;
  v70 = v119;
  MEMORY[0x1E6933CA0](v63, v68, v69, v119, v45, v120, v146);
  (*(v135 + 8))(v69, v136);
  (*(v133 + 8))(v68, v45);
  (*(v130 + 8))(v63, v131);
  (*(v125 + 8))(v62, v70);
  v72 = v144;
  sub_1E5AB680C(v144, v73, v74, v75);
  v156 = v150;
  v157 = v149;
  v158 = v148;
  v159 = v147;
  swift_getKeyPath();
  v76 = v137;
  sub_1E5ACFA68();

  v77 = v121;
  v78 = v107;
  sub_1E5ACF608();
  (*(v138 + 8))(v76, v139);
  (*(v126 + 8))(v71, v78);
  v151 = v150;
  v152 = v149;
  v153 = v148;
  v154 = v147;
  v155 = v64;
  swift_checkMetadataState();
  v79 = v103;
  v80 = v145;
  sub_1E5ACF648();
  (*(v124 + 8))(v77, v80);
  LOBYTE(v171) = sub_1E5AB6954(v72) & 1;
  v82 = v140;
  v81 = v141;
  (*(v141 + 16))(v140, v64, v72);
  v83 = v81;
  v84 = (*(v81 + 80) + 80) & ~*(v81 + 80);
  v85 = swift_allocObject();
  v86 = v149;
  *(v85 + 1) = v150;
  *(v85 + 2) = v86;
  v87 = v147;
  *(v85 + 3) = v148;
  *(v85 + 4) = v87;
  (*(v83 + 32))(&v85[v84], v82, v72);
  v88 = v106;
  v90 = v111;
  v89 = v112;
  v91 = MEMORY[0x1E69E6370];
  v92 = MEMORY[0x1E69E6388];
  sub_1E5ACF678();

  (*(v116 + 8))(v79, v89);
  v171 = v89;
  v172 = v91;
  v173 = v90;
  v174 = v92;
  swift_getOpaqueTypeConformance2();
  v93 = v110;
  v94 = v114;
  sub_1E5A9AA54();
  v95 = *(v115 + 8);
  v95(v88, v94);
  sub_1E5A9AA54();
  return (v95)(v93, v94);
}

uint64_t sub_1E5AB7BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v100 = a8;
  v88 = a7;
  v87 = a4;
  v102 = a3;
  v101 = a1;
  v97 = a9;
  v89 = a5;
  v96 = *(a5 - 8);
  v90 = a10;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v95 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v73 - v14;
  v115 = v15;
  v116 = v16;
  v117 = v17;
  v118 = v18;
  v119 = v19;
  v120 = v20;
  v121 = v21;
  v122 = v22;
  v86 = type metadata accessor for SidebarView(0, &v115);
  v92 = *(v86 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v91 = &v73 - v23;
  v98 = sub_1E5ACFD08();
  v24 = *(a6 + 32);
  v99 = a6;
  v78 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027808, ",=");
  v27 = sub_1E5ACFFD8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027810, "J=");
  v29 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=", MEMORY[0x1E697D680]);
  v115 = v28;
  v116 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = *(a6 + 24);
  v31 = v114;
  v82 = v114;
  WitnessTable = swift_getWitnessTable();
  v115 = v26;
  v116 = v27;
  v117 = OpaqueTypeConformance2;
  v118 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = OpaqueTypeMetadata2;
  v115 = v26;
  v116 = v27;
  v117 = OpaqueTypeConformance2;
  v118 = WitnessTable;
  v81 = swift_getOpaqueTypeConformance2();
  v115 = OpaqueTypeMetadata2;
  v116 = a2;
  v117 = v81;
  v118 = v31;
  v77 = MEMORY[0x1E697CDA0];
  swift_getOpaqueTypeMetadata2();
  v34 = sub_1E5ACF1E8();
  v75 = v34;
  v35 = v98;
  v36 = swift_getWitnessTable();
  v79 = v36;
  v80 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115 = v35;
  v116 = AssociatedTypeWitness;
  v117 = v34;
  v118 = v36;
  v119 = AssociatedConformanceWitness;
  v84 = sub_1E5ACF868();
  v85 = *(v84 - 8);
  v38 = MEMORY[0x1EEE9AC00](v84);
  v74 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v76 = &v73 - v40;
  v41 = v86;
  v42 = v101;
  sub_1E5AB680C(v86, v43, v44, v45);
  v103 = a2;
  v46 = a2;
  v104 = v102;
  v47 = v87;
  v105 = v87;
  v48 = v89;
  v106 = v89;
  v49 = v88;
  v107 = v99;
  v108 = v88;
  v50 = v90;
  v109 = v100;
  v110 = v90;
  swift_getKeyPath();
  sub_1E5ACFA48();

  v111 = v113[0];
  v51 = v92;
  v52 = v91;
  (*(v92 + 16))(v91, v42, v41);
  v53 = (*(v51 + 80) + 80) & ~*(v51 + 80);
  v54 = swift_allocObject();
  v55 = v102;
  *(v54 + 2) = v46;
  *(v54 + 3) = v55;
  *(v54 + 4) = v47;
  *(v54 + 5) = v48;
  *(v54 + 6) = v99;
  *(v54 + 7) = v49;
  *(v54 + 8) = v100;
  *(v54 + 9) = v50;
  v56 = v50;
  (*(v51 + 32))(&v54[v53], v52, v41);
  v115 = v83;
  v116 = v46;
  v117 = v81;
  v118 = v82;
  v113[3] = swift_getOpaqueTypeConformance2();
  v113[4] = MEMORY[0x1E697E5D8];
  v57 = swift_getWitnessTable();
  v58 = v74;
  sub_1E5ACF858();
  v113[2] = v57;
  v59 = v84;
  v60 = swift_getWitnessTable();
  v61 = v76;
  sub_1E5A9AA54();
  v62 = v85;
  v102 = *(v85 + 8);
  v102(v58, v59);
  v63 = v94;
  v64 = v56;
  sub_1E5A9AA54();
  v65 = *(v62 + 16);
  v66 = v61;
  v65(v58, v61, v59);
  v115 = v58;
  v67 = v96;
  v68 = v95;
  (*(v96 + 16))(v95, v63, v48);
  v116 = v68;
  v113[0] = v59;
  v113[1] = v48;
  v111 = v60;
  v112 = v64;
  sub_1E5AB95C4(&v115, 2uLL, v113);
  v69 = *(v67 + 8);
  v69(v63, v48);
  v70 = v66;
  v71 = v102;
  v102(v70, v59);
  v69(v68, v48);
  return v71(v58, v59);
}

uint64_t sub_1E5AB8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v95 = a8;
  v94 = a6;
  v93 = a5;
  v90 = a4;
  v127 = a2;
  v128 = a1;
  v121 = a9;
  v91 = a11;
  v89 = a10;
  v124 = sub_1E5ACFFD8();
  v120 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v117 = &v80 - v17;
  v18 = *(a7 + 24);
  v92 = a7;
  v150 = v18;
  v19 = v18;
  v107 = v18;
  WitnessTable = swift_getWitnessTable();
  v119 = sub_1E5ACF0A8();
  v118 = *(v119 - 8);
  v20 = MEMORY[0x1EEE9AC00](v119);
  v116 = &v80 - v21;
  v122 = a3;
  v129 = *(a3 - 8);
  v96 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v145 = a6;
  v146 = a7;
  v147 = a8;
  v148 = a10;
  v149 = a11;
  v123 = type metadata accessor for SidebarView(0, &v142);
  v23 = *(v123 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v26 = &v80 - v25;
  v84 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027810, "J=");
  v101 = v27;
  v114 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v80 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027808, ",=");
  v115 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v80 - v30;
  v102 = sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=", MEMORY[0x1E697D680]);
  v142 = v27;
  v143 = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = v29;
  v32 = v124;
  v142 = v29;
  v143 = v124;
  v33 = OpaqueTypeConformance2;
  v99 = OpaqueTypeConformance2;
  v34 = WitnessTable;
  v144 = OpaqueTypeConformance2;
  v145 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = OpaqueTypeMetadata2;
  v113 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v97 = &v80 - v36;
  v142 = v29;
  v143 = v32;
  v144 = v33;
  v145 = v34;
  v105 = swift_getOpaqueTypeConformance2();
  v142 = OpaqueTypeMetadata2;
  v37 = v122;
  v143 = v122;
  v144 = v105;
  v145 = v19;
  v109 = MEMORY[0x1E697CDA0];
  v103 = swift_getOpaqueTypeMetadata2();
  v111 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v87 = &v80 - v38;
  v110 = sub_1E5ACF1E8();
  v112 = *(v110 - 8);
  v39 = MEMORY[0x1EEE9AC00](v110);
  v88 = &v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v104 = &v80 - v41;
  v42 = v23;
  v83 = v23;
  v43 = *(v23 + 16);
  v44 = v123;
  v43(v26, v127, v123);
  v45 = v129;
  v46 = *(v129 + 16);
  v85 = v129 + 16;
  v86 = v46;
  v46(v126, v128, v37);
  v81 = (*(v42 + 80) + 80) & ~*(v42 + 80);
  v82 = (v24 + *(v45 + 80) + v81) & ~*(v45 + 80);
  v47 = swift_allocObject();
  v48 = v90;
  *(v47 + 2) = v37;
  *(v47 + 3) = v48;
  v49 = v93;
  v50 = v94;
  *(v47 + 4) = v93;
  *(v47 + 5) = v50;
  v51 = v92;
  v52 = v95;
  *(v47 + 6) = v92;
  *(v47 + 7) = v52;
  v53 = v89;
  v54 = v91;
  *(v47 + 8) = v89;
  *(v47 + 9) = v54;
  (*(v83 + 32))(&v47[v81], v84, v44);
  (*(v129 + 32))(&v47[v82], v126, v37);
  v130 = v37;
  v131 = v48;
  v132 = v49;
  v133 = v50;
  v134 = v51;
  v135 = v52;
  v136 = v53;
  v137 = v54;
  v55 = v128;
  v138 = v128;
  v139 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027828, &qword_1E5AD6428);
  sub_1E5A8CEF0(&qword_1ED027830, &qword_1ED027828, &qword_1E5AD6428, MEMORY[0x1E697D658]);
  v56 = v100;
  sub_1E5ACF7C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027838, &qword_1E5AD6430);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E5AD3200;
  v58 = v55;
  v59 = v122;
  *(v57 + 32) = (*(v51 + 56))(v122, v51);
  *(v57 + 40) = v60;
  v61 = v108;
  v62 = v101;
  sub_1E5ACF568();

  (*(v114 + 8))(v56, v62);
  v63 = v116;
  sub_1E5AB68BC(v123);
  v64 = v117;
  v86(v117, v58, v59);
  v65 = v59;
  (*(v129 + 56))(v64, 0, 1, v59);
  v66 = v97;
  v67 = v98;
  v68 = v124;
  sub_1E5ACF618();
  (*(v120 + 8))(v64, v68);
  (*(v118 + 8))(v63, v119);
  (*(v115 + 8))(v61, v67);
  v69 = v87;
  v70 = v106;
  v71 = v105;
  v72 = v107;
  sub_1E5ACF5A8();
  (*(v113 + 8))(v66, v70);
  sub_1E5ACF4F8();
  v142 = v70;
  v143 = v65;
  v144 = v71;
  v145 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v88;
  v75 = v103;
  sub_1E5ACF638();
  (*(v111 + 8))(v69, v75);
  v140 = v73;
  v141 = MEMORY[0x1E697E5D8];
  v76 = v110;
  swift_getWitnessTable();
  v77 = v104;
  sub_1E5A9AA54();
  v78 = *(v112 + 8);
  v78(v74, v76);
  sub_1E5A9AA54();
  return (v78)(v77, v76);
}

uint64_t sub_1E5AB90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v26 = a1;
  v27 = a2;
  v15 = type metadata accessor for SidebarAction(0, a3, a7, a4);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v28[5] = v25;
  v28[6] = a9;
  v28[7] = a10;
  v19 = type metadata accessor for SidebarView(0, v28);
  sub_1E5AB680C(v19, v20, v21, v22);
  (*(*(a3 - 8) + 16))(v18, v27, a3);
  sub_1E5ACFA58();

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1E5AB9210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027840, &qword_1E5AD6438);
  sub_1E5ABB670();
  return sub_1E5ACF768();
}

uint64_t sub_1E5AB92D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a2;
  v43 = a1;
  v44 = a9;
  v38 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v35 - v17;
  v18 = sub_1E5ACEEE8();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v59 = a10;
  v60 = a11;
  v21 = type metadata accessor for SidebarView(0, &v53);
  sub_1E5AB680C(v21, v22, v23, v24);
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v52 = a11;
  swift_getKeyPath();
  sub_1E5ACFA48();

  v25 = (*(a7 + 88))(v20, a3, a7);
  v27 = v26;
  (*(v41 + 8))(v20, v42);
  if (!v27)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    MEMORY[0x1E69342D0](40, 0xE100000000000000);
    v28 = v36;
    sub_1E5AD00B8();
    v29 = AssociatedTypeWitness;
    sub_1E5AD0338();
    (*(v37 + 8))(v28, v29);
    MEMORY[0x1E69342D0](41, 0xE100000000000000);
    v25 = v53;
    v27 = v54;
  }

  v53 = v25;
  v54 = v27;
  sub_1E5ABB6EC();
  result = sub_1E5ACF558();
  v31 = v44;
  *v44 = result;
  v31[1] = v32;
  *(v31 + 16) = v33 & 1;
  v31[3] = v34;
  return result;
}

uint64_t sub_1E5AB95C4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E5ACF8F8();
}

uint64_t sub_1E5AB9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a8;
  v45 = a6;
  v38 = a5;
  v52 = a2;
  v44 = a1;
  v51 = a9;
  v53 = a10;
  v36 = a4;
  sub_1E5ACFFD8();
  v74 = a8;
  swift_getWitnessTable();
  v48 = sub_1E5ACF818();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_1E5ACF138();
  v49 = *(v50 - 8);
  v15 = MEMORY[0x1EEE9AC00](v50);
  v43 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v36 - v17;
  v18 = sub_1E5ACF348();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = a3;
  v73 = a7;
  swift_getOpaqueTypeMetadata2();
  v72 = a3;
  v73 = a7;
  v37 = a7;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1E5ACF138();
  v40 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  v39 = &v36 - v23;
  sub_1E5ACF328();
  v63 = v52;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v25 = v45;
  v67 = v45;
  v68 = a7;
  v26 = v42;
  v69 = v42;
  v70 = v53;
  v27 = v44;
  v71 = v44;
  sub_1E5ACF128();
  v41 = swift_getWitnessTable();
  v28 = v40;
  (*(v40 + 16))(v24, v22, v19);
  v40 = *(v28 + 8);
  (v40)(v22, v19);
  sub_1E5ACF338();
  v54 = v52;
  v55 = a3;
  v56 = v36;
  v57 = v38;
  v58 = v25;
  v59 = v37;
  v60 = v26;
  v61 = v53;
  v62 = v27;
  v29 = v43;
  sub_1E5ACF128();
  v30 = v50;
  swift_getWitnessTable();
  v31 = v49;
  v32 = v46;
  (*(v49 + 16))(v46, v29, v30);
  v33 = *(v31 + 8);
  v33(v29, v30);
  v34 = v39;
  sub_1E5ABA3E4(v39, v32, v19, v30);
  v33(v32, v30);
  return (v40)(v34, v19);
}

uint64_t sub_1E5AB9D00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v24 = a5;
  v25 = a7;
  v23 = a4;
  v27 = a8;
  v28 = a2;
  v29 = a6;
  v26 = MEMORY[0x1E697D570];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = v23;
  v32 = v24;
  v33 = a6;
  v34 = v25;
  v35 = a9;
  type metadata accessor for SidebarView(0, &v28);
  sub_1E5AB69BC();
  sub_1E5ACF628();

  v28 = a2;
  v29 = a6;
  swift_getOpaqueTypeConformance2();
  sub_1E5A9AA54();
  v20 = *(v14 + 8);
  v20(v17, OpaqueTypeMetadata2);
  sub_1E5A9AA54();
  return (v20)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1E5AB9EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a6;
  v27 = a7;
  v24 = a5;
  v25 = a1;
  v28 = a9;
  v23 = a10;
  sub_1E5ACFFD8();
  v38 = a8;
  swift_getWitnessTable();
  v14 = sub_1E5ACF818();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v24;
  v33 = v26;
  v34 = v27;
  v35 = a8;
  v36 = v23;
  v37 = v25;
  sub_1E5ACF278();
  sub_1E5ACF808();
  swift_getWitnessTable();
  sub_1E5A9AA54();
  v21 = *(v15 + 8);
  v21(v18, v14);
  sub_1E5A9AA54();
  return (v21)(v20, v14);
}

uint64_t sub_1E5ABA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a5;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v37 = a9;
  v36 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = sub_1E5ACFFD8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  v39[0] = v32;
  v39[1] = v33;
  v39[2] = a4;
  v39[3] = v34;
  v39[4] = v35;
  v39[5] = a7;
  v39[6] = a8;
  v39[7] = a10;
  v24 = type metadata accessor for SidebarView(0, v39);
  if (sub_1E5AB6A28(v24))
  {
    sub_1E5A9AA54();
    v25 = v31;
    sub_1E5A9AA54();
    v26 = v36;
    (*(v36 + 8))(v16, a4);
    (*(v26 + 32))(v21, v25, a4);
    v27 = 0;
    v28 = v26;
  }

  else
  {
    v27 = 1;
    v28 = v36;
  }

  (*(v28 + 56))(v21, v27, 1, a4);
  (*(v18 + 16))(v23, v21, v17);
  v29 = *(v18 + 8);
  v29(v21, v17);
  v38 = a8;
  swift_getWitnessTable();
  sub_1E5A9AA54();
  return (v29)(v23, v17);
}

uint64_t sub_1E5ABA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v14 - v10;
  v12 = *(v9 + 48);
  (*(*(a3 - 8) + 16))(&v14 - v10, a1, a3);
  (*(*(a4 - 8) + 16))(&v11[v12], a2, a4);
  return sub_1E5ACF2E8();
}

uint64_t sub_1E5ABA504(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_1E5ACF8D8();
  sub_1E5ACF198();
}

uint64_t sub_1E5ABA590(uint64_t a1, char *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v16[0] = v2[2];
  v4 = v16[0];
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v10;
  v12 = *(type metadata accessor for SidebarView(0, v16) - 8);
  *(&v14 + 1) = v11;
  *&v14 = v9;
  return sub_1E5ABA504(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v14, v10);
}

uint64_t sub_1E5ABA6B4(int *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[3] - 8);
  v5 = *(v4 + 84);
  v6 = a3[5];
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v5 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = a3[2];
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v4 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v7 + 80);
  v20 = *(v10 + 80);
  v21 = *(v14 + 80);
  if (v16)
  {
    v22 = v16 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  if (v16)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = *(*(a3[4] - 8) + 64) + v20;
  v26 = v21 | 7;
  v27 = (v21 | 7) + *(*(v6 - 8) + 64);
  v28 = v24 + 7;
  if (v23 >= a2)
  {
    goto LABEL_41;
  }

  v29 = ((v24 + ((v21 + (v28 & 0xFFFFFFFFFFFFFFF8) + 8) & ~v21) + ((v27 + ((v25 + ((v18 + v19 + ((v17 + 17) & ~v17)) & ~v19)) & ~v20)) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = a2 - v23;
  v31 = v29 & 0xFFFFFFF8;
  if ((v29 & 0xFFFFFFF8) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = v30 + 1;
  }

  if (v32 >= 0x10000)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2;
  }

  if (v32 < 0x100)
  {
    v33 = 1;
  }

  if (v32 >= 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_41;
    }

    v35 = *(a1 + v29);
    if (!v35)
    {
      goto LABEL_41;
    }

LABEL_38:
    v37 = v35 - 1;
    if (v31)
    {
      v37 = 0;
      v38 = *a1;
    }

    else
    {
      v38 = 0;
    }

    return v23 + (v38 | v37) + 1;
  }

  if (v34 == 2)
  {
    v35 = *(a1 + v29);
    if (v35)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = *(a1 + v29);
    if (v35)
    {
      goto LABEL_38;
    }
  }

LABEL_41:
  v39 = (a1 + v17 + 17) & ~v17;
  if (v5 == v23)
  {
    v40 = *(v4 + 48);

    return v40(v39);
  }

  v41 = (v39 + v18 + v19) & ~v19;
  if (v8 == v23)
  {
    v42 = *(v7 + 48);
    v43 = *(v7 + 84);
    v44 = a3[4];

    return v42(v41, v43, v44);
  }

  v41 = (v25 + v41) & ~v20;
  if (v11 == v23)
  {
    v42 = *(v10 + 48);
    v43 = *(v10 + 84);
    v44 = a3[5];

    return v42(v41, v43, v44);
  }

  v45 = (v27 + v41) & ~v26;
  if (v22 < 0x7FFFFFFE)
  {
    v47 = *((v28 + v45) & 0xFFFFFFFFFFFFFFF8);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    if ((v47 + 1) >= 2)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v46 = (*(v15 + 48))(v45, v16, v13);
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E5ABAABC(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[3] - 8);
  v53 = a4[4];
  v7 = *(v6 + 84);
  v8 = *(v53 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v52 = a4[5];
  v11 = *(v52 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v10;
  }

  v51 = a4[2];
  v14 = *(v51 - 8);
  v15 = *(v14 + 84);
  v16 = *(v6 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v8 + 80);
  v19 = *(*(v53 - 8) + 64);
  v20 = *(v11 + 80);
  v21 = *(v14 + 80);
  v22 = v15 - 1;
  if (!v15)
  {
    v22 = 0;
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = v22;
  }

  if (v13 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v13;
  }

  v25 = v19 + v20;
  v26 = v21 | 7;
  v27 = (v21 | 7) + *(*(v52 - 8) + 64);
  v28 = (v27 + ((v19 + v20 + ((v17 + v18 + ((v16 + 17) & ~v16)) & ~v18)) & ~v20)) & ~(v21 | 7);
  if (v15)
  {
    v29 = *(*(v51 - 8) + 64);
  }

  else
  {
    v29 = *(*(v51 - 8) + 64) + 1;
  }

  v30 = v29 + 7;
  v31 = v21 + 8;
  v32 = ((v29 + ((v21 + 8 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + v28 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 < a3)
  {
    v33 = a3 - v24;
    if (v32)
    {
      v34 = 2;
    }

    else
    {
      v34 = v33 + 1;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v5 = v35;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v24)
  {
    if (v32)
    {
      v36 = 1;
    }

    else
    {
      v36 = a2 - v24;
    }

    if (v32)
    {
      v37 = ~v24 + a2;
      v38 = a1;
      bzero(a1, v32);
      a1 = v38;
      *v38 = v37;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }
    }

    else if (v5)
    {
      *(a1 + v32) = v36;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v5 == 2)
  {
    *(a1 + v32) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  *(a1 + v32) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  v39 = (a1 + v16 + 17) & ~v16;
  if (v7 == v24)
  {
    v40 = *(v6 + 56);

LABEL_62:
    v40(v39);
    return;
  }

  v39 = (v39 + v17 + v18) & ~v18;
  if (v9 == v24)
  {
    v40 = *(v8 + 56);

    goto LABEL_62;
  }

  v39 = (v25 + v39) & ~v20;
  if (v12 == v24)
  {
    v40 = *(v11 + 56);

    goto LABEL_62;
  }

  v41 = ((v27 + v39) & ~v26);
  if (v23 >= a2)
  {
    if (v22 < 0x7FFFFFFE)
    {
      v47 = (&v41[v30] & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v47 = 0;
        *v47 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v47 = a2;
      }

      return;
    }

    if (v22 >= a2)
    {
      v48 = *(v14 + 56);
      v49 = a2 + 1;
      v50 = (v27 + v39) & ~v26;

      v48(v50, v49);
    }

    else
    {
      if (v29 <= 3)
      {
        v46 = ~(-1 << (8 * v29));
      }

      else
      {
        v46 = -1;
      }

      if (v29)
      {
        v44 = v46 & (~v22 + a2);
        if (v29 <= 3)
        {
          v45 = v29;
        }

        else
        {
          v45 = 4;
        }

        bzero(v41, v29);
        if (v45 <= 2)
        {
          if (v45 == 1)
          {
            goto LABEL_73;
          }

          goto LABEL_85;
        }

LABEL_88:
        if (v45 == 3)
        {
          *v41 = v44;
          v41[2] = BYTE2(v44);
        }

        else
        {
          *v41 = v44;
        }
      }
    }
  }

  else
  {
    v42 = ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29;
    if (v42 <= 3)
    {
      v43 = ~(-1 << (8 * (((v31 + (v30 & 0xF8)) & ~v21) + v29)));
    }

    else
    {
      v43 = -1;
    }

    if (v42)
    {
      v44 = v43 & (~v23 + a2);
      if (v42 <= 3)
      {
        v45 = ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29;
      }

      else
      {
        v45 = 4;
      }

      bzero(v41, ((v31 + (v30 & 0xFFFFFFF8)) & ~v21) + v29);
      if (v45 <= 2)
      {
        if (v45 == 1)
        {
LABEL_73:
          *v41 = v44;
          return;
        }

LABEL_85:
        *v41 = v44;
        return;
      }

      goto LABEL_88;
    }
  }
}

uint64_t sub_1E5ABB01C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v2;
  v3 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v3;
  v4 = type metadata accessor for SidebarView(0, v6);
  return sub_1E5AB6A88((v1 & 1) == 0, v4);
}

uint64_t objectdestroy_3Tm()
{
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v14[0] = *(v0 + 16);
  v1 = v14[0];
  v14[1] = v2;
  v14[2] = v4;
  v14[3] = v3;
  v5 = *(v0 + 64);
  v15 = *(v0 + 48);
  v16 = v5;
  v6 = type metadata accessor for SidebarView(0, v14);
  v7 = (v0 + ((*(*(v6 - 1) + 80) + 80) & ~*(*(v6 - 1) + 80)));
  sub_1E5A9A6F8(*v7, v7[1]);
  (*(*(v2 - 8) + 8))(v7 + v6[21], v2);
  (*(*(v4 - 8) + 8))(v7 + v6[22], v4);
  (*(*(v3 - 8) + 8))(v7 + v6[23], v3);
  v8 = v7 + v6[24];
  v9 = *(v1 - 8);
  v10 = *(v9 + 48);
  if (!v10(v8, 1, v1))
  {
    (*(v9 + 8))(v8, v1);
  }

  sub_1E5ACFFD8();
  swift_getWitnessTable();
  v11 = sub_1E5ACF0D8();

  v12 = *(v11 + 40);
  if (!v10(&v8[v12], 1, v1))
  {
    (*(v9 + 8))(&v8[v12], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5ABB3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for SidebarView(0, v15) - 8);
  return sub_1E5AB8424(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_1E5ABB494()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v7;
  v12[7] = v8;
  v9 = *(type metadata accessor for SidebarView(0, v12) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  return sub_1E5AB90A8(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5ABB61C@<X0>(uint64_t *a1@<X8>)
{
  (*(*(v1 + 48) + 80))(*(v1 + 16));
  if (v3)
  {
    result = sub_1E5ACF748();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

unint64_t sub_1E5ABB670()
{
  result = qword_1ED027848;
  if (!qword_1ED027848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027840, &qword_1E5AD6438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027848);
  }

  return result;
}

unint64_t sub_1E5ABB6EC()
{
  result = qword_1ED027850;
  if (!qword_1ED027850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027850);
  }

  return result;
}

double SignOutLocalState.signOutAnimationState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

double SignOutLocalState.signOutAnimationState.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 16) = result;
  *(v1 + 24) = v3;
  return result;
}

double SignOutLocalState.init(signOutAnimationState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1E5ABB7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5AE0DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5ABB864(uint64_t a1)
{
  v2 = sub_1E5ABBA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABB8A0(uint64_t a1)
{
  v2 = sub_1E5ABBA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027858, &qword_1E5AD6460);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v10[0] = *v1;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABBA4C();
  sub_1E5AD03E8();
  v10[1] = v10[0];
  v11 = v7;
  v12 = v8;
  sub_1E5A877C4();
  sub_1E5AD0308();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5ABBA4C()
{
  result = qword_1ED027860;
  if (!qword_1ED027860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027860);
  }

  return result;
}

uint64_t SignOutLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027868, &qword_1E5AD6468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABBA4C();
  sub_1E5AD03D8();
  if (!v2)
  {
    sub_1E5A88420();
    sub_1E5AD0288();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SignOutLocalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v2 = 0;
  }

  return v2 & (*(a1 + 24) ^ *(a2 + 24) ^ 1u);
}

uint64_t sub_1E5ABBC90(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v2 = 0;
  }

  return v2 & (*(a1 + 24) ^ *(a2 + 24) ^ 1u);
}

unint64_t sub_1E5ABBCF4()
{
  result = qword_1ED027870;
  if (!qword_1ED027870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027870);
  }

  return result;
}

unint64_t sub_1E5ABBD4C()
{
  result = qword_1ED027878;
  if (!qword_1ED027878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027878);
  }

  return result;
}

unint64_t sub_1E5ABBDA4()
{
  result = qword_1ED027880;
  if (!qword_1ED027880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027880);
  }

  return result;
}

uint64_t type metadata accessor for SignOutState(uint64_t a1)
{
  result = qword_1ED0278A8;
  if (!qword_1ED0278A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SignOutState.isSidebarVisible.setter(char a1)
{
  result = type metadata accessor for SignOutState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SignOutState.init(accountState:isSidebarVisible:locale:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5A81F20(a1, a4);
  v7 = type metadata accessor for SignOutState(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  v9 = sub_1E5ACEEE8();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t static SignOutState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for SignOutState(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {

      JUMPOUT(0x1E69335A0);
    }
  }

  return 0;
}

unint64_t sub_1E5ABC044()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746E756F636361;
  }
}

uint64_t sub_1E5ABC0A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5ABCF0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5ABC0D0(uint64_t a1)
{
  v2 = sub_1E5ABCB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABC10C(uint64_t a1)
{
  v2 = sub_1E5ABCB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027888, &qword_1E5AD6638);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABCB94();
  sub_1E5AD03E8();
  v8[15] = 0;
  type metadata accessor for AccountState(0);
  sub_1E5ABCCF8(&qword_1ED0269B8, type metadata accessor for AccountState, &protocol conformance descriptor for AccountState);
  sub_1E5AD0308();
  if (!v1)
  {
    type metadata accessor for SignOutState(0);
    v8[14] = 1;
    sub_1E5AD02E8();
    v8[13] = 2;
    sub_1E5ACEEE8();
    sub_1E5ABCCF8(&qword_1ED026768, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5AD0308();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SignOutState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E5ACEE98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5ABCBE8(v2, v9, type metadata accessor for AccountState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1E6934A50](1);
      sub_1E5ACFBF8();
    }

    else
    {
      MEMORY[0x1E6934A50](2);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1E6934A50](0);
    sub_1E5ABCCF8(&qword_1ED0266F8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
    sub_1E5ACFB48();
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for SignOutState(0);
  sub_1E5AD0398();
  sub_1E5ACEEE8();
  sub_1E5ABCCF8(&qword_1ED027898, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  return sub_1E5ACFB48();
}

uint64_t SignOutState.hashValue.getter()
{
  sub_1E5AD0378();
  SignOutState.hash(into:)(v1);
  return sub_1E5AD03C8();
}

uint64_t SignOutState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_1E5ACEEE8();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278A0, &qword_1E5AD6640);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SignOutState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABCB94();
  sub_1E5AD03D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v26;
  v13 = v11;
  v14 = a1;
  v32 = 0;
  sub_1E5ABCCF8(&qword_1ED026A08, type metadata accessor for AccountState, &protocol conformance descriptor for AccountState);
  v15 = v28;
  sub_1E5AD0288();
  sub_1E5A81F20(v15, v13);
  v31 = 1;
  v16 = sub_1E5AD0268();
  v28 = v9;
  *(v13 + *(v9 + 20)) = v16 & 1;
  v30 = 2;
  sub_1E5ABCCF8(qword_1ED026770, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v17 = v5;
  v18 = v13;
  v19 = v25;
  v20 = v29;
  sub_1E5AD0288();
  (*(v12 + 8))(v8, v20);
  (*(v23 + 32))(v18 + *(v28 + 6), v17, v19);
  sub_1E5ABCBE8(v18, v24, type metadata accessor for SignOutState);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_1E5ABCC50(v18, type metadata accessor for SignOutState);
}

uint64_t sub_1E5ABCA98()
{
  sub_1E5AD0378();
  SignOutState.hash(into:)(v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABCADC(uint64_t a1)
{
  sub_1E5AD0378();
  SignOutState.hash(into:)(v2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABCB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {

    JUMPOUT(0x1E69335A0);
  }

  return 0;
}

unint64_t sub_1E5ABCB94()
{
  result = qword_1ED027890;
  if (!qword_1ED027890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027890);
  }

  return result;
}

uint64_t sub_1E5ABCBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5ABCC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5ABCCF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5ABCD68(uint64_t a1)
{
  result = type metadata accessor for AccountState(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E5ACEEE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5ABCE08()
{
  result = qword_1ED0278B8;
  if (!qword_1ED0278B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278B8);
  }

  return result;
}

unint64_t sub_1E5ABCE60()
{
  result = qword_1ED0278C0;
  if (!qword_1ED0278C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278C0);
  }

  return result;
}

unint64_t sub_1E5ABCEB8()
{
  result = qword_1ED0278C8;
  if (!qword_1ED0278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278C8);
  }

  return result;
}

uint64_t sub_1E5ABCF0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5ABD048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001E5AE0DC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5ABD0DC(uint64_t a1)
{
  v2 = sub_1E5ABD4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABD118(uint64_t a1)
{
  v2 = sub_1E5ABD4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ABD154(uint64_t a1)
{
  v2 = sub_1E5ABD564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ABD190(uint64_t a1)
{
  v2 = sub_1E5ABD564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicContentAction.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278D0, &qword_1E5AD6840);
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for DynamicContentAction(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278D8, &unk_1E5AD6848);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABD4AC();
  sub_1E5AD03E8();
  sub_1E5ABD500(v14, v7);
  sub_1E5ABD564();
  sub_1E5AD02B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  sub_1E5A86630(&qword_1EE2FCA40, MEMORY[0x1E6999B20]);
  v12 = v15;
  sub_1E5AD0308();
  sub_1E5A9661C(v7);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t type metadata accessor for DynamicContentAction(uint64_t a1)
{
  result = qword_1EE2FD1A0;
  if (!qword_1EE2FD1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5ABD4AC()
{
  result = qword_1EE2FD208[0];
  if (!qword_1EE2FD208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2FD208);
  }

  return result;
}

uint64_t sub_1E5ABD500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5ABD564()
{
  result = qword_1EE2FD1F0;
  if (!qword_1EE2FD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1F0);
  }

  return result;
}

uint64_t DynamicContentAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for DynamicContentAction(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278E0, &qword_1E5AD6858);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0278E8, &unk_1E5AD6860);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5ABD4AC();
  v11 = v30;
  sub_1E5AD03D8();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1E5AD0298();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1E5A82BF8() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_1E5AD00F8();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
    *v20 = v22;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_1E5ABD564();
  sub_1E5AD0228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  sub_1E5A86630(&qword_1ED026940, MEMORY[0x1E6999B30]);
  v22 = v10;
  sub_1E5AD0288();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1E5ABD9B0(v4, v12);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E5ABD9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5ABDA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5ABDABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

void sub_1E5ABDB44(uint64_t a1)
{
  sub_1E5A86914(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

unint64_t sub_1E5ABDC0C()
{
  result = qword_1ED0278F0;
  if (!qword_1ED0278F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278F0);
  }

  return result;
}

unint64_t sub_1E5ABDC64()
{
  result = qword_1ED0278F8;
  if (!qword_1ED0278F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0278F8);
  }

  return result;
}

unint64_t sub_1E5ABDCBC()
{
  result = qword_1EE2FD1E0;
  if (!qword_1EE2FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1E0);
  }

  return result;
}

unint64_t sub_1E5ABDD14()
{
  result = qword_1EE2FD1E8;
  if (!qword_1EE2FD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1E8);
  }

  return result;
}

unint64_t sub_1E5ABDD6C()
{
  result = qword_1EE2FD1F8;
  if (!qword_1EE2FD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD1F8);
  }

  return result;
}

unint64_t sub_1E5ABDDC4()
{
  result = qword_1EE2FD200;
  if (!qword_1EE2FD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD200);
  }

  return result;
}

uint64_t sub_1E5ABDE44@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_1E5ACF3B8();
  v1 = *(v40 - 8);
  v2 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v37 - v4;
  v5 = sub_1E5ACF698();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v37 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  sub_1E5ACF3A8();
  sub_1E5ACF8A8();
  sub_1E5ACF188();
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027910, &qword_1E5AD6BE0) + 36)];
  v16 = v46;
  *v15 = v45;
  *(v15 + 1) = v16;
  *(v15 + 2) = v47;
  v17 = sub_1E5ACF4E8();
  v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027918, &qword_1E5AD6BE8) + 36)] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027920, &qword_1E5AD6BF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E5AD6B30;
  v19 = *MEMORY[0x1E69814D8];
  v20 = *(v6 + 104);
  v20(v8, v19, v5);
  *(v18 + 32) = sub_1E5ACF6F8();
  v20(v8, v19, v5);
  *(v18 + 40) = sub_1E5ACF6F8();
  sub_1E5ACF918();
  sub_1E5ACF908();
  MEMORY[0x1E6933F60](v18);
  sub_1E5ACF1A8();
  v21 = v48;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027928, &qword_1E5AD6BF8) + 36)];
  *v22 = v21;
  v23 = v49;
  *(v22 + 24) = v50;
  *(v22 + 8) = v23;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027930, &qword_1E5AD6C00) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v42 = 0;
  sub_1E5ACF788();
  v25 = v43;
  v26 = v44;
  v27 = &v14[*(v10 + 44)];
  *v27 = KeyPath;
  v27[8] = 0;
  v27[16] = v25;
  *(v27 + 3) = v26;
  v28 = v38;
  sub_1E5ACF3C8();
  v29 = v37;
  sub_1E5ABE364(v14, v37);
  v30 = *(v1 + 16);
  v32 = v39;
  v31 = v40;
  v30(v39, v28, v40);
  v33 = v41;
  sub_1E5ABE364(v29, v41);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027938, &qword_1E5AD6C38);
  v30((v33 + *(v34 + 48)), v32, v31);
  v35 = *(v1 + 8);
  v35(v28, v31);
  sub_1E5ABE3D4(v14);
  v35(v32, v31);
  return sub_1E5ABE3D4(v29);
}

uint64_t sub_1E5ABE30C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5ACF268();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027900, &qword_1E5AD6BD0);
  return sub_1E5ABDE44(a1 + *(v2 + 44));
}

uint64_t sub_1E5ABE364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5ABE3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027908, &qword_1E5AD6BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5ABE43C()
{
  result = qword_1ED027940;
  if (!qword_1ED027940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027948, &qword_1E5AD6C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027940);
  }

  return result;
}

uint64_t sub_1E5ABE4A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6999B48];
  v3 = sub_1E5ACFA18();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

BOOL sub_1E5ABE518(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_1E5ABE540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1E6934A50](0);
  }

  return MEMORY[0x1E6934A50](v3, a2);
}

uint64_t sub_1E5ABE580(uint64_t a1, char a2)
{
  sub_1E5AD0378();
  if (a2)
  {
    a1 = 1;
  }

  else
  {
    MEMORY[0x1E6934A50](0);
  }

  MEMORY[0x1E6934A50](a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5ABE60C(uint64_t a1)
{
  sub_1E5AD0378();
  sub_1E5ABE540(v3, *v1, *(v1 + 8));
  return sub_1E5AD03C8();
}

__n128 TabBarFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t TabBarFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a4;
  v116 = a2;
  v109 = a3;
  v101 = a1;
  v102 = a5;
  v111 = *(a5 + 16);
  v6 = v111;
  v7 = type metadata accessor for TabBarAction(255, v111, *(&v111 + 1), a4);
  v107 = sub_1E5ACF968();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v95 - v8;
  v112 = *(&v111 + 1);
  v110 = type metadata accessor for TabBarItemDescriptor(0, v111, *(&v111 + 1), v9);
  v10 = MEMORY[0x1EEE9AC00](v110);
  v104 = &v95 - v11;
  v117 = v6;
  v114 = *(v6 - 8);
  v12 = *(v114 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v95 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v95 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v95 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v95 - v24;
  v26 = *(v7 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v95 - v30);
  v113 = *v5;
  v32 = *(v5 + 2);
  v33 = *(v5 + 3);
  v108 = v32;
  (*(v26 + 16))(&v95 - v30, v115, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v95 = v29;
    v96 = v26;
    v98 = v19;
    v99 = v16;
    v100 = v22;
    v115 = v33;
    v38 = v114;
    if (EnumCaseMultiPayload)
    {
      v88 = v114;
      v89 = v103;
      v90 = v117;
      v91 = (*(v114 + 32))(v103, v31, v117);
      v92 = v116;
      *&v122 = *v116;
      MEMORY[0x1EEE9AC00](v91);
      *(&v95 - 2) = v111;
      *(&v95 - 2) = v89;
      sub_1E5ACFD08();

      swift_getWitnessTable();
      sub_1E5ACFEB8();

      if ((BYTE8(v118) & 1) == 0)
      {
        v93 = v118;
        v118 = v113;
        v119 = v108;
        v120 = v115;
        v94 = v95;
        *v95 = v93;
        swift_storeEnumTagMultiPayload();
        TabBarFeature.reduce(localState:sharedState:sideEffects:action:)(v101, v92, v109, v94, v102);
        (*(v96 + 8))(v94, v7);
      }

      return (*(v88 + 8))(v89, v90);
    }

    else
    {
      v39 = *v31;
      v40 = v104;
      v41 = v110;
      sub_1E5ACFD38();
      v42 = *(v38 + 32);
      v43 = &v40[*(v41 + 36)];
      v97 = v25;
      v44 = v117;
      v42(v25, v43, v117);
      v45 = v42;
      v103 = v42;
      v46 = v112;
      type metadata accessor for TabBarState(0, v44, v112, v47);
      sub_1E5ACFD38();
      v48 = &v40[*(v41 + 36)];
      v49 = v100;
      v45(v100, v48, v44);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
      v110 = v50[12];
      v51 = v50[16];
      v116 = v50[20];
      v52 = v106;
      v104 = &v106[v50[24]];
      *&v118 = v39;
      BYTE8(v118) = 0;
      type metadata accessor for TabBarFeature.TaskIdentifier(0, v44, v46, v53);
      swift_getWitnessTable();
      sub_1E5AD0218();
      v54 = *MEMORY[0x1E6999B50];
      v55 = sub_1E5ACFA28();
      (*(*(v55 - 8) + 104))(&v52[v51], v54, v55);
      v56 = v114;
      v57 = *(v114 + 16);
      v58 = v98;
      v57(v98, v97, v44);
      v59 = v99;
      v57(v99, v49, v44);
      v60 = *(v56 + 80);
      v61 = (v60 + 64) & ~v60;
      v62 = (v12 + v60 + v61) & ~v60;
      v63 = swift_allocObject();
      v64 = v113;
      *(v63 + 16) = v111;
      *(v63 + 32) = v64;
      v65 = v115;
      *(v63 + 48) = v108;
      *(v63 + 56) = v65;
      v66 = v103;
      (v103)(v63 + v61, v58, v44);
      (v66)(v63 + v62, v59, v44);
      v67 = v104;
      *v104 = &unk_1E5AD6C60;
      *(v67 + 1) = v63;

      sub_1E5ACFD88();
      v68 = *MEMORY[0x1E6999B48];
      v69 = sub_1E5ACFA18();
      (*(*(v69 - 8) + 104))(v116 + v52, v68, v69);
      (*(v105 + 104))(v52, *MEMORY[0x1E6999AD8], v107);
      sub_1E5ACFD08();
      sub_1E5ACFCE8();
      v70 = *(v114 + 8);
      v70(v100, v44);
      return (v70)(v97, v44);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v71 = *v31;
    v72 = v116;
    v123 = *v116;
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFE58();
    v122 = v118;
    v121 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
    result = sub_1E5ACFEF8();
    if (result)
    {
      result = type metadata accessor for TabBarState(0, v117, v112, v73);
      v74 = *(result + 40);
      if (*(v72 + v74) == v71)
      {
        *(v72 + *(result + 44)) = 1;
      }

      else
      {
        *(v72 + v74) = v71;
      }
    }
  }

  else
  {
    v36 = v116;
    if (EnumCaseMultiPayload == 3)
    {
      result = type metadata accessor for TabBarState(0, v117, v112, v35);
      *(v36 + *(result + 44)) = 0;
    }

    else
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
      v76 = v75[16];
      v77 = v33;
      v78 = v75[20];
      v79 = v106;
      v80 = &v106[v75[24]];
      *&v118 = 0;
      BYTE8(v118) = 1;
      type metadata accessor for TabBarFeature.TaskIdentifier(0, v117, v112, v81);
      swift_getWitnessTable();
      sub_1E5AD0218();
      v82 = *MEMORY[0x1E6999B50];
      v83 = sub_1E5ACFA28();
      (*(*(v83 - 8) + 104))(&v79[v76], v82, v83);
      v84 = swift_allocObject();
      v85 = v113;
      *(v84 + 16) = v111;
      *(v84 + 32) = v85;
      *(v84 + 48) = v108;
      *(v84 + 56) = v77;
      *v80 = &unk_1E5AD6C50;
      *(v80 + 1) = v84;

      sub_1E5ACFD88();
      v86 = *MEMORY[0x1E6999B48];
      v87 = sub_1E5ACFA18();
      (*(*(v87 - 8) + 104))(&v79[v78], v86, v87);
      (*(v105 + 104))(v79, *MEMORY[0x1E6999AD8], v107);
      sub_1E5ACFD08();
      return sub_1E5ACFCE8();
    }
  }

  return result;
}

uint64_t sub_1E5ABF1A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1E5ACFD78();
  v7[3] = sub_1E5ACFD68();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_1E5A99744;

  return v13(a6, a7);
}

uint64_t sub_1E5ABF2D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E5ACFD78();
  v4[3] = sub_1E5ACFD68();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5ABF3E0;

  return v8();
}

uint64_t sub_1E5ABF3E0()
{

  v1 = sub_1E5ACFD48();

  return MEMORY[0x1EEE6DFA0](sub_1E5ABF900, v1, v0);
}

uint64_t sub_1E5ABF51C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5A9A14C;

  return sub_1E5ABF2D0(a1, v4, v5, v6);
}

uint64_t sub_1E5ABF660(uint64_t a1)
{
  v3 = *(*(v1[2] - 8) + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(*(v1[2] - 8) + 64) + v3 + v4) & ~v3;
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5A96520;

  return sub_1E5ABF1A4(a1, v6, v7, v8, v9, v1 + v4, v1 + v5);
}

uint64_t sub_1E5ABF7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5ABF858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5ABF878(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E5ABF8A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5ABF8C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1E5ABF904()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027950, qword_1E5AD6E50);
  v5 = sub_1E5A8CEF0(&qword_1EE2FCA10, &qword_1ED027950, qword_1E5AD6E50, MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t DynamicContentContainerView.init(store:contentViewBuilder:offlineContentViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_1E5ABFAA4;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for DynamicContentContainerView(0, v22);

  v19 = a3(v18);
  a5(v19);
}

uint64_t DynamicContentContainerView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v52 = *(a1 - 1);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v38 - v5;
  *&v44 = a1[2];
  sub_1E5ACF318();
  *&v45 = a1[3];
  sub_1E5ACF318();
  sub_1E5ACF318();
  v6 = sub_1E5ACF718();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v38 - v7;
  v8 = a1[4];
  v67 = MEMORY[0x1E6981580];
  v68 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = a1[5];
  v65 = v8;
  v66 = v10;
  v11 = swift_getWitnessTable();
  v63 = WitnessTable;
  v64 = v11;
  v62 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v42 = v12;
  v41 = sub_1E5A8CEF0(&qword_1EE2FCA38, &unk_1ED027520, &qword_1E5AD24C0, MEMORY[0x1E6999B28]);
  v58 = v6;
  v59 = v4;
  v13 = v6;
  v60 = v12;
  v61 = v41;
  v46 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - v18;
  *&v19 = v44;
  *(&v19 + 1) = v45;
  v45 = v19;
  *&v20 = v8;
  *(&v20 + 1) = v10;
  v44 = v20;
  v55 = v19;
  v56 = v20;
  v21 = v49;
  v57 = v49;
  v22 = v40;
  sub_1E5ACF708();
  v23 = v21;
  sub_1E5ABF904();
  swift_getKeyPath();
  v24 = v48;
  sub_1E5ACFA48();

  v25 = v52;
  v26 = v51;
  (*(v52 + 16))(v51, v23, a1);
  v27 = v25;
  v28 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v44;
  *(v29 + 16) = v45;
  *(v29 + 32) = v30;
  (*(v27 + 32))(v29 + v28, v26, a1);
  v31 = v24;
  v32 = v43;
  v33 = v42;
  v34 = v41;
  sub_1E5ACF678();

  sub_1E5A9661C(v31);
  (*(v50 + 8))(v22, v13);
  v58 = v13;
  v59 = v32;
  v60 = v33;
  v61 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v39;
  sub_1E5A9AA54();
  v36 = *(v47 + 8);
  v36(v17, OpaqueTypeMetadata2);
  sub_1E5A9AA54();
  return (v36)(v35, OpaqueTypeMetadata2);
}

uint64_t sub_1E5AC00C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a1;
  v82 = a6;
  v69 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v65 - v12;
  v13 = sub_1E5ACF318();
  v71 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v65 - v17;
  v72 = *(a2 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v65 - v20;
  v21 = sub_1E5ACF318();
  v75 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  v79 = v13;
  v81 = sub_1E5ACF318();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v27 = &v65 - v26;
  v102[0] = a2;
  v102[1] = a3;
  v73 = a3;
  v28 = a4;
  v102[2] = a4;
  v102[3] = a5;
  type metadata accessor for DynamicContentContainerView(0, v102);
  sub_1E5ABF904();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = MEMORY[0x1E6981580];
  if (EnumCaseMultiPayload > 2)
  {
    v83 = sub_1E5ACF6B8();
    v102[0] = v83;
    v39 = v78;
    sub_1E5AA82CC(v102, MEMORY[0x1E69815C0], a2, v30, a4);
    v86 = v30;
    v87 = a4;
    WitnessTable = swift_getWitnessTable();
    v84 = v28;
    v85 = a5;
    v41 = v79;
    v42 = swift_getWitnessTable();
    sub_1E5AA82CC(v39, v21, v41, WitnessTable, v42);

    (*(v75 + 8))(v39, v21);
LABEL_11:
    v48 = v81;
    v55 = v80;
    goto LABEL_12;
  }

  v31 = v78;
  v68 = v27;
  if (!EnumCaseMultiPayload)
  {
    if (*v25 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v43 = v66;
    v44 = v73;
    sub_1E5A9AA54();
    v45 = v67;
    sub_1E5A9AA54();
    v37 = v74;
    sub_1E5AAA2E8(v45, a2, v44, v28, a5);
    v46 = *(v69 + 8);
    v46(v45, v44);
    v46(v43, v44);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5A9661C(v25);
    sub_1E5A9AA54();
    v56 = v76;
    sub_1E5A9AA54();
    v57 = v56;
    v30 = MEMORY[0x1E6981580];
    sub_1E5AAA2E8(v57, MEMORY[0x1E69815C0], a2, MEMORY[0x1E6981580], v28);
    v90 = v30;
    v91 = v28;
    v58 = swift_getWitnessTable();
    v88 = v28;
    v89 = a5;
    v59 = v79;
    v60 = swift_getWitnessTable();
    v27 = v68;
    sub_1E5AA82CC(v31, v21, v59, v58, v60);
    (*(v75 + 8))(v31, v21);
    v61 = *(v72 + 8);
    v61(v76, a2);
    v61(v77, a2);
    goto LABEL_11;
  }

  v32 = *v25;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E50, &unk_1E5AD5A60) + 48);
  v34 = sub_1E5ACEEA8();
  (*(*(v34 - 8) + 8))(&v25[v33], v34);
  if (v32 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v35 = v77;
  sub_1E5A9AA54();
  v36 = v76;
  sub_1E5A9AA54();
  v37 = v74;
  sub_1E5AA82CC(v36, a2, v73, v28, a5);
  v38 = *(v72 + 8);
  v38(v36, a2);
  v38(v35, a2);
LABEL_9:
  v47 = v79;
  v48 = v81;
  v100 = v28;
  v101 = a5;
  v49 = swift_getWitnessTable();
  v50 = v70;
  sub_1E5A9AA54();
  v98 = MEMORY[0x1E6981580];
  v99 = v28;
  v51 = swift_getWitnessTable();
  v52 = v37;
  v27 = v68;
  sub_1E5AAA2E8(v50, v21, v47, v51, v49);
  v53 = v52;
  v54 = *(v71 + 8);
  v54(v50, v47);
  v54(v53, v47);
  v30 = MEMORY[0x1E6981580];
  v55 = v80;
LABEL_12:
  v96 = v30;
  v97 = v28;
  v62 = swift_getWitnessTable();
  v94 = v28;
  v95 = a5;
  v63 = swift_getWitnessTable();
  v92 = v62;
  v93 = v63;
  swift_getWitnessTable();
  sub_1E5A9AA54();
  return (*(v55 + 8))(v27, v48);
}

uint64_t sub_1E5AC0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for DynamicContentAction(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  type metadata accessor for DynamicContentContainerView(0, v16);
  sub_1E5ABF904();
  sub_1E5A95F34(a2, v14);
  sub_1E5ACFA58();

  return sub_1E5AB3224(v14);
}

uint64_t sub_1E5AC0B60(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for DynamicContentContainerView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5AC0A84(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1E5AC0C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AC0E88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t sub_1E5AC11B4()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x676E6974616F6C66;
  }
}

uint64_t sub_1E5AC11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E6974616F6C66 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5AD0348() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5AD0348();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5AC12C4(uint64_t a1)
{
  v2 = sub_1E5AC16DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC1300(uint64_t a1)
{
  v2 = sub_1E5AC16DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AC133C(uint64_t a1)
{
  v2 = sub_1E5AC1784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC1378(uint64_t a1)
{
  v2 = sub_1E5AC1784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AC13B4(uint64_t a1)
{
  v2 = sub_1E5AC1730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC13F0(uint64_t a1)
{
  v2 = sub_1E5AC1730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabBarStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027958, &qword_1E5AD6E70);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027960, &qword_1E5AD6E78);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027968, &qword_1E5AD6E80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC16DC();
  sub_1E5AD03E8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E5AC1730();
    v14 = v18;
    sub_1E5AD02B8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E5AC1784();
    sub_1E5AD02B8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E5AC16DC()
{
  result = qword_1ED027970;
  if (!qword_1ED027970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027970);
  }

  return result;
}

unint64_t sub_1E5AC1730()
{
  result = qword_1ED027978;
  if (!qword_1ED027978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027978);
  }

  return result;
}

unint64_t sub_1E5AC1784()
{
  result = qword_1ED027980;
  if (!qword_1ED027980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027980);
  }

  return result;
}

uint64_t TabBarStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027988, &qword_1E5AD6E88);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027990, &qword_1E5AD6E90);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027998, &unk_1E5AD6E98);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC16DC();
  v12 = v31;
  sub_1E5AD03D8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E5AD0298();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E5A82018();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E5AD00F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v22 = &type metadata for TabBarStyle;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E5AC1730();
        sub_1E5AD0228();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E5AC1784();
        sub_1E5AD0228();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t TabBarStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

unint64_t sub_1E5AC1D3C()
{
  result = qword_1ED0279A0;
  if (!qword_1ED0279A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279A0);
  }

  return result;
}

unint64_t sub_1E5AC1DD4()
{
  result = qword_1ED0279A8;
  if (!qword_1ED0279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279A8);
  }

  return result;
}

unint64_t sub_1E5AC1E2C()
{
  result = qword_1ED0279B0;
  if (!qword_1ED0279B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279B0);
  }

  return result;
}

unint64_t sub_1E5AC1E84()
{
  result = qword_1ED0279B8;
  if (!qword_1ED0279B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279B8);
  }

  return result;
}

unint64_t sub_1E5AC1EDC()
{
  result = qword_1ED0279C0;
  if (!qword_1ED0279C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279C0);
  }

  return result;
}

unint64_t sub_1E5AC1F34()
{
  result = qword_1ED0279C8;
  if (!qword_1ED0279C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279C8);
  }

  return result;
}

unint64_t sub_1E5AC1F8C()
{
  result = qword_1ED0279D0;
  if (!qword_1ED0279D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0279D0);
  }

  return result;
}

unint64_t sub_1E5AC1FE4()
{
  result = qword_1ED0279D8[0];
  if (!qword_1ED0279D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0279D8);
  }

  return result;
}

uint64_t SignOutEnvironment.init(fetchAccountState:makeAccountChangedStream:makeRemoteBrowsingIdentityUpdatedStream:signOut:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1E5AC2068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1E5AD0348();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1E5AC209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1E6934A50](0, a2);
  }

  MEMORY[0x1E6934A50](1);

  return sub_1E5ACFBF8();
}

uint64_t sub_1E5AC210C(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  sub_1E5AC209C(v5, a1, a2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AC2194(uint64_t a1)
{
  sub_1E5AD0378();
  sub_1E5AC209C(v3, *v1, v1[1]);
  return sub_1E5AD03C8();
}

__n128 SidebarModalitiesFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SidebarModalitiesFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a3;
  v55 = a2;
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v56 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v52 - v11;
  v13 = *(v12 + 24);
  v15 = type metadata accessor for SidebarModalitiesAction(255, v7, v13, v14);
  v16 = sub_1E5ACF968();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v52 - v20;
  v62 = *v5;
  v22 = *(v5 + 3);
  v57 = *(v5 + 2);
  v58 = v22;
  (*(v23 + 16))(v21, a4, v15);
  if ((*(v8 + 48))(v21, 1, v7) == 1)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v25 = v24[16];
    v26 = v24[20];
    v27 = &v19[v24[24]];
    type metadata accessor for SidebarModalitiesFeature.TaskIdentifier(0, v7, v13, v28);
    v63 = 0;
    v64 = 0;
    swift_getWitnessTable();
    sub_1E5AD0218();
    v29 = *MEMORY[0x1E6999B50];
    v30 = sub_1E5ACFA28();
    (*(*(v30 - 8) + 104))(&v19[v25], v29, v30);
    v31 = swift_allocObject();
    *&v32 = v7;
    *(&v32 + 1) = v13;
    v33 = v62;
    *(v31 + 16) = v32;
    *(v31 + 32) = v33;
    v34 = v58;
    *(v31 + 48) = v57;
    *(v31 + 56) = v34;
    *v27 = &unk_1E5AD72D0;
    *(v27 + 1) = v31;

    sub_1E5ABE4A0(v15);
    sub_1E5ABE4A4(&v19[v26]);
    (*(v59 + 104))(v19, *MEMORY[0x1E6999AD8], v60);
    sub_1E5ACFD08();
    return sub_1E5ACFCE8();
  }

  else
  {
    v36 = *(v8 + 32);
    v52[2] = v8 + 32;
    v53 = v36;
    v37 = v54;
    v36(v54, v21, v7);
    v39 = type metadata accessor for SidebarModalitiesState(0, v7, v13, v38);
    *(v55 + *(v39 + 44)) = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026E48, &qword_1E5AD3720);
    v41 = v40[12];
    v42 = v40[16];
    v55 = v40[20];
    v52[0] = &v19[v40[24]];
    v52[1] = v41;
    v63 = (*(v13 + 56))(v7, v13);
    v64 = v43;
    type metadata accessor for SidebarModalitiesFeature.TaskIdentifier(0, v7, v13, v44);
    swift_getWitnessTable();
    sub_1E5AD0218();

    v45 = *MEMORY[0x1E6999B50];
    v46 = sub_1E5ACFA28();
    (*(*(v46 - 8) + 104))(&v19[v42], v45, v46);
    v47 = v56;
    (*(v8 + 16))(v56, v37, v7);
    v48 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v7;
    *(v49 + 24) = v13;
    *(v49 + 32) = v62;
    v50 = v58;
    *(v49 + 48) = v57;
    *(v49 + 56) = v50;
    v53(v49 + v48, v47, v7);
    v51 = v52[0];
    *v52[0] = &unk_1E5AD72C0;
    *(v51 + 8) = v49;

    sub_1E5ABE4A0(v15);
    sub_1E5ABE4A4(&v19[v55]);
    (*(v59 + 104))(v19, *MEMORY[0x1E6999AD8], v60);
    sub_1E5ACFD08();
    sub_1E5ACFCE8();
    return (*(v8 + 8))(v37, v7);
  }
}

uint64_t sub_1E5AC2804(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5ACFD78();
  v2[3] = sub_1E5ACFD68();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5ABF3E0;

  return v6();
}

uint64_t sub_1E5AC2914(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5ACFD78();
  v6[3] = sub_1E5ACFD68();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1E5A99744;

  return v11(a6);
}

uint64_t sub_1E5AC2A30(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5A96520;

  return sub_1E5AC2914(a1, v5, v6, v7, v8, v1 + v4);
}

uint64_t sub_1E5AC2B3C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5A9A14C;

  return sub_1E5AC2804(a1, v4);
}

uint64_t sub_1E5AC2C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AC2CAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AC2CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5AC2D50(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5AC2D68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5AC2DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AC2EA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F437478654E7075 && a2 == 0xEB00000000746E75 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED00007865646E49 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5AE0DE0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E5AC3068(unsigned __int8 a1)
{
  v1 = 0x7470697263736564;
  v2 = 0x64657463656C6573;
  v3 = 0xD000000000000014;
  if (a1 != 3)
  {
    v3 = 0x656C61636F6CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F437478654E7075;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5AC312C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AC2EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AC315C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AC31B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TabBarState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for TabBarState.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1E5AD0318();
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v7;
  v11 = v16[1];
  sub_1E5AD03E8();
  v21 = *v11;
  v20 = 0;
  type metadata accessor for TabBarItemDescriptor(255, v5, v6, v12);
  sub_1E5ACFD08();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = v18;
  sub_1E5AD0308();
  if (v13)
  {
    return (*(v17 + 8))(v9, v10);
  }

  v15 = v17;
  LOBYTE(v21) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  sub_1E5AC3AA8(&qword_1ED027A68, MEMORY[0x1E6999B20]);
  sub_1E5AD0308();
  LOBYTE(v21) = 2;
  sub_1E5AD02F8();
  LOBYTE(v21) = 3;
  sub_1E5AD02E8();
  LOBYTE(v21) = 4;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768, MEMORY[0x1E6969778]);
  sub_1E5AD0308();
  return (*(v15 + 8))(v9, v10);
}

uint64_t TabBarState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v31 = sub_1E5ACEEE8();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v28 - v8;
  type metadata accessor for TabBarState.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v39 = sub_1E5AD02A8();
  v33 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v28 - v10;
  v36 = a2;
  v37 = a3;
  v13 = type metadata accessor for TabBarState(0, a2, a3, v12);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - v15);
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v38 = v11;
  v18 = v40;
  sub_1E5AD03D8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v20 = v33;
  v21 = v34;
  v40 = v14;
  v22 = v35;
  type metadata accessor for TabBarItemDescriptor(255, v36, v37, v19);
  sub_1E5ACFD08();
  v43 = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5AD0288();
  v23 = v16;
  v37 = v44;
  *v16 = v44;
  LOBYTE(v44) = 1;
  sub_1E5AC3AA8(qword_1ED027A70, MEMORY[0x1E6999B30]);
  sub_1E5AD0288();
  sub_1E5A7C974(v21, v16 + v13[9]);
  LOBYTE(v44) = 2;
  v24 = v20;
  *(v23 + v13[10]) = sub_1E5AD0278();
  LOBYTE(v44) = 3;
  *(v23 + v13[11]) = sub_1E5AD0268() & 1;
  LOBYTE(v44) = 4;
  sub_1E5A83C6C(qword_1ED026770, MEMORY[0x1E6969790]);
  v25 = v31;
  sub_1E5AD0288();
  (*(v24 + 8))(v38, v39);
  (*(v29 + 32))(v23 + v13[12], v22, v25);
  v26 = v40;
  (*(v40 + 16))(v30, v23, v13);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return (*(v26 + 8))(v23, v13);
}

uint64_t sub_1E5AC3AA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027A60, &qword_1E5AD7450);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AC3B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TabBarState.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarItemDescriptor(0, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  sub_1E5ACFD18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  sub_1E5ACF9F8();
  MEMORY[0x1E6934A50](*(v4 + *(a2 + 40)));
  sub_1E5AD0398();
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED027898, MEMORY[0x1E6969780]);
  return sub_1E5ACFB48();
}

uint64_t TabBarState.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  TabBarState.hash(into:)(v5, a1, v2, v3);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AC3D18(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarState.hash(into:)(v6, a2, v3, v4);
  return sub_1E5AD03C8();
}

void sub_1E5AC3D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarItemDescriptor(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1E5ACFD08();
  if (v4 <= 0x3F)
  {
    sub_1E5AC3E64();
    if (v5 <= 0x3F)
    {
      sub_1E5ACEEE8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AC3E64()
{
  if (!qword_1EE2FCA20)
  {
    v0 = sub_1E5ACFA08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA20);
    }
  }
}

uint64_t sub_1E5AC3F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5AC3FF8(uint64_t a1)
{
  v2 = sub_1E5AC41A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC4034(uint64_t a1)
{
  v2 = sub_1E5AC41A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnotherNavigationSplitViewState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027AF8, &qword_1E5AD7680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03E8();
  sub_1E5AD02E8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E5AC41A8()
{
  result = qword_1ED027B00;
  if (!qword_1ED027B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B00);
  }

  return result;
}

uint64_t AnotherNavigationSplitViewState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B08, &qword_1E5AD7688);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03D8();
  if (!v2)
  {
    v9 = sub_1E5AD0268();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AC436C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027AF8, &qword_1E5AD7680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03E8();
  sub_1E5AD02E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for AnotherNavigationSplitViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E5AC4580()
{
  result = qword_1ED027B10;
  if (!qword_1ED027B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B10);
  }

  return result;
}

unint64_t sub_1E5AC45D8()
{
  result = qword_1ED027B18;
  if (!qword_1ED027B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B18);
  }

  return result;
}

unint64_t sub_1E5AC4630()
{
  result = qword_1ED027B20;
  if (!qword_1ED027B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B20);
  }

  return result;
}

uint64_t sub_1E5AC4684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E5AC46C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BA0, qword_1E5AD7930);
  v5 = sub_1E5A8CEF0(&qword_1EE2FCA18, &qword_1ED027BA0, qword_1E5AD7930, MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5AC4768(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF088();
  return v2;
}

uint64_t sub_1E5AC47D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF098();
  return v1;
}

uint64_t sub_1E5AC483C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  return v2;
}

uint64_t SignOutView.init(store:monogramViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for SignOutView(0, a5, a6, a4);
  v12 = a7 + *(v11 + 40);
  *v12 = sub_1E5ACF0B8() & 1;
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  v15 = a7 + *(v11 + 44);
  sub_1E5ACF788();
  *v15 = v19;
  *(v15 + 8) = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *a7 = sub_1E5ABFAA4;
  *(a7 + 8) = v16;
  *(a7 + 16) = 0;

  a3(v17);
}

uint64_t SignOutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = *(a1 - 8);
  v105 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B28, &qword_1E5AD7890);
  v104 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v7 = sub_1E5ACF318();
  v8 = sub_1E5A8CEF0(&qword_1ED027B40, &qword_1ED027B28, &qword_1E5AD7890, MEMORY[0x1E6981870]);
  v106 = *(a1 + 24);
  v9 = v106;
  v10 = sub_1E5AC5590();
  v118 = v9;
  v119 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E5AC5648();
  v116 = WitnessTable;
  v117 = v12;
  v13 = swift_getWitnessTable();
  v112 = v6;
  v113 = v7;
  v114 = v8;
  v115 = v13;
  v95 = sub_1E5ACF778();
  v94 = swift_getWitnessTable();
  v14 = sub_1E5ACF7D8();
  v96 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v69 - v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1E5AC57F4();
  v112 = v14;
  v113 = &type metadata for SidebarToolbarLeadItemButtonStyle;
  v77 = v14;
  v114 = v16;
  v115 = v17;
  v79 = v16;
  v18 = v17;
  v78 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v80 = &v69 - v20;
  v112 = v14;
  v113 = &type metadata for SidebarToolbarLeadItemButtonStyle;
  v114 = v16;
  v115 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeMetadata2;
  v113 = OpaqueTypeConformance2;
  v22 = OpaqueTypeConformance2;
  v76 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v84 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v112 = OpaqueTypeMetadata2;
  v113 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v23;
  v73 = v23;
  v112 = v23;
  v113 = v26;
  v28 = v26;
  v74 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v83 = v29;
  v90 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v102 = &v69 - v30;
  v112 = v27;
  v113 = v28;
  v82 = swift_getOpaqueTypeConformance2();
  v112 = v29;
  v113 = MEMORY[0x1E69E6370];
  v114 = v82;
  v115 = MEMORY[0x1E69E6388];
  v88 = MEMORY[0x1E6981440];
  v85 = swift_getOpaqueTypeMetadata2();
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v103 = &v69 - v31;
  v91 = sub_1E5ACF1E8();
  v93 = *(v91 - 8);
  v32 = MEMORY[0x1EEE9AC00](v91);
  v81 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v86 = &v69 - v34;
  v71 = *(v3 + 16);
  v72 = v3 + 16;
  v35 = v5;
  v98 = v5;
  v36 = v5;
  v37 = v99;
  v38 = a1;
  v71(v36, v99, a1);
  v70 = *(v3 + 80);
  v39 = (v70 + 32) & ~v70;
  v40 = swift_allocObject();
  v41 = v104;
  v42 = v106;
  *(v40 + 16) = v104;
  *(v40 + 24) = v42;
  v43 = *(v3 + 32);
  v100 = v3 + 32;
  v101 = v43;
  v43(v40 + v39, v35, a1);
  v107 = v41;
  v108 = v42;
  v44 = v41;
  v109 = v37;
  v45 = v89;
  sub_1E5ACF7C8();
  v46 = v80;
  v47 = v77;
  sub_1E5ACF5B8();
  (*(v96 + 8))(v45, v47);
  v48 = v75;
  sub_1E5ACF568();
  (*(v87 + 8))(v46, v48);
  sub_1E5AC47D0();
  v49 = v73;
  sub_1E5ACF628();

  (*(v84 + 8))(v25, v49);
  v50 = v37;
  LOBYTE(v112) = sub_1E5AC4768(v38) & 1;
  v51 = v98;
  v52 = v71;
  v71(v98, v50, v38);
  v53 = swift_allocObject();
  v54 = v106;
  *(v53 + 16) = v44;
  *(v53 + 24) = v54;
  v101(v53 + v39, v51, v38);
  v55 = v102;
  v56 = v83;
  v57 = v82;
  sub_1E5ACF678();

  (*(v90 + 8))(v55, v56);
  v58 = v98;
  v52(v98, v99, v38);
  v59 = swift_allocObject();
  v60 = v106;
  *(v59 + 16) = v104;
  *(v59 + 24) = v60;
  v101(v59 + v39, v58, v38);
  v112 = v56;
  v113 = MEMORY[0x1E69E6370];
  v114 = v57;
  v115 = MEMORY[0x1E69E6388];
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v81;
  v63 = v85;
  v64 = v103;
  sub_1E5ACF668();

  (*(v92 + 8))(v64, v63);
  v110 = v61;
  v111 = MEMORY[0x1E69805D0];
  v65 = v91;
  swift_getWitnessTable();
  v66 = v86;
  sub_1E5A9AA54();
  v67 = *(v93 + 8);
  v67(v62, v65);
  sub_1E5A9AA54();
  return (v67)(v66, v65);
}

unint64_t sub_1E5AC5590()
{
  result = qword_1ED027B48;
  if (!qword_1ED027B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
    sub_1E5A8CEF0(&qword_1ED027B50, &qword_1ED027B58, &qword_1E5AD78A8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B48);
  }

  return result;
}

unint64_t sub_1E5AC5648()
{
  result = qword_1ED027B60;
  if (!qword_1ED027B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B68, &qword_1E5AD78B0);
    sub_1E5AC573C();
    swift_getOpaqueTypeConformance2();
    sub_1E5A8CEF0(&qword_1ED027B88, &qword_1ED027B90, &qword_1E5AD78C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B60);
  }

  return result;
}

unint64_t sub_1E5AC573C()
{
  result = qword_1ED027B70;
  if (!qword_1ED027B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B68, &qword_1E5AD78B0);
    sub_1E5A8CEF0(&qword_1ED027B78, &qword_1ED027B80, &qword_1E5AD78B8, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B70);
  }

  return result;
}

unint64_t sub_1E5AC57F4()
{
  result = qword_1ED027B98;
  if (!qword_1ED027B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B98);
  }

  return result;
}

uint64_t sub_1E5AC5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B28, &qword_1E5AD7890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v7 = sub_1E5ACF318();
  v8 = sub_1E5A8CEF0(&qword_1ED027B40, &qword_1ED027B28, &qword_1E5AD7890, MEMORY[0x1E6981870]);
  v18[19] = a3;
  v18[20] = sub_1E5AC5590();
  v18[17] = swift_getWitnessTable();
  v18[18] = sub_1E5AC5648();
  v18[13] = v6;
  v18[14] = v7;
  v18[15] = v8;
  v18[16] = swift_getWitnessTable();
  v9 = sub_1E5ACF778();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  v18[10] = a2;
  v18[11] = a3;
  v18[12] = v18[0];
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v18[0];
  sub_1E5ACF768();
  swift_getWitnessTable();
  sub_1E5A9AA54();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_1E5A9AA54();
  return (v16)(v15, v9);
}

uint64_t sub_1E5AC5B08@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1E5ACF288();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BB0, &qword_1E5AD79D0);
  return sub_1E5AC5B74(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_1E5AC5B74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v109 = a3;
  v5 = sub_1E5ACEEE8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1E5ACF7F8();
  v104 = *(v108 - 1);
  MEMORY[0x1EEE9AC00](v108);
  v115 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AccountState(0);
  v10 = MEMORY[0x1EEE9AC00](v111);
  v113 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v94 - v12;
  v13 = sub_1E5ACF508();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E5ACEF18();
  v17 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BB8, &qword_1E5AD79D8);
  MEMORY[0x1EEE9AC00](v95);
  v21 = &v94 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BC0, &qword_1E5AD79E0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v94 - v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BC8, &qword_1E5AD79E8);
  MEMORY[0x1EEE9AC00](v99);
  v110 = (&v94 - v23);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BD0, &qword_1E5AD79F0);
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v94 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BD8, &qword_1E5AD79F8);
  v25 = MEMORY[0x1EEE9AC00](v102);
  v107 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v94 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v94 - v29;
  v31 = type metadata accessor for SignOutView(0, a1, a2, v30);
  sub_1E5AC6B4C(v31);
  sub_1E5ACEF28();
  v32 = sub_1E5AC483C(v31);
  v33 = sub_1E5ACF518();
  if (v32)
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E6980EA8], v13);
    v34 = sub_1E5ACF528();

    (*(v14 + 8))(v16, v13);
    v33 = v34;
  }

  KeyPath = swift_getKeyPath();
  (*(v17 + 32))(v21, v19, v98);
  v36 = &v21[*(v95 + 36)];
  *v36 = KeyPath;
  v36[1] = v33;
  v37 = sub_1E5AC4768(v31);
  v38 = v97;
  if (v37)
  {
    v39 = sub_1E5ACF378();
  }

  else
  {
    v39 = sub_1E5ACF398();
  }

  v40 = v39;
  v41 = v108;
  sub_1E5AC8F0C(v21, v38, &qword_1ED027BB8, &qword_1E5AD79D8);
  *(v38 + *(v96 + 36)) = v40;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v42 = v122;
  sub_1E5AC46C8();
  swift_getKeyPath();
  v43 = v112;
  sub_1E5ACFA48();

  v44 = v113;
  swift_storeEnumTagMultiPayload();
  v45 = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v43, v44);
  sub_1E5A9A0EC(v44, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v43, type metadata accessor for AccountState);
  v46 = 13.0;
  if ((v45 & 1) == 0)
  {
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA38();

    v46 = *(&v116 + 1);
  }

  v47 = v110;
  sub_1E5AC8F0C(v38, v110, &qword_1ED027BC0, &qword_1E5AD79E0);
  v48 = (v47 + *(v99 + 36));
  *v48 = v42;
  v48[1] = v46;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v49 = (v104 + 8);
  v50 = v115;
  sub_1E5ACF7E8();
  v51 = 0.0;
  v52 = MEMORY[0x1E6933F90](v50, 0.0);
  v53 = *v49;
  (*v49)(v50, v41);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v54 = v122;
  v55 = v103;
  sub_1E5AC8F0C(v110, v103, &qword_1ED027BC8, &qword_1E5AD79E8);
  v56 = (v55 + *(v100 + 36));
  *v56 = v52;
  v56[1] = v54;
  sub_1E5ACF7E8();
  v57 = MEMORY[0x1E6933F90](v50, 0.0);
  v110 = v49;
  v108 = v53;
  (v53)(v50, v41);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v58 = v123;
  v59 = v101;
  sub_1E5AC8F0C(v55, v101, &qword_1ED027BD0, &qword_1E5AD79F0);
  v60 = (v59 + *(v102 + 36));
  *v60 = v57;
  v60[1] = v58;
  sub_1E5AC8F0C(v59, v114, &qword_1ED027BD8, &qword_1E5AD79F8);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = [objc_opt_self() bundleForClass_];
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  v63 = sub_1E5ACF538();
  v65 = v64;
  LOBYTE(v53) = v66;
  LODWORD(v122) = sub_1E5ACF388();
  v105 = sub_1E5ACF548();
  v104 = v67;
  v69 = v68;
  v106 = v70;
  sub_1E5AC8F74(v63, v65, v53 & 1);

  sub_1E5AC46C8();
  swift_getKeyPath();
  v71 = v112;
  sub_1E5ACFA48();

  v72 = v113;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v63) = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v71, v72);
  sub_1E5A9A0EC(v72, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v71, type metadata accessor for AccountState);
  if ((v63 & 1) == 0)
  {
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA38();

    if (v125)
    {
      v51 = 1.0;
    }

    else
    {
      v51 = 0.0;
    }
  }

  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v73 = v122;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v74 = v117;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v75 = v115;
  sub_1E5ACF7E8();
  v115 = MEMORY[0x1E6933F90](v75, 0.0);
  v76 = v108;
  (v108)(v75, v41);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v77 = v122;
  v78 = v69 & 1;
  v134 = v78;
  sub_1E5ACF7E8();
  v79 = MEMORY[0x1E6933F90](v75, 0.0);
  v76(v75, v41);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v80 = v124;
  v81 = v114;
  v82 = v107;
  sub_1E5A9B464(v114, v107, &qword_1ED027BD8, &qword_1E5AD79F8);
  v83 = v109;
  sub_1E5A9B464(v82, v109, &qword_1ED027BD8, &qword_1E5AD79F8);
  v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BE0, &qword_1E5AD7A40) + 48);
  v85 = v105;
  *&v116 = v105;
  v86 = v104;
  *(&v116 + 1) = v104;
  LOBYTE(v117) = v78;
  *(&v117 + 1) = *v133;
  DWORD1(v117) = *&v133[3];
  v87 = v106;
  *(&v117 + 1) = v106;
  *&v118 = v51;
  *(&v118 + 1) = v73;
  *&v119 = v74;
  v88 = v115;
  *(&v119 + 1) = v115;
  *&v120 = v77;
  *(&v120 + 1) = v79;
  v121 = v80;
  v89 = v117;
  *v84 = v116;
  *(v84 + 16) = v89;
  v90 = v118;
  v91 = v119;
  v92 = v120;
  *(v84 + 80) = v121;
  *(v84 + 48) = v91;
  *(v84 + 64) = v92;
  *(v84 + 32) = v90;
  sub_1E5A9B464(&v116, &v122, &qword_1ED027BE8, &qword_1E5AD7A48);
  sub_1E5A9B8E8(v81, &qword_1ED027BD8, &qword_1E5AD79F8);
  v122 = v85;
  v123 = v86;
  LOBYTE(v124) = v78;
  *(&v124 + 1) = *v133;
  HIDWORD(v124) = *&v133[3];
  v125 = v87;
  v126 = v51;
  v127 = v73;
  v128 = v74;
  v129 = v88;
  v130 = v77;
  v131 = v79;
  v132 = v80;
  sub_1E5A9B8E8(&v122, &qword_1ED027BE8, &qword_1E5AD7A48);
  return sub_1E5A9B8E8(v82, &qword_1ED027BD8, &qword_1E5AD79F8);
}

uint64_t sub_1E5AC6B4C(uint64_t a1)
{
  v3 = sub_1E5ACEEE8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5ACEE58();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5ACEE68();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5ACEE98();
  v25 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = v1;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1E5A9A0EC(v18, type metadata accessor for AccountState);
    }

    sub_1E5ACFB88();
    type metadata accessor for LocalizableBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA48();

    return sub_1E5ACFBE8();
  }

  else
  {
    v21 = v25;
    (*(v25 + 32))(v15, v18, v13);
    v22 = v26;
    (*(v26 + 104))(v9, *MEMORY[0x1E6968A50], v7);
    MEMORY[0x1E69334F0](v9);
    (*(v22 + 8))(v9, v7);
    sub_1E5AC8F84(&qword_1ED027BF0, MEMORY[0x1E6968A60], MEMORY[0x1E6968A58]);
    sub_1E5ACEE88();
    (*(v27 + 8))(v12, v10);
    (*(v21 + 8))(v15, v13);
    return v32;
  }
}

uint64_t sub_1E5AC7044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v5 = sub_1E5ACF318();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v13 = type metadata accessor for SignOutView(0, a2, a3, v12);
  sub_1E5AC722C(v13, v9);
  v14 = sub_1E5AC5590();
  v19[2] = a3;
  v19[3] = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E5AC5648();
  v19[0] = WitnessTable;
  v19[1] = v16;
  swift_getWitnessTable();
  sub_1E5A9AA54();
  v17 = *(v6 + 8);
  v17(v9, v5);
  sub_1E5A9AA54();
  return (v17)(v11, v5);
}

uint64_t sub_1E5AC722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v70 = sub_1E5ACF1D8();
  v69 = *(v70 - 8);
  v3 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v63 - v5;
  v66 = sub_1E5ACF738();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B38, &qword_1E5AD78A0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v63 - v8;
  v9 = *(a1 + 16);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  v10 = sub_1E5ACF318();
  v73 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - v12;
  v63 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v77 = v7;
  v22 = sub_1E5ACF318();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v75 = a1;
  v76 = &v63 - v23;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = sub_1E5ACF728();
      v26 = sub_1E5ACF518();
      KeyPath = swift_getKeyPath();
      v85 = v25;
      v86 = KeyPath;
      v87 = v26;
      v28 = *(v75 + 24);
      v29 = sub_1E5AC5590();

      sub_1E5AAA2E8(&v85, v9, v72, v28, v29);
      v83 = v28;
      v84 = v29;
      v30 = v74;
      WitnessTable = swift_getWitnessTable();
      v32 = sub_1E5AC5648();
      v33 = v76;
      sub_1E5AA82CC(v13, v30, v77, WitnessTable, v32);

      (*(v73 + 8))(v13, v30);
    }

    else
    {
      sub_1E5ACF728();
      v39 = v65;
      v40 = v64;
      v41 = v66;
      (*(v65 + 104))(v64, *MEMORY[0x1E6981630], v66);
      v42 = sub_1E5ACF758();

      (*(v39 + 8))(v40, v41);
      v43 = sub_1E5ACF378();
      v85 = v42;
      LODWORD(v86) = v43;
      v44 = v67;
      sub_1E5ACF1C8();
      v45 = v68;
      sub_1E5ACF1B8();
      v46 = *(v69 + 8);
      v47 = v70;
      v46(v44, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B68, &qword_1E5AD78B0);
      sub_1E5AC573C();
      v48 = v71;
      sub_1E5ACF5E8();
      v46(v45, v47);

      v49 = v77;
      v50 = (v48 + *(v77 + 36));
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B90, &qword_1E5AD78C0) + 28);
      sub_1E5ACF2B8();
      v52 = sub_1E5ACF2C8();
      (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
      *v50 = swift_getKeyPath();
      v28 = *(v75 + 24);
      v53 = sub_1E5AC5590();
      v92 = v28;
      v93 = v53;
      v54 = v74;
      v55 = swift_getWitnessTable();
      v56 = sub_1E5AC5648();
      v33 = v76;
      sub_1E5AAA2E8(v48, v54, v49, v55, v56);
      sub_1E5A7FA4C(v48);
    }
  }

  else
  {
    v28 = *(v75 + 24);
    sub_1E5A9AA54();
    sub_1E5A9AA54();
    v34 = sub_1E5AC5590();
    sub_1E5AA82CC(v16, v9, v72, v28, v34);
    v81 = v28;
    v82 = v34;
    v35 = v74;
    v36 = swift_getWitnessTable();
    v37 = sub_1E5AC5648();
    v33 = v76;
    sub_1E5AA82CC(v13, v35, v77, v36, v37);
    (*(v73 + 8))(v13, v35);
    v38 = *(v63 + 8);
    v38(v16, v9);
    v38(v18, v9);
    sub_1E5A9A0EC(v21, type metadata accessor for AccountState);
  }

  v57 = v79;
  v58 = v78;
  v59 = sub_1E5AC5590();
  v90 = v28;
  v91 = v59;
  v60 = swift_getWitnessTable();
  v61 = sub_1E5AC5648();
  v88 = v60;
  v89 = v61;
  swift_getWitnessTable();
  sub_1E5A9AA54();
  return (*(v58 + 8))(v33, v57);
}

uint64_t sub_1E5AC7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E5ACFA88();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5ACFAA8();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v55 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  v52 = a5;
  v13 = type metadata accessor for SignOutView(0, a4, a5, v12);
  v50 = *(v13 - 8);
  v48[1] = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = v48 - v14;
  v61 = sub_1E5ACFAC8();
  v54 = *(v61 - 8);
  v15 = MEMORY[0x1EEE9AC00](v61);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v53 = v48 - v18;
  v19 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AccountState(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v48 - v26;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  swift_storeEnumTagMultiPayload();
  LOBYTE(a5) = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v27, v25);
  sub_1E5A9A0EC(v25, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v27, type metadata accessor for AccountState);
  if (a5)
  {
    return sub_1E5AC489C(0, v13);
  }

  v29 = sub_1E5AC4768(v13);
  sub_1E5AC489C(v29 & 1, v13);
  v30 = sub_1E5AC4768(v13);
  sub_1E5AC46C8();
  if (v30)
  {
    *v21 = xmmword_1E5AD7870;
    *(v21 + 2) = 0xC02E000000000000;
    v21[24] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    sub_1E5A9A0EC(v21, type metadata accessor for SignOutAction);
    sub_1E5AC8CB4();
    v48[0] = sub_1E5ACFF58();
    sub_1E5ACFAB8();
    v31 = v53;
    sub_1E5ACFAD8();
    v54 = *(v54 + 8);
    (v54)(v17, v61);
    v33 = v49;
    v32 = v50;
    (*(v50 + 16))(v49, a3, v13);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    v36 = v52;
    *(v35 + 16) = v51;
    *(v35 + 24) = v36;
    (*(v32 + 32))(v35 + v34, v33, v13);
    v66 = sub_1E5AC8E44;
    v67 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v37 = &block_descriptor_24;
  }

  else
  {
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 2) = 0;
    v21[24] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    sub_1E5A9A0EC(v21, type metadata accessor for SignOutAction);
    sub_1E5AC8CB4();
    v48[0] = sub_1E5ACFF58();
    sub_1E5ACFAB8();
    v31 = v53;
    sub_1E5ACFAD8();
    v54 = *(v54 + 8);
    (v54)(v17, v61);
    v39 = v49;
    v38 = v50;
    (*(v50 + 16))(v49, a3, v13);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    v42 = v52;
    *(v41 + 16) = v51;
    *(v41 + 24) = v42;
    (*(v38 + 32))(v41 + v40, v39, v13);
    v66 = sub_1E5AC8D00;
    v67 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v37 = &block_descriptor_2;
  }

  v64 = sub_1E5AC4684;
  v65 = v37;
  v43 = _Block_copy(&aBlock);

  v44 = v55;
  sub_1E5ACFA98();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E5AC8F84(&qword_1ED026C48, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
  sub_1E5A8CEF0(&qword_1ED026C58, &qword_1ED026C50, &unk_1E5AD3460, MEMORY[0x1E69E6328]);
  v45 = v56;
  v46 = v60;
  sub_1E5AD0008();
  v47 = v48[0];
  MEMORY[0x1E6934610](v31, v44, v45, v43);
  _Block_release(v43);

  (*(v59 + 8))(v45, v46);
  (*(v57 + 8))(v44, v58);
  return (v54)(v31, v61);
}

uint64_t sub_1E5AC831C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SignOutView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1E5AC7B1C(a1, a2, v10, v7, v8);
}

uint64_t sub_1E5AC83B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView(0, a2, a3, v8);
  sub_1E5AC46C8();
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0x4022000000000000;
  v7[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v7, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC84AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView(0, a2, a3, v8);
  sub_1E5AC46C8();
  *v7 = xmmword_1E5AD7880;
  *(v7 + 2) = 0xC02E000000000000;
  v7[24] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v7, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView(0, a2, a3, v9);
  sub_1E5AC46C8();
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v8, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SignOutView(0, v6, v7, a4) - 8);
  return sub_1E5AC85A4(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

void sub_1E5AC8758(uint64_t a1)
{
  sub_1E5AC8B68(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E5A7BBB0();
      if (v3 <= 0x3F)
      {
        sub_1E5A7BC08();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5AC8810(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v7 + ((v6 + 17) & ~v6) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 17) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}