void sub_1E37CA928()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
    OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, v5);
    v3 = *(v0 + v2);
    if (v1 < *(v3 + 16))
    {
      sub_1E374E74C(v3 + 40 * v1 + 32, v4);
      type metadata accessor for ViewModel();
      swift_dynamicCast();
    }
  }
}

id sub_1E37CAA38(uint64_t a1, void *a2)
{
  v3 = sub_1E37CA6C0();
  v4 = sub_1E3C9FBDC(a2, v3);

  return v4;
}

void sub_1E37CABA8(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v14 = sub_1E37CC8C8;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v12 = v7;
    v13 = &block_descriptor_25;
    v8 = _Block_copy(&v10);
    v9 = a2;

    [a3 addCompletion_];
    _Block_release(v8);
  }
}

id sub_1E37CAD30()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for LayoutGrid();
    [v2 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_20_5();
    Width = CGRectGetWidth(v4);
    return sub_1E3A2579C(Width);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E37CADB4()
{
  v0 = sub_1E37C56A0();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v1 itemSize];
  v3 = v2;

  if (v3 <= 0.0)
  {
    return 0;
  }

  VUIRoundValue();
  return v4;
}

uint64_t sub_1E37CAE58()
{
  swift_getObjectType();

  return OUTLINED_FUNCTION_51_1();
}

id sub_1E37CAEC0()
{
  v1 = v0;
  sub_1E37C646C();

  *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels) = MEMORY[0x1E69E7CD0];

  v2 = sub_1E37C56A0();
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v3 reloadData];
  v4 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, v7);
  v8 = *(*(v1 + v6) + 16);
  v9 = v5;
  sub_1E3EE0704(v8);

  return [*(v1 + v4) setNeedsLayout];
}

void sub_1E37CAF98()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isFullscreenPlaybackUIBeingShown];

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
    {
      OUTLINED_FUNCTION_8();
      v5 = *(v4 + 312);

      v5(0);
    }

    return;
  }

  v6 = [objc_opt_self() currentNavigationController];
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E42062B4();

  v19 = sub_1E37CB21C(v8);

  if (!v19)
  {
    goto LABEL_18;
  }

  type metadata accessor for DocumentViewController(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1B0))();
    if (v10)
    {
      v11 = v10;
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v11 && *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
        {
          OUTLINED_FUNCTION_8();
          v15 = *(v14 + 304);

          v15(v16);
        }
      }

      else
      {
      }

LABEL_18:
      v17 = v18;
      goto LABEL_19;
    }
  }

  v17 = v19;
LABEL_19:
}

char *sub_1E37CB21C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E34AF4E4((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1E6911E60](v3, a1);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1E37CB37C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1E374E74C(v3, v8);
        sub_1E374E74C(v4, v7);
        v5 = MEMORY[0x1E6911D60](v8, v7);
        sub_1E375D84C(v7);
        sub_1E375D84C(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

char *sub_1E37CB43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A670, &unk_1E429D950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37CB554(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650, &qword_1E429D930);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v18 = sub_1E32AE9B0(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x1E6911E60](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
        if (sub_1E4205E84())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

char *sub_1E37CB78C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37CB7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E37CB7AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A670, &unk_1E429D950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37CB934(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1E4207394();

    if (v8)
    {

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = sub_1E37CBBC0(v7, result + 1);
        v14 = *(v13 + 16);
        if (*(v13 + 24) <= v14)
        {
          sub_1E37CBDD4(v14 + 1);
        }

        sub_1E37CC064(v15, v13);

        *v3 = v13;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    v10 = sub_1E4205DA4();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v2;

        sub_1E37CC14C(v17, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v19;
        goto LABEL_16;
      }

      sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
      if (sub_1E4205E84())
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1E37CBBC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650, &qword_1E429D930);
    v2 = sub_1E4207454();
    v15 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1E37CBDD4(v3 + 1);
      }

      v2 = v15;
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E37CBDD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650, &qword_1E429D930);
  result = sub_1E4207444();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1E373CBF0(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    result = sub_1E4205DA4();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1E37CC064(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewModel();
  sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
  sub_1E4205DA4();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1E37CC14C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E37CBDD4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E37CC46C(v6 + 1);
LABEL_10:
      v12 = *v3;
      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E37CC31C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E37CC31C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650, &qword_1E429D930);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1E37CC46C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650, &qword_1E429D930);
  result = sub_1E4207444();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for ViewModel();
        sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);

        result = sub_1E4205DA4();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

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

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
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

uint64_t sub_1E37CC6E0(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    v7 = sub_1E4205DA4();
    v8 = ~(-1 << *(v2 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
      if (sub_1E4205E84())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E37CC31C();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1E37CCB2C(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v2 < 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1E42073D4();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1E37CC958(v4, a1);

  return v6;
}

void sub_1E37CC8C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor);
    sub_1E3C9F738();
  }
}

uint64_t sub_1E37CC958(uint64_t a1, uint64_t a2)
{

  v3 = sub_1E4207384();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1E37CBBC0(v4, v3);
  v11 = v5;
  type metadata accessor for ViewModel();
  sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);

  v6 = sub_1E4205DA4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
    if (sub_1E4205E84())
    {

      v9 = *(*(v5 + 48) + 8 * v8);
      sub_1E37CCB2C(v8);
      if (sub_1E4205E84())
      {
        *v2 = v11;
        return v9;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E37CCB2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      do
      {
        v10 = sub_1E4205DA4() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1E37CCD5C(uint64_t *a1)
{
  *(*(v1 + 16) + 72) = *a1;
}

void *sub_1E37CCE50(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *sub_1E37C64F8();
    if (a1)
    {
      (*(v6 + 304))();
    }

    else
    {
      (*(v6 + 312))(0);
    }
  }

  return result;
}

uint64_t sub_1E37CCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 1)
  {
    v5 = a5 == 1;
  }

  else
  {
    if (a1 == 2)
    {
      v5 = a5 == 2;
      goto LABEL_5;
    }

    if ((a5 - 1) < 2)
    {
LABEL_9:
      v6 = 0;
      return v6 & 1;
    }

    if (a1)
    {
      if (a5)
      {
        type metadata accessor for CollectionViewModel();
        sub_1E37CE070(&qword_1EE275068, type metadata accessor for CollectionViewModel, &protocol conformance descriptor for ViewModel);

        v6 = sub_1E4205E84();

        return v6 & 1;
      }

      goto LABEL_9;
    }

    v5 = a5 == 0;
  }

LABEL_5:
  v6 = v5;
  return v6 & 1;
}

uint64_t sub_1E37CD020(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_38();
  return sub_1E37CD068(v3, a2);
}

uint64_t sub_1E37CD068(void *a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_contextData;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_contextData) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *(v2 + v7) = sub_1E4200544();
  v8 = v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  *v8 = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber) = 0;
  v9 = v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) = 1;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber) = 0;
  if (a1[3])
  {
    v10 = a1[2];
    v11 = a1[3];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_3_0(v5, v24);
  *v5 = v10;
  v5[1] = v11;

  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel) = a1;
  OUTLINED_FUNCTION_3_0(v2 + v6, &v23);
  *(v2 + v6) = a2;

  v12 = sub_1E3B500B4();
  v13 = *(*a1 + 1192);
  v14 = swift_retain_n();
  v13(v14, &off_1F5D56EA8);
  (*(*a1 + 1216))(v12, &off_1F5D56EC0);
  v15 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v26[0] = *(v12 + v15);
  v16 = type metadata accessor for CollectionViewModel();
  if (sub_1E39BD1F0(v16, &off_1F5D96700))
  {
    v17 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber;
    OUTLINED_FUNCTION_3_0(v12 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber, v26);
    if (*(v12 + v17))
    {

      sub_1E42004E4();
    }

    v18 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = *(v12 + v18);
    OUTLINED_FUNCTION_4_0();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1E37D18C8;
    *(v20 + 24) = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
    v21 = sub_1E4200844();

    *(v12 + v17) = v21;
  }

  sub_1E37CD3EC();

  return v12;
}

void sub_1E37CD3EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  type metadata accessor for LibCollectionViewModel();
  OUTLINED_FUNCTION_40_3();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber))
    {

      sub_1E42004E4();
    }

    else
    {
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v12(v8);

    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v24 = v11;
      v15 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      *v15 = 136315394;
      v16 = sub_1E37CE104();
      OUTLINED_FUNCTION_38_8(v16, v17);
      OUTLINED_FUNCTION_33_12();
      *(v15 + 4) = v2;
      *(v15 + 12) = 2080;
      v18 = sub_1E41E1364(v10);
      OUTLINED_FUNCTION_38_8(v18, v19);
      OUTLINED_FUNCTION_33_12();
      *(v15 + 14) = v2;
      _os_log_impl(&dword_1E323F000, v13, v14, "%s subscribe for children update, collection view model %s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v11 = v24;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    OUTLINED_FUNCTION_30_1();
    (*(v20 + 1704))();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E37D18C0;
    *(v22 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570, &unk_1E4299870);
    sub_1E32752B0(&qword_1EE28A1B0, &unk_1ECF32570, &unk_1E4299870, MEMORY[0x1E695BED8]);
    v23 = sub_1E4200844();

    *(v1 + v11) = v23;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37CD750()
{

  sub_1E37CD808(*(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 8), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 16), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 24));

  sub_1E37CD87C(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest);
}

uint64_t sub_1E37CD808(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result - 1) >= 2)
  {
    v5 = a4;

    return sub_1E37CD868(a2, a3, v5);
  }

  return result;
}

uint64_t sub_1E37CD868(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E37B5ACC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E37CD87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680, &unk_1E42B6560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37CD8E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_1E42004E4();
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber))
  {

    sub_1E42004E4();
  }

  v3 = sub_1E3B4FF80();

  sub_1E37CD808(*(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 8), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 16), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 24));

  sub_1E37CD87C(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest);

  return v3;
}

uint64_t sub_1E37CDA08()
{
  v0 = sub_1E37CD8E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37CDA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result - 1) >= 2)
  {
    v5 = a4;

    return sub_1E37CDABC(a2, a3, v5);
  }

  return result;
}

uint64_t sub_1E37CDABC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E3781F8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E37CDAD0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = v4 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state, v29);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_39_10();
  sub_1E37CDA5C(v14, v15, v16, v17);
  sub_1E37CD808(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v18 = v4 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if ((*v18 - 1) >= 2 && (v20 = *(v18 + 8), v19 = *(v18 + 16), v21 = *(v18 + 24), , sub_1E37CDABC(v20, v19, v21), sub_1E37CD868(v20, v19, v21), , (v21 & 0x100) != 0))
  {
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v22, v23, &unk_1E42BD340);
    OUTLINED_FUNCTION_40_3();
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_39_10();
  return sub_1E37CD808(v24, v25, v26, v27);
}

void sub_1E37CDC8C(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 768);

  v4 = v3(a1);

  sub_1E37CDDA4();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v5, v6, &unk_1E42BD340);
    OUTLINED_FUNCTION_40_3();
    sub_1E4200514();
    sub_1E4200594();
  }
}

void sub_1E37CDDA4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, &v25);
  if (*(v0 + v8) != v3)
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 1192);

    v10(0, 0);

    OUTLINED_FUNCTION_36();
    v12 = *(v11 + 1216);

    v12(0, 0);

    *(v0 + v8) = v3;

    v13 = *v3 + 1192;
    v14 = *v13;

    v14(v15, &off_1F5D56EA8);
    OUTLINED_FUNCTION_36();
    v17 = *(v16 + 1216);

    v17(v0, &off_1F5D56EC0);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v18(v1);

    v19 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_10_11();
      *v13 = 136446210;
      v20 = sub_1E37CE104();
      v22 = OUTLINED_FUNCTION_38_8(v20, v21);

      *(v13 + 4) = v22;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v23, v24, "%{public}s did update to new collection view model.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    (*(v6 + 8))(v1, v4);
    sub_1E37CD3EC();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37CE070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CollectionInteractor(uint64_t a1)
{
  result = qword_1EE29DCB0;
  if (!qword_1EE29DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37CE104()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1E69109E0](v3, v4);

  v5 = sub_1E41E1364(v1);
  MEMORY[0x1E69109E0](v5);

  MEMORY[0x1E69109E0](8285, 0xE200000000000000);

  return 0xD00000000000001BLL;
}

uint64_t sub_1E37CE248()
{
  v2 = v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    v5 = OUTLINED_FUNCTION_16_0();
    v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();
    (*(v8 + 16))(v1);
    v9 = (*(v4 + 32))(v3, v4);
    (*(v8 + 8))(v1, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1E37CE37C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v135 = v2;
  v136 = v3;
  v134 = v4;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v140 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v138 = v131 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v131 - v16;
  v18 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v1 + v25, &v146);
  v139 = v7;
  v137 = v17;
  if (!*(&v147 + 1))
  {
    sub_1E37CD87C(&v146);
LABEL_9:
    if ((sub_1E37D01CC(v6, 2, v27) & 1) == 0 || (v33 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, OUTLINED_FUNCTION_25(), swift_beginAccess(), *&v146 = *(v1 + v33), v34 = type metadata accessor for CollectionViewModel(), !sub_1E39BD1F0(v34, &off_1F5D96700)))
    {
      if ((sub_1E37D01CC(v6, 1, v32) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A688, &unk_1E429DC20);
  v26 = type metadata accessor for RemoteCollectionInteractorRequest();
  if ((OUTLINED_FUNCTION_35_14(v26) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(v143 + 40);

  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1E327F454((v17 + 16), &v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  v28 = type metadata accessor for CollectionServiceRequestContext(0);
  v29 = OUTLINED_FUNCTION_35_14(v28);
  if ((v29 & 1) != 0 && *(v143 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) != 5)
  {
    LOBYTE(v146) = *(v143 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
    LOBYTE(v143) = v6;
    sub_1E37D17DC(v29, v30, v31);
    if (sub_1E4205E84())
    {

      v7 = v139;
      goto LABEL_26;
    }
  }

  v67 = sub_1E37D01CC(v6, 1, v31);

  v7 = v139;
  if ((v67 & 1) == 0)
  {
LABEL_26:
    sub_1E324FBDC();
    v68 = v140;
    OUTLINED_FUNCTION_28_13();
    v69(v12);

    v70 = sub_1E41FFC94();
    v71 = sub_1E42067E4();

    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_49_0();
      *&v146 = OUTLINED_FUNCTION_36_12();
      *v17 = 136446466;
      v72 = sub_1E37CE104();
      OUTLINED_FUNCTION_47_5(v72, v73);
      OUTLINED_FUNCTION_33_12();
      *(v17 + 4) = v68;
      *(v17 + 6) = 2080;
      v74 = ViewModelRequestType.rawValue.getter(v6);
      OUTLINED_FUNCTION_47_5(v74, v75);
      OUTLINED_FUNCTION_33_12();
      *(v17 + 14) = v68;
      OUTLINED_FUNCTION_46_6(&dword_1E323F000, v76, v77, "%{public}s Failed to make fetch request [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v68 + 8))(v12, v139);
    }

    else
    {

      (*(v68 + 8))(v12, v7);
    }

    goto LABEL_49;
  }

LABEL_12:
  v35 = sub_1E4206BA4();
  v36 = VUISignpostLogObject(v35);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v20 + 8))(v24, v18);
  v37 = v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v37, &v146);
  v38 = *(&v147 + 1);
  sub_1E37CD87C(&v146);
  if (v38)
  {
    sub_1E324FBDC();
    v39 = v140;
    OUTLINED_FUNCTION_28_13();
    v40 = v137;
    v41(v137);

    v42 = sub_1E41FFC94();
    v43 = sub_1E42067E4();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_49_0();
      v44 = OUTLINED_FUNCTION_36_12();
      v132 = v37;
      *&v146 = v44;
      *v36 = 136315394;
      v45 = sub_1E37CF120();
      OUTLINED_FUNCTION_47_5(v45, v46);
      OUTLINED_FUNCTION_33_12();
      *(v36 + 1) = v39;
      *(v36 + 6) = 2080;
      v47 = ViewModelRequestType.rawValue.getter(v6);
      OUTLINED_FUNCTION_47_5(v47, v48);
      OUTLINED_FUNCTION_33_12();
      *(v36 + 14) = v39;
      OUTLINED_FUNCTION_46_6(&dword_1E323F000, v49, v50, "%s Cancelling to handle new request of type [%s]");
      swift_arrayDestroy();
      v37 = v132;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v140 + 8))(v137, v7);
    }

    else
    {

      (*(v39 + 8))(v40, v7);
    }

    sub_1E37CF3E4();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  type metadata accessor for LibCollectionViewModel();
  OUTLINED_FUNCTION_40_3();
  v51 = swift_dynamicCastClass();
  if (v51)
  {
    v52 = *(*v51 + 1680);

    v52(&v146, v53);
  }

  else
  {
    v148 = 0;
    v146 = 0u;
    v147 = 0u;
  }

  sub_1E37D1314(&v146, &v141);
  if (v142)
  {
    sub_1E3251BE8(&v141, &v143);
    v54 = v140;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v56 = *(v55 + 1112);

    v58 = v56(v57);
    v60 = v59;

    if (v60)
    {
      v61 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_36();
      v63 = *(v62 + 648);

      v65 = v63(v64);

      if (v65)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      type metadata accessor for CollectionServiceRequestContext(0);

      v78 = sub_1E3E3D284(v6, v58, v60, Strong);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_30_1();
      v80 = *(v79 + 208);

      v80(v81);
      OUTLINED_FUNCTION_36();
      v83 = v82 + 1136;
      v84 = *(v82 + 1136);

      v84(v85);
      OUTLINED_FUNCTION_11_5();

      OUTLINED_FUNCTION_30_1();
      (*(v86 + 232))(v83);

      sub_1E39C1AA0();
      OUTLINED_FUNCTION_11_5();

      (*(*v78 + 280))(v83);
      v88 = sub_1E37D01CC(v6, 2, v87);
      v132 = v37;
      v137 = v60;
      if (v88)
      {
        OUTLINED_FUNCTION_8();
        v90 = *(v89 + 1160);

        v90(v91);
        OUTLINED_FUNCTION_11_5();

        (*(*v78 + 256))(v90);
        v92 = *(v1 + v61);
        OUTLINED_FUNCTION_36();
        v94 = v93 + 1040;
        v95 = *(v93 + 1040);

        v95(v96);
        OUTLINED_FUNCTION_11_5();

        if (v94)
        {
          sub_1E37D027C(v94);
          OUTLINED_FUNCTION_38();
        }

        else
        {
          v92 = 0;
        }

        OUTLINED_FUNCTION_30_1();
        (*(v100 + 184))(v92);
      }

      else
      {
        OUTLINED_FUNCTION_30_1();
        v98 = *(v97 + 184);

        v98(v99);
      }

      v101 = sub_1E37CF120();
      v103 = v102;
      v104 = type metadata accessor for RemoteCollectionInteractorRequest();
      OUTLINED_FUNCTION_44_15();
      v105 = swift_allocObject();
      v106 = v135;
      v107 = v136;
      sub_1E34AF604(v135, v136);
      *(v105 + 72) = 0;
      *(v105 + 24) = 0u;
      *(v105 + 40) = 0u;
      v108 = *(v78 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
      if (v108 == 5)
      {
        LOBYTE(v108) = 0;
      }

      *(v105 + 16) = v108;
      *(v105 + 17) = v134 & 1;
      *(v105 + 56) = v101;
      *(v105 + 64) = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
      v109 = sub_1E37B2890();
      sub_1E34AF594(v106, v107);

      *(v105 + 40) = v109;
      *(&v144 + 1) = v104;
      v145 = &off_1F5D56F90;

      *&v143 = v105;
      v37 = v132;
    }

    else
    {
      v145 = 0;
      v143 = 0u;
      v144 = 0u;
    }

    v7 = v139;
    v54 = v140;
    if (v142)
    {
      sub_1E37CD87C(&v141);
    }
  }

  LODWORD(v137) = v6;
  OUTLINED_FUNCTION_11_3(v37, &v141);
  sub_1E37D1384(&v143, v37);
  swift_endAccess();
  v110 = sub_1E37CF120();
  v112 = v111;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v113 = v138;
  v114(v138);

  v115 = sub_1E41FFC94();
  v116 = v7;
  v117 = sub_1E42067E4();

  v118 = os_log_type_enabled(v115, v117);
  v133 = v110;
  if (v118)
  {
    OUTLINED_FUNCTION_49_0();
    *&v143 = OUTLINED_FUNCTION_36_12();
    *v116 = 136315394;
    *(v116 + 4) = sub_1E3270FC8(v110, v112, &v143);
    *(v116 + 12) = 2080;
    v119 = ViewModelRequestType.rawValue.getter(v137);
    v131[1] = v1;
    v121 = v37;
    v122 = sub_1E3270FC8(v119, v120, &v143);

    *(v116 + 14) = v122;
    v37 = v121;
    _os_log_impl(&dword_1E323F000, v115, v117, "%s Starting with type [%s]", v116, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v54 + 8))(v138, v139);
  }

  else
  {

    (*(v54 + 8))(v113, v116);
  }

  swift_beginAccess();
  if (*(v37 + 24))
  {
    sub_1E327F454(v37, &v143);
    swift_endAccess();
    v123 = *(&v144 + 1);
    v124 = v145;
    __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
    OUTLINED_FUNCTION_4_0();
    v125 = swift_allocObject();
    swift_weakInit();
    v126 = swift_allocObject();
    v127 = v133;
    *(v126 + 16) = v125;
    *(v126 + 24) = v127;
    *(v126 + 32) = v112;
    *(v126 + 40) = v137;
    *(v126 + 41) = v134 & 1;
    v129 = v135;
    v128 = v136;
    *(v126 + 48) = v135;
    *(v126 + 56) = v128;
    v130 = v124[5];

    sub_1E34AF604(v129, v128);
    v130(sub_1E37D13F4, v126, v123, v124);

    sub_1E37CD87C(&v146);

    __swift_destroy_boxed_opaque_existential_1(&v143);
  }

  else
  {
    sub_1E37CD87C(&v146);
    swift_endAccess();
  }

LABEL_49:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E37CF120()
{
  v1 = v0;
  v2 = 0xD000000000000017;
  v3 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v1 + v3, v14);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A688, &unk_1E429DC20);
    type metadata accessor for RemoteCollectionInteractorRequest();
    if (swift_dynamicCast())
    {
      v4 = *(v13 + 40);

      if (v4)
      {
        sub_1E327F454(v4 + 16, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
        type metadata accessor for CollectionServiceRequestContext(0);
        if (swift_dynamicCast())
        {
          v5 = (v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (v5[1])
          {
            v6 = *v5;
            v7 = v5[1];
          }

          else
          {
            v7 = 0xE700000000000000;
            v6 = 0x6E776F6E6B6E55;
          }

          MEMORY[0x1E69109E0](v6, v7);

          v9 = sub_1E41E1364(v1);
          MEMORY[0x1E69109E0](v9);

          MEMORY[0x1E69109E0](0x736575716552205DLL, 0xEB000000005B2074);

          MEMORY[0x1E69109E0](32, 0xE100000000000000);

          v10 = sub_1E41FE5E4();
          v12 = v11;

          MEMORY[0x1E69109E0](v10, v12);

          MEMORY[0x1E69109E0](2112093, 0xE300000000000000);

          return 0xD00000000000001BLL;
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1E37CD87C(v14);
  }

  return v2;
}

uint64_t sub_1E37CF3E4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1E327F454(v1, &v7);
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    v3 = OUTLINED_FUNCTION_38();
    v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  OUTLINED_FUNCTION_11_3(v1, v6);
  sub_1E37D1384(&v7, v1);
  return swift_endAccess();
}

void sub_1E37CF4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_1();
  v23 = v22;
  v36 = v24;
  v26 = v25;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) == 1)
    {
      sub_1E37CF664();

      goto LABEL_8;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v29 = OUTLINED_FUNCTION_43_0();
  v30(v29);

  v31 = sub_1E41FFC94();
  sub_1E42067F4();

  if (OUTLINED_FUNCTION_34_9())
  {
    OUTLINED_FUNCTION_6_21();
    v37 = OUTLINED_FUNCTION_10_11();
    *v26 = 136315138;
    *(v26 + 4) = sub_1E3270FC8(v36, v23, &v37);
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v32, v33, "%s collection view model object is invalid");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37CF664()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v66 = v2;
  v68 = v4;
  v69 = v3;
  LODWORD(v64) = v5;
  v67 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v65 = sub_1E37CF120();
  if ((v8 & 0x100) != 0)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v30 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest, v70);
    sub_1E37D1384(&v71, v0 + v30);
    swift_endAccess();
    if (v8 == 2)
    {
      v31 = v69;
      v32 = OUTLINED_FUNCTION_25_19();
      sub_1E3781F8C(v32, v33, v34);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v35(v20);

      v36 = OUTLINED_FUNCTION_25_19();
      sub_1E3781FA4(v36, v37, v38, 1);
      v39 = sub_1E41FFC94();
      v40 = sub_1E42067F4();

      v41 = OUTLINED_FUNCTION_25_19();
      sub_1E37D172C(v41, v42, v43, 1);
      if (os_log_type_enabled(v39, v40))
      {
        v44 = OUTLINED_FUNCTION_49_0();
        v64 = swift_slowAlloc();
        *&v71 = v64;
        *v44 = 136315394;
        v45 = OUTLINED_FUNCTION_32_19();

        *(v44 + 4) = v45;
        v31 = v69;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_1E3270FC8(v31, v10, &v71);
        _os_log_impl(&dword_1E323F000, v39, v40, "%s Received empty items from fragment request: [%s]", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v13 + 8))(v20, v11);
      sub_1E37CDAD0(0, v31, v10, 2);
    }

    else
    {
      v70[0] = sub_1E3F6FB3C(v69, v10, v8);
      v70[1] = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      sub_1E4148C68(sub_1E37BCD7C, v50, &v71);

      v51 = v71;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v52(v17);

      v53 = sub_1E41FFC94();
      v54 = sub_1E42067F4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_49_0();
        v69 = swift_slowAlloc();
        *&v71 = v69;
        *v55 = 136315394;
        v56 = OUTLINED_FUNCTION_32_19();
        LODWORD(v65) = v54;
        v57 = v56;

        *(v55 + 4) = v57;
        *(v55 + 12) = 2080;
        v58 = sub_1E3270FC8(v51, *(&v51 + 1), &v71);

        *(v55 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v53, v65, "%s Received error [%s]", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v13 + 8))(v17, v11);
    }

    if (sub_1E37D01CC(v67, 2, v59))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_36();
      v61 = *(v60 + 1432);

      v61(v62);
    }

    if (v68)
    {
      v68(0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v24(v23);

    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      *&v71 = v28;
      *v27 = 136315138;
      v29 = OUTLINED_FUNCTION_32_19();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_1E323F000, v25, v26, "%s Received success response", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v13 + 8))(v23, v11);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v46 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
    OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest, v70);
    sub_1E37D1384(&v71, v1 + v46);
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E40B6838();

    if (v64)
    {
      v48 = 511;
    }

    else
    {
      v48 = 255;
    }

    sub_1E37CDAD0(v47, 0, 0, v48);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37CFCD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(a1 + v3, &v15);
  if (!v16)
  {
    return sub_1E37CD87C(&v15);
  }

  sub_1E3251BE8(&v15, v17);
  sub_1E327F454(v17, &v15);
  v4 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest, &v14);
  sub_1E37D1384(&v15, v1 + v4);
  swift_endAccess();
  v5 = sub_1E37CF120();
  v7 = v6;
  *(a1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) = 0;
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1E327F454(v17, &v15);
  OUTLINED_FUNCTION_44_15();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v7;
  sub_1E3251BE8(&v15, (v11 + 5));
  v12 = *(v9 + 40);

  v12(sub_1E37D1430, v11, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1E37CFE64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v43 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  if (Strong)
  {
    v41[0] = v9;
    v41[1] = v7;
    v18(v16);

    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_6_21();
      v22 = OUTLINED_FUNCTION_100();
      v44[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1E3270FC8(v42, v3, v44);
      _os_log_impl(&dword_1E323F000, v19, v20, "%s continue old request", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v23 = OUTLINED_FUNCTION_26_1();
    v24(v23);
    v25 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_28_13();
    v26 = OUTLINED_FUNCTION_38();
    v27(v26, v25);
    v28 = v1[3];
    v29 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v28);
    v30 = (*(v29 + 24))(v28, v29);
    v32 = v31;
    sub_1E37CF664();
    sub_1E34AF594(v30, v32);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_43_0();
    v34(v33);

    v35 = sub_1E41FFC94();
    v36 = sub_1E42067F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_6_21();
      v38 = OUTLINED_FUNCTION_100();
      v44[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1E3270FC8(v42, v3, v44);
      _os_log_impl(&dword_1E323F000, v35, v36, "%s continue request but collection view model object is invalid", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v39 = OUTLINED_FUNCTION_16_0();
    v40(v39);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37D1788(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E37D027C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E34AF4E4(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1E6911E60](v3, a1);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1E37D0310()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v6(v0);

    v7 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_10_11();
      *v1 = 136315138;
      v8 = sub_1E37CE104();
      v10 = OUTLINED_FUNCTION_38_8(v8, v9);

      *(v1 + 4) = v10;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v11, v12, "%s collection's children did update");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    (*(v4 + 8))(v0, v2);
    type metadata accessor for CollectionInteractor(0);
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v13, v14, &unk_1E42BD340);
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D04E0()
{

  return sub_1E37CDAD0(v0, 0, 0, 511);
}

void sub_1E37D0514()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v9(v8);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v32 = v11;
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315906;
    v13 = (*(*v1 + 1344))();
    sub_1E37D144C(v13, v14, v15);
    v16 = sub_1E4207944();
    v18 = sub_1E3270FC8(v16, v17, &v33);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;

    v19 = OUTLINED_FUNCTION_57();
    v22 = sub_1E3270FC8(v19, v20, v21);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2080;
    v23 = sub_1E4207944();
    v25 = sub_1E3270FC8(v23, v24, &v33);

    *(v12 + 24) = v25;
    *(v12 + 32) = 2080;

    v26 = OUTLINED_FUNCTION_57();
    v29 = sub_1E3270FC8(v26, v27, v28);

    *(v12 + 34) = v29;
    _os_log_impl(&dword_1E323F000, v10, v32, "CollectionInteractor::didUpdateItem collection: %s, collectionId: %s, viewModel: %s, id: %s", v12, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_0_33();
  sub_1E37CE070(v30, v31, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D0894()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1160);

  v8 = v6(v7);

  v26[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  v25 = sub_1E4205F84();
  v10 = v9;
  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 368);

  v14 = v12(v13);
  v16 = v15;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v17(v0);

  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    v24 = v1;
    v20 = OUTLINED_FUNCTION_100();
    v26[0] = swift_slowAlloc();
    *v20 = 136446722;
    v21 = sub_1E37CE104();
    OUTLINED_FUNCTION_38_8(v21, v22);
    OUTLINED_FUNCTION_11_5();

    *(v20 + 4) = v14;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1E3270FC8(v14, v16, v26);
    *(v20 + 22) = 2080;
    v23 = sub_1E3270FC8(v25, v10, v26);

    *(v20 + 24) = v23;

    _os_log_impl(&dword_1E323F000, v18, v19, "%{public}s needs more content for collection: %s with context: %s", v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v3 + 8))(v0, v24);
  }

  else
  {

    (*(v3 + 8))(v0, v1);
  }

  OUTLINED_FUNCTION_25();
  sub_1E37CE37C();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D0BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = *(*v6 + 352);

    v9 = v7(v8);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 48) = v9;

  if (v9)
  {
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v10;

    sub_1E41EC148(sub_1E37D16B0, v11);
    OUTLINED_FUNCTION_11_5();
  }

  else
  {
    a2 = 0;
  }

  *(v3 + 72) = a2;
}

void sub_1E37D0D10()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4 = OUTLINED_FUNCTION_43_0();
    v5(v4);

    v6 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v12 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v12);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v7, v8, "%{public}s suspended.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v9 = OUTLINED_FUNCTION_16_0();
    v11 = v10(v9);
    (*(*v3 + 360))(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D0E90()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4 = OUTLINED_FUNCTION_43_0();
    v5(v4);

    v6 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v12 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v12);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v7, v8, "%{public}s resumed.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v9 = OUTLINED_FUNCTION_16_0();
    v11 = v10(v9);
    (*(*v3 + 368))(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D1010()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4(v0);

    v5 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v11);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v6, v7, "%{public}s cancelled.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v8 = OUTLINED_FUNCTION_57();
    v10 = v9(v8);
    (*(*v3 + 376))(v10);

    v0[5] = 0;

    v0[6] = 0;

    v0[9] = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D11B8()
{
  sub_1E34AF594(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_44_15();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E37D1224()
{
  v1 = *(*v0 + 24);
  sub_1E34AF604(v1, *(*v0 + 32));
  return v1;
}

uint64_t sub_1E37D1314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680, &unk_1E42B6560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37D1384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680, &unk_1E42B6560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E37D144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283360;
  if (!qword_1EE283360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283360);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI0A11EngineErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI0A11EngineErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI20CollectionInteractorC10FetchStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1E37D1590(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 26))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E37D15F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1E37D164C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = a2 - 0x7FFFFFFF;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_1E37D16B0(uint64_t a1)
{
  (*(v1 + 16))(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 17) << 8));
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 72) = 0;
  }

  return result;
}

uint64_t sub_1E37D172C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_1E37B5ACC(a1, a2, a3);
  }

  else
  {
  }
}

unint64_t sub_1E37D1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE269318;
  if (!qword_1EE269318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269318);
  }

  return result;
}

unint64_t sub_1E37D17DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE269320;
  if (!qword_1EE269320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269320);
  }

  return result;
}

uint64_t sub_1E37D1830()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_33();
  sub_1E37CE070(v0, v1, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E37D18C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E37D0894();
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_32_19()
{
  v3 = *(v1 - 192);

  return sub_1E3270FC8(v3, v0, (v1 - 128));
}

uint64_t sub_1E37D1938()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E37D1980()
{
  OUTLINED_FUNCTION_156();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1E37D1A20()
{
  OUTLINED_FUNCTION_156();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  return result;
}

uint64_t sub_1E37D1A5C(uint64_t a1, unint64_t a2)
{
  v140 = sub_1E41FFCB4();
  v141 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v139 - v12;
  v143 = sub_1E4205CB4();
  v154 = 2573;
  v155 = 0xE200000000000000;
  v153 = &v154;

  v14 = 0;
  v16 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v152, a1, a2, v15);
  v17 = v16;
  v139[0] = 0;
  v150 = *(v16 + 2);
  if (!v150 || (v18 = *(v16 + 4), v19 = *(v17 + 6), v20 = *(v17 + 7), v149 = v17 + 32, v21 = *(v17 + 5), v142 = v17, v22 = sub_1E37D2BE0(v18, v21, v19, v20, 0x312E312F50545448, 0xEF4B4F2030303220), v23 = v142, (v22 & 1) == 0))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_34();
    v3 = v140;
    v88(v13);
    v89 = v13;
    v90 = sub_1E41FFC94();
    v91 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v91))
    {
      v92 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_3_29(v92);
      v93 = "SSDPResponseParser:: SSDP Data is not an M-Search response, skipping";
      goto LABEL_76;
    }

    goto LABEL_93;
  }

  v24 = 0;
  while (1)
  {
    if (v24 >= *(v23 + 2))
    {
      __break(1u);
      goto LABEL_85;
    }

    v25 = &v149[4 * v24];
    v26 = *v25;
    v13 = v25[1];
    v27 = v13 >> 14;
    if (v13 >> 14 != *v25 >> 14)
    {
      break;
    }

LABEL_56:
    if (++v24 == v150)
    {

      v94 = OUTLINED_FUNCTION_14_28(0x4F432D4548434143, 0xEE003A4C4F52544ELL);
      if (v95)
      {
        v13 = v94;
        v14 = v95;
        OUTLINED_FUNCTION_2_30();
        if (v96)
        {
          v97 = v143;
          sub_1E37D26AC(978606149, 0xE400000000000000, v143);
          if (!v98)
          {

            sub_1E324FBDC();
            OUTLINED_FUNCTION_0_34();
            v123 = OUTLINED_FUNCTION_1_63();
            v124(v123);
            v89 = v13;
            v90 = sub_1E41FFC94();
            v125 = sub_1E42067F4();
            if (OUTLINED_FUNCTION_6_33(v125))
            {
              v126 = OUTLINED_FUNCTION_125_0();
              OUTLINED_FUNCTION_3_29(v126);
              v93 = "SSDPResponseParser:: Required EXT field not found in response, skipping";
              goto LABEL_76;
            }

            goto LABEL_93;
          }

          v99 = sub_1E37D26AC(0x4E4F495441434F4CLL, 0xE90000000000003ALL, v97);
          if (v100)
          {
            v101 = v99;
            v3 = v100;
            OUTLINED_FUNCTION_2_30();
            if (v102)
            {
              v103 = OUTLINED_FUNCTION_14_28(0x3A524556524553, 0xE700000000000000);
              if (v104)
              {
                v105 = v103;
                v106 = v104;
                OUTLINED_FUNCTION_2_30();
                if (v107)
                {
                  v108 = OUTLINED_FUNCTION_14_28(3822675, 0xE300000000000000);
                  if (v109)
                  {
                    v2 = v108;
                    v110 = v109;
                    OUTLINED_FUNCTION_2_30();
                    if (v111)
                    {
                      OUTLINED_FUNCTION_14_28(978211669, 0xE400000000000000);
                      if (v112)
                      {
                        v113 = v112;
                        OUTLINED_FUNCTION_2_30();
                        if (v115)
                        {
                          v116 = *(*v139[1] + 88);
                          v151 = v114;
                          v117 = v116(v114);
                          v154 = v13;
                          v155 = v14;
                          v156 = v101;
                          v157 = v3;
                          v158 = v2;
                          v159 = v110;
                          v160 = v105;
                          v161 = v106;
                          v162 = v151;
                          v163 = v113;
                          v117(&v154);
                          sub_1E37D2C54(&v154);
                        }

LABEL_90:
                      }

                      sub_1E324FBDC();
                      OUTLINED_FUNCTION_0_34();
                      v135 = OUTLINED_FUNCTION_1_63();
                      v136(v135);
                      v89 = v13;
                      v90 = sub_1E41FFC94();
                      v137 = sub_1E42067F4();
                      if (OUTLINED_FUNCTION_6_33(v137))
                      {
                        v138 = OUTLINED_FUNCTION_125_0();
                        OUTLINED_FUNCTION_3_29(v138);
                        v93 = "SSDPResponseParser:: Required USN field not found in response, skipping";
LABEL_76:
                        _os_log_impl(&dword_1E323F000, v90, v89, v93, v14, 2u);
                        MEMORY[0x1E69143B0](v14, -1, -1);

                        (*(v2 + 8))(v13, v3);
                      }

LABEL_93:

                      (*(v14 + 8))(v13, v3);
                    }

LABEL_85:
                  }

                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_0_34();
                  v131 = OUTLINED_FUNCTION_1_63();
                  v132(v131);
                  v89 = v13;
                  v90 = sub_1E41FFC94();
                  v133 = sub_1E42067F4();
                  if (OUTLINED_FUNCTION_6_33(v133))
                  {
                    v134 = OUTLINED_FUNCTION_125_0();
                    OUTLINED_FUNCTION_3_29(v134);
                    v93 = "SSDPResponseParser:: Required ST field not found in response, skipping";
                    goto LABEL_76;
                  }

                  goto LABEL_93;
                }
              }

              sub_1E324FBDC();
              OUTLINED_FUNCTION_0_34();
              v127 = OUTLINED_FUNCTION_1_63();
              v128(v127);
              v89 = v13;
              v90 = sub_1E41FFC94();
              v129 = sub_1E42067F4();
              if (OUTLINED_FUNCTION_6_33(v129))
              {
                v130 = OUTLINED_FUNCTION_125_0();
                OUTLINED_FUNCTION_3_29(v130);
                v93 = "SSDPResponseParser:: Required SERVER field not found in response, skipping";
                goto LABEL_76;
              }

              goto LABEL_93;
            }
          }

          sub_1E324FBDC();
          OUTLINED_FUNCTION_0_34();
LABEL_74:
          v119 = OUTLINED_FUNCTION_1_63();
          v120(v119);
          v89 = v13;
          v90 = sub_1E41FFC94();
          v121 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_6_33(v121))
          {
            v122 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_3_29(v122);
            v93 = "SSDPResponseParser:: Required CACHE-CONTROL field not found in response, skipping";
            goto LABEL_76;
          }

          goto LABEL_93;
        }
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_34();
      goto LABEL_74;
    }
  }

  v148 = v24;
  v14 = v25[2];

  v28 = v26;
  v151 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v28; ; i = sub_1E4207124())
    {
      v30 = i >> 14;
      if (i >> 14 == v27)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_5_39();
      v31 = sub_1E4207144();
      v2 = v32;
      if (v31 == 32 && v32 == 0xE100000000000000)
      {
        break;
      }

      v3 = sub_1E42079A4();

      if (v3)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_5_39();
    }

LABEL_16:
    v2 = v28 >> 14;
    if (v28 >> 14 != v30)
    {
      if (v30 < v2)
      {
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v34 = OUTLINED_FUNCTION_13_37(v28, i);
      v36 = v35;
      v145 = v37;
      v144 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v36;
      v147 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v151 = sub_1E37D2AD8(0, *(v151 + 2) + 1, 1, v151);
      }

      v3 = *(v151 + 2);
      v40 = *(v151 + 3);
      if (v3 >= v40 >> 1)
      {
        v151 = sub_1E37D2AD8((v40 > 1), v3 + 1, 1, v151);
      }

      v41 = v151;
      *(v151 + 2) = v3 + 1;
      v42 = &v41[32 * v3];
      v43 = v146;
      *(v42 + 4) = v147;
      *(v42 + 5) = v43;
      v44 = v144;
      *(v42 + 6) = v145;
      *(v42 + 7) = v44;
    }

    OUTLINED_FUNCTION_5_39();
    v28 = sub_1E4207124();
  }

  while (v2 == v30 || *(v151 + 2) != 1);
LABEL_25:
  if (v28 >> 14 == v27)
  {

    v45 = v151;
    v2 = *(v151 + 2);
    goto LABEL_33;
  }

  if (v27 < v28 >> 14)
  {
    goto LABEL_89;
  }

  v46 = OUTLINED_FUNCTION_13_37(v28, v13);
  v14 = v47;
  v13 = v48;
  v50 = v49;

  v45 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1E37D2AD8(0, *(v45 + 2) + 1, 1, v45);
  }

  v52 = *(v45 + 2);
  v51 = *(v45 + 3);
  v2 = v52 + 1;
  if (v52 >= v51 >> 1)
  {
    v45 = sub_1E37D2AD8((v51 > 1), v52 + 1, 1, v45);
  }

  *(v45 + 2) = v2;
  v53 = &v45[32 * v52];
  *(v53 + 4) = v46;
  *(v53 + 5) = v14;
  *(v53 + 6) = v13;
  *(v53 + 7) = v50;
LABEL_33:
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_12_28();

    OUTLINED_FUNCTION_32_0();
    v14 = sub_1E4205FA4();
    v70 = v69;

    v71 = v143;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v71;
    v72 = sub_1E327D33C(v14, v70);
    if (__OFADD__(*(v71 + 16), (v73 & 1) == 0))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v13 = v72;
    v2 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
    if (sub_1E4207644())
    {
      v74 = sub_1E327D33C(v14, v70);
      if ((v2 & 1) != (v75 & 1))
      {
        goto LABEL_100;
      }

      v13 = v74;
    }

    v143 = v154;
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_29(v154 + 8 * (v13 >> 6));
      v79 = (v78 + 16 * v13);
      *v79 = v14;
      v79[1] = v70;
      v80 = (*(v77 + 56) + 16 * v13);
      *v80 = 0;
      v80[1] = 0xE000000000000000;
      v81 = *(v77 + 16);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (!v82)
      {
        goto LABEL_54;
      }

      goto LABEL_98;
    }

    v76 = (*(v154 + 56) + 16 * v13);
    *v76 = 0;
    v76[1] = 0xE000000000000000;
LABEL_48:

LABEL_49:

LABEL_55:
    v23 = v142;
    v24 = v148;
    goto LABEL_56;
  }

  if (v2 != 2)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_12_28();

  v13 = sub_1E4205FA4();
  v14 = v54;

  if (*(v45 + 2) < 2uLL)
  {
    __break(1u);
    goto LABEL_96;
  }

  v55 = *(v45 + 8);
  v56 = *(v45 + 9);
  v57 = *(v45 + 10);
  v58 = *(v45 + 11);

  v59 = MEMORY[0x1E6910920](v55, v56, v57, v58);
  v61 = v60;

  v62 = v143;
  v3 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v62;
  v63 = sub_1E327D33C(v13, v14);
  if (__OFADD__(*(v62 + 16), (v64 & 1) == 0))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v65 = v63;
  v2 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_40;
  }

  v66 = sub_1E327D33C(v13, v14);
  if ((v2 & 1) == (v67 & 1))
  {
    v65 = v66;
LABEL_40:
    v143 = v154;
    if (v2)
    {
      v68 = (*(v154 + 56) + 16 * v65);
      *v68 = v59;
      v68[1] = v61;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_11_29(v154 + 8 * (v65 >> 6));
    v85 = (v84 + 16 * v65);
    *v85 = v13;
    v85[1] = v14;
    v86 = (*(v77 + 56) + 16 * v65);
    *v86 = v59;
    v86[1] = v61;
    v87 = *(v77 + 16);
    v82 = __OFADD__(v87, 1);
    v83 = v87 + 1;
    if (!v82)
    {
LABEL_54:
      *(v77 + 16) = v83;
      goto LABEL_55;
    }

LABEL_99:
    __break(1u);
  }

LABEL_100:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E37D26AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1E37D2704()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1E37D273C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1E4206184();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1E37D2AD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1E37D2AD8((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_1E4206164();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1E4206034();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1E4206184();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1E37D2AD8(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1E37D2AD8((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_1E4206034();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1E4206184();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1E37D2AD8(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E37D2AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D670, &qword_1E42C9150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37D2BE0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1E4207924() & 1;
  }
}

uint64_t sub_1E37D2C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E37D2CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1E37D2D54()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_5_40(&OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView);
  v8.receiver = v0;
  v8.super_class = v1;
  v2 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4299720;
  *(v3 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  *(v3 + 40) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v4 = sub_1E42062A4();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E37D460C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_8;
  v6 = _Block_copy(aBlock);

  [v2 vui:v4 registerForTraitChanges:v6 withHandler:?];
  _Block_release(v6);

  return v2;
}

void sub_1E37D2F38()
{
  OUTLINED_FUNCTION_5_40(&OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView);
  sub_1E42076B4();
  __break(1u);
}

double sub_1E37D2FC0(char a1, double a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_layout];
  if (v7)
  {
    v8 = v3;
    v10 = *(*v7 + 176);

    v12 = v186;
    v10(v186, v11);
    if (v187)
    {
      v12 = MEMORY[0x1E69DDCE0];
      MaxX = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      MaxX = *&v186[1];
      v14 = *&v186[2];
      v15 = *&v186[3];
    }

    v16 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView;
    v17 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    v160 = *&a3;
    *&v171 = v14;
    v167 = *v12;
    if (v17)
    {
      [v17 vui:a2 - MaxX - v15 sizeThatFits:a3 - *v12 - v14];
      v19 = v18;
      rect.size.width = v20;
      v22 = OUTLINED_FUNCTION_10_27();
      if (v21)
      {
        v23 = v21;
        if (([v23 isHidden] & 1) == 0)
        {
          OUTLINED_FUNCTION_5_0(v7 + 104, &rect.size.height);
          OUTLINED_FUNCTION_8();
          v137 = *(v136 + 152);

          v137(v188, v138);

          if (v189)
          {
            v139 = 0.0;
          }

          else
          {
            v139 = *&v188[1];
          }

          v166 = v19;
          rect.origin.y = v4 + v139;
          OUTLINED_FUNCTION_8();
          v141 = *(v140 + 152);

          v141(v190, v142);

          v143 = v190[0];
          if (v191)
          {
            v143 = 0.0;
          }

          v144 = MaxX + v139;
          *&v210.size.width = v166;
          v145 = v167 + v143;
          v210.origin.x = MaxX + v139;
          v210.origin.y = v145;
          v210.size.height = rect.size.width;
          CGRectGetMaxY(v210);
          OUTLINED_FUNCTION_8();
          v147 = *(v146 + 152);

          v147(&v192, v148);

          OUTLINED_FUNCTION_7_48();
          if (v55)
          {
            v149 = v150;
          }

          if (v151 < 0.0)
          {
            v26 = v152;
          }

          else
          {
            v26 = v149;
          }

          v211.origin.x = MaxX + v139;
          v211.origin.y = v145;
          *&v211.size.width = v166;
          v211.size.height = rect.size.width;
          *&v181 = CGRectGetMaxX(v211);
          OUTLINED_FUNCTION_8();
          v154 = *(v153 + 152);

          v154(v193, v155);

          if (v194)
          {
            v156 = 0.0;
          }

          else
          {
            v156 = *&v193[3];
          }

          rect.origin.x = v144;
          v212.origin.x = v144;
          v169 = v145;
          v212.origin.y = v145;
          *&v212.size.width = v166;
          v212.size.height = rect.size.width;
          Width = CGRectGetWidth(v212);

          v4 = rect.origin.y + Width;
          v25 = v156;
          MaxX = *&v181;
          v24 = *&v166;
LABEL_12:
          v27 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView;
          v28 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
          rect.origin.y = 0.0;
          *&v173 = v15;
          v175 = v4;
          if (v28)
          {
            v29 = v28;
            if (([v29 isHidden] & 1) == 0)
            {
              OUTLINED_FUNCTION_5_0(v7 + 120, v183);
              OUTLINED_FUNCTION_0_35();
              v31 = *(v30 + 200);

              v33 = COERCE_DOUBLE(v31(v32));
              v35 = v34;

              if (v35)
              {
                v36 = 0.0;
              }

              else
              {
                v36 = v33;
              }

              OUTLINED_FUNCTION_0_35();
              v38 = *(v37 + 304);

              v40 = COERCE_DOUBLE(v38(v39));
              LOBYTE(v38) = v41;

              if (v38)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v40;
              }

              OUTLINED_FUNCTION_0_35();
              v44 = *(v43 + 152);

              v44(v195, v45);

              v46 = v195[0];
              if (v196)
              {
                v46 = 0.0;
              }

              v47 = v25 + MaxX;
              v48 = v167 + v46;
              v206.origin.x = v47;
              v206.origin.y = v48;
              v206.size.width = v36;
              v206.size.height = v42;
              MaxX = CGRectGetMaxX(v206);
              v177 = *&v47;
              v207.origin.x = v47;
              v162 = *&v48;
              v207.origin.y = v48;
              v207.size.width = v36;
              v207.size.height = v42;
              CGRectGetMaxY(v207);
              OUTLINED_FUNCTION_0_35();
              v50 = *(v49 + 152);

              v50(&v197, v51);

              OUTLINED_FUNCTION_7_48();
              if (v55)
              {
                v52 = v53;
              }

              if (v26 <= v54)
              {
                v26 = v52;
              }

              OUTLINED_FUNCTION_0_35();
              v57 = *(v56 + 152);

              v57(v198, v58);

              if (v199)
              {
                v25 = 0.0;
              }

              else
              {
                v25 = *&v198[3];
              }

              v15 = *&v173;
              v179 = *&v36;
              v175 = v175 + v36 + v25;
LABEL_33:
              v59 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView;
              v60 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
              if (v60)
              {
                v61 = v60;
                if (([v61 isHidden] & 1) == 0)
                {
                  OUTLINED_FUNCTION_5_0(v7 + 112, v184);
                  OUTLINED_FUNCTION_8();
                  v66 = *(v65 + 152);

                  v66(v200, v67);

                  v68 = *&v200[3];
                  if (v201)
                  {
                    v68 = 0.0;
                  }

                  *&v164 = v24;
                  v69 = v175 + v68;
                  v70 = v25 + MaxX;
                  v71 = v25;
                  v72 = a2 - v70 - v68 - v15;
                  [v61 vui:v72 sizeThatFits:1.79769313e308];
                  v64 = v74;
                  if (v72 >= v73)
                  {
                    v63 = v73;
                  }

                  else
                  {
                    v63 = v72;
                  }

                  rect.origin.y = v70;
                  v208.origin.x = v70;
                  v208.origin.y = v167;
                  v208.size.width = v63;
                  v208.size.height = v64;
                  CGRectGetMaxY(v208);
                  OUTLINED_FUNCTION_8();
                  v76 = *(v75 + 152);

                  v76(&v202, v77);

                  OUTLINED_FUNCTION_7_48();
                  if (v55)
                  {
                    v78 = v79;
                  }

                  v62 = v167;
                  if (v26 <= v80)
                  {
                    v26 = v78;
                  }

                  v175 = v69 + v71 + v63;
                  v24 = *&v164;
LABEL_48:
                  v81 = *&v171 + v26;
                  v82 = *&v171;
                  y = rect.origin.y;
                  v84 = v63;
                  v85 = v64;
                  v86 = v81 - CGRectGetHeight(*(&v62 - 1));
                  v209.origin.x = rect.origin.x;
                  v209.origin.y = v169;
                  v209.size.width = v24;
                  v209.size.height = rect.size.width;
                  CGRectGetHeight(v209);
                  OUTLINED_FUNCTION_5_0(v7 + 120, v185);
                  OUTLINED_FUNCTION_0_35();
                  v88 = *(v87 + 152);

                  v88(&v203, v89);

                  if ((v205 & 1) != 0 || (v98 = v204, v204 <= 0.0))
                  {
                    v99 = (v81 - OUTLINED_FUNCTION_15_31(v90, v91, v92, v93, v94, v95, v96, v97, v158, v160, v162, *&v63, *&v64, *&v169, v171, v173, *&v175, v177, v179)) * 0.5;
                  }

                  else
                  {
                    v99 = v81 - v82 - v98 - OUTLINED_FUNCTION_15_31(v90, v91, v92, v93, v94, v95, v96, v97, v158, v160, v162, *&v63, *&v64, *&v169, v171, v173, *&v175, v177, v179);
                  }

                  v100 = v86 * 0.5;
                  if ([v3 vuiIsRTL])
                  {
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    OUTLINED_FUNCTION_13_38(v109, v110, v111, v112, v113, v114, v115, v116, v159, *&v161, *&v163, *&v165, *&v168, *&v170, *&v172, *&v174, *&v176, *&v178, *&v180, rect.origin.x);
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    rect.origin.x = v117;
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    v178 = v118;
                    v180 = v119;
                    v99 = v120;
                    v64 = v121;
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    rect.origin.y = v101;
                    v100 = v102;
                    v122 = v103;
                    v123 = v104;
                    if (a1)
                    {
                      goto LABEL_68;
                    }
                  }

                  else
                  {
                    v122 = *&v165;
                    v123 = *&v168;
                    if (a1)
                    {
LABEL_68:
                      a2 = *&v174 + *&v176;

                      return a2;
                    }
                  }

                  if (*&v3[v16])
                  {
                    v124 = OUTLINED_FUNCTION_13_38(v101, v102, v103, v104, v105, v106, v107, v108, v159, *&v161, *&v163, *&v165, *&v168, *&v170, *&v172, *&v174, *&v176, *&v178, *&v180, rect.origin.x);
                    [v125 v126];
                  }

                  v127 = *&v3[v27];
                  if (v127)
                  {
                    [v127 setFrame_];
                  }

                  v128 = *&v3[v59];
                  if (v128)
                  {
                    [v128 setFrame_];
                  }

                  v129 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
                  if (v129)
                  {
                    v130 = v129;
                    OUTLINED_FUNCTION_16_19();
                    [v130 setFrame_];
                  }

                  v131 = [v8 vuiLayer];
                  if (v131)
                  {
                    v132 = v131;
                    [v131 setMasksToBounds_];
                  }

                  v133 = [v8 vuiLayer];
                  if (v133)
                  {
                    v134 = v133;
                    [v133 setCornerRadius_];
                  }

                  goto LABEL_68;
                }
              }

              v62 = 0.0;
              v63 = 0.0;
              v64 = 0.0;
              goto LABEL_48;
            }
          }

          v177 = 0;
          v179 = 0;
          v162 = 0;
          goto LABEL_33;
        }

        v22 = 0.0;
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_27();
    }

    v169 = v22;
    v24 = 0.0;
    rect.size.width = v22;
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_12;
  }

  return a2;
}

char *sub_1E37D394C(uint64_t a1, uint64_t a2)
{
  v76[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A690, &unk_1E429DCE0);
  v4 = sub_1E4148C68(sub_1E37D4118, v3, v77);
  v5 = v77[0];
  v6 = (*(*a1 + 392))(v4);
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  if (*v6 != _TtC8VideosUI20PlaybackStatusLayout)
  {
LABEL_35:

    return v5;
  }

  *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_layout] = v6;

  v8 = sub_1E39C408C();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for UIFactory();
    v74 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView;
    v10 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_5_0((v7 + 13), v75);
    v11 = v7[13];
    v12 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);

    v13 = v10;
    v14 = sub_1E393D92C(v9, v10, v77, v11, v12);

    sub_1E373C624(v77);
    v15 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView] = v14;
    v16 = v14;
    OUTLINED_FUNCTION_9_27();
    [v5 vui_setNeedsLayout];

    v17 = *&v5[v74];
    if (v17)
    {
      v18 = v17;
      [v18 setHidden_];
    }
  }

  else
  {
    v19 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    if (v19)
    {
      [v19 setHidden_];
    }
  }

  v20 = sub_1E39C408C();
  if (v20)
  {
    v21 = v20;
    type metadata accessor for UIFactory();
    v22 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView;
    v23 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    OUTLINED_FUNCTION_6_34();
    v24 = type metadata accessor for StyledProgressBarView();
    v25 = v23;
    v26 = sub_1E393D92C(v21, v23, v77, 0, v24);

    sub_1E373C624(v77);
    v27 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView] = v26;
    v28 = v26;
    OUTLINED_FUNCTION_9_27();

    v29 = *&v5[v22];
    if (v29)
    {
      v30 = v29;
      [v30 setHidden_];
    }
  }

  else
  {
    v31 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    if (v31)
    {
      [v31 setHidden_];
    }
  }

  v32 = sub_1E39C408C();
  if (v32)
  {
    v33 = v32;
    type metadata accessor for UIFactory();
    v34 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView;
    v35 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_5_0((v7 + 14), v76);
    v36 = v7[14];
    v37 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);

    v38 = v35;
    v39 = sub_1E393D92C(v33, v35, v77, v36, v37);

    sub_1E373C624(v77);
    v40 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView] = v39;
    v41 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    v42 = &selRef_textLayout;
    v43 = v39;
    [v5 vui:v41 addSubview:v40 oldView:?];
    [v5 vui_setNeedsLayout];

    v44 = *&v5[v34];
    if (v44)
    {
      v45 = v44;
      [v45 setHidden_];
    }
  }

  else
  {
    v46 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    v42 = &selRef_textLayout;
    if (v46)
    {
      [v46 setHidden_];
    }
  }

  type metadata accessor for PlaybackStatusBackgroundView();
  v47 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
  v48 = v47;
  v49 = v48;
  if (!v47)
  {
    v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v50 = v48;
  if (*sub_1E3A70EB0() != 1)
  {
    vtable = (*v7)[18].vtable;
    v67 = v49;
    v68 = vtable();
    [v67 setVuiBackgroundColor_];

    v65 = &selRef_vui_disableLocalAsset;
LABEL_32:

    v69 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
    *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView] = v49;
    v70 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView;
    v71 = *&v5[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
    v72 = v42[466];
    v73 = v49;
    [v5 v72];
    if (*&v5[v70])
    {
      [v5 vui_sendSubviewToBack_];
    }

    [v5 v65[122]];

    goto LABEL_35;
  }

  v51 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView;
  if (*&v49[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView])
  {
LABEL_27:
    v60 = objc_opt_self();
    v61 = v49;
    v62 = [v60 clearColor];
    [v61 setVuiBackgroundColor_];

    v63 = *&v49[v51];
    if (v63)
    {
      [v63 setHidden_];
    }

    v64 = *&v61[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
    v65 = &selRef_vui_disableLocalAsset;
    v42 = &selRef_textLayout;
    if (v64)
    {
      [v64 setHidden_];
    }

    goto LABEL_32;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1E429DCC0;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    *(v53 + 32) = result;
    *(v53 + 40) = [objc_opt_self() colorEffectSaturate_];
    sub_1E3280A90(0, &qword_1ECF2A698, 0x1E69DD290);
    v55 = sub_1E42062A4();

    [v52 setBackgroundEffects_];

    v56 = v52;
    sub_1E37D424C(v52);
    v57 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v58 = ((*v7)[18].vtable)();
    [v57 setVuiBackgroundColor_];

    v59 = v57;
    sub_1E37D4358(v57);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_1E37D4118@<X0>(void *a1@<X8>)
{
  type metadata accessor for PlaybackStatusView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E37D4154()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView);
  if (result)
  {
    return [result bottomMarginWithBaselineMargin_];
  }

  return result;
}

void sub_1E37D424C(void *a1)
{
  v9 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView] = a1;
  v2 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  v4 = a1;
  [v1 vui:v3 addSubview:v9 oldView:?];
  if (*&v1[v2])
  {
    [v1 vui_sendSubviewToBack_];
  }

  [v1 vui_setNeedsLayout];
  v5 = *&v1[v2];
  if (v5)
  {
    v6 = v5;
    v7 = *sub_1E3E932E0();
    v8 = *sub_1E3E932EC();
    if (v7)
    {
      if ((v8 & ~v7) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v7 |= v8;
LABEL_10:
    [v6 setAutoresizingMask_];
  }
}

void sub_1E37D4358(void *a1)
{
  v10 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView] = a1;
  v2 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
  v4 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  v5 = a1;
  [v1 vui:v3 insertSubview:v4 aboveSubview:v10 oldView:?];
  [v1 vui_setNeedsLayout];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = v6;
    v8 = *sub_1E3E932E0();
    v9 = *sub_1E3E932EC();
    if (v8)
    {
      if ((v9 & ~v8) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v9)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v8 |= v9;
LABEL_8:
    [v7 setAutoresizingMask_];
  }
}

id sub_1E37D4458()
{
  OUTLINED_FUNCTION_0_8();
  v5 = OUTLINED_FUNCTION_14_29(&OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E37D44D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_14_29(&OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E37D4568(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaybackStatusBackgroundView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E37D460C()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong vui_setNeedsLayout];
    [v2 vui_setNeedsDisplay];
  }
}

void sub_1E37D466C(unint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a1);
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, a1);
      v5 = v6;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    sub_1E37D4BA4(v6, v7, v8);
    sub_1E4206254();
    sub_1E4206254();
    if (v34 == v32 && v35 == v33)
    {

LABEL_16:
      v11 = 0;
      v29 = a2 & 0xC000000000000001;
      v30 = sub_1E32AE9B0(a2);
      while (1)
      {
        if (v30 == v11)
        {
          type metadata accessor for LibMenuItem(0);
          v15 = *(v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
          v16 = *(v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);

          v17 = OUTLINED_FUNCTION_18();
          v12 = sub_1E3A8A680(2, v15, v16, 0, 0, v17 & 1);
          goto LABEL_32;
        }

        if (v29)
        {
          v12 = MEMORY[0x1E6911E60](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v34 == v32 && v35 == v33)
        {
          break;
        }

        v14 = sub_1E42079A4();

        if (v14)
        {
          goto LABEL_31;
        }

        ++v11;
      }

LABEL_31:

LABEL_32:
      v28 = *(*v5 + 256);
      v18 = v28();
      (*(*v12 + 264))(v18 & 1);
      for (j = 0; ; ++j)
      {
        if (v30 == j)
        {
          type metadata accessor for LibMenuItem(0);
          v23 = *(v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
          v24 = *(v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);

          v25 = OUTLINED_FUNCTION_18();
          v20 = sub_1E3A8A680(3, v23, v24, 0, 0, v25 & 1);
          goto LABEL_48;
        }

        if (v29)
        {
          v20 = MEMORY[0x1E6911E60](j, a2);
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v20 = *(a2 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_53;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v34 == v32 && v35 == v33)
        {
          break;
        }

        v22 = sub_1E42079A4();

        if (v22)
        {
          goto LABEL_47;
        }
      }

LABEL_47:

LABEL_48:
      v26 = v28();
      (*(*v20 + 264))(v26 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1E429DCC0;
      *(v27 + 32) = v12;
      *(v27 + 40) = v20;

      return;
    }

    v10 = sub_1E42079A4();

    if (v10)
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1E37D4BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE285EE0;
  if (!qword_1EE285EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285EE0);
  }

  return result;
}

uint64_t sub_1E37D4C08()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E37D4CA4(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = sub_1E3C2F9A0();

  v3 = *sub_1E37D4C08();
  (*(v3 + 2048))();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v4 + 1696))(15);

  OUTLINED_FUNCTION_0_36();
  v6 = *(v5 + 2048);

  v6(v7);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v8 + 1792))(10);

  OUTLINED_FUNCTION_0_36();
  v10 = *(v9 + 2048);

  v10(v11);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v12 + 464))(1);

  OUTLINED_FUNCTION_0_36();
  v14 = *(v13 + 2048);

  v16 = v14(v15);

  sub_1E3755B54();
  OUTLINED_FUNCTION_2_7();
  v17 = sub_1E4206F24();
  (*(*v16 + 680))(v17);

  OUTLINED_FUNCTION_0_36();
  v19 = *(v18 + 2048);

  v21 = v19(v20);

  OUTLINED_FUNCTION_2_7();
  v22 = sub_1E4206F24();
  (*(*v21 + 872))(v22);

  OUTLINED_FUNCTION_0_36();
  v24 = *(v23 + 2048);

  v26 = v24(v25);

  v27 = sub_1E4206F24();
  (*(*v26 + 752))(v27);

  OUTLINED_FUNCTION_0_36();
  v29 = *(v28 + 2048);

  v29(v30);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v31 + 312))(0x4049000000000000, 0);

  sub_1E3C37CBC(v32, 59);

  v33 = sub_1E374EA2C();
  sub_1E3C37CBC(v33, 17);

  return v2;
}

id sub_1E37D5144(void *a1)
{
  v2 = [a1 documentRef];
  v3 = sub_1E4205F14();
  v5 = v4;

  v476 = @"Library";
  v7 = VUIDocumentRefLibraryMainPage;
  v8 = sub_1E4205F14() == v3 && v6 == v5;
  v9 = MEMORY[0x1E69E7D40];
  v10 = &unk_1EE297000;
  if (v8)
  {

    goto LABEL_8;
  }

  v11 = sub_1E42079A4();

  if (v11)
  {
LABEL_8:

    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0, &unk_1E429DDB0));
    *(v12 + *((*v9 & *v12) + qword_1EE297B00 + 32)) = 0;
    OUTLINED_FUNCTION_37_12((v12 + *((*v9 & *v12) + qword_1EE297B00 + 48)));
    v13 = a1;
    v14 = *(**sub_1E3B7B1C8() + 672);

    v16 = v14(v15);

    sub_1E37D9AD0(v16, v483);

    if (*(&v483[1] + 1))
    {
      sub_1E3251BE8(v483, v484);
      sub_1E327F454(v484, v483);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      v17 = type metadata accessor for LibLocalSource();
      OUTLINED_FUNCTION_22_14(v17, v18, v19, v17, v20, v21, v22, v23, v461, v463, v465, v471, @"Library", v477, v478, v479, v480, v481, v482[0]);
      if (swift_dynamicCast())
      {

        v24 = *&v484[2];
        __swift_project_boxed_opaque_existential_1(v484, *(&v484[1] + 1));
        v25 = OUTLINED_FUNCTION_35_0();
        *(&v487[4] + 1) = v26(v25, v24);
        *&v487[5] = v27;
        sub_1E327F454(v484, v483);

        sub_1E41E2E34(v28, v483, v487);

        __swift_destroy_boxed_opaque_existential_1(v484);
        v29 = OUTLINED_FUNCTION_24_9();
        memcpy(v29, v30, 0x58uLL);
        if (*&__dst[0])
        {
          v31 = OUTLINED_FUNCTION_33_17();
          memcpy(v31, v32, 0x58uLL);
          v33 = [v13 uiConfiguration];
          v34 = [v33 isRootViewController];

          OUTLINED_FUNCTION_32();
          v35 = &unk_1EE297000;
          v466 = v34;
          *(v12 + *(v36 + qword_1EE297B00 + 40)) = v34;
          v37 = [v13 contextData];
          if (v37 && (v38 = v37, v39 = [v37 contextDataDict], v38, v39))
          {
            v40 = sub_1E4205C64();

            sub_1E374BD08(v40);
            OUTLINED_FUNCTION_35_0();

            v41 = sub_1E37FAFEC();
            v42 = *v41;
            v43 = v41[1];

            sub_1E3277E60(v42, v43, v39, v487);

            if (*(&v487[1] + 1))
            {
              OUTLINED_FUNCTION_24_9();
              v44 = 0;
              if (OUTLINED_FUNCTION_21_4())
              {
                v35 = &unk_1EE297000;
                if (LOBYTE(__dst[0]) != 1)
                {
                  v45 = 2;
                  v472 = 0;
                  goto LABEL_57;
                }
              }

              else
              {
                v35 = &unk_1EE297000;
              }

LABEL_56:
              v472 = v44;
              v44 = 1;
              v45 = 1;
LABEL_57:
              v97 = objc_opt_self();
              if ([v97 isPhone])
              {
                v98 = [v13 documentRef];
                v99 = sub_1E4205F14();
                v101 = v100;

                v102 = sub_1E4205F14();
                if (v99 == v102 && v101 == v103)
                {
                  goto LABEL_108;
                }

                v105 = OUTLINED_FUNCTION_11_30(v102);

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if (v105)
                {
                  goto LABEL_109;
                }

                v106 = [v13 documentRef];
                v107 = sub_1E4205F14();
                v109 = v108;

                v110 = sub_1E4205F14();
                if (v107 == v110 && v109 == v111)
                {
                  goto LABEL_108;
                }

                v113 = OUTLINED_FUNCTION_11_30(v110);

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if (v113)
                {
                  goto LABEL_109;
                }
              }

              v7 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
              if (![v97 isPad] || (v114 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v114) & 1) == 0))
              {
LABEL_75:
                if (([v97 isPad] & v466 & 1) == 0)
                {
                  goto LABEL_112;
                }

                goto LABEL_109;
              }

              v115 = [v13 documentRef];
              v116 = sub_1E4205F14();
              v118 = v117;

              v119 = sub_1E4205F14();
              if (v116 != v119 || v118 != v120)
              {
                v122 = OUTLINED_FUNCTION_11_30(v119);

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if ((v122 & 1) == 0)
                {
                  goto LABEL_75;
                }

LABEL_109:
                if (v44)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = 2;
                }

LABEL_112:
                v150 = v12 + *((*v9 & *v12) + v35[352] + 16);
                *v150 = v44;
                *(v150 + 8) = v45;
                *(v150 + 16) = 0;
                OUTLINED_FUNCTION_5_41(v150);
                if (v472)
                {
                  *&v151 = OUTLINED_FUNCTION_16_20();
                  *(v152 + 768) = v151;
                  *(v152 + 784) = v151;
                }

                else
                {
                  v153 = sub_1E37FAFB0();
                  v44 = *v153;
                  v154 = v153[1];

                  sub_1E3277E60(v44, v154, v39, v487);

                  if (*(&v487[1] + 1))
                  {
                    type metadata accessor for LibMenuItem(0);
                    OUTLINED_FUNCTION_24_9();
                    if (OUTLINED_FUNCTION_21_4())
                    {
                      v155 = *&__dst[0];
                    }

                    else
                    {
                      v155 = 0;
                    }

LABEL_119:
                    OUTLINED_FUNCTION_32();
                    *(v12 + *(v156 + v35[352] + 24)) = v155;
                    v157 = OUTLINED_FUNCTION_12_29();
                    sub_1E37DA3F4(v157, v158);

                    v159 = sub_1E4201E44();
                    if (OUTLINED_FUNCTION_47_6(v159, v160, v161))
                    {
                      v162 = sub_1E4206AC4();
                    }

                    else
                    {
                      v162 = *MEMORY[0x1E69DF878];
                    }

                    v163 = v162;
                    v164 = objc_opt_self();
                    v165 = v163;
                    OUTLINED_FUNCTION_14_30();
                    v167 = [v164 v166];
                    [v167 addObserver:v44 selector:sel_handleNetworkChanges name:v163 object:0];

                    v168 = [objc_opt_self() sharedInstance];
                    v169 = [v168 launchConfig];

                    LODWORD(v168) = [v169 checkRemoteServerReachability];
                    if (v168)
                    {
                      v170 = [v164 v7 + 901];
                      [v170 addObserver:v44 selector:sel_handleNetworkChanges name:*NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor() object:0];

                      sub_1E37DA42C(__src);
                    }

                    else
                    {
                      sub_1E37DA42C(__src);
                    }

                    return v44;
                  }
                }

                sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
                v155 = 0;
                goto LABEL_119;
              }

LABEL_108:

              v9 = MEMORY[0x1E69E7D40];
              v35 = &unk_1EE297000;
              goto LABEL_109;
            }

            LOBYTE(v44) = 0;
            v35 = &unk_1EE297000;
          }

          else
          {
            v39 = 0;
            *&v95 = OUTLINED_FUNCTION_16_20();
            *(v96 + 768) = v95;
            *(v96 + 784) = v95;
            LOBYTE(v44) = 1;
          }

          sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
          goto LABEL_56;
        }

        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(v484);
    }

    else
    {

      sub_1E325F748(v483, &unk_1ECF2A740, &qword_1E42EF010);
    }

    *&v51 = OUTLINED_FUNCTION_16_20();
    v52[24] = v51;
    v52[25] = v51;
    v52[26] = v51;
    v52[27] = v51;
    v52[28] = v51;
    *&__dst[5] = 0;
LABEL_26:

    sub_1E325F748(__dst, &qword_1ECF2A738, &qword_1E429E308);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0, &unk_1E429DDB0);
LABEL_27:
    swift_deallocPartialClassInstance();
    return 0;
  }

  i = @"LibraryMainPage";
  sub_1E4205F14();
  OUTLINED_FUNCTION_41_17();
  if (v8 && v48 == v5)
  {

LABEL_31:

    v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6A8, &qword_1E429DDA8));
    v55 = a1;
    OUTLINED_FUNCTION_38_3();
    v54[*((*v9 & v56) + qword_1EE297B00 + 32)] = 0;
    OUTLINED_FUNCTION_4_33();
    OUTLINED_FUNCTION_37_12(&v54[*(v57 + qword_1EE297B00 + 48)]);
    v59 = v58;
    v60 = &selRef_collectionViewCanBecomeFocused_;
    v61 = [v59 contextData];
    if (v61 && (v62 = sub_1E3751A20(v61)) != 0)
    {
      sub_1E374BD08(v62);
      OUTLINED_FUNCTION_35_0();

      if (v5)
      {
        v63 = sub_1E37FAFC8();
        v64 = *v63;
        v65 = v63[1];

        sub_1E3277E60(v64, v65, v5, __src);

        if (*(&__src[1] + 1))
        {
          if (swift_dynamicCast())
          {
            v471 = v59;
            v66 = *(&__dst[0] + 1);
            v9 = *&__dst[0];
            v463 = sub_1E3B7B1C8();
            v67 = *(**v463 + 672);

            v69 = v67(v68);

            v10 = 0;
            v70 = *(v69 + 16);
            for (i = (v69 + 32); ; i = (i + 40))
            {
              if (v70 == v10)
              {

                v59 = v471;

                v5 = 0;
                goto LABEL_181;
              }

              if (v10 >= *(v69 + 16))
              {
                break;
              }

              sub_1E327F454(i, v484);
              v71 = *&v484[2];
              __swift_project_boxed_opaque_existential_1(v484, *(&v484[1] + 1));
              v72 = OUTLINED_FUNCTION_38();
              if (v73(v72, v71) == v9 && v74 == v66)
              {

LABEL_172:

                sub_1E3251BE8(v484, __src);
                v221 = OUTLINED_FUNCTION_33_17();
                sub_1E3251BE8(v221, v222);
                v223 = *v463;
                v224 = *(**v463 + 408);

                v5 = v223;
                v224(v225);
                OUTLINED_FUNCTION_38();

                if (v223)
                {
                  sub_1E327F454(__dst, v484);

                  v226 = OUTLINED_FUNCTION_18();
                  sub_1E41E2FB4(v484, 0, v226 & 1, __src);
                  v59 = v471;

                  __swift_destroy_boxed_opaque_existential_1(__dst);
                  v78 = __src[0];
                  v79 = __src[1];
                  v80 = __src[2];
                  v81 = __src[3];
                  v77 = *&__src[4];
LABEL_182:
                  v9 = MEMORY[0x1E69E7D40];
                  v10 = &unk_1EE297000;
                  i = @"LibraryMainPage";
                  v60 = &selRef_collectionViewCanBecomeFocused_;
                  goto LABEL_47;
                }

                __swift_destroy_boxed_opaque_existential_1(__dst);
                v59 = v471;

LABEL_181:
                *&v78 = OUTLINED_FUNCTION_8_32();
                goto LABEL_182;
              }

              v76 = sub_1E42079A4();

              if (v76)
              {
                goto LABEL_172;
              }

              __swift_destroy_boxed_opaque_existential_1(v484);
              v10 = (v10 + 1);
            }

            __break(1u);
            goto LABEL_227;
          }
        }

        else
        {

          sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
        }

        v5 = 0;
        *&v78 = OUTLINED_FUNCTION_8_32();
        v10 = &unk_1EE297000;
LABEL_47:
        *(v487 + 8) = v78;
        *(&v487[1] + 8) = v79;
        *(&v487[2] + 8) = v80;
        *(&v487[3] + 8) = v81;
        *&v487[0] = v5;
        *(&v487[4] + 1) = v77;
        if (!v5)
        {

          v144 = &qword_1ECF2A6A8;
          v145 = &qword_1E429DDA8;
LABEL_101:
          __swift_instantiateConcreteTypeFromMangledNameV2(v144, v145);
          goto LABEL_27;
        }

        v82 = OUTLINED_FUNCTION_12_29();
        memcpy(v82, v83, 0x50uLL);
        v84 = [v59 uiConfiguration];
        v85 = [v84 isRootViewController];

        OUTLINED_FUNCTION_4_33();
        v54[*(v86 + v10[352] + 40)] = v85;
        v87 = [v59 v60[188]];
        v473 = v59;
        if (v87 && (v88 = v87, v89 = [v87 contextDataDict], v88, v89))
        {
          v90 = sub_1E4205C64();

          sub_1E374BD08(v90);
          OUTLINED_FUNCTION_38();

          v91 = sub_1E37FAFEC();
          v92 = *v91;
          v93 = v91[1];

          sub_1E3277E60(v92, v93, v89, __dst);

          if (*(&__dst[1] + 1))
          {
            v44 = 0;
            if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v484[0]) != 1)
            {
              v94 = 2;
              v467 = 0;
              goto LABEL_80;
            }

LABEL_79:
            v467 = v44;
            v44 = 1;
            v94 = 1;
LABEL_80:
            if ([objc_opt_self() isPhone])
            {
              v125 = [v59 documentRef];
              v126 = v125;
              sub_1E4205F14();
              OUTLINED_FUNCTION_48_11();
              sub_1E4205F14();
              OUTLINED_FUNCTION_42_15();
              if (v8 && v9 == v128)
              {
                goto LABEL_125;
              }

              OUTLINED_FUNCTION_6_35(v127);
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              if (v126)
              {
                goto LABEL_126;
              }

              v130 = [v59 documentRef];
              v131 = v130;
              sub_1E4205F14();
              OUTLINED_FUNCTION_48_11();
              sub_1E4205F14();
              OUTLINED_FUNCTION_42_15();
              if (v8 && v9 == v133)
              {
                goto LABEL_125;
              }

              OUTLINED_FUNCTION_6_35(v132);
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              v85 = v85;
              if (v131)
              {
                goto LABEL_126;
              }
            }

            i = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
            if (!OUTLINED_FUNCTION_49_9() || (v135 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v135) & 1) == 0))
            {
LABEL_98:
              if ((OUTLINED_FUNCTION_49_9() & v85 & 1) == 0)
              {
                goto LABEL_129;
              }

              goto LABEL_126;
            }

            v136 = v85;
            v137 = [v473 documentRef];
            v138 = sub_1E4205F14();
            v140 = v139;

            v141 = sub_1E4205F14();
            v85 = v142;
            if (v138 != v141 || v140 != v142)
            {
              OUTLINED_FUNCTION_29_8(v141);
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              v85 = v136;
              if ((v138 & 1) == 0)
              {
                goto LABEL_98;
              }

LABEL_126:
              if (v44)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

LABEL_129:
              OUTLINED_FUNCTION_38_3();
              v172 = &v54[*((*v9 & v171) + qword_1EE297B00 + 16)];
              *v172 = v44;
              *(v172 + 8) = v94;
              *(v172 + 16) = 0;
              OUTLINED_FUNCTION_5_41(v172);
              if (v467)
              {
                *&v173 = OUTLINED_FUNCTION_16_20();
                *(v174 + 384) = v173;
                *(v174 + 400) = v173;
              }

              else
              {
                v44 = *sub_1E37FAFB0();

                v175 = OUTLINED_FUNCTION_27_0();
                sub_1E3277E60(v175, v176, v89, v177);

                if (*(&__dst[1] + 1))
                {
                  type metadata accessor for LibMenuItem(0);
                  if (OUTLINED_FUNCTION_21_4())
                  {
                    v178 = *&v484[0];
                  }

                  else
                  {
                    v178 = 0;
                  }

LABEL_136:
                  OUTLINED_FUNCTION_4_33();
                  *&v54[*(v179 + qword_1EE297B00 + 24)] = v178;
                  memcpy(__dst, __src, 0x50uLL);

                  sub_1E37C5830(v487, v484, &qword_1ECF2A750, &qword_1E429E318);
                  v180 = sub_1E4201E44();
                  if (OUTLINED_FUNCTION_47_6(v180, v181, v182))
                  {
                    v183 = sub_1E4206AC4();
                  }

                  else
                  {
                    v183 = *MEMORY[0x1E69DF878];
                  }

                  v184 = v183;
                  v70 = v473;
                  v185 = objc_opt_self();
                  v186 = v184;
                  OUTLINED_FUNCTION_14_30();
                  v188 = [v185 v187];
                  OUTLINED_FUNCTION_9_28(v188);

                  v189 = [objc_opt_self() sharedInstance];
                  v190 = [v189 launchConfig];

                  LODWORD(v189) = [v190 checkRemoteServerReachability];
                  if (v189)
                  {
                    v191 = [v185 &i[28].isa + 5];
                    v192 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                    OUTLINED_FUNCTION_20_22(v191, v85 + 2040);
                    v193 = &qword_1ECF2A750;
                    v194 = &qword_1E429E318;
                    v195 = v487;
LABEL_141:
                    sub_1E325F748(v195, v193, v194);

LABEL_144:

                    return v44;
                  }

                  v196 = &qword_1ECF2A750;
                  v197 = &qword_1E429E318;
                  v198 = v487;
LABEL_143:
                  sub_1E325F748(v198, v196, v197);

                  v70 = v184;
                  goto LABEL_144;
                }
              }

              sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
              v178 = 0;
              goto LABEL_136;
            }

LABEL_125:

            v9 = MEMORY[0x1E69E7D40];
            goto LABEL_126;
          }

          LOBYTE(v44) = 0;
        }

        else
        {
          v89 = 0;
          *&v123 = OUTLINED_FUNCTION_16_20();
          *(v124 + 384) = v123;
          *(v124 + 400) = v123;
          LOBYTE(v44) = 1;
        }

        sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_79;
      }
    }

    else
    {

      v5 = 0;
    }

    *&v78 = OUTLINED_FUNCTION_8_32();
    goto LABEL_47;
  }

  v50 = OUTLINED_FUNCTION_10_28(v47);

  if (v50)
  {
    goto LABEL_31;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_41_17();
  if (!v8 || v147 != v5)
  {
    v149 = OUTLINED_FUNCTION_10_28(v146);

    if (v149)
    {
      goto LABEL_146;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_17();
    if (v8 && v201 == v5)
    {

LABEL_161:

      v204 = [a1 contextData];
      if (!v204)
      {
        return 0;
      }

      v205 = sub_1E3751A20(v204);
      if (!v205)
      {
        return 0;
      }

      v206 = sub_1E374BD08(v205);

      if (!v206)
      {
        return 0;
      }

      v207 = sub_1E37FAFB0();
      OUTLINED_FUNCTION_44_0(v207);
      v208 = OUTLINED_FUNCTION_13_39();
      sub_1E3277E60(v208, v209, v206, v210);

      if (*(&v487[1] + 1))
      {
        v211 = type metadata accessor for LibMenuItem(0);
        OUTLINED_FUNCTION_12_29();
        if ((swift_dynamicCast() & 1) == 0)
        {

          return 0;
        }

        v212 = *&__src[0];
        v213 = sub_1E3B7B1C8();
        OUTLINED_FUNCTION_8();
        v215 = *(v214 + 808);

        v215(v487, *&__src[0]);

        if (*(&v487[1] + 1))
        {
          sub_1E3251BE8(v487, &v477);
          v216 = sub_1E37FAFEC();
          OUTLINED_FUNCTION_44_0(v216);
          v217 = OUTLINED_FUNCTION_13_39();
          sub_1E3277E60(v217, v218, v206, v219);

          if (*(&v487[1] + 1))
          {
            OUTLINED_FUNCTION_12_29();
            if (OUTLINED_FUNCTION_21_4())
            {
              v220 = LOBYTE(__src[0]);
              goto LABEL_204;
            }
          }

          else
          {
            sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
          }

          v220 = 1;
LABEL_204:
          v474 = v220;
          v464 = v211;
          v469 = @"LibraryMainPage";
          v267 = sub_1E37FAFE0();
          OUTLINED_FUNCTION_44_0(v267);
          v268 = OUTLINED_FUNCTION_13_39();
          sub_1E3277E60(v268, v269, v206, v270);

          if (*(&v487[1] + 1))
          {
            v271 = v212;
            OUTLINED_FUNCTION_12_29();
            v272 = OUTLINED_FUNCTION_21_4();
            if (v272)
            {
              v273 = *&__src[0];
            }

            else
            {
              v273 = 0;
            }

            if (v272)
            {
              v274 = *(&__src[0] + 1);
            }

            else
            {
              v274 = 0;
            }
          }

          else
          {
            v271 = v212;
            sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
            v273 = 0;
            v274 = 0;
          }

          v275 = [a1 uiConfiguration];
          v276 = [v275 isRootViewController];

          v277 = *(**v213 + 856);

          v277(v271);

          v278 = *sub_1E38F1CD4();
          v279 = *(v271 + 32);

          LOBYTE(v279) = sub_1E37D7DAC(v279, v278, v280);

          if (v279)
          {
            type metadata accessor for LibraryDetailsContainerViewController();
            sub_1E327F454(&v477, v487);

            v44 = sub_1E38F1FA0(v281, v487, v474, v273, v274, v276);
            OUTLINED_FUNCTION_8();
            v283 = *(v282 + 216);

            LOBYTE(v283) = v283(v284);

            (*((*MEMORY[0x1E69E7D40] & *v44) + 0x1C8))(v271, 1, v283 & 1);
LABEL_336:

            __swift_destroy_boxed_opaque_existential_1(&v477);
            return v44;
          }

          v475 = v271;

          v285 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A758, &qword_1E429E320));
          v286 = a1;
          OUTLINED_FUNCTION_26_3();
          *(v285 + *((*MEMORY[0x1E69E7D40] & v287) + qword_1EE297B00 + 32)) = 0;
          OUTLINED_FUNCTION_15_32();
          OUTLINED_FUNCTION_37_12((v285 + *(v288 + qword_1EE297B00 + 48)));
          v290 = v289;
          v291 = &selRef_collectionViewCanBecomeFocused_;
          v292 = [v290 contextData];
          if (v292 && (v293 = sub_1E3751A20(v292)) != 0)
          {
            v294 = sub_1E374BD08(v293);

            if (v294)
            {
              v295 = sub_1E37FAFB0();
              OUTLINED_FUNCTION_46_7(v295);
              v296 = OUTLINED_FUNCTION_34();
              sub_1E3277E60(v296, v297, v294, v298);

              if (*(&v487[1] + 1))
              {
                OUTLINED_FUNCTION_12_29();
                if (swift_dynamicCast())
                {
                  v299 = *&__src[0];
                  v300 = sub_1E37FAFE0();
                  OUTLINED_FUNCTION_46_7(v300);
                  v301 = OUTLINED_FUNCTION_34();
                  sub_1E3277E60(v301, v302, v294, v303);

                  if (*(&v487[1] + 1))
                  {
                    OUTLINED_FUNCTION_12_29();
                    if (OUTLINED_FUNCTION_21_4())
                    {
                      v273 = *(&__src[0] + 1);
                    }

                    else
                    {
                      v273 = 0;
                    }
                  }

                  else
                  {
                    sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
                    v273 = 0;
                  }

                  v456 = sub_1E37FAFEC();
                  OUTLINED_FUNCTION_46_7(v456);
                  v457 = OUTLINED_FUNCTION_34();
                  sub_1E3277E60(v457, v458, v294, v459);

                  if (*(&v484[1] + 1))
                  {
                    OUTLINED_FUNCTION_21_4();
                  }

                  else
                  {
                    sub_1E325F748(v484, &unk_1ECF296E0, &unk_1E4298030);
                  }

                  v460 = [v290 uiConfiguration];
                  [v460 isRootViewController];

                  sub_1E3B7B1C8();

                  sub_1E3A71D24();

                  *&__src[0] = v299;
                  memcpy(__src + 8, __dst, 0xB1uLL);
                  nullsub_1();
                  memcpy(v487, __src, 0xB9uLL);
                  v291 = &selRef_collectionViewCanBecomeFocused_;
LABEL_286:
                  v374 = OUTLINED_FUNCTION_24_9();
                  memcpy(v374, v375, 0xB9uLL);
                  memcpy(v487, __dst, 0xB9uLL);
                  v376 = OUTLINED_FUNCTION_33_17();
                  memcpy(v376, v377, 0xB9uLL);
                  if (sub_1E32B30AC(__src) == 1)
                  {

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A758, &qword_1E429E320);
                    OUTLINED_FUNCTION_20_2();
                    swift_deallocPartialClassInstance();
                    v44 = 0;
                    goto LABEL_336;
                  }

                  memcpy(v484, v487, 0xB9uLL);
                  v378 = [v290 uiConfiguration];
                  v379 = [v378 isRootViewController];

                  OUTLINED_FUNCTION_15_32();
                  LODWORD(v461) = v379;
                  *(v285 + *(v380 + qword_1EE297B00 + 40)) = v379;
                  v381 = [v290 v291[188]];
                  if (v381 && (v382 = v381, v383 = [v381 contextDataDict], v382, v383) && (v384 = sub_1E4205C64(), v383, v385 = sub_1E374BD08(v384), , v385))
                  {

                    v386 = sub_1E37FAFEC();
                    OUTLINED_FUNCTION_46_7(v386);
                    v387 = OUTLINED_FUNCTION_34();
                    sub_1E3277E60(v387, v388, v385, v389);

                    if (*(&v483[1] + 1))
                    {
                      OUTLINED_FUNCTION_22_14(v390, v391, v392, MEMORY[0x1E69E6370], v393, v394, v395, v396, v462, v464, @"LibraryMainPage", v271, @"Library", v477, v478, v479, v480, v481, v482[0]);
                      v397 = 0;
                      if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v482[0]) != 1)
                      {
                        v44 = 2;
                        HIDWORD(v462) = 0;
                        goto LABEL_298;
                      }

LABEL_297:
                      HIDWORD(v462) = v397;
                      v397 = 1;
                      v44 = 1;
LABEL_298:
                      v400 = objc_opt_self();
                      if ([v400 isPhone])
                      {
                        v401 = [v290 documentRef];
                        v402 = sub_1E4205F14();
                        v273 = v403;

                        v404 = sub_1E4205F14();
                        if (v402 == v404 && v273 == v405)
                        {
                          goto LABEL_318;
                        }

                        v407 = OUTLINED_FUNCTION_28_14(v402, v405, v404);

                        if (v407)
                        {
                          goto LABEL_319;
                        }

                        v408 = [v290 documentRef];
                        v409 = sub_1E4205F14();
                        v273 = v410;

                        v411 = sub_1E4205F14();
                        if (v409 == v411 && v273 == v412)
                        {
                          goto LABEL_318;
                        }

                        v414 = OUTLINED_FUNCTION_28_14(v409, v412, v411);

                        if (v414)
                        {
                          goto LABEL_319;
                        }
                      }

                      if (![v400 isPad] || (v415 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v415) & 1) == 0))
                      {
LABEL_316:
                        if (([v400 isPad] & v462 & 1) == 0)
                        {
                          goto LABEL_322;
                        }

                        goto LABEL_319;
                      }

                      v416 = [v290 documentRef];
                      v417 = sub_1E4205F14();
                      v273 = v418;

                      v419 = sub_1E4205F14();
                      if (v417 != v419 || v273 != v420)
                      {
                        v422 = OUTLINED_FUNCTION_28_14(v417, v420, v419);

                        if ((v422 & 1) == 0)
                        {
                          goto LABEL_316;
                        }

LABEL_319:
                        if (v397)
                        {
                          v44 = 3;
                        }

                        else
                        {
                          v44 = 2;
                        }

LABEL_322:
                        OUTLINED_FUNCTION_26_3();
                        v423 = MEMORY[0x1E69E7D40];
                        v425 = v285 + *((*MEMORY[0x1E69E7D40] & v424) + qword_1EE297B00 + 16);
                        *v425 = v397;
                        *(v425 + 8) = v44;
                        *(v425 + 16) = 0;
                        OUTLINED_FUNCTION_5_41(v425);
                        if ((v462 & 0x100000000) != 0)
                        {
                          *&v426 = OUTLINED_FUNCTION_16_20();
                          *v427 = v426;
                          v427[1] = v426;
                        }

                        else
                        {
                          v44 = *sub_1E37FAFB0();

                          v428 = OUTLINED_FUNCTION_27_0();
                          sub_1E3277E60(v428, v429, v385, v430);

                          if (*(&v483[1] + 1))
                          {
                            OUTLINED_FUNCTION_22_14(v431, v432, v433, v434, v435, v436, v437, v438, v462, v464, v469, v475, v476, v477, v478, v479, v480, v481, v482[0]);
                            if (swift_dynamicCast())
                            {
                              v439 = v482[0];
                            }

                            else
                            {
                              v439 = 0;
                            }

LABEL_329:
                            *(v285 + *((*v423 & *v285) + qword_1EE297B00 + 24)) = v439;
                            memcpy(v483, v484, 0xB9uLL);

                            sub_1E37C5830(__dst, v482, &qword_1ECF2A760, &qword_1E429E328);
                            v440 = sub_1E4201E44();
                            if (OUTLINED_FUNCTION_47_6(v440, v441, v442))
                            {
                              v443 = sub_1E4206AC4();
                            }

                            else
                            {
                              v443 = *MEMORY[0x1E69DF878];
                            }

                            v444 = v443;
                            v445 = objc_opt_self();
                            v446 = v444;
                            OUTLINED_FUNCTION_14_30();
                            v448 = [v445 v447];
                            OUTLINED_FUNCTION_9_28(v448);

                            v449 = [objc_opt_self() sharedInstance];
                            v450 = [v449 launchConfig];

                            LODWORD(v449) = [v450 checkRemoteServerReachability];
                            if (v449)
                            {
                              v451 = [v445 (v273 + 901)];
                              v452 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                              OUTLINED_FUNCTION_20_22(v451, v400 + 2040);
                              sub_1E325F748(__dst, &qword_1ECF2A760, &qword_1E429E328);
                            }

                            else
                            {
                              sub_1E325F748(__dst, &qword_1ECF2A760, &qword_1E429E328);

                              v290 = v444;
                            }

                            goto LABEL_336;
                          }
                        }

                        sub_1E325F748(v483, &unk_1ECF296E0, &unk_1E4298030);
                        v439 = 0;
                        goto LABEL_329;
                      }

LABEL_318:

                      goto LABEL_319;
                    }

                    v397 = 0;
                  }

                  else
                  {
                    v385 = 0;
                    *&v398 = OUTLINED_FUNCTION_16_20();
                    *v399 = v398;
                    v399[1] = v398;
                    v397 = 1;
                  }

                  sub_1E325F748(v483, &unk_1ECF296E0, &unk_1E4298030);
                  goto LABEL_297;
                }
              }

              else
              {

                sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
              }
            }

            else
            {
            }

            v291 = &selRef_collectionViewCanBecomeFocused_;
          }

          else
          {
          }

          sub_1E37DA45C(v487);
          goto LABEL_286;
        }

        v265 = &unk_1ECF2A740;
        v266 = &qword_1E42EF010;
      }

      else
      {

        v265 = &unk_1ECF296E0;
        v266 = &unk_1E4298030;
      }

      sub_1E325F748(v487, v265, v266);
      return 0;
    }

    v203 = OUTLINED_FUNCTION_10_28(v200);

    if (v203)
    {
      goto LABEL_161;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_17();
    if (v8 && v228 == v5)
    {
    }

    else
    {
      v230 = OUTLINED_FUNCTION_10_28(v227);

      if ((v230 & 1) == 0)
      {
        return 0;
      }
    }

    v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6A0, &qword_1E429DDA0));
    v231 = a1;
    OUTLINED_FUNCTION_38_3();
    v54[*((*v9 & v232) + qword_1EE297B00 + 32)] = 0;
    OUTLINED_FUNCTION_4_33();
    OUTLINED_FUNCTION_37_12(&v54[*(v233 + qword_1EE297B00 + 48)]);
    v70 = v234;
    v235 = [v70 contextData];
    if (!v235)
    {
      goto LABEL_228;
    }

    v236 = sub_1E3751A20(v235);
    if (!v236)
    {
      goto LABEL_228;
    }

    sub_1E374BD08(v236);
    OUTLINED_FUNCTION_35_0();

    if (!v5)
    {
      goto LABEL_228;
    }

    v237 = sub_1E37FAF8C();
    v238 = *v237;
    v239 = v237[1];

    sub_1E3277E60(v238, v239, v5, v487);

    if (*(&v487[1] + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_12_29();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_228:

        goto LABEL_229;
      }

      v240 = *&__src[0];
      v241 = sub_1E37FAFC8();
      OUTLINED_FUNCTION_44_0(v241);
      v242 = OUTLINED_FUNCTION_13_39();
      sub_1E3277E60(v242, v243, *&__src[0], v244);

      if (*(&v487[1] + 1))
      {
        OUTLINED_FUNCTION_12_29();
        if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
        {
LABEL_227:

          goto LABEL_228;
        }

        v468 = @"LibraryMainPage";
        v245 = __src[0];
        v246 = sub_1E3B7B1C8();
        v247 = *v246;
        v248 = *(**v246 + 408);

        v250 = v247;
        v248(v249);
        OUTLINED_FUNCTION_38();

        if (!v247)
        {

LABEL_342:
          v9 = MEMORY[0x1E69E7D40];
          v10 = &unk_1EE297000;
          i = v468;
          goto LABEL_229;
        }

        v251 = sub_1E37FAF98();
        v252 = *v251;
        v253 = v251[1];

        sub_1E3277E60(v252, v253, *&__src[0], __src);

        if (*(&__src[1] + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
          if (OUTLINED_FUNCTION_21_4())
          {
            if (*(&v487[1] + 1))
            {
              sub_1E3251BE8(v487, v484);
              v254 = sub_1E37FAFA4();
              v255 = *v254;
              v256 = v254[1];

              sub_1E3277E60(v255, v256, v240, v483);

              if (*(&v483[1] + 1))
              {
                OUTLINED_FUNCTION_22_14(v257, v258, v259, MEMORY[0x1E69E6370], v260, v261, v262, v263, v461, v463, @"LibraryMainPage", v471, @"Library", v477, v478, v479, v480, v481, v482[0]);
                if (OUTLINED_FUNCTION_21_4())
                {
                  sub_1E327F454(v484, v487);

                  sub_1E3B23ED0(v264, v245, *(&v245 + 1), v250, v487, v482[0], 0, __dst);

                  __swift_destroy_boxed_opaque_existential_1(v484);
                  *&__src[0] = v250;
                  memcpy(__src + 8, __dst, 0x78uLL);
                  nullsub_1();
                  memcpy(v487, __src, 0x80uLL);
                  v9 = MEMORY[0x1E69E7D40];
                  v10 = &unk_1EE297000;
                  i = v468;
                  goto LABEL_230;
                }

                __swift_destroy_boxed_opaque_existential_1(v484);
                goto LABEL_342;
              }

              __swift_destroy_boxed_opaque_existential_1(v484);
              v453 = &unk_1ECF296E0;
              v454 = &unk_1E4298030;
              v455 = v483;
              goto LABEL_341;
            }
          }

          else
          {
            memset(v487, 0, 40);
          }
        }

        else
        {

          sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
          memset(v487, 0, 40);
        }

        v453 = &qword_1ECF2A778;
        v454 = &unk_1E429E340;
        v455 = v487;
LABEL_341:
        sub_1E325F748(v455, v453, v454);
        goto LABEL_342;
      }
    }

    sub_1E325F748(v487, &unk_1ECF296E0, &unk_1E4298030);
LABEL_229:
    sub_1E37DA50C(v487);
LABEL_230:
    v304 = OUTLINED_FUNCTION_24_9();
    memcpy(v304, v305, 0x80uLL);
    memcpy(v487, __dst, 0x80uLL);
    v306 = OUTLINED_FUNCTION_33_17();
    memcpy(v306, v307, 0x80uLL);
    if (sub_1E32B30AC(__src) == 1)
    {

      v144 = &qword_1ECF2A6A0;
      v145 = &qword_1E429DDA0;
      goto LABEL_101;
    }

    memcpy(v484, v487, 0x80uLL);
    v308 = [v70 uiConfiguration];
    v309 = [v308 isRootViewController];

    OUTLINED_FUNCTION_4_33();
    v54[*(v310 + v10[352] + 40)] = v309;
    v311 = [v70 contextData];
    if (v311 && (v312 = v311, v313 = [v311 contextDataDict], v312, v313) && (v314 = sub_1E4205C64(), v313, v315 = sub_1E374BD08(v314), , v315))
    {

      v316 = sub_1E37FAFEC();
      v317 = *v316;
      v318 = v316[1];

      sub_1E3277E60(v317, v318, v315, v483);

      v470 = v315;
      if (*(&v483[1] + 1))
      {
        OUTLINED_FUNCTION_22_14(v319, v320, v321, MEMORY[0x1E69E6370], v322, v323, v324, v325, v461, v463, v315, v471, v476, v477, v478, v479, v480, v481, v482[0]);
        v44 = 0;
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v482[0]) != 1)
        {
          v326 = 2;
          LODWORD(v471) = 0;
          goto LABEL_242;
        }

LABEL_241:
        LODWORD(v471) = v44;
        v44 = 1;
        v326 = 1;
LABEL_242:
        if ([objc_opt_self() isPhone])
        {
          LODWORD(v463) = v309;
          v329 = [v70 documentRef];
          v330 = v329;
          sub_1E4205F14();
          OUTLINED_FUNCTION_48_11();
          sub_1E4205F14();
          OUTLINED_FUNCTION_42_15();
          if (v8 && v9 == v332)
          {
            goto LABEL_262;
          }

          OUTLINED_FUNCTION_6_35(v331);
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          if (v330)
          {
            goto LABEL_263;
          }

          v334 = [v70 documentRef];
          v335 = v334;
          sub_1E4205F14();
          OUTLINED_FUNCTION_48_11();
          sub_1E4205F14();
          OUTLINED_FUNCTION_42_15();
          if (v8 && v9 == v337)
          {
            goto LABEL_262;
          }

          OUTLINED_FUNCTION_6_35(v336);
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          v309 = v309;
          if (v335)
          {
            goto LABEL_263;
          }
        }

        i = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
        if (!OUTLINED_FUNCTION_49_9() || (v339 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v339) & 1) == 0))
        {
LABEL_260:
          if ((OUTLINED_FUNCTION_49_9() & v309 & 1) == 0)
          {
            goto LABEL_266;
          }

          goto LABEL_263;
        }

        v340 = v309;
        v341 = [v70 documentRef];
        v342 = sub_1E4205F14();
        v344 = v343;

        v345 = sub_1E4205F14();
        v309 = v346;
        if (v342 != v345 || v344 != v346)
        {
          OUTLINED_FUNCTION_29_8(v345);
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          v309 = v340;
          if ((v342 & 1) == 0)
          {
            goto LABEL_260;
          }

LABEL_263:
          if (v44)
          {
            v326 = 3;
          }

          else
          {
            v326 = 2;
          }

LABEL_266:
          OUTLINED_FUNCTION_38_3();
          v349 = &v54[*((*v9 & v348) + qword_1EE297B00 + 16)];
          *v349 = v44;
          *(v349 + 8) = v326;
          *(v349 + 16) = 0;
          OUTLINED_FUNCTION_5_41(v349);
          if (v471)
          {
            *&v350 = OUTLINED_FUNCTION_16_20();
            *v351 = v350;
            v351[1] = v350;
          }

          else
          {
            sub_1E37FAFB0();

            v352 = OUTLINED_FUNCTION_27_0();
            v44 = v470;
            sub_1E3277E60(v352, v353, v470, v354);

            if (*(&v483[1] + 1))
            {
              v355 = type metadata accessor for LibMenuItem(0);
              OUTLINED_FUNCTION_22_14(v355, v356, v357, v355, v358, v359, v360, v361, v461, v463, v470, v471, v476, v477, v478, v479, v480, v481, v482[0]);
              if (OUTLINED_FUNCTION_21_4())
              {
                v362 = v482[0];
              }

              else
              {
                v362 = 0;
              }

LABEL_273:
              OUTLINED_FUNCTION_4_33();
              *&v54[*(v363 + qword_1EE297B00 + 24)] = v362;
              memcpy(v483, v484, 0x80uLL);

              sub_1E37C5830(__dst, v482, &qword_1ECF2A768, &unk_1E429E330);
              v364 = sub_1E4201E44();
              if (OUTLINED_FUNCTION_47_6(v364, v365, v366))
              {
                v367 = sub_1E4206AC4();
              }

              else
              {
                v367 = *MEMORY[0x1E69DF878];
              }

              v184 = v367;
              v368 = objc_opt_self();
              v369 = v184;
              OUTLINED_FUNCTION_14_30();
              v371 = [v368 v370];
              OUTLINED_FUNCTION_9_28(v371);

              v372 = [objc_opt_self() sharedInstance];
              v373 = [v372 launchConfig];

              LODWORD(v372) = [v373 checkRemoteServerReachability];
              if (v372)
              {
                v191 = [v368 &i[28].isa + 5];
                v192 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                OUTLINED_FUNCTION_20_22(v191, v309 + 2040);
                v193 = &qword_1ECF2A768;
                v194 = &unk_1E429E330;
                v195 = __dst;
                goto LABEL_141;
              }

              v196 = &qword_1ECF2A768;
              v197 = &unk_1E429E330;
              v198 = __dst;
              goto LABEL_143;
            }
          }

          sub_1E325F748(v483, &unk_1ECF296E0, &unk_1E4298030);
          v362 = 0;
          goto LABEL_273;
        }

LABEL_262:

        v9 = MEMORY[0x1E69E7D40];
        goto LABEL_263;
      }

      LODWORD(v44) = 0;
    }

    else
    {
      v470 = 0;
      *&v327 = OUTLINED_FUNCTION_16_20();
      *v328 = v327;
      v328[1] = v327;
      LODWORD(v44) = 1;
    }

    sub_1E325F748(v483, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_241;
  }

LABEL_146:

  type metadata accessor for LibTransitionDetailsViewController();
  v199 = a1;
  return sub_1E4023030();
}

BOOL sub_1E37D7DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37DA464(a1, a2, a3);
  v4 = sub_1E4205DA4();
  v7 = ~(-1 << *(a2 + 32));
  do
  {
    v8 = v4 & v7;
    v9 = (1 << (v4 & v7)) & *(a2 + 56 + (((v4 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_1E37DA4B8(v4, v5, v6);
    v11 = sub_1E4205E84();
    v4 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

id sub_1E37D7E94@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_11((*MEMORY[0x1E69E7D40] & v3) + qword_1EE297B00);
  swift_beginAccess();
  *a1 = *v1;
  OUTLINED_FUNCTION_43_1(*(v1 + 8));
  *(a1 + 48) = v4;

  return v4;
}

void sub_1E37D7F3C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_11((*MEMORY[0x1E69E7D40] & v15) + qword_1EE297B00);
  swift_beginAccess();
  v16 = *(v7 + 48);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4 & 1;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6 & 1;
  *(v7 + 48) = a7;
}

uint64_t (*sub_1E37D8008(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1E37D81E4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE297B00 + 48));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1E37D82B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E37D8360()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v19 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v12 = sub_1E4206A04();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v15 = v1 + qword_1EE297B00;
  v14[2] = *(v1 + qword_1EE297B00);
  v14[3] = *(v15 + 8);
  v14[4] = v13;
  aBlock[4] = sub_1E37DA210;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37DA3B0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v6, v16);
  _Block_release(v16);

  (*(v19 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v18);
}

void sub_1E37D86A8(void *a1)
{
  v1 = a1;
  sub_1E37D8360();
}

void sub_1E37D86F0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE297B00 + 32)) = 0;
  v2 = (v0 + *((*v1 & *v0) + qword_1EE297B00 + 48));
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E37D87F8(char a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_23_18(((*MEMORY[0x1E69E7D40] & v4) + qword_1EE297B00), v5);
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  *(v1 + *((*v3 & v6) + qword_1EE297B00 + 32)) = 1;
  sub_1E37D89F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0, &unk_1E429DDB0);
  OUTLINED_FUNCTION_20_2();
  if (swift_dynamicCastClass())
  {
    v7 = OUTLINED_FUNCTION_45_8();
    v8 = [v7 standardAppearance];

    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    }

    v9 = OUTLINED_FUNCTION_45_8();
    v10 = [v9 scrollEdgeAppearance];

    if (!v10)
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    }

    [v8 _setTitleControlHidden_];
    [v10 _setTitleControlHidden_];
    v11 = OUTLINED_FUNCTION_45_8();
    [v11 setStandardAppearance_];

    v12 = OUTLINED_FUNCTION_45_8();
    [v12 setScrollEdgeAppearance_];
  }
}

void sub_1E37D89F4()
{
  sub_1E37D7E94(v9);
  v1 = v9[0];
  v2 = v10;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v8 = v15;
  v7 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v1, v2, v7, v3, v4, v5, v6, v8);
}

void sub_1E37D8A90(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_10_0();
  sub_1E37D87F8(v2);
}

void sub_1E37D8AD8(char a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_23_18(((*MEMORY[0x1E69E7D40] & v4) + qword_1EE297B00), v5);
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  *(v1 + *((*v3 & *v1) + qword_1EE297B00 + 32)) = 0;
  sub_1E37D8B9C();
}

void sub_1E37D8B9C()
{
  sub_1E3F6FD54(v0, v8);
  v1 = v8[0];
  v2 = v9;
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;

  sub_1E37D7F3C(v1, v2, v3, v4, v5, v6, v7);
}

void sub_1E37D8BEC(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_10_0();
  sub_1E37D8AD8(v2);
}

void sub_1E37D8C34()
{
  v1 = v0;
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for LibHostingViewController(0, *((*MEMORY[0x1E69E7D40] & v3) + qword_1EE297B00), *((*MEMORY[0x1E69E7D40] & v3) + qword_1EE297B00 + 8), v4);
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, sel_viewSafeAreaInsetsDidChange);
  if ([objc_opt_self() isPad])
  {
    sub_1E37D939C();
    v6 = OUTLINED_FUNCTION_31_10();
    if (!v6)
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = v6;
    [v6 safeAreaInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    if (sub_1E37D8144())
    {
      v19 = v9 == sub_1E37D8190() && v11 == v16;
      v20 = v19 && v13 == v17;
      if (!v20 || v15 != v18)
      {
        v22 = OUTLINED_FUNCTION_31_10();
        if (v22)
        {
          v23 = v22;
          [v22 safeAreaInsets];

          v24 = OUTLINED_FUNCTION_31_10();
          if (v24)
          {
            v25 = v24;
            [v24 safeAreaInsets];
            v42 = v26;

            v27 = OUTLINED_FUNCTION_31_10();
            if (v27)
            {
              v28 = v27;
              type metadata accessor for LayoutGrid();
              [v28 bounds];
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v36 = v35;

              v44.origin.x = v30;
              v44.origin.y = v32;
              v44.size.width = v34;
              v44.size.height = v36;
              Width = CGRectGetWidth(v44);
              sub_1E3A258E4(Width);
              v38 = OUTLINED_FUNCTION_31_10();
              if (v38)
              {
                v39 = v38;
                [v38 vuiIsRTL];

                v40 = [v1 navigationItem];
                [v40 _titleMinimumMargins];
                [v40 _setTitleMinimumMargins_];

                v41 = (v1 + *((*v2 & *v1) + qword_1EE297B00 + 48));
                *v41 = v9;
                v41[1] = v11;
                v41[2] = v13;
                v41[3] = v15;
                return;
              }

LABEL_24:
              __break(1u);
              return;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }
}

void sub_1E37D8EF4(void *a1)
{
  v1 = a1;
  sub_1E37D8C34();
}

void sub_1E37D8F3C()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_23_18(((*MEMORY[0x1E69E7D40] & v1) + qword_1EE297B00), v2);
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  if (sub_1E37D80A0())
  {
    if ([objc_opt_self() isPad])
    {
      sub_1E37D939C();
    }

    else
    {
      v3 = *sub_1E3CD9D88();

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 frame];
        v7 = v6;
        v9 = v8;

        (*(*v3 + 192))(v7, v9, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1E37D906C(void *a1)
{
  v1 = a1;
  sub_1E37D8F3C();
}

id sub_1E37D90BC(uint64_t a1, uint64_t a2)
{
  result = [v2 vuiView];
  if (result)
  {
    v4 = result;
    v5 = sub_1E4206ED4();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E37D913C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E4205F14();
  v6 = v5;
  v7 = a1;
  v8 = sub_1E37D90BC(v4, v6);

  return v8;
}

void sub_1E37D91B0(void *a1)
{
  v3 = [a1 viewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v4 = sub_1E42062B4();

  v5 = sub_1E32AE9B0(v4);

  v6 = [a1 interactivePopGestureRecognizer];
  v7 = v6;
  if (v5 < 2)
  {
    if (v6)
    {
      [v6 setEnabled_];
    }

    v9 = [a1 interactivePopGestureRecognizer];
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate_];
      goto LABEL_10;
    }
  }

  else
  {
    if (v6)
    {
      [v6 setEnabled_];
    }

    v8 = [a1 interactivePopGestureRecognizer];
    if (v8)
    {
      v10 = v8;
      [v8 setDelegate_];
LABEL_10:
    }
  }
}

void sub_1E37D9320(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1E37D91B0(v6);
}

void sub_1E37D939C()
{
  v1 = [v0 vuiIsRTL];
  v2 = [v0 view];
  v3 = v2;
  if (v1)
  {
    if (!v2)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    [v2 safeAreaInsets];
    v5 = v4;
  }

  else
  {
    if (!v2)
    {
LABEL_12:
      __break(1u);
      return;
    }

    [v2 safeAreaInsets];
    v5 = v6;
  }

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 frame];

  sub_1E3CD9D88();
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 192);

  v11 = OUTLINED_FUNCTION_34();
  v10(v11);

  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 280);

  v13(v5, 0);
}

void sub_1E37D9534()
{
  v1 = objc_allocWithZone(v0);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1E37D956C()
{
  v1 = objc_allocWithZone(v0);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

double sub_1E37D95A4()
{
  OUTLINED_FUNCTION_26_3();

  OUTLINED_FUNCTION_15_32();

  return result;
}

id sub_1E37D9654()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_23_18(((*MEMORY[0x1E69E7D40] & v0) + qword_1EE297B00), v1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1E37D96C0(void *a1)
{

  return result;
}

uint64_t sub_1E37D97B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 88))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D97EC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 88) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E37D9848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 80))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D9884(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[9] = 0;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E37D98E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 128))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D9924(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[15] = 0;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 128) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

void sub_1E37D99A4(uint64_t a1@<X8>)
{
  sub_1E37D7E94(v4);
  v2 = v5;
  *a1 = v4[0];
  OUTLINED_FUNCTION_43_1(v2);
  *(a1 + 48) = v3;
}

void (*sub_1E37D9A28(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E37D8008(v2);
  return sub_1E37BCF0C;
}

double sub_1E37D9AD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1E327F454(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E37D9B08@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Router(0);
  sub_1E40C49A8();
  v4 = v3;
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v5, v6);
  OUTLINED_FUNCTION_20_2();
  sub_1E4200504();
  v7 = OUTLINED_FUNCTION_38();
  sub_1E37DA0FC(v7, a1);
  a1[9] = v2;
  a1[10] = v4;
  v8 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v9, v10);

  result = sub_1E4200504();
  a1[11] = result;
  a1[12] = v8;
  return result;
}

void *sub_1E37D9BE0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1 + 1, sizeof(__dst));
  type metadata accessor for Router(0);
  sub_1E38D1D7C(*v1);
  v4 = v3;
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v5, v6);
  OUTLINED_FUNCTION_20_2();
  v7 = sub_1E4200504();
  memcpy(__src, v1 + 1, sizeof(__src));
  sub_1E37DA158(__dst, v13);
  v8 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v9, v10);

  v11 = sub_1E4200504();
  result = memcpy(a1, __src, 0x48uLL);
  a1[9] = v7;
  a1[10] = v4;
  a1[11] = v11;
  a1[12] = v8;
  return result;
}

void *sub_1E37D9D08@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1 + 1, 0xB1uLL);
  type metadata accessor for Router(0);
  sub_1E38D1D7C(*v1);
  v4 = v3;
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v5, v6);
  OUTLINED_FUNCTION_20_2();
  v7 = sub_1E4200504();
  memcpy(__src, v1 + 1, 0xB1uLL);
  sub_1E37DABC0(__dst, v13);
  v8 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v9, v10);

  v11 = sub_1E4200504();
  result = memcpy(a1, __src, 0xB8uLL);
  a1[23] = v7;
  a1[24] = v4;
  a1[25] = v11;
  a1[26] = v8;
  return result;
}

void *sub_1E37D9E30@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1 + 1, sizeof(__dst));
  type metadata accessor for Router(0);
  sub_1E38D1D7C(*v1);
  v4 = v3;
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v5, v6);
  OUTLINED_FUNCTION_20_2();
  v7 = sub_1E4200504();
  memcpy(__src, v1 + 1, sizeof(__src));
  sub_1E37DA1B4(__dst, v13);
  v8 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v9, v10);

  v11 = sub_1E4200504();
  result = memcpy(a1, __src, 0x78uLL);
  a1[15] = v7;
  a1[16] = v4;
  a1[17] = v11;
  a1[18] = v8;
  return result;
}

unint64_t sub_1E37D9F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37D9F80(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37D9F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46880[0];
  if (!qword_1ECF46880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46880);
  }

  return result;
}

unint64_t sub_1E37D9FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37DA014(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DA014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46990[0];
  if (!qword_1ECF46990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46990);
  }

  return result;
}

unint64_t sub_1E37DA080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37DA0A8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DA0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29D980[0];
  if (!qword_1EE29D980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29D980);
  }

  return result;
}

void sub_1E37DA210()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() isRemoteServerConnected];
    v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EE297B00 + 24));
    if (v3)
    {
      v4 = v3[32];

      if (sub_1E37D82B8(v4, 10, sub_1E37D4BA4))
      {
        if (v2)
        {

LABEL_12:

          return;
        }

        (*(*v3 + 264))(1);

LABEL_10:
        v5 = [objc_opt_self() currentNavigationController];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 popToRootViewControllerAnimated_];
        }

        goto LABEL_12;
      }
    }

    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1E37DA3B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37DA464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE285F00;
  if (!qword_1EE285F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285F00);
  }

  return result;
}

unint64_t sub_1E37DA4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE285EF0;
  if (!qword_1EE285EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285EF0);
  }

  return result;
}

double sub_1E37DA50C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1E37DA52C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 185))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37DA568(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 21) = 0u;
    *(result + 19) = 0u;
    *(result + 17) = 0u;
    *(result + 15) = 0u;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 185) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E37DA5E0()
{
  result = qword_1EE2896A8;
  if (!qword_1EE2896A8)
  {
    sub_1E37DA698();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896A8);
  }

  return result;
}

unint64_t sub_1E37DA698()
{
  result = qword_1EE289B98;
  if (!qword_1EE289B98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7A0, &unk_1E429E490);
    sub_1E37DA750(v1, v2, v3);
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B98);
  }

  return result;
}

unint64_t sub_1E37DA750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE252BE8[0];
  if (!qword_1EE252BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE252BE8);
  }

  return result;
}

unint64_t sub_1E37DA7A4()
{
  result = qword_1ECF2A7C0;
  if (!qword_1ECF2A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7C8, &qword_1E429E4A8);
    sub_1E37DA85C();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7C0);
  }

  return result;
}

unint64_t sub_1E37DA85C()
{
  result = qword_1ECF2A7D0;
  if (!qword_1ECF2A7D0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2A7D8, &qword_1E429E4B0);
    sub_1E37DA914(v1, v2, v3);
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7D0);
  }

  return result;
}

unint64_t sub_1E37DA914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE25AB10;
  if (!qword_1EE25AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25AB10);
  }

  return result;
}

unint64_t sub_1E37DA968()
{
  result = qword_1ECF2A7E8;
  if (!qword_1ECF2A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7F0, &qword_1E429E4B8);
    sub_1E37DAA20();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7E8);
  }

  return result;
}

unint64_t sub_1E37DAA20()
{
  result = qword_1ECF2A7F8;
  if (!qword_1ECF2A7F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A800, &qword_1E429E4C0);
    sub_1E37DAAD8(v1, v2, v3);
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7F8);
  }

  return result;
}

unint64_t sub_1E37DAAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2A808;
  if (!qword_1ECF2A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A808);
  }

  return result;
}

unint64_t sub_1E37DAB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37DAB6C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DAB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46AA0[0];
  if (!qword_1ECF46AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46AA0);
  }

  return result;
}

unint64_t sub_1E37DAC1C()
{
  result = qword_1ECF2A810;
  if (!qword_1ECF2A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A818, &qword_1E429E538);
    sub_1E37DACD4();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A810);
  }

  return result;
}

unint64_t sub_1E37DACD4()
{
  result = qword_1ECF2A820;
  if (!qword_1ECF2A820)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A828, &unk_1E429E540);
    sub_1E37DAD8C(v1, v2, v3);
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A820);
  }

  return result;
}

unint64_t sub_1E37DAD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2A830;
  if (!qword_1ECF2A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A830);
  }

  return result;
}

void OUTLINED_FUNCTION_48_11()
{
}

uint64_t sub_1E37DAE10()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E37DAE78()
{
  result = *(v0 + 128);
  if (result == 263)
  {
    result = 212;
    *(v0 + 128) = 212;
  }

  return result;
}

uint64_t sub_1E37DAECC(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 263;
  v3 = sub_1E3C2F9A0();
  *(v3 + 128) = a1;

  v4 = sub_1E3E6011C();
  v5 = *v4;
  sub_1E3C2DE50();

  if (sub_1E373F6E0(a1, 211, v6, v7, v8, v9))
  {
    v14 = *sub_1E3E60700();
    sub_1E3C2E258();
    v15 = sub_1E37BD068();
    v16 = *v4;
    v17 = *(*v15 + 872);
    v18 = v16;
    v17(v16);

    OUTLINED_FUNCTION_0_36();
    v20 = *(v19 + 1984);

    v20(5);
  }

  else if (sub_1E373F6E0(a1, 212, v10, v11, v12, v13))
  {
    v21 = *sub_1E3E5FACC();
    sub_1E3C2E258();
  }

  sub_1E37BD068();
  LOBYTE(v160[0]) = 2;
  v173 = 15;
  sub_1E3C2FC98();
  v171 = v172;
  sub_1E3C3DE00();
  v169 = v170;
  sub_1E3C3DE00();
  v167 = v168;
  v22 = sub_1E3C3DE00();
  LOBYTE(v161) = v164;
  v30 = OUTLINED_FUNCTION_0_38(v22, v23, v24, v25, v26, v27, v28, v29, *&v160[0]);
  sub_1E3C2FCB8(v30, v31, v32, v33, v34, v35, &qword_1F5D549D8, v36);
  OUTLINED_FUNCTION_11_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v45 = OUTLINED_FUNCTION_30_3(v37, v38, v39, v40, v41, v42, v43, v44, *&v160[0]);
  v46(v45, 48);

  v47 = *(v3 + 104);

  v48 = *sub_1E3E5FD88();
  v49 = *(*v47 + 680);
  v50 = v48;
  v49(v48);

  if (sub_1E373F6E0(a1, 210, v51, v52, v53, v54))
  {
    v55 = sub_1E37BD068();
    (*(*v55 + 1792))(0);

    OUTLINED_FUNCTION_0_36();
    v57 = *(v56 + 1696);

    v57(19);

    OUTLINED_FUNCTION_0_36();
    v59 = *(v58 + 2056);

    v60 = OUTLINED_FUNCTION_10_7();
    v59(v60);

    OUTLINED_FUNCTION_0_36();
    v62 = *(v61 + 2080);

    v63 = OUTLINED_FUNCTION_10_7();
    v62(v63);

    OUTLINED_FUNCTION_0_36();
    v65 = *(v64 + 2104);

    v66 = OUTLINED_FUNCTION_10_7();
    v65(v66);

    v67 = objc_opt_self();

    [v67 spacerA];
    OUTLINED_FUNCTION_9_29(MEMORY[0x1E69DDCE0]);
    v69 = v68;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_37();
    OUTLINED_FUNCTION_6_7();
    v70 = OUTLINED_FUNCTION_5_17();
    v161 = v164;
    v162 = v165;
    v163 = v166;
    v78 = OUTLINED_FUNCTION_0_38(v70, v71, v72, v73, v74, v75, v76, v77, 0);
    sub_1E3C2FCB8(v78, v79, v80, v81, v82, v83, v69, v84);
    memcpy(v160, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v93 = OUTLINED_FUNCTION_30_3(v85, v86, v87, v88, v89, v90, v91, v92, *&v160[0]);
    v94(v93, 0);

    LOBYTE(v160[0]) = 7;
    v173 = 1;

    sub_1E3C2FC98();
    v171 = v172;
    sub_1E3C3DE00();
    v169 = v170;
    sub_1E3C3DE00();
    v167 = v168;
    v95 = sub_1E3C3DE00();
    LOBYTE(v161) = v164;
    v103 = OUTLINED_FUNCTION_0_38(v95, v96, v97, v98, v99, v100, v101, v102, *&v160[0]);
    sub_1E3C2FCB8(v103, v104, v105, v106, v107, v108, &unk_1F5D54CA8, v109);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v118 = OUTLINED_FUNCTION_30_3(v110, v111, v112, v113, v114, v115, v116, v117, *&v160[0]);
    v120 = 59;
  }

  else
  {
    v121 = *(**(v3 + 104) + 1792);

    v121(0);

    OUTLINED_FUNCTION_0_36();
    v123 = *(v122 + 2056);

    v124 = OUTLINED_FUNCTION_10_7();
    v123(v124);

    OUTLINED_FUNCTION_9_29(MEMORY[0x1E69DDCE0]);
    v126 = v125;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_37();
    OUTLINED_FUNCTION_6_7();
    v127 = OUTLINED_FUNCTION_5_17();
    v161 = v164;
    v162 = v165;
    v163 = v166;
    v135 = OUTLINED_FUNCTION_0_38(v127, v128, v129, v130, v131, v132, v133, v134, 0x4044000000000000);
    sub_1E3C2FCB8(v135, v136, v137, v138, v139, v140, v126, v141);
    memcpy(v160, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v118 = OUTLINED_FUNCTION_30_3(v142, v143, v144, v145, v146, v147, v148, v149, *&v160[0]);
    v120 = 0;
  }

  v119(v118, v120);

  v150 = sub_1E37BD0DC();
  (*(*v150 + 208))(0x4040000000000000, 0);

  OUTLINED_FUNCTION_36();
  v152 = *(v151 + 312);

  v152(0x4040000000000000, 0);

  v153 = *(v3 + 112);
  memset(__src, 0, 24);
  __src[3] = 0x4028000000000000;
  LOBYTE(__src[4]) = 0;
  v154 = *(*v153 + 160);

  v154(__src);

  v155 = sub_1E37DAE10();
  v160[0] = xmmword_1E4296CA0;
  memset(&v160[1], 0, 17);
  (*(*v155 + 160))(v160);

  sub_1E3C37CBC(v156, 23);

  sub_1E3C37CBC(v157, 39);

  sub_1E3C37CBC(v158, 31);

  return v3;
}

void sub_1E37DB794()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 263;
  sub_1E42076B4();
  __break(1u);
}

void *sub_1E37DB800()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37DB840()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 130, 7);
}

uint64_t sub_1E37DB870()
{
  v0 = sub_1E37DAE78();

  return sub_1E373F6E0(v0, 210, v1, v2, v3, v4);
}

uint64_t sub_1E37DB89C()
{
  v1 = sub_1E37DAE78();
  if (sub_1E373F6E0(v1, 211, v2, v3, v4, v5))
  {
    return 1;
  }

  v11 = *(v0 + 128);

  return sub_1E373F6E0(v11, 212, v6, v7, v8, v9);
}

char *sub_1E37DB960()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v2 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v14 = type metadata accessor for NavigationBarView();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v14);
  v7 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  v8 = *&v6[OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  v10 = *&v6[OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem];
  *(v9 + 32) = v10;
  v11 = v6;
  v12 = v10;
  sub_1E37DBCD8(v9, v8);
  [v11 vui:*&v6[v7] addSubview:0 oldView:?];

  return v11;
}

void sub_1E37DBAD0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v2 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E37DBB94(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar);
  [v2 sizeThatFits_];
  v4 = v3;
  [v2 setFrame_];
  return v4;
}

id sub_1E37DBC58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E37DBCD8(uint64_t a1, void *a2)
{
  sub_1E37DBD4C();
  v3 = sub_1E42062A4();

  [a2 setItems_];
}

unint64_t sub_1E37DBD4C()
{
  result = qword_1EE23B268;
  if (!qword_1EE23B268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B268);
  }

  return result;
}

unint64_t sub_1E37DBDBC()
{
  result = qword_1ECF2A858;
  if (!qword_1ECF2A858)
  {
    type metadata accessor for FollowStateViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A858);
  }

  return result;
}

void sub_1E37DBE34()
{
  OUTLINED_FUNCTION_31_1();
  v97 = v1;
  v98 = v2;
  v95 = v3;
  LODWORD(v99) = v4;
  v96 = v5;
  v7 = v6;
  v93 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850, &qword_1E429E5F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v87 - v14;
  v16 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = 0u;
  v91 = (v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  LOBYTE(v102) = 1;
  sub_1E42038E4();
  v18 = v101[1];
  *(v0 + 184) = v101[0];
  v92 = v18;
  *(v0 + 192) = v18;
  v19 = v16[14];
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_1E379D7E4(v15, v12, &qword_1ECF2A850, &qword_1E429E5F0);
  v94 = v19;
  v24 = v97;
  sub_1E42038E4();
  sub_1E325F69C(v15, &qword_1ECF2A850);
  nullsub_1();
  v25 = v16[17];
  sub_1E41FE8D4();
  swift_allocObject();
  v26 = sub_1E41FE8C4();
  *(v0 + v25) = v26;
  nullsub_1();
  *(v0 + 168) = v98;
  *(v0 + 176) = v24;
  *v0 = v7;
  *(v0 + 8) = v99;
  LOBYTE(v101[0]) = 4;
  v27 = *(*v7 + 776);

  v27(&v102, v101, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v104)
  {

    OUTLINED_FUNCTION_52_8();

    sub_1E325F69C(&v102, &unk_1ECF296E0);
LABEL_71:

    memcpy(v101, (v0 + 56), sizeof(v101));
    sub_1E325F69C(v101, &unk_1ECF2A868);

    sub_1E325F69C(v94 + v0, &qword_1ECF2A870);

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v16);
    goto LABEL_79;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    OUTLINED_FUNCTION_52_8();

    goto LABEL_71;
  }

  v28 = v101[1];
  v29 = (v0 + v16[16]);
  *v29 = v101[0];
  v29[1] = v28;
  v30 = (*(*v7 + 464))();

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1E32AE9B0(v31);
  if (!v32)
  {

    OUTLINED_FUNCTION_61_5();
    goto LABEL_77;
  }

  v88 = v16;
  if (v32 < 1)
  {
    __break(1u);
    return;
  }

  v33 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v94 = 0;
  v99 = v31 & 0xC000000000000001;
  OUTLINED_FUNCTION_61_5();
  v98 = v31;
  v97 = v34;
  do
  {
    if (v99)
    {
      v35 = MEMORY[0x1E6911E60](v33, v31);
    }

    else
    {
      v35 = *(v31 + 8 * v33 + 32);
    }

    LOBYTE(v102) = 29;
    (*(*v35 + 776))(v101, &v102, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v101[3])
    {
      v36 = swift_dynamicCast();
      if (v36)
      {
        v39 = v102;
      }

      else
      {
        v39 = 0;
      }

      if (v36)
      {
        v40 = v103;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v36 = sub_1E325F69C(v101, &unk_1ECF296E0);
      v39 = 0;
      v40 = 0;
    }

    if (*v35 == _TtC8VideosUI13TextViewModel)
    {
      v105 = v35[49];
      HIWORD(v100) = 23;
      sub_1E3742F1C(v36, v37, v38);
      swift_retain_n();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      if (v101[0] == v102 && v101[1] == v103)
      {

LABEL_33:

        *(v0 + 32) = v35;
        v94 = v35;
        OUTLINED_FUNCTION_61_5();
        goto LABEL_37;
      }

      v26 = sub_1E42079A4();

      if (v26)
      {
        goto LABEL_33;
      }

      v42 = v35[49];

      v105 = v42;
      HIWORD(v100) = 24;
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      if (v101[0] == v102 && v101[1] == v103)
      {
      }

      else
      {
        v26 = sub_1E42079A4();

        if ((v26 & 1) == 0)
        {

LABEL_36:
          OUTLINED_FUNCTION_61_5();
          goto LABEL_37;
        }
      }

      *(v0 + 40) = v35;
      v89 = v35;
      goto LABEL_36;
    }

LABEL_37:
    v44 = FollowLiveUpdatesState.rawValue.getter(0);
    if (v40)
    {
      if (v39 == v44 && v40 == v45)
      {

LABEL_53:

        OUTLINED_FUNCTION_76_2(v60, v61, v62, v63, v64, v65, v66, v67, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101[0], v101[1], v101[2], v101[3], v101[4], v101[5], v101[6], v101[7], v101[8], v101[9], v101[10], v101[11]);
        OUTLINED_FUNCTION_18_14();
        if (sub_1E4205E84())
        {
          goto LABEL_60;
        }

        LOWORD(v101[0]) = v35[49];
        LOWORD(v102) = 24;
        OUTLINED_FUNCTION_18_14();
        if (sub_1E4205E84())
        {
          goto LABEL_60;
        }

        type metadata accessor for ImageViewModel();
        v68 = swift_dynamicCastClass();
        if (v68)
        {
          v69 = v68;

          v70 = v69;
        }

        else
        {

          v70 = 0;
        }

        v31 = v98;
        v90 = v70;
        *v91 = v70;
        goto LABEL_61;
      }

      v47 = OUTLINED_FUNCTION_78_1(v44, v45, v44);

      if (v47)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    v48 = FollowLiveUpdatesState.rawValue.getter(1);
    if (!v40)
    {

LABEL_60:

      v31 = v98;
      goto LABEL_61;
    }

    if (v39 == v48 && v40 == v49)
    {
    }

    else
    {
      v51 = OUTLINED_FUNCTION_78_1(v48, v49, v48);

      if ((v51 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    OUTLINED_FUNCTION_76_2(v52, v53, v54, v55, v56, v57, v58, v59, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101[0], v101[1], v101[2], v101[3], v101[4], v101[5], v101[6], v101[7], v101[8], v101[9], v101[10], v101[11]);
    OUTLINED_FUNCTION_18_14();
    if (sub_1E4205E84())
    {
      goto LABEL_60;
    }

    type metadata accessor for ImageViewModel();
    v71 = swift_dynamicCastClass();
    if (v71)
    {
      v72 = v71;

      v73 = v72;
    }

    else
    {

      v73 = 0;
    }

    v31 = v98;
    v92 = v73;
    *(v0 + 24) = v73;
LABEL_61:
    ++v33;
  }

  while (v97 != v33);

  v16 = v88;
  if (v94 && sub_1E3C27528(v77, v78))
  {
    type metadata accessor for TextLayout();
    v79 = swift_dynamicCastClass();
    if (v79)
    {
      *(v0 + 48) = v79;
      (*(*v79 + 1720))(12);
      goto LABEL_78;
    }
  }

LABEL_77:
  *(v0 + 48) = 0;
LABEL_78:
  v80 = (v0 + v16[19]);
  type metadata accessor for FollowStateViewModel(0);
  sub_1E37DBDBC();
  *v80 = sub_1E42010C4();
  v80[1] = v81;
  v82 = (v0 + v16[20]);
  v83 = *(v26 + 16);
  *v82 = *v26;
  v82[1] = v83;
  v82[2] = *(v26 + 32);
  sub_1E37DFC14(v0, v93);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v16);
  sub_1E37DFC78(v0);
LABEL_79:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37DC818@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_49();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = OUTLINED_FUNCTION_32_7();
  sub_1E37DFC14(v7, v8);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_1E37DFCD4(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a1 = sub_1E37DFD38;
  a1[1] = v10;
  return result;
}

uint64_t sub_1E37DC8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8A8, &qword_1E429E738);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v67 = v7;
  v58 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v57[1] = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_21();
  v70 = type metadata accessor for FollowLiveUpdatesButton(v12);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8B0, &qword_1E429E740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8B8, &qword_1E429E748);
  OUTLINED_FUNCTION_0_10();
  v60 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v69 = v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8C0, &qword_1E429E750);
  OUTLINED_FUNCTION_0_10();
  v63 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v62 = v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8C8, &qword_1E429E758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v66 = v29;
  sub_1E37DFC14(a2, v18);
  v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v31 = swift_allocObject();
  sub_1E37DFCD4(v18, v31 + v30);
  v72 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8D0, &qword_1E429E760);
  sub_1E37E0734();
  sub_1E4203964();
  sub_1E37DFC14(a2, v18);
  v32 = v58;
  (*(v9 + 16))(v3, v59, v58);
  v33 = (v30 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v34 = swift_allocObject();
  sub_1E37DFCD4(v18, v34 + v30);
  (*(v9 + 32))(v34 + v33, v3, v32);
  v35 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A910, &unk_1E429E780) + 36)];
  *v35 = sub_1E37E08F4;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v21[*(v71 + 52)] = sub_1E3848584() & 1;
  v36 = *(**a2 + 392);
  v37 = v36();
  if (v37)
  {
    v38 = (*(*v37 + 744))(v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_1E374AD40(&qword_1ECF2A918, &qword_1ECF2A8B0, &qword_1E429E740, MEMORY[0x1E6981810]);
  sub_1E39B87A4(v38, v71, v39);

  v40 = sub_1E325F69C(v21, &qword_1ECF2A8B0);
  v41 = (v36)(v40);
  if (v41)
  {
    (*(*v41 + 552))(v76);
    v42 = *v76;
    v43 = *&v76[1];
    v44 = *&v76[2];
    v45 = *&v76[3];

    if ((v77 & 1) == 0)
    {
      sub_1E3952BE8(v42, v43, v44, v45);
    }
  }

  v74 = v71;
  v75 = v39;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v61;
  v48 = v69;
  sub_1E3E361E8();
  (*(v60 + 8))(v48, v47);
  v49 = *(a2 + 192);
  LOBYTE(v74) = *(a2 + 184);
  v75 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  v50 = v73;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = (v50 & 1) == 0;
  v53 = v66;
  (*(v63 + 32))(v66, v46, v64);
  v54 = (v53 + *(v65 + 36));
  *v54 = KeyPath;
  v54[1] = sub_1E37E09AC;
  v54[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870, &qword_1E429E600);
  v55 = v67;
  sub_1E4203914();
  type metadata accessor for AlertInfo(0);
  sub_1E37E09C4();
  sub_1E37E0B30();
  sub_1E4203424();
  sub_1E325F69C(v55, &qword_1ECF2A8A8);
  return sub_1E325F69C(v53, &qword_1ECF2A8C8);
}

void sub_1E37DD0E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850, &qword_1E429E5F0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_67_7();
  MEMORY[0x1EEE9AC00](v4);
  v13 = OUTLINED_FUNCTION_48_12(v5, v6, v7, v8, v9, v10, v11, v12, v60[0]);
  v14 = type metadata accessor for FollowLiveUpdatesButton(v13);
  OUTLINED_FUNCTION_0_10();
  v62 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v60 - v21;
  v23 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_1E3E37F30();
  v31 = *(v25 + 16);
  v65 = v23;
  v31(v29, v30, v23);
  sub_1E37DFC14(v1, v22);
  v32 = sub_1E41FFC94();
  v33 = sub_1E42067E4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60[1] = v17;
    v35 = v34;
    v36 = swift_slowAlloc();
    v61 = v19;
    v37 = v36;
    v67 = v36;
    *v35 = 136315138;
    sub_1E3848584();
    v60[0] = v14;
    sub_1E37DFC78(v22);
    v38 = OUTLINED_FUNCTION_32_7();
    v41 = sub_1E3270FC8(v38, v39, v40);
    v14 = v60[0];

    *(v35 + 4) = v41;
    _os_log_impl(&dword_1E323F000, v32, v33, "FollowLiveUpdatesButton: %s pressed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v19 = v61;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v43 = *(v25 + 8);
    v42 = v25 + 8;
    v43(v29, v65);
  }

  else
  {

    v44 = *(v25 + 8);
    v42 = v25 + 8;
    v44(v29, v65);
    sub_1E37DFC78(v22);
  }

  if (sub_1E41FE8A4())
  {
    if ((MEMORY[0x1E6909210]() & 1) == 0 && sub_1E395A870())
    {
      v45 = v64;
      sub_1E37DDFE0();
      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v42 = *(v14 + 56);
      sub_1E379D7E4(v45, v63, &qword_1ECF2A850, &qword_1E429E5F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870, &qword_1E429E600);
      sub_1E4203904();
      sub_1E325F69C(v45, &qword_1ECF2A850);
      sub_1E395A900();
    }

    v50 = *(v1 + 192);
    LOBYTE(v67) = *(v1 + 184);
    v68 = v50;
    v66 = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    OUTLINED_FUNCTION_56_7(v51);
    if (sub_1E3848584())
    {
      sub_1E3848650(0);
      OUTLINED_FUNCTION_57_6();
      OUTLINED_FUNCTION_72_9();
      v52 = swift_allocObject();
      sub_1E37DFCD4(v19, v52 + v42);
      OUTLINED_FUNCTION_58_7();
      FollowLiveUpdatesRequestManager.unfollow(for:completion:)();
    }

    else
    {
      sub_1E3848650(1);
      OUTLINED_FUNCTION_57_6();
      OUTLINED_FUNCTION_72_9();
      v58 = swift_allocObject();
      sub_1E37DFCD4(v19, v58 + v42);
      OUTLINED_FUNCTION_58_7();
      FollowLiveUpdatesRequestManager.follow(for:completion:)();
    }

    (*(v1 + 168))(v59);
  }

  else
  {
    v53 = v64;
    sub_1E37DEDE0();
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    sub_1E379D7E4(v53, v63, &qword_1ECF2A850, &qword_1E429E5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870, &qword_1E429E600);
    sub_1E4203904();
    sub_1E325F69C(v53, &qword_1ECF2A850);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DD5FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A930, &unk_1E429E7D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A908, &qword_1E429E778);
  OUTLINED_FUNCTION_0_10();
  v87 = v7;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8F8, &qword_1E429E770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  type metadata accessor for FollowLiveUpdatesButton(0);
  v22 = sub_1E3848584();
  if (v22)
  {
    v23 = v2[2];
    if (v23)
    {
      if (v2[4])
      {
        v83 = &v80;
        MEMORY[0x1EEE9AC00](v22);
        OUTLINED_FUNCTION_28_15();
        MEMORY[0x1EEE9AC00](v24);
        OUTLINED_FUNCTION_49_10();
        *(v25 - 16) = v23;
        *(v25 - 8) = v2;
        v84 = v26;

        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A938, &qword_1E429E7E0);
        v81 = OUTLINED_FUNCTION_13_40(v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A940, &qword_1E429E7E8);
        v86 = v4;
        v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
        v85 = v0;
        v30 = v29;
        OUTLINED_FUNCTION_4_34();
        v33 = sub_1E37E0C50(v31, &qword_1ECF2A940, &qword_1E429E7E8, v32);
        OUTLINED_FUNCTION_14_2();
        v36 = sub_1E374AD40(v34, &qword_1ECF2A1F8, &qword_1E429E7F0, v35);
        v90[0] = v28;
        v90[1] = v30;
        v90[2] = v33;
        v90[3] = v36;
        OUTLINED_FUNCTION_14_31();
        OUTLINED_FUNCTION_20_23(sub_1E37E11E4, v37, sub_1E37E11E8);
        v38 = sub_1E4203DA4();
        OUTLINED_FUNCTION_11_32(v38, v39, v40, v41, v42, v43, v44, v45, v80);
        (*(v87 + 32))(v21, v13, v88);
        memcpy(&v21[*(v14 + 36)], v90, 0x70uLL);
        sub_1E32B35DC(v21, v85);
        swift_storeEnumTagMultiPayload();
        sub_1E37E083C();
        OUTLINED_FUNCTION_32_7();
        sub_1E4201F44();

        v46 = v21;
LABEL_9:
        sub_1E325F69C(v46, &qword_1ECF2A8F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8E8, &qword_1E429E768);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  v47 = sub_1E3848584();
  if ((v47 & 1) == 0)
  {
    v48 = v2[3];
    if (v48)
    {
      if (v2[5])
      {
        v83 = &v80;
        MEMORY[0x1EEE9AC00](v47);
        OUTLINED_FUNCTION_28_15();
        MEMORY[0x1EEE9AC00](v49);
        OUTLINED_FUNCTION_49_10();
        *(v50 - 16) = v48;
        *(v50 - 8) = v2;
        v84 = v51;

        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A938, &qword_1E429E7E0);
        v81 = OUTLINED_FUNCTION_13_40(v52);
        v85 = v0;
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A940, &qword_1E429E7E8);
        v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
        v86 = v4;
        v55 = v54;
        OUTLINED_FUNCTION_4_34();
        v58 = sub_1E37E0C50(v56, &qword_1ECF2A940, &qword_1E429E7E8, v57);
        OUTLINED_FUNCTION_14_2();
        v61 = sub_1E374AD40(v59, &qword_1ECF2A1F8, &qword_1E429E7F0, v60);
        v90[0] = v53;
        v90[1] = v55;
        v90[2] = v58;
        v90[3] = v61;
        OUTLINED_FUNCTION_14_31();
        OUTLINED_FUNCTION_20_23(sub_1E37E0B88, v62, sub_1E37E0B90);
        v63 = sub_1E4203DA4();
        OUTLINED_FUNCTION_11_32(v63, v64, v65, v66, v67, v68, v69, v70, v80);
        (*(v87 + 32))(v18, v10, v88);
        memcpy((v18 + *(v14 + 36)), v90, 0x70uLL);
        sub_1E32B35DC(v18, v85);
        swift_storeEnumTagMultiPayload();
        sub_1E37E083C();
        sub_1E4201F44();

        v46 = v18;
        goto LABEL_9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8E8, &qword_1E429E768);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
}

uint64_t sub_1E37DDC0C(uint64_t a1)
{
  type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v9 = sub_1E4202064();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E4202284();
  sub_1E4200E84();
  (*(v11 + 8))(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A860, &unk_1E42B3900);
  sub_1E4203AA4();
  v16 = sub_1E3E37F30();
  (*(v7 + 16))(v1, v16, v5);
  sub_1E37DFC14(a1, v2);
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315138;
    sub_1E3848584();
    sub_1E37DFC78(v2);
    v20 = OUTLINED_FUNCTION_32_7();
    v23 = sub_1E3270FC8(v20, v21, v22);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1E323F000, v17, v18, "FollowLiveUpdatesButton.onAppear: state: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    return (*(v7 + 8))(v1, v5);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
    return sub_1E37DFC78(v2);
  }
}

uint64_t sub_1E37DDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AlertInfo(0) + 20);
  sub_1E4203634();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a2, a1 + v4, v5);
}

void sub_1E37DDFE0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_7_49();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_21();
  v5 = sub_1E4203624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = objc_opt_self();
  if (![v9 sharedInstance])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_43_10();
  v11 = OUTLINED_FUNCTION_55_7(v10 | 0xB, "entUpdatesMessage");
  v13 = v12;

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = sub_1E32822E0(v14, v15, v16);
  v18 = OUTLINED_FUNCTION_54_2(v17, MEMORY[0x1E69E6158]);
  v22 = OUTLINED_FUNCTION_44_16(v18, v19, v20, v21);
  sub_1E37DFAF0(v22);
  v23 = [v9 sharedInstance];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000024, v25, v24);
  OUTLINED_FUNCTION_65_1();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54_2(v26, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_1_65();
  sub_1E4203614();
  v27 = OUTLINED_FUNCTION_27_0();
  sub_1E37434B8(v27, v28, v29);

  v30 = [v9 sharedInstance];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  OUTLINED_FUNCTION_39_12("TV.Button.LiveUpdates.AllowInSettings");
  v33 = v32;

  if (v33)
  {
    OUTLINED_FUNCTION_54_2(v34, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_64_6();
    v35 = swift_allocObject();
    sub_1E37DFCD4(v1, v35 + v17);
    OUTLINED_FUNCTION_32_0();
    sub_1E4203614();

    v36 = OUTLINED_FUNCTION_32_0();
    sub_1E37434B8(v36, v37, v38);

    OUTLINED_FUNCTION_21_25();
    *v3 = 1;
    v39 = type metadata accessor for AlertInfo(0);
    v40 = OUTLINED_FUNCTION_41_18(v39);
    v41(v40);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

double sub_1E37DE32C(__int16 a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_49();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1E37DFC14(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1E37DFCD4(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = (v18 + v17 + v8);
  *v19 = a1;
  v19[1] = HIBYTE(a1) & 1;
  sub_1E376FE58(0, 0, v12, &unk_1E429E810, v18);

  return result;
}

uint64_t sub_1E37DE4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E37DE4C4, 0, 0);
}

uint64_t sub_1E37DE4C4()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 24) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E37DE554, v2, v1);
}

uint64_t sub_1E37DE554()
{
  OUTLINED_FUNCTION_27_2();

  sub_1E37DE5C0();
  OUTLINED_FUNCTION_54();

  return v0();
}