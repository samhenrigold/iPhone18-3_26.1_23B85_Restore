uint64_t sub_291DD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_291E50()
{
  result = qword_40C330;
  if (!qword_40C330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C338, &qword_331B78);
    sub_291EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C330);
  }

  return result;
}

unint64_t sub_291EDC()
{
  result = qword_40C340;
  if (!qword_40C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C348, &unk_331B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C340);
  }

  return result;
}

uint64_t sub_291F40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_291F60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_291FA8(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  v13 = a2[2];
  v5 = sub_30D0B8();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16) && (sub_191978(v5), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    [a1 setPreservesSuperviewLayoutMargins:1];
    v8 = sub_30D0B8();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v6);
    *(v2 + v6) = 0x8000000000000000;
    sub_296070(&v11, v8, isUniquelyReferenced_nonNull_native);
    *(v2 + v6) = v10;
    swift_endAccess();
    sub_22FB48(a1, *(&v13 + 1), *(&v11 + 1), *&v12, *(&v12 + 1), *&v13);
  }
}

void sub_2920D8(void **a1)
{
  v2 = v1;
  if (qword_3FAE70 != -1)
  {
    swift_once();
  }

  v16 = xmmword_42AB60;
  v17 = *algn_42AB70;
  v4 = qword_42AB80;
  v5 = qword_42AB88;
  v6 = sub_30D0B8();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (*(v8 + 16))
  {
    v9 = sub_191978(v6);
    if (v10)
    {
      v11 = *(v8 + 56) + 48 * v9;
      v16 = *v11;
      v17 = *(v11 + 16);
      v4 = *(v11 + 32);
      v5 = *(v11 + 40);
    }
  }

  swift_endAccess();
  sub_2303F0(a1, 0, 0);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 40) = v17;
  *(v13 + 24) = v16;
  *(v13 + 56) = v4;
  *(v13 + 64) = v5;
  aBlock[4] = sub_297EA4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_9_3;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  [v12 animateWithDuration:v14 animations:0.3];
  _Block_release(v14);
}

void sub_2922BC(void **a1)
{
  v2 = v1;
  v3 = sub_230E60(a1, 0, 0);
  v4 = 0.0;
  if (v3)
  {
    v5 = sub_30D0B8();
    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
    swift_beginAccess();
    v7 = *&v2[v6];
    if (*(v7 + 16) && (v8 = sub_191978(v5), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 48 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      swift_endAccess();
      v4 = v11 + v12 + v13;
    }

    else
    {
      swift_endAccess();
    }
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  v18[4] = sub_297E40;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_914CC;
  v18[3] = &block_descriptor_61;
  v16 = _Block_copy(v18);
  v17 = v2;

  [v14 animateWithDuration:v16 animations:0.3];

  _Block_release(v16);
}

void sub_292464(void **a1, char a2)
{
  v3 = v2;
  v4 = sub_22FDD8(a1, a2);
  v5 = sub_30D0B8();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
  swift_beginAccess();
  v7 = sub_191978(v5);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *&v2[v6];
    v26 = *&v3[v6];
    *&v3[v6] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_297C9C();
      v11 = v26;
    }

    sub_1B44D4(v9, v11);
    *&v3[v6] = v11;
  }

  swift_endAccess();
  v12 = 0.0;
  if (v4)
  {
    v13 = v4;
    v14 = sub_30D0B8();
    swift_beginAccess();
    v15 = *&v3[v6];
    if (*(v15 + 16) && (v16 = sub_191978(v14), (v17 & 1) != 0))
    {
      v18 = (*(v15 + 56) + 48 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      swift_endAccess();

      v12 = v19 + v20 + v21;
    }

    else
    {
      swift_endAccess();
    }
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v12;
  aBlock[4] = sub_298688;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_15;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v22 animateWithDuration:v24 animations:0.3];

  _Block_release(v24);
}

__n128 sub_292698()
{
  *&xmmword_42AB60 = 0;
  result = *&NSDirectionalEdgeInsetsZero.top;
  v1 = *&NSDirectionalEdgeInsetsZero.bottom;
  *(&xmmword_42AB60 + 8) = *&NSDirectionalEdgeInsetsZero.top;
  *&algn_42AB70[8] = v1;
  qword_42AB88 = 0;
  return result;
}

char *sub_2926C0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_cycleView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for CycleView()) init];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for SizeClassAutoMarginView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithContentView:", v3);

  v5 = v4;
  [v5 _setContentViewMarginType:0];
  [v5 _setDisplaysWhenSearchActive:1];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_cycleView;
  [*&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_cycleView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v6] setPreservesSuperviewLayoutMargins:1];
  [*&v5[v6] setClipsToBounds:1];
  v7 = [v5 contentView];
  v8 = *&v5[v6];
  sub_30CE98();

  return v5;
}

void sub_292914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C470, &qword_331C80);
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
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
        swift_unknownObjectRetain();
      }

      v22 = sub_30D7E8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_292B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C398, &qword_331C18);
  v35 = v4;
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1DA94(v22, v36);
      }

      else
      {
        sub_1DA1C(v22, v36);
        v23 = v21;
      }

      sub_30C0D8();
      sub_30D7F8();
      sub_30C1F8();
      v24 = sub_30D858();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1DA94(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_292E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C478, qword_331C88);
  v40 = v4;
  v9 = sub_30D688();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v41 = *(v38 + 72);
      v24 = v23 + v41 * v22;
      if (v40)
      {
        sub_29860C(v24, v7, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      }

      else
      {
        sub_29855C(v24, v7, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      }

      v25 = *(*(v8 + 56) + 8 * v22);
      sub_30D7F8();
      v26 = *v7;
      if (*v7 == 0.0)
      {
        v26 = 0.0;
      }

      sub_30D838(*&v26);
      v27 = v7[1];
      if (v27 == 0.0)
      {
        v27 = 0.0;
      }

      sub_30D838(*&v27);
      sub_305478();
      sub_2985C4(&unk_40C480, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
      sub_30BFD8();
      v28 = sub_30D858();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_29860C(v7, *(v10 + 48) + v41 * v18, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_38:
  *v3 = v10;
}

void sub_293254(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3B8, &qword_331C38);
  v35 = v4;
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_30C0D8();
      sub_30D7F8();
      sub_30C1F8();
      v24 = sub_30D858();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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
}

void sub_293510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UberScrollConfiguration(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3B0, &qword_331C30);
  v37 = v4;
  v8 = sub_30D688();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_29860C(v24, v38, type metadata accessor for UberScrollConfiguration);
      }

      else
      {
        sub_29855C(v24, v38, type metadata accessor for UberScrollConfiguration);
      }

      sub_30D7F8();
      sub_30B668();
      sub_30C1F8();

      v25 = sub_30D858();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_29860C(v38, *(v9 + 56) + v23 * v17, type metadata accessor for UberScrollConfiguration);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_29388C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E0, &qword_331C50);
  v6 = sub_30D688();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_30D088(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
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
}

void sub_293AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_3071E8();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_307048();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3F8, qword_331C68);
  v48 = v4;
  v11 = sub_30D688();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_2985C4(&qword_40C400, &type metadata accessor for ModernShelf.ItemPresentation, &protocol conformance descriptor for ModernShelf.ItemPresentation);
      v32 = sub_30BFC8();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_293F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E8, &qword_331C58);
  v41 = v4;
  v8 = sub_30D688();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v16 = v8 + 64;
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
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_29860C(v28, v42, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
      }

      else
      {
        sub_29855C(v28, v42, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
      }

      sub_30D7F8();
      sub_30C1F8();
      v29 = sub_30D858();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_29860C(v42, *(v9 + 56) + v27 * v17, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
      ++*(v9 + 16);
      v7 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_294310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40C3D0, &qword_331C48);
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
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
      }

      v22 = sub_30D7E8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_294580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C388, &qword_331C08);
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *(v22 + 32);
      v35 = *(v22 + 16);
      v36 = *v22;
      v24 = sub_30D7E8();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_294804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C390, &qword_331C10);
  v6 = sub_30D688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v23 = *(v22 + 40);
      v24 = *(v22 + 32);
      v36 = *(v22 + 16);
      v37 = *v22;
      v25 = sub_30D7E8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v37;
      *(v16 + 16) = v36;
      *(v16 + 32) = v24;
      *(v16 + 40) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_294A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3A8, &qword_331C28);
  v32 = v4;
  v6 = sub_30D688();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_30D7F8();
      sub_30D808(v20);
      v23 = sub_30D858();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_294D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3F0, &qword_331C60);
  v34 = v4;
  v6 = sub_30D688();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_30D7F8();
      sub_30C1F8();
      v25 = sub_30D858();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
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

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_294FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3A0, &qword_331C20);
  v39 = v4;
  v6 = sub_30D688();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v39)
      {
        v28 = *v27;
        v29 = v27[2];
        v41 = v27[1];
        v42 = v29;
        v40 = v28;
      }

      else
      {
        sub_1B4D1C(v27, &v40);
      }

      sub_30D7F8();
      sub_30C1F8();
      v30 = sub_30D858();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v40;
      v19 = v42;
      v17[1] = v41;
      v17[2] = v19;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_295298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3C8, &qword_331C40);
  v6 = sub_30D688();
  v7 = v6;
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
    v14 = v6 + 64;
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
      }

      v23 = sub_30D088(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
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
        return;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_33:
  *v3 = v7;
}

_OWORD *sub_295508(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1977EC();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_296B84();
      v8 = v16;
      goto LABEL_8;
    }

    sub_292B84(v13, a3 & 1);
    v8 = sub_1977EC();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_30D778();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1DA94(a1, v19);
  }

  else
  {
    sub_29676C(v8, a2, a1, v18);

    return a2;
  }
}

void sub_295648(double *a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_191A20(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    v18 = v11[3];
    if (v18 >= v16 && (a2 & 1) != 0)
    {
LABEL_7:
      v19 = *v4;
      if (v17)
      {
LABEL_8:
        *(v19[7] + 8 * v13) = a3;
        return;
      }

      goto LABEL_11;
    }

    if (v18 >= v16 && (a2 & 1) == 0)
    {
      sub_296D04();
      goto LABEL_7;
    }

    sub_292E54(v16, a2 & 1);
    v20 = sub_191A20(a1);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_29855C(a1, v10, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      sub_2967D4(v13, v10, v19, a3);
      return;
    }
  }

  sub_30D778();
  __break(1u);
}

unint64_t sub_2957BC(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1977EC();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_293254(v13, a2 & 1);
      result = sub_1977EC();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for UIContentSizeCategory(0);
        result = sub_30D778();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_296F38();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a3;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a1;
  *(v18[7] + 8 * result) = a3;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a1;
}

unint64_t sub_29590C(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_191BA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_29388C(v13, a3 & 1);
      result = sub_191BA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_124C4(0, &qword_3FBD90, UIView_ptr);
        result = sub_30D778();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_2972CC();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_295A70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_307048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_191BF4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_297428();
      goto LABEL_7;
    }

    sub_293AF0(v17, a3 & 1);
    v28 = sub_191BF4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_296888(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_30D778();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_3071E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_295C74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_19182C(a2, a3);
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
      sub_29777C();
      goto LABEL_7;
    }

    sub_293F98(v15, a4 & 1);
    v21 = sub_19182C(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_30D778();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0) - 8) + 72) * v12;

    sub_2984F8(a1, v20);
    return;
  }

LABEL_13:
  sub_29697C(v12, a2, a3, a1, v18);
}

void sub_295DD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_191978(a2);
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
      sub_294310(v14, a3 & 1);
      v9 = sub_191978(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_30D778();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_2979DC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_295F24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_191978(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_297B38();
    result = v17;
    goto LABEL_8;
  }

  sub_294580(v14, a3 & 1);
  result = sub_191978(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7] + 40 * result;
      v21 = *(a1 + 16);
      *v20 = *a1;
      *(v20 + 16) = v21;
      *(v20 + 32) = *(a1 + 32);
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v22 = v19[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_30D778();
  __break(1u);
  return result;
}

unint64_t sub_296070(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_191978(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_297C9C();
    result = v17;
    goto LABEL_8;
  }

  sub_294804(v14, a3 & 1);
  result = sub_191978(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = (v19[7] + 48 * result);
      v21 = a1[1];
      *v20 = *a1;
      v20[1] = v21;
      v20[2] = a1[2];
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v22 = (v19[7] + 48 * result);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_30D778();
  __break(1u);
  return result;
}

void sub_2961BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_191CC8(a2);
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
      sub_294A98(v14, a3 & 1);
      v9 = sub_191CC8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_30D778();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_297EC4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_296304(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19182C(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_294D24(v16, a3 & 1);
      v11 = sub_19182C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_30D778();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_298020();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
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

void sub_296460(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19182C(a2, a3);
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
      sub_294FC8(v16, a4 & 1);
      v11 = sub_19182C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_30D778();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_298188();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_29849C(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 48 * v11);
  v25 = *a1;
  v26 = a1[2];
  v24[1] = a1[1];
  v24[2] = v26;
  *v24 = v25;
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

void sub_2965F0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_191D34(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_295298(v13, a3 & 1);
      v8 = sub_191D34(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_124C4(0, &qword_40C3C0, UITextView_ptr);
        sub_30D778();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_298338();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

_OWORD *sub_29676C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DA94(a3, (a4[7] + 32 * a1));
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

uint64_t sub_2967D4(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  result = sub_29860C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
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

uint64_t sub_296888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_307048();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_3071E8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_29697C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  result = sub_29860C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
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

void sub_296A28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C470, &qword_331C80);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
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
}

void sub_296B84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C398, &qword_331C18);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DA1C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1DA94(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_296D04()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C478, qword_331C88);
  v5 = *v0;
  v6 = sub_30D678();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
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
        v21 = *(v24 + 72) * v20;
        sub_29855C(*(v5 + 48) + v21, v4, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_29860C(v4, *(v7 + 48) + v21, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
        *(*(v7 + 56) + 8 * v20) = v22;
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
}

void sub_296F38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3B8, &qword_331C38);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void sub_297094()
{
  v1 = v0;
  v2 = type metadata accessor for UberScrollConfiguration(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3B0, &qword_331C30);
  v4 = *v0;
  v5 = sub_30D678();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
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
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_29855C(*(v4 + 56) + v23, v26, type metadata accessor for UberScrollConfiguration);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        sub_29860C(v22, *(v24 + 56) + v23, type metadata accessor for UberScrollConfiguration);
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

        v1 = v25;
        v6 = v28;
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
}

void sub_2972CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E0, &qword_331C50);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        v20 = v18;
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
}

void sub_297428()
{
  v1 = v0;
  v41 = sub_3071E8();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_307048();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3F8, qword_331C68);
  v4 = *v0;
  v5 = sub_30D678();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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
}

void sub_29777C()
{
  v1 = v0;
  v2 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E8, &qword_331C58);
  v4 = *v0;
  v5 = sub_30D678();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_29855C(v21 + v27, v32, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_29860C(v26, *(v28 + 56) + v27, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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
}

void sub_2979DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40C3D0, &qword_331C48);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_297B38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C388, &qword_331C08);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_297C9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C390, &qword_331C10);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 40) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 48 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + 48 * v14;
      *v22 = v20;
      *(v22 + 16) = v21;
      *(v22 + 32) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

uint64_t sub_297E08()
{

  return _swift_deallocObject(v0, 32, 7);
}

double block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_297E6C()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_297EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3A8, &qword_331C28);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_298020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3F0, &qword_331C60);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_298188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3A0, &qword_331C20);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1B4D1C(*(v2 + 56) + 48 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v26 = v28[1];
        v25 = v28[2];
        *v24 = v28[0];
        v24[1] = v26;
        v24[2] = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_298338()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3C8, &qword_331C40);
  v2 = *v0;
  v3 = sub_30D678();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

uint64_t sub_2984F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29855C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2985C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29860C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  if (*(a1 + 16))
  {
    v13 = sub_1977EC();
    if (v14)
    {
      sub_1DA1C(*(a1 + 56) + 32 * v13, v21);
      sub_124C4(0, &qword_408100, UIFont_ptr);
      if (swift_dynamicCast())
      {
        v15 = [v20 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a5];
        if (v15)
        {
          v16 = v15;
          [a6 removeAttribute:NSFontAttributeName range:{a2, a3}];
          [a6 addAttribute:NSFontAttributeName value:v16 range:{a2, a3}];
          if (a7)
          {
            if (*(a1 + 16))
            {
              v17 = sub_1977EC();
              if (v18)
              {
                sub_1DA1C(*(a1 + 56) + 32 * v17, v21);
                sub_124C4(0, &qword_40BDA8, NSParagraphStyle_ptr);
                if ((swift_dynamicCast() & 1) == 0)
                {

                  return;
                }

                if (sub_30C848())
                {
                  [v16 pointSize];
                  v19 = sub_30C858();
                  [a6 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
                  [a6 addAttribute:NSParagraphStyleAttributeName value:v19 range:{a2, a3}];

                  return;
                }
              }
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_2988B8()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v0 setLineBreakMode:0];
  qword_42AB90 = v0;
  return result;
}

id sub_298908(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton);
  v5 = sub_1846A0(0, a1);

  [v4 setEnabled:v5 & 1];
  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton);
  v7 = sub_1846A0(1, *(v1 + v3)) & 1;

  return [v6 setEnabled:v7];
}

char *sub_2989C0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections;
  *&v7[v14] = sub_177210(&off_3B47A8);
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v89._countAndFlagsBits = 0xED00006567617020;
  v101._object = 0x8000000000343910;
  v101._countAndFlagsBits = 0xD000000000000013;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v17.super.isa = v16;
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  v18 = sub_301AB8(v101, v103, v17, v105, 0x73756F6976657250, v89);
  v20 = v19;

  v21 = sub_2999F0(0xD000000000000018, 0x80000000003438F0, v18, v20, 0x747475427466656CLL, 0xEA00000000006E6FLL);

  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton] = v21;
  v22 = [v15 mainBundle];
  v90._countAndFlagsBits = 0xE900000000000065;
  v102._object = 0x8000000000343950;
  v102._countAndFlagsBits = 0xD000000000000013;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v23.super.isa = v22;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v24 = sub_301AB8(v102, v104, v23, v106, 0x676170207478654ELL, v90);
  v26 = v25;

  v27 = sub_2999F0(0xD000000000000017, 0x8000000000343930, v24, v26, 0x7475427468676972, 0xEB000000006E6F74);

  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton] = v27;
  v28 = *v13;
  v29 = v13[1];
  v97 = a1;
  *v13 = a1;
  v13[1] = a2;
  sub_9FF04(a1, a2);
  sub_2B8D4(v28, v29);
  v100.receiver = v7;
  v100.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v100, "initWithFrame:", a3, a4, a5, a6);
  v31 = *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton];
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton;
  v92 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton;
  v33 = v30;
  v93 = v30;
  v34 = v30;
  [v31 addTarget:v34 action:"scrollByButton:" forControlEvents:64];
  v35 = v34;
  v36 = *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton];
  v37 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton;
  v95 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton;
  v38 = v35;
  [v36 addTarget:? action:? forControlEvents:?];
  v94 = v38;
  v39 = v38;
  v40 = *&v33[v32];
  v41 = v39;
  [v41 addSubview:v40];
  [v41 addSubview:*&v38[v37]];
  v42 = [objc_allocWithZone(UILayoutGuide) init];
  v43 = [objc_allocWithZone(UILayoutGuide) init];
  [v41 addLayoutGuide:v42];
  [v41 addLayoutGuide:v43];
  v96 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_3211B0;
  v45 = [v42 topAnchor];
  v46 = [v41 layoutMarginsGuide];
  v47 = [v46 topAnchor];

  v48 = [v45 constraintEqualToAnchor:v47];
  *(v44 + 32) = v48;
  v49 = [v42 bottomAnchor];
  v50 = [v41 layoutMarginsGuide];

  v51 = [v50 bottomAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];

  *(v44 + 40) = v52;
  v53 = [v43 topAnchor];
  v54 = [v41 layoutMarginsGuide];

  v55 = [v54 topAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];

  *(v44 + 48) = v56;
  v57 = [v43 bottomAnchor];
  v58 = [v41 layoutMarginsGuide];

  v59 = [v58 bottomAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];

  *(v44 + 56) = v60;
  v61 = [v42 leadingAnchor];
  v62 = [v41 leadingAnchor];

  v63 = [v61 constraintEqualToAnchor:v62];
  *(v44 + 64) = v63;
  v64 = [v42 trailingAnchor];
  v65 = [v41 layoutMarginsGuide];

  v66 = [v65 leadingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];

  *(v44 + 72) = v67;
  v68 = [v43 trailingAnchor];
  v69 = [v41 trailingAnchor];

  v70 = [v68 constraintEqualToAnchor:v69];
  *(v44 + 80) = v70;
  v71 = [v43 leadingAnchor];
  v72 = [v41 layoutMarginsGuide];

  v73 = [v72 trailingAnchor];
  v74 = [v71 constraintEqualToAnchor:v73];

  *(v44 + 88) = v74;
  v75 = [*&v93[v92] centerYAnchor];
  v91 = v42;
  v76 = [v42 centerYAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v44 + 96) = v77;
  v78 = [*&v93[v92] centerXAnchor];
  v79 = [v42 centerXAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v44 + 104) = v80;
  v81 = [*&v94[v95] centerYAnchor];
  v82 = [v43 centerYAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v44 + 112) = v83;
  v84 = [*&v94[v95] centerXAnchor];
  v85 = [v43 centerXAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v44 + 120) = v86;
  sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
  isa = sub_30C358().super.isa;

  [v96 activateConstraints:isa];

  sub_2B8D4(v97, a2);
  return v41;
}

uint64_t sub_2993C8(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80, &unk_31E150);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4 - 8];
  v6 = sub_30D278();
  v7 = swift_projectBox();
  v8 = [a1 isEnabled];
  v9 = objc_opt_self();
  if (v8)
  {
    v10 = [v9 labelColor];
  }

  else
  {
    v10 = [v9 tertiaryLabelColor];
  }

  v11 = v10;
  swift_beginAccess();
  sub_30D1F8();
  swift_endAccess();
  v12 = [a1 isHighlighted];
  v13 = objc_opt_self();
  if (v12)
  {
    v14 = [v13 systemFillColor];
  }

  else
  {
    v14 = [v13 tertiarySystemFillColor];
  }

  v15 = v14;
  swift_beginAccess();
  v16 = sub_30D108();
  sub_304678();
  v16(v20, 0);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(v6 - 8);
  (*(v17 + 16))(v5, v7, v6);
  (*(v17 + 56))(v5, 0, 1, v6);
  return sub_30D2A8();
}

void sub_29960C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_backwardButton);
  sub_124C4(0, &qword_3FE8A0, UIButton_ptr);
  v4 = v3;
  v5 = sub_30D098();

  if (v5)
  {
    if ((sub_1846A0(0, *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections)) & 1) == 0)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle;
    v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle);
    if (!v7)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_forwardButton);
    v10 = sub_30D098();

    if ((v10 & 1) == 0)
    {
      return;
    }

    if ((sub_1846A0(1, *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections)) & 1) == 0)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle;
    v7 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle);
    if (!v7)
    {
      return;
    }

    v8 = 1;
  }

  v11 = *(v2 + v6 + 8);

  v7(v8);

  sub_2B8D4(v7, v11);
}

unint64_t sub_29999C()
{
  result = qword_40C4D8;
  if (!qword_40C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C4D8);
  }

  return result;
}

id sub_2999F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39._countAndFlagsBits = a5;
  v39._object = a6;
  v37 = a3;
  v38 = a4;
  v6 = sub_30D278();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_30D158();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocBox();
  v15 = v14;
  sub_30D258();
  v16 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:22.0];
  v17 = sub_30C098();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  sub_30D248();
  (*(v11 + 104))(v13, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v10);
  sub_30D178();
  v19 = [objc_opt_self() effectWithStyle:6];
  v20 = sub_30D108();
  sub_304658();
  v20(&aBlock, 0);
  sub_124C4(0, &qword_3FE8A0, UIButton_ptr);
  (*(v7 + 16))(v9, v15, v6);
  v21 = sub_30D288();
  v44 = sub_299F14;
  v45 = v36;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1D35C0;
  v43 = &block_descriptor_62;
  v22 = _Block_copy(&aBlock);

  [v21 setConfigurationUpdateHandler:v22];
  _Block_release(v22);
  [v21 setPreferredBehavioralStyle:1];
  v23 = v21;
  v24 = sub_30C098();
  [v23 setAccessibilityLabel:v24];

  aBlock = 0;
  v41 = 0xE000000000000000;
  sub_30D558(21);

  aBlock = 0xD000000000000013;
  v41 = 0x8000000000343970;
  sub_30C238(v39);
  v25 = sub_30C098();

  [v23 setAccessibilityIdentifier:v25];

  v26 = v23;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_317F20;
  v29 = [v26 widthAnchor];
  v30 = [v29 constraintEqualToConstant:28.0];

  *(v28 + 32) = v30;
  v31 = [v26 heightAnchor];

  v32 = [v31 constraintEqualToConstant:52.0];
  *(v28 + 40) = v32;
  sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
  isa = sub_30C358().super.isa;

  [v27 activateConstraints:isa];

  return v26;
}

double block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double UIViewController.presentedArticleWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_0 + 1 || (sub_111AE0(), (sub_30C978() & 1) != 0))
  {
    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == &dword_0 + 2)
    {
      v6 = [v1 view];
      if (v6)
      {
        v8 = v6;
        v9 = [v6 _screen];

        if (v9)
        {
          [v9 _referenceBounds];
          v11 = v10;
          v13 = v12;

          return sub_29AC24(2, v13, v11);
        }

LABEL_15:
        __break(1u);
        return result;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;

  return CGRectGetWidth(*&v24);
}

void sub_29A0FC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == &dword_0 + 1 && (v3 = [v0 traitCollection], v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 == &dword_0 + 2))
  {
    [v0 pageContainerSize];
    if (v6 < v5 || v5 > 768.0)
    {
      [v0 pageMarginInsets];
    }
  }

  else
  {
    [v0 pageContainerSize];
    v8 = [v0 traitCollection];
    sub_2D40DC(v8);
  }
}

void PageTraitEnvironment.todayPageColumnMargin.getter(uint64_t a1, uint64_t a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 1 && (v7 = [v2 traitCollection], v8 = objc_msgSend(v7, "horizontalSizeClass"), v7, v8 == &dword_0 + 2))
  {
    v9 = (*(a2 + 8))(a1, a2);
    v10.n128_u64[0] = 30.0;
    if (v11 < v9 || v9 > 768.0)
    {
      (*(a2 + 16))(a1, a2, v10);
    }
  }

  else
  {
    v13 = 1;
    (*(a2 + 24))(&v13);
  }
}

double PageTraitEnvironment.todayPageRowMargin.getter(uint64_t a1, uint64_t a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != &dword_0 + 1)
  {
    return 30.0;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 != &dword_0 + 2)
  {
    return 30.0;
  }

  PageTraitEnvironment.todayPageColumnMargin.getter(a1, a2);
  return result;
}

double PageTraitEnvironment.todayPageCardLayoutMargins.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a1);
  v4 = [v2 traitCollection];
  [v4 userInterfaceIdiom];

  return v3;
}

id sub_29A4D0(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_traitCollection);
  v13 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_pageMarginInsets + 16);
  v14 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_pageMarginInsets);
  sub_12670(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec, v16);
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_containerSize];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_traitCollection] = v5;
  sub_12670(v16, &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec]);
  v9 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_pageMarginInsets];
  *v9 = v14;
  *(v9 + 1) = v13;
  v15.receiver = v7;
  v15.super_class = v6;
  v10 = v5;
  v11 = objc_msgSendSuper2(&v15, "init");
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

id sub_29A5F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_29A6A0(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec), *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec + 24));
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_containerSize);
  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_containerSize + 8);
  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_traitCollection);
  v8 = v2;
  return (*(v3 + 16))(v6, &v8, v4, v5);
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

double UIViewController.pageMarginInsets.getter()
{
  [v0 pageContainerSize];
  StandardGridSpec.basePageMargin(for:)();
  return 0.0;
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  [v0 pageMarginInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v0 traitCollection];
  v21[3] = &type metadata for StandardGridSpec;
  v21[4] = &protocol witness table for StandardGridSpec;
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_containerSize];
  *v16 = v2;
  *(v16 + 1) = v4;
  *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_traitCollection] = v13;
  sub_12670(v21, &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec]);
  v17 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_pageMarginInsets];
  *v17 = v6;
  *(v17 + 1) = v8;
  *(v17 + 2) = v10;
  *(v17 + 3) = v12;
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, "init");
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id UIViewController.transitionPageTraitEnvironment(newSize:)(double a1, double a2)
{
  [v2 pageMarginInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v2 traitCollection];
  v21[3] = &type metadata for StandardGridSpec;
  v21[4] = &protocol witness table for StandardGridSpec;
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_containerSize];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_traitCollection] = v13;
  sub_12670(v21, &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_gridSpec]);
  v17 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28SnapshotPageTraitEnvironment_pageMarginInsets];
  *v17 = v6;
  *(v17 + 1) = v8;
  *(v17 + 2) = v10;
  *(v17 + 3) = v12;
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, "init");
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

double UIViewController.pageColumnMargin(for:gridType:)()
{
  [v0 pageContainerSize];
  v1 = [v0 traitCollection];
  sub_2D40DC(v1);
  v3 = v2;

  return v3;
}

double sub_29AC24(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v3 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == &dword_0 + 1 || (v10 = [v4 traitCollection], v11 = sub_30C968(), v10, (v11)) && (v12 = objc_msgSend(v4, "traitCollection"), v13 = objc_msgSend(v12, "horizontalSizeClass"), v12, v13 == &dword_0 + 2))
  {
    [v4 pageMarginInsets];
    v15 = v14;
    v17 = v16;
    sub_29A0FC();
    if (a3 >= a2)
    {
      v21 = 335.0;
      if (a2 > 768.0 && a1)
      {
        return a2 - v15 - v17 + -335.0 - v18;
      }
    }

    else
    {
      if (a2 < 1366.0)
      {
        if (!a1)
        {
          return 335.0;
        }

        return a2 - v15 - v17 + -335.0 - v18;
      }

      if (!a1)
      {
        return 335.0;
      }

      v23 = a2 - v15 - v17;
      if (a1 == 1)
      {
        return v23 + -670.0 - (v18 + v18);
      }

      else
      {
        return (v23 - v18) * 0.5;
      }
    }
  }

  else
  {
    [v4 pageMarginInsets];
    return a2 - v19 - v20;
  }

  return v21;
}

void sub_29AE94()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21PaletteBackgroundView_tintView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

double sub_29B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_CFA40();
  v9 = sub_30BF98();
  v8(v9, a3, a4, a5);

  return result;
}

void sub_29B150(void *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    v3 = sub_304238();
    v4 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v3];
    v5 = [v3 length];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v4;
    *(v6 + 32) = 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_29B57C;
    *(v7 + 24) = v6;
    v26 = sub_29B574;
    v27 = v7;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_29B0B0;
    v25 = &block_descriptor_14_0;
    v8 = _Block_copy(&v22);
    v9 = a1;
    v10 = v4;

    [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0x100000, v8}];

    _Block_release(v8);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
LABEL_5:
      v11 = a2;
      return;
    }
  }

  else
  {
    v12 = sub_304238();
    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
    v14 = [v12 length];
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v13;
    *(v15 + 32) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_29B514;
    *(v16 + 24) = v15;
    v26 = sub_29B530;
    v27 = v16;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_29B0B0;
    v25 = &block_descriptor_63;
    v17 = _Block_copy(&v22);
    v18 = a1;
    v19 = v13;

    [v12 enumerateAttributesInRange:0 options:v14 usingBlock:{0x100000, v17}];

    _Block_release(v17);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
      return;
    }
  }

  v20 = sub_304298();
  sub_304248();
  v21 = objc_allocWithZone(v20);
  sub_3042B8();
}

uint64_t sub_29B4D4()
{

  return _swift_deallocObject(v0, 33, 7);
}

double block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_29B588(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for ExpandableTextView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_paragraph] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_recordedWidth] = 0;
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  sub_302AD8();
  v13 = v12;
  v14 = sub_302AC8();
  [v13 setBackgroundColor:v14];

  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView;
  [*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v13[v15];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v16[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler];
  v19 = *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler];
  v20 = *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler + 8];
  *v18 = sub_29CB1C;
  v18[1] = v17;
  v21 = v16;

  sub_1EBD0(v19, v20);

  v22 = qword_3FAFB8;
  v23 = *&v13[v15];
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 setTintColor:qword_40DB80];

  v24 = [v13 contentView];
  [v24 addSubview:*&v13[v15]];

  v25 = [v13 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [*&v13[v15] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  sub_30C888();
  isa = sub_30CA28(v51).super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_31D480;
  v31 = [v13 contentView];
  v32 = [v31 topAnchor];

  v33 = [*&v13[v15] topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v30 + 32) = v34;
  v35 = [v13 contentView];
  v36 = [v35 bottomAnchor];

  v37 = [*&v13[v15] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v30 + 40) = v38;
  v39 = [v13 contentView];

  v40 = [v39 leadingAnchor];
  v41 = [*&v13[v15] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v30 + 48) = v42;
  *(v30 + 56) = isa;
  v43 = isa;
  v44 = [v13 traitCollection];

  LOBYTE(v40) = sub_30C968();
  if (v40)
  {
    v45 = [*&v13[v15] widthAnchor];
    v46 = [v45 constraintLessThanOrEqualToConstant:580.0];

    sub_30C348();
    if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v30 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
  }

  v47 = objc_opt_self();
  sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
  v48 = sub_30C358().super.isa;

  [v47 activateConstraints:v48];

  return v13;
}

void sub_29BB2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_paragraph))
    {

      if (sub_30B548())
      {
        sub_30B558();
        v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler];
        if (v3)
        {
          v4 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler + 8];

          v3(1);

          sub_1EBD0(v3, v4);

          return;
        }
      }
    }
  }
}

void sub_29BC50(uint64_t a1, void *a2)
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  v8[2] = xmmword_42A690;
  v8[3] = *&qword_42A6A0;
  v9[0] = xmmword_42A6B0;
  *(v9 + 10) = *(&xmmword_42A6B0 + 10);
  v8[0] = xmmword_42A670;
  v8[1] = *&qword_42A680;
  v3 = [objc_opt_self() system];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v4];
  v6 = sub_2DAA3C(v8, v5);
  v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

  [v7 lineHeight];
  if ((sub_30C968() & 1) == 0)
  {
    [a2 horizontalSizeClass];
  }

  sub_307198();
}

void sub_29BE04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130, &unk_32E1D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_paragraph) = a1;

  v7 = sub_30B5A8();
  v8 = sub_30B548();
  v9 = sub_30B568();
  sub_30B578();
  sub_23B924(v7, v8 & 1, v9 & 1, 4, v6);

  sub_29C8FC(v6);
  sub_29BF0C();
}

void sub_29BF0C()
{
  v1 = v0;
  v2 = sub_306E68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306E88();
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_paragraph];
  if (v11)
  {
    v21 = v8;
    v22 = v7;

    v12 = sub_30B5A8();
    v13 = [v1 traitCollection];
    sub_29B150(v13, v12);
    v15 = v14;

    sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
    v16 = sub_30C8F8();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v15;
    v18[4] = v11;
    aBlock[4] = sub_29C9E8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_64;
    v19 = _Block_copy(aBlock);
    v20 = (v15 & 0x3FFFFFFFFFFFFFFFLL);

    sub_306E78();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_29CA0C(&qword_40D760, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
    sub_9442C();
    sub_30D488();
    sub_30C908();
    _Block_release(v19);

    (*(v3 + 8))(v5, v2);
    (*(v21 + 8))(v10, v22);
  }
}

uint64_t sub_29C3C8(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130, &unk_32E1D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView);

    LOBYTE(v7) = sub_30B548();
    v9 = sub_30B568();
    sub_30B578();
    sub_23B924(a2, v7 & 1, v9 & 1, 4, v5);

    return sub_29C8FC(v5);
  }

  return result;
}

double sub_29C614(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_objectGraph) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_objectGraph;
  swift_beginAccess();
  *(v3 + v4) = a1;

  return result;
}

uint64_t sub_29C6A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_29CA0C(&qword_40C5D0, v3, type metadata accessor for ParagraphCell, &unk_331FC0);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

double sub_29C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler);
  v5 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler);
  v6 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler + 8);
  *v4 = a2;
  v4[1] = a3;
  sub_1EBD0(v5, v6);

  return result;
}

uint64_t sub_29C8FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130, &unk_32E1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C964()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_29C99C()
{

  return _swift_deallocObject(v0, 40, 7);
}

double block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_29CA0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29CA54()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_expandableTextView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ExpandableTextView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_paragraph) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_cellReloadingHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_recordedWidth) = 0;
  sub_30D648();
  __break(1u);
}

void sub_29CB24(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  sub_30B9A8();
  sub_30B978();

  if (a3 & 1) != 0 && (sub_29E228(a1), v8 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager), v9 = sub_1A03EC(), v9 != 19) && (v10 = v9, v11 = sub_308428(), sub_BA54C(v10), (v11) && (v12 = *(v8 + 24), v13 = swift_getObjectType(), (v14 = (*(v12 + 24))(v13, v12)) != 0))
  {
    v15 = v14;
    v31 = [v14 popToRootViewControllerAnimated:1];
  }

  else
  {
    v16 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager);
    v17 = *(v16 + 24);
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 24))(ObjectType, v17);
    if (v19)
    {
      v20 = v19;
      v21 = [v19 topViewController];
      if (v21)
      {
        v22 = v21;
        type metadata accessor for LoadingPageViewController(0);
        if (swift_dynamicCastClass())
        {

          v22 = [v20 popViewControllerAnimated:0];
        }
      }

      else
      {
        v22 = v20;
      }
    }

    sub_1A054C(a1, a3 & 1);
    sub_308418();
    if (v23)
    {
      sub_303958();
      sub_303948();
      sub_303938();
    }

    v24 = *(v16 + 24);
    v25 = swift_getObjectType();

    if (a2)
    {
      v26 = *(v16 + 24);
      v27 = swift_getObjectType();
      v28 = (*(v26 + 24))(v27, v26);
      if (v28)
      {
        v29 = v28;
        v30 = [v28 popToRootViewControllerAnimated:1];
      }
    }

    sub_29EC40(v4);
  }
}

double sub_29CDE0@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_29F3D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_9FF04(v4, v5);
}

uint64_t sub_29CE80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_29F388;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_9FF04(v3, v4);
  return sub_1EBD0(v8, v9);
}

double sub_29CF68@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_29F354;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_9FF04(v4, v5);
}

uint64_t sub_29D008(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_29F314;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_9FF04(v3, v4);
  return sub_1EBD0(v8, v9);
}

uint64_t sub_29D0F0(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t ParentFlowController.interfaceMode.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void ParentFlowController.interfaceMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 56) = a1 & 1;
}

uint64_t (*ParentFlowController.interfaceMode.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_29D288;
}

void sub_29D288(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 56) = *(v3[3] + v3[4]);
  }

  free(v3);
}

uint64_t ParentFlowController.init(asPartOf:interfaceMode:)(uint64_t a1, char a2)
{
  v4 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider);
  *v5 = 0;
  v5[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C5D8, qword_332000);
  sub_30B8E8();
  type metadata accessor for FlowActionRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60, &qword_3174B0);
  v6 = swift_allocObject();
  v7 = objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning(0));
  v8 = v26;
  *(v6 + 16) = [v7 init];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_29D608();
  v9 = sub_30B908();

  type metadata accessor for TabManager();
  v10 = swift_allocObject();
  *(v10 + 16) = v26;
  *(v10 + 56) = a2 & 1;
  *(v10 + 40) = 0;
  *(v10 + 48) = v9;
  *(v10 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) = v10;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode) = a2 & 1;
  swift_retain_n();
  v11 = sub_2180E0(v8, v9);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  v13 = (v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_29F11C;
  v13[1] = v12;
  swift_retain_n();

  sub_1EBD0(v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  v17 = (v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_29F128;
  v17[1] = v16;
  sub_1EBD0(v18, v19);
  v20 = *(v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager);
  v22 = *v13;
  v21 = v13[1];

  sub_9FF04(v22, v21);

  v23 = *(v20 + 32);
  v24 = *(v20 + 40);
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;
  sub_1EBD0(v23, v24);

  return v11;
}

unint64_t sub_29D608()
{
  result = qword_3FBDA8;
  if (!qword_3FBDA8)
  {
    type metadata accessor for FlowActionRunner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBDA8);
  }

  return result;
}

char *sub_29D660(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30B328();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_308428())
  {
    type metadata accessor for FlowNavigationController();

    return FlowNavigationController.__allocating_init(asPartOf:)(v10);
  }

  else
  {
    v12 = sub_29F7D4(a1, 1, a3);
    if (v12)
    {
      v13 = v12;
      if ((sub_308458() & 1) == 0 && (sub_308428() & 1) == 0)
      {
        v14 = sub_30B358();
        v15 = *(v14 + 16);
        if (v15)
        {
          v35 = a1;
          v36 = a2;
          v37 = v13;
          v41 = _swiftEmptyArrayStorage;
          sub_17551C(0, v15, 0);
          v16 = v41;
          v17 = v7 + 16;
          v18 = *(v7 + 16);
          v19 = *(v7 + 80);
          v34[1] = v14;
          v20 = v14 + ((v19 + 32) & ~v19);
          v38 = *(v17 + 56);
          v39 = v18;
          v40 = v17;
          v21 = (v17 - 8);
          do
          {
            v39(v9, v20, v6);
            v22 = sub_30B2F8();
            (*v21)(v9, v6);
            v41 = v16;
            v24 = v16[2];
            v23 = v16[3];
            if (v24 >= v23 >> 1)
            {
              sub_17551C((v23 > 1), v24 + 1, 1);
              v16 = v41;
            }

            v16[2] = v24 + 1;
            v16[v24 + 4] = v22;
            v20 += v38;
            --v15;
          }

          while (v15);

          v13 = v37;
          a1 = v35;
        }

        else
        {

          v16 = _swiftEmptyArrayStorage;
        }

        v41 = a1;
        __chkstk_darwin(v26);
        v34[-2] = &v41;
        v27 = sub_22F770(sub_29FB40, &v34[-4], v16);

        if ((v27 & 1) == 0)
        {
          type metadata accessor for FlowNavigationController();

          v29 = FlowNavigationController.__allocating_init(asPartOf:)(v28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_31BF90;
          *(v30 + 32) = v13;
          sub_124C4(0, &qword_3FBE30, UIViewController_ptr);
          v31 = v29;
          v32 = v13;
          isa = sub_30C358().super.isa;

          [v31 setViewControllers:isa];

          return v31;
        }
      }

      return v13;
    }

    else
    {
      v25 = objc_allocWithZone(UIViewController);

      return [v25 init];
    }
  }
}

Swift::Void __swiftcall ParentFlowController.initializePageContextForMetrics()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 viewControllers];
  sub_124C4(0, &qword_3FBE30, UIViewController_ptr);
  v6 = sub_30C368();

  if (v6 >> 62)
  {
    if (sub_30D668())
    {
      goto LABEL_4;
    }

LABEL_25:

    return;
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_30D578();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v11 = v7;

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v8 = v11 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
  }

  else
  {
    swift_getObjectType();
    v9 = sub_30AAF8();

    if (v9 != 19)
    {
      sub_308418();
      if (v10)
      {
        sub_303958();
        sub_303948();
        sub_303938();
        sub_BA54C(v9);
      }

      else
      {

        sub_BA54C(v9);
      }
    }
  }
}

void ParentFlowController.change(tab:execute:popToRoot:userInitiated:suppressMetrics:objectGraph:)(uint64_t a1, void *a2, int a3, char a4, int a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v56 = a5;
  v60 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v53[-v12];
  v14 = sub_302558();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0 || (sub_29E228(a1), v17 = *(v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager), v18 = sub_1A03EC(), v18 == 19) || (v19 = v18, v20 = sub_308428(), sub_BA54C(v19), (v20 & 1) == 0) || (v21 = *(v17 + 24), v22 = swift_getObjectType(), (v23 = (*(v21 + 24))(v22, v21)) == 0))
  {
    v26 = *(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager);
    v27 = *(v26 + 24);
    ObjectType = swift_getObjectType();
    v29 = (*(v27 + 24))(ObjectType, v27);
    if (v29)
    {
      v30 = v29;
      v31 = [v29 topViewController];
      if (v31)
      {
        v32 = v31;
        type metadata accessor for LoadingPageViewController(0);
        if (swift_dynamicCastClass())
        {

          v32 = [v30 popViewControllerAnimated:0];
        }
      }

      else
      {
        v32 = v30;
      }
    }

    sub_1A054C(a1, a4 & 1);
    sub_308418();
    if (v33)
    {
      sub_303958();
      sub_303948();
      sub_303938();
    }

    v34 = *(v26 + 24);
    v35 = swift_getObjectType();
    v36 = (*(v34 + 24))(v35, v34);
    if (v36)
    {
      v37 = v36;
      if (v60)
      {
        v54 = a3;
        v38 = (*(&stru_68.flags + (swift_isaMask & *v36)))();
        v55 = v7;
        if (!v38)
        {
          type metadata accessor for FlowActionRunner();
          v39 = swift_allocObject();
          v40 = objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning(0));
          v41 = v37;
          *(v39 + 16) = [v40 init];
          swift_unknownObjectWeakInit();
          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          sub_29D608();
        }

        v42 = &enum case for ActionMetricsBehavior.notProcessed(_:);
        if ((v56 & 1) == 0)
        {
          v42 = &enum case for ActionMetricsBehavior.fromAction(_:);
        }

        (*(v58 + 104))(v16, *v42, v59);
        sub_3093A8();

        sub_30B9B8();
        v43 = sub_302268();
        (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
        memset(v61, 0, sizeof(v61));
        v44 = [v37 view];
        sub_309388();

        sub_EB68(v61, &unk_3FBB70, &unk_3174C0);
        sub_EB68(v13, &unk_4090C0, qword_31E3C0);
        v45 = v60;
        v46 = v60[2];
        if (v46)
        {
          swift_getObjectType();
          v47 = v45 + 4;
          do
          {
            sub_307C38();

            v47 += 5;
            --v46;
          }

          while (v46);
        }

        swift_unknownObjectRelease();

        (*(v58 + 8))(v16, v59);
        v7 = v55;
        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if ((a3 & 1) == 0)
    {
LABEL_33:
      sub_29EC40(v7);
      return;
    }

LABEL_31:
    v48 = *(v26 + 24);
    v49 = swift_getObjectType();
    v50 = (*(v48 + 24))(v49, v48);
    if (v50)
    {
      v51 = v50;
      v52 = [v50 popToRootViewControllerAnimated:1];
    }

    goto LABEL_33;
  }

  v24 = v23;
  v60 = [v23 popToRootViewControllerAnimated:1];

  v25 = v60;
}

uint64_t sub_29E228(uint64_t a1)
{
  v2 = sub_30B9D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC110, &unk_317DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_409160, qword_332090);
  v81 = *(v9 - 8);
  v82 = v9;
  __chkstk_darwin(v9);
  v78 = v58 - v10;
  v74 = sub_3023D8();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409048, &qword_32C640);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v58 - v12;
  v13 = sub_30BC28();
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = v58 - v17;
  __chkstk_darwin(v18);
  v67 = v58 - v19;
  __chkstk_darwin(v20);
  v72 = v58 - v21;
  __chkstk_darwin(v22);
  v75 = v58 - v23;
  __chkstk_darwin(v24);
  v79 = v58 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v26 - 8);
  v28 = v58 - v27;
  v77 = sub_30B7E8();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  result = sub_308408();
  if (v32)
  {
    v33 = v32;
    v58[1] = result;
    sub_303848();
    v64 = v5;
    v61 = v6;
    sub_3037F8();
    v62 = v3;
    v63 = v2;
    v34 = sub_301CB8();
    (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
    v59 = v7;
    sub_302718();
    v60 = v30;
    sub_30B788();
    v94 = v87;
    sub_EB68(&v94, &unk_408130, &unk_318C10);
    v93 = v88;
    sub_EB68(&v93, &qword_3FC878, &unk_318D40);
    v92 = v89;
    sub_EB68(&v92, &qword_408140, &unk_318C20);
    sub_1EBD0(v90, v91);

    sub_EB68(v28, &qword_3FB8E0, &qword_317E00);
    sub_30BC18();
    sub_302448();
    swift_allocObject();
    v86 = sub_302438();
    v58[0] = v33;
    v35 = v66;
    sub_30BBB8();
    v36 = v65;
    sub_30BB98();
    (*(v68 + 8))(v35, v69);

    v37 = v84;
    v38 = *(v83 + 8);
    v38(v15, v84);
    v39 = v70;
    sub_3023B8();
    v40 = v67;
    sub_30BB58();
    v41 = *(v73 + 8);
    v42 = v74;
    v41(v39, v74);
    v38(v36, v37);
    sub_308448();
    sub_3023A8();

    v43 = v72;
    sub_30BB88();
    v41(v39, v42);
    v38(v40, v37);
    sub_303958();
    sub_303948();
    v44 = sub_303928();

    v86 = v44;
    v45 = v78;
    sub_30BBA8();
    v46 = v75;
    sub_30BB98();
    (*(v81 + 8))(v45, v82);

    v38(v43, v37);
    sub_3087E8();
    v47 = sub_3087D8();
    v48 = sub_3087C8();

    v86 = v48;
    v49 = v85;
    sub_30BBF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC130, &unk_317DC0);
    v50 = v79;
    sub_30BB38();
    (*(v59 + 8))(v49, v61);

    v38(v46, v37);
    v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews18BaseFlowController_metricsPipeline;
    v52 = v71;
    swift_beginAccess();
    v53 = v62;
    v54 = v52 + v51;
    v55 = v64;
    v56 = v63;
    (*(v62 + 16))(v64, v54, v63);
    v57 = v60;
    sub_30B9C8();

    (*(v53 + 8))(v55, v56);
    v38(v50, v37);
    return (*(v76 + 8))(v57, v77);
  }

  return result;
}

void sub_29EC40(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (!v5)
    {
      __break(1u);
      return;
    }

    v12 = [v5 window];

    if (v12)
    {
      v6 = sub_1A03EC();
      if (v6 == 19)
      {
        v7 = v12;
LABEL_9:

        return;
      }

      v8 = v6;
      sub_124C4(0, &qword_40C768, NSUserActivity_ptr);
      v9 = sub_30C7C8();
      v10 = [v12 windowScene];
      if (v10)
      {
        v11 = v10;
        [v10 setUserActivity:v9];

        sub_BA54C(v8);
        v7 = v11;
        goto LABEL_9;
      }

      sub_BA54C(v8);
    }
  }
}

void ParentFlowController.dismiss(_:animate:)(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(ObjectType, v3);
  if (v5)
  {
    v11 = v5;
    v6 = [v5 viewControllers];
    sub_124C4(0, &qword_3FBE30, UIViewController_ptr);
    v7 = sub_30C368();

    v8 = sub_2416E8(a1, v7);
    v10 = v9;

    if ((v10 & 1) == 0 && !v8)
    {
      sub_29CB24(8, 0, 0);
    }
  }
}

double ParentFlowController.pop(animate:)(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(ObjectType, v3);
  if (v5)
  {
    v7 = (v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController);
    v8 = v5;
    swift_beginAccess();
    v9 = *v7;
    v10 = v7[1];
    swift_unknownObjectRetain();

    if (v9)
    {
      v11 = swift_getObjectType();
      (*(v10 + 56))(a1, v11, v10);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_29EFB4()
{

  sub_1EBD0(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator + 8));
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider);
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider + 8);

  return sub_1EBD0(v1, v2);
}

char *ParentFlowController.deinit()
{
  v0 = BaseFlowController.deinit();

  sub_1EBD0(*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator], *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator + 8]);
  sub_1EBD0(*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider], *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider + 8]);
  return v0;
}

uint64_t ParentFlowController.__deallocating_deinit()
{
  v0 = BaseFlowController.deinit();

  sub_1EBD0(*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator], *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerGenerator + 8]);
  sub_1EBD0(*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider], *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_viewControllerProvider + 8]);

  return swift_deallocClassInstance();
}

void sub_29F140(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_29F198(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_interfaceMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  *(*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20ParentFlowController_tabManager) + 56) = v2;
}

uint64_t type metadata accessor for ParentFlowController(uint64_t a1)
{
  result = qword_40C608;
  if (!qword_40C608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29F2DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29F314(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_29F354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29F388(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v7 = a1;
  v6 = a2 & 1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_29F3D4@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

char *sub_29F40C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_30BB28();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  __chkstk_darwin(v7 - 8);
  v9 = v29 - v8;
  v10 = sub_308778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_30B2F8();
  sub_1A0800(v14, v9);
  sub_1DB3C(v14);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_EB68(v9, &qword_3FBD60, &unk_317DD0);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = sub_217B24(v13);
  if (!v15)
  {
LABEL_7:
    (*(v11 + 8))(v13, v10);
    return v15;
  }

  v30 = v4;
  sub_30B308();
  v16 = sub_30B318();
  v29[1] = a3;
  v17 = sub_30B2F8();
  v18 = sub_308448();
  sub_1DB3C(v17);
  v19 = objc_allocWithZone(UITabBarItem);
  v20 = sub_30C098();

  v21 = [v19 initWithTitle:v20 image:v16 tag:v18];

  [v15 setTabBarItem:v21];
  result = [v15 tabBarItem];
  if (result)
  {
    v23 = result;
    v24 = sub_30B2F8();
    v25 = sub_3083F8();
    v27 = v26;
    sub_1DB3C(v24);
    v32[3] = &type metadata for String;
    v32[0] = v25;
    v32[1] = v27;
    sub_30BAF8();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_30C758();

    (*(v31 + 8))(v6, v30);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v28 = v15;
      sub_30B2F8();
      sub_30AB08();
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

char *sub_29F7D4(uint64_t a1, char a2, uint64_t a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_308778();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407330, &qword_329A30);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_30B328();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30B338();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_407330, &qword_329A30);
    sub_1A0800(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_EB68(v7, &qword_3FBD60, &unk_317DD0);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v19 = sub_217B24(v11);
      if (v19)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v20 = v19;
          sub_BA538(a1);
          sub_30AB08();
        }
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v19 = sub_29F40C(a2 & 1, v23, v18);
    (*(v16 + 8))(v18, v15);
  }

  return v19;
}

__n128 PerformanceTestCase.type.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t PerformanceTestCase.tab.getter()
{
  v1 = *(v0 + 64);
  sub_BA538(v1);
  return v1;
}

uint64_t PerformanceTestCase.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for PerformanceTestCase(0) + 40);
  v5 = sub_30A4E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t PerformanceTestCase.searchTerm.getter(double a1)
{
  v2 = *(v1 + *(type metadata accessor for PerformanceTestCase(0) + 44));

  return v2;
}

uint64_t PerformanceTestCase.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C770, &qword_3320D8);
  __chkstk_darwin(v8 - 8);
  v124 = &v113 - v9;
  v10 = sub_30A4E8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v116 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  __chkstk_darwin(v13 - 8);
  v120 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C778, &unk_3320E0);
  __chkstk_darwin(v15 - 8);
  v119 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v113 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v19 - 8);
  v121 = &v113 - v20;
  v117 = sub_301CB8();
  v122 = *(v117 - 8);
  __chkstk_darwin(v117);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v113 - v24;
  v26 = type metadata accessor for PerformanceTestCase(0);
  v126 = *(v26 - 1);
  __chkstk_darwin(v26);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a1;
  *v28 = a1;
  *(v28 + 1) = a2;
  if (*(a3 + 16))
  {
    v114 = v11;
    v115 = v10;
    v127[0] = 6447476;
    v127[1] = 0xE300000000000000;

    sub_30D508();
    if (*(a3 + 16) && (v125 = a4, v29 = sub_191D84(v128), a4 = v125, (v30 & 1) != 0))
    {
      sub_1DA1C(*(a3 + 56) + 32 * v29, &v129);
      sub_196EC8(v128);
      if (swift_dynamicCast())
      {
        *(v28 + 8) = sub_3083E8();
        strcpy(v127, "popToRoot");
        WORD1(v127[1]) = 0;
        HIDWORD(v127[1]) = -385875968;
        sub_30D508();
        if (*(a3 + 16) && (v31 = sub_191D84(v128), (v32 & 1) != 0))
        {
          sub_1DA1C(*(a3 + 56) + 32 * v31, &v129);
          sub_196EC8(v128);
          v33 = swift_dynamicCast();
          v35 = v121;
          v34 = v122;
          if (v33)
          {
            if (v127[0] == 5457241 && v127[1] == 0xE300000000000000)
            {

              v36 = 1;
            }

            else
            {
              v36 = sub_30D728();
            }

LABEL_17:
            v28[72] = v36 & 1;
            strcpy(v127, "pushToUrl");
            WORD1(v127[1]) = 0;
            HIDWORD(v127[1]) = -385875968;
            sub_30D508();
            if (*(a3 + 16) && (v43 = sub_191D84(v128), (v44 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v43, &v129);
              sub_196EC8(v128);
              if (swift_dynamicCast())
              {
                sub_301CA8();

                v45 = v117;
                if ((*(v34 + 48))(v35, 1, v117) != 1)
                {
                  (*(v34 + 32))(v25, v35, v45);
                  v42 = v26;
                  v108 = v26[9];
                  (*(v34 + 16))(v22, v25, v45);
                  FlowDestination.init(testUrl:)(v22, &v28[v108]);
                  (*(v34 + 8))(v25, v45);
                  v109 = sub_308778();
                  (*(*(v109 - 8) + 56))(&v28[v108], 0, 1, v109);
                  goto LABEL_45;
                }

                sub_EB68(v35, &qword_3FB8E0, &qword_317E00);
              }
            }

            else
            {
              sub_196EC8(v128);
            }

            v129 = 0x65676150776F6C66;
            v130 = 0xE800000000000000;
            sub_30D508();
            v42 = v26;
            if (*(a3 + 16) && (v46 = sub_191D84(v128), (v47 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v46, &v129);
              sub_196EC8(v128);
              v48 = swift_dynamicCast();
              if (v48)
              {
                v49 = v127[0];
              }

              else
              {
                v49 = 0;
              }

              if (v48)
              {
                v50 = v127[1];
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              sub_196EC8(v128);
              v49 = 0;
              v50 = 0;
            }

            v51 = v120;
            v129 = 0xD000000000000010;
            v130 = 0x8000000000343C60;
            sub_30D508();
            if (*(a3 + 16) && (v52 = sub_191D84(v128), (v53 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v52, &v129);
              sub_196EC8(v128);
              v54 = swift_dynamicCast();
              if (v54)
              {
                v55 = v127[0];
              }

              else
              {
                v55 = 0;
              }

              if (v54)
              {
                v56 = v127[1];
              }

              else
              {
                v56 = 0;
              }
            }

            else
            {
              sub_196EC8(v128);
              v55 = 0;
              v56 = 0;
            }

            v57 = v118;
            sub_2A0F94(v49, v50, v55, v56, v118);
            v58 = v119;
            sub_EB00(v57, v119, &qword_40C778, &unk_3320E0);
            v59 = sub_309E78();
            v60 = *(v59 - 8);
            if ((*(v60 + 48))(v58, 1, v59) == 1)
            {
              sub_EB68(v57, &qword_40C778, &unk_3320E0);
              sub_EB68(v58, &qword_40C778, &unk_3320E0);
              v61 = sub_308778();
              (*(*(v61 - 8) + 56))(v51, 1, 1, v61);
            }

            else
            {
              sub_309E68();
              sub_EB68(v57, &qword_40C778, &unk_3320E0);
              (*(v60 + 8))(v58, v59);
            }

            sub_2A2294(v51, &v28[v42[9]]);
LABEL_45:
            v62 = v124;
            v129 = 0xD000000000000010;
            v130 = 0x8000000000343C80;
            sub_30D508();
            if (*(a3 + 16) && (v63 = sub_191D84(v128), (v64 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v63, &v129);
              sub_196EC8(v128);
              v65 = swift_dynamicCast();
              v66 = v65 == 0;
              if (v65)
              {
                v67 = v127[0];
              }

              else
              {
                v67 = 0;
              }

              if (v66)
              {
                v68 = 0;
              }

              else
              {
                v68 = v127[1];
              }
            }

            else
            {
              sub_196EC8(v128);
              v67 = 0;
              v68 = 0;
            }

            v124 = sub_2A2304(v67, v68);
            v129 = 0x6874676E656CLL;
            v130 = 0xE600000000000000;
            sub_30D508();
            if (*(a3 + 16) && (v69 = sub_191D84(v128), (v70 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v69, &v129);
              sub_196EC8(v128);
              v71 = swift_dynamicCast();
              v72 = v71 == 0;
              if (v71)
              {
                v73 = v127[0];
              }

              else
              {
                v73 = 0;
              }

              if (v72)
              {
                v74 = 0;
              }

              else
              {
                v74 = v127[1];
              }
            }

            else
            {
              sub_196EC8(v128);
              v73 = 0;
              v74 = 0;
            }

            v75 = sub_2A2304(v73, v74);
            v129 = 0x65446C6C6F726373;
            v130 = 0xEB0000000061746CLL;
            sub_30D508();
            if (*(a3 + 16) && (v76 = sub_191D84(v128), (v77 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v76, &v129);
              sub_196EC8(v128);
              v78 = swift_dynamicCast();
              v79 = v78 == 0;
              if (v78)
              {
                v80 = v127[0];
              }

              else
              {
                v80 = 0;
              }

              if (v79)
              {
                v81 = 0;
              }

              else
              {
                v81 = v127[1];
              }
            }

            else
            {
              sub_196EC8(v128);
              v80 = 0;
              v81 = 0;
            }

            v82 = sub_2A2304(v80, v81);
            strcpy(v127, "useCornobble");
            BYTE5(v127[1]) = 0;
            HIWORD(v127[1]) = -5120;
            sub_30D508();
            if (*(a3 + 16) && (v83 = sub_191D84(v128), (v84 & 1) != 0))
            {
              sub_1DA1C(*(a3 + 56) + 32 * v83, &v129);
              sub_196EC8(v128);
              if (swift_dynamicCast())
              {
                if (v127[0] == 5457241 && v127[1] == 0xE300000000000000)
                {

                  v85 = 1;
                }

                else
                {
                  v85 = sub_30D728();
                }

                v86 = v85 & 1;
LABEL_80:
                v28[57] = v86;
                v131._countAndFlagsBits = 0x6979616C50776F4ELL;
                v131._object = 0xEA0000000000676ELL;
                v87 = sub_30C2B8(v131);

                if (v87)
                {
                  *(v28 + 6) = 0;
                  *(v28 + 1) = 0u;
                  *(v28 + 2) = 0u;
                  v28[56] = 0x80;
                  goto LABEL_96;
                }

                v127[0] = 0x657A69736572;
                v127[1] = 0xE600000000000000;
                sub_30D508();
                if (*(a3 + 16) && (v88 = sub_191D84(v128), (v89 & 1) != 0))
                {
                  sub_1DA1C(*(a3 + 56) + 32 * v88, &v129);
                  sub_196EC8(v128);
                  if (swift_dynamicCast())
                  {
                    if (v127[0] == 5457241 && v127[1] == 0xE300000000000000)
                    {

LABEL_126:
                      *(v28 + 6) = 0;
                      *(v28 + 1) = 0u;
                      *(v28 + 2) = 0u;
                      v28[56] = 64;
                      goto LABEL_96;
                    }

                    v112 = sub_30D728();

                    if (v112)
                    {
                      goto LABEL_126;
                    }
                  }
                }

                else
                {
                  sub_196EC8(v128);
                }

                v90 = v124;
                v91 = v82;
                if ((v124 & 0x100000000) != 0)
                {
                  v90 = 0;
                }

                v92 = v75 << 32;
                if ((v75 & 0x100000000) != 0)
                {
                  v92 = 0;
                }

                v93 = v92 | v90;
                if ((v82 & 0x100000000) != 0)
                {
                  v91 = 0;
                }

                *(v28 + 2) = v93;
                *(v28 + 3) = v91;
                *(v28 + 5) = 0;
                *(v28 + 6) = 0;
                *(v28 + 4) = 0;
                v28[56] = 0;
LABEL_96:
                strcpy(v127, "presentation");
                BYTE5(v127[1]) = 0;
                HIWORD(v127[1]) = -5120;
                sub_30D508();
                v94 = v115;
                v95 = v114;
                if (*(a3 + 16) && (v96 = sub_191D84(v128), (v97 & 1) != 0))
                {
                  sub_1DA1C(*(a3 + 56) + 32 * v96, &v129);
                  sub_196EC8(v128);
                  if (swift_dynamicCast())
                  {
                    sub_30A4C8();
                    if ((*(v95 + 48))(v62, 1, v94) != 1)
                    {
                      v110 = *(v95 + 32);
                      v111 = v116;
                      v110(v116, v62, v94);
                      v110(&v28[v42[10]], v111, v94);
                      goto LABEL_103;
                    }

                    sub_EB68(v62, &qword_40C770, &qword_3320D8);
                  }
                }

                else
                {
                  sub_196EC8(v128);
                }

                (*(v95 + 104))(&v28[v42[10]], enum case for FlowPresentationContext.infer(_:), v94);
LABEL_103:
                v129 = 0x6554686372616573;
                v130 = 0xEA00000000006D72;
                sub_30D508();
                if (*(a3 + 16) && (v98 = sub_191D84(v128), (v99 & 1) != 0))
                {
                  sub_1DA1C(*(a3 + 56) + 32 * v98, &v129);
                  sub_196EC8(v128);
                  v100 = swift_dynamicCast();
                  v101 = v127[0];
                  v102 = v127[1];
                  if (!v100)
                  {
                    v101 = 0;
                    v102 = 0;
                  }
                }

                else
                {
                  sub_196EC8(v128);
                  v101 = 0;
                  v102 = 0;
                }

                v103 = &v28[v42[11]];
                *v103 = v101;
                *(v103 + 1) = v102;
                strcpy(v127, "editing");
                v127[1] = 0xE700000000000000;
                sub_30D508();
                if (*(a3 + 16) && (v104 = sub_191D84(v128), (v105 & 1) != 0))
                {
                  sub_1DA1C(*(a3 + 56) + 32 * v104, &v129);
                  sub_196EC8(v128);

                  if (swift_dynamicCast())
                  {
                    if (v127[0] == 5457241 && v127[1] == 0xE300000000000000)
                    {

                      v106 = 1;
                    }

                    else
                    {
                      v106 = sub_30D728();
                    }

                    goto LABEL_116;
                  }
                }

                else
                {

                  sub_196EC8(v128);
                }

                v106 = 0;
LABEL_116:
                v28[v42[12]] = v106 & 1;
                goto LABEL_117;
              }
            }

            else
            {
              sub_196EC8(v128);
            }

            v86 = 2;
            goto LABEL_80;
          }
        }

        else
        {
          sub_196EC8(v128);
          v35 = v121;
          v34 = v122;
        }

        v36 = 0;
        goto LABEL_17;
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_196EC8(v128);
    }

    return (*(v126 + 56))(a4, 1, 1, v26);
  }

  v125 = a4;

  *(v28 + 8) = 15;
  v38 = v26[9];
  v39 = sub_308778();
  (*(*(v39 - 8) + 56))(&v28[v38], 1, 1, v39);
  v40 = &v28[v26[11]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v28[v26[12]] = 0;
  (*(v11 + 104))(&v28[v26[10]], enum case for FlowPresentationContext.infer(_:), v10);
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 5) = 0;
  *(v28 + 6) = 0;
  *(v28 + 4) = 1;
  *(v28 + 28) = 577;
  v28[72] = 0;
  v42 = v26;
LABEL_117:
  v107 = v125;
  sub_28466C(v28, v125, v41);
  (*(v126 + 56))(v107, 0, 1, v42);
  return sub_2A25E0(v28);
}

uint64_t sub_2A0F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v58 = a5;
  v52 = a1;
  v8 = sub_307728();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v10 - 8);
  v48 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C778, &unk_3320E0);
  __chkstk_darwin(v12 - 8);
  v53 = &v46 - v13;
  v56 = sub_30B778();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C850, qword_3321B0);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  v30 = sub_30B688();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v55 = a2;
    sub_30B678();
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {

      v34 = &qword_40C850;
      v35 = qword_3321B0;
    }

    else
    {
      (*(v31 + 32))(v33, v29, v30);
      sub_30B768();
      sub_30B748();
      v38 = v54 + 8;
      v39 = *(v54 + 8);
      v46 = v39;
      v39(v17, v56);
      sub_30B758();
      v40 = v56;
      v57 = v38;
      v39(v20, v56);
      v41 = sub_301CB8();
      (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
      (*(v31 + 16))(v26, v33, v30);
      (*(v31 + 56))(v26, 0, 1, v30);
      (*(v54 + 16))(v47, v23, v40);
      (*(v50 + 104))(v49, enum case for FlowOrigin.inapp(_:), v51);
      v29 = v53;
      sub_309E58();
      v46(v23, v56);
      (*(v31 + 8))(v33, v30);
      v42 = sub_309E78();
      v43 = *(v42 - 8);
      v44 = *(v43 + 56);
      v44(v29, 0, 1, v42);
      if (!(*(v43 + 48))(v29, 1, v42))
      {
        v45 = v58;
        (*(v43 + 32))(v58, v29, v42);
        return (v44)(v45, 0, 1, v42);
      }

      v34 = &qword_40C778;
      v35 = &unk_3320E0;
    }

    sub_EB68(v29, v34, v35);
  }

  else
  {
  }

  v36 = sub_309E78();
  return (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
}

double sub_2A1630@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 56) < 0)
  {
    v7 = &unk_40C848;
    v5 = UITabBarController_ptr;
    v6 = a1;
LABEL_5:
    sub_124C4(0, v7, v5);
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C840, &unk_3321A0);
    if (swift_dynamicCast())
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a2)
  {
    v5 = UIViewController_ptr;
    v6 = a2;
    v7 = &qword_3FBE30;
    goto LABEL_5;
  }

LABEL_6:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void *sub_2A16F4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BC8, &qword_328F68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2A1768(uint64_t a1, unint64_t a2)
{
  v2 = sub_30C2F8();
  v6 = sub_2A17E8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2A17E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_30D3B8();
    if (!v9 || (v10 = v9, v11 = sub_2A16F4(v9, 0), v12 = sub_2A1940(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_30C1E8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_30C1E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_30D598();
LABEL_4:

  return sub_30C1E8();
}

unint64_t sub_2A1940(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2A1B60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_30C298();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_30D598();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2A1B60(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_30C268();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2A1B60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_30C2A8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_30C278();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_2A1BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_30C2E8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2A1768(v4, v5);
    v41 = v40;

    v5 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_30D598();
      v8 = v72;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v7)
          {
            v26 = 0;
            v27 = v7 + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v21 = __OFADD__(v30, v31);
              v26 = v30 + v31;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v27;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v7)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *v7;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v21 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v7;
            --v8;
          }

          while (v8);
          v16 = 0;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v17 + v18;
            v21 = __OFSUB__(v19, v20);
            v14 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v16 = 0;
LABEL_127:

        LOBYTE(v73) = v16;
        return;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v5) & 0xF;
  v73 = v6;
  v74 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v73;
        v16 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_127;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v63 * a3;
          if (v70 != v70)
          {
            goto LABEL_126;
          }

          v71 = v68 + v69;
          v21 = __OFADD__(v70, v71);
          v63 = v70 + v71;
          if (v21)
          {
            goto LABEL_126;
          }

          v67 = (v67 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v73 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v21 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v73 + 1;
      v16 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v54 * a3;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v21 = __OFADD__(v61, v62);
        v54 = v61 + v62;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v58;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
}

BOOL _s23ShelfKitCollectionViews19PerformanceTestCaseV0F4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 40);
  if (v4 >> 6)
  {
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = *(a2 + 32);
    if (v4 >> 6 != 1)
    {
      v12 = *&v6 | *&v5 | v9 | *&v8 | *&v10;
      v13 = (v7 & 0xC0) == 0x80 && v12 == 0;
      return v13 && v7 == 128;
    }

    if ((v7 & 0xC0) != 0x40)
    {
      return 0;
    }

    if (*(a1 + 16))
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v9)
      {
        return 0;
      }

      if (v2 != v5 || v3 != v6)
      {
        return 0;
      }
    }

    if (v4)
    {
      return (v7 & 1) != 0;
    }

    return (v7 & 1) == 0 && *(a1 + 24) == v8 && *(a1 + 32) == v10;
  }

  else
  {
    if (v7 >= 0x40)
    {
      return 0;
    }

    return *&v2 == *&v5 && LODWORD(v3) == LODWORD(v6);
  }
}

uint64_t type metadata accessor for PerformanceTestCase(uint64_t a1)
{
  result = qword_40C7D8;
  if (!qword_40C7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2A2294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2A2304(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_64;
  }

  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_64;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_2A1BDC(result, a2, 10);
    v6 = v26;

    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_30D598();
      v3 = v27;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_62;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_62;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_62;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_62;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_62;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
LABEL_63:
      v29 = v3;
      v24 = v3;

      if (v24)
      {
LABEL_64:
        LODWORD(v6) = 0;
        v25 = 1;
LABEL_68:
        LOBYTE(v28[0]) = v25;
        return v6 | (v25 << 32);
      }

LABEL_67:
      v25 = 0;
      goto LABEL_68;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_62;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_62;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_62;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v3) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v28;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v28 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v28 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2A25E0(uint64_t a1)
{
  v2 = type metadata accessor for PerformanceTestCase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2A2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_30A4E8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A2794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60, &unk_317DD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_30A4E8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A28C4(uint64_t a1)
{
  sub_DE4D4(319, &qword_40C7E8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_2A29C4(319);
    if (v2 <= 0x3F)
    {
      sub_30A4E8();
      if (v3 <= 0x3F)
      {
        sub_DE4D4(319, &qword_3FD228, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2A29C4(uint64_t a1)
{
  if (!qword_40C7F0)
  {
    sub_308778();
    v1 = sub_30D3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_40C7F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PerformanceTestCase.TestType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PerformanceTestCase.TestType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A2AC8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2A2AF8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1 | (a2 << 6);
    *(result + 16) &= 1uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

void sub_2A2B74(uint64_t a1)
{
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A3BC0(a1, v4, &type metadata accessor for EpisodePlayState);
  sub_29A1C(v4);
}

uint64_t sub_2A2C20(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A3BC0(a1, v5, &type metadata accessor for EpisodePlayState);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_episodePlayState;
  swift_beginAccess();
  sub_2B3F0(v5, v1 + v6);
  swift_endAccess();
  sub_2F224();
  return sub_2A3C28(v5, &type metadata accessor for EpisodePlayState);
}

double sub_2A2D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_303748();
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
    swift_beginAccess();
    sub_2A3BC0(v2 + v9, v6, &type metadata accessor for EpisodePlayState);
    (*(v7 + 8))(v6, ObjectType, v7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2A3C28(v6, &type metadata accessor for EpisodePlayState);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2A2E68(char *a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
  swift_beginAccess();
  sub_2B3F0(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    sub_2A3BC0(v1 + v6, v5, &type metadata accessor for EpisodePlayState);
    (*(v7 + 16))(v5, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_2A3C28(a1, &type metadata accessor for EpisodePlayState);
    a1 = v5;
  }

  return sub_2A3C28(a1, &type metadata accessor for EpisodePlayState);
}

double sub_2A2FB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3039A8();
    sub_2A2E68(v4);
  }

  return result;
}

uint64_t sub_2A306C()
{

  sub_2B83C(v0 + 32);
  sub_2A3C28(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState, &type metadata accessor for EpisodePlayState);

  return swift_deallocClassInstance();
}

uint64_t _s23ShelfKitCollectionViews9PlayStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_301DC8();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0, qword_318580);
  __chkstk_darwin(v6 - 8);
  v38 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CA10, &qword_3322E0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PlayState(0);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v37 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CA18, &qword_3322E8);
  __chkstk_darwin(v17 - 8);
  v19 = &v37 - v18;
  v21 = (&v37 + *(v20 + 56) - v18);
  sub_2A3BC0(a1, &v37 - v18, type metadata accessor for PlayState);
  sub_2A3BC0(a2, v21, type metadata accessor for PlayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    sub_2A3C28(v19, type metadata accessor for PlayState);
    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2A3BC0(v19, v16, type metadata accessor for PlayState);
    v23 = v16[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v16 == *v21)
      {
        v24 = v23 == v21[1];
        sub_2A3C28(v19, type metadata accessor for PlayState);
        return v24;
      }

      goto LABEL_21;
    }

LABEL_16:
    sub_EB68(v19, &qword_40CA18, &qword_3322E8);
    return 0;
  }

  sub_2A3BC0(v19, v13, type metadata accessor for PlayState);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDE08, &unk_31AD10) + 48);
  v27 = v13[v26];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_EB68(v13, &unk_40BAB0, qword_318580);
    goto LABEL_16;
  }

  v28 = *(v21 + v26);
  v29 = *(v8 + 48);
  sub_43D24(v13, v10);
  sub_43D24(v21, &v10[v29]);
  v31 = v39;
  v30 = v40;
  v32 = *(v39 + 48);
  if (v32(v10, 1, v40) != 1)
  {
    v33 = v38;
    sub_43BD8(v10, v38);
    if (v32(&v10[v29], 1, v30) != 1)
    {
      v34 = v37;
      (*(v31 + 32))(v37, &v10[v29], v30);
      sub_2A3C88();
      v35 = sub_30C018();
      v36 = *(v31 + 8);
      v36(v34, v30);
      v36(v33, v30);
      sub_EB68(v10, &unk_40BAB0, qword_318580);
      if (v35)
      {
        goto LABEL_23;
      }

LABEL_21:
      sub_2A3C28(v19, type metadata accessor for PlayState);
      return 0;
    }

    (*(v31 + 8))(v33, v30);
LABEL_20:
    sub_EB68(v10, &qword_40CA10, &qword_3322E0);
    goto LABEL_21;
  }

  if (v32(&v10[v29], 1, v30) != 1)
  {
    goto LABEL_20;
  }

  sub_EB68(v10, &unk_40BAB0, qword_318580);
LABEL_23:
  sub_2A3C28(v19, type metadata accessor for PlayState);
  return v27 ^ v28 ^ 1u;
}

void sub_2A36A4(uint64_t a1)
{
  sub_2A3718();
  if (v1 <= 0x3F)
  {
    sub_2A3778(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2A3718()
{
  if (!qword_40C8D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_40C8D8);
    }
  }
}

void sub_2A3778(uint64_t a1)
{
  if (!qword_40C8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_40BAB0, qword_318580);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_40C8E0);
    }
  }
}

uint64_t sub_2A382C(uint64_t a1)
{
  result = sub_303748();
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

void *sub_2A38D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_303748();
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = a3;

  v9 = sub_303B18();

  v4[3] = v9;

  sub_3039A8();

  sub_EF98C(v8, v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState);
  swift_allocObject();
  swift_weakInit();

  sub_303988();

  return v4;
}

uint64_t sub_2A3A30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_2A3A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_303748();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = a2;

  v3[3] = sub_303B08();

  sub_3039A8();

  sub_EF98C(v7, v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState);
  swift_allocObject();
  swift_weakInit();

  sub_303988();

  return v3;
}

uint64_t sub_2A3BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2A3C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2A3C88()
{
  result = qword_3FD768;
  if (!qword_3FD768)
  {
    sub_301DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD768);
  }

  return result;
}

void PlayButton.__allocating_init(theme:buttonSize:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v5 = objc_allocWithZone(v2);
  sub_2A76A0(&v6, v3, 0);
}

uint64_t PlayButton._updateStateForTesting(mediaType:duration:playState:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_309778();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_309858();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_309768();
  sub_309838();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 16))(v10, v13, v7);
  sub_2A73C0(v10);
  return (*(v8 + 8))(v13, v7);
}

id PlayButton.intrinsicContentSize.getter()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "intrinsicContentSize");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_label];
  [v1 intrinsicContentSize];
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_metrics + 16];
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v5 = [v0 traitCollection];
  [v4 scaledValueForValue:v5 compatibleWithTraitCollection:v3];

  v6 = v2[4];
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v8 = [v0 traitCollection];
  [v7 scaledValueForValue:v8 compatibleWithTraitCollection:v6];

  result = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelLeadingConstraint];
  if (result)
  {
    [result constant];
    [v1 intrinsicContentSize];
    result = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_labelTrailingConstraint];
    if (result)
    {
      return [result constant];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PlayButton.__allocating_init(asPartOf:data:theme:buttonSize:)(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58, &qword_3223C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_309778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v25 = *a3;
  v17 = *(a3 + 8);
  v28 = a2;
  sub_EB00(a2, v9, &qword_3FEA58, &qword_3223C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_EB68(v9, &qword_3FEA58, &qword_3223C0);
    v18 = 0;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    sub_309878();
    swift_allocObject();

    v18 = sub_309788();
    (*(v11 + 8))(v16, v10);
  }

  v29 = v25;
  v30 = v17;
  v19 = objc_allocWithZone(v26);
  sub_2A76A0(&v29, v27, v18);
  v21 = v20;
  sub_EB68(v28, &qword_3FEA58, &qword_3223C0);
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *(v21 + v22) = a1;

  return v21;
}

uint64_t PlayButton.accessibilityLabel.getter()
{
  v1 = sub_309858();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_3097B8();
  (*(v2 + 8))(v4, v1);
  return v6;
}

void sub_2A450C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_30B6E8();
  __chkstk_darwin(v2 - 8);
  v51 = sub_30BF58();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_308668();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3023D8();
  v55 = *(v56 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v56);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_301DF8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter])
  {
    v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_presenter;
    v49 = v5;

    sub_3096E8();

    sub_12658(&v60, v63);
    v17 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
    [v17 impactOccurred];

    v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
    swift_beginAccess();
    v19 = *&v1[v18];
    if (!v19)
    {
      sub_30BF18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490, &unk_317CF0);
      sub_30B708();
      *(swift_allocObject() + 16) = xmmword_315430;
      sub_30B6D8();
      v64._object = 0x8000000000343FC0;
      v64._countAndFlagsBits = 0xD000000000000012;
      sub_30B6C8(v64);
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_2AD3FC;
      *(v25 + 24) = v24;
      *(&v61 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CB98, &qword_332668);
      *&v60 = sub_2AD404;
      *(&v60 + 1) = v25;
      v26 = v1;
      sub_30B6B8();
      sub_EB68(&v60, &unk_3FBB70, &unk_3174C0);
      v65._countAndFlagsBits = 0xD000000000000019;
      v65._object = 0x8000000000343FE0;
      sub_30B6C8(v65);
      sub_30B6F8();
      v27 = v51;
      sub_30BDC8();

      (*(v50 + 8))(v4, v27);
      v28 = v63;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v28);
      return;
    }

    sub_12670(v63, v59);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40CBA0, &qword_332670);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1Tm(&v60, *(&v61 + 1));
      v20 = sub_30A1D8();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v60);
      if ((v22 & 1) == 0)
      {
        v51 = sub_303918();
        v50 = v23;
        v47 = v20;
LABEL_9:
        sub_301DE8();
        v29 = sub_301DD8();
        v31 = v30;
        (*(v14 + 8))(v16, v13);
        sub_3093A8();

        sub_30B9B8();
        v32 = sub_302268();
        (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
        *(&v61 + 1) = ObjectType;
        *&v60 = v1;
        v46 = v1;
        sub_309388();

        sub_EB68(v12, &unk_4090C0, qword_31E3C0);
        sub_EB68(&v60, &unk_3FBB70, &unk_3174C0);

        v33 = v54;
        ObjectType = v29;
        sub_302338();
        v51 = v31;

        v34 = v55;
        v35 = v52;
        v36 = v56;
        (*(v55 + 16))(v52, v33, v56);
        v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
        v38 = swift_allocObject();
        (*(v34 + 32))(v38 + v37, v35, v36);
        sub_30B948();

        (*(v34 + 8))(v33, v36);
        sub_12670(v63, &v60);

        v39 = v57;
        sub_308678();
        if (*&v1[v48])
        {

          v40.super.super.super.isa = v46;
          sub_3096F8(v40);
        }

        sub_308658();
        v41 = swift_allocObject();
        v42 = ObjectType;
        v41[2] = v19;
        v41[3] = v42;
        v41[4] = v51;
        v43 = sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);

        v44 = sub_30C8F8();
        *(&v61 + 1) = v43;
        v62 = &protocol witness table for OS_dispatch_queue;
        *&v60 = v44;
        sub_30BED8();

        (*(v58 + 8))(v39, v49);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v28 = &v60;
        goto LABEL_12;
      }
    }

    else
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      sub_EB68(&v60, &qword_40CBA8, &qword_332678);
    }

    v47 = sub_303D58();
    v51 = 0;
    v50 = 0;
    goto LABEL_9;
  }
}