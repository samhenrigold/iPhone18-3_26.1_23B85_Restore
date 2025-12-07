void sub_249EB6040()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
          return;
        }

        if (v7 >= v6)
        {
          break;
        }

        v5 = *(v2 + 64 + 8 * v7);
        ++v1;
        if (v5)
        {
          v1 = v7;
          goto LABEL_10;
        }
      }

      v13 = sub_249EB59F4();
      [v13 alpha];
      v15 = v14;

      v12 = 0.0;
      if (v15 != 1.0)
      {
        return;
      }

      goto LABEL_14;
    }

    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (*(*(v2 + 56) + 88 * (v8 | (v7 << 6)) + 80) != 2);
  v9 = sub_249EB59F4();
  [v9 alpha];
  v11 = v10;

  v12 = 1.0;
  if (v11 != 0.0)
  {
    return;
  }

LABEL_14:
  v16 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView);

  [v16 setAlpha_];
}

void sub_249EB6188()
{
  v1 = v0;
  v2 = sub_249EB5820();
  v3 = v2;
  v4 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters;
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  v6 = v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v5;
  if (v5 != v6)
  {
    sub_249EB8B98(*&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v7 = sub_249EB582C();
  v8 = v7;
  v9 = *(v1 + v4);
  v10 = v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v9;
  if (v9 != v10)
  {
    sub_249EB8B98(*&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v7[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v11 = sub_249EB59F4();
  v12 = v11;
  v13 = *(v1 + v4);
  v14 = v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride];
  v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = v13;
  if (v13 != v14)
  {
    sub_249EB8B98(*&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect], *&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8], *&v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16], v11[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24]);
  }

  v15 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView);
  v16 = *(v1 + v4);
  v17 = *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v16;
  if (v16 != v17)
  {
    v18 = *(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v15 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = 1.0;
    if (v19)
    {
      v20 = 0.0;
    }

    [v18 setValue_];
  }

  v21 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView);
  v22 = *(v1 + v4);
  v23 = *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v22;
  if (v22 != v23)
  {
    v24 = *(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v21 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v25 = 1;
    }

    else
    {
      v25 = v22;
    }

    v26 = 1.0;
    if (v25)
    {
      v26 = 0.0;
    }

    [v24 setValue_];
  }

  v27 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView);
  v28 = *(v1 + v4);
  v29 = *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride);
  *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = v28;
  if (v28 != v29)
  {
    v30 = *(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
    if (*(v27 + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) <= 0.0)
    {
      v31 = 1;
    }

    else
    {
      v31 = v28;
    }

    v32 = 1.0;
    if (v31)
    {
      v32 = 0.0;
    }

    [v30 setValue_];
  }
}

uint64_t sub_249EB63C4()
{
}

id sub_249EB6434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletGroupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249EB6508(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = *(a1 + 56) + 88 * v12;
    v15 = *(v14 + 16);
    v42 = *v14;
    v43 = v15;
    v16 = *(v14 + 80);
    v18 = *(v14 + 48);
    v17 = *(v14 + 64);
    v44 = *(v14 + 32);
    v45 = v18;
    v46 = v17;
    v47 = v16;
    v33 = v18;
    v34 = v15;
    v31 = v44;
    v32 = v42;
    v19 = v17;
    sub_249EB0270(&v42, &v36);
    if (v16 == 255)
    {
      return 1;
    }

    v42 = v32;
    v43 = v34;
    v44 = v31;
    v45 = v33;
    v46 = v19;
    v47 = v16;
    v20 = sub_249EAE454(v13);
    if ((v21 & 1) == 0)
    {
      goto LABEL_52;
    }

    v22 = *(a2 + 56) + 88 * v20;
    v23 = *(v22 + 16);
    v36 = *v22;
    v37 = v23;
    v24 = *(v22 + 80);
    v26 = *(v22 + 48);
    v25 = *(v22 + 64);
    v38 = *(v22 + 32);
    v39 = v26;
    v40 = v25;
    v41 = v24;
    if (!v24)
    {
      if (v47)
      {
        goto LABEL_52;
      }

      if (*&v42 != COERCE_FLOAT(v36 | (BYTE1(v36) << 8) | (WORD1(v36) << 16)) || *(&v42 + 1) != *(&v36 + 1) || *(&v42 + 2) != *(&v36 + 2) || *(&v42 + 3) != *(&v36 + 3) || *&v37 != *&v43 || *(&v37 + 1) != *(&v43 + 1) || *(&v37 + 2) != *(&v43 + 2) || *(&v37 + 3) != *(&v43 + 3) || *&v38 != *&v44 || *(&v38 + 1) != *(&v44 + 1) || *(&v38 + 2) != *(&v44 + 2) || *&v39 != *&v45 || *(&v39 + 1) != *(&v45 + 1) || *(&v39 + 2) != *(&v45 + 2) || *(&v39 + 3) != *(&v45 + 3) || *(&v40 + 1) != *(&v46 + 1) || *(&v40 + 2) != *(&v46 + 2) || *(&v40 + 3) != *(&v46 + 3))
      {
        return 0;
      }

      goto LABEL_46;
    }

    if (v24 == 1)
    {
      if (v47 != 1)
      {
        goto LABEL_52;
      }

      if (v36 | (BYTE1(v36) << 8) | (WORD1(v36) << 16) | (DWORD1(v36) << 32))
      {
        if (!v42)
        {
          return 0;
        }

        sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
        sub_249EB0270(&v36, v35);
        sub_249EB0270(&v42, v35);
        v27 = sub_249ED6D80();
        sub_249EB73F4(&v42);
        sub_249EB73F4(&v36);
        sub_249EB73F4(&v42);
        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v42)
      {
        goto LABEL_51;
      }

      v28 = v36;
      v7 = v30;
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_52;
      }

      if (((v36 ^ v42) & 1) != 0 || ((BYTE1(v36) ^ BYTE1(v42)) & 1) != 0 || *(&v36 + 1) != *(&v42 + 1))
      {
        return 0;
      }

LABEL_46:
      v7 = v30;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(a1 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_51:
  sub_249EB0270(&v36, v35);
LABEL_52:
  sub_249EB73F4(&v42);
  return 0;
}

double sub_249EB6904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_249EAE454(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_249EAF5B4();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 88 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = *(v10 + 80);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_249EB6D24(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 80) = -1;
  }

  return result;
}

uint64_t sub_249EB69C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      sub_249ED6F10();

      sub_249ED6C90();
      v9 = sub_249ED6F30();

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

uint64_t sub_249EB6B74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      sub_249ED6F10();

      sub_249ED6C90();
      v9 = sub_249ED6F30();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

unint64_t sub_249EB6D24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249ED6DB0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_249ED6F00();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 88 * v3;
          v16 = (v15 + 88 * v6);
          if (88 * v3 < (88 * v6) || (result < v16 + 88 ? (v17 = v3 == v6) : (v17 = 0), !v17))
          {
            result = memmove(result, v16, 0x58uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_249EB6EA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_249ED5DAC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_249EB6F9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_249ED6E70();
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

  v13 = sub_249ED6E70();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_249EB708C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_249EB712C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_249EB708C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_249ED6E70();
LABEL_9:
  result = sub_249ED6DE0();
  *v2 = result;
  return result;
}

uint64_t sub_249EB712C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_249ED6E70();
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
      result = sub_249ED6E70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_249EB7538();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F8, &unk_249ED8F80);
            v9 = sub_249EB377C(v13, i, a3);
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
        sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
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

double sub_249EB72C0(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_249EB72E8(void *a1)
{
  v2 = [a1 layer];
  v3 = [a1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  [v2 setRasterizationScale_];
  v6 = sub_249EB582C();
  v10 = [v6 layer];

  v7 = [a1 traitCollection];
  [v7 displayScale];
  v9 = v8;

  [v10 setRasterizationScale_];
}

uint64_t sub_249EB7448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249EB74C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249EB7538()
{
  result = qword_281252D40[0];
  if (!qword_281252D40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF296F8, &unk_249ED8F80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281252D40);
  }

  return result;
}

void sub_249EB759C()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters;
  v2 = [objc_opt_self() rootSettings];
  v3 = [v2 suppressDropletEffectFilters];

  *(v0 + v1) = v3;
  v4 = (v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView) = 0;
  v5 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes;
  *(v0 + v5) = sub_249EB0054(MEMORY[0x277D84F90]);
  sub_249ED6E50();
  __break(1u);
}

void sub_249EB769C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD00000000000001CLL && 0x8000000249ED9710 == a2 || (sub_249ED6ED0() & 1) != 0)
    {

      sub_249EB6188();
    }

    else if (a1 == 0xD000000000000021 && 0x8000000249ED96B0 == a2 || (sub_249ED6ED0() & 1) != 0)
    {

      sub_249EB5B0C();
    }
  }
}

void sub_249EB778C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v4 = *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];
  type metadata accessor for CGColor(0);
  sub_249EB9700();
  v5 = v4;
  v6 = sub_249ED6BD0();

  if (v6)
  {
    return;
  }

  v7 = v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24];
  v8 = [v2 layer];
  v9 = *&v2[v3];
  if (v7)
  {
    v10 = qword_281252E48;
    v11 = v9;
    if (v10 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v12 = qword_281252E70;
  v13 = v9;
  if (v12 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_6:
  v14 = sub_249ED6C60();
  [v8 setValue:v9 forKeyPath:v14];
}

void sub_249EB791C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke;
  v3 = *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke];
  *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke] = a1;
  if (v3 != a1)
  {
    if ((a1 == 0.0) == (v3 != 0.0))
    {
      v4 = a1 == 0.0;
      v5 = [v1 layer];
      [v5 setBorderPathIsBounds_];
    }

    v6 = [v1 layer];
    [v6 setBorderWidth_];
  }
}

void sub_249EB7A0C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke;
  v3 = *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke];
  *&v1[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke] = a1;
  if (v3 != a1)
  {
    if ((a1 == 0.0) == (v3 != 0.0))
    {
      v5 = [v1 layer];
      v6 = v5;
      v7 = a1 == 0.0;
      if (a1 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      [v5 setRimPathIsBounds_];

      v9 = [v1 layer];
      *&v10 = v8;
      [v9 setRimOpacity_];
    }

    v11 = [v1 layer];
    [v11 setRimWidth_];
  }
}

char *sub_249EB7B34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] = 0;
  v20 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty;
  *&v9[v20] = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  v21 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v22 = [objc_opt_self() blackColor];
  v23 = [v22 CGColor];

  *&v9[v21] = v23;
  *&v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke] = 0;
  *&v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke] = 0;
  v24 = &v9[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  *v24 = a1;
  *(v24 + 1) = a2;
  *(v24 + 2) = a3;
  v24[24] = a4 & 1;
  *&v9[v21] = a5;
  v25 = a5;

  v47.receiver = v9;
  v47.super_class = type metadata accessor for DropletEffectView();
  v26 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a6, a7, a8, a9);
  v27 = [v26 layer];
  if (qword_281252E80 != -1)
  {
    swift_once();
  }

  v28 = qword_281253438;
  [v27 setRimColor_];

  v29 = [v26 layer];
  [v29 setBorderColor_];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249ED8CA0;
  v33 = *&v26[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
  *(v32 + 32) = v33;
  sub_249EA1BF8(0, &qword_281252CE0, 0x277D75120);
  v34 = v33;
  v35 = sub_249ED6CC0();

  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = ObjectType;
  v45 = sub_249EB9758;
  v46 = v36;
  v41 = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_249EBF654;
  v44 = &block_descriptor_1;
  v37 = _Block_copy(&v41);

  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = ObjectType;
  v45 = sub_249EB9778;
  v46 = v38;
  v41 = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_249EBF654;
  v44 = &block_descriptor_35;
  v39 = _Block_copy(&v41);

  [v31 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v39);
  _Block_release(v37);

  sub_249EB8B98(0, 0, 0, 255);

  return v26;
}

void sub_249EB7F5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layer];
    [*&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty] value];
    v4 = sub_249ED6D00();
    if (qword_281252E60 != -1)
    {
      swift_once();
    }

    v5 = sub_249ED6C60();
    [v3 setValue:v4 forKeyPath:v5];
  }
}

void sub_249EB8060(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty) presentationValue];
    v3 = sub_249ED6D00();
    if (qword_281252E60 != -1)
    {
      swift_once();
    }

    v4 = sub_249ED6C60();
    [v2 _setPresentationValue_forKey_];
  }
}

void sub_249EB8170()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor);
}

id sub_249EB81B0()
{
  [*&v0[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249EB82A8(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252E78 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249EB95E8, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for DropletEffectView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}

uint64_t sub_249EB8428(uint64_t a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DropletEffectView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v3 = [v1 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v4 = sub_249ED6CD0();

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for DropletBoundaryView();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        [v2 bounds];
        v19 = *(v11 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds);
        *(v11 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds) = v18;
        if (!CGRectEqualToRect(v18, v19))
        {
          memmove(__dst, (v11 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry), 0xD8uLL);
          if (!sub_249EB74B8(__dst))
          {
            v16[10] = __dst[10];
            v16[11] = __dst[11];
            v16[12] = __dst[12];
            v17 = v14;
            v16[6] = __dst[6];
            v16[7] = __dst[7];
            v16[8] = __dst[8];
            v16[9] = __dst[9];
            v16[2] = __dst[2];
            v16[3] = __dst[3];
            v16[4] = __dst[4];
            v16[5] = __dst[5];
            v16[0] = __dst[0];
            v16[1] = __dst[1];
            sub_249ED6410(v16);
          }
        }
      }

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_249EB8694()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 CGColor];

  qword_281253438 = v1;
}

uint64_t sub_249EB86F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249ED8F90;
  if (qword_281252E60 != -1)
  {
    swift_once();
  }

  v1 = *algn_281253408;
  *(v0 + 32) = qword_281253400;
  *(v0 + 40) = v1;
  v2 = qword_281252E68;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_281253418;
  *(v0 + 48) = qword_281253410;
  *(v0 + 56) = v3;
  v4 = qword_281252E70;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_281253428;
  *(v0 + 64) = qword_281253420;
  *(v0 + 72) = v5;
  v6 = qword_281252E30;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_2812533C8;
  *(v0 + 80) = qword_2812533C0;
  *(v0 + 88) = v7;
  v8 = qword_281252E38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_2812533D8;
  *(v0 + 96) = qword_2812533D0;
  *(v0 + 104) = v9;
  v10 = qword_281252E50;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_2812533F8;
  *(v0 + 112) = qword_2812533F0;
  *(v0 + 120) = v11;
  v12 = qword_281252E48;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_2812533E8;
  *(v0 + 128) = qword_2812533E0;
  *(v0 + 136) = v13;
  *(v0 + 144) = 0x68746469576D6972;
  *(v0 + 152) = 0xE800000000000000;
  *(v0 + 160) = 0x6957726564726F62;
  *(v0 + 168) = 0xEB00000000687464;
  *(v0 + 176) = 0x6D695274666F73;
  *(v0 + 184) = 0xE700000000000000;
  qword_281253430 = v0;
}

uint64_t sub_249EB8A04()
{
  sub_249ED6DC0();

  v0 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v0);

  result = MEMORY[0x24C205AA0](0x64656C62616E652ELL, 0xE800000000000000);
  qword_281253400 = 0x2E737265746C6966;
  *algn_281253408 = 0xE800000000000000;
  return result;
}

uint64_t sub_249EB8AEC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v7 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v7);

  MEMORY[0x24C205AA0](46, 0xE100000000000000);
  v8 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v8);

  *a4 = 0x2E737265746C6966;
  *a5 = 0xE800000000000000;
  return result;
}

id sub_249EB8B98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = v4;
  v9 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v10 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16];
  if (a4 == -1)
  {
    if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
    {
LABEL_38:
      v31 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v39 = sub_249ED6BC0();
      [v31 setValue:v39 forKeyPath:*MEMORY[0x277CDA360]];

      [v31 setValue:*&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] forKeyPath:*MEMORY[0x277CDA430]];
      [v31 setEnabled_];
      v35 = [v8 layer];
      v40 = [v8 layer];
      v37 = [v40 filters];

      if (!v37)
      {
        v38 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_34:
    v31 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v32 = sub_249ED6BC0();
    [v31 setValue:v32 forKeyPath:*MEMORY[0x277CDA360]];

    v33 = sub_249ED6BC0();
    [v31 setValue:v33 forKeyPath:*MEMORY[0x277CDA538]];

    v34 = sub_249ED6BC0();
    [v31 setValue:v34 forKeyPath:*MEMORY[0x277CDA460]];

    [v31 setValue:*&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] forKeyPath:*MEMORY[0x277CDA430]];
    [v31 setEnabled_];
    v35 = [v8 layer];
    v36 = [v8 layer];
    v37 = [v36 filters];

    if (!v37)
    {
      v38 = MEMORY[0x277D84F90];
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249ED8C90;
      *(inited + 56) = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
      *(inited + 32) = v31;
      *&v46 = v38;
      v42 = v31;
      sub_249EB6EA4(inited);
      v43 = sub_249ED6CC0();

      [v35 setFilters_];

      v30 = *&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
      goto LABEL_42;
    }

LABEL_39:
    v38 = sub_249ED6CD0();

    goto LABEL_41;
  }

  if ((a4 & 1) == 0)
  {
    if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
    {
      v5 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
      if (*&a1 == *&v9)
      {
        goto LABEL_30;
      }

      v19 = [v4 layer];
      v20 = sub_249ED6BC0();
      if (qword_281252E68 == -1)
      {
        goto LABEL_29;
      }

LABEL_52:
      swift_once();
LABEL_29:
      v29 = sub_249ED6C60();
      [v19 setValue:v20 forKeyPath:v29];

      goto LABEL_30;
    }

    v12 = [v4 layer];
    v21 = [v12 filters];
    if (!v21)
    {
      [v12 setFilters_];

      v46 = 0u;
      v47 = 0u;
      goto LABEL_33;
    }

    v22 = v21;
    v13 = sub_249ED6CD0();

    if (v13[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v23 = v13[2];
        if (!v23)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        goto LABEL_21;
      }

LABEL_47:
      v13 = sub_249ED60A0(v13);
      v23 = v13[2];
      if (!v23)
      {
        goto LABEL_48;
      }

LABEL_21:
      v13[2] = v23 - 1;
      sub_249EA90F4(&v13[4 * v23], &v46);
      v24 = sub_249ED6CC0();

      [v12 setFilters_];

LABEL_33:
      sub_249EAFF5C(&v46);
      goto LABEL_34;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24] & 1) == 0)
  {
    v12 = [v4 layer];
    v25 = [v12 filters];
    if (!v25)
    {
      [v12 setFilters_];

      v46 = 0u;
      v47 = 0u;
      goto LABEL_37;
    }

    v10 = MEMORY[0x277D84F70];
    v26 = v25;
    v13 = sub_249ED6CD0();

    if (v13[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v13[2];
        if (v27)
        {
LABEL_26:
          v13[2] = v27 - 1;
          sub_249EA90F4(&v13[4 * v27], &v46);
          v28 = sub_249ED6CC0();

          [v12 setFilters_];

LABEL_37:
          sub_249EAFF5C(&v46);
          goto LABEL_38;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        swift_once();
        goto LABEL_6;
      }

LABEL_49:
      v13 = sub_249ED60A0(v13);
      v27 = v13[2];
      if (v27)
      {
        goto LABEL_26;
      }

      goto LABEL_50;
    }

    goto LABEL_46;
  }

  v7 = *&a2;
  v11 = *&a1;
  v5 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8];
  if (*&a1 == *&v9)
  {
    goto LABEL_7;
  }

  v9 = a3;
  v12 = [v4 layer];
  v13 = sub_249ED6BC0();
  if (qword_281252E30 != -1)
  {
    goto LABEL_51;
  }

LABEL_6:
  v14 = sub_249ED6C60();
  [v12 setValue:v13 forKeyPath:v14];

  a3 = v9;
LABEL_7:
  v15 = *&a3;
  if (v7 != v6)
  {
    v16 = [v8 layer];
    v17 = sub_249ED6BC0();
    if (qword_281252E38 != -1)
    {
      swift_once();
    }

    v18 = sub_249ED6C60();
    [v16 setValue:v17 forKeyPath:v18];
  }

  if (v15 != v10)
  {
    v19 = [v8 layer];
    v20 = sub_249ED6BC0();
    if (qword_281252E50 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_30:
  v30 = *&v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty];
  if (v5 <= 0.0)
  {
    goto LABEL_43;
  }

LABEL_42:
  v44 = 1.0;
  if (v8[OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride] == 1)
  {
LABEL_43:
    v44 = 0.0;
  }

  return [v30 setValue_];
}

uint64_t initializeBufferWithCopyOfBuffer for DropletEffectView.Effect(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DropletEffectView.Effect(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DropletEffectView.Effect(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

BOOL sub_249EB9580(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 24) & 1) == 0)
  {
    return (*(a2 + 24) & 1) == 0 && v2 == v3;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v4 = v2 == v3;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v4;
}

void sub_249EB9608()
{
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_disableAlphaThresholdFilterOverride) = 0;
  v1 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  v2 = OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor;
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  *(v0 + v2) = v4;
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_innerStroke) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI17DropletEffectView_outerStroke) = 0;
  sub_249ED6E50();
  __break(1u);
}

unint64_t sub_249EB9700()
{
  result = qword_281252D38;
  if (!qword_281252D38)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281252D38);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249EB98B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_249EB98FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249EB991C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

double sub_249EB999C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  a2[1] = result;
  return result;
}

double sub_249EB99B4@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  a2[1] = result;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextSolidColorKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DRPDropletContextSolidColorKeylineStyle.color.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletContextSolidColorKeylineStyle.color.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletContextSolidColorKeylineStyle.init(width:boundaryFadeLength:color:)(void *a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidth:a1 boundaryFadeLength:a2 color:a3];

  return v4;
}

{
  v5 = [v3 initWithInnerWidth:a1 outerWidth:0.0 keylineOutsets:a2 keylineFadeLengths:-(a2 + a3) color:{-(a2 + a3), -(a2 + a3), -(a2 + a3), *&a3, *&a3, *&a3, *&a3}];

  return v5;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:color:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:a1 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 color:{a5, a6, a7, *&a8, *&a9, a17, a18}];

  return v19;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:color:)(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  v20 = [v18 initWithInnerWidth:a1 outerWidth:a4 keylineOutsets:a5 keylineFadeLengths:a6 normalizedStartLocation:a7 normalizedStopLocation:a8 color:{a9, a10, a11, a12, a13, a14, *&a15, *&a16, a17, a18, 0, 0x3FF0000000000000}];

  return v20;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:color:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:a1 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 normalizedStartLocation:a5 normalizedStopLocation:a6 color:{a7, *&a8, *&a9, a17, a18, a19}];

  return v20;
}

id DRPDropletContextSolidColorKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:color:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_innerWidth) = a2;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_outerWidth) = a3;
  v21 = (v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineOutsets);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v22 = v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_keylineFadeLengths;
  *v22 = a8;
  *(v22 + 8) = a9;
  *(v22 + 16) = a17;
  *(v22 + 24) = a18;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStartLocation) = a19;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_normalizedStopLocation) = a20;
  *(v20 + OBJC_IVAR___DRPDropletContextSolidColorKeylineStyle_color) = a1;
  v24.super_class = DRPDropletContextSolidColorKeylineStyle;
  return objc_msgSendSuper2(&v24, sel_init, a11, a12, a13, a14, a15, a16);
}

uint64_t DRPDropletContextSolidColorKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v44);
  if (!v45)
  {
    sub_249EAFF5C(v44);
    goto LABEL_18;
  }

  type metadata accessor for DRPDropletContextSolidColorKeylineStyle(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v41 = 0;
    return v41 & 1;
  }

  [v1 innerWidth];
  v4 = v3;
  [v43 innerWidth];
  if (v4 != v5 || ([v1 outerWidth], v7 = v6, objc_msgSend(v43, sel_outerWidth), v7 != v8) || (objc_msgSend(v1, sel_keylineOutsets), v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(v43, sel_keylineOutsets), v10 != v20) || v12 != v17 || v14 != v18 || v16 != v19 || (objc_msgSend(v1, sel_keylineFadeLengths), v22 = v21, v24 = v23, v26 = v25, v28 = v27, objc_msgSend(v43, sel_keylineFadeLengths), v22 != v32) || v24 != v29 || v26 != v30 || v28 != v31 || (objc_msgSend(v1, sel_normalizedStartLocation), v34 = v33, objc_msgSend(v43, sel_normalizedStartLocation), v34 != v35) || (objc_msgSend(v1, sel_normalizedStopLocation), v37 = v36, objc_msgSend(v43, sel_normalizedStopLocation), v37 != v38))
  {

    goto LABEL_18;
  }

  sub_249EA1BF8(0, &qword_27EF29770, 0x277D82BB8);
  v39 = [v1 color];
  v40 = [v43 color];
  v41 = sub_249ED6D80();

  return v41 & 1;
}

uint64_t sub_249EBA754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF299E0, &qword_249ED8EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DRPDropletContextSolidColorKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  [v1 innerWidth];
  v30 = v3;
  [v1 outerWidth];
  v29 = v4;
  [v1 keylineOutsets];
  v27 = v6;
  v28 = v5;
  v8 = v7;
  v10 = v9;
  [v1 keylineFadeLengths];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 normalizedStartLocation];
  v20 = v19;
  [v1 normalizedStopLocation];
  v22 = v21;
  v23 = [v1 color];
  v24 = [objc_allocWithZone(DRPDropletContextSolidColorKeylineStyle) initWithInnerWidth:v23 outerWidth:v30 keylineOutsets:v29 keylineFadeLengths:v28 normalizedStartLocation:v27 normalizedStopLocation:v8 color:{v10, v12, v14, v16, v18, v20, v22}];

  result = type metadata accessor for DRPDropletContextSolidColorKeylineStyle(v25);
  a1[3] = result;
  *a1 = v24;
  return result;
}

uint64_t sub_249EBA98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED9120;
  strcpy(v13, "innerWidth: ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  [v0 innerWidth];
  v2 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v2);

  v3 = v13[1];
  *(v1 + 32) = v13[0];
  *(v1 + 40) = v3;
  strcpy(v13, "outerWidth: ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  [v0 outerWidth];
  v4 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v4);

  v5 = v13[1];
  *(v1 + 48) = v13[0];
  *(v1 + 56) = v5;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  sub_249ED6E40();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v6 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v6);

  *(v1 + 96) = 0xD000000000000019;
  *(v1 + 104) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v7 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v7);

  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x8000000249EDC480;
  v8 = [v0 color];
  v9 = sub_249ED6A2C(v8);
  v11 = v10;

  MEMORY[0x24C205AA0](v9, v11);

  *(v1 + 128) = strcpy(v13, "color: ");
  *(v1 + 136) = 0xE700000000000000;
  return v1;
}

unint64_t sub_249EBACC0()
{
  result = qword_27EF29550;
  if (!qword_27EF29550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF29548, &qword_249ED8EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29550);
  }

  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextAdaptiveKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 DRPDropletContextAdaptiveKeylineStyle.adaptiveColorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 DRPDropletContextAdaptiveKeylineStyle.adaptiveColorMatrix.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

id DRPDropletContextAdaptiveKeylineStyle.init(width:boundaryFadeLength:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3)
{
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidth:v8 boundaryFadeLength:a2 adaptiveColorMatrix:a3];
}

{
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return [v3 initWithInnerWidth:v8 outerWidth:0.0 keylineOutsets:a2 keylineFadeLengths:-(a2 + a3) adaptiveColorMatrix:{-(a2 + a3), -(a2 + a3), -(a2 + a3), *&a3, *&a3, *&a3, *&a3}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a1[3];
  v23[2] = a1[2];
  v23[3] = v20;
  v23[4] = a1[4];
  v21 = a1[1];
  v23[0] = *a1;
  v23[1] = v21;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:v23 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 adaptiveColorMatrix:{a5, a6, a7, *&a8, *&a9, a17, a18}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:adaptiveColorMatrix:)(_OWORD *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  v19 = a1[3];
  v22[2] = a1[2];
  v22[3] = v19;
  v22[4] = a1[4];
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  return [v18 initWithInnerWidth:v22 outerWidth:a4 keylineOutsets:a5 keylineFadeLengths:a6 normalizedStartLocation:a7 normalizedStopLocation:a8 adaptiveColorMatrix:{a9, a10, a11, a12, a13, a14, *&a15, *&a16, a17, a18, 0, 0x3FF0000000000000}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  v21 = a1[3];
  v24[2] = a1[2];
  v24[3] = v21;
  v24[4] = a1[4];
  v22 = a1[1];
  v24[0] = *a1;
  v24[1] = v22;
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInnerWidth:v24 outerWidth:a2 keylineOutsets:a3 keylineFadeLengths:a4 normalizedStartLocation:a5 normalizedStopLocation:a6 adaptiveColorMatrix:{a7, *&a8, *&a9, a17, a18, a19}];
}

id DRPDropletContextAdaptiveKeylineStyle.init(innerWidth:outerWidth:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:adaptiveColorMatrix:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_innerWidth) = a2;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_outerWidth) = a3;
  v21 = (v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineOutsets);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v22 = v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_keylineFadeLengths;
  *v22 = a8;
  *(v22 + 8) = a9;
  *(v22 + 16) = a17;
  *(v22 + 24) = a18;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStartLocation) = a19;
  *(v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_normalizedStopLocation) = a20;
  v23 = (v20 + OBJC_IVAR___DRPDropletContextAdaptiveKeylineStyle_adaptiveColorMatrix);
  v24 = a1[3];
  v23[2] = a1[2];
  v23[3] = v24;
  v23[4] = a1[4];
  v25 = a1[1];
  *v23 = *a1;
  v23[1] = v25;
  v27.super_class = DRPDropletContextAdaptiveKeylineStyle;
  return objc_msgSendSuper2(&v27, sel_init, a11, a12, a13, a14, a15, a16);
}

BOOL DRPDropletContextAdaptiveKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v43);
  if (!v44)
  {
    sub_249EAFF5C(v43);
    return 0;
  }

  type metadata accessor for DRPDropletContextAdaptiveKeylineStyle(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v42[0];
  [v1 innerWidth];
  v5 = v4;
  [v42[0] innerWidth];
  if (v5 != v6 || ([v1 outerWidth], v8 = v7, objc_msgSend(v42[0], sel_outerWidth), v8 != v9) || (objc_msgSend(v1, sel_keylineOutsets), v11 = v10, v13 = v12, v15 = v14, v17 = v16, objc_msgSend(v42[0], sel_keylineOutsets), v11 != v21) || v13 != v18 || v15 != v19 || v17 != v20 || (objc_msgSend(v1, sel_keylineFadeLengths), v23 = v22, v25 = v24, v27 = v26, v29 = v28, objc_msgSend(v42[0], sel_keylineFadeLengths), v23 != v33) || v25 != v30 || v27 != v31 || v29 != v32 || (objc_msgSend(v1, sel_normalizedStartLocation), v35 = v34, objc_msgSend(v42[0], sel_normalizedStartLocation), v35 != v36) || (objc_msgSend(v1, sel_normalizedStopLocation), v38 = v37, objc_msgSend(v42[0], sel_normalizedStopLocation), v38 != v39))
  {

    return 0;
  }

  [v1 adaptiveColorMatrix];
  [v3 adaptiveColorMatrix];

  return sub_249EB9788(v42, v43);
}

uint64_t DRPDropletContextAdaptiveKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  [v1 innerWidth];
  v28 = v3;
  [v1 outerWidth];
  v27 = v4;
  [v1 keylineOutsets];
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v10 = v9;
  [v1 keylineFadeLengths];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 normalizedStartLocation];
  v20 = v19;
  [v1 normalizedStopLocation];
  v22 = v21;
  [v1 adaptiveColorMatrix];
  v23 = [objc_allocWithZone(DRPDropletContextAdaptiveKeylineStyle) initWithInnerWidth:v29 outerWidth:v28 keylineOutsets:v27 keylineFadeLengths:v26 normalizedStartLocation:v25 normalizedStopLocation:v8 adaptiveColorMatrix:{v10, v12, v14, v16, v18, v20, v22}];
  result = type metadata accessor for DRPDropletContextAdaptiveKeylineStyle(v23);
  a1[3] = result;
  *a1 = v23;
  return result;
}

uint64_t sub_249EBBD58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED9120;
  strcpy(v12, "innerWidth: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  [v0 innerWidth];
  v2 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v2);

  v3 = v12[1];
  *(v1 + 32) = v12[0];
  *(v1 + 40) = v3;
  strcpy(v12, "outerWidth: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  [v0 outerWidth];
  v4 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v4);

  v5 = v12[1];
  *(v1 + 48) = v12[0];
  *(v1 + 56) = v5;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  v12[2] = v6;
  v12[3] = v7;
  sub_249ED6E40();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v8 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v8);

  *(v1 + 96) = 0xD000000000000019;
  *(v1 + 104) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v9 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v9);

  *(v1 + 112) = 0xD000000000000018;
  *(v1 + 120) = 0x8000000249EDC480;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_249ED6DC0();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x24C205AA0](0xD000000000000015, 0x8000000249EDC4A0);
  [v0 adaptiveColorMatrix];
  type metadata accessor for CAColorMatrix(0);
  sub_249ED6E40();
  v10 = v14;
  *(v1 + 128) = v13;
  *(v1 + 136) = v10;
  return v1;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.preferAudioReactivity.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.preferAudioReactivity.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.style.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.style.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.softRim.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.softRim.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.screenBlendMode.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.screenBlendMode.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.alpha.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.alpha.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.innerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.innerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.outerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.outerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineBlurRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputAmount.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputAmount.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputStart.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputStart.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputEnd.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.keylineInputEnd.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.edrGain.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.edrGain.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_249EBCFBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_249EBD010(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_249EBD064(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v11 = (a1 + *a7);
  result = swift_beginAccess();
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_249EBD0D8(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = (v5 + *a1);
  result = swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStartLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStartLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStopLocation.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.normalizedStopLocation.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void __swiftcall DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:)(DRPDropletContextIntelligentEdgeLightKeylineStyle *__return_ptr retstr, Swift::Bool preferringAudioReactivity)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithPreferringAudioReactivity_];
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:)(char a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithPreferringAudioReactivity:a1 & 1 style:a2];
}

{
  v5 = [objc_opt_self() rootSettings];
  v6 = v5;
  if (a2 == 1)
  {
    v33 = a1;
    v34 = v2;
    v7 = &selRef_intelligentEdgeLightKeylineStyleSoftSmallWidth;
    v8 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeEnd;
    v9 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeStart;
    v10 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeAmount;
    v11 = &selRef_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
    v12 = &selRef_intelligentEdgeLightKeylineStyleSoftAlpha;
    v13 = &selRef_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
    v14 = &selRef_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  }

  else
  {
    if (a2 != 2)
    {
      v15 = 0;
      v16 = 1;
      v26 = 0.5;
      v30 = 0.0;
      v24 = 0.50001;
      v22 = 0.5;
      v20 = 0.0;
      v28 = 0.0;
      v18 = 0.0;
      goto LABEL_7;
    }

    v33 = a1;
    v34 = v2;
    v7 = &selRef_intelligentEdgeLightKeylineStyleHardSmallWidth;
    v8 = &selRef_intelligentEdgeLightKeylineStyleHardLargeEnd;
    v9 = &selRef_intelligentEdgeLightKeylineStyleHardLargeStart;
    v10 = &selRef_intelligentEdgeLightKeylineStyleHardLargeAmount;
    v11 = &selRef_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
    v12 = &selRef_intelligentEdgeLightKeylineStyleHardAlpha;
    v13 = &selRef_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
    v14 = &selRef_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  }

  v15 = [v5 *v14];
  v16 = [v6 *v13];
  [v6 *v12];
  v18 = v17;
  [v6 *v11];
  v20 = v19;
  [v6 *v10];
  v22 = v21;
  [v6 *v9];
  v24 = v23;
  [v6 *v8];
  v26 = v25;
  [v6 *v7];
  v28 = v27;
  [v6 intelligentEdgeLightEDRGainAmount];
  v30 = v29;
  v2 = v34;
  a1 = v33;
LABEL_7:
  v31 = [v2 initWithPreferringAudioReactivity:a1 & 1 style:a2 softRim:v15 screenBlendMode:v16 alpha:v18 innerWidth:0.0 outerWidth:v28 keylineBlurRadius:v20 keylineInputAmount:v22 keylineInputStart:v24 keylineInputEnd:v26 edrGain:v30 keylineOutsets:*MEMORY[0x277D768C8] keylineFadeLengths:*(MEMORY[0x277D768C8] + 8) normalizedStartLocation:*(MEMORY[0x277D768C8] + 16) normalizedStopLocation:{*(MEMORY[0x277D768C8] + 24), *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), 0, 0x3FF0000000000000}];

  return v31;
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:softRim:screenBlendMode:alpha:innerWidth:outerWidth:keylineBlurRadius:keylineInputAmount:keylineInputStart:keylineInputEnd:edrGain:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:)(char a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v16 initWithPreferringAudioReactivity:a1 & 1 style:a2 softRim:a3 & 1 screenBlendMode:a4 & 1 alpha:a5 innerWidth:a6 outerWidth:a7 keylineBlurRadius:a8 keylineInputAmount:a9 keylineInputStart:a10 keylineInputEnd:a11 edrGain:a12 keylineOutsets:? keylineFadeLengths:? normalizedStartLocation:? normalizedStopLocation:?];
}

id DRPDropletContextIntelligentEdgeLightKeylineStyle.init(preferringAudioReactivity:style:softRim:screenBlendMode:alpha:innerWidth:outerWidth:keylineBlurRadius:keylineInputAmount:keylineInputStart:keylineInputEnd:edrGain:keylineOutsets:keylineFadeLengths:normalizedStartLocation:normalizedStopLocation:)(char a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_preferAudioReactivity) = a1;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_style) = a2;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_softRim) = a3;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_screenBlendMode) = a4;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_alpha) = a5;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_innerWidth) = a6;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_outerWidth) = a7;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineBlurRadius) = a8;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputAmount) = a9;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputStart) = a10;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineInputEnd) = a11;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_edrGain) = a12;
  v25 = v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineOutsets;
  *v25 = a17;
  *(v25 + 16) = a18;
  *(v25 + 24) = a19;
  v26 = v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_keylineFadeLengths;
  *v26 = a20;
  *(v26 + 16) = a21;
  *(v26 + 24) = a22;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStartLocation) = a23;
  *(v24 + OBJC_IVAR___DRPDropletContextIntelligentEdgeLightKeylineStyle_normalizedStopLocation) = a24;
  v28.super_class = DRPDropletContextIntelligentEdgeLightKeylineStyle;
  return objc_msgSendSuper2(&v28, sel_init);
}

BOOL DRPDropletContextIntelligentEdgeLightKeylineStyle.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249EBA754(a1, v64);
  if (v65)
  {
    type metadata accessor for DRPDropletContextIntelligentEdgeLightKeylineStyle(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 preferAudioReactivity];
      if (v3 == [v63 preferAudioReactivity])
      {
        v4 = [v1 style];
        if (v4 == [v63 style])
        {
          v5 = [v1 softRim];
          if (v5 == [v63 softRim])
          {
            v6 = [v1 screenBlendMode];
            if (v6 == [v63 screenBlendMode])
            {
              [v1 alpha];
              v8 = v7;
              [v63 alpha];
              if (v8 == v9)
              {
                [v1 innerWidth];
                v11 = v10;
                [v63 innerWidth];
                if (v11 == v12)
                {
                  [v1 outerWidth];
                  v14 = v13;
                  [v63 outerWidth];
                  if (v14 == v15)
                  {
                    [v1 keylineBlurRadius];
                    v17 = v16;
                    [v63 keylineBlurRadius];
                    if (v17 == v18)
                    {
                      [v1 keylineInputAmount];
                      v20 = v19;
                      [v63 keylineInputAmount];
                      if (v20 == v21)
                      {
                        [v1 keylineInputStart];
                        v23 = v22;
                        [v63 keylineInputStart];
                        if (v23 == v24)
                        {
                          [v1 keylineInputEnd];
                          v26 = v25;
                          [v63 keylineInputEnd];
                          if (v26 == v27)
                          {
                            [v1 edrGain];
                            v29 = v28;
                            [v63 edrGain];
                            if (v29 == v30)
                            {
                              [v1 keylineOutsets];
                              v32 = v31;
                              v34 = v33;
                              v36 = v35;
                              v38 = v37;
                              [v63 keylineOutsets];
                              if (v32 == v42 && v34 == v39 && v36 == v40 && v38 == v41)
                              {
                                [v1 keylineFadeLengths];
                                v44 = v43;
                                v46 = v45;
                                v48 = v47;
                                v50 = v49;
                                [v63 keylineFadeLengths];
                                if (v44 == v54 && v46 == v51 && v48 == v52 && v50 == v53)
                                {
                                  [v1 normalizedStartLocation];
                                  v56 = v55;
                                  [v63 normalizedStartLocation];
                                  if (v56 == v57)
                                  {
                                    [v1 normalizedStopLocation];
                                    v59 = v58;
                                    [v63 normalizedStopLocation];
                                    v61 = v60;

                                    return v59 == v61;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_249EAFF5C(v64);
  }

  return 0;
}

uint64_t sub_249EBDCF8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_249ED6D90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_249EAFF5C(v10);
  return v8 & 1;
}

uint64_t DRPDropletContextIntelligentEdgeLightKeylineStyle.copy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 preferAudioReactivity];
  v5 = [v2 style];
  v6 = [v2 softRim];
  v7 = [v2 screenBlendMode];
  [v2 alpha];
  v44 = v8;
  [v2 innerWidth];
  v43 = v9;
  [v2 outerWidth];
  v42 = v10;
  [v2 keylineBlurRadius];
  v41 = v11;
  [v2 keylineInputAmount];
  v40 = v12;
  [v2 keylineInputStart];
  v39 = v13;
  [v2 keylineInputEnd];
  v38 = v14;
  [v2 edrGain];
  v37 = v15;
  [v2 keylineOutsets];
  v35 = v17;
  v36 = v16;
  v19 = v18;
  v21 = v20;
  [v2 keylineFadeLengths];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v2 normalizedStartLocation];
  v31 = v30;
  [v2 normalizedStopLocation];
  v33 = [objc_allocWithZone(DRPDropletContextIntelligentEdgeLightKeylineStyle) initWithPreferringAudioReactivity:v4 style:v5 softRim:v6 screenBlendMode:v7 alpha:v44 innerWidth:v43 outerWidth:v42 keylineBlurRadius:v41 keylineInputAmount:v40 keylineInputStart:v39 keylineInputEnd:v38 edrGain:v37 keylineOutsets:v36 keylineFadeLengths:v35 normalizedStartLocation:v19 normalizedStopLocation:{v21, v23, v25, v27, v29, v31, v32}];
  result = type metadata accessor for DRPDropletContextIntelligentEdgeLightKeylineStyle(v33);
  a1[3] = result;
  *a1 = v33;
  return result;
}

uint64_t sub_249EBDFB4(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_249ED6EC0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t sub_249EBE05C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249ED8E80;
  sub_249ED6DC0();

  v34[0] = 0xD000000000000017;
  v34[1] = 0x8000000249EDC360;
  v2 = [v0 preferAudioReactivity];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v4, v5);

  *(v1 + 32) = v34[0];
  *(v1 + 40) = v34[1];
  strcpy(v34, "style: ");
  v34[1] = 0xE700000000000000;
  v6 = [v0 style];
  if (v6 == 2)
  {
    v11 = 0xE800000000000000;
    v10 = 0x6567644564726168;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 1701736302;
    }

    v9 = v6 == 1;
    if (v6 == 1)
    {
      v10 = 0x6567644574666F73;
    }

    else
    {
      v10 = v7;
    }

    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = v8;
    }
  }

  MEMORY[0x24C205AA0](v10, v11);

  *(v1 + 48) = v34[0];
  *(v1 + 56) = v34[1];
  strcpy(v34, "softRim: ");
  WORD1(v34[1]) = 0;
  HIDWORD(v34[1]) = -385875968;
  v12 = [v0 softRim];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v14, v15);

  *(v1 + 64) = v34[0];
  *(v1 + 72) = v34[1];
  sub_249ED6DC0();

  v34[0] = 0xD000000000000011;
  v34[1] = 0x8000000249EDC380;
  v16 = [v0 screenBlendMode];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v18, v19);

  *(v1 + 80) = v34[0];
  *(v1 + 88) = v34[1];
  [v0 alpha];
  v20 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v20);

  *(v1 + 96) = strcpy(v34, "alpha: ");
  *(v1 + 104) = 0xE700000000000000;
  strcpy(v34, "innerWidth: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  [v0 innerWidth];
  v21 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v21);

  v22 = v34[1];
  *(v1 + 112) = v34[0];
  *(v1 + 120) = v22;
  strcpy(v34, "outerWidth: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  [v0 outerWidth];
  v23 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v23);

  v24 = v34[1];
  *(v1 + 128) = v34[0];
  *(v1 + 136) = v24;
  sub_249ED6DC0();

  [v0 keylineBlurRadius];
  v25 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v25);

  *(v1 + 144) = 0xD000000000000013;
  *(v1 + 152) = 0x8000000249EDC3A0;
  sub_249ED6DC0();

  [v0 keylineInputAmount];
  v26 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v26);

  *(v1 + 160) = 0xD000000000000014;
  *(v1 + 168) = 0x8000000249EDC3C0;
  sub_249ED6DC0();

  [v0 keylineInputStart];
  v27 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v27);

  *(v1 + 176) = 0xD000000000000013;
  *(v1 + 184) = 0x8000000249EDC3E0;
  sub_249ED6DC0();

  [v0 keylineInputEnd];
  v28 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v28);

  *(v1 + 192) = 0xD000000000000011;
  *(v1 + 200) = 0x8000000249EDC400;
  strcpy(v34, "edrGain: ");
  WORD1(v34[1]) = 0;
  HIDWORD(v34[1]) = -385875968;
  [v0 edrGain];
  v29 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v29);

  v30 = v34[1];
  *(v1 + 208) = v34[0];
  *(v1 + 216) = v30;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000010, 0x8000000249EDC420);
  [v0 keylineOutsets];
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDC440);
  [v0 keylineFadeLengths];
  sub_249ED6E40();
  *(v1 + 240) = 0;
  *(v1 + 248) = 0xE000000000000000;
  sub_249ED6DC0();

  [v0 normalizedStartLocation];
  v31 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v31);

  *(v1 + 256) = 0xD000000000000019;
  *(v1 + 264) = 0x8000000249EDC460;
  sub_249ED6DC0();

  [v0 normalizedStopLocation];
  v32 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v32);

  *(v1 + 272) = 0xD000000000000018;
  *(v1 + 280) = 0x8000000249EDC480;
  return v1;
}

id sub_249EBE750(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v6 = a1;
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EBACC0();
  sub_249ED6C50();

  v7 = sub_249ED6C60();

  return v7;
}

uint64_t sub_249EBE840(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EBACC0();
  v3 = sub_249ED6C50();

  return v3;
}

uint64_t DRPDropletIntelligentLightStyle.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6567644564726168;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6567644574666F73;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

id _sSo37DRPDropletContextAdaptiveKeylineStyleC9DropletUIEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id keypath_get_5Tm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

void sub_249EBEB3C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176);
    v20 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160);
    v21 = v3;
    v22 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192);
    v23 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208);
    v4 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112);
    v16 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96);
    v17 = v4;
    v5 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144);
    v18 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128);
    v19 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48);
    v12 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32);
    v13 = v6;
    v7 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80);
    v14 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64);
    v15 = v7;
    v8 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16);
    v10 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry);
    v11 = v8;
    if (!sub_249EB74B8(&v10))
    {
      v24[10] = v20;
      v24[11] = v21;
      v24[12] = v22;
      v25 = v23;
      v24[6] = v16;
      v24[7] = v17;
      v24[8] = v18;
      v24[9] = v19;
      v24[2] = v12;
      v24[3] = v13;
      v24[4] = v14;
      v24[5] = v15;
      v9 = *MEMORY[0x277D85000] & *v1;
      v24[0] = v10;
      v24[1] = v11;
      (*(v9 + 144))(v24);
    }
  }
}

BOOL sub_249EBEC5C(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1;
  v5 = *(a1 + 7);
  v21[0] = *(a1 + 5);
  v21[1] = v5;
  v6 = *a2;
  v7 = *(a2 + 5);
  v21[2] = *(a1 + 9);
  v21[3] = v7;
  v8 = *(a2 + 9);
  v21[4] = *(a2 + 7);
  v21[5] = v8;
  if (v4 == v6 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 1), *(a2 + 1)), vceqq_f64(*(a1 + 3), *(a2 + 3))), xmmword_249ED9140)) & 0xF) == 0)
  {
    v9 = a1;
    if (sub_249ED6D30())
    {
      v11 = *(v9 + 21);
      *&a.m31 = *(v9 + 19);
      *&a.m33 = v11;
      v12 = *(v9 + 25);
      *&a.m41 = *(v9 + 23);
      *&a.m43 = v12;
      v13 = *(v9 + 13);
      *&a.m11 = *(v9 + 11);
      *&a.m13 = v13;
      v14 = *(v9 + 17);
      *&a.m21 = *(v9 + 15);
      *&a.m23 = v14;
      v15 = *(a2 + 21);
      *&b.m31 = *(a2 + 19);
      *&b.m33 = v15;
      v16 = *(a2 + 25);
      *&b.m41 = *(a2 + 23);
      *&b.m43 = v16;
      v17 = *(a2 + 13);
      *&b.m11 = *(a2 + 11);
      *&b.m13 = v17;
      v18 = *(a2 + 17);
      *&b.m21 = *(a2 + 15);
      *&b.m23 = v18;
      return CATransform3DEqualToTransform(&a, &b);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_249EBED94(char *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  sub_249EB72C0(v74);
  v4 = v74[5];
  *(v3 + 4) = v74[4];
  *(v3 + 5) = v4;
  v5 = v74[3];
  *(v3 + 2) = v74[2];
  *(v3 + 3) = v5;
  v6 = v74[9];
  *(v3 + 8) = v74[8];
  *(v3 + 9) = v6;
  v7 = v74[7];
  *(v3 + 6) = v74[6];
  *(v3 + 7) = v7;
  *(v3 + 26) = v75;
  v8 = v74[12];
  v9 = v74[10];
  *(v3 + 11) = v74[11];
  *(v3 + 12) = v8;
  *(v3 + 10) = v9;
  v10 = v74[1];
  *v3 = v74[0];
  *(v3 + 1) = v10;
  *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence] = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
  v59.receiver = v1;
  v59.super_class = type metadata accessor for DropletParticipantTrackingView();
  v11 = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v13 = *&a1[v12];
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_249ED5EBC(0, v13[2] + 1, 1, v13);
    *&a1[v12] = v13;
  }

  v17 = v13[2];
  v16 = v13[3];
  if (v17 >= v16 >> 1)
  {
    v13 = sub_249ED5EBC((v16 > 1), v17 + 1, 1, v13);
  }

  v13[2] = v17 + 1;
  sub_249EB74C8(&v58, &v13[v17 + 4]);
  *&a1[v12] = v13;
  swift_endAccess();
  v18 = a1;
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  [v18 center];
  v24 = v23;
  v26 = v25;
  [v18 transform];
  v27 = v62;
  v30 = v61;
  v31 = v60;
  [v18 transform3D];

  *&v41 = v18;
  *(&v41 + 1) = v20;
  *&v42 = v22;
  *(&v42 + 1) = v24;
  *v43 = v26;
  *&v43[24] = v30;
  *&v43[8] = v31;
  *&v43[40] = v27;
  *&v43[120] = v36;
  *&v43[136] = v37;
  *&v43[152] = v38;
  *&v43[168] = v39;
  *&v43[56] = v32;
  *&v43[72] = v33;
  *&v43[88] = v34;
  *&v43[104] = v35;
  nullsub_1();
  v28 = &v14[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  *v28 = v41;
  *(v28 + 1) = v42;
  *(v28 + 4) = *&v43[32];
  *(v28 + 5) = *&v43[48];
  *(v28 + 2) = *v43;
  *(v28 + 3) = *&v43[16];
  *(v28 + 8) = *&v43[96];
  *(v28 + 9) = *&v43[112];
  *(v28 + 6) = *&v43[64];
  *(v28 + 7) = *&v43[80];
  *(v28 + 26) = v40;
  *(v28 + 11) = *&v43[144];
  *(v28 + 12) = *&v43[160];
  *(v28 + 10) = *&v43[128];
  v54 = *&v43[128];
  v55 = *&v43[144];
  v56 = *&v43[160];
  v50 = *&v43[64];
  v51 = *&v43[80];
  v52 = *&v43[96];
  v53 = *&v43[112];
  v46 = *v43;
  v47 = *&v43[16];
  v57 = v40;
  v48 = *&v43[32];
  v49 = *&v43[48];
  v44 = v41;
  v45 = v42;
  if (sub_249EB74B8(&v44))
  {
  }

  else
  {
    v70 = v54;
    v71 = v55;
    v72 = v56;
    v73 = v57;
    v66 = v50;
    v67 = v51;
    v68 = v52;
    v69 = v53;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v49;
    v60 = v44;
    v61 = v45;
    (*((*MEMORY[0x277D85000] & *v14) + 0x90))(&v60);

    *(v28 + 10) = *&v43[128];
    *(v28 + 11) = *&v43[144];
    *(v28 + 12) = *&v43[160];
    *(v28 + 26) = v40;
    *(v28 + 6) = *&v43[64];
    *(v28 + 7) = *&v43[80];
    *(v28 + 8) = *&v43[96];
    *(v28 + 9) = *&v43[112];
    *(v28 + 2) = *v43;
    *(v28 + 3) = *&v43[16];
    *(v28 + 4) = *&v43[32];
    *(v28 + 5) = *&v43[48];
    v18 = v14;
    *v28 = v41;
    *(v28 + 1) = v42;
  }

  return v14;
}

id sub_249EBF4F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DropletParticipantTrackingView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_249EBF58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 216))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_249EBF5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_249EBF654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id DRPDropletAnimationCoordinator.defaultBehaviorSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings;
  if (*(v0 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings))
  {
    v2 = *(v0 + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings);
  }

  else
  {
    v2 = sub_249EBF7B8();
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_249EBF7B8()
{
  v0 = sub_249ED6C10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  [v5 setDefaultValues];
  [v5 setBehaviorType_];
  result = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (result)
  {
    v7 = result;
    (*(v1 + 104))(v4, *MEMORY[0x277D6C040], v0);
    sub_249ED6C00();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    (*(v1 + 8))(v4, v0);
    v18[15] = 1;
    sub_249EA62D4();
    v14 = sub_249ED6C20();
    LODWORD(v15) = v9;
    LODWORD(v16) = v11;
    LODWORD(v17) = v13;
    [v7 setFrameRateRange:v14 highFrameRateReason:{v15, v16, v17}];
    [v5 setPreferredFrameRateRange_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DRPDropletAnimationCoordinator.apply(_:animated:tracking:containerView:contextView:)(DRPDropletViewConfiguration *_, Swift::Bool animated, Swift::Bool tracking, DRPDropletContainerView *containerView, DRPDropletContextView *contextView)
{
  v7 = MEMORY[0x28223BE20](_, animated);
  v8 = v5;
  v10 = v9;
  v12 = v11;
  v878 = v13;
  v879 = v14;
  v15 = v7;
  v16 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  v17 = swift_beginAccess();
  v18 = *&v12[v16];
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x24C205BD0](0);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_367;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;
  v6 = v1126;
  swift_endAccess();
  v21 = *&v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 16];
  v1139[0] = *&v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType];
  v1139[1] = v21;
  v23 = *&v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 48];
  v22 = *&v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 64];
  v24 = *&v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 32];
  v1140 = v20[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80];
  v1139[3] = v23;
  v1139[4] = v22;
  v1139[2] = v24;
  sub_249EB0270(v1139, v1126);

  v881 = v15;
  v882 = v8;
  if (![v15 keylineStyle])
  {
    goto LABEL_31;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = [v25 color];
    swift_unknownObjectRelease();
    v27 = 0;
    *&v1137[0] = v26;
LABEL_32:
    v1138 = 1;
LABEL_33:
    if (v1140 == 2)
    {
      sub_249EB73F4(v1137);
      v44 = sub_249ED6C60();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v1126[2] = sub_249ECABB0;
      *(&v1126[2] + 1) = v45;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249ECB0A4;
      *(&v1126[1] + 1) = &block_descriptor_248;
      v46 = _Block_copy(v1126);

      [v881 addAnimationCompletionBlockForKeyPath:v44 animationCompletionBlock:v46];
      v47 = v46;
      v15 = v881;
      _Block_release(v47);
    }

    else
    {
      if (!v27)
      {
        sub_249EB73F4(v1137);
      }

      sub_249EB73F4(v1139);
      v15 = v881;
    }

    goto LABEL_38;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    [v28 adaptiveColorMatrix];
    swift_unknownObjectRelease();
    v1137[2] = v1126[2];
    v1137[3] = v1126[3];
    v1137[4] = v1126[4];
    v1137[0] = v1126[0];
    v1137[1] = v1126[1];
    v27 = 1;
    v1138 = 0;
    goto LABEL_33;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
LABEL_31:
    v27 = 0;
    *&v1137[0] = 0;
    goto LABEL_32;
  }

  v30 = v29;
  swift_unknownObjectRetain();
  [v30 preferAudioReactivity];
  [v30 screenBlendMode];
  [v30 alpha];
  swift_unknownObjectRelease_n();
  v15 = v881;
  if (v1140 != 2)
  {
    v17 = *&v12[v16];
    v819 = v10;
    if (v17 >> 62)
    {
      goto LABEL_370;
    }

    v31 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  while (1)
  {
LABEL_38:
    [v15 copy];
    sub_249ED6D90();
    swift_unknownObjectRelease();
    type metadata accessor for DRPDropletViewConfiguration(0);
    swift_dynamicCast();
    v881 = OBJC_IVAR___DRPDropletAnimationCoordinator_id;
    v48 = *(v8 + OBJC_IVAR___DRPDropletAnimationCoordinator_id);
    v880 = OBJC_IVAR___DRPDropletAnimationCoordinator_appliedViewConfigurationMapTable;
    v49 = *(v8 + OBJC_IVAR___DRPDropletAnimationCoordinator_appliedViewConfigurationMapTable);
    v50 = *&v1125[0];
    v51 = v12;
    v52 = v10;
    v53 = v50;
    v54 = v51;
    v55 = v52;
    v855 = v54;
    v56 = [v49 objectForKey_];
    if (v56)
    {
      v57 = v56;
      [v56 boundaryOutsets];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      *&v1125[0] = v59;
      *(&v1125[0] + 1) = v61;
      *&v1125[1] = v63;
      *(&v1125[1] + 1) = v65;
      sub_249ECA58C(v1125);
      v1126[5] = v1125[5];
      v1126[6] = v1125[6];
      v1126[7] = v1125[7];
      LOBYTE(v1126[8]) = v1125[8];
      v1126[1] = v1125[1];
      v1126[2] = v1125[2];
      v1126[3] = v1125[3];
      v1126[4] = v1125[4];
      v1126[0] = v1125[0];
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v66 = v1126[5];
    v67 = v1126[7];
    *(v6 + 50) = v1126[6];
    *(v6 + 51) = v67;
    *(v6 + 832) = v1126[8];
    v68 = v1126[1];
    v69 = v1126[3];
    *(v6 + 46) = v1126[2];
    *(v6 + 47) = v69;
    *(v6 + 48) = v1126[4];
    *(v6 + 49) = v66;
    *(v6 + 44) = v1126[0];
    *(v6 + 45) = v68;
    [v53 boundaryOutsets];
    *&v1127 = v70;
    *(&v1127 + 1) = v71;
    *&v1128 = v72;
    *(&v1128 + 1) = v73;
    sub_249ECA58C(&v1127);
    v74 = v1134;
    *(v6 + 32) = v1133;
    *(v6 + 33) = v74;
    *(v6 + 544) = *(v6 + 408);
    v75 = v1130;
    *(v6 + 28) = v1129;
    *(v6 + 29) = v75;
    v76 = v1132;
    *(v6 + 30) = v1131;
    *(v6 + 31) = v76;
    v77 = v1128;
    *(v6 + 26) = v1127;
    *(v6 + 27) = v77;
    nullsub_1();
    v78 = *(v6 + 48);
    v1126[5] = *(v6 + 49);
    v79 = *(v6 + 49);
    v1126[6] = *(v6 + 50);
    v80 = *(v6 + 50);
    v1126[7] = *(v6 + 51);
    v81 = *(v6 + 44);
    v1126[1] = *(v6 + 45);
    v82 = *(v6 + 45);
    v1126[2] = *(v6 + 46);
    v83 = *(v6 + 46);
    v1126[3] = *(v6 + 47);
    v84 = *(v6 + 47);
    v1126[4] = *(v6 + 48);
    v1126[0] = *(v6 + 44);
    v85 = *(v6 + 30);
    *(v6 + 216) = *(v6 + 31);
    v86 = *(v6 + 33);
    *(v6 + 232) = *(v6 + 32);
    *(v6 + 248) = v86;
    v87 = *(v6 + 26);
    *(v6 + 152) = *(v6 + 27);
    v88 = *(v6 + 29);
    *(v6 + 168) = *(v6 + 28);
    *(v6 + 184) = v88;
    *(v6 + 200) = v85;
    *(v6 + 136) = v87;
    v89 = *(v6 + 51);
    *(v6 + 41) = v80;
    *(v6 + 42) = v89;
    *(v6 + 37) = v83;
    *(v6 + 38) = v84;
    *(v6 + 39) = v78;
    *(v6 + 40) = v79;
    LOBYTE(v1126[8]) = *(v6 + 832);
    *(v6 + 264) = *(v6 + 544);
    *(v6 + 688) = *(v6 + 832);
    *(v6 + 35) = v81;
    *(v6 + 36) = v82;
    v867 = v55;
    if (sub_249ECA598(&v1135) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(v1136, v1161, &qword_27EF29878, &qword_249ED91D0);

        v90 = v54;
        sub_249EB371C(v1136, &qword_27EF29878, &qword_249ED91D0);
        v91 = *(v6 + 4);
        *(v6 + 250) = *(v6 + 5);
        v92 = *(v6 + 7);
        *(v6 + 251) = *(v6 + 6);
        *(v6 + 252) = v92;
        v93 = *v6;
        *(v6 + 246) = *(v6 + 1);
        v94 = *(v6 + 3);
        *(v6 + 247) = *(v6 + 2);
        *(v6 + 248) = v94;
        *(v6 + 249) = v91;
        *(v6 + 4048) = *(v6 + 128);
        *(v6 + 245) = v93;
        v95 = v1161;
LABEL_50:
        sub_249EB371C(v95, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_67;
      }

LABEL_45:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(v1136, v1161, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_46;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_45;
    }

    *(v6 + 223) = *(&v1126[13] + 8);
    *(v6 + 224) = *(&v1126[14] + 8);
    *(v6 + 225) = *(&v1126[15] + 8);
    *(v6 + 219) = *(&v1126[9] + 8);
    *(v6 + 220) = *(&v1126[10] + 8);
    *(v6 + 221) = *(&v1126[11] + 8);
    *(v6 + 222) = *(&v1126[12] + 8);
    *(v6 + 218) = *(&v1126[8] + 8);
    *(v6 + 250) = *(&v1126[13] + 8);
    *(v6 + 251) = *(&v1126[14] + 8);
    *(v6 + 252) = *(&v1126[15] + 8);
    *(v6 + 246) = *(&v1126[9] + 8);
    *(v6 + 247) = *(&v1126[10] + 8);
    *(v6 + 248) = *(&v1126[11] + 8);
    *(v6 + 249) = *(&v1126[12] + 8);
    *(v6 + 245) = *(&v1126[8] + 8);
    v100 = *(v6 + 4);
    *(v6 + 241) = *(v6 + 5);
    v101 = *(v6 + 7);
    *(v6 + 242) = *(v6 + 6);
    *(v6 + 243) = v101;
    v102 = *v6;
    *(v6 + 237) = *(v6 + 1);
    v103 = *(v6 + 3);
    *(v6 + 238) = *(v6 + 2);
    *(v6 + 239) = v103;
    *(v6 + 240) = v100;
    *(v6 + 3616) = BYTE8(v1126[16]);
    *(v6 + 4048) = BYTE8(v1126[16]);
    *(v6 + 3904) = *(v6 + 128);
    *(v6 + 236) = v102;
    sub_249EB0208(v1136, v1157, &qword_27EF29878, &qword_249ED91D0);
    v104 = sub_249ECA624(&v1160, v1161);
    sub_249EB371C(v1158, &qword_27EF29878, &qword_249ED91D0);
    v105 = *(v6 + 4);
    *(v6 + 232) = *(v6 + 5);
    v106 = *(v6 + 7);
    *(v6 + 233) = *(v6 + 6);
    *(v6 + 234) = v106;
    v107 = *v6;
    *(v6 + 228) = *(v6 + 1);
    v108 = *(v6 + 3);
    *(v6 + 229) = *(v6 + 2);
    *(v6 + 230) = v108;
    *(v6 + 231) = v105;
    *(v6 + 3760) = *(v6 + 128);
    *(v6 + 227) = v107;
    sub_249EB371C(v1159, &qword_27EF29878, &qword_249ED91D0);
    if (v104)
    {

      v90 = v54;
      v55 = v867;

      v95 = v1136;
      goto LABEL_50;
    }

LABEL_46:
    v96 = sub_249ED6C60();
    v97 = [v53 animationBlockForKeyPath_];

    if (v97)
    {
      v98 = swift_allocObject();
      *(v98 + 16) = v97;
      v99 = sub_249ECB0A0;
    }

    else
    {
      v99 = 0;
      v98 = 0;
    }

    v109 = sub_249ED6C60();
    v110 = [v53 animationCompletionBlockForKeyPath_];

    if (v110)
    {
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      v833 = sub_249ECB054;
      v845 = v111;
    }

    else
    {
      v833 = 0;
      v845 = 0;
    }

    *&v1125[0] = v48;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v112;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x797261646E756F62, 0xEF7374657374754FLL);
    v113 = sub_249ED6C60();

    v821 = [v867 acquireGeometricChangeAssertionForReason_];

    if (v878)
    {
      v114 = v99;
      v115 = sub_249ED6C60();
      v116 = [v53 behaviorSettingsForKeyPath_];

      if (!v116)
      {
        v117 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v116 = sub_249EC9F44(0x797261646E756F62, 0xEF7374657374754FLL);
        swift_unknownObjectRelease();
      }

      v819 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v118 = swift_allocObject();
      *(v118 + 16) = sub_249EC8B1C;
      *(v118 + 24) = 0;
      *(v118 + 32) = 1;
      *(v118 + 33) = v879 & 1;
      v90 = v855;
      v55 = v867;
      *(v118 + 40) = v53;
      *(v118 + 48) = v855;
      *(v118 + 56) = v867;
      *(v118 + 64) = v99;
      *(v118 + 72) = v98;
      v119 = swift_allocObject();
      *(v119 + 16) = v833;
      *(v119 + 24) = v845;
      *(v119 + 32) = 1;
      *(v119 + 33) = v879 & 1;
      *(v119 + 40) = v53;
      *(v119 + 48) = v855;
      *(v119 + 56) = v867;
      *(v119 + 64) = 0x797261646E756F62;
      *(v119 + 72) = 0xEF7374657374754FLL;
      *(v119 + 80) = sub_249ECA46C;
      *(v119 + 88) = 0;
      *(v119 + 96) = v821;
      v120 = v53;
      v121 = v855;
      v122 = v867;
      sub_249E9F560(v114, v98);

      sub_249E9F560(v833, v845);
      swift_unknownObjectRetain();
      (v819)(0x797261646E756F62, 0xEF7374657374754FLL, v120, v116, v879 & 1, sub_249ECB058, v118, sub_249ECB0A8, v119);

      sub_249E9F570(v114, v98);
      sub_249E9F570(v833, v845);
      swift_unknownObjectRelease();
      sub_249EB371C(v1136, &qword_27EF29878, &qword_249ED91D0);
      v8 = v882;
      swift_unknownObjectRelease();

      v6 = v1126;
    }

    else
    {
      v123 = objc_opt_self();
      v124 = swift_allocObject();
      *(v124 + 16) = sub_249EC8B1C;
      *(v124 + 24) = 0;
      *(v124 + 32) = 0;
      *(v124 + 33) = v879 & 1;
      v90 = v855;
      *(v124 + 40) = v53;
      *(v124 + 48) = v855;
      *(v124 + 56) = v867;
      *(v124 + 64) = v99;
      *(v124 + 72) = v98;
      *&v1126[2] = sub_249ECA5AC;
      *(&v1126[2] + 1) = v124;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_2;
      v125 = _Block_copy(v1126);
      v126 = v53;
      v808 = v855;
      v819 = v867;
      sub_249E9F560(v99, v98);

      [v123 _performWithoutRetargetingAnimations_];
      _Block_release(v125);
      if (v110)
      {

        v833(1, 0);
        sub_249E9F570(v833, v845);
      }

      v127 = [v126 anyAnimationCompletionBlock];
      v6 = v1126;
      if (v127)
      {
        v128 = v127;
        v129 = sub_249ED6C60();
        (v128)[2](v128, v129, 1, 0);

        _Block_release(v128);
      }

      v8 = v882;
      if (v821)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v99, v98);
        sub_249E9F570(v833, v845);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v99, v98);
        sub_249E9F570(v833, v845);
      }

      sub_249EB371C(v1136, &qword_27EF29878, &qword_249ED91D0);
      v55 = v867;
    }

LABEL_67:
    v130 = *&v881[v8];
    v131 = *(v8 + v880);
    v132 = v53;
    v133 = v90;
    v134 = v55;
    v135 = [v131 objectForKey_];
    if (v135)
    {
      v136 = v135;
      v137 = [v135 boundaryEdges];

      *&v1125[0] = v137;
      sub_249ECA5C8(v1125);
      v138 = v1125[5];
      v139 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v139;
      *(v6 + 128) = v1125[8];
      v140 = v1125[1];
      v141 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v141;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v138;
      *v6 = v1125[0];
      *(v6 + 1) = v140;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v142 = *(v6 + 4);
    v1121 = *(v6 + 5);
    v143 = *(v6 + 7);
    v1122 = *(v6 + 6);
    v1123 = v143;
    v144 = *v6;
    v1117 = *(v6 + 1);
    v145 = *(v6 + 3);
    v1118 = *(v6 + 2);
    v1119 = v145;
    v1120 = v142;
    v1124 = *(v6 + 128);
    v1116 = v144;
    *&v1103[0] = [v132 boundaryEdges];
    sub_249ECA5C8(v1103);
    v1110 = v1103[5];
    v1111 = v1103[6];
    v1112 = v1103[7];
    v1106 = v1103[1];
    v1107 = v1103[2];
    v1108 = v1103[3];
    v1109 = v1103[4];
    v1113 = v1104;
    v1105 = v1103[0];
    nullsub_1();
    v146 = v1121;
    v147 = v1123;
    *(v6 + 6) = v1122;
    *(v6 + 7) = v147;
    *(v6 + 128) = v1124;
    v148 = v1117;
    v149 = v1119;
    *(v6 + 2) = v1118;
    *(v6 + 3) = v149;
    *(v6 + 4) = v1120;
    *(v6 + 5) = v146;
    *v6 = v1116;
    *(v6 + 1) = v148;
    *(v6 + 216) = v1110;
    *(v6 + 232) = v1111;
    *(v6 + 248) = v1112;
    *(v6 + 264) = v1113;
    *(v6 + 152) = v1106;
    *(v6 + 168) = v1107;
    *(v6 + 184) = v1108;
    *(v6 + 200) = v1109;
    *(v6 + 136) = v1105;
    v1114[5] = v1121;
    v1114[6] = v1122;
    v1114[7] = v1123;
    v1115 = v1124;
    v1114[1] = v1117;
    v1114[2] = v1118;
    v1114[3] = v1119;
    v1114[4] = v1120;
    v1114[0] = v1116;
    if (sub_249ECA598(v1114) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v1116, v1159, &qword_27EF29878, &qword_249ED91D0);

        sub_249EB371C(&v1116, &qword_27EF29878, &qword_249ED91D0);
        v150 = *(v6 + 4);
        *(v6 + 232) = *(v6 + 5);
        v151 = *(v6 + 7);
        *(v6 + 233) = *(v6 + 6);
        *(v6 + 234) = v151;
        v152 = *v6;
        *(v6 + 228) = *(v6 + 1);
        v153 = *(v6 + 3);
        *(v6 + 229) = *(v6 + 2);
        *(v6 + 230) = v153;
        *(v6 + 231) = v150;
        *(v6 + 3760) = *(v6 + 128);
        *(v6 + 227) = v152;
        v154 = v1159;
LABEL_79:
        sub_249EB371C(v154, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_96;
      }

LABEL_74:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v1116, v1159, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_75;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_74;
    }

    *(v6 + 205) = *(&v1126[13] + 8);
    *(v6 + 206) = *(&v1126[14] + 8);
    *(v6 + 207) = *(&v1126[15] + 8);
    *(v6 + 201) = *(&v1126[9] + 8);
    *(v6 + 202) = *(&v1126[10] + 8);
    *(v6 + 203) = *(&v1126[11] + 8);
    *(v6 + 204) = *(&v1126[12] + 8);
    *(v6 + 200) = *(&v1126[8] + 8);
    *(v6 + 232) = *(&v1126[13] + 8);
    *(v6 + 233) = *(&v1126[14] + 8);
    *(v6 + 234) = *(&v1126[15] + 8);
    *(v6 + 228) = *(&v1126[9] + 8);
    *(v6 + 229) = *(&v1126[10] + 8);
    *(v6 + 230) = *(&v1126[11] + 8);
    *(v6 + 231) = *(&v1126[12] + 8);
    *(v6 + 227) = *(&v1126[8] + 8);
    v159 = *(v6 + 4);
    *(v6 + 223) = *(v6 + 5);
    v160 = *(v6 + 7);
    *(v6 + 224) = *(v6 + 6);
    *(v6 + 225) = v160;
    v161 = *v6;
    *(v6 + 219) = *(v6 + 1);
    v162 = *(v6 + 3);
    *(v6 + 220) = *(v6 + 2);
    *(v6 + 221) = v162;
    *(v6 + 222) = v159;
    *(v6 + 3328) = BYTE8(v1126[16]);
    *(v6 + 3760) = BYTE8(v1126[16]);
    *(v6 + 3616) = *(v6 + 128);
    *(v6 + 218) = v161;
    sub_249EB0208(&v1116, v1155, &qword_27EF29878, &qword_249ED91D0);
    v163 = sub_249ECA624(v1158, v1159);
    sub_249EB371C(v1156, &qword_27EF29878, &qword_249ED91D0);
    v164 = *(v6 + 4);
    *(v6 + 214) = *(v6 + 5);
    v165 = *(v6 + 7);
    *(v6 + 215) = *(v6 + 6);
    *(v6 + 216) = v165;
    v166 = *v6;
    *(v6 + 210) = *(v6 + 1);
    v167 = *(v6 + 3);
    *(v6 + 211) = *(v6 + 2);
    *(v6 + 212) = v167;
    *(v6 + 213) = v164;
    *(v6 + 3472) = *(v6 + 128);
    *(v6 + 209) = v166;
    sub_249EB371C(v1157, &qword_27EF29878, &qword_249ED91D0);
    if (v163)
    {

      v154 = &v1116;
      goto LABEL_79;
    }

LABEL_75:
    v155 = sub_249ED6C60();
    v156 = [v132 animationBlockForKeyPath_];

    if (v156)
    {
      v157 = swift_allocObject();
      *(v157 + 16) = v156;
      v158 = sub_249ECB0A0;
    }

    else
    {
      v158 = 0;
      v157 = 0;
    }

    v168 = sub_249ED6C60();
    v169 = [v132 animationCompletionBlockForKeyPath_];

    v868 = v133;
    if (v169)
    {
      v834 = swift_allocObject();
      v834[2] = v169;
      v856 = sub_249ECB054;
    }

    else
    {
      v856 = 0;
      v834 = 0;
    }

    *&v1125[0] = v130;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v170;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x797261646E756F62, 0xED00007365676445);
    v171 = sub_249ED6C60();

    v822 = [v134 acquireGeometricChangeAssertionForReason_];

    if (v878)
    {
      v819 = v157;
      v172 = sub_249ED6C60();
      v173 = [v132 behaviorSettingsForKeyPath_];

      if (!v173)
      {
        v174 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v173 = sub_249EC9F44(0x797261646E756F62, 0xED00007365676445);
        swift_unknownObjectRelease();
      }

      v809 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v175 = swift_allocObject();
      *(v175 + 16) = sub_249EC95F8;
      *(v175 + 24) = 0;
      *(v175 + 32) = 1;
      *(v175 + 33) = v879 & 1;
      *(v175 + 40) = v132;
      *(v175 + 48) = v133;
      *(v175 + 56) = v134;
      *(v175 + 64) = v158;
      *(v175 + 72) = v157;
      v176 = swift_allocObject();
      *(v176 + 16) = v856;
      *(v176 + 24) = v834;
      *(v176 + 32) = 1;
      *(v176 + 33) = v879 & 1;
      *(v176 + 40) = v132;
      *(v176 + 48) = v133;
      *(v176 + 56) = v134;
      strcpy((v176 + 64), "boundaryEdges");
      *(v176 + 78) = -4864;
      *(v176 + 80) = sub_249ECA3F4;
      *(v176 + 88) = 0;
      *(v176 + 96) = v822;
      v177 = v132;
      v178 = v868;
      v179 = v134;
      sub_249E9F560(v158, v157);

      sub_249E9F560(v856, v834);
      swift_unknownObjectRetain();
      v809(0x797261646E756F62, 0xED00007365676445, v177, v173, v879 & 1, sub_249ECB058, v175, sub_249ECB0A8, v176);

      v133 = v868;
      sub_249E9F570(v158, v157);
      sub_249E9F570(v856, v834);
      swift_unknownObjectRelease();
      sub_249EB371C(&v1116, &qword_27EF29878, &qword_249ED91D0);
      v8 = v882;
      swift_unknownObjectRelease();

      v6 = v1126;
    }

    else
    {
      v180 = objc_opt_self();
      v181 = swift_allocObject();
      *(v181 + 16) = sub_249EC95F8;
      *(v181 + 24) = 0;
      *(v181 + 32) = 0;
      *(v181 + 33) = v879 & 1;
      *(v181 + 40) = v132;
      *(v181 + 48) = v133;
      *(v181 + 56) = v134;
      *(v181 + 64) = v158;
      *(v181 + 72) = v157;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v181;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_7;
      v182 = _Block_copy(v1126);
      v183 = v132;
      v802 = v133;
      v810 = v134;
      sub_249E9F560(v158, v157);

      [v180 _performWithoutRetargetingAnimations_];
      _Block_release(v182);
      if (v169)
      {

        v856(1, 0);
        sub_249E9F570(v856, v834);
      }

      v184 = [v183 anyAnimationCompletionBlock];
      v6 = v1126;
      if (v184)
      {
        v185 = v184;
        v186 = sub_249ED6C60();
        (v185)[2](v185, v186, 1, 0);

        _Block_release(v185);
      }

      v8 = v882;
      if (v822)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v158, v157);
        sub_249E9F570(v856, v834);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v158, v157);
        sub_249E9F570(v856, v834);
      }

      sub_249EB371C(&v1116, &qword_27EF29878, &qword_249ED91D0);
    }

LABEL_96:
    v857 = *&v881[v8];
    v187 = *(v8 + v880);
    v188 = v132;
    v189 = v133;
    v190 = v134;
    v191 = [v187 objectForKey_];
    if (v191)
    {
      v192 = v191;
      v193 = [v191 dropletColor];

      *&v1125[0] = v193;
      sub_249ECA5D4(v1125);
      v194 = v1125[5];
      v195 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v195;
      *(v6 + 128) = v1125[8];
      v196 = v1125[1];
      v197 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v197;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v194;
      *v6 = v1125[0];
      *(v6 + 1) = v196;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v198 = *(v6 + 4);
    v1099 = *(v6 + 5);
    v199 = *(v6 + 7);
    v1100 = *(v6 + 6);
    v1101 = v199;
    v200 = *v6;
    v1095 = *(v6 + 1);
    v201 = *(v6 + 3);
    v1096 = *(v6 + 2);
    v1097 = v201;
    v1098 = v198;
    v1102 = *(v6 + 128);
    v1094 = v200;
    v202 = [v188 dropletColor];
    *&v1081[0] = v202;
    sub_249ECA5D4(v1081);
    v1088 = v1081[5];
    v1089 = v1081[6];
    v1090 = v1081[7];
    v1084 = v1081[1];
    v1085 = v1081[2];
    v1086 = v1081[3];
    v1087 = v1081[4];
    v1091 = v1082;
    v1083 = v1081[0];
    nullsub_1();
    v203 = v1099;
    v204 = v1101;
    *(v6 + 6) = v1100;
    *(v6 + 7) = v204;
    *(v6 + 128) = v1102;
    v205 = v1095;
    v206 = v1097;
    *(v6 + 2) = v1096;
    *(v6 + 3) = v206;
    *(v6 + 4) = v1098;
    *(v6 + 5) = v203;
    *v6 = v1094;
    *(v6 + 1) = v205;
    *(v6 + 216) = v1088;
    *(v6 + 232) = v1089;
    *(v6 + 248) = v1090;
    *(v6 + 264) = v1091;
    *(v6 + 152) = v1084;
    *(v6 + 168) = v1085;
    *(v6 + 184) = v1086;
    *(v6 + 200) = v1087;
    *(v6 + 136) = v1083;
    v1092[5] = v1099;
    v1092[6] = v1100;
    v1092[7] = v1101;
    v1093 = v1102;
    v1092[1] = v1095;
    v1092[2] = v1096;
    v1092[3] = v1097;
    v1092[4] = v1098;
    v1092[0] = v1094;
    if (sub_249ECA598(v1092) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        v207 = v202;
        sub_249EB0208(&v1094, v1157, &qword_27EF29878, &qword_249ED91D0);

        sub_249EB371C(&v1094, &qword_27EF29878, &qword_249ED91D0);
        v208 = *(v6 + 4);
        *(v6 + 214) = *(v6 + 5);
        v209 = *(v6 + 7);
        *(v6 + 215) = *(v6 + 6);
        *(v6 + 216) = v209;
        v210 = *v6;
        *(v6 + 210) = *(v6 + 1);
        v211 = *(v6 + 3);
        *(v6 + 211) = *(v6 + 2);
        *(v6 + 212) = v211;
        *(v6 + 213) = v208;
        *(v6 + 3472) = *(v6 + 128);
        *(v6 + 209) = v210;
        v212 = v1157;
LABEL_108:
        sub_249EB371C(v212, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_126;
      }

LABEL_103:
      memcpy(v1125, v1126, 0x109uLL);
      v213 = v202;
      sub_249EB0208(&v1094, v1157, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_104;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_103;
    }

    v218 = v190;
    v219 = v188;
    *(v6 + 187) = *(&v1126[13] + 8);
    *(v6 + 188) = *(&v1126[14] + 8);
    *(v6 + 189) = *(&v1126[15] + 8);
    *(v6 + 183) = *(&v1126[9] + 8);
    *(v6 + 184) = *(&v1126[10] + 8);
    *(v6 + 185) = *(&v1126[11] + 8);
    *(v6 + 186) = *(&v1126[12] + 8);
    *(v6 + 182) = *(&v1126[8] + 8);
    *(v6 + 214) = *(&v1126[13] + 8);
    *(v6 + 215) = *(&v1126[14] + 8);
    *(v6 + 216) = *(&v1126[15] + 8);
    *(v6 + 210) = *(&v1126[9] + 8);
    *(v6 + 211) = *(&v1126[10] + 8);
    *(v6 + 212) = *(&v1126[11] + 8);
    *(v6 + 213) = *(&v1126[12] + 8);
    *(v6 + 209) = *(&v1126[8] + 8);
    v220 = *(v6 + 4);
    *(v6 + 205) = *(v6 + 5);
    v221 = *(v6 + 7);
    *(v6 + 206) = *(v6 + 6);
    *(v6 + 207) = v221;
    v222 = *v6;
    *(v6 + 201) = *(v6 + 1);
    v223 = *(v6 + 3);
    *(v6 + 202) = *(v6 + 2);
    *(v6 + 203) = v223;
    *(v6 + 204) = v220;
    *(v6 + 3040) = BYTE8(v1126[16]);
    *(v6 + 3472) = BYTE8(v1126[16]);
    *(v6 + 3328) = *(v6 + 128);
    *(v6 + 200) = v222;
    v224 = v202;
    sub_249EB0208(&v1094, v1153, &qword_27EF29878, &qword_249ED91D0);
    v225 = sub_249ECA624(v1156, v1157);
    sub_249EB371C(v1154, &qword_27EF29878, &qword_249ED91D0);
    v226 = *(v6 + 4);
    *(v6 + 196) = *(v6 + 5);
    v227 = *(v6 + 7);
    *(v6 + 197) = *(v6 + 6);
    *(v6 + 198) = v227;
    v228 = *v6;
    *(v6 + 192) = *(v6 + 1);
    v229 = *(v6 + 3);
    *(v6 + 193) = *(v6 + 2);
    *(v6 + 194) = v229;
    *(v6 + 195) = v226;
    *(v6 + 3184) = *(v6 + 128);
    *(v6 + 191) = v228;
    sub_249EB371C(v1155, &qword_27EF29878, &qword_249ED91D0);
    if (v225)
    {

      v188 = v219;
      v190 = v218;

      v212 = &v1094;
      goto LABEL_108;
    }

    v188 = v219;
    v190 = v218;
LABEL_104:
    v846 = v189;
    v214 = sub_249ED6C60();
    v215 = [v188 animationBlockForKeyPath_];

    if (v215)
    {
      v216 = swift_allocObject();
      *(v216 + 16) = v215;
      v217 = sub_249ECB0A0;
    }

    else
    {
      v217 = 0;
      v216 = 0;
    }

    v230 = sub_249ED6C60();
    v231 = [v188 animationCompletionBlockForKeyPath_];

    v232 = v188;
    if (v231)
    {
      v835 = swift_allocObject();
      v835[2] = v231;
      v869 = sub_249ECB054;
    }

    else
    {
      v869 = 0;
      v835 = 0;
    }

    *&v1125[0] = v857;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v233;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x4374656C706F7264, 0xEC000000726F6C6FLL);
    v234 = sub_249ED6C60();

    v858 = [v190 acquireGeometricChangeAssertionForReason_];

    v823 = v202;
    if (v878)
    {
      v235 = v216;
      v236 = sub_249ED6C60();
      v237 = [v188 behaviorSettingsForKeyPath_];

      if (!v237)
      {
        v238 = [v8 defaultBehaviorSettings];
        swift_getObjectType();
        v237 = sub_249EC9F44(0x4374656C706F7264, 0xEC000000726F6C6FLL);
        swift_unknownObjectRelease();
      }

      v811 = *(v8 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v819 = *(v8 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock + 8);
      v239 = swift_allocObject();
      *(v239 + 16) = sub_249EC9648;
      *(v239 + 24) = 0;
      *(v239 + 32) = 1;
      *(v239 + 33) = v879 & 1;
      v189 = v846;
      *(v239 + 40) = v188;
      *(v239 + 48) = v846;
      *(v239 + 56) = v190;
      *(v239 + 64) = v217;
      *(v239 + 72) = v235;
      v240 = swift_allocObject();
      *(v240 + 16) = v869;
      *(v240 + 24) = v835;
      *(v240 + 32) = 1;
      *(v240 + 33) = v879 & 1;
      *(v240 + 40) = v188;
      *(v240 + 48) = v846;
      *(v240 + 56) = v190;
      strcpy((v240 + 64), "dropletColor");
      *(v240 + 77) = 0;
      *(v240 + 78) = -5120;
      *(v240 + 80) = sub_249ECA330;
      *(v240 + 88) = 0;
      *(v240 + 96) = v858;
      v776 = v188;
      v241 = v846;
      v242 = v190;
      sub_249E9F560(v217, v235);

      sub_249E9F560(v869, v835);
      swift_unknownObjectRetain();
      v811(0x4374656C706F7264, 0xEC000000726F6C6FLL, v776, v237, v879 & 1, sub_249ECB058, v239, sub_249ECB0A8, v240);

      sub_249E9F570(v217, v235);
      sub_249E9F570(v869, v835);
      swift_unknownObjectRelease();
      sub_249EB371C(&v1094, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v8 = v882;

      v6 = v1126;
    }

    else
    {
      v243 = objc_opt_self();
      v244 = swift_allocObject();
      *(v244 + 16) = sub_249EC9648;
      *(v244 + 24) = 0;
      *(v244 + 32) = 0;
      *(v244 + 33) = v879 & 1;
      *(v244 + 40) = v188;
      *(v244 + 48) = v846;
      *(v244 + 56) = v190;
      *(v244 + 64) = v217;
      *(v244 + 72) = v216;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v244;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_14_0;
      v245 = _Block_copy(v1126);
      v819 = v232;
      v246 = v232;
      v247 = v846;
      v812 = v190;
      sub_249E9F560(v217, v216);

      [v243 _performWithoutRetargetingAnimations_];
      _Block_release(v245);
      if (v231)
      {

        v869(1, 0);
        sub_249E9F570(v869, v835);
      }

      v248 = [v246 anyAnimationCompletionBlock];
      if (v248)
      {
        v249 = v248;
        v250 = sub_249ED6C60();
        (v249)[2](v249, v250, 1, 0);

        _Block_release(v249);
      }

      v6 = v1126;
      if (v858)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v217, v216);
        sub_249E9F570(v869, v835);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v217, v216);
        sub_249E9F570(v869, v835);
      }

      sub_249EB371C(&v1094, &qword_27EF29878, &qword_249ED91D0);
      v8 = v882;
      v189 = v846;
      v188 = v819;
    }

LABEL_126:
    v251 = *&v881[v8];
    v252 = *(v8 + v880);
    v253 = v188;
    v254 = v189;
    v255 = v190;
    v859 = v254;
    v256 = [v252 objectForKey_];
    if (v256)
    {
      v257 = v256;
      [v256 dropletRadius];
      v259 = v258;

      *&v1125[0] = v259;
      sub_249ECA5E0(v1125);
      v260 = v1125[5];
      v261 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v261;
      *(v6 + 128) = v1125[8];
      v262 = v1125[1];
      v263 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v263;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v260;
      *v6 = v1125[0];
      *(v6 + 1) = v262;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v264 = *(v6 + 7);
    v1078 = *(v6 + 6);
    v1079 = v264;
    v1080 = *(v6 + 128);
    v265 = *(v6 + 3);
    v1074 = *(v6 + 2);
    v1075 = v265;
    v266 = *(v6 + 5);
    v1076 = *(v6 + 4);
    v1077 = v266;
    v267 = *(v6 + 1);
    v1072 = *v6;
    v1073 = v267;
    v268 = v253;
    [v253 dropletRadius];
    *&v1059[0] = v269;
    sub_249ECA5E0(v1059);
    v1067 = v1059[6];
    v1068 = v1059[7];
    v1069 = v1060;
    v1063 = v1059[2];
    v1064 = v1059[3];
    v1065 = v1059[4];
    v1066 = v1059[5];
    v1061 = v1059[0];
    v1062 = v1059[1];
    nullsub_1();
    v270 = v1077;
    v272 = v1078;
    v271 = v1079;
    *(v6 + 6) = v1078;
    *(v6 + 7) = v271;
    v273 = v1073;
    v275 = v1074;
    v274 = v1075;
    *(v6 + 2) = v1074;
    *(v6 + 3) = v274;
    v276 = v1075;
    v278 = v1076;
    v277 = v1077;
    *(v6 + 4) = v1076;
    *(v6 + 5) = v277;
    v279 = v1073;
    v280 = v1072;
    *v6 = v1072;
    *(v6 + 1) = v279;
    v281 = v1065;
    *(v6 + 216) = v1066;
    v282 = v1068;
    *(v6 + 232) = v1067;
    *(v6 + 248) = v282;
    v283 = v1061;
    *(v6 + 152) = v1062;
    v284 = v1064;
    *(v6 + 168) = v1063;
    *(v6 + 184) = v284;
    *(v6 + 200) = v281;
    *(v6 + 136) = v283;
    v1070[6] = v272;
    v1070[7] = v1079;
    v1070[2] = v275;
    v1070[3] = v276;
    v1070[4] = v278;
    v1070[5] = v270;
    *(v6 + 128) = v1080;
    *(v6 + 264) = v1069;
    v1071 = v1080;
    v1070[0] = v280;
    v1070[1] = v273;
    if (sub_249ECA598(v1070) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v1072, v1155, &qword_27EF29878, &qword_249ED91D0);

        v285 = v254;
        sub_249EB371C(&v1072, &qword_27EF29878, &qword_249ED91D0);
        v286 = *(v6 + 4);
        *(v6 + 196) = *(v6 + 5);
        v287 = *(v6 + 7);
        *(v6 + 197) = *(v6 + 6);
        *(v6 + 198) = v287;
        v288 = *v6;
        *(v6 + 192) = *(v6 + 1);
        v289 = *(v6 + 3);
        *(v6 + 193) = *(v6 + 2);
        *(v6 + 194) = v289;
        *(v6 + 195) = v286;
        *(v6 + 3184) = *(v6 + 128);
        *(v6 + 191) = v288;
        v290 = v1155;
LABEL_138:
        sub_249EB371C(v290, &qword_27EF29878, &qword_249ED91D0);
LABEL_155:
        v305 = v255;
        goto LABEL_156;
      }

LABEL_133:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v1072, v1155, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_134;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_133;
    }

    *(v6 + 169) = *(&v1126[13] + 8);
    *(v6 + 170) = *(&v1126[14] + 8);
    *(v6 + 171) = *(&v1126[15] + 8);
    *(v6 + 165) = *(&v1126[9] + 8);
    *(v6 + 166) = *(&v1126[10] + 8);
    *(v6 + 167) = *(&v1126[11] + 8);
    *(v6 + 168) = *(&v1126[12] + 8);
    *(v6 + 164) = *(&v1126[8] + 8);
    *(v6 + 196) = *(&v1126[13] + 8);
    *(v6 + 197) = *(&v1126[14] + 8);
    *(v6 + 198) = *(&v1126[15] + 8);
    *(v6 + 192) = *(&v1126[9] + 8);
    *(v6 + 193) = *(&v1126[10] + 8);
    *(v6 + 194) = *(&v1126[11] + 8);
    *(v6 + 195) = *(&v1126[12] + 8);
    *(v6 + 191) = *(&v1126[8] + 8);
    v294 = *(v6 + 4);
    *(v6 + 187) = *(v6 + 5);
    v295 = *(v6 + 7);
    *(v6 + 188) = *(v6 + 6);
    *(v6 + 189) = v295;
    v296 = *v6;
    *(v6 + 183) = *(v6 + 1);
    v297 = *(v6 + 3);
    *(v6 + 184) = *(v6 + 2);
    *(v6 + 185) = v297;
    *(v6 + 186) = v294;
    *(v6 + 2752) = BYTE8(v1126[16]);
    *(v6 + 3184) = BYTE8(v1126[16]);
    *(v6 + 3040) = *(v6 + 128);
    *(v6 + 182) = v296;
    sub_249EB0208(&v1072, v1151, &qword_27EF29878, &qword_249ED91D0);
    v298 = sub_249ECA624(v1154, v1155);
    sub_249EB371C(v1152, &qword_27EF29878, &qword_249ED91D0);
    v299 = *(v6 + 4);
    *(v6 + 178) = *(v6 + 5);
    v300 = *(v6 + 7);
    *(v6 + 179) = *(v6 + 6);
    *(v6 + 180) = v300;
    v301 = *v6;
    *(v6 + 174) = *(v6 + 1);
    v302 = *(v6 + 3);
    *(v6 + 175) = *(v6 + 2);
    *(v6 + 176) = v302;
    *(v6 + 177) = v299;
    *(v6 + 2896) = *(v6 + 128);
    *(v6 + 173) = v301;
    sub_249EB371C(v1153, &qword_27EF29878, &qword_249ED91D0);
    if (v298)
    {

      v285 = v254;
      v290 = &v1072;
      goto LABEL_138;
    }

LABEL_134:
    v291 = sub_249ED6C60();
    v292 = [v253 animationBlockForKeyPath_];

    if (v292)
    {
      v293 = swift_allocObject();
      *(v293 + 16) = v292;
      v870 = sub_249ECB0A0;
    }

    else
    {
      v870 = 0;
      v293 = 0;
    }

    v303 = sub_249ED6C60();
    v304 = [v253 animationCompletionBlockForKeyPath_];

    v305 = v255;
    if (v304)
    {
      v306 = swift_allocObject();
      *(v306 + 16) = v304;
      v836 = v306;
      v847 = sub_249ECB054;
    }

    else
    {
      v836 = 0;
      v847 = 0;
    }

    *&v1125[0] = v251;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v307;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x5274656C706F7264, 0xED00007375696461);
    v308 = sub_249ED6C60();

    v824 = [v255 acquireGeometricChangeAssertionForReason_];

    if ((v878 & 1) == 0)
    {
      v320 = objc_opt_self();
      v321 = swift_allocObject();
      *(v321 + 16) = sub_249EC96B4;
      *(v321 + 24) = 0;
      *(v321 + 32) = 0;
      *(v321 + 33) = v879 & 1;
      *(v321 + 40) = v268;
      *(v321 + 48) = v859;
      *(v321 + 56) = v255;
      *(v321 + 64) = v870;
      *(v321 + 72) = v293;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v321;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      v285 = v859;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_21;
      v322 = _Block_copy(v1126);
      v323 = v268;
      v814 = v859;
      v819 = v255;
      sub_249E9F560(v870, v293);

      [v320 _performWithoutRetargetingAnimations_];
      _Block_release(v322);
      if (v304)
      {

        v847(1, 0);
        sub_249E9F570(v847, v836);
      }

      v324 = [v323 anyAnimationCompletionBlock];
      if (v324)
      {
        v325 = v324;
        v326 = sub_249ED6C60();
        (v325)[2](v325, v326, 1, 0);

        _Block_release(v325);
      }

      v8 = v882;
      if (v824)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v870, v293);
        sub_249E9F570(v847, v836);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v870, v293);
        sub_249E9F570(v847, v836);
      }

      sub_249EB371C(&v1072, &qword_27EF29878, &qword_249ED91D0);
      v6 = v1126;
      goto LABEL_155;
    }

    v309 = v268;
    v310 = v293;
    v311 = sub_249ED6C60();
    v312 = [v309 behaviorSettingsForKeyPath_];

    if (!v312)
    {
      v313 = [v8 defaultBehaviorSettings];
      swift_getObjectType();
      v312 = sub_249EC9F44(0x5274656C706F7264, 0xED00007375696461);
      swift_unknownObjectRelease();
    }

    v813 = v312;
    v819 = *(v8 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
    v314 = swift_allocObject();
    *(v314 + 16) = sub_249EC96B4;
    *(v314 + 24) = 0;
    *(v314 + 32) = 1;
    *(v314 + 33) = v879 & 1;
    *(v314 + 40) = v309;
    v315 = v309;
    v285 = v859;
    *(v314 + 48) = v859;
    *(v314 + 56) = v255;
    *(v314 + 64) = v870;
    *(v314 + 72) = v310;
    v316 = swift_allocObject();
    *(v316 + 16) = v847;
    *(v316 + 24) = v836;
    *(v316 + 32) = 1;
    *(v316 + 33) = v879 & 1;
    *(v316 + 40) = v315;
    *(v316 + 48) = v859;
    v803 = v315;
    *(v316 + 56) = v255;
    strcpy((v316 + 64), "dropletRadius");
    *(v316 + 78) = -4864;
    *(v316 + 80) = sub_249ECA1FC;
    *(v316 + 88) = 0;
    *(v316 + 96) = v824;
    v317 = v315;
    v318 = v859;
    v319 = v305;
    sub_249E9F560(v870, v310);

    sub_249E9F560(v847, v836);
    swift_unknownObjectRetain();
    (v819)(0x5274656C706F7264, 0xED00007375696461, v317, v813, v879 & 1, sub_249ECB058, v314, sub_249ECB0A8, v316);

    sub_249E9F570(v870, v310);
    sub_249E9F570(v847, v836);
    swift_unknownObjectRelease();
    sub_249EB371C(&v1072, &qword_27EF29878, &qword_249ED91D0);
    swift_unknownObjectRelease();
    v8 = v882;

    v6 = v1126;
    v268 = v803;
LABEL_156:
    v327 = *&v881[v8];
    v328 = *(v8 + v880);
    v329 = v268;
    v330 = v285;
    v860 = v305;
    v871 = v330;
    v331 = [v328 objectForKey_];
    if (v331)
    {
      v332 = v331;
      v333 = [v331 disableDropletEffectFilters];

      LOBYTE(v1125[0]) = v333;
      sub_249ECA5EC(v1125);
      v334 = v1125[5];
      v335 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v335;
      *(v6 + 128) = v1125[8];
      v336 = v1125[1];
      v337 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v337;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v334;
      *v6 = v1125[0];
      *(v6 + 1) = v336;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v338 = *(v6 + 7);
    v1056 = *(v6 + 6);
    v1057 = v338;
    v1058 = *(v6 + 128);
    v339 = *(v6 + 3);
    v1052 = *(v6 + 2);
    v1053 = v339;
    v340 = *(v6 + 5);
    v1054 = *(v6 + 4);
    v1055 = v340;
    v341 = *(v6 + 1);
    v1050 = *v6;
    v1051 = v341;
    LOBYTE(v1037[0]) = [v329 disableDropletEffectFilters];
    sub_249ECA5EC(v1037);
    v1044 = v1037[5];
    v1045 = v1037[6];
    v1046 = v1037[7];
    v1047 = v1038;
    v1041 = v1037[2];
    v1042 = v1037[3];
    v1043 = v1037[4];
    v1039 = v1037[0];
    v1040 = v1037[1];
    nullsub_1();
    v342 = v1055;
    v344 = v1056;
    v343 = v1057;
    *(v6 + 6) = v1056;
    *(v6 + 7) = v343;
    v345 = v1051;
    v347 = v1052;
    v346 = v1053;
    *(v6 + 2) = v1052;
    *(v6 + 3) = v346;
    v348 = v1053;
    v350 = v1054;
    v349 = v1055;
    *(v6 + 4) = v1054;
    *(v6 + 5) = v349;
    v351 = v1051;
    v352 = v1050;
    *v6 = v1050;
    *(v6 + 1) = v351;
    v353 = v1043;
    *(v6 + 216) = v1044;
    v354 = v1046;
    *(v6 + 232) = v1045;
    *(v6 + 248) = v354;
    v355 = v1039;
    *(v6 + 152) = v1040;
    v356 = v1042;
    *(v6 + 168) = v1041;
    *(v6 + 184) = v356;
    *(v6 + 200) = v353;
    *(v6 + 136) = v355;
    v1048[6] = v344;
    v1048[7] = v1057;
    v1048[2] = v347;
    v1048[3] = v348;
    v1048[4] = v350;
    v1048[5] = v342;
    *(v6 + 128) = v1058;
    *(v6 + 264) = v1047;
    v1049 = v1058;
    v1048[0] = v352;
    v1048[1] = v345;
    if (sub_249ECA598(v1048) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v1050, v1153, &qword_27EF29878, &qword_249ED91D0);

        v357 = v8;
        v358 = v871;

        sub_249EB371C(&v1050, &qword_27EF29878, &qword_249ED91D0);
        v359 = *(v6 + 4);
        *(v6 + 178) = *(v6 + 5);
        v360 = *(v6 + 7);
        *(v6 + 179) = *(v6 + 6);
        *(v6 + 180) = v360;
        v361 = *v6;
        *(v6 + 174) = *(v6 + 1);
        v362 = *(v6 + 3);
        *(v6 + 175) = *(v6 + 2);
        *(v6 + 176) = v362;
        *(v6 + 177) = v359;
        *(v6 + 2896) = *(v6 + 128);
        *(v6 + 173) = v361;
        v363 = v1153;
        v364 = v860;
LABEL_168:
        sub_249EB371C(v363, &qword_27EF29878, &qword_249ED91D0);
        v377 = &_OBJC_LABEL_PROTOCOL___BSInvalidatable;
        goto LABEL_185;
      }

LABEL_163:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v1050, v1153, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_164;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_163;
    }

    *(v6 + 151) = *(&v1126[13] + 8);
    *(v6 + 152) = *(&v1126[14] + 8);
    *(v6 + 153) = *(&v1126[15] + 8);
    *(v6 + 147) = *(&v1126[9] + 8);
    *(v6 + 148) = *(&v1126[10] + 8);
    *(v6 + 149) = *(&v1126[11] + 8);
    *(v6 + 150) = *(&v1126[12] + 8);
    *(v6 + 146) = *(&v1126[8] + 8);
    *(v6 + 178) = *(&v1126[13] + 8);
    *(v6 + 179) = *(&v1126[14] + 8);
    *(v6 + 180) = *(&v1126[15] + 8);
    *(v6 + 174) = *(&v1126[9] + 8);
    *(v6 + 175) = *(&v1126[10] + 8);
    *(v6 + 176) = *(&v1126[11] + 8);
    *(v6 + 177) = *(&v1126[12] + 8);
    *(v6 + 173) = *(&v1126[8] + 8);
    v368 = *(v6 + 4);
    *(v6 + 169) = *(v6 + 5);
    v369 = *(v6 + 7);
    *(v6 + 170) = *(v6 + 6);
    *(v6 + 171) = v369;
    v370 = *v6;
    *(v6 + 165) = *(v6 + 1);
    v371 = *(v6 + 3);
    *(v6 + 166) = *(v6 + 2);
    *(v6 + 167) = v371;
    *(v6 + 168) = v368;
    *(v6 + 2464) = BYTE8(v1126[16]);
    *(v6 + 2896) = BYTE8(v1126[16]);
    *(v6 + 2752) = *(v6 + 128);
    *(v6 + 164) = v370;
    sub_249EB0208(&v1050, v1149, &qword_27EF29878, &qword_249ED91D0);
    v372 = sub_249ECA624(v1152, v1153);
    sub_249EB371C(v1150, &qword_27EF29878, &qword_249ED91D0);
    v373 = *(v6 + 4);
    *(v6 + 160) = *(v6 + 5);
    v374 = *(v6 + 7);
    *(v6 + 161) = *(v6 + 6);
    *(v6 + 162) = v374;
    v375 = *v6;
    *(v6 + 156) = *(v6 + 1);
    v376 = *(v6 + 3);
    *(v6 + 157) = *(v6 + 2);
    *(v6 + 158) = v376;
    *(v6 + 159) = v373;
    *(v6 + 2608) = *(v6 + 128);
    *(v6 + 155) = v375;
    sub_249EB371C(v1151, &qword_27EF29878, &qword_249ED91D0);
    if (v372)
    {

      v357 = v8;
      v364 = v860;
      v358 = v871;

      v363 = &v1050;
      goto LABEL_168;
    }

LABEL_164:
    v365 = sub_249ED6C60();
    v366 = [v329 animationBlockForKeyPath_];

    if (v366)
    {
      v848 = swift_allocObject();
      *(v848 + 16) = v366;
      v367 = sub_249ECB0A0;
    }

    else
    {
      v367 = 0;
      v848 = 0;
    }

    v378 = sub_249ED6C60();
    v379 = [v329 animationCompletionBlockForKeyPath_];

    v380 = v329;
    if (v379)
    {
      v381 = swift_allocObject();
      *(v381 + 16) = v379;
      v825 = v381;
      v837 = sub_249ECB054;
    }

    else
    {
      v825 = 0;
      v837 = 0;
    }

    *&v1125[0] = v327;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v382;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0xD00000000000001BLL, 0x8000000249EDAF50);
    v383 = sub_249ED6C60();

    v815 = [v860 acquireGeometricChangeAssertionForReason_];

    v819 = v329;
    if (v878)
    {
      v384 = sub_249ED6C60();
      v385 = [v329 behaviorSettingsForKeyPath_];

      if (!v385)
      {
        v386 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v385 = sub_249EC9F44(0xD00000000000001BLL, 0x8000000249EDAF50);
        swift_unknownObjectRelease();
      }

      v780 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v387 = swift_allocObject();
      *(v387 + 16) = sub_249EC9700;
      *(v387 + 24) = 0;
      *(v387 + 32) = 1;
      *(v387 + 33) = v879 & 1;
      *(v387 + 40) = v380;
      *(v387 + 48) = v871;
      *(v387 + 56) = v860;
      *(v387 + 64) = v367;
      *(v387 + 72) = v848;
      v388 = swift_allocObject();
      *(v388 + 16) = v837;
      *(v388 + 24) = v825;
      *(v388 + 32) = 1;
      *(v388 + 33) = v879 & 1;
      *(v388 + 40) = v380;
      *(v388 + 48) = v871;
      *(v388 + 56) = v860;
      *(v388 + 64) = 0xD00000000000001BLL;
      *(v388 + 72) = 0x8000000249EDAF50;
      *(v388 + 80) = sub_249ECA184;
      *(v388 + 88) = 0;
      *(v388 + 96) = v815;
      v772 = v380;
      v389 = v871;
      v390 = v860;
      sub_249E9F560(v367, v848);

      sub_249E9F560(v837, v825);
      swift_unknownObjectRetain();
      (v780)(0xD00000000000001BLL, 0x8000000249EDAF50, v772, v385, v879 & 1, sub_249ECB058, v387, sub_249ECB0A8, v388);
      v364 = v860;

      sub_249E9F570(v367, v848);
      sub_249E9F570(v837, v825);
      v357 = v882;
      swift_unknownObjectRelease();
      sub_249EB371C(&v1050, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();
      v358 = v871;

      v6 = v1126;
      v377 = &_OBJC_LABEL_PROTOCOL___BSInvalidatable;
      v329 = v819;
    }

    else
    {
      v777 = objc_opt_self();
      v391 = swift_allocObject();
      *(v391 + 16) = sub_249EC9700;
      *(v391 + 24) = 0;
      *(v391 + 32) = 0;
      *(v391 + 33) = v879 & 1;
      *(v391 + 40) = v329;
      *(v391 + 48) = v871;
      *(v391 + 56) = v860;
      *(v391 + 64) = v367;
      *(v391 + 72) = v848;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v391;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_28;
      v392 = _Block_copy(v1126);
      v795 = v329;
      v781 = v871;
      v787 = v860;
      v393 = v367;
      sub_249E9F560(v367, v848);

      [v777 _performWithoutRetargetingAnimations_];
      _Block_release(v392);
      if (v379)
      {

        v837(1, 0);
        sub_249E9F570(v837, v825);
      }

      v394 = [v795 anyAnimationCompletionBlock];
      v377 = &_OBJC_LABEL_PROTOCOL___BSInvalidatable;
      if (v394)
      {
        v395 = v394;
        v396 = sub_249ED6C60();
        (v395)[2](v395, v396, 1, 0);

        _Block_release(v395);
      }

      v6 = v1126;
      if (v815)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v393, v848);
        sub_249E9F570(v837, v825);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v393, v848);
        sub_249E9F570(v837, v825);
      }

      sub_249EB371C(&v1050, &qword_27EF29878, &qword_249ED91D0);
      v357 = v882;
      v364 = v860;
      v358 = v871;
    }

LABEL_185:
    v838 = *&v881[v357];
    v397 = *(v357 + v880);
    v861 = v329;
    v398 = v358;
    v872 = v364;
    v399 = [v397 objectForKey_];
    if (v399)
    {
      v400 = v399;
      v401 = [v399 v377[151]];

      *&v1125[0] = v401;
      sub_249ECA5F4(v1125);
      v402 = v1125[5];
      v403 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v403;
      *(v6 + 128) = v1125[8];
      v404 = v1125[1];
      v405 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v405;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v402;
      *v6 = v1125[0];
      *(v6 + 1) = v404;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v406 = *(v6 + 4);
    v1033 = *(v6 + 5);
    v407 = *(v6 + 7);
    v1034 = *(v6 + 6);
    v1035 = v407;
    v408 = *v6;
    v1029 = *(v6 + 1);
    v409 = *(v6 + 3);
    v1030 = *(v6 + 2);
    v1031 = v409;
    v1032 = v406;
    v1036 = *(v6 + 128);
    v1028 = v408;
    v410 = v861;
    *&v1015[0] = [v861 v377[151]];
    sub_249ECA5F4(v1015);
    v1022 = v1015[5];
    v1023 = v1015[6];
    v1024 = v1015[7];
    v1018 = v1015[1];
    v1019 = v1015[2];
    v1020 = v1015[3];
    v1021 = v1015[4];
    v1025 = v1016;
    v1017 = v1015[0];
    nullsub_1();
    v411 = v1033;
    v412 = v1035;
    *(v6 + 6) = v1034;
    *(v6 + 7) = v412;
    *(v6 + 128) = v1036;
    v413 = v1029;
    v414 = v1031;
    *(v6 + 2) = v1030;
    *(v6 + 3) = v414;
    *(v6 + 4) = v1032;
    *(v6 + 5) = v411;
    *v6 = v1028;
    *(v6 + 1) = v413;
    *(v6 + 216) = v1022;
    *(v6 + 232) = v1023;
    *(v6 + 248) = v1024;
    *(v6 + 264) = v1025;
    *(v6 + 152) = v1018;
    *(v6 + 168) = v1019;
    *(v6 + 184) = v1020;
    *(v6 + 200) = v1021;
    *(v6 + 136) = v1017;
    v1026[5] = v1033;
    v1026[6] = v1034;
    v1026[7] = v1035;
    v1027 = v1036;
    v1026[1] = v1029;
    v1026[2] = v1030;
    v1026[3] = v1031;
    v1026[4] = v1032;
    v1026[0] = v1028;
    if (sub_249ECA598(v1026) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        swift_unknownObjectRetain();
        sub_249EB0208(&v1028, v1151, &qword_27EF29878, &qword_249ED91D0);
        swift_unknownObjectRelease();

        v415 = v872;
        sub_249EB371C(&v1028, &qword_27EF29878, &qword_249ED91D0);
        v416 = *(v6 + 4);
        *(v6 + 160) = *(v6 + 5);
        v417 = *(v6 + 7);
        *(v6 + 161) = *(v6 + 6);
        *(v6 + 162) = v417;
        v418 = *v6;
        *(v6 + 156) = *(v6 + 1);
        v419 = *(v6 + 3);
        *(v6 + 157) = *(v6 + 2);
        *(v6 + 158) = v419;
        *(v6 + 159) = v416;
        *(v6 + 2608) = *(v6 + 128);
        *(v6 + 155) = v418;
        v420 = v1151;
LABEL_197:
        sub_249EB371C(v420, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_215;
      }

LABEL_192:
      v816 = v398;
      memcpy(v1125, v1126, 0x109uLL);
      swift_unknownObjectRetain();
      sub_249EB0208(&v1028, v1151, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_193;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_192;
    }

    *(v6 + 133) = *(&v1126[13] + 8);
    *(v6 + 134) = *(&v1126[14] + 8);
    *(v6 + 135) = *(&v1126[15] + 8);
    *(v6 + 129) = *(&v1126[9] + 8);
    *(v6 + 130) = *(&v1126[10] + 8);
    *(v6 + 131) = *(&v1126[11] + 8);
    *(v6 + 132) = *(&v1126[12] + 8);
    *(v6 + 128) = *(&v1126[8] + 8);
    *(v6 + 160) = *(&v1126[13] + 8);
    *(v6 + 161) = *(&v1126[14] + 8);
    *(v6 + 162) = *(&v1126[15] + 8);
    *(v6 + 156) = *(&v1126[9] + 8);
    *(v6 + 157) = *(&v1126[10] + 8);
    *(v6 + 158) = *(&v1126[11] + 8);
    *(v6 + 159) = *(&v1126[12] + 8);
    *(v6 + 155) = *(&v1126[8] + 8);
    v424 = *(v6 + 4);
    *(v6 + 151) = *(v6 + 5);
    v425 = *(v6 + 7);
    *(v6 + 152) = *(v6 + 6);
    *(v6 + 153) = v425;
    v426 = *v6;
    *(v6 + 147) = *(v6 + 1);
    v427 = *(v6 + 3);
    *(v6 + 148) = *(v6 + 2);
    *(v6 + 149) = v427;
    *(v6 + 150) = v424;
    *(v6 + 2176) = BYTE8(v1126[16]);
    *(v6 + 2608) = BYTE8(v1126[16]);
    *(v6 + 2464) = *(v6 + 128);
    *(v6 + 146) = v426;
    swift_unknownObjectRetain();
    sub_249EB0208(&v1028, v1147, &qword_27EF29878, &qword_249ED91D0);
    v428 = sub_249ECA624(v1150, v1151);
    sub_249EB371C(v1148, &qword_27EF29878, &qword_249ED91D0);
    v429 = *(v6 + 4);
    *(v6 + 142) = *(v6 + 5);
    v430 = *(v6 + 7);
    *(v6 + 143) = *(v6 + 6);
    *(v6 + 144) = v430;
    v431 = *v6;
    *(v6 + 138) = *(v6 + 1);
    v432 = *(v6 + 3);
    *(v6 + 139) = *(v6 + 2);
    *(v6 + 140) = v432;
    *(v6 + 141) = v429;
    *(v6 + 2320) = *(v6 + 128);
    *(v6 + 137) = v431;
    sub_249EB371C(v1149, &qword_27EF29878, &qword_249ED91D0);
    if (v428)
    {
      swift_unknownObjectRelease();
      v410 = v861;

      v415 = v872;
      v420 = &v1028;
      goto LABEL_197;
    }

    v816 = v398;
    v410 = v861;
LABEL_193:
    v421 = sub_249ED6C60();
    v422 = [v410 animationBlockForKeyPath_];

    if (v422)
    {
      v423 = swift_allocObject();
      *(v423 + 16) = v422;
      v849 = sub_249ECB0A0;
    }

    else
    {
      v849 = 0;
      v423 = 0;
    }

    v433 = sub_249ED6C60();
    v434 = [v410 animationCompletionBlockForKeyPath_];

    if (v434)
    {
      v435 = swift_allocObject();
      *(v435 + 16) = v434;
      v819 = sub_249ECB054;
      v826 = v435;
    }

    else
    {
      v819 = 0;
      v826 = 0;
    }

    *&v1125[0] = v838;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v436;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x53656E696C79656BLL, 0xEC000000656C7974);
    v437 = sub_249ED6C60();

    v839 = [v872 acquireGeometricChangeAssertionForReason_];

    if (v878)
    {
      v438 = sub_249ED6C60();
      v439 = [v410 behaviorSettingsForKeyPath_];

      if (!v439)
      {
        v440 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v439 = sub_249EC9F44(0x53656E696C79656BLL, 0xEC000000656C7974);
        swift_unknownObjectRelease();
      }

      v782 = v439;
      v788 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v441 = swift_allocObject();
      *(v441 + 16) = sub_249EC9750;
      *(v441 + 24) = 0;
      *(v441 + 32) = 1;
      *(v441 + 33) = v879 & 1;
      *(v441 + 40) = v410;
      *(v441 + 48) = v816;
      v415 = v872;
      *(v441 + 56) = v872;
      *(v441 + 64) = v849;
      *(v441 + 72) = v423;
      v442 = swift_allocObject();
      v443 = v410;
      v444 = v442;
      *(v442 + 16) = v819;
      *(v442 + 24) = v826;
      *(v442 + 32) = 1;
      *(v442 + 33) = v879 & 1;
      *(v442 + 40) = v443;
      *(v442 + 48) = v816;
      *(v442 + 56) = v872;
      strcpy((v442 + 64), "keylineStyle");
      *(v442 + 77) = 0;
      *(v442 + 78) = -5120;
      *(v442 + 80) = sub_249ECA350;
      *(v442 + 88) = 0;
      *(v442 + 96) = v839;
      v773 = v443;
      v445 = v816;
      v446 = v872;
      sub_249E9F560(v849, v423);

      sub_249E9F560(v819, v826);
      swift_unknownObjectRetain();
      v788(0x53656E696C79656BLL, 0xEC000000656C7974, v773, v782, v879 & 1, sub_249ECB058, v441, sub_249ECB0A8, v444);
      swift_unknownObjectRelease();

      v398 = v816;
      sub_249E9F570(v849, v423);
      sub_249E9F570(v819, v826);
      swift_unknownObjectRelease();
      sub_249EB371C(&v1028, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v6 = v1126;
      v410 = v861;
    }

    else
    {
      v778 = objc_opt_self();
      v447 = swift_allocObject();
      *(v447 + 16) = sub_249EC9750;
      *(v447 + 24) = 0;
      *(v447 + 32) = 0;
      *(v447 + 33) = v879 & 1;
      *(v447 + 40) = v410;
      *(v447 + 48) = v816;
      *(v447 + 56) = v872;
      *(v447 + 64) = v849;
      *(v447 + 72) = v423;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v447;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_35_0;
      v448 = _Block_copy(v1126);
      v796 = v410;
      v783 = v816;
      v789 = v872;
      sub_249E9F560(v849, v423);

      [v778 _performWithoutRetargetingAnimations_];
      _Block_release(v448);
      if (v434)
      {

        v819(1, 0);
        sub_249E9F570(v819, v826);
      }

      v449 = [v796 anyAnimationCompletionBlock];
      if (v449)
      {
        v450 = v449;
        v451 = sub_249ED6C60();
        (v450)[2](v450, v451, 1, 0);

        _Block_release(v450);
      }

      v6 = v1126;
      v398 = v816;
      if (v839)
      {
        [swift_unknownObjectRetain() invalidate];
        swift_unknownObjectRelease();

        sub_249E9F570(v849, v423);
        sub_249E9F570(v819, v826);
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_249E9F570(v849, v423);
        sub_249E9F570(v819, v826);
      }

      sub_249EB371C(&v1028, &qword_27EF29878, &qword_249ED91D0);
      v415 = v872;
    }

LABEL_215:
    v452 = *&v881[v882];
    v453 = *(v882 + v880);
    v454 = v410;
    v862 = v398;
    v873 = v415;
    v455 = [v453 objectForKey_];
    if (v455)
    {
      v456 = v455;
      [v455 containerCornerRadius];
      v458 = v457;

      *&v1125[0] = v458;
      sub_249ECA5E0(v1125);
      v459 = v1125[5];
      v460 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v460;
      *(v6 + 128) = v1125[8];
      v461 = v1125[1];
      v462 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v462;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v459;
      *v6 = v1125[0];
      *(v6 + 1) = v461;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v463 = *(v6 + 4);
    v1011 = *(v6 + 5);
    v464 = *(v6 + 7);
    v1012 = *(v6 + 6);
    v1013 = v464;
    v465 = *v6;
    v1007 = *(v6 + 1);
    v466 = *(v6 + 3);
    v1008 = *(v6 + 2);
    v1009 = v466;
    v1010 = v463;
    v1014 = *(v6 + 128);
    v1006 = v465;
    [v454 containerCornerRadius];
    *&v993[0] = v467;
    sub_249ECA5E0(v993);
    v1000 = v993[5];
    v1001 = v993[6];
    v1002 = v993[7];
    v996 = v993[1];
    v997 = v993[2];
    v998 = v993[3];
    v999 = v993[4];
    v1003 = v994;
    v995 = v993[0];
    nullsub_1();
    v468 = v1011;
    v469 = v1013;
    *(v6 + 6) = v1012;
    *(v6 + 7) = v469;
    *(v6 + 128) = v1014;
    v470 = v1007;
    v471 = v1009;
    *(v6 + 2) = v1008;
    *(v6 + 3) = v471;
    *(v6 + 4) = v1010;
    *(v6 + 5) = v468;
    *v6 = v1006;
    *(v6 + 1) = v470;
    *(v6 + 216) = v1000;
    *(v6 + 232) = v1001;
    *(v6 + 248) = v1002;
    *(v6 + 264) = v1003;
    *(v6 + 152) = v996;
    *(v6 + 168) = v997;
    *(v6 + 184) = v998;
    *(v6 + 200) = v999;
    *(v6 + 136) = v995;
    v1004[5] = v1011;
    v1004[6] = v1012;
    v1004[7] = v1013;
    v1005 = v1014;
    v1004[1] = v1007;
    v1004[2] = v1008;
    v1004[3] = v1009;
    v1004[4] = v1010;
    v1004[0] = v1006;
    if (sub_249ECA598(v1004) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v1006, v1149, &qword_27EF29878, &qword_249ED91D0);

        v472 = v862;
        v473 = v873;

        sub_249EB371C(&v1006, &qword_27EF29878, &qword_249ED91D0);
        v474 = *(v6 + 4);
        *(v6 + 142) = *(v6 + 5);
        v475 = *(v6 + 7);
        *(v6 + 143) = *(v6 + 6);
        *(v6 + 144) = v475;
        v476 = *v6;
        *(v6 + 138) = *(v6 + 1);
        v477 = *(v6 + 3);
        *(v6 + 139) = *(v6 + 2);
        *(v6 + 140) = v477;
        *(v6 + 141) = v474;
        *(v6 + 2320) = *(v6 + 128);
        *(v6 + 137) = v476;
        v478 = v1149;
LABEL_227:
        sub_249EB371C(v478, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_244;
      }

LABEL_222:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v1006, v1149, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_223;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_222;
    }

    *(v6 + 115) = *(&v1126[13] + 8);
    *(v6 + 116) = *(&v1126[14] + 8);
    *(v6 + 117) = *(&v1126[15] + 8);
    *(v6 + 111) = *(&v1126[9] + 8);
    *(v6 + 112) = *(&v1126[10] + 8);
    *(v6 + 113) = *(&v1126[11] + 8);
    *(v6 + 114) = *(&v1126[12] + 8);
    *(v6 + 110) = *(&v1126[8] + 8);
    *(v6 + 142) = *(&v1126[13] + 8);
    *(v6 + 143) = *(&v1126[14] + 8);
    *(v6 + 144) = *(&v1126[15] + 8);
    *(v6 + 138) = *(&v1126[9] + 8);
    *(v6 + 139) = *(&v1126[10] + 8);
    *(v6 + 140) = *(&v1126[11] + 8);
    *(v6 + 141) = *(&v1126[12] + 8);
    *(v6 + 137) = *(&v1126[8] + 8);
    v482 = *(v6 + 4);
    *(v6 + 133) = *(v6 + 5);
    v483 = *(v6 + 7);
    *(v6 + 134) = *(v6 + 6);
    *(v6 + 135) = v483;
    v484 = *v6;
    *(v6 + 129) = *(v6 + 1);
    v485 = *(v6 + 3);
    *(v6 + 130) = *(v6 + 2);
    *(v6 + 131) = v485;
    *(v6 + 132) = v482;
    *(v6 + 1888) = BYTE8(v1126[16]);
    *(v6 + 2320) = BYTE8(v1126[16]);
    *(v6 + 2176) = *(v6 + 128);
    *(v6 + 128) = v484;
    sub_249EB0208(&v1006, v1145, &qword_27EF29878, &qword_249ED91D0);
    v486 = sub_249ECA624(v1148, v1149);
    sub_249EB371C(v1146, &qword_27EF29878, &qword_249ED91D0);
    v487 = *(v6 + 4);
    *(v6 + 124) = *(v6 + 5);
    v488 = *(v6 + 7);
    *(v6 + 125) = *(v6 + 6);
    *(v6 + 126) = v488;
    v489 = *v6;
    *(v6 + 120) = *(v6 + 1);
    v490 = *(v6 + 3);
    *(v6 + 121) = *(v6 + 2);
    *(v6 + 122) = v490;
    *(v6 + 123) = v487;
    *(v6 + 2032) = *(v6 + 128);
    *(v6 + 119) = v489;
    sub_249EB371C(v1147, &qword_27EF29878, &qword_249ED91D0);
    if (v486)
    {

      v472 = v862;
      v473 = v873;

      v478 = &v1006;
      goto LABEL_227;
    }

LABEL_223:
    v479 = sub_249ED6C60();
    v480 = [v454 animationBlockForKeyPath_];

    if (v480)
    {
      v481 = swift_allocObject();
      *(v481 + 16) = v480;
      v850 = sub_249ECB0A0;
    }

    else
    {
      v850 = 0;
      v481 = 0;
    }

    v491 = sub_249ED6C60();
    v492 = [v454 animationCompletionBlockForKeyPath_];

    if (v492)
    {
      v840 = swift_allocObject();
      v840[2] = v492;
      v493 = sub_249ECB054;
    }

    else
    {
      v493 = 0;
      v840 = 0;
    }

    v827 = v493;
    *&v1125[0] = v452;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v494;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0xD000000000000015, 0x8000000249EDAEB0);
    v495 = sub_249ED6C60();

    v804 = [v873 acquireGeometricChangeAssertionForReason_];

    v819 = v454;
    if (v878)
    {
      v496 = v481;
      v497 = sub_249ED6C60();
      v498 = [v454 behaviorSettingsForKeyPath_];

      if (!v498)
      {
        v499 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v498 = sub_249EC9F44(0xD000000000000015, 0x8000000249EDAEB0);
        swift_unknownObjectRelease();
      }

      v790 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v500 = swift_allocObject();
      *(v500 + 16) = sub_249EC97C4;
      *(v500 + 24) = 0;
      *(v500 + 32) = 1;
      *(v500 + 33) = v879 & 1;
      *(v500 + 40) = v454;
      *(v500 + 48) = v862;
      *(v500 + 56) = v873;
      *(v500 + 64) = v850;
      *(v500 + 72) = v496;
      v501 = swift_allocObject();
      *(v501 + 16) = v827;
      *(v501 + 24) = v840;
      *(v501 + 32) = 1;
      *(v501 + 33) = v879 & 1;
      *(v501 + 40) = v454;
      *(v501 + 48) = v862;
      *(v501 + 56) = v873;
      *(v501 + 64) = 0xD000000000000015;
      *(v501 + 72) = 0x8000000249EDAEB0;
      *(v501 + 80) = sub_249ECA208;
      *(v501 + 88) = 0;
      *(v501 + 96) = v804;
      v502 = v454;
      v503 = v862;
      v504 = v873;
      sub_249E9F560(v850, v496);

      sub_249E9F560(v827, v840);
      swift_unknownObjectRetain();
      v790(0xD000000000000015, 0x8000000249EDAEB0, v502, v498, v879 & 1, sub_249ECB058, v500, sub_249ECB0A8, v501);

      sub_249E9F570(v850, v496);
      sub_249E9F570(v827, v840);
      swift_unknownObjectRelease();
      sub_249EB371C(&v1006, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v472 = v862;
      v473 = v873;

      v6 = v1126;
    }

    else
    {
      v784 = objc_opt_self();
      v505 = swift_allocObject();
      *(v505 + 16) = sub_249EC97C4;
      *(v505 + 24) = 0;
      *(v505 + 32) = 0;
      *(v505 + 33) = v879 & 1;
      *(v505 + 40) = v454;
      *(v505 + 48) = v862;
      *(v505 + 56) = v873;
      *(v505 + 64) = v850;
      *(v505 + 72) = v481;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v505;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_42;
      v506 = _Block_copy(v1126);
      v507 = v454;
      v791 = v862;
      v797 = v873;
      sub_249E9F560(v850, v481);

      [v784 _performWithoutRetargetingAnimations_];
      _Block_release(v506);
      if (v492)
      {

        v827(1, 0);
        sub_249E9F570(v827, v840);
      }

      v508 = [v507 anyAnimationCompletionBlock];
      v6 = v1126;
      if (v508)
      {
        v509 = v508;
        v510 = sub_249ED6C60();
        (v509)[2](v509, v510, 1, 0);

        _Block_release(v509);
      }

      if (v804)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v850, v481);
        sub_249E9F570(v827, v840);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v850, v481);
        sub_249E9F570(v827, v840);
      }

      sub_249EB371C(&v1006, &qword_27EF29878, &qword_249ED91D0);
      v472 = v862;
      v473 = v873;
    }

LABEL_244:
    v511 = *&v881[v882];
    v512 = *(v882 + v880);
    v513 = v454;
    v514 = v472;
    v874 = v473;
    v515 = [v512 objectForKey_];
    if (v515)
    {
      v516 = v515;
      [v515 containerWidth];
      v518 = v517;

      *&v1125[0] = v518;
      sub_249ECA5E0(v1125);
      v519 = v1125[5];
      v520 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v520;
      *(v6 + 128) = v1125[8];
      v521 = v1125[1];
      v522 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v522;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v519;
      *v6 = v1125[0];
      *(v6 + 1) = v521;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v523 = *(v6 + 4);
    v989 = *(v6 + 5);
    v524 = *(v6 + 7);
    v990 = *(v6 + 6);
    v991 = v524;
    v525 = *v6;
    v985 = *(v6 + 1);
    v526 = *(v6 + 3);
    v986 = *(v6 + 2);
    v987 = v526;
    v988 = v523;
    v992 = *(v6 + 128);
    v984 = v525;
    [v513 containerWidth];
    *&v971[0] = v527;
    sub_249ECA5E0(v971);
    v978 = v971[5];
    v979 = v971[6];
    v980 = v971[7];
    v974 = v971[1];
    v975 = v971[2];
    v976 = v971[3];
    v977 = v971[4];
    v981 = v972;
    v973 = v971[0];
    nullsub_1();
    v528 = v989;
    v529 = v991;
    *(v6 + 6) = v990;
    *(v6 + 7) = v529;
    *(v6 + 128) = v992;
    v530 = v985;
    v531 = v987;
    *(v6 + 2) = v986;
    *(v6 + 3) = v531;
    *(v6 + 4) = v988;
    *(v6 + 5) = v528;
    *v6 = v984;
    *(v6 + 1) = v530;
    *(v6 + 216) = v978;
    *(v6 + 232) = v979;
    *(v6 + 248) = v980;
    *(v6 + 264) = v981;
    *(v6 + 152) = v974;
    *(v6 + 168) = v975;
    *(v6 + 184) = v976;
    *(v6 + 200) = v977;
    *(v6 + 136) = v973;
    v982[5] = v989;
    v982[6] = v990;
    v982[7] = v991;
    v983 = v992;
    v982[1] = v985;
    v982[2] = v986;
    v982[3] = v987;
    v982[4] = v988;
    v982[0] = v984;
    if (sub_249ECA598(v982) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v984, v1147, &qword_27EF29878, &qword_249ED91D0);

        v532 = v514;
        v533 = v874;

        sub_249EB371C(&v984, &qword_27EF29878, &qword_249ED91D0);
        v534 = *(v6 + 4);
        *(v6 + 124) = *(v6 + 5);
        v535 = *(v6 + 7);
        *(v6 + 125) = *(v6 + 6);
        *(v6 + 126) = v535;
        v536 = *v6;
        *(v6 + 120) = *(v6 + 1);
        v537 = *(v6 + 3);
        *(v6 + 121) = *(v6 + 2);
        *(v6 + 122) = v537;
        *(v6 + 123) = v534;
        *(v6 + 2032) = *(v6 + 128);
        *(v6 + 119) = v536;
        v538 = v1147;
LABEL_256:
        sub_249EB371C(v538, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_274;
      }

LABEL_251:
      v539 = v511;
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v984, v1147, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_252;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_251;
    }

    *(v6 + 97) = *(&v1126[13] + 8);
    *(v6 + 98) = *(&v1126[14] + 8);
    *(v6 + 99) = *(&v1126[15] + 8);
    *(v6 + 93) = *(&v1126[9] + 8);
    *(v6 + 94) = *(&v1126[10] + 8);
    *(v6 + 95) = *(&v1126[11] + 8);
    *(v6 + 96) = *(&v1126[12] + 8);
    *(v6 + 92) = *(&v1126[8] + 8);
    *(v6 + 124) = *(&v1126[13] + 8);
    *(v6 + 125) = *(&v1126[14] + 8);
    *(v6 + 126) = *(&v1126[15] + 8);
    *(v6 + 120) = *(&v1126[9] + 8);
    *(v6 + 121) = *(&v1126[10] + 8);
    *(v6 + 122) = *(&v1126[11] + 8);
    *(v6 + 123) = *(&v1126[12] + 8);
    *(v6 + 119) = *(&v1126[8] + 8);
    v543 = *(v6 + 4);
    *(v6 + 115) = *(v6 + 5);
    v544 = *(v6 + 7);
    *(v6 + 116) = *(v6 + 6);
    *(v6 + 117) = v544;
    v545 = *v6;
    *(v6 + 111) = *(v6 + 1);
    v546 = *(v6 + 3);
    *(v6 + 112) = *(v6 + 2);
    *(v6 + 113) = v546;
    *(v6 + 114) = v543;
    *(v6 + 1600) = BYTE8(v1126[16]);
    *(v6 + 2032) = BYTE8(v1126[16]);
    *(v6 + 1888) = *(v6 + 128);
    *(v6 + 110) = v545;
    sub_249EB0208(&v984, v1143, &qword_27EF29878, &qword_249ED91D0);
    v547 = sub_249ECA624(v1146, v1147);
    sub_249EB371C(v1144, &qword_27EF29878, &qword_249ED91D0);
    v548 = *(v6 + 4);
    *(v6 + 106) = *(v6 + 5);
    v549 = *(v6 + 7);
    *(v6 + 107) = *(v6 + 6);
    *(v6 + 108) = v549;
    v550 = *v6;
    *(v6 + 102) = *(v6 + 1);
    v551 = *(v6 + 3);
    *(v6 + 103) = *(v6 + 2);
    *(v6 + 104) = v551;
    *(v6 + 105) = v548;
    *(v6 + 1744) = *(v6 + 128);
    *(v6 + 101) = v550;
    sub_249EB371C(v1145, &qword_27EF29878, &qword_249ED91D0);
    if (v547)
    {

      v532 = v514;
      v533 = v874;

      v538 = &v984;
      goto LABEL_256;
    }

    v539 = v511;
LABEL_252:
    v540 = sub_249ED6C60();
    v541 = [v513 animationBlockForKeyPath_];

    if (v541)
    {
      v542 = swift_allocObject();
      *(v542 + 16) = v541;
      v851 = v542;
      v863 = sub_249ECB0A0;
    }

    else
    {
      v851 = 0;
      v863 = 0;
    }

    v552 = sub_249ED6C60();
    v553 = [v513 animationCompletionBlockForKeyPath_];

    v554 = v514;
    if (v553)
    {
      v555 = swift_allocObject();
      *(v555 + 16) = v553;
      v828 = v555;
      v841 = sub_249ECB054;
    }

    else
    {
      v828 = 0;
      v841 = 0;
    }

    *&v1125[0] = v539;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v556;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x656E6961746E6F63, 0xEE00687464695772);
    v557 = sub_249ED6C60();

    v817 = [v874 acquireGeometricChangeAssertionForReason_];

    v819 = v513;
    if (v878)
    {
      v558 = sub_249ED6C60();
      v559 = [v513 behaviorSettingsForKeyPath_];

      if (!v559)
      {
        v560 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v559 = sub_249EC9F44(0x656E6961746E6F63, 0xEE00687464695772);
        swift_unknownObjectRelease();
      }

      v798 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v561 = swift_allocObject();
      *(v561 + 16) = sub_249EC9810;
      *(v561 + 24) = 0;
      *(v561 + 32) = 1;
      *(v561 + 33) = v879 & 1;
      *(v561 + 40) = v513;
      *(v561 + 48) = v554;
      v562 = v554;
      v533 = v874;
      *(v561 + 56) = v874;
      *(v561 + 64) = v863;
      *(v561 + 72) = v851;
      v563 = swift_allocObject();
      *(v563 + 16) = v841;
      *(v563 + 24) = v828;
      *(v563 + 32) = 1;
      *(v563 + 33) = v879 & 1;
      *(v563 + 40) = v513;
      *(v563 + 48) = v562;
      v792 = v562;
      *(v563 + 56) = v874;
      strcpy((v563 + 64), "containerWidth");
      *(v563 + 79) = -18;
      *(v563 + 80) = sub_249ECA214;
      *(v563 + 88) = 0;
      *(v563 + 96) = v817;
      v564 = v513;
      v565 = v562;
      v566 = v874;
      sub_249E9F560(v863, v851);

      sub_249E9F560(v841, v828);
      swift_unknownObjectRetain();
      (v798)(0x656E6961746E6F63, 0xEE00687464695772, v564, v559, v879 & 1, sub_249ECB058, v561, sub_249ECB0A8, v563);

      sub_249E9F570(v863, v851);
      sub_249E9F570(v841, v828);
      swift_unknownObjectRelease();
      sub_249EB371C(&v984, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v6 = v1126;
      v513 = v819;
      v532 = v792;
    }

    else
    {
      v567 = objc_opt_self();
      v568 = swift_allocObject();
      *(v568 + 16) = sub_249EC9810;
      *(v568 + 24) = 0;
      *(v568 + 32) = 0;
      *(v568 + 33) = v879 & 1;
      *(v568 + 40) = v513;
      *(v568 + 48) = v514;
      *(v568 + 56) = v874;
      *(v568 + 64) = v863;
      *(v568 + 72) = v851;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v568;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_49;
      v569 = _Block_copy(v1126);
      v570 = v513;
      v799 = v554;
      v805 = v874;
      sub_249E9F560(v863, v851);

      [v567 _performWithoutRetargetingAnimations_];
      _Block_release(v569);
      if (v553)
      {

        v841(1, 0);
        sub_249E9F570(v841, v828);
      }

      v571 = [v570 anyAnimationCompletionBlock];
      if (v571)
      {
        v572 = v571;
        v573 = sub_249ED6C60();
        (v572)[2](v572, v573, 1, 0);

        _Block_release(v572);
      }

      v574 = v554;
      if (v817)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v863, v851);
        sub_249E9F570(v841, v828);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v863, v851);
        sub_249E9F570(v841, v828);
      }

      sub_249EB371C(&v984, &qword_27EF29878, &qword_249ED91D0);
      v6 = v1126;
      v533 = v874;
      v532 = v574;
    }

LABEL_274:
    v575 = *&v881[v882];
    v576 = *(v882 + v880);
    v577 = v513;
    v578 = v532;
    v579 = v533;
    v580 = [v576 objectForKey_];
    if (v580)
    {
      v581 = v580;
      [v580 containerHeight];
      v583 = v582;

      *&v1125[0] = v583;
      sub_249ECA5E0(v1125);
      v584 = v1125[5];
      v585 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v585;
      *(v6 + 128) = v1125[8];
      v586 = v1125[1];
      v587 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v587;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v584;
      *v6 = v1125[0];
      *(v6 + 1) = v586;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v588 = *(v6 + 4);
    v967 = *(v6 + 5);
    v589 = *(v6 + 7);
    v968 = *(v6 + 6);
    v969 = v589;
    v590 = *v6;
    v963 = *(v6 + 1);
    v591 = *(v6 + 3);
    v964 = *(v6 + 2);
    v965 = v591;
    v966 = v588;
    v970 = *(v6 + 128);
    v962 = v590;
    [v577 containerHeight];
    *&v949[0] = v592;
    sub_249ECA5E0(v949);
    v956 = v949[5];
    v957 = v949[6];
    v958 = v949[7];
    v952 = v949[1];
    v953 = v949[2];
    v954 = v949[3];
    v955 = v949[4];
    v959 = v950;
    v951 = v949[0];
    nullsub_1();
    v593 = v967;
    v594 = v969;
    *(v6 + 6) = v968;
    *(v6 + 7) = v594;
    *(v6 + 128) = v970;
    v595 = v963;
    v596 = v965;
    *(v6 + 2) = v964;
    *(v6 + 3) = v596;
    *(v6 + 4) = v966;
    *(v6 + 5) = v593;
    *v6 = v962;
    *(v6 + 1) = v595;
    *(v6 + 216) = v956;
    *(v6 + 232) = v957;
    *(v6 + 248) = v958;
    *(v6 + 264) = v959;
    *(v6 + 152) = v952;
    *(v6 + 168) = v953;
    *(v6 + 184) = v954;
    *(v6 + 200) = v955;
    *(v6 + 136) = v951;
    v960[5] = v967;
    v960[6] = v968;
    v960[7] = v969;
    v961 = v970;
    v960[1] = v963;
    v960[2] = v964;
    v960[3] = v965;
    v960[4] = v966;
    v960[0] = v962;
    if (sub_249ECA598(v960) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v962, v1145, &qword_27EF29878, &qword_249ED91D0);

        sub_249EB371C(&v962, &qword_27EF29878, &qword_249ED91D0);
        v597 = *(v6 + 4);
        *(v6 + 106) = *(v6 + 5);
        v598 = *(v6 + 7);
        *(v6 + 107) = *(v6 + 6);
        *(v6 + 108) = v598;
        v599 = *v6;
        *(v6 + 102) = *(v6 + 1);
        v600 = *(v6 + 3);
        *(v6 + 103) = *(v6 + 2);
        *(v6 + 104) = v600;
        *(v6 + 105) = v597;
        *(v6 + 1744) = *(v6 + 128);
        *(v6 + 101) = v599;
        v601 = v1145;
LABEL_283:
        sub_249EB371C(v601, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_304;
      }

      v819 = v575;
      v602 = v579;
LABEL_285:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v962, v1145, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_286;
    }

    v819 = v575;
    v602 = v579;
    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_285;
    }

    *(v6 + 79) = *(&v1126[13] + 8);
    *(v6 + 80) = *(&v1126[14] + 8);
    *(v6 + 81) = *(&v1126[15] + 8);
    *(v6 + 75) = *(&v1126[9] + 8);
    *(v6 + 76) = *(&v1126[10] + 8);
    *(v6 + 77) = *(&v1126[11] + 8);
    *(v6 + 78) = *(&v1126[12] + 8);
    *(v6 + 74) = *(&v1126[8] + 8);
    *(v6 + 106) = *(&v1126[13] + 8);
    *(v6 + 107) = *(&v1126[14] + 8);
    *(v6 + 108) = *(&v1126[15] + 8);
    *(v6 + 102) = *(&v1126[9] + 8);
    *(v6 + 103) = *(&v1126[10] + 8);
    *(v6 + 104) = *(&v1126[11] + 8);
    *(v6 + 105) = *(&v1126[12] + 8);
    *(v6 + 101) = *(&v1126[8] + 8);
    v603 = *(v6 + 4);
    *(v6 + 97) = *(v6 + 5);
    v604 = *(v6 + 7);
    *(v6 + 98) = *(v6 + 6);
    *(v6 + 99) = v604;
    v605 = *v6;
    *(v6 + 93) = *(v6 + 1);
    v606 = *(v6 + 3);
    *(v6 + 94) = *(v6 + 2);
    *(v6 + 95) = v606;
    *(v6 + 96) = v603;
    *(v6 + 1312) = BYTE8(v1126[16]);
    *(v6 + 1744) = BYTE8(v1126[16]);
    *(v6 + 1600) = *(v6 + 128);
    *(v6 + 92) = v605;
    sub_249EB0208(&v962, v1141, &qword_27EF29878, &qword_249ED91D0);
    v607 = sub_249ECA624(v1144, v1145);
    sub_249EB371C(v1142, &qword_27EF29878, &qword_249ED91D0);
    v608 = *(v6 + 4);
    *(v6 + 88) = *(v6 + 5);
    v609 = *(v6 + 7);
    *(v6 + 89) = *(v6 + 6);
    *(v6 + 90) = v609;
    v610 = *v6;
    *(v6 + 84) = *(v6 + 1);
    v611 = *(v6 + 3);
    *(v6 + 85) = *(v6 + 2);
    *(v6 + 86) = v611;
    *(v6 + 87) = v608;
    *(v6 + 1456) = *(v6 + 128);
    *(v6 + 83) = v610;
    sub_249EB371C(v1143, &qword_27EF29878, &qword_249ED91D0);
    if (v607)
    {

      v579 = v602;
      v601 = &v962;
      goto LABEL_283;
    }

LABEL_286:
    v612 = sub_249ED6C60();
    v613 = [v577 animationBlockForKeyPath_];

    if (v613)
    {
      v614 = swift_allocObject();
      *(v614 + 16) = v613;
      v875 = sub_249ECB0A0;
    }

    else
    {
      v875 = 0;
      v614 = 0;
    }

    v615 = sub_249ED6C60();
    v616 = [v577 animationCompletionBlockForKeyPath_];

    v864 = v578;
    if (v616)
    {
      v617 = swift_allocObject();
      *(v617 + 16) = v616;
      v829 = sub_249ECB054;
      v842 = v617;
    }

    else
    {
      v829 = 0;
      v842 = 0;
    }

    v618 = v602;
    *&v1125[0] = v819;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v619;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x656E6961746E6F63, 0xEF74686769654872);
    v620 = sub_249ED6C60();

    v819 = [v602 acquireGeometricChangeAssertionForReason_];

    if (v878)
    {
      v621 = sub_249ED6C60();
      v622 = [v577 behaviorSettingsForKeyPath_];

      v623 = v577;
      if (!v622)
      {
        v624 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v622 = sub_249EC9F44(0x656E6961746E6F63, 0xEF74686769654872);
        v623 = v577;
        swift_unknownObjectRelease();
      }

      v800 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v625 = swift_allocObject();
      *(v625 + 16) = sub_249EC987C;
      *(v625 + 24) = 0;
      *(v625 + 32) = 1;
      *(v625 + 33) = v879 & 1;
      *(v625 + 40) = v623;
      *(v625 + 48) = v864;
      *(v625 + 56) = v618;
      *(v625 + 64) = v875;
      *(v625 + 72) = v614;
      v626 = swift_allocObject();
      *(v626 + 16) = v829;
      *(v626 + 24) = v842;
      *(v626 + 32) = 1;
      *(v626 + 33) = v879 & 1;
      *(v626 + 40) = v623;
      *(v626 + 48) = v864;
      *(v626 + 56) = v618;
      *(v626 + 64) = 0x656E6961746E6F63;
      *(v626 + 72) = 0xEF74686769654872;
      *(v626 + 80) = sub_249ECA220;
      *(v626 + 88) = 0;
      *(v626 + 96) = v819;
      v775 = v623;
      v627 = v864;
      v628 = v618;
      sub_249E9F560(v875, v614);

      sub_249E9F560(v829, v842);
      swift_unknownObjectRetain();
      (v800)(0x656E6961746E6F63, 0xEF74686769654872, v775, v622, v879 & 1, sub_249ECB058, v625, sub_249ECB0A8, v626);

      sub_249E9F570(v875, v614);
      sub_249E9F570(v829, v842);
      swift_unknownObjectRelease();
      sub_249EB371C(&v962, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v6 = v1126;
      v579 = v618;
      v578 = v864;
    }

    else
    {
      v629 = objc_opt_self();
      v630 = swift_allocObject();
      *(v630 + 16) = sub_249EC987C;
      *(v630 + 24) = 0;
      *(v630 + 32) = 0;
      *(v630 + 33) = v879 & 1;
      *(v630 + 40) = v577;
      *(v630 + 48) = v864;
      *(v630 + 56) = v602;
      *(v630 + 64) = v875;
      *(v630 + 72) = v614;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v630;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_56;
      v631 = _Block_copy(v1126);
      v632 = v577;
      v801 = v864;
      v806 = v618;
      sub_249E9F560(v875, v614);

      [v629 _performWithoutRetargetingAnimations_];
      _Block_release(v631);
      if (v616)
      {

        v829(1, 0);
        sub_249E9F570(v829, v842);
      }

      v579 = v618;
      v633 = [v632 anyAnimationCompletionBlock];
      if (v633)
      {
        v634 = sub_249ED6C60();
        v633[2](v633, v634, 1, 0);

        _Block_release(v633);
      }

      v578 = v864;
      if (v819)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v875, v614);
        sub_249E9F570(v829, v842);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v875, v614);
        sub_249E9F570(v829, v842);
      }

      sub_249EB371C(&v962, &qword_27EF29878, &qword_249ED91D0);
      v6 = v1126;
    }

LABEL_304:
    v635 = *&v881[v882];
    v636 = *(v882 + v880);
    v637 = v577;
    v12 = v578;
    v876 = v579;
    v638 = [v636 objectForKey_];
    if (v638)
    {
      v639 = v638;
      [v638 containerTransform];

      v1125[4] = *(v6 + 87);
      v1125[5] = *(v6 + 88);
      v1125[6] = *(v6 + 89);
      v1125[7] = *(v6 + 90);
      v1125[0] = *(v6 + 83);
      v1125[1] = *(v6 + 84);
      v1125[2] = *(v6 + 85);
      v1125[3] = *(v6 + 86);
      sub_249ECA600(v1125);
      v640 = v1125[5];
      v641 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v641;
      *(v6 + 128) = v1125[8];
      v642 = v1125[1];
      v643 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v643;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v640;
      *v6 = v1125[0];
      *(v6 + 1) = v642;
      nullsub_1();
    }

    else
    {
      sub_249ECA56C(v1126);
    }

    v644 = *(v6 + 4);
    v945 = *(v6 + 5);
    v645 = *(v6 + 7);
    v946 = *(v6 + 6);
    v947 = v645;
    v646 = *v6;
    v941 = *(v6 + 1);
    v647 = *(v6 + 3);
    v942 = *(v6 + 2);
    v943 = v647;
    v944 = v644;
    v948 = *(v6 + 128);
    v940 = v646;
    [v637 containerTransform];
    v924 = v916;
    v925 = v917;
    v926 = v918;
    v927 = v919;
    v920 = v912;
    v921 = v913;
    v922 = v914;
    v923 = v915;
    sub_249ECA600(&v920);
    v934 = v925;
    v935 = v926;
    v936 = v927;
    v937 = v928;
    v930 = v921;
    v931 = v922;
    v932 = v923;
    v933 = v924;
    v929 = v920;
    nullsub_1();
    v648 = v945;
    v649 = v947;
    *(v6 + 6) = v946;
    *(v6 + 7) = v649;
    *(v6 + 128) = v948;
    v650 = v941;
    v651 = v943;
    *(v6 + 2) = v942;
    *(v6 + 3) = v651;
    *(v6 + 4) = v944;
    *(v6 + 5) = v648;
    *v6 = v940;
    *(v6 + 1) = v650;
    *(v6 + 216) = v934;
    *(v6 + 232) = v935;
    *(v6 + 248) = v936;
    *(v6 + 264) = v937;
    *(v6 + 152) = v930;
    *(v6 + 168) = v931;
    *(v6 + 184) = v932;
    *(v6 + 200) = v933;
    *(v6 + 136) = v929;
    v938[5] = v945;
    v938[6] = v946;
    v938[7] = v947;
    v939 = v948;
    v938[1] = v941;
    v938[2] = v942;
    v938[3] = v943;
    v938[4] = v944;
    v938[0] = v940;
    v852 = v12;
    if (sub_249ECA598(v938) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v940, v1143, &qword_27EF29878, &qword_249ED91D0);

        v652 = v876;
        sub_249EB371C(&v940, &qword_27EF29878, &qword_249ED91D0);
        v653 = *(v6 + 4);
        *(v6 + 88) = *(v6 + 5);
        v654 = *(v6 + 7);
        *(v6 + 89) = *(v6 + 6);
        *(v6 + 90) = v654;
        v655 = *v6;
        *(v6 + 84) = *(v6 + 1);
        v656 = *(v6 + 3);
        *(v6 + 85) = *(v6 + 2);
        *(v6 + 86) = v656;
        *(v6 + 87) = v653;
        *(v6 + 1456) = *(v6 + 128);
        *(v6 + 83) = v655;
        v657 = v1143;
LABEL_316:
        sub_249EB371C(v657, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_333;
      }

LABEL_311:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v940, v1143, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_312;
    }

    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    if (sub_249ECA598(v1125) == 1)
    {
      goto LABEL_311;
    }

    v909 = *(&v1126[14] + 8);
    v910 = *(&v1126[15] + 8);
    v905 = *(&v1126[10] + 8);
    v906 = *(&v1126[11] + 8);
    v907 = *(&v1126[12] + 8);
    v908 = *(&v1126[13] + 8);
    v903 = *(&v1126[8] + 8);
    v904 = *(&v1126[9] + 8);
    *(v6 + 88) = *(&v1126[13] + 8);
    *(v6 + 89) = *(&v1126[14] + 8);
    *(v6 + 90) = *(&v1126[15] + 8);
    *(v6 + 84) = *(&v1126[9] + 8);
    *(v6 + 85) = *(&v1126[10] + 8);
    *(v6 + 86) = *(&v1126[11] + 8);
    *(v6 + 87) = *(&v1126[12] + 8);
    *(v6 + 83) = *(&v1126[8] + 8);
    v662 = *(v6 + 4);
    *(v6 + 79) = *(v6 + 5);
    v663 = *(v6 + 7);
    *(v6 + 80) = *(v6 + 6);
    *(v6 + 81) = v663;
    v664 = *v6;
    *(v6 + 75) = *(v6 + 1);
    v665 = *(v6 + 3);
    *(v6 + 76) = *(v6 + 2);
    *(v6 + 77) = v665;
    *(v6 + 78) = v662;
    v911 = BYTE8(v1126[16]);
    *(v6 + 1456) = BYTE8(v1126[16]);
    *(v6 + 1312) = *(v6 + 128);
    *(v6 + 74) = v664;
    sub_249EB0208(&v940, v901, &qword_27EF29878, &qword_249ED91D0);
    v666 = sub_249ECA624(v1142, v1143);
    sub_249EB371C(&v903, &qword_27EF29878, &qword_249ED91D0);
    v667 = *(v6 + 4);
    *(v6 + 70) = *(v6 + 5);
    v668 = *(v6 + 7);
    *(v6 + 71) = *(v6 + 6);
    *(v6 + 72) = v668;
    v669 = *v6;
    *(v6 + 66) = *(v6 + 1);
    v670 = *(v6 + 3);
    *(v6 + 67) = *(v6 + 2);
    *(v6 + 68) = v670;
    *(v6 + 69) = v667;
    *(v6 + 1168) = *(v6 + 128);
    *(v6 + 65) = v669;
    sub_249EB371C(v1141, &qword_27EF29878, &qword_249ED91D0);
    if (v666)
    {

      v652 = v876;
      v657 = &v940;
      goto LABEL_316;
    }

LABEL_312:
    v658 = sub_249ED6C60();
    v659 = [v637 animationBlockForKeyPath_];

    if (v659)
    {
      v660 = swift_allocObject();
      *(v660 + 16) = v659;
      v661 = sub_249ECB0A0;
    }

    else
    {
      v661 = 0;
      v660 = 0;
    }

    v671 = sub_249ED6C60();
    v672 = [v637 animationCompletionBlockForKeyPath_];

    v843 = v637;
    if (v672)
    {
      v830 = swift_allocObject();
      *(v830 + 16) = v672;
      v865 = sub_249ECB054;
    }

    else
    {
      v865 = 0;
      v830 = 0;
    }

    *&v1125[0] = v635;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v673;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0xD000000000000012, 0x8000000249EDAEF0);
    v674 = sub_249ED6C60();

    v819 = [v876 acquireGeometricChangeAssertionForReason_];

    if (v878)
    {
      v807 = v660;
      v675 = sub_249ED6C60();
      v676 = [v637 behaviorSettingsForKeyPath_];

      v793 = v676;
      if (!v676)
      {
        v677 = [v882 defaultBehaviorSettings];
        swift_getObjectType();
        v793 = sub_249EC9F44(0xD000000000000012, 0x8000000249EDAEF0);
        swift_unknownObjectRelease();
      }

      v785 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
      v678 = swift_allocObject();
      *(v678 + 16) = sub_249EC98E8;
      *(v678 + 24) = 0;
      *(v678 + 32) = 1;
      *(v678 + 33) = v879 & 1;
      *(v678 + 40) = v843;
      *(v678 + 48) = v12;
      v652 = v876;
      *(v678 + 56) = v876;
      *(v678 + 64) = v661;
      *(v678 + 72) = v807;
      v679 = swift_allocObject();
      *(v679 + 16) = v865;
      *(v679 + 24) = v830;
      *(v679 + 32) = 1;
      *(v679 + 33) = v879 & 1;
      *(v679 + 40) = v843;
      *(v679 + 48) = v12;
      *(v679 + 56) = v876;
      *(v679 + 64) = 0xD000000000000012;
      *(v679 + 72) = 0x8000000249EDAEF0;
      *(v679 + 80) = sub_249ECA2B8;
      *(v679 + 88) = 0;
      *(v679 + 96) = v819;
      v774 = v843;
      v680 = v12;
      v681 = v876;
      sub_249E9F560(v661, v807);

      sub_249E9F560(v865, v830);
      swift_unknownObjectRetain();
      (v785)(0xD000000000000012, 0x8000000249EDAEF0, v774, v793, v879 & 1, sub_249ECB058, v678, sub_249ECB0A8, v679);

      sub_249E9F570(v661, v807);
      sub_249E9F570(v865, v830);
      swift_unknownObjectRelease();
      sub_249EB371C(&v940, &qword_27EF29878, &qword_249ED91D0);
      swift_unknownObjectRelease();

      v6 = v1126;
      v637 = v843;
    }

    else
    {
      v779 = objc_opt_self();
      v682 = swift_allocObject();
      *(v682 + 16) = sub_249EC98E8;
      *(v682 + 24) = 0;
      *(v682 + 32) = 0;
      *(v682 + 33) = v879 & 1;
      *(v682 + 40) = v637;
      *(v682 + 48) = v12;
      *(v682 + 56) = v876;
      *(v682 + 64) = v661;
      *(v682 + 72) = v660;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v682;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_63;
      v683 = _Block_copy(v1126);
      v684 = v637;
      v685 = v660;
      v786 = v852;
      v794 = v876;
      sub_249E9F560(v661, v660);

      [v779 _performWithoutRetargetingAnimations_];
      _Block_release(v683);
      if (v672)
      {

        v865(1, 0);
        sub_249E9F570(v865, v830);
      }

      v686 = [v684 anyAnimationCompletionBlock];
      v6 = v1126;
      if (v686)
      {
        v687 = v686;
        v688 = sub_249ED6C60();
        (v687)[2](v687, v688, 1, 0);

        _Block_release(v687);
      }

      if (v819)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v661, v685);
        sub_249E9F570(v865, v830);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v661, v685);
        sub_249E9F570(v865, v830);
      }

      sub_249EB371C(&v940, &qword_27EF29878, &qword_249ED91D0);
      v637 = v843;
      v12 = v852;
      v652 = v876;
    }

LABEL_333:
    v689 = *&v881[v882];
    v690 = *(v882 + v880);
    v691 = v637;
    v692 = v12;
    v693 = v652;
    v8 = v692;
    v877 = v693;
    v694 = [v690 objectForKey_];
    if (v694)
    {
      v695 = v694;
      [v694 centerX];
      v697 = v696;

      *&v1125[0] = v697;
      sub_249ECA5E0(v1125);
      v698 = v1125[5];
      v699 = v1125[7];
      *(v6 + 6) = v1125[6];
      *(v6 + 7) = v699;
      *(v6 + 128) = v1125[8];
      v700 = v1125[1];
      v701 = v1125[3];
      *(v6 + 2) = v1125[2];
      *(v6 + 3) = v701;
      *(v6 + 4) = v1125[4];
      *(v6 + 5) = v698;
      *v6 = v1125[0];
      *(v6 + 1) = v700;
      nullsub_1();
      v702 = *(v6 + 7);
      v909 = *(v6 + 6);
      v910 = v702;
      v911 = *(v6 + 128);
      v703 = *(v6 + 3);
      v905 = *(v6 + 2);
      v906 = v703;
      v704 = *(v6 + 5);
      v907 = *(v6 + 4);
      v908 = v704;
      v705 = *(v6 + 1);
      v903 = *v6;
      v904 = v705;
    }

    else
    {
      *&v705 = sub_249ECA56C(&v903);
    }

    [v691 centerX];
    *&v890[0] = v706;
    sub_249ECA5E0(v890);
    v898 = v890[6];
    v899 = v890[7];
    v900 = v891;
    v894 = v890[2];
    v895 = v890[3];
    v896 = v890[4];
    v897 = v890[5];
    v892 = v890[0];
    v893 = v890[1];
    nullsub_1();
    v707 = v908;
    v709 = v909;
    v708 = v910;
    *(v6 + 6) = v909;
    *(v6 + 7) = v708;
    v710 = v904;
    v712 = v905;
    v711 = v906;
    *(v6 + 2) = v905;
    *(v6 + 3) = v711;
    v713 = v906;
    v715 = v907;
    v714 = v908;
    *(v6 + 4) = v907;
    *(v6 + 5) = v714;
    v716 = v904;
    v717 = v903;
    *v6 = v903;
    *(v6 + 1) = v716;
    v718 = v896;
    *(v6 + 216) = v897;
    v719 = v899;
    *(v6 + 232) = v898;
    *(v6 + 248) = v719;
    v720 = v892;
    *(v6 + 152) = v893;
    v721 = v895;
    *(v6 + 168) = v894;
    *(v6 + 184) = v721;
    *(v6 + 200) = v718;
    *(v6 + 136) = v720;
    v901[6] = v709;
    v901[7] = v910;
    v901[2] = v712;
    v901[3] = v713;
    v901[4] = v715;
    v901[5] = v707;
    *(v6 + 128) = v911;
    *(v6 + 264) = v900;
    v902 = v911;
    v901[0] = v717;
    v901[1] = v710;
    if (sub_249ECA598(v901) == 1)
    {
      v1125[5] = *(&v1126[13] + 8);
      v1125[6] = *(&v1126[14] + 8);
      v1125[7] = *(&v1126[15] + 8);
      LOBYTE(v1125[8]) = BYTE8(v1126[16]);
      v1125[1] = *(&v1126[9] + 8);
      v1125[2] = *(&v1126[10] + 8);
      v1125[3] = *(&v1126[11] + 8);
      v1125[4] = *(&v1126[12] + 8);
      v1125[0] = *(&v1126[8] + 8);
      if (sub_249ECA598(v1125) == 1)
      {
        sub_249EB0208(&v903, v1141, &qword_27EF29878, &qword_249ED91D0);

        sub_249EB371C(&v903, &qword_27EF29878, &qword_249ED91D0);
        v722 = *(v6 + 4);
        *(v6 + 70) = *(v6 + 5);
        v723 = *(v6 + 7);
        *(v6 + 71) = *(v6 + 6);
        *(v6 + 72) = v723;
        v724 = *v6;
        *(v6 + 66) = *(v6 + 1);
        v725 = *(v6 + 3);
        *(v6 + 67) = *(v6 + 2);
        *(v6 + 68) = v725;
        *(v6 + 69) = v722;
        *(v6 + 1168) = *(v6 + 128);
        *(v6 + 65) = v724;
        v726 = v1141;
LABEL_361:
        sub_249EB371C(v726, &qword_27EF29878, &qword_249ED91D0);
        goto LABEL_362;
      }

LABEL_340:
      memcpy(v1125, v1126, 0x109uLL);
      sub_249EB0208(&v903, v1141, &qword_27EF29878, &qword_249ED91D0);
      sub_249EB371C(v1125, &qword_27EF29880, qword_249ED91D8);
      goto LABEL_341;
    }

    v888[6] = *(&v1126[14] + 8);
    v888[7] = *(&v1126[15] + 8);
    v889 = BYTE8(v1126[16]);
    v888[2] = *(&v1126[10] + 8);
    v888[3] = *(&v1126[11] + 8);
    v888[4] = *(&v1126[12] + 8);
    v888[5] = *(&v1126[13] + 8);
    v888[0] = *(&v1126[8] + 8);
    v888[1] = *(&v1126[9] + 8);
    if (sub_249ECA598(v888) == 1)
    {
      goto LABEL_340;
    }

    v884[6] = *(&v1126[14] + 8);
    v884[7] = *(&v1126[15] + 8);
    v884[2] = *(&v1126[10] + 8);
    v884[3] = *(&v1126[11] + 8);
    v884[4] = *(&v1126[12] + 8);
    v884[5] = *(&v1126[13] + 8);
    v884[0] = *(&v1126[8] + 8);
    v884[1] = *(&v1126[9] + 8);
    v1125[5] = *(&v1126[13] + 8);
    v1125[6] = *(&v1126[14] + 8);
    v1125[7] = *(&v1126[15] + 8);
    v1125[1] = *(&v1126[9] + 8);
    v1125[2] = *(&v1126[10] + 8);
    v1125[3] = *(&v1126[11] + 8);
    v1125[4] = *(&v1126[12] + 8);
    v1125[0] = *(&v1126[8] + 8);
    v731 = *(v6 + 4);
    *(v6 + 70) = *(v6 + 5);
    v732 = *(v6 + 7);
    *(v6 + 71) = *(v6 + 6);
    *(v6 + 72) = v732;
    v733 = *v6;
    *(v6 + 66) = *(v6 + 1);
    v734 = *(v6 + 3);
    *(v6 + 67) = *(v6 + 2);
    *(v6 + 68) = v734;
    *(v6 + 69) = v731;
    v885 = BYTE8(v1126[16]);
    LOBYTE(v1125[8]) = BYTE8(v1126[16]);
    *(v6 + 1168) = *(v6 + 128);
    *(v6 + 65) = v733;
    sub_249EB0208(&v903, &v883, &qword_27EF29878, &qword_249ED91D0);
    v735 = sub_249ECA624(v1141, v1125);
    sub_249EB371C(v884, &qword_27EF29878, &qword_249ED91D0);
    v736 = *(v6 + 7);
    v886[6] = *(v6 + 6);
    v886[7] = v736;
    v887 = *(v6 + 128);
    v737 = *(v6 + 3);
    v886[2] = *(v6 + 2);
    v886[3] = v737;
    v738 = *(v6 + 5);
    v886[4] = *(v6 + 4);
    v886[5] = v738;
    v739 = *(v6 + 1);
    v886[0] = *v6;
    v886[1] = v739;
    sub_249EB371C(v886, &qword_27EF29878, &qword_249ED91D0);
    if (v735)
    {

LABEL_360:
      v726 = &v903;
      goto LABEL_361;
    }

LABEL_341:
    v727 = sub_249ED6C60();
    v728 = [v691 animationBlockForKeyPath_];

    if (v728)
    {
      v729 = swift_allocObject();
      *(v729 + 16) = v728;
      v730 = sub_249ECA610;
    }

    else
    {
      v730 = 0;
      v729 = 0;
    }

    v740 = sub_249ED6C60();
    v741 = [v691 animationCompletionBlockForKeyPath_];

    if (v741)
    {
      v742 = swift_allocObject();
      *(v742 + 16) = v741;
      v853 = v742;
      v866 = sub_249EB0EE8;
    }

    else
    {
      v853 = 0;
      v866 = 0;
    }

    *&v888[0] = v689;
    *&v1126[0] = sub_249ED6EB0();
    *(&v1126[0] + 1) = v743;
    MEMORY[0x24C205AA0](45, 0xE100000000000000);
    MEMORY[0x24C205AA0](0x587265746E6563, 0xE700000000000000);
    v744 = sub_249ED6C60();

    v831 = [v877 acquireGeometricChangeAssertionForReason_];

    if ((v878 & 1) == 0)
    {
      v754 = objc_opt_self();
      v755 = swift_allocObject();
      *(v755 + 16) = sub_249EC9938;
      *(v755 + 24) = 0;
      *(v755 + 32) = 0;
      *(v755 + 33) = v879 & 1;
      *(v755 + 40) = v691;
      *(v755 + 48) = v8;
      *(v755 + 56) = v877;
      *(v755 + 64) = v730;
      *(v755 + 72) = v729;
      *&v1126[2] = sub_249ECB058;
      *(&v1126[2] + 1) = v755;
      *&v1126[0] = MEMORY[0x277D85DD0];
      *(&v1126[0] + 1) = 1107296256;
      *&v1126[1] = sub_249EBF654;
      *(&v1126[1] + 1) = &block_descriptor_70;
      v756 = _Block_copy(v1126);
      v757 = v730;
      v758 = v729;
      v6 = v691;
      v759 = v691;
      v819 = v8;
      v844 = v877;
      v12 = v757;
      sub_249E9F560(v757, v758);

      [v754 _performWithoutRetargetingAnimations_];
      _Block_release(v756);
      if (v741)
      {

        v866(1, 0);
        sub_249E9F570(v866, v853);
      }

      v760 = [v759 anyAnimationCompletionBlock];
      if (v760)
      {
        v761 = v760;
        v762 = sub_249ED6C60();
        (v761)[2](v761, v762, 1, 0);

        _Block_release(v761);
      }

      if (v831)
      {
        [swift_unknownObjectRetain() invalidate];

        sub_249E9F570(v757, v758);
        sub_249E9F570(v866, v853);
        swift_unknownObjectRelease_n();
      }

      else
      {

        sub_249E9F570(v757, v758);
        sub_249E9F570(v866, v853);
      }

      goto LABEL_360;
    }

    v745 = v730;
    v746 = v729;
    v747 = sub_249ED6C60();
    v748 = [v691 behaviorSettingsForKeyPath_];

    if (!v748)
    {
      v749 = [v882 defaultBehaviorSettings];
      swift_getObjectType();
      v748 = sub_249EC9F44(0x587265746E6563, 0xE700000000000000);
      swift_unknownObjectRelease();
    }

    v818 = *(v882 + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
    v750 = swift_allocObject();
    *(v750 + 16) = sub_249EC9938;
    *(v750 + 24) = 0;
    *(v750 + 32) = 1;
    *(v750 + 33) = v879 & 1;
    *(v750 + 40) = v691;
    *(v750 + 48) = v8;
    *(v750 + 56) = v877;
    *(v750 + 64) = v745;
    *(v750 + 72) = v729;
    v819 = v691;
    v751 = swift_allocObject();
    v12 = v866;
    *(v751 + 16) = v866;
    *(v751 + 24) = v853;
    *(v751 + 32) = 1;
    *(v751 + 33) = v879 & 1;
    *(v751 + 40) = v819;
    *(v751 + 48) = v8;
    *(v751 + 56) = v877;
    *(v751 + 64) = 0x587265746E6563;
    *(v751 + 72) = 0xE700000000000000;
    *(v751 + 80) = sub_249ECA22C;
    *(v751 + 88) = 0;
    *(v751 + 96) = v831;
    v6 = v819;
    v752 = v8;
    v753 = v877;
    sub_249E9F560(v745, v746);

    sub_249E9F560(v866, v853);
    swift_unknownObjectRetain();
    v818(0x587265746E6563, 0xE700000000000000, v6, v748, v879 & 1, sub_249ECB058, v750, sub_249ECA60C, v751);

    sub_249E9F570(v745, v746);
    sub_249E9F570(v866, v853);
    swift_unknownObjectRelease();
    sub_249EB371C(&v903, &qword_27EF29878, &qword_249ED91D0);
    swift_unknownObjectRelease();

    v691 = v819;

LABEL_362:
    v763 = v691;
    v764 = v8;
    v765 = v877;
    v15 = v882;
    sub_249EC8B68(0x597265746E6563, 0xE700000000000000, sub_249ECA238, 0, v878 & 1, v879 & 1, v763, v764, v765, sub_249EC9AF4, 0);

    v766 = *(v882 + v880);
    v767 = v764;
    v768 = v766;
    [v768 setObject:v763 forKey:v767];

    v769 = *&v881[v882];
    v35 = __OFADD__(v769, 1);
    v770 = v769 + 1;
    if (!v35)
    {
      break;
    }

LABEL_367:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      v771 = v17;
      v31 = sub_249ED6E70();
      v17 = v771;
LABEL_13:
      v820 = v17;

      if (!v31)
      {
        break;
      }

      v32 = 0;
      v33 = v820 & 0xC000000000000001;
      v34 = MEMORY[0x277D85000];
      v854 = v12;
      v832 = v31;
      while (1)
      {
        if (v33)
        {
          v17 = MEMORY[0x24C205BD0](v32, v820);
        }

        else
        {
          if (v32 >= *((v820 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_369;
          }

          v17 = *(v820 + 32 + 8 * v32);
        }

        v8 = v17;
        v35 = __OFADD__(v32++, 1);
        if (v35)
        {
          break;
        }

        v36 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden;
        v37 = *(v17 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden);
        *(v17 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden) = 0;
        if (v37 == 1)
        {
          v38 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v39 = *(v8 + v38);
          v40 = *(v39 + 16);
          if (v40)
          {
            v41 = v39 + 32;

            do
            {
              sub_249EB0208(v41, v1126, &qword_27EF296F0, &unk_249ED8F70);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v43 = Strong;
                (*((*v34 & *Strong) + 0xD0))(v8, *(v8 + v36));
              }

              sub_249EB371C(v1126, &qword_27EF296F0, &unk_249ED8F70);
              v41 += 8;
              --v40;
            }

            while (v40);

            v33 = v820 & 0xC000000000000001;
            v12 = v854;
            v15 = v881;
            v31 = v832;
          }

          else
          {

            v33 = v820 & 0xC000000000000001;
            v12 = v854;
          }
        }

        else
        {
        }

        v8 = v882;
        v6 = v1126;
        if (v32 == v31)
        {
          goto LABEL_364;
        }
      }
    }

LABEL_364:
    sub_249EB73F4(v1139);

    v10 = v819;
  }

  *&v881[v882] = v770;
}

char *sub_249EC88CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    v5 = result;
    swift_beginAccess();
    v6 = *&v5[v4];

    v24 = v6;
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = v24 & 0xC000000000000001;
      v10 = v24 & 0xFFFFFFFFFFFFFF8;
      v11 = v24 + 32;
      v12 = MEMORY[0x277D85000];
      v25 = i;
      while (1)
      {
        if (v9)
        {
          v13 = MEMORY[0x24C205BD0](v8, v24);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v11 + 8 * v8);
        }

        v14 = v13;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v16 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden;
        v17 = v13[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden];
        v13[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden] = 1;
        if (v17 == 1)
        {

          if (v8 == i)
          {
          }
        }

        else
        {
          v18 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v19 = *&v14[v18];
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = v19 + 32;

            do
            {
              sub_249EB0208(v21, v26, &qword_27EF296F0, &unk_249ED8F70);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v23 = Strong;
                (*((*v12 & *Strong) + 0xD0))(v14, v14[v16]);
              }

              sub_249EB371C(v26, &qword_27EF296F0, &unk_249ED8F70);
              v21 += 8;
              --v20;
            }

            while (v20);

            i = v25;
          }

          v10 = v24 & 0xFFFFFFFFFFFFFF8;
          v9 = v24 & 0xC000000000000001;
          v11 = v24 + 32;
          if (v8 == i)
          {
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  return result;
}

id sub_249EC8B1C(int a1, int a2, id a3, void *a4)
{
  [a3 boundaryOutsets];

  return [a4 setBoundaryOutsets_];
}

uint64_t sub_249EC8B68(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr), uint64_t a4, char a5, char a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v20 = *&v12[OBJC_IVAR___DRPDropletAnimationCoordinator_id];
  v54 = v12;
  v21 = [*&v12[OBJC_IVAR___DRPDropletAnimationCoordinator_appliedViewConfigurationMapTable] objectForKey_];
  v63 = a3;
  if (v21)
  {
    v22 = v21;
    v63(__src);

    a3 = v63;
    nullsub_1();
    v103 = __src[6];
    v104 = __src[7];
    v105 = __src[8];
    v99 = __src[2];
    v100 = __src[3];
    v101 = __src[4];
    v102 = __src[5];
    v97 = __src[0];
    v98 = __src[1];
  }

  else
  {
    sub_249ECA56C(&v97);
  }

  (a3)(v86, a7);
  v81 = v86[6];
  v82 = v86[7];
  v83 = v87;
  v77 = v86[2];
  v78 = v86[3];
  v79 = v86[4];
  v80 = v86[5];
  v75 = v86[0];
  v76 = v86[1];
  nullsub_1();
  __src[6] = v103;
  __src[7] = v104;
  __src[2] = v99;
  __src[3] = v100;
  __src[4] = v101;
  __src[5] = v102;
  __src[0] = v97;
  __src[1] = v98;
  *(&__src[13] + 8) = v80;
  *(&__src[14] + 8) = v81;
  *(&__src[15] + 8) = v82;
  *(&__src[9] + 8) = v76;
  *(&__src[10] + 8) = v77;
  *(&__src[11] + 8) = v78;
  *(&__src[12] + 8) = v79;
  *(&__src[8] + 8) = v75;
  v84[6] = v103;
  v84[7] = v104;
  v84[2] = v99;
  v84[3] = v100;
  v84[4] = v101;
  v84[5] = v102;
  LOBYTE(__src[8]) = v105;
  BYTE8(__src[16]) = v83;
  v85 = v105;
  v84[0] = v97;
  v84[1] = v98;
  if (sub_249ECA598(v84) == 1)
  {
    __dst[6] = *(&__src[14] + 8);
    __dst[7] = *(&__src[15] + 8);
    LOBYTE(__dst[8]) = BYTE8(__src[16]);
    __dst[2] = *(&__src[10] + 8);
    __dst[3] = *(&__src[11] + 8);
    __dst[4] = *(&__src[12] + 8);
    __dst[5] = *(&__src[13] + 8);
    __dst[0] = *(&__src[8] + 8);
    __dst[1] = *(&__src[9] + 8);
    if (sub_249ECA598(__dst) == 1)
    {
      v94 = __src[6];
      v95 = __src[7];
      v96 = __src[8];
      v90 = __src[2];
      v91 = __src[3];
      v92 = __src[4];
      v93 = __src[5];
      v88 = __src[0];
      v89 = __src[1];
      v23 = &v88;
      return sub_249EB371C(v23, &qword_27EF29878, &qword_249ED91D0);
    }

    v56 = a6;
    goto LABEL_11;
  }

  v71[6] = *(&__src[14] + 8);
  v71[7] = *(&__src[15] + 8);
  v72 = BYTE8(__src[16]);
  v71[2] = *(&__src[10] + 8);
  v71[3] = *(&__src[11] + 8);
  v71[4] = *(&__src[12] + 8);
  v71[5] = *(&__src[13] + 8);
  v71[0] = *(&__src[8] + 8);
  v71[1] = *(&__src[9] + 8);
  v56 = a6;
  if (sub_249ECA598(v71) == 1)
  {
LABEL_11:
    memcpy(__dst, __src, 0x109uLL);
    sub_249ECACE8(v86, &v88);
    sub_249EB0208(&v97, &v88, &qword_27EF29878, &qword_249ED91D0);
    sub_249EB371C(__dst, &qword_27EF29880, qword_249ED91D8);
    goto LABEL_12;
  }

  v67[6] = *(&__src[14] + 8);
  v67[7] = *(&__src[15] + 8);
  v68 = BYTE8(__src[16]);
  v67[2] = *(&__src[10] + 8);
  v67[3] = *(&__src[11] + 8);
  v67[4] = *(&__src[12] + 8);
  v67[5] = *(&__src[13] + 8);
  v67[0] = *(&__src[8] + 8);
  v67[1] = *(&__src[9] + 8);
  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  LOBYTE(__dst[8]) = BYTE8(__src[16]);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  v94 = __src[6];
  v95 = __src[7];
  v96 = __src[8];
  v90 = __src[2];
  v91 = __src[3];
  v92 = __src[4];
  v93 = __src[5];
  v88 = __src[0];
  v89 = __src[1];
  sub_249ECACE8(v86, v66);
  sub_249EB0208(&v97, v66, &qword_27EF29878, &qword_249ED91D0);
  v24 = sub_249ECA624(&v88, __dst);
  sub_249EB371C(v67, &qword_27EF29878, &qword_249ED91D0);
  v69[6] = __src[6];
  v69[7] = __src[7];
  v70 = __src[8];
  v69[2] = __src[2];
  v69[3] = __src[3];
  v69[4] = __src[4];
  v69[5] = __src[5];
  v69[0] = __src[0];
  v69[1] = __src[1];
  sub_249EB371C(v69, &qword_27EF29878, &qword_249ED91D0);
  if (v24)
  {
    sub_249ECAD20(v86);
LABEL_30:
    v23 = &v97;
    return sub_249EB371C(v23, &qword_27EF29878, &qword_249ED91D0);
  }

LABEL_12:
  v25 = sub_249ED6C60();
  v26 = [a7 animationBlockForKeyPath_];

  v55 = a4;
  if (v26)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v26;
    v62 = sub_249ECB0A0;
  }

  else
  {
    v62 = 0;
    v58 = 0;
  }

  v61 = a1;
  v27 = sub_249ED6C60();
  v28 = [a7 animationCompletionBlockForKeyPath_];

  v53 = a8;
  if (v28)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v28;
    v57 = sub_249ECB054;
  }

  else
  {
    v57 = 0;
    v52 = 0;
  }

  *&v71[0] = v20;
  *&__src[0] = sub_249ED6EB0();
  *(&__src[0] + 1) = v29;
  MEMORY[0x24C205AA0](45, 0xE100000000000000);
  v30 = a2;
  MEMORY[0x24C205AA0](a1, a2);
  v31 = sub_249ED6C60();

  v51 = [a9 acquireGeometricChangeAssertionForReason_];

  if ((a5 & 1) == 0)
  {
    v65 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = a10;
    *(v43 + 24) = a11;
    *(v43 + 32) = 0;
    *(v43 + 33) = v56 & 1;
    *(v43 + 40) = a7;
    *(v43 + 48) = a8;
    *(v43 + 56) = a9;
    *(v43 + 64) = v62;
    *(v43 + 72) = v58;
    *&__src[2] = sub_249ECB058;
    *(&__src[2] + 1) = v43;
    *&__src[0] = MEMORY[0x277D85DD0];
    *(&__src[0] + 1) = 1107296256;
    *&__src[1] = sub_249EBF654;
    *(&__src[1] + 1) = &block_descriptor_282;
    v44 = _Block_copy(__src);
    v45 = a7;
    v46 = a8;
    v47 = a9;

    sub_249E9F560(v62, v58);

    [v65 _performWithoutRetargetingAnimations_];
    _Block_release(v44);
    if (v28)
    {

      v57(1, 0);
      sub_249E9F570(v57, v52);
    }

    v48 = [v45 anyAnimationCompletionBlock];
    if (v48)
    {
      v49 = v48;
      v50 = sub_249ED6C60();
      (v49)[2](v49, v50, 1, 0);

      _Block_release(v49);
    }

    if (v51)
    {
      [swift_unknownObjectRetain() invalidate];
      sub_249ECAD20(v86);
      sub_249E9F570(v62, v58);
      sub_249E9F570(v57, v52);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_249ECAD20(v86);
      sub_249E9F570(v62, v58);
      sub_249E9F570(v57, v52);
    }

    goto LABEL_30;
  }

  v32 = sub_249ED6C60();
  v33 = [a7 behaviorSettingsForKeyPath_];

  if (!v33)
  {
    v34 = [v54 defaultBehaviorSettings];
    swift_getObjectType();
    v33 = sub_249EC9F44(a1, a2);
    swift_unknownObjectRelease();
  }

  v60 = *&v54[OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock];
  v35 = swift_allocObject();
  *(v35 + 16) = a10;
  *(v35 + 24) = a11;
  *(v35 + 32) = 1;
  *(v35 + 33) = v56 & 1;
  *(v35 + 40) = a7;
  *(v35 + 48) = a8;
  *(v35 + 56) = a9;
  *(v35 + 64) = v62;
  *(v35 + 72) = v58;
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  *(v36 + 24) = v52;
  *(v36 + 32) = 1;
  *(v36 + 33) = v56 & 1;
  *(v36 + 40) = a7;
  *(v36 + 48) = v53;
  *(v36 + 56) = a9;
  *(v36 + 64) = v61;
  *(v36 + 72) = a2;
  *(v36 + 80) = v63;
  *(v36 + 88) = v55;
  *(v36 + 96) = v51;
  v37 = a7;
  v38 = v53;
  v39 = a9;
  v64 = v37;
  v40 = v38;
  v41 = v39;

  sub_249E9F560(v62, v58);
  sub_249E9F560(v57, v52);

  swift_unknownObjectRetain();
  v60(v61, v30, v64, v33, v56 & 1, sub_249ECB058, v35, sub_249ECB0A8, v36);
  sub_249ECAD20(v86);
  sub_249E9F570(v62, v58);
  sub_249E9F570(v57, v52);
  swift_unknownObjectRelease();
  sub_249EB371C(&v97, &qword_27EF29878, &qword_249ED91D0);
  swift_unknownObjectRelease();
}

id sub_249EC95F8(int a1, int a2, id a3, void *a4)
{
  v5 = [a3 boundaryEdges];

  return [a4 setBoundaryEdges_];
}

void sub_249EC9648(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  v6 = [a3 dropletColor];
  [a5 setDropletColor_];
}

id sub_249EC96B4(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  [a3 dropletRadius];

  return [a5 setDropletRadius_];
}

id sub_249EC9700(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  v6 = [a3 disableDropletEffectFilters];

  return [a5 setDisableDropletEffectFilters_];
}

uint64_t sub_249EC9750(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  [a5 applyKeylineStyle:objc_msgSend(a3 forContainerView:{sel_keylineStyle), a4}];

  return swift_unknownObjectRelease();
}

id sub_249EC97C4(int a1, int a2, id a3, void *a4)
{
  [a3 containerCornerRadius];

  return [a4 setContinuousCornerRadius_];
}

id sub_249EC9810(int a1, int a2, id a3, void *a4)
{
  [a3 containerWidth];
  [a4 bounds];

  return [a4 setBounds_];
}

id sub_249EC987C(int a1, int a2, id a3, void *a4)
{
  [a3 containerHeight];
  [a4 bounds];

  return [a4 setBounds_];
}

uint64_t sub_249EC9938(char a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 17) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_249ECAE28;
  *(v12 + 24) = v11;
  v18[4] = sub_249ECB05C;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_249EC9ACC;
  v18[3] = &block_descriptor_275;
  v13 = _Block_copy(v18);
  v14 = a3;
  v15 = a4;
  v16 = a5;

  [v10 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249EC9AF4(char a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 17) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_249ECAD50;
  *(v12 + 24) = v11;
  v18[4] = sub_249ECADB8;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_249EC9ACC;
  v18[3] = &block_descriptor_265;
  v13 = _Block_copy(v18);
  v14 = a3;
  v15 = a4;
  v16 = a5;

  [v10 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_249EC9D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = objc_opt_self();
  v21 = a6;
  v22 = a7;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_249EBF654;
  v20 = &block_descriptor_253;
  v15 = _Block_copy(&v17);

  v21 = a8;
  v22 = a9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_249ECB0A4;
  v20 = &block_descriptor_256;
  v16 = _Block_copy(&v17);

  [v14 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v16);
  _Block_release(v15);
}

void *sub_249EC9F44(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    [v4 copy];
    sub_249ED6D90();
    swift_unknownObjectRelease();
    sub_249ED6D40();
    swift_dynamicCast();
    v5 = sub_249ED6C60();
    [v7 setName_];

    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v2;
}

void sub_249ECA034(char a1, char a2, void (*a3)(void, void), int a4, int a5, id a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a3)
  {
    a3(a1 & 1, a2 & 1);
  }

  v16 = [a6 anyAnimationCompletionBlock];
  if (v16)
  {
    v17 = v16;
    v18 = sub_249ED6C60();
    (v17)[2](v17, v18, a1 & 1, a2 & 1);

    _Block_release(v17);
  }

  if (a13)
  {

    [a13 invalidate];
  }
}

__n128 sub_249ECA184@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v7[0]) = [a1 disableDropletEffectFilters];
  sub_249ECA5EC(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA244@<Q0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  [a1 *a2];
  *&v9[0] = v4;
  sub_249ECA5E0(v9);
  v5 = v9[7];
  *(a3 + 96) = v9[6];
  *(a3 + 112) = v5;
  *(a3 + 128) = v10;
  v6 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v6;
  v7 = v9[5];
  *(a3 + 64) = v9[4];
  *(a3 + 80) = v7;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_249ECA2B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 containerTransform];
  sub_249ECA600(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA370@<Q0>(void *a1@<X0>, SEL *a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  *&v10[0] = [a1 *a2];
  a3(v10);
  v6 = v10[7];
  *(a4 + 96) = v10[6];
  *(a4 + 112) = v6;
  *(a4 + 128) = v11;
  v7 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v7;
  v8 = v10[5];
  *(a4 + 64) = v10[4];
  *(a4 + 80) = v8;
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_249ECA3F4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v7[0] = [a1 boundaryEdges];
  sub_249ECA5C8(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_249ECA46C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 boundaryOutsets];
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v12.n128_u64[0] = v5;
  v12.n128_u64[1] = v6;
  sub_249ECA58C(&v11);
  v7 = v18;
  *(a2 + 96) = v17;
  *(a2 + 112) = v7;
  *(a2 + 128) = v19;
  v8 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v8;
  v9 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v9;
  result = v12;
  *a2 = v11;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_249ECA4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_249ECA624(v11, v13) & 1;
}

double sub_249ECA56C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_249ECA598(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249ECA624(__int128 *a1, __int128 *a2)
{
  v4 = a2[7];
  v115 = a2[6];
  v116 = v4;
  v5 = a2[3];
  v111 = a2[2];
  v112 = v5;
  v6 = a2[5];
  v113 = a2[4];
  v114 = v6;
  v7 = a2[1];
  v109 = *a2;
  v110 = v7;
  v8 = a1[5];
  v9 = a1[7];
  v124 = a1[6];
  v125 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v120 = a1[2];
  v121 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v122 = a1[4];
  v123 = v13;
  v14 = a1[1];
  v118 = *a1;
  v119 = v14;
  v15 = a1[7];
  v107[6] = v124;
  v107[7] = v15;
  v107[2] = v120;
  v107[3] = v12;
  v107[4] = v122;
  v107[5] = v8;
  v117 = *(a2 + 128);
  v126 = *(a1 + 128);
  v108 = *(a1 + 128);
  v107[0] = v118;
  v107[1] = v10;
  v16 = sub_249ECACE0(v107);
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        nullsub_1();
        v26 = *v25;
        v27 = a2[3];
        v100 = a2[2];
        v101 = v27;
        v28 = a2[1];
        v98 = *a2;
        v99 = v28;
        v106 = *(a2 + 128);
        v29 = a2[7];
        v104 = a2[6];
        v105 = v29;
        v30 = a2[5];
        v102 = a2[4];
        v103 = v30;
        if (sub_249ECACE0(&v98) == 1)
        {
          nullsub_1();
          v24 = v26 == *v31;
          return v24 & 1;
        }
      }

      else
      {
        nullsub_1();
        v96 = *v46;
        v47 = a2[7];
        v104 = a2[6];
        v105 = v47;
        v106 = *(a2 + 128);
        v48 = a2[3];
        v100 = a2[2];
        v101 = v48;
        v49 = a2[5];
        v102 = a2[4];
        v103 = v49;
        v50 = a2[1];
        v98 = *a2;
        v99 = v50;
        if (sub_249ECACE0(&v98) == 2)
        {
          nullsub_1();
          v52 = v51[5];
          v92 = v51[4];
          v93 = v52;
          v53 = v51[7];
          v94 = v51[6];
          v95 = v53;
          v54 = v51[1];
          v88 = *v51;
          v89 = v54;
          v55 = v51[3];
          v90 = v51[2];
          v91 = v55;
          a = v96;
          *&v86.m31 = v92;
          *&v86.m33 = v93;
          *&v86.m41 = v94;
          *&v86.m43 = v95;
          *&v86.m11 = v88;
          *&v86.m13 = v89;
          *&v86.m21 = v90;
          *&v86.m23 = v55;
          v24 = CATransform3DEqualToTransform(&a, &v86);
          return v24 & 1;
        }
      }
    }

    else
    {
      nullsub_1();
      v40 = *v39;
      v41 = a2[7];
      v104 = a2[6];
      v105 = v41;
      v106 = *(a2 + 128);
      v42 = a2[3];
      v100 = a2[2];
      v101 = v42;
      v43 = a2[5];
      v102 = a2[4];
      v103 = v43;
      v44 = a2[1];
      v98 = *a2;
      v99 = v44;
      if (!sub_249ECACE0(&v98))
      {
        nullsub_1();
        v24 = v40 ^ *v45 ^ 1;
        return v24 & 1;
      }
    }

    goto LABEL_32;
  }

  if (v16 <= 4)
  {
    if (v16 == 3)
    {
      nullsub_1();
      v18 = *v17;
      if (*v17)
      {
        v19 = a2[7];
        v104 = a2[6];
        v105 = v19;
        v106 = *(a2 + 128);
        v20 = a2[3];
        v100 = a2[2];
        v101 = v20;
        v21 = a2[5];
        v102 = a2[4];
        v103 = v21;
        v22 = a2[1];
        v98 = *a2;
        v99 = v22;
        if (sub_249ECACE0(&v98) == 3)
        {
          nullsub_1();
          if (*v23)
          {
            v24 = [v18 isEqual_];
            return v24 & 1;
          }
        }
      }

      else
      {
        v76 = a2[7];
        v104 = a2[6];
        v105 = v76;
        v106 = *(a2 + 128);
        v77 = a2[3];
        v100 = a2[2];
        v101 = v77;
        v78 = a2[5];
        v102 = a2[4];
        v103 = v78;
        v79 = a2[1];
        v98 = *a2;
        v99 = v79;
        if (sub_249ECACE0(&v98) == 3)
        {
          nullsub_1();
          v24 = *v80 == 0;
          return v24 & 1;
        }
      }
    }

    else
    {
      nullsub_1();
      v57 = *v56;
      v58 = a2[3];
      v100 = a2[2];
      v101 = v58;
      v59 = a2[1];
      v98 = *a2;
      v99 = v59;
      v106 = *(a2 + 128);
      v60 = a2[7];
      v104 = a2[6];
      v105 = v60;
      v61 = a2[5];
      v102 = a2[4];
      v103 = v61;
      if (sub_249ECACE0(&v98) == 4)
      {
        nullsub_1();
        v63 = *v62;
        if (v57)
        {
          if (v63)
          {
            sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
            sub_249ECACE8(a1, &v96);
            sub_249ECACE8(a2, &v96);
            v64 = sub_249ED6D80();
            sub_249ECAD20(a1);
            sub_249ECAD20(a2);
            v24 = v64;
            return v24 & 1;
          }

          *&v96.m41 = v115;
          *&v96.m43 = v116;
          v97 = v117;
          *&v96.m21 = v111;
          *&v96.m23 = v112;
          *&v96.m31 = v113;
          *&v96.m33 = v114;
          v83 = v109;
          v82 = v110;
        }

        else
        {
          if (!v63)
          {
            sub_249ECACE8(a1, &v96);
            sub_249ECACE8(a2, &v96);
            v24 = 1;
            return v24 & 1;
          }

          *&v96.m41 = v124;
          *&v96.m43 = v125;
          v97 = v126;
          *&v96.m21 = v120;
          *&v96.m23 = v121;
          *&v96.m31 = v122;
          *&v96.m33 = v123;
          v83 = v118;
          v82 = v119;
        }

        *&v96.m11 = v83;
        *&v96.m13 = v82;
        nullsub_1();
        v85 = *v84;
        v24 = 0;
        return v24 & 1;
      }
    }

LABEL_32:
    v24 = 0;
    return v24 & 1;
  }

  if (v16 == 5)
  {
    nullsub_1();
    v33 = *v32;
    v34 = a2[3];
    v100 = a2[2];
    v101 = v34;
    v35 = a2[1];
    v98 = *a2;
    v99 = v35;
    v106 = *(a2 + 128);
    v36 = a2[7];
    v104 = a2[6];
    v105 = v36;
    v37 = a2[5];
    v102 = a2[4];
    v103 = v37;
    if (sub_249ECACE0(&v98) == 5)
    {
      nullsub_1();
      v24 = v33 == *v38;
      return v24 & 1;
    }

    goto LABEL_32;
  }

  nullsub_1();
  v67 = *v65;
  v66 = v65[1];
  v69 = v65[2];
  v68 = v65[3];
  v70 = a2[7];
  v104 = a2[6];
  v105 = v70;
  v106 = *(a2 + 128);
  v71 = a2[1];
  v98 = *a2;
  v99 = v71;
  v72 = a2[3];
  v100 = a2[2];
  v101 = v72;
  v73 = a2[5];
  v102 = a2[4];
  v103 = v73;
  if (sub_249ECACE0(&v98) != 6)
  {
    goto LABEL_32;
  }

  nullsub_1();
  if (v67 != *v74)
  {
    goto LABEL_32;
  }

  v75 = v66 == v74[1];
  if (v69 != v74[2])
  {
    v75 = 0;
  }

  v24 = v68 == v74[3] && v75;
  return v24 & 1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_249ECAC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 129))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 128);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249ECAC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

id sub_249ECAD50()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) centerY];
  [v1 center];

  return [v1 setCenter_];
}

uint64_t objectdestroy_258Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_249ECAE28()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) centerX];
  v3 = v2;
  [v1 center];

  return [v1 setCenter_];
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249ECAEF0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  result = (*(v0 + 16))(*(v0 + 32), *(v0 + 33), v1, *(v0 + 48), *(v0 + 56));
  if (v2)
  {
    return v2(v1);
  }

  return result;
}

uint64_t objectdestroy_75Tm()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_249ECAFC0(char a1, char a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_249ECA034(a1, a2, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
}

uint64_t sub_249ECB0AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference;
  v4 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 48);
  v29[2] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 32);
  v29[3] = v4;
  v29[4] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 64);
  v30 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 80);
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 16);
  v29[0] = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference);
  v29[1] = v5;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v7;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  sub_249EB0208(a1, v31, &qword_27EF296E8, &unk_249ED8F60);
  sub_249EB371C(v29, &qword_27EF296E8, &unk_249ED8F60);
  v32 = *(v3 + 80);
  v8 = *(v3 + 48);
  v31[2] = *(v3 + 32);
  v31[3] = v8;
  v31[4] = *(v3 + 64);
  v9 = *(v3 + 16);
  v31[0] = *v3;
  v31[1] = v9;
  if (v32 == 255)
  {
    v19 = a1;
  }

  else
  {
    v10 = *(v3 + 48);
    v25 = *(v3 + 32);
    v26 = v10;
    v27 = *(v3 + 64);
    v11 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v11;
    v28 = v32;
    v23 = *(v3 + 80);
    v22[3] = v10;
    v22[4] = v27;
    v22[1] = v11;
    v22[2] = v25;
    v22[0] = v24[0];
    sub_249EB0270(v22, v21);
    v12 = sub_249EB4510();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x24C205BD0](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        sub_249EB0208(v31, v21, &qword_27EF296E8, &unk_249ED8F60);
        sub_249ED3A80(v24);

        ++v15;
        if (v18 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    sub_249EB371C(a1, &qword_27EF296E8, &unk_249ED8F60);

    v19 = v31;
  }

  return sub_249EB371C(v19, &qword_27EF296E8, &unk_249ED8F60);
}

void sub_249ECB2F4(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth);
  v4 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8);
  if (v3 != a1 || v4 != a2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v7 = (v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
    v8 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth);
    v9 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth + 8);
    *v7 = v3;
    v7[1] = v4;
    if (v3 != v8 || v4 != v9)
    {
      v11 = sub_249EB5820();
      sub_249EB791C(*v7);

      v12 = v7[1];
      v13 = *(v6 + OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView);
      sub_249EB7A0C(v12);
    }
  }
}

uint64_t sub_249ECB3DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference);
  v3 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference + 8);
  v31 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference + 16);
  v32 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference);
  v4 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference + 32);
  v5 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 48);
  v42 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 32);
  v43 = v5;
  v44 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 64);
  v45 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 80);
  v6 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference + 16);
  v40 = *(v0 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference);
  v41 = v6;
  sub_249EB0208(&v40, v38, &qword_27EF296E8, &unk_249ED8F60);
  v34 = sub_249EB5820();
  v7 = sub_249EB50D8(v34, v2, v3);
  objc_allocWithZone(type metadata accessor for DropletBackgroundView());
  v8 = v7;
  v9 = sub_249ED0950(v8);
  if ((v4 & 1) == 0)
  {
    v10 = &v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
    v11 = *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
    v12 = *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
    *v10 = v32;
    v10[1] = v31;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v32, v11), vceqq_f64(v31, v12)))) & 1) == 0)
    {
      v13 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
      swift_beginAccess();
      v14 = *&v8[v13];
      v15 = *(v14 + 16);
      if (v15)
      {
        v30 = v3;
        v33 = v9;
        v16 = v14 + 32;
        v29 = *&v8[v13];

        v17 = MEMORY[0x277D85000];
        do
        {
          sub_249EB0208(v16, v38, &qword_27EF296F0, &unk_249ED8F70);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v19 = Strong;
            (*((*v17 & *Strong) + 0xE0))(v8, v10->f64[0], v10->f64[1], v10[1].f64[0], v10[1].f64[1]);
          }

          sub_249EB371C(v38, &qword_27EF296F0, &unk_249ED8F70);
          v16 += 8;
          --v15;
        }

        while (v15);

        v9 = v33;
        v3 = v30;
      }
    }
  }

  if (v45 != 255)
  {
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[0] = v40;
    v38[1] = v41;
    v39 = v45;
    v36[2] = v42;
    v36[3] = v43;
    v36[4] = v44;
    v37 = v45;
    v36[0] = v40;
    v36[1] = v41;
    sub_249EB0270(v36, v35);
    sub_249ED3A80(v38);
  }

  v20 = sub_249EB582C();
  v21 = sub_249EB50D8(v20, v2, v3);

  v22 = sub_249EB59F4();
  v23 = sub_249EB50D8(v22, v2, v3);

  swift_unknownObjectWeakAssign();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = 0.0;
    if (v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80] == 2)
    {
      v25 = 1.0;
    }

    v26 = v24;
    [v24 setAlpha_];
  }

  sub_249EB371C(&v40, &qword_27EF296E8, &unk_249ED8F60);
  [*(v1 + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView) insertSubview:v9 atIndex:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249ED9320;
  *(v27 + 32) = v8;
  *(v27 + 40) = v23;
  *(v27 + 48) = v21;

  return v27;
}