uint64_t sub_100B8902C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v18 - v5;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v0 + 16);
  if (v10)
  {
    sub_100B8D7C0(*v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v11 = v10 - 1;
    if (v11)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v9);
      v14._countAndFlagsBits = 2106912;
      v14._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
      v18[1] = v11;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v15._countAndFlagsBits = 0x7328726568744F20;
      v15._object = 0xE900000000000029;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v2 + 16))(v4, v6, v1);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v16 = qword_10121B340;
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      countAndFlagsBits = v9->_countAndFlagsBits;
    }

    sub_100B8DCA8(v9, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011B3E00, &qword_100F04978) - 8;
  __chkstk_darwin();
  v6 = &v23 - v5;
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __chkstk_darwin();
  v11 = &v23 - v10;
  sub_100B86ADC((&v23 - v10));
  (*(v2 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v9, 0, 1, v1);
  v12 = *(v4 + 56);
  sub_1000089F8(v11, v6, &qword_1011B0C18, &qword_100F04980);
  sub_1000089F8(v9, &v6[v12], &qword_1011B0C18, &qword_100F04980);
  v13 = *(v2 + 48);
  if (v13(v6, 1, v1) == 1)
  {
    sub_1000095E8(v9, &qword_1011B0C18, &qword_100F04980);
    sub_1000095E8(v11, &qword_1011B0C18, &qword_100F04980);
    if (v13(&v6[v12], 1, v1) == 1)
    {
      sub_1000095E8(v6, &qword_1011B0C18, &qword_100F04980);
LABEL_9:
      v14 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v6, v25, &qword_1011B0C18, &qword_100F04980);
  if (v13(&v6[v12], 1, v1) == 1)
  {
    sub_1000095E8(v9, &qword_1011B0C18, &qword_100F04980);
    sub_1000095E8(v11, &qword_1011B0C18, &qword_100F04980);
    (*(v2 + 8))(v25, v1);
LABEL_6:
    sub_1000095E8(v6, &unk_1011B3E00, &qword_100F04978);
    goto LABEL_7;
  }

  v15 = &v6[v12];
  v16 = v24;
  (*(v2 + 32))(v24, v15, v1);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = v25;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v2 + 8);
  v19(v16, v1);
  sub_1000095E8(v9, &qword_1011B0C18, &qword_100F04980);
  sub_1000095E8(v11, &qword_1011B0C18, &qword_100F04980);
  v19(v17, v1);
  sub_1000095E8(v6, &qword_1011B0C18, &qword_100F04980);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v20 = *v14;
  v21 = type metadata accessor for Font.TextStyle();
  return (*(*(v21 - 8) + 104))(v26, v20, v21);
}

uint64_t sub_100B89890(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = Color.init(_:)();
  return sub_10006B010(v4, a1 + 40, &qword_1011B4A50, &unk_100F055F0);
}

void sub_100B89910()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_100B899D8;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010E5100;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_1011B3C90 = v2;
}

id sub_100B899D8(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_100B89A78()
{
  if (qword_1011B06B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1011B3C90;
  result = Color.init(uiColor:)();
  qword_1011B3C98 = result;
  qword_1011B3CA0 = 0x3FF0000000000000;
  byte_1011B3CA8 = 1;
  return result;
}

double PlaylistCurators.ViewController.configuration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  *v5 = a1;

  return v4(v7, 0);
}

uint64_t (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_100B89C4C;
}

void sub_100B89C4C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = dispatch thunk of UIHostingController.rootView.modify();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0) - 8;
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_allocWithZone(v1);
  *&v6[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v7 = *(v3 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0, &qword_100EFDF50);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return UIHostingController.init(rootView:)();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v6 = *(v5 + 28);
  *(v4 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0, &qword_100EFDF50);
  swift_storeEnumTagMultiPayload();
  *v4 = a1;

  return UIHostingController.init(rootView:)();
}

id sub_100B89F58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100B8A274(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClearBackground.Controller();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t sub_100B8A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DD38();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B8A314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DD38();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B8A378(uint64_t a1)
{
  sub_100B8DD38();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100B8A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100B8A648();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100B8AEF8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_100B8A648()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B48F0, &qword_100F052E0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_100B8A880(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&qword_1011B48F0, &qword_100F052E0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_100B8AB9C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_1011B48F0, &qword_100F052E0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100B8AEF8(int64_t a1)
{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_100B8B200(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100B8B4E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100B8B4E0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100B8AB9C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100B8A648();
      goto LABEL_12;
    }

    sub_100B8A880(v11 + 1);
  }

  v13 = *v3;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B8B784(uint64_t a1)
{
  sub_10010FC20(&qword_1011B4EC8, &qword_100F05A30);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &qword_1011B4EC8, &qword_100F05A30);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100B8B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_10010FC20(&qword_1011B4A58, &qword_100F062D0);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 == *a2 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    v22 = v7;
    v15 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v16 = *(v10 + 48);
    sub_1000089F8(a1 + v15, v12, &unk_1011B55F0, &unk_100EFFDC0);
    sub_1000089F8(a2 + v15, &v12[v16], &unk_1011B55F0, &unk_100EFFDC0);
    v17 = *(v5 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      if (v17(&v12[v16], 1, v4) == 1)
      {
        sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
        return 1;
      }
    }

    else
    {
      sub_1000089F8(v12, v9, &unk_1011B55F0, &unk_100EFFDC0);
      if (v17(&v12[v16], 1, v4) != 1)
      {
        v18 = v22;
        (*(v5 + 32))(v22, &v12[v16], v4);
        sub_100B8C798(&qword_1011B4A60, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *(v5 + 8);
        v20(v18, v4);
        v20(v9, v4);
        sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v9, v4);
    }

    sub_1000095E8(v12, &qword_1011B4A58, &qword_100F062D0);
    return 0;
  }

  return result;
}

uint64_t sub_100B8BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = a1;
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v63 = &v53 - v4;
  sub_10010FC20(&qword_1011B48F8, &qword_100F052F8);
  __chkstk_darwin();
  v55 = &v53 - v5;
  v65 = type metadata accessor for Playlist();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v59 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v6;
  __chkstk_darwin();
  v58 = &v53 - v7;
  v57 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v56 = *(v57 - 1);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v54 = sub_10010FC20(&qword_1011B3CE0, &qword_100F047B8);
  v10 = *(v54 - 8);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = sub_10010FC20(&qword_1011B3CC8, &qword_100F047B0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v68[0] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011B3CB0, &qword_100F047A0);
  Published.init(initialValue:)();
  v18 = *(v14 + 32);
  v18(v3 + v17, v16, v13);
  v19 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  v68[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v18(v3 + v19, v16, v13);
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v68[0] = &_swiftEmptySetSingleton;
  sub_10010FC20(&qword_1011B3CB8, &qword_100F047A8);
  Published.init(initialValue:)();
  (*(v10 + 32))(v3 + v20, v12, v54);
  v21 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v68[0]) = 0;
  Published.init(initialValue:)();
  v22 = *(v56 + 32);
  v23 = v57;
  v22(v3 + v21, v9, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v68[0]) = 0;
  Published.init(initialValue:)();
  v22(v3 + v24, v9, v23);
  v25 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v68);
  sub_100014984(v68);
  v67 = BYTE1(v68[0]);
  Published.init(initialValue:)();
  v22(v3 + v25, v9, v23);
  v26 = v60;
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v28 = sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v56 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v61;
  v29 = v64;
  v30 = *(v64 + 16);
  v31 = v58;
  v32 = v65;
  v30(v58, v26, v65);
  swift_beginAccess();
  v57 = v30;
  v30(v59, v31, v32);

  v33 = v32;
  Published.init(initialValue:)();
  v34 = *(v29 + 8);
  v35 = v31;
  v61 = v29 + 8;
  v59 = v34;
  v34(v31, v33);
  swift_endAccess();
  v36 = v55;
  v37 = v26;
  Playlist.collaboration.getter();
  v38 = type metadata accessor for Playlist.Collaboration();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    sub_1000095E8(v36, &qword_1011B48F8, &qword_100F052F8);
    v40 = 0;
  }

  else
  {
    v40 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v39 + 8))(v36, v38);
  }

  swift_beginAccess();
  v66 = v40 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v41 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v42 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v43 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v44 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v42, 1, 1, sub_100B90D68, v43);
  *(v3 + v56) = v44;

  v45 = type metadata accessor for TaskPriority();
  v46 = v63;
  (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
  v47 = v65;
  (v57)(v31, v37, v65);
  v48 = v64;
  v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v50 = (v62 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v48 + 32))(v51 + v49, v35, v47);
  *(v51 + v50) = v3;

  sub_100B284E0(0, 0, v46, &unk_100F05A40, v51);

  v59(v37, v47);
  return v3;
}

unint64_t sub_100B8C5D4()
{
  result = qword_1011B3D98;
  if (!qword_1011B3D98)
  {
    sub_1001109D0(&qword_1011B3D90, &qword_100F048A8);
    sub_100020674(&qword_1011B3DA0, &qword_1011B3DA8, &qword_100F048B0, &protocol conformance descriptor for List<A, B>);
    sub_100020674(&qword_1011B3DB0, &qword_1011B3DB8, &qword_100F048B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3D98);
  }

  return result;
}

void sub_100B8C6B8(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_100B7FCE8(a1, a2);
}

uint64_t sub_100B8C798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B8C838(uint64_t a1)
{
  result = sub_100B8C798(&qword_1011B3E20, type metadata accessor for PlaylistCurators.View, &protocol conformance descriptor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_100B8C8A8(uint64_t a1)
{
  sub_100B8D1EC(319, &qword_1011B3E60, &qword_1011B3CB0, &qword_100F047A0, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100B8D1EC(319, &qword_1011B3E68, &qword_1011B3CB8, &qword_100F047A8, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100B8D3EC(319, &qword_1011B3E70, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100053FCC(319, &qword_1011B3E78, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_100B8D1EC(319, qword_1011B3E80, &qword_1011B5930, &qword_100EFDE70, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100B8CB3C(uint64_t a1)
{
  sub_100B8CCFC(319);
  if (v1 <= 0x3F)
  {
    sub_100B8D3EC(319, &qword_1011B4258, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100B8D3EC(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100B8D3EC(319, &qword_1011B4268, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100B8D1EC(319, qword_1011B4270, &qword_1011B3D60, &qword_100F04880, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100053FCC(319, &unk_1011B2B98, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100B8CCFC(uint64_t a1)
{
  if (!qword_1011B4250)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B4250);
    }
  }
}

void sub_100B8CE10(uint64_t a1)
{
  sub_100B8D3EC(319, &qword_1011B4380, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100B8CEE4(uint64_t a1)
{
  sub_100B8D1EC(319, &unk_1011B4420, &qword_1011B0C18, &qword_100F04980, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100B8D060(uint64_t a1)
{
  type metadata accessor for Playlist.Collaborator();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v2 <= 0x3F)
    {
      sub_100053FCC(319, &unk_1011B2B98, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100B8D1EC(319, &qword_1011B4538, &unk_1011B4540, &qword_100F010B0, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100B8D3EC(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100B8D3EC(319, &qword_1011B4268, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100B8D1EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100B8D260(uint64_t a1)
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

void sub_100B8D2F4(uint64_t a1)
{
  sub_10001F888();
  if (v1 <= 0x3F)
  {
    sub_100B8D3EC(319, &qword_1011B45F8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100053FCC(319, &qword_1011B4600, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B8D3EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100B8D470()
{
  result = qword_1011B4638;
  if (!qword_1011B4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4638);
  }

  return result;
}

unint64_t sub_100B8D4C8()
{
  result = qword_1011B4640;
  if (!qword_1011B4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4640);
  }

  return result;
}

unint64_t sub_100B8D520()
{
  result = qword_1011B4648;
  if (!qword_1011B4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4648);
  }

  return result;
}

unint64_t sub_100B8D578()
{
  result = qword_1011B4650;
  if (!qword_1011B4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4650);
  }

  return result;
}

unint64_t sub_100B8D5F0()
{
  result = qword_1011B4688;
  if (!qword_1011B4688)
  {
    sub_1001109D0(&qword_1011B4658, &qword_100F05020);
    sub_100020674(&qword_1011B4690, &qword_1011B4698, &qword_100F05050, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&qword_1011B46A0, &qword_1011B46A8, &qword_100F05058, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4688);
  }

  return result;
}

unint64_t sub_100B8D6D4()
{
  result = qword_1011B59C0;
  if (!qword_1011B59C0)
  {
    sub_1001109D0(&qword_1011B46C0, &qword_100F05060);
    sub_100020674(&qword_1011B46C8, &unk_1011B46D0, &qword_100F05068, &protocol conformance descriptor for Button<A>);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59C0);
  }

  return result;
}

uint64_t sub_100B8D7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B8D828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B8D8BC()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_10010FC20(&qword_1011B44C8, &qword_100F04B98);

  v7 = v1[8];
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_10010FC20(&unk_1011B08A0, &qword_100EFDF18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100B8DBF0()
{
  result = qword_1011B47C8;
  if (!qword_1011B47C8)
  {
    sub_1001109D0(&qword_1011B4708, &qword_100F05108);
    sub_100020674(&qword_1011B47D0, &qword_1011B47D8, &qword_100F051C8, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47C8);
  }

  return result;
}

uint64_t sub_100B8DCA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100B8DD08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10069B2E4(a1, a2, a3, a4);
  }

  return result;
}

double sub_100B8DD20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10069B320(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_100B8DD38()
{
  result = qword_1011B47F0;
  if (!qword_1011B47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47F0);
  }

  return result;
}

unint64_t sub_100B8DDC4()
{
  result = qword_1011B47F8;
  if (!qword_1011B47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B47F8);
  }

  return result;
}

unint64_t sub_100B8DE18()
{
  result = qword_1011B4800;
  if (!qword_1011B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4800);
  }

  return result;
}

unint64_t sub_100B8DED8()
{
  result = qword_1011B4830;
  if (!qword_1011B4830)
  {
    sub_1001109D0(&qword_1011B4828, &qword_100F051F0);
    sub_100B8DF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4830);
  }

  return result;
}

unint64_t sub_100B8DF64()
{
  result = qword_1011B4838;
  if (!qword_1011B4838)
  {
    sub_1001109D0(&qword_1011B4840, &qword_100F051F8);
    sub_100B8DFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4838);
  }

  return result;
}

unint64_t sub_100B8DFF0()
{
  result = qword_1011B4848;
  if (!qword_1011B4848)
  {
    sub_1001109D0(&qword_1011B4850, &qword_100F05200);
    sub_100020674(&qword_1011B4858, &qword_1011B4860, &qword_100F05208, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100020674(&qword_1011B4868, &qword_1011B4870, &qword_100F05210, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4848);
  }

  return result;
}

unint64_t sub_100B8E0D4()
{
  result = qword_1011B48A8;
  if (!qword_1011B48A8)
  {
    sub_1001109D0(&qword_1011B48A0, &unk_100F052A0);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B48A8);
  }

  return result;
}

uint64_t sub_100B8E18C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100B73FD0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100B8E294(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B746E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B8E38C()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100B8E458(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B73798(a1, v6, v7, v8, v1 + v5);
}

double sub_100B8E550(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B3E00, &qword_100F04978) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_1000089F8(a1, v8, &qword_1011B0C18, &qword_100F04980);
  sub_1000089F8(v13, &v8[v14], &qword_1011B0C18, &qword_100F04980);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_1000095E8(v8, &qword_1011B0C18, &qword_100F04980);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v8, v10, &qword_1011B0C18, &qword_100F04980);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_1000095E8(v8, &unk_1011B3E00, &qword_100F04978);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
  v18(v10, v2);
  sub_1000095E8(v8, &qword_1011B0C18, &qword_100F04980);
  result = -9.0;
  if ((v17 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_100B8E928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_100B87F04(a1, a2, v7, a3);
}

uint64_t sub_100B8E9B4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_10010FC20(&qword_1011B4A38, &qword_100F055B0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100B8EA1C()
{
  result = qword_1011B49C8;
  if (!qword_1011B49C8)
  {
    sub_1001109D0(&qword_1011B49B8, &qword_100F05580);
    sub_100B8EAD4();
    sub_100020674(&qword_1011B4A28, &qword_1011B4A30, &qword_100F055A8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49C8);
  }

  return result;
}

unint64_t sub_100B8EAD4()
{
  result = qword_1011B49D0;
  if (!qword_1011B49D0)
  {
    sub_1001109D0(&qword_1011B49D8, &qword_100F05588);
    sub_100B8EB60();
    sub_100B37464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49D0);
  }

  return result;
}

unint64_t sub_100B8EB60()
{
  result = qword_1011B49E0;
  if (!qword_1011B49E0)
  {
    sub_1001109D0(&qword_1011B49E8, &qword_100F05590);
    sub_100B8EBEC();
    sub_100B37410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49E0);
  }

  return result;
}

unint64_t sub_100B8EBEC()
{
  result = qword_1011B49F0;
  if (!qword_1011B49F0)
  {
    sub_1001109D0(&qword_1011B49F8, &qword_100F05598);
    sub_100B8EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B49F0);
  }

  return result;
}

unint64_t sub_100B8EC78()
{
  result = qword_1011B4A00;
  if (!qword_1011B4A00)
  {
    sub_1001109D0(&qword_1011B4A08, &qword_100F055A0);
    sub_1001109D0(&qword_1011B33A8, &qword_100F03130);
    sub_100B5A07C();
    swift_getOpaqueTypeConformance2();
    sub_100B8C798(&unk_1011B4A10, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4A00);
  }

  return result;
}

double sub_100B8ED70(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B3E00, &qword_100F04978) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_1000089F8(a1, v8, &qword_1011B0C18, &qword_100F04980);
  sub_1000089F8(v13, &v8[v14], &qword_1011B0C18, &qword_100F04980);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_1000095E8(v8, &qword_1011B0C18, &qword_100F04980);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v8, v10, &qword_1011B0C18, &qword_100F04980);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_1000095E8(v8, &unk_1011B3E00, &qword_100F04978);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_1000095E8(v13, &qword_1011B0C18, &qword_100F04980);
  v18(v10, v2);
  sub_1000095E8(v8, &qword_1011B0C18, &qword_100F04980);
  result = 25.0;
  if ((v17 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_100B8F160()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_10010FC20(&unk_1011B0890, &qword_100F06E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_10010FC20(&unk_1011B08A0, &qword_100EFDF18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100B8F3F4()
{
  result = qword_1011B4AF8;
  if (!qword_1011B4AF8)
  {
    sub_1001109D0(&qword_1011B4AE8, &qword_100F056A0);
    sub_100020674(&qword_1011B4B00, &qword_1011B4B08, &qword_100F056B0, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_1011B4B10, &qword_1011B4B18, &qword_100F056B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4AF8);
  }

  return result;
}

uint64_t sub_100B8F4D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B8F554()
{
  result = qword_1011B4B28;
  if (!qword_1011B4B28)
  {
    sub_1001109D0(&qword_1011B4B30, &qword_100F056C0);
    sub_100B8F60C();
    sub_100020674(&qword_1011B4B48, &qword_1011B4B50, &qword_100F056D0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B28);
  }

  return result;
}

unint64_t sub_100B8F60C()
{
  result = qword_1011B4B38;
  if (!qword_1011B4B38)
  {
    sub_1001109D0(&qword_1011B4B40, &qword_100F056C8);
    sub_100B8D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B38);
  }

  return result;
}

unint64_t sub_100B8F698()
{
  result = qword_1011B4B58;
  if (!qword_1011B4B58)
  {
    sub_1001109D0(&qword_1011B4AE0, &qword_100F05698);
    sub_100020674(&qword_1011B4B60, &qword_1011B4B68, &qword_100F056D8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B58);
  }

  return result;
}

unint64_t sub_100B8F748()
{
  result = qword_1011B4B70;
  if (!qword_1011B4B70)
  {
    sub_1001109D0(&qword_1011B4AD0, &qword_100F05688);
    sub_1001109D0(&qword_1011B4AE8, &qword_100F056A0);
    sub_1001109D0(&qword_1011B4AF0, &qword_100F056A8);
    sub_100B8F3F4();
    sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &qword_100F056A8, sub_100B8F554);
    swift_getOpaqueTypeConformance2();
    sub_100B8F698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4B70);
  }

  return result;
}

unint64_t sub_100B8F8A8()
{
  result = qword_1011B4BC0;
  if (!qword_1011B4BC0)
  {
    sub_1001109D0(&qword_1011B4BB8, &qword_100F05700);
    sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_100F04FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4BC0);
  }

  return result;
}

unint64_t sub_100B8F990()
{
  result = qword_1011B4C00;
  if (!qword_1011B4C00)
  {
    sub_1001109D0(&qword_1011B4BF8, &qword_100F05728);
    sub_100B8FA48();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4C00);
  }

  return result;
}

unint64_t sub_100B8FA48()
{
  result = qword_1011B4C08;
  if (!qword_1011B4C08)
  {
    sub_1001109D0(&qword_1011B4C10, &qword_100F05730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4C08);
  }

  return result;
}

uint64_t sub_100B8FAF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100B728DC(a1, v4, v5, v6);
}

void sub_100B8FBAC(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_100B7ED2C(a1);
}

uint64_t sub_100B8FC20()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_10010FC20(&unk_1011B0890, &qword_100F06E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_10010FC20(&unk_1011B08A0, &qword_100EFDF18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_100B8FE88(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100B7EDB4(a1, v4, v5, v6);
}

uint64_t sub_100B8FEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100B724E0(a1, v4, v5, v6, v7);
}

uint64_t sub_100B8FFC0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100B7D07C(a1);
}

uint64_t sub_100B90030(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100B4DD14(a1, a2, v2 + v6, v7);
}

uint64_t sub_100B900FC(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B7CF10(a1, v4);
}

unint64_t sub_100B9017C()
{
  result = qword_1011B4D10;
  if (!qword_1011B4D10)
  {
    sub_1001109D0(&qword_1011B4CE0, &qword_100F05810);
    sub_100B90234();
    sub_100020674(&qword_1011B4D28, &qword_1011B4D00, &qword_100F05830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D10);
  }

  return result;
}

unint64_t sub_100B90234()
{
  result = qword_1011B4D18;
  if (!qword_1011B4D18)
  {
    sub_1001109D0(&qword_1011B4D20, &qword_100F05838);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D18);
  }

  return result;
}

uint64_t sub_100B902EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100B72E3C(a1, v4, v5, v6);
}

uint64_t sub_100B903CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100B7C1A0(a1);
}

unint64_t sub_100B9043C()
{
  result = qword_1011B4D68;
  if (!qword_1011B4D68)
  {
    sub_1001109D0(&qword_1011B4D50, &qword_100F05870);
    sub_100B8C798(&qword_1011B4D70, _s10ManagementO4ViewV5ShareO6ButtonVMa, &unk_100F04CC0);
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80, &qword_100F05FC0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4D68);
  }

  return result;
}

unint64_t sub_100B90550()
{
  result = qword_1011B4DC0;
  if (!qword_1011B4DC0)
  {
    sub_1001109D0(&qword_1011B4D98, &qword_100F05928);
    sub_100B905DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DC0);
  }

  return result;
}

unint64_t sub_100B905DC()
{
  result = qword_1011B4DC8;
  if (!qword_1011B4DC8)
  {
    sub_1001109D0(&qword_1011B4DB8, &qword_100F05948);
    sub_100B90694();
    sub_100020674(&qword_1011B4B10, &qword_1011B4B18, &qword_100F056B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DC8);
  }

  return result;
}

unint64_t sub_100B90694()
{
  result = qword_1011B4DD0;
  if (!qword_1011B4DD0)
  {
    sub_1001109D0(&qword_1011B4DB0, &qword_100F05940);
    sub_100020674(&qword_1011B4DD8, &qword_1011B4DE0, &qword_100F05950, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4DD0);
  }

  return result;
}

uint64_t sub_100B907EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_100B90868()
{
  result = qword_1011B4E50;
  if (!qword_1011B4E50)
  {
    sub_1001109D0(&qword_1011B4DF8, &qword_100F05968);
    sub_100020674(&qword_1011B46C8, &unk_1011B46D0, &qword_100F05068, &protocol conformance descriptor for Button<A>);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E50);
  }

  return result;
}

unint64_t sub_100B9094C()
{
  result = qword_1011B4E80;
  if (!qword_1011B4E80)
  {
    sub_1001109D0(&qword_1011B4E00, &qword_100F05970);
    sub_100B90A04();
    sub_100020674(&qword_1011B4EB8, &qword_1011B4E78, &unk_100F05A10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E80);
  }

  return result;
}

unint64_t sub_100B90A04()
{
  result = qword_1011B4E88;
  if (!qword_1011B4E88)
  {
    sub_1001109D0(&qword_1011B4E70, &qword_100F05A08);
    sub_100B90ABC();
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0, &qword_100F064C0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E88);
  }

  return result;
}

unint64_t sub_100B90ABC()
{
  result = qword_1011B4E90;
  if (!qword_1011B4E90)
  {
    sub_1001109D0(&qword_1011B4E68, &qword_100F05A00);
    sub_100B90B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E90);
  }

  return result;
}

unint64_t sub_100B90B48()
{
  result = qword_1011B4E98;
  if (!qword_1011B4E98)
  {
    sub_1001109D0(&qword_1011B4E60, &qword_100F059F8);
    sub_100B90BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4E98);
  }

  return result;
}

unint64_t sub_100B90BD4()
{
  result = qword_1011B4EA0;
  if (!qword_1011B4EA0)
  {
    sub_1001109D0(&qword_1011B4E58, &qword_100F059F0);
    sub_1001109D0(&qword_1011B4DF8, &qword_100F05968);
    sub_100B90868();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4EA0);
  }

  return result;
}

uint64_t sub_100B90D70(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100B6D1B4(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100B90EB8()
{
  result = qword_1011B4F68;
  if (!qword_1011B4F68)
  {
    sub_1001109D0(&qword_1011B4F70, qword_100F05B20);
    sub_1001109D0(&qword_1011B4668, &qword_100F05030);
    sub_1001109D0(&qword_1011B4660, &qword_100F05028);
    sub_1001109D0(&qword_1011B4658, &qword_100F05020);
    sub_1001109D0(&qword_1011B4680, &qword_100F05048);
    sub_100B8D5F0();
    sub_100B8F4D8(&unk_1011B46B0, &qword_1011B4680, &qword_100F05048, sub_100B8D6D4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100B8C798(&qword_1011B4F78, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F68);
  }

  return result;
}

unint64_t sub_100B91090()
{
  result = qword_1011B4F80;
  if (!qword_1011B4F80)
  {
    sub_1001109D0(&qword_1011B4878, &qword_100F05248);
    sub_100B91148();
    sub_100020674(&qword_1011B4FA0, &qword_1011B4880, &qword_100F05250, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F80);
  }

  return result;
}

unint64_t sub_100B91148()
{
  result = qword_1011B4F88;
  if (!qword_1011B4F88)
  {
    sub_1001109D0(&qword_1011B4818, &unk_100F051E0);
    sub_100B91200();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F88);
  }

  return result;
}

unint64_t sub_100B91200()
{
  result = qword_1011B4F90;
  if (!qword_1011B4F90)
  {
    sub_1001109D0(&qword_1011B4810, &qword_100F051D8);
    sub_100020674(&qword_1011B4F98, &qword_1011B4808, &qword_100F051D0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F90);
  }

  return result;
}

unint64_t sub_100B912D8()
{
  result = qword_1011B4FA8;
  if (!qword_1011B4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FA8);
  }

  return result;
}

unint64_t sub_100B91344()
{
  result = qword_1011B4FC8;
  if (!qword_1011B4FC8)
  {
    sub_1001109D0(&qword_1011B4FC0, &qword_100F05BF0);
    sub_100B913FC();
    sub_100020674(&unk_1011B5000, &qword_1011B59A0, &qword_100F05C10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FC8);
  }

  return result;
}

unint64_t sub_100B913FC()
{
  result = qword_1011B4FD0;
  if (!qword_1011B4FD0)
  {
    sub_1001109D0(&qword_1011B4FD8, &qword_100F05BF8);
    sub_100B914B4();
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0, &qword_100F064C0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FD0);
  }

  return result;
}

unint64_t sub_100B914B4()
{
  result = qword_1011B4FE0;
  if (!qword_1011B4FE0)
  {
    sub_1001109D0(&qword_1011B4FE8, &qword_100F05C00);
    sub_100B91540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FE0);
  }

  return result;
}

unint64_t sub_100B91540()
{
  result = qword_1011B4FF0;
  if (!qword_1011B4FF0)
  {
    sub_1001109D0(&qword_1011B4FF8, &qword_100F05C08);
    sub_100B8E0D4();
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4FF0);
  }

  return result;
}

unint64_t sub_100B91628()
{
  result = qword_1011B5028;
  if (!qword_1011B5028)
  {
    sub_1001109D0(&qword_1011B5018, &qword_100F05C18);
    sub_1001109D0(&qword_1011B4FB0, &qword_100F05BE0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_1011B5010, &qword_1011B4FB0, &qword_100F05BE0, &protocol conformance descriptor for Button<A>);
    sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011B5030, &qword_1011B5020, &qword_100F05C20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5028);
  }

  return result;
}

void sub_100B917DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011B55A8, &qword_100F062D8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v11, v33);
        sub_10000DD18(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000160F8(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_1000095E8(v30, &qword_1011B5448, &qword_100F06108);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_10000DD18(v31 + 8, v23);
        sub_1000095E8(v30, &qword_1011B5448, &qword_100F06108);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_10000F8B8(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_10040DF5C(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1000095E8(&v24, &qword_1011B55B0, &qword_100F062E0);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for Artwork();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100B91BEC(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100B91BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100B91BEC(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v31[0] = type metadata accessor for Playlist.Collaborator();
  v2 = *(v31[0] - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  type metadata accessor for Collaboration.Flow(0);
  v11 = __chkstk_darwin();
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B9E020(v1, v13, v11, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v2;
      v16 = *(v2 + 32);
      v17 = v31[0];
      v16(v4, v13, v31[0]);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v18 = qword_10121B340;
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v6 + 8))(v10, v5);
      sub_10010FC20(&qword_1011B5078, &qword_100F05C58);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBC6B0;
      v20 = Playlist.Collaborator.name.getter();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_10001CE78();
      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = v22;
      }

      *(v19 + 32) = v23;
      *(v19 + 40) = v24;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v15 + 8))(v4, v17);
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v27 = qword_10121B340;
      static Locale.current.getter();
      v25 = String.init(localized:table:bundle:locale:comment:)();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v26 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v28 = qword_10121B340;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v6 + 8))(v10, v5);
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 8))(&v13[v26], v29);
    sub_1000095E8(v13, &qword_1011B5090, &qword_100F05C68);
  }

  return v25;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v86 = hasProfileEdit;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v2 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v85 = *(v2 - 8);
  __chkstk_darwin();
  v4 = (&v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v81 - v5);
  sub_10010FC20(&qword_1011B5098, &qword_100F05C70);
  __chkstk_darwin();
  v8 = &v81 - v7;
  sub_10010FC20(&qword_1011B5090, &qword_100F05C68);
  __chkstk_darwin();
  v10 = &v81 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v88 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for String.LocalizationValue();
  v87 = *(v90 - 8);
  __chkstk_darwin();
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v81 - v13;
  type metadata accessor for Collaboration.Flow(0);
  v15 = __chkstk_darwin();
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B9E020(v1, v17, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v19 = v87;
      v20 = v90;
      (*(v87 + 16))(v89, v14, v90);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v21 = qword_10121B340;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v23;
      (*(v19 + 8))(v14, v20);
      sub_100B9D1B4(v17, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v33 = v87;
      v34 = (v87 + 16);
      v35 = v14;
      v36 = v89;
      v37 = v90;
      String.LocalizationValue.init(stringLiteral:)();
      (*v34)(v36, v35, v37);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v40 = qword_10121B340;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v41;
      (*(v33 + 8))(v35, v37);
    }

    goto LABEL_33;
  }

  v25 = sub_10010FC20(&qword_1011B5088, &qword_100F05C60);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = v17;
  v29 = v17[v27];
  v83 = v26;
  v84 = v28;
  sub_10003D17C(v28, v10, &qword_1011B5090, &qword_100F05C68);
  v82 = v10;
  sub_1000089F8(v10, v8, &qword_1011B5090, &qword_100F05C68);
  if ((*(v85 + 48))(v8, 1, v2) == 1)
  {
    v30 = v87;
    v31 = (v87 + 16);
    v32 = v14;
    String.LocalizationValue.init(stringLiteral:)();
    v42 = v90;
    (*v31)(v89, v32, v90);
    v43 = v82;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v44 = qword_10121B340;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v45;
    (*(v30 + 8))(v32, v42);
    sub_1000095E8(v43, &qword_1011B5090, &qword_100F05C68);
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 8))(v84 + v83, v46);
    goto LABEL_33;
  }

  v38 = v14;
  if (v29)
  {
    v39 = v6;
    sub_100B9D234(v8, v6, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v86)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v6[1]._countAndFlagsBits;
    object = v6[1]._object;
    v55 = v84;
    if (object)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = 0x100000000000002ELL;
      v56._object = 0x8000000100E665C0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v6);
      v57._countAndFlagsBits = 4204576;
      v57._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      v58._countAndFlagsBits = countAndFlagsBits;
      v58._object = object;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v58);
      v59._countAndFlagsBits = 0xD000000000000031;
      v59._object = 0x8000000100E665F0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
LABEL_26:
      String.LocalizationValue.init(stringInterpolation:)();
      v66 = v87;
      v67 = v90;
      (*(v87 + 16))(v89, v38, v90);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v68 = qword_10121B340;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v69;
      (*(v66 + 8))(v38, v67);
LABEL_32:
      sub_1000095E8(v82, &qword_1011B5090, &qword_100F05C68);
      sub_100B9D1B4(v39, type metadata accessor for Collaboration.Flow.Collaborator);
      v77 = type metadata accessor for URL();
      (*(*(v77 - 8) + 8))(v55 + v83, v77);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v39 = v4;
  sub_100B9D234(v8, v4, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v86)
  {
    v60 = v4[1]._countAndFlagsBits;
    v61 = v4[1]._object;
    v55 = v84;
    if (v61)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0x100000000000002ALL;
      v62._object = 0x8000000100E664D0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v4);
      v63._countAndFlagsBits = 4204576;
      v63._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
      v64._countAndFlagsBits = v60;
      v64._object = v61;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v64);
      v65._countAndFlagsBits = 0xD000000000000048;
      v65._object = 0x8000000100E66500;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
      goto LABEL_26;
    }

LABEL_29:
    String.LocalizationValue.init(stringLiteral:)();
    v70 = v87;
    v71 = v90;
    (*(v87 + 16))(v89, v38, v90);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v72 = qword_10121B340;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v70 + 8))(v38, v71);
    sub_10010FC20(&qword_1011B5078, &qword_100F05C58);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100EBC6B0;
    v74 = v39->_countAndFlagsBits;
    v75 = v39->_object;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = sub_10001CE78();
    *(v73 + 32) = v74;
    *(v73 + 40) = v75;

    v22 = static String.localizedStringWithFormat(_:_:)();
    v24 = v76;

    goto LABEL_32;
  }

LABEL_19:
  String.LocalizationValue.init(stringLiteral:)();
  v47 = v87;
  v48 = v90;
  (*(v87 + 16))(v89, v38, v90);
  v49 = v84;
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v50 = qword_10121B340;
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v51;
  (*(v47 + 8))(v38, v48);
  sub_1000095E8(v82, &qword_1011B5090, &qword_100F05C68);
  sub_100B9D1B4(v39, type metadata accessor for Collaboration.Flow.Collaborator);
  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 8))(v49 + v83, v52);
LABEL_33:
  v78 = v22;
  v79 = v24;
  result._object = v79;
  result._countAndFlagsBits = v78;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v18[-v6];
  type metadata accessor for Collaboration.Flow(0);
  v8 = __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B9E020(v1, v10, v8, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100B9D1B4(v10, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v3 + 16))(v5, v7, v2);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v14 = qword_10121B340;
      static Locale.current.getter();
      v12 = String.init(localized:table:bundle:locale:comment:)();
      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    v13 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v15 = qword_10121B340;
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(&v10[v13], v16);
    sub_1000095E8(v10, &qword_1011B5090, &qword_100F05C68);
  }

  return v12;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  State.init(wrappedValue:)();
  *a9 = v25;
  *(a9 + 8) = v26;
  State.init(wrappedValue:)();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_100B9A2A8;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_100B9D234(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = type metadata accessor for Playlist();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10010FC20(&qword_1011B50A0, &qword_100F05C78);
  return sub_100B93618(v2, a2 + *(v4 + 44));
}

uint64_t sub_100B93618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v469 = a1;
  v443 = a2;
  v442 = sub_10010FC20(&qword_1011B5460, &qword_100F06120);
  __chkstk_darwin();
  v406 = &v378 - v2;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v381 = &v378 - v3;
  v382 = type metadata accessor for Artwork.CropStyle();
  v399 = *(v382 - 8);
  __chkstk_darwin();
  v398 = &v378 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v392 = &v378 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v391 = &v378 - v6;
  v7 = type metadata accessor for ArtworkImage();
  v400 = *(v7 - 8);
  v401 = v7;
  __chkstk_darwin();
  v414 = &v378 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v380 = &v378 - v9;
  __chkstk_darwin();
  v397 = &v378 - v10;
  __chkstk_darwin();
  v416 = &v378 - v11;
  v417 = type metadata accessor for ArtworkImage.ReusePolicy();
  v415 = *(v417 - 8);
  __chkstk_darwin();
  v428 = &v378 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v390 = &v378 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v389 = &v378 - v14;
  __chkstk_darwin();
  v427 = (&v378 - v15);
  v394 = sub_10010FC20(&qword_1011B5468, &qword_100F06128);
  __chkstk_darwin();
  v396 = &v378 - v16;
  v395 = sub_10010FC20(&qword_1011B5950, &qword_100F06130);
  __chkstk_darwin();
  v405 = &v378 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v393 = &v378 - v18;
  __chkstk_darwin();
  v437 = &v378 - v19;
  v450 = type metadata accessor for Playlist.Collaborator();
  v436 = *(v450 - 8);
  __chkstk_darwin();
  v418 = v20;
  v419 = &v378 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v449 = &v378 - v21;
  v22 = type metadata accessor for URL();
  v412 = *(v22 - 8);
  v413 = v22;
  __chkstk_darwin();
  v387 = v23;
  v388 = &v378 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v411 = &v378 - v24;
  v439 = sub_10010FC20(&qword_1011B5470, &qword_100F06138);
  __chkstk_darwin();
  v441 = &v378 - v25;
  v421 = sub_10010FC20(&qword_1011B5478, &qword_100F06140);
  __chkstk_darwin();
  v423 = (&v378 - v26);
  v440 = sub_10010FC20(&qword_1011B5480, &qword_100F06148);
  __chkstk_darwin();
  v424 = &v378 - v27;
  v422 = sub_10010FC20(&qword_1011B5488, &qword_100F06150);
  __chkstk_darwin();
  v404 = &v378 - v28;
  v29 = type metadata accessor for Collaboration.Flow.View(0);
  v435 = *(v29 - 8);
  v30 = *(v435 + 64);
  __chkstk_darwin();
  v451 = &v378 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_10010FC20(&qword_1011B5490, &qword_100F06158);
  v447 = *(v431 - 1);
  __chkstk_darwin();
  v403 = &v378 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v420 = &v378 - v32;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v432 = &v378 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for String.LocalizationValue();
  v448 = *(v434 - 8);
  __chkstk_darwin();
  v430 = &v378 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v433 = &v378 - v35;
  v383 = sub_10010FC20(&qword_1011B5498, &qword_100F06160);
  __chkstk_darwin();
  v385 = &v378 - v36;
  v384 = sub_10010FC20(&qword_1011B54A0, &qword_100F06168);
  __chkstk_darwin();
  v402 = &v378 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v378 - v38;
  __chkstk_darwin();
  v429 = (&v378 - v39);
  sub_10010FC20(&qword_1011B54A8, &qword_100F06170);
  __chkstk_darwin();
  v467 = &v378 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v378 - v41;
  v43 = sub_10010FC20(&qword_1011B54B0, &qword_100F06178);
  v425 = *(v43 - 8);
  v426 = v43;
  __chkstk_darwin();
  v379 = (&v378 - v44);
  sub_10010FC20(&qword_1011B54B8, &qword_100F06180);
  __chkstk_darwin();
  v465 = &v378 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v472 = &v378 - v46;
  v460 = sub_10010FC20(&qword_1011B54C0, &qword_100F06188);
  __chkstk_darwin();
  v463 = &v378 - v47;
  v462 = sub_10010FC20(&qword_1011B54C8, &qword_100F06190);
  __chkstk_darwin();
  v466 = &v378 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v461 = &v378 - v49;
  __chkstk_darwin();
  v470 = &v378 - v50;
  v51 = sub_10010FC20(&qword_1011B54D0, &qword_100F06198);
  v52 = *(v51 - 8);
  __chkstk_darwin();
  v54 = &v378 - v53;
  v55 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v446 = (&v378 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v459 = &v378 - v57;
  __chkstk_darwin();
  v59 = &v378 - v58;
  sub_10010FC20(&qword_1011B54D8, &qword_100F061A0);
  __chkstk_darwin();
  v464 = &v378 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin();
  v63 = &v378 - v62;
  v444 = v29;
  v473 = *(v29 + 24);
  sub_100B9E020(v469 + v473, v59, v61, type metadata accessor for Collaboration.Flow);
  v452 = v55;
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  sub_100B9D1B4(v59, type metadata accessor for Collaboration.Flow);
  v471 = v42;
  v468 = v63;
  if (v29 == 1)
  {
    v64 = 1;
  }

  else
  {
    if (qword_1011B06F0 != -1)
    {
      swift_once();
    }

    v65 = qword_1011B5068;
    *v481 = swift_getKeyPath();
    *&v481[8] = v65;

    v66 = sub_10010FC20(&qword_1011B54E0, &unk_100F061A8);
    v67 = sub_100B9DDC4();
    View.bold(_:)();

    *v481 = v66;
    *&v481[8] = v67;
    swift_getOpaqueTypeConformance2();
    v63 = v468;
    View.accessibilityHidden(_:)();
    (*(v52 + 8))(v54, v51);
    v64 = 0;
  }

  v438 = v30;
  v68 = sub_10010FC20(&qword_1011B54F8, &qword_100F061B8);
  (*(*(v68 - 8) + 56))(v63, v64, 1, v68);
  v69 = v469;
  *v481 = Collaboration.Flow.title.getter();
  *&v481[8] = v70;
  v445 = sub_1000098E0();
  v71 = Text.init<A>(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (qword_1011B06E8 != -1)
  {
    swift_once();
  }

  v78 = qword_1011B5060;
  KeyPath = swift_getKeyPath();
  LOBYTE(v480[0]) = v75 & 1;
  *v481 = v71;
  *&v481[8] = v73;
  v481[16] = v75 & 1;
  *&v481[24] = v77;
  *&v481[32] = 256;
  *&v481[40] = KeyPath;
  *&v481[48] = v78;

  sub_10010FC20(&qword_1011B5500, &qword_100F061C0);
  sub_100B9DED0();
  v80 = v463;
  View.bold(_:)();
  v526[0] = *v481;
  v526[1] = *&v481[16];
  v526[2] = *&v481[32];
  v527 = *&v481[48];
  sub_1000095E8(v526, &qword_1011B5500, &qword_100F061C0);
  v81 = swift_getKeyPath();
  v82 = v80 + *(v460 + 36);
  *v82 = v81;
  *(v82 + 8) = 1;
  v83 = static Edge.Set.top.getter();
  v84 = v459;
  sub_100B9E020(v69 + v473, v459, v85, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_100B9D1B4(v84, type metadata accessor for Collaboration.Flow);
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v461;
  sub_10003D17C(v80, v461, &qword_1011B54C0, &qword_100F06188);
  v95 = v94 + *(v462 + 36);
  *v95 = v83;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_10003D17C(v94, v470, &qword_1011B54C8, &qword_100F06190);
  v96 = v444;
  v97 = v444[9];
  v98 = *(v69 + v97);
  *v481 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v69 + v97));
  v460 = Text.init<A>(_:)();
  v459 = v99;
  v101 = v100;
  v461 = v102;
  v462 = swift_getKeyPath();
  v456 = v101 & 1;
  v481[0] = v101 & 1;
  v103 = swift_getKeyPath();
  v463 = v78;

  v104 = static Color.secondary.getter();
  v105 = swift_getKeyPath();
  v453 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v481[0] = 0;
  v454 = static Edge.Set.bottom.getter();
  if (qword_1011B06E0 != -1)
  {
    swift_once();
  }

  v455 = v105;
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  if (v98)
  {
    v122 = v473;
    if (*(v69 + v96[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context(0);
      sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
      v123 = StateObject.wrappedValue.getter();
      v124 = _s4FlowO18ProfileEditingViewVMa(0);
      v125 = v379;
      sub_100B9E020(v69 + v122, v379 + *(v124 + 20), v126, type metadata accessor for Collaboration.Flow);
      *v125 = v123;
      LOBYTE(v123) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v127 = v426;
      v128 = v125 + *(v426 + 36);
      *v128 = v123;
      *(v128 + 1) = v129;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 4) = v132;
      v128[40] = 0;
      sub_10003D17C(v125, v472, &qword_1011B54B0, &qword_100F06178);
      v133 = v127;
      v134 = 0;
      goto LABEL_16;
    }

    v134 = 1;
  }

  else
  {
    v134 = 1;
    v122 = v473;
  }

  v133 = v426;
LABEL_16:
  (*(v425 + 56))(v472, v134, 1, v133);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
  StateObject.wrappedValue.getter();
  v135 = InlineProfileEditingView.Context.canValidate.getter();

  v136 = !v135;
  v137 = v446;
  sub_100B9E020(v69 + v122, v446, v138, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v458 = v103;
  v457 = v104;
  if (EnumCaseMultiPayload)
  {
    v409 = v117;
    v410 = v115;
    v407 = v121;
    v408 = v119;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v452) = v136;
      v176 = *(v69 + 8);
      LOBYTE(v480[0]) = *v69;
      v175 = v480[0];
      *(&v480[0] + 1) = v176;
      v177 = sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
      State.projectedValue.getter();
      v178 = v385;
      Toggle.init(isOn:label:)();
      v179 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v181 = v180;
      v183 = v182;
      v185 = v184;
      v187 = v186;
      v188 = v178 + *(sub_10010FC20(&qword_1011B5570, &qword_100F06230) + 36);
      *v188 = v179;
      *(v188 + 8) = v181;
      *(v188 + 16) = v183;
      *(v188 + 24) = v185;
      *(v188 + 32) = v187;
      *(v188 + 40) = 0;
      v189 = static Edge.Set.all.getter();
      *(v178 + *(sub_10010FC20(&qword_1011B5578, &qword_100F06238) + 36)) = v189;
      v190 = (v178 + *(v383 + 36));
      v191 = *(type metadata accessor for RoundedRectangle() + 20);
      v192 = enum case for RoundedCornerStyle.continuous(_:);
      v193 = type metadata accessor for RoundedCornerStyle();
      (*(*(v193 - 8) + 104))(&v190[v191], v192, v193);
      __asm { FMOV            V0.2D, #16.0 }

      *v190 = _Q0;
      *&v190[*(sub_10010FC20(&unk_1011B5680, &qword_100F06240) + 36)] = 256;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v199 = v386;
      sub_10003D17C(v178, v386, &qword_1011B5498, &qword_100F06160);
      v200 = (v199 + *(v384 + 36));
      v201 = v508;
      v200[4] = v507;
      v200[5] = v201;
      v200[6] = v509;
      v202 = v504;
      *v200 = v503;
      v200[1] = v202;
      v203 = v506;
      v200[2] = v505;
      v200[3] = v203;
      sub_10003D17C(v199, v429, &qword_1011B54A0, &qword_100F06168);
      v481[0] = v175;
      *&v481[8] = v176;
      v437 = v177;
      State.wrappedValue.getter();
      v204 = v448;
      v205 = (v448 + 16);
      v206 = v433;
      String.LocalizationValue.init(stringLiteral:)();
      v216 = v434;
      (*v205)(v430, v206, v434);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v217 = qword_10121B340;
      static Locale.current.getter();
      v218 = String.init(localized:table:bundle:locale:comment:)();
      v220 = v219;
      v444 = v113;
      v446 = v111;
      v449 = v109;
      v450 = v107;
      (*(v204 + 8))(v206, v216);
      *v481 = v218;
      *&v481[8] = v220;
      v448 = Text.init<A>(_:)();
      v445 = v221;
      LOBYTE(v218) = v222;
      v436 = v223;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v482[54] = v514;
      *&v482[70] = v515;
      *&v482[86] = v516;
      *&v482[102] = v517;
      *&v482[6] = v511;
      *&v482[22] = v512;
      v224 = v218 & 1;
      v483 = v218 & 1;
      *&v482[38] = v513;
      v434 = swift_getKeyPath();
      v225 = static HierarchicalShapeStyle.secondary.getter();
      v226 = static Font.footnote.getter();
      v227 = swift_getKeyPath();
      v228 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v230 = v229;
      v232 = v231;
      v234 = v233;
      v236 = v235;
      v484 = 0;
      v237 = static Edge.Set.top.getter();
      if (qword_1011B06F8 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v239 = v238;
      v241 = v240;
      v243 = v242;
      v245 = v244;
      v485 = 0;
      v246 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      *&v475[98] = *&v482[64];
      *&v475[114] = *&v482[80];
      *&v475[130] = *&v482[96];
      *&v475[34] = *v482;
      *&v475[50] = *&v482[16];
      *&v475[66] = *&v482[32];
      v486 = 0;
      *v475 = v448;
      *&v475[8] = v445;
      v475[16] = v224;
      *&v475[24] = v436;
      *&v475[32] = 256;
      *&v475[82] = *&v482[48];
      *&v475[144] = *&v482[110];
      *&v475[152] = v434;
      v475[160] = 0;
      *&v475[164] = v225;
      *&v475[168] = v227;
      *&v475[176] = v226;
      v475[184] = v228;
      *&v475[192] = v230;
      *&v475[200] = v232;
      *&v475[208] = v234;
      *&v475[216] = v236;
      v475[224] = 0;
      v475[232] = v237;
      *&v475[240] = v239;
      *&v475[248] = v241;
      *&v475[256] = v243;
      *&v475[264] = v245;
      v475[272] = 0;
      *&v475[273] = v487;
      *&v475[276] = *(&v487 + 3);
      v475[280] = v246;
      *&v475[281] = v528;
      *&v475[284] = *(&v528 + 3);
      *&v475[288] = v247;
      *&v475[296] = v248;
      *&v475[304] = v249;
      *&v475[312] = v250;
      v475[320] = 0;
      v251 = v469;
      v252 = Collaboration.Flow.buttonActionTitle.getter();
      v254 = v253;
      v255 = v451;
      sub_100B9E020(v251, v451, v256, type metadata accessor for Collaboration.Flow.View);
      v257 = (*(v435 + 80) + 16) & ~*(v435 + 80);
      v258 = swift_allocObject();
      sub_100B9D234(v255, v258 + v257, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v480[0]) = 0;
      State.init(wrappedValue:)();
      v259 = v481[0];
      v260 = *&v481[8];
      v261 = swift_getKeyPath();
      v476 = 0;
      v262 = swift_getKeyPath();
      v263 = swift_allocObject();
      *(v263 + 16) = v452 & 1;
      *v481 = v252;
      *&v481[8] = v254;
      v481[16] = 0;
      *&v481[17] = v479[0];
      *&v481[20] = *(v479 + 3);
      *&v481[24] = sub_100B9E764;
      *&v481[32] = v258;
      v481[40] = v259;
      *&v481[41] = v478[0];
      *&v481[44] = *(v478 + 3);
      *&v481[48] = v260;
      *&v481[56] = v261;
      v481[64] = v476;
      *&v481[65] = *v477;
      *&v481[68] = *&v477[3];
      *&v481[72] = v262;
      *&v481[80] = sub_100B9FA58;
      *&v481[88] = v263;
      v264 = *(v251 + 24);
      LOBYTE(v474[0]) = *(v251 + 16);
      *(&v474[0] + 1) = v264;
      State.projectedValue.getter();
      v452 = &v378;
      LODWORD(v451) = LOBYTE(v480[1]);
      __chkstk_darwin();
      v469 = sub_10010FC20(&qword_1011B5548, &qword_100F06218);
      v473 = sub_100B9E610();
      v265 = v420;
      View.alert(isPresented:content:)();

      v497 = *&v481[32];
      v498 = *&v481[48];
      v499 = *&v481[64];
      v500 = *&v481[80];
      v495 = *v481;
      v496 = *&v481[16];
      sub_1000095E8(&v495, &qword_1011B5548, &qword_100F06218);
      v266 = v402;
      sub_1000089F8(v429, v402, &qword_1011B54A0, &qword_100F06168);
      memcpy(v474, v475, 0x141uLL);
      v267 = *(v447 + 16);
      v268 = v403;
      v267(v403, v265, v431);
      v269 = v404;
      sub_1000089F8(v266, v404, &qword_1011B54A0, &qword_100F06168);
      v270 = sub_10010FC20(&qword_1011B5580, &qword_100F06248);
      v271 = *(v270 + 48);
      memcpy(v480, v474, 0x141uLL);
      memcpy((v269 + v271), v474, 0x141uLL);
      v272 = v431;
      v267((v269 + *(v270 + 64)), v268, v431);
      sub_1000089F8(v475, v481, &qword_1011B5588, &qword_100F06250);
      sub_1000089F8(v480, v481, &qword_1011B5588, &qword_100F06250);
      v452 = *(v447 + 8);
      v447 += 8;
      (v452)(v268, v272);
      memcpy(v481, v474, sizeof(v481));
      sub_1000095E8(v481, &qword_1011B5588, &qword_100F06250);
      sub_1000095E8(v266, &qword_1011B54A0, &qword_100F06168);
      sub_1000089F8(v269, v423, &qword_1011B5488, &qword_100F06150);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_1011B5538, &qword_1011B5488, &qword_100F06150, &protocol conformance descriptor for TupleView<A>);
      v273 = v424;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v273, v441, &qword_1011B5480, &qword_100F06148);
      swift_storeEnumTagMultiPayload();
      sub_100B9E558();
      sub_100020674(&qword_1011B5558, &qword_1011B5460, &qword_100F06120, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v475, &qword_1011B5588, &qword_100F06250);
      sub_1000095E8(v273, &qword_1011B5480, &qword_100F06148);
      sub_1000095E8(v269, &qword_1011B5488, &qword_100F06150);
      (v452)(v420, v431);
      sub_1000095E8(v429, &qword_1011B54A0, &qword_100F06168);
      v107 = v450;
      v109 = v449;
      v111 = v446;
      v113 = v444;
      goto LABEL_41;
    }

    v140 = *(v436 + 32);
    v473 = v436 + 32;
    v452 = v140;
    (v140)(v449, v137, v450);
    v141 = v427;
    sub_100B82320(v427);
    v142 = Playlist.Collaborator.name.getter();
    v144 = v143;
    if (qword_1011B06D8 != -1)
    {
      swift_once();
    }

    (*(v415 + 104))(v428, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v417);
    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    v146 = v389;
    sub_1000089F8(v141, v389, &qword_1011B5930, &qword_100EFDE70);
    v147 = type metadata accessor for ArtworkImage.ViewModel(0);
    v446 = *(*(v147 - 8) + 48);
    v148 = (v446)(v146, 1, v147);
    v149 = v399;
    v150 = v391;
    v447 = v145;
    if (v148 == 1)
    {
      sub_1000095E8(v146, &qword_1011B5930, &qword_100EFDE70);
      v151 = type metadata accessor for Artwork();
      (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
    }

    else
    {
      v207 = type metadata accessor for Artwork();
      v208 = *(v207 - 8);
      (*(v208 + 16))(v150, v146, v207);
      sub_100B9D1B4(v146, type metadata accessor for ArtworkImage.ViewModel);
      (*(v208 + 56))(v150, 0, 1, v207);
    }

    sub_1000089F8(v150, v392, &unk_1011B55F0, &unk_100EFFDC0);
    ArtworkImage.init(_:width:height:)();
    sub_1000095E8(v150, &unk_1011B55F0, &unk_100EFFDC0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v209 = v390;
    sub_1000089F8(v427, v390, &qword_1011B5930, &qword_100EFDE70);
    if ((v446)(v209, 1, v147) == 1)
    {
      sub_1000095E8(v209, &qword_1011B5930, &qword_100EFDE70);
      v210 = v381;
      v211 = v382;
      (*(v149 + 56))(v381, 1, 1, v382);
      v212 = v380;
    }

    else
    {
      v210 = v381;
      sub_1000089F8(v209 + *(v147 + 20), v381, &qword_1011B4720, &qword_100F02D00);
      sub_100B9D1B4(v209, type metadata accessor for ArtworkImage.ViewModel);
      v211 = v382;
      v213 = (*(v149 + 48))(v210, 1, v382);
      v212 = v380;
      if (v213 != 1)
      {
        v215 = v398;
        (*(v149 + 32))(v398, v210, v211);
LABEL_38:
        v274 = v414;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v149 + 8))(v215, v211);
        v275 = v401;
        v276 = *(v400 + 8);
        v276(v274, v401);
        v277 = v397;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v276(v212, v275);
        sub_100B5A2A8();
        v278 = v396;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v276(v277, v275);
        v276(v416, v275);
        (*(v415 + 8))(v428, v417);
        sub_1000095E8(v427, &qword_1011B5930, &qword_100EFDE70);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v279 = (v278 + *(sub_10010FC20(&unk_1011B5940, &qword_100F061D0) + 36));
        v280 = v529;
        *v279 = v528;
        v279[1] = v280;
        v279[2] = v530;
        *(v278 + *(v394 + 36)) = 256;
        LOBYTE(v274) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v282 = v281;
        v284 = v283;
        v286 = v285;
        v288 = v287;
        v289 = v393;
        sub_10003D17C(v278, v393, &qword_1011B5468, &qword_100F06128);
        v290 = v289 + *(v395 + 36);
        *v290 = v274;
        *(v290 + 8) = v282;
        *(v290 + 16) = v284;
        *(v290 + 24) = v286;
        *(v290 + 32) = v288;
        *(v290 + 40) = 0;
        sub_10003D17C(v289, v437, &qword_1011B5950, &qword_100F06130);
        v291 = v433;
        String.LocalizationValue.init(stringLiteral:)();
        v292 = v448;
        v293 = *(v448 + 16);
        v294 = v434;
        v447 = v448 + 16;
        v446 = v293;
        v293();
        if (qword_1011B0430 != -1)
        {
          swift_once();
        }

        v295 = qword_10121B340;
        v296 = qword_10121B340;
        v445 = v295;
        v297 = v296;
        static Locale.current.getter();
        v298 = v297;
        v299 = String.init(localized:table:bundle:locale:comment:)();
        v424 = v300;
        v425 = v299;
        v301 = *(v292 + 8);
        v448 = v292 + 8;
        v444 = v301;
        v302.n128_f64[0] = (v301)(v291, v294);
        v431 = type metadata accessor for Collaboration.Flow.View;
        v303 = v451;
        v304 = sub_100B9E020(v69, v451, v302, type metadata accessor for Collaboration.Flow.View);
        v305 = v436;
        v306 = *(v436 + 16);
        v428 = (v436 + 16);
        v429 = v306;
        v307 = v419;
        v308 = v450;
        v306(v419, v449, v450, v304);
        v309 = *(v435 + 80);
        v310 = *(v305 + 80);
        v311 = (v309 + 16) & ~v309;
        v435 = v311;
        v312 = (v438 + v310 + v311) & ~v310;
        v438 = v309 | v310;
        v313 = v312;
        v426 = v312;
        v314 = swift_allocObject();
        v427 = type metadata accessor for Collaboration.Flow.View;
        sub_100B9D234(v303, v314 + v311, type metadata accessor for Collaboration.Flow.View);
        (v452)(v314 + v313, v307, v308);
        LOBYTE(v480[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v307) = v481[0];
        v315 = *&v481[8];
        v316 = swift_getKeyPath();
        LOBYTE(v478[0]) = 0;
        v317 = static Edge.Set.top.getter();
        v318 = v430;
        v319 = v317;
        EdgeInsets.init(_all:)();
        v475[0] = 0;
        *&v503 = v425;
        *(&v503 + 1) = v424;
        LOBYTE(v504) = 0;
        *(&v504 + 1) = sub_100B9E088;
        *&v505 = v314;
        BYTE8(v505) = v307;
        *&v506 = v315;
        *(&v506 + 1) = v316;
        LOBYTE(v507) = v478[0];
        *(&v507 + 1) = *v481;
        DWORD1(v507) = *&v481[3];
        BYTE8(v507) = v319;
        HIDWORD(v507) = *(v480 + 3);
        *(&v507 + 9) = v480[0];
        *&v508 = v320;
        *(&v508 + 1) = v321;
        *&v509 = v322;
        *(&v509 + 1) = v323;
        v510 = 0;
        v324 = v433;
        String.LocalizationValue.init(stringLiteral:)();
        v325 = v434;
        (v446)(v318, v324, v434);
        static Locale.current.getter();
        v447 = String.init(localized:table:bundle:locale:comment:)();
        v446 = v326;
        v327.n128_f64[0] = (v444)(v324, v325);
        v328 = v451;
        v329 = sub_100B9E020(v469, v451, v327, v431);
        v330 = v419;
        v331 = v450;
        v429(v419, v449, v450, v329);
        v332 = v426;
        v333 = swift_allocObject();
        sub_100B9D234(v328, v333 + v435, v427);
        (v452)(v333 + v332, v330, v331);
        LOBYTE(v480[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v330) = v481[0];
        v334 = *&v481[8];
        v335 = swift_getKeyPath();
        LOBYTE(v479[0]) = 0;
        LOBYTE(v328) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v475[0] = 0;
        *&v511 = v447;
        *(&v511 + 1) = v446;
        LOBYTE(v512) = 1;
        *(&v512 + 1) = sub_100B9E418;
        *&v513 = v333;
        BYTE8(v513) = v330;
        *&v514 = v334;
        *(&v514 + 1) = v335;
        LOBYTE(v515) = v479[0];
        *(&v515 + 1) = *v481;
        DWORD1(v515) = *&v481[3];
        BYTE8(v515) = v328;
        HIDWORD(v515) = *(v480 + 3);
        *(&v515 + 9) = v480[0];
        *&v516 = v336;
        *(&v516 + 1) = v337;
        *&v517 = v338;
        *(&v517 + 1) = v339;
        v518 = 0;
        v340 = v405;
        sub_1000089F8(v437, v405, &qword_1011B5950, &qword_100F06130);
        v499 = v507;
        v500 = v508;
        v501 = v509;
        v495 = v503;
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v491 = v515;
        v492 = v516;
        v493 = v517;
        v487 = v511;
        v488 = v512;
        v489 = v513;
        v502 = v510;
        v494 = v518;
        v490 = v514;
        v341 = v406;
        sub_1000089F8(v340, v406, &qword_1011B5950, &qword_100F06130);
        v342 = sub_10010FC20(&qword_1011B5520, &qword_100F06208);
        v343 = v341 + *(v342 + 48);
        v344 = v502;
        LOBYTE(v474[7]) = v502;
        v346 = v500;
        v474[4] = v499;
        v345 = v499;
        v474[5] = v500;
        v474[6] = v501;
        v347 = v501;
        v349 = v496;
        v474[0] = v495;
        v348 = v495;
        v474[1] = v496;
        v350 = v498;
        v474[2] = v497;
        v474[3] = v498;
        *(v343 + 32) = v497;
        *(v343 + 48) = v350;
        *v343 = v348;
        *(v343 + 16) = v349;
        *(v343 + 112) = v344;
        *(v343 + 80) = v346;
        *(v343 + 96) = v347;
        *(v343 + 64) = v345;
        v351 = v341 + *(v342 + 64);
        *&v475[32] = v489;
        *&v475[48] = v490;
        *v475 = v487;
        *&v475[16] = v488;
        *&v475[64] = v491;
        *&v475[80] = v492;
        *&v475[96] = v493;
        v475[112] = v494;
        v352 = v491;
        v353 = v492;
        *(v351 + 64) = v491;
        *(v351 + 80) = v353;
        v354 = v493;
        *(v351 + 96) = v493;
        v355 = v494;
        *(v351 + 112) = v494;
        v356 = v487;
        v357 = v488;
        *v351 = v487;
        *(v351 + 16) = v357;
        v358 = v489;
        v359 = v490;
        *(v351 + 32) = v489;
        *(v351 + 48) = v359;
        v480[0] = v356;
        v480[1] = v357;
        v480[2] = v358;
        v480[3] = v359;
        v480[4] = v352;
        v480[5] = v353;
        v480[6] = v354;
        LOBYTE(v480[7]) = v355;
        sub_1000089F8(&v503, v481, &qword_1011B5528, &qword_100F06210);
        sub_1000089F8(&v511, v481, &qword_1011B5528, &qword_100F06210);
        sub_1000089F8(v474, v481, &qword_1011B5528, &qword_100F06210);
        sub_1000089F8(v475, v481, &qword_1011B5528, &qword_100F06210);
        sub_1000095E8(v480, &qword_1011B5528, &qword_100F06210);
        *&v481[64] = v499;
        *&v481[80] = v500;
        *&v481[96] = v501;
        v481[112] = v502;
        *v481 = v495;
        *&v481[16] = v496;
        *&v481[32] = v497;
        *&v481[48] = v498;
        sub_1000095E8(v481, &qword_1011B5528, &qword_100F06210);
        sub_1000095E8(v340, &qword_1011B5950, &qword_100F06130);
        sub_1000089F8(v341, v441, &qword_1011B5460, &qword_100F06120);
        swift_storeEnumTagMultiPayload();
        sub_100B9E558();
        sub_100020674(&qword_1011B5558, &qword_1011B5460, &qword_100F06120, &protocol conformance descriptor for TupleView<A>);
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(&v511, &qword_1011B5528, &qword_100F06210);
        sub_1000095E8(&v503, &qword_1011B5528, &qword_100F06210);
        sub_1000095E8(v341, &qword_1011B5460, &qword_100F06120);
        sub_1000095E8(v437, &qword_1011B5950, &qword_100F06130);
        (*(v436 + 8))(v449, v450);
LABEL_41:
        v117 = v409;
        v115 = v410;
        v121 = v407;
        v119 = v408;
        goto LABEL_42;
      }
    }

    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v214 = sub_1000060E4(v211, static Artwork.CropStyle.fallback);
    v215 = v398;
    (*(v149 + 16))(v398, v214, v211);
    if ((*(v149 + 48))(v210, 1, v211) != 1)
    {
      sub_1000095E8(v210, &qword_1011B4720, &qword_100F02D00);
    }

    goto LABEL_38;
  }

  v152 = sub_10010FC20(&qword_1011B5088, &qword_100F05C60);
  v153 = v411;
  v154 = v412;
  v155 = *(v412 + 32);
  v156 = v413;
  v155(v411, v137 + *(v152 + 48), v413);
  LODWORD(v452) = v136;
  v473 = Collaboration.Flow.buttonActionTitle.getter();
  v450 = v157;
  v158 = v451;
  v160 = sub_100B9E020(v69, v451, v159, type metadata accessor for Collaboration.Flow.View);
  v161 = v388;
  v162 = v156;
  (*(v154 + 16))(v388, v153, v156, v160);
  v163 = (*(v435 + 80) + 16) & ~*(v435 + 80);
  v164 = (v438 + *(v154 + 80) + v163) & ~*(v154 + 80);
  v165 = swift_allocObject();
  sub_100B9D234(v158, v165 + v163, type metadata accessor for Collaboration.Flow.View);
  v155((v165 + v164), v161, v162);
  LOBYTE(v480[0]) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v163) = v481[0];
  v166 = *&v481[8];
  v167 = swift_getKeyPath();
  v475[0] = 0;
  v168 = swift_getKeyPath();
  v169 = swift_allocObject();
  *(v169 + 16) = v452 & 1;
  *v481 = v473;
  *&v481[8] = v450;
  v481[16] = 0;
  *&v481[24] = sub_100B9E71C;
  *&v481[32] = v165;
  v481[40] = v163;
  *&v481[48] = v166;
  *&v481[56] = v167;
  v481[64] = v475[0];
  *&v481[65] = v480[0];
  *&v481[68] = *(v480 + 3);
  *&v481[72] = v168;
  *&v481[80] = sub_100B9FA58;
  *&v481[88] = v169;
  v170 = *&v481[48];
  v171 = v423;
  v423[2] = *&v481[32];
  v171[3] = v170;
  v172 = *&v481[80];
  v171[4] = *&v481[64];
  v171[5] = v172;
  v173 = *&v481[16];
  *v171 = *v481;
  v171[1] = v173;
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(v481, v480, &qword_1011B5548, &qword_100F06218);
  sub_10010FC20(&qword_1011B5548, &qword_100F06218);
  sub_100020674(&qword_1011B5538, &qword_1011B5488, &qword_100F06150, &protocol conformance descriptor for TupleView<A>);
  sub_100B9E610();
  v174 = v424;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v174, v441, &qword_1011B5480, &qword_100F06148);
  swift_storeEnumTagMultiPayload();
  sub_100B9E558();
  sub_100020674(&qword_1011B5558, &qword_1011B5460, &qword_100F06120, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v481, &qword_1011B5548, &qword_100F06218);
  sub_1000095E8(v174, &qword_1011B5480, &qword_100F06148);
  (*(v412 + 8))(v411, v413);
  sub_1000095E8(v446, &qword_1011B5090, &qword_100F05C68);
LABEL_42:
  v360 = v464;
  sub_1000089F8(v468, v464, &qword_1011B54D8, &qword_100F061A0);
  v361 = v466;
  sub_1000089F8(v470, v466, &qword_1011B54C8, &qword_100F06190);
  sub_1000089F8(v472, v465, &qword_1011B54B8, &qword_100F06180);
  sub_1000089F8(v471, v467, &qword_1011B54A8, &qword_100F06170);
  v362 = v360;
  v363 = v443;
  sub_1000089F8(v362, v443, &qword_1011B54D8, &qword_100F061A0);
  v364 = sub_10010FC20(&qword_1011B5560, &qword_100F06220);
  sub_1000089F8(v361, v363 + v364[12], &qword_1011B54C8, &qword_100F06190);
  v365 = v363 + v364[16];
  *&v480[0] = v460;
  *(&v480[0] + 1) = v459;
  LOBYTE(v480[1]) = v456;
  *(&v480[1] + 1) = *v523;
  DWORD1(v480[1]) = *&v523[3];
  *(&v480[1] + 1) = v461;
  LOWORD(v480[2]) = 256;
  *(&v480[2] + 2) = v521;
  WORD3(v480[2]) = v522;
  *(&v480[2] + 1) = v462;
  *&v480[3] = v463;
  *(&v480[3] + 1) = v458;
  LOBYTE(v480[4]) = 1;
  *(&v480[4] + 1) = *v520;
  DWORD1(v480[4]) = *&v520[3];
  *(&v480[4] + 1) = v455;
  *&v480[5] = v457;
  BYTE8(v480[5]) = v453;
  *(&v480[5] + 9) = *v519;
  HIDWORD(v480[5]) = *&v519[3];
  *&v480[6] = v107;
  *(&v480[6] + 1) = v109;
  *&v480[7] = v111;
  *(&v480[7] + 1) = v113;
  LOBYTE(v480[8]) = 0;
  DWORD1(v480[8]) = *&v525[3];
  *(&v480[8] + 1) = *v525;
  BYTE8(v480[8]) = v454;
  HIDWORD(v480[8]) = *&v524[3];
  *(&v480[8] + 9) = *v524;
  *&v480[9] = v115;
  *(&v480[9] + 1) = v117;
  *&v480[10] = v119;
  *(&v480[10] + 1) = v121;
  LOBYTE(v480[11]) = 0;
  v366 = v480[8];
  v367 = v480[9];
  v368 = v480[10];
  *(v365 + 176) = 0;
  *(v365 + 144) = v367;
  *(v365 + 160) = v368;
  v369 = v480[0];
  v370 = v480[1];
  v371 = v480[3];
  *(v365 + 32) = v480[2];
  *(v365 + 48) = v371;
  *v365 = v369;
  *(v365 + 16) = v370;
  v372 = v480[4];
  v373 = v480[5];
  v374 = v480[6];
  *(v365 + 112) = v480[7];
  *(v365 + 128) = v366;
  *(v365 + 80) = v373;
  *(v365 + 96) = v374;
  *(v365 + 64) = v372;
  v375 = v465;
  sub_1000089F8(v465, v363 + v364[20], &qword_1011B54B8, &qword_100F06180);
  v376 = v467;
  sub_1000089F8(v467, v363 + v364[24], &qword_1011B54A8, &qword_100F06170);
  sub_1000089F8(v480, v481, &qword_1011B5568, &qword_100F06228);
  sub_1000095E8(v471, &qword_1011B54A8, &qword_100F06170);
  sub_1000095E8(v472, &qword_1011B54B8, &qword_100F06180);
  sub_1000095E8(v470, &qword_1011B54C8, &qword_100F06190);
  sub_1000095E8(v468, &qword_1011B54D8, &qword_100F061A0);
  sub_1000095E8(v376, &qword_1011B54A8, &qword_100F06170);
  sub_1000095E8(v375, &qword_1011B54B8, &qword_100F06180);
  *v481 = v460;
  *&v481[8] = v459;
  v481[16] = v456;
  *&v481[17] = *v523;
  *&v481[20] = *&v523[3];
  *&v481[24] = v461;
  *&v481[32] = 256;
  *&v481[34] = v521;
  *&v481[38] = v522;
  *&v481[40] = v462;
  *&v481[48] = v463;
  *&v481[56] = v458;
  v481[64] = 1;
  *&v481[68] = *&v520[3];
  *&v481[65] = *v520;
  *&v481[72] = v455;
  *&v481[80] = v457;
  v481[88] = v453;
  *&v481[92] = *&v519[3];
  *&v481[89] = *v519;
  *&v481[96] = v107;
  *&v481[104] = v109;
  *&v481[112] = v111;
  *&v481[120] = v113;
  v481[128] = 0;
  *&v481[129] = *v525;
  *&v481[132] = *&v525[3];
  v481[136] = v454;
  *&v481[140] = *&v524[3];
  *&v481[137] = *v524;
  *&v481[144] = v115;
  *&v481[152] = v117;
  *&v481[160] = v119;
  *&v481[168] = v121;
  v481[176] = 0;
  sub_1000095E8(v481, &qword_1011B5568, &qword_100F06228);
  sub_1000095E8(v466, &qword_1011B54C8, &qword_100F06190);
  return sub_1000095E8(v464, &qword_1011B54D8, &qword_100F061A0);
}

uint64_t sub_100B96C88@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v8 = qword_10121B340;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_100B96E98(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  v9.n128_f64[0] = (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100B9E020(a2, v5, v9, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_100B284E0(0, 0, v7, &unk_100F06290, v12);

  return result;
}

uint64_t sub_100B97078()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_100B97128(0);
}

uint64_t sub_100B97128(char a1)
{
  v2[10] = v1;
  v2[11] = sub_10010FC20(&qword_1011B5590, &qword_100F06258);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_100B97300;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_100B976C0;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_100B97300()
{
  *(*v1 + 152) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100B98100;
  }

  else
  {
    v4 = sub_100B97458;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100B97458()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100B97C2C;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
    State.wrappedValue.getter();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_100B97E70;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_100B976C0(char a1)
{
  *(*v1 + 35) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B97804, v3, v2);
}

uint64_t sub_100B97804()
{
  if (*(v0 + 35) == 1)
  {

    sub_100B9EB3C();
    v1 = swift_allocError();
    *v2 = xmmword_100EFDC40;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
        State.wrappedValue.setter();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_100452604(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_1000095E8(v19, &qword_1011B5590, &qword_100F06258);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v11 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100B97C2C;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
    State.wrappedValue.getter();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_100B97E70;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_100B97C2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100B982B0;
  }

  else
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100B97D7C;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100B97D7C()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.getter();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_100B97E70;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_100B97E70()
{
  *(*v1 + 208) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100B9846C;
  }

  else
  {
    v4 = sub_100B97FC8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100B97FC8()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_1000095E8(v5, &qword_1011B5590, &qword_100F06258);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100B98100()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590, &qword_100F06258);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B982B0()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590, &qword_100F06258);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B9846C()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    sub_100452604(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_1000095E8(v7, &qword_1011B5590, &qword_100F06258);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100B9861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v62 = a2;
  v58 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  __chkstk_darwin();
  v59 = v2;
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v46 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v6 + 16);
  v48 = v6 + 16;
  v49(v8, v10, v5);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v11 = qword_10121B340;
  v12 = qword_10121B340;
  v63 = v11;
  v13 = v12;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v47 = v18;
  v66 = v15;
  v67 = v17;
  v46 = sub_1000098E0();
  v19 = Text.init<A>(_:)();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v55 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v49;
  v49(v8, v10, v5);
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v18(v10, v5);
  v66 = v24;
  v67 = v26;
  v27 = Text.init<A>(_:)();
  v52 = v28;
  v53 = v27;
  v50 = v29 & 1;
  v51 = v30;
  String.LocalizationValue.init(stringLiteral:)();
  v23(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v47(v10, v5);
  v66 = v31;
  v67 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v63 = type metadata accessor for Collaboration.Flow.View;
  v39 = v61;
  sub_100B9E020(v65, v61, v40, type metadata accessor for Collaboration.Flow.View);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  sub_100B9D234(v39, v42 + v41, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.default(_:action:)();
  sub_10011895C(v34, v36, v38 & 1);

  sub_100B9E020(v65, v39, v43, v63);
  v44 = swift_allocObject();
  sub_100B9D234(v39, v44 + v41, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.cancel(_:)();

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

double sub_100B98C10(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8.n128_f64[0] = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100B9E020(a1, v4, v8, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v4, v11 + v10, type metadata accessor for Collaboration.Flow.View);
  sub_100B284E0(0, 0, v6, &unk_100F06270, v11);

  return result;
}

uint64_t sub_100B98DF0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100B97128(1);
}

uint64_t sub_100B98EA0(uint64_t a1)
{
  sub_10010FC20(&qword_1011B5590, &qword_100F06258);
  __chkstk_darwin();
  v3 = (&v8 - v2);
  v4 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_100B9EB3C();
  v5 = swift_allocError();
  *v6 = xmmword_100EFDC40;
  *(v6 + 16) = 3;
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v3);
  return sub_1000095E8(v3, &qword_1011B5590, &qword_100F06258);
}

uint64_t sub_100B98FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590, &qword_100F06258);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B99078, v7, v6);
}

uint64_t sub_100B99078()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_100B992A0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_100B99470;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_100B992A0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100B996A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100B993BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100B993BC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100B99470;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_100B99470()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B9978C;
  }

  else
  {
    v5 = sub_100B995AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B995AC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = type metadata accessor for Playlist();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_1000095E8(v2, &qword_1011B5590, &qword_100F06258);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B996A8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590, &qword_100F06258);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B9978C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590, &qword_100F06258);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100B99868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590, &qword_100F06258);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B9993C, v7, v6);
}

uint64_t sub_100B9993C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100B999F8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_100B999F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B99B34;
  }

  else
  {
    v5 = sub_100B9FA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B99B34()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_1000095E8(v3, &qword_1011B5590, &qword_100F06258);

  v6 = v0[1];

  return v6();
}

double sub_100B99C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - v10;
  v12 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = type metadata accessor for TaskPriority();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v19 = sub_100B9E020(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8, v19);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_100B9D234(v14, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_100B284E0(0, 0, v16, v26, v23);

  return result;
}

uint64_t sub_100B99EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10010FC20(&qword_1011B5590, &qword_100F06258);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100B99F98, v7, v6);
}

uint64_t sub_100B99F98()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100B9A054;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_100B9A054()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100B9FA50;
  }

  else
  {
    v5 = sub_100B9FA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_100B9F774();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_100B9A2A8()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_100B9A30C@<X0>(uint64_t *a1@<X8>)
{
  sub_10010FC20(&qword_1011B4EC8, &qword_100F05A30);
  __chkstk_darwin();
  v3 = &v8 - v2;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v4 = type metadata accessor for SymbolRenderingMode();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = Image.symbolRenderingMode(_:)();

  sub_1000095E8(v3, &qword_1011B4EC8, &qword_100F05A30);
  v6 = static Color.accentColor.getter();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t sub_100B9A448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v3 = type metadata accessor for Font.Leading();
  v130 = *(v3 - 8);
  v131 = v3;
  __chkstk_darwin();
  v129 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v128 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v112 - v10;
  v115 = sub_10010FC20(&qword_1011B53F8, &qword_100F06020);
  __chkstk_darwin();
  v13 = &v112 - v12;
  v116 = sub_10010FC20(&qword_1011B5400, &qword_100F06028);
  __chkstk_darwin();
  v119 = &v112 - v14;
  v15 = sub_10010FC20(&qword_1011B5408, &qword_100F06030);
  v126 = *(v15 - 8);
  v127 = v15;
  __chkstk_darwin();
  v117 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v112 - v17;
  v18 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5410, &qword_100F06038);
  __chkstk_darwin();
  v133 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v112 - v22;
  v24 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v125 = v18;
  swift_storeEnumTagMultiPayload();
  v124 = v24;
  LOBYTE(v24) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v135 + v24), v20);
  sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
  v132 = v23;
  v122 = v6;
  v123 = v7;
  v120 = v9;
  v121 = v11;
  if (v24)
  {
    v25 = 1;
    v26 = v127;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v27 = v128;
    (*(v128 + 16))(v9, v11, v7);
    v28 = v27;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v29 = qword_10121B340;
    static Locale.current.getter();
    v30 = String.init(localized:table:bundle:locale:comment:)();
    v32 = v31;
    (*(v28 + 8))(v11, v7);
    *&v158 = v30;
    *(&v158 + 1) = v32;
    sub_1000098E0();
    v33 = Text.init<A>(_:)();
    v113 = v34;
    v114 = v35;
    v37 = v36;
    v38 = &v13[*(sub_10010FC20(&qword_1011B5418, &qword_100F06040) + 36)];
    v39 = *(sub_10010FC20(&qword_1011B5420, &qword_100F06048) + 28);
    v40 = enum case for Text.Case.uppercase(_:);
    v41 = type metadata accessor for Text.Case();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38 + v39, v40, v41);
    (*(v42 + 56))(v38 + v39, 0, 1, v41);
    *v38 = swift_getKeyPath();
    v43 = v113;
    *v13 = v33;
    *(v13 + 1) = v43;
    v13[16] = v37 & 1;
    *(v13 + 3) = v114;
    v44 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v46 = &v13[*(sub_10010FC20(&qword_1011B5428, &qword_100F060B0) + 36)];
    *v46 = KeyPath;
    v46[1] = v44;
    v47 = static Color.secondary.getter();
    v48 = swift_getKeyPath();
    v49 = &v13[*(v115 + 36)];
    *v49 = v48;
    v49[1] = v47;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v50 = v119;
    sub_10003D17C(v13, v119, &qword_1011B53F8, &qword_100F06020);
    v51 = (v50 + *(v116 + 36));
    v52 = v172;
    v51[4] = v171;
    v51[5] = v52;
    v51[6] = v173;
    v53 = v168;
    *v51 = v167;
    v51[1] = v53;
    v54 = v170;
    v51[2] = v169;
    v51[3] = v54;
    LOBYTE(v47) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v117;
    sub_10003D17C(v50, v117, &qword_1011B5400, &qword_100F06028);
    v26 = v127;
    v64 = v63 + *(v127 + 36);
    *v64 = v47;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = v63;
    v66 = v118;
    sub_10003D17C(v65, v118, &qword_1011B5408, &qword_100F06030);
    v23 = v132;
    sub_10003D17C(v66, v132, &qword_1011B5408, &qword_100F06030);
    v25 = 0;
  }

  v68 = v130;
  v67 = v131;
  v69 = v129;
  (*(v126 + 56))(v23, v25, 1, v26);
  v70 = v135;

  sub_100BA5558(&v174);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v70) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v70 + v124), v20);
  sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
  if (v70)
  {
    sub_100B9DDA8(&v158);
  }

  else
  {
    v71 = v121;
    String.LocalizationValue.init(stringLiteral:)();
    v72 = v128;
    v73 = v123;
    (*(v128 + 16))(v120, v71, v123);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v74 = qword_10121B340;
    static Locale.current.getter();
    v75 = String.init(localized:table:bundle:locale:comment:)();
    v77 = v76;
    (*(v72 + 8))(v71, v73);
    *&v158 = v75;
    *(&v158 + 1) = v77;
    sub_1000098E0();
    v135 = Text.init<A>(_:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = swift_getKeyPath();
    LOBYTE(v75) = v81 & 1;
    LOBYTE(v158) = v81 & 1;
    static Font.footnote.getter();
    (*(v68 + 104))(v69, enum case for Font.Leading.tight(_:), v67);
    v85 = Font.leading(_:)();

    (*(v68 + 8))(v69, v67);
    v86 = swift_getKeyPath();
    v87 = static Color.secondary.getter();
    v88 = swift_getKeyPath();
    v89 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v158) = 0;
    *&v149 = v135;
    *(&v149 + 1) = v79;
    LOBYTE(v150) = v75;
    *(&v150 + 1) = v83;
    LOWORD(v151) = 256;
    *(&v151 + 1) = v84;
    LOBYTE(v152) = 1;
    *(&v152 + 1) = v86;
    *&v153 = v85;
    *(&v153 + 1) = v88;
    *&v154 = v87;
    BYTE8(v154) = v89;
    *&v155 = v90;
    *(&v155 + 1) = v91;
    *&v156 = v92;
    *(&v156 + 1) = v93;
    v157 = 0;
    UIScreen.Dimensions.size.getter();
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v163 = v154;
    v158 = v149;
    v159 = v150;
    v23 = v132;
  }

  v94 = v133;
  sub_1000089F8(v23, v133, &qword_1011B5410, &qword_100F06038);
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v138 = v160;
  v139 = v161;
  v140 = v162;
  v141 = v163;
  v136 = v158;
  v137 = v159;
  v95 = v134;
  sub_1000089F8(v94, v134, &qword_1011B5410, &qword_100F06038);
  v96 = sub_10010FC20(&qword_1011B5430, &qword_100F060E8);
  v97 = (v95 + *(v96 + 48));
  v98 = v178;
  v99 = v177;
  v145[3] = v177;
  v145[4] = v178;
  v100 = v175;
  v101 = v174;
  v145[1] = v175;
  v145[2] = v176;
  v145[0] = v174;
  v97[2] = v176;
  v97[3] = v99;
  v97[4] = v98;
  *v97 = v101;
  v97[1] = v100;
  v102 = *(v96 + 64);
  v103 = v143;
  v146[6] = v142;
  v146[7] = v143;
  v105 = v140;
  v104 = v141;
  v146[4] = v140;
  v146[5] = v141;
  v106 = v138;
  v107 = v139;
  v146[2] = v138;
  v146[3] = v139;
  v109 = v136;
  v108 = v137;
  v146[0] = v136;
  v146[1] = v137;
  v110 = v95 + v102;
  *(v110 + 96) = v142;
  *(v110 + 112) = v103;
  v147 = v144;
  *(v110 + 128) = v144;
  *(v110 + 32) = v106;
  *(v110 + 48) = v107;
  *(v110 + 64) = v105;
  *(v110 + 80) = v104;
  *v110 = v109;
  *(v110 + 16) = v108;
  sub_100B9DCF8(v145, &v149);
  sub_1000089F8(v146, &v149, &qword_1011B5438, &unk_100F060F0);
  sub_1000095E8(v23, &qword_1011B5410, &qword_100F06038);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v149 = v136;
  v150 = v137;
  sub_1000095E8(&v149, &qword_1011B5438, &unk_100F060F0);
  v148[2] = v176;
  v148[3] = v177;
  v148[4] = v178;
  v148[0] = v174;
  v148[1] = v175;
  sub_100B9DD54(v148);
  return sub_1000095E8(v94, &qword_1011B5410, &qword_100F06038);
}

uint64_t sub_100B9B0C4@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = static HorizontalAlignment.center.getter();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  sub_10010FC20(a3, a4);
  return a5(v6);
}

uint64_t sub_100B9B130@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v77 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin();
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v75 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10010FC20(&qword_1011B5350, &qword_100F05F08);
  __chkstk_darwin();
  v76 = &v64 - v7;
  v8 = sub_10010FC20(&qword_1011B5358, &qword_100F05F10) - 8;
  __chkstk_darwin();
  v10 = &v64 - v9;
  v11 = sub_10010FC20(&qword_1011B5360, &qword_100F05F18) - 8;
  __chkstk_darwin();
  v13 = &v64 - v12;
  v68 = sub_10010FC20(&qword_1011B5368, &qword_100F05F20);
  __chkstk_darwin();
  v15 = &v64 - v14;
  v69 = sub_10010FC20(&qword_1011B5370, &qword_100F05F28);
  __chkstk_darwin();
  v17 = &v64 - v16;
  v18 = sub_10010FC20(&qword_1011B5378, &qword_100F05F30);
  v72 = *(v18 - 8);
  v73 = v18;
  __chkstk_darwin();
  v71 = &v64 - v19;
  v20 = swift_allocObject();
  v21 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v2 + 64);
  v22 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v22;
  v78 = v2;
  sub_100B9D8E4(v2, v88);
  sub_10010FC20(&qword_1011B5380, &qword_100F05F38);
  sub_100B9D91C();
  Button.init(action:label:)();
  v91 = *(v2 + 40);
  v88[0] = *(v2 + 40);
  v64 = sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.getter();
  v23 = v81;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = &v10[*(v8 + 44)];
  *v26 = KeyPath;
  v26[1] = sub_10069AD7C;
  v26[2] = v25;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v10, v13, &qword_1011B5358, &qword_100F05F10);
  v27 = &v13[*(v11 + 44)];
  v28 = v86;
  *(v27 + 4) = v85;
  *(v27 + 5) = v28;
  *(v27 + 6) = v87;
  v29 = v82;
  *v27 = v81;
  *(v27 + 1) = v29;
  v30 = v84;
  *(v27 + 2) = v83;
  *(v27 + 3) = v30;
  v31 = *(v3 + 16);
  if (v31)
  {
    v32 = static Color.accentColor.getter();
  }

  else
  {
    v32 = static Color.white.getter();
  }

  v33 = v32;
  v34 = swift_getKeyPath();
  sub_10003D17C(v13, v15, &qword_1011B5360, &qword_100F05F18);
  v35 = &v15[*(v68 + 36)];
  *v35 = v34;
  v35[1] = v33;
  v36 = v71;
  if (qword_1011B06C8 != -1)
  {
    swift_once();
  }

  v37 = *&qword_1011B5040;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v15, v17, &qword_1011B5368, &qword_100F05F20);
  v38 = &v17[*(v69 + 36)];
  v39 = v88[5];
  *(v38 + 4) = v88[4];
  *(v38 + 5) = v39;
  *(v38 + 6) = v88[6];
  v40 = v88[1];
  *v38 = v88[0];
  *(v38 + 1) = v40;
  v41 = v88[3];
  *(v38 + 2) = v88[2];
  *(v38 + 3) = v41;
  sub_100B9DB90(&qword_1011B53A0, &qword_1011B5370, &qword_100F05F28, sub_100B9DAAC);
  View.bold(_:)();
  sub_1000095E8(v17, &qword_1011B5370, &qword_100F05F28);
  v42 = v37 * 0.5;
  v43 = *(v70 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = v75;
  (*(*(v45 - 8) + 104))(v75 + v43, v44, v45);
  *v46 = v42;
  v46[1] = v42;
  v47 = *(v3 + 56);
  v89 = v47;
  v90 = *(v3 + 64);
  if (v90 == 1)
  {
    if (v47)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v48 = static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v50 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v89, &qword_1011B53D0, &qword_100F05FC8);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  State.wrappedValue.getter();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = Color.init(_:)();
    goto LABEL_15;
  }

LABEL_11:
  if (v31)
  {
    v51 = static Color.clear.getter();
  }

  else
  {
    v51 = static Color.accentColor.getter();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_100B9D234(v46, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = sub_10010FC20(&qword_1011B53D8, &qword_100F05FD0);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_10003D17C(v54, v61, &qword_1011B5350, &qword_100F05F08);
  v62 = (v61 + *(sub_10010FC20(&qword_1011B53E0, &qword_100F05FD8) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v36, v73);
}

uint64_t sub_100B9BA3C(uint64_t a1)
{
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.setter();
  return (*(a1 + 24))(a1);
}

uint64_t sub_100B9BAA8(uint64_t a1)
{
  sub_10010FC20(&qword_1011B53E8, &qword_100F05FE0);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = sub_10010FC20(&qword_1011B5398, &unk_100F05F40);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.getter();
  if (v23 == 1)
  {
    ProgressView<>.init<>()();
    v7 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    sub_1000089F8(v6, v3, &qword_1011B5398, &unk_100F05F40);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B4C10, &qword_100F05730);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10, &qword_100F05730);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v6, &qword_1011B5398, &unk_100F05F40);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    sub_1000098E0();

    v12 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v23) = v16 & 1;
    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = v16 & 1;
    *(v3 + 3) = v18;
    v19 = v22[5];
    *(v3 + 6) = v22[4];
    *(v3 + 7) = v19;
    *(v3 + 8) = v22[6];
    v20 = v22[1];
    *(v3 + 2) = v22[0];
    *(v3 + 3) = v20;
    v21 = v22[3];
    *(v3 + 4) = v22[2];
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B4C10, &qword_100F05730);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10, &qword_100F05730);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100B9BDCC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_1011B5040 = *&v2;
}

void sub_100B9BE84()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B5048 = v1 == 6;
}

uint64_t sub_100B9BEE8()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_1011B5048)
  {
    v0 = 140.0;
  }

  qword_1011B5050 = *&v0;
  return result;
}

uint64_t sub_100B9BF60()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_1011B5048)
  {
    v0 = 16.0;
  }

  qword_1011B5058 = *&v0;
  return result;
}

uint64_t sub_100B9BFC8(__n128 a1)
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011B06D0 != -1)
  {
    swift_once();
  }

  if (byte_1011B5048 == 1)
  {
    result = static Font.subheadline.getter();
    v6 = result;
  }

  else
  {
    static Font.body.getter();
    (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
    v6 = Font.leading(_:)();

    result = (*(v2 + 8))(v4, v1);
  }

  qword_1011B5060 = v6;
  return result;
}

uint64_t sub_100B9C124()
{
  sub_10010FC20(&qword_1011B4970, &qword_100F03C00);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (qword_1011B06D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Font.Design();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = static Font.system(size:weight:design:)();
  result = sub_1000095E8(v1, &qword_1011B4970, &qword_100F03C00);
  qword_1011B5068 = v3;
  return result;
}

uint64_t sub_100B9C260()
{
  if (qword_1011B06D0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_1011B5048)
  {
    v0 = 9.0;
  }

  qword_1011B5070 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v29 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v30 = *(v9 + 56);
  v31 = v8;
  v29[1] = v9 + 56;
  v30(v7, 1, 1);
  v10 = [v2 artworkInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 responseDictionary];

    if (v12)
    {
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = sub_100054D04(v13);

      if (v14)
      {
        Artwork.init(_:)();
        sub_1000095E8(v7, &unk_1011B55F0, &unk_100EFFDC0);
        sub_10003D17C(v5, v7, &unk_1011B55F0, &unk_100EFFDC0);
      }
    }
  }

  v15 = [v2 name];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v2 handle];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_1000089F8(v7, v5, &unk_1011B55F0, &unk_100EFFDC0);
  v24 = [v2 collaborationAllowed];
  sub_1000095E8(v7, &unk_1011B55F0, &unk_100EFFDC0);
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v26 = *(v25 + 24);
  (v30)(a1 + v26, 1, 1, v31);
  v27 = *(v25 + 28);
  *a1 = v16;
  a1[1] = v18;
  a1[2] = v21;
  a1[3] = v23;
  result = sub_100B91BEC(v5, a1 + v26);
  *(a1 + v27) = v24;
  return result;
}

uint64_t sub_100B9C590@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for Playlist.Collaborator();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B5090, &qword_100F05C68);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = sub_10010FC20(&qword_1011B5450, &qword_100F06110);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = type metadata accessor for URL();
  v65 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  sub_10010FC20(&qword_1011B5458, &qword_100F06118);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  v23.n128_f64[0] = sub_100B9E020(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  sub_100B9E020(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    sub_100B9E020(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = sub_10010FC20(&qword_1011B5088, &qword_100F05C60);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      sub_1000095E8(v17, &qword_1011B5090, &qword_100F05C68);
LABEL_10:
      sub_1000095E8(v20, &qword_1011B5458, &qword_100F06118);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    LODWORD(v62) = v37;
    v39 = v22[v36];
    v40 = *(v65 + 32);
    v40(v67, &v17[v35], v33);
    v40(v66, &v22[v35], v33);
    v41 = *(v32 + 48);
    v42 = v63;
    sub_10003D17C(v17, v63, &qword_1011B5090, &qword_100F05C68);
    sub_10003D17C(v22, v42 + v41, &qword_1011B5090, &qword_100F05C68);
    v43 = v60;
    v44 = *(v59 + 48);
    if (v44(v42, 1, v60) == 1)
    {
      v45 = v44(v42 + v41, 1, v43);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v45 == 1)
      {
        sub_1000095E8(v42, &qword_1011B5090, &qword_100F05C68);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      sub_1000089F8(v42, v58, &qword_1011B5090, &qword_100F05C68);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        sub_100B9D234(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v49, v51);
        sub_100B9D1B4(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100B9D1B4(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_1000095E8(v42, &qword_1011B5090, &qword_100F05C68);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = static URL.== infix(_:_:)();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
            v30 = v55 ^ 1;
            return v30 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v50 = *(v46 + 8);
        v50(v47, v33);
        v50(v48, v33);
LABEL_23:
        sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_100B9D1B4(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    sub_1000095E8(v42, &qword_1011B5450, &qword_100F06110);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_100B9E020(v20, v15, v25, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v15, v63);
    goto LABEL_10;
  }

  v27 = v61;
  v26 = v62;
  v28 = v22;
  v29 = v63;
  (*(v62 + 32))(v61, v28, v63);
  v30 = static Playlist.Collaborator.== infix(_:_:)();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  sub_100B9D1B4(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_10010FC20(&qword_1011B4A58, &qword_100F062D0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v25 + 24);
  v16 = *(v10 + 48);
  sub_1000089F8(a1 + v15, v12, &unk_1011B55F0, &unk_100EFFDC0);
  sub_1000089F8(a2 + v15, &v12[v16], &unk_1011B55F0, &unk_100EFFDC0);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  sub_1000089F8(v12, v9, &unk_1011B55F0, &unk_100EFFDC0);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    sub_1000095E8(v12, &qword_1011B4A58, &qword_100F062D0);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_100B9F7C0(&qword_1011B4A60, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100B9D1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B9D234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100B9D2B8(uint64_t a1)
{
  sub_100B9D32C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Playlist.Collaborator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100B9D32C(uint64_t a1)
{
  if (!qword_1011B5128)
  {
    sub_1001109D0(&qword_1011B5090, &qword_100F05C68);
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1011B5128);
    }
  }
}

void sub_100B9D3D8(uint64_t a1)
{
  sub_1000308EC(319, &unk_1011B51C0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100B9D490(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B9D490(uint64_t a1)
{
  if (!qword_1011B4380)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B4380);
    }
  }
}

void sub_100B9D510(uint64_t a1)
{
  sub_1000308EC(319, &unk_1011B2B98, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v4 <= 0x3F)
        {
          sub_10002F044(319);
          if (v5 <= 0x3F)
          {
            sub_10001F888();
            if (v6 <= 0x3F)
            {
              sub_100B9D634(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100B9D634(uint64_t a1)
{
  if (!qword_1011B5260)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    sub_100B9F7C0(&qword_1011B5640, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B5260);
    }
  }
}

__n128 sub_100B9D6D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B9D6F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B9D740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B9D7EC(uint64_t a1)
{
  result = type metadata accessor for InlineProfileEditingView.Context(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100B9D91C()
{
  result = qword_1011B5388;
  if (!qword_1011B5388)
  {
    sub_1001109D0(&qword_1011B5380, &qword_100F05F38);
    sub_100B9D9C8();
    sub_100B9DFA8(&qword_1011B4C08, &qword_1011B4C10, &qword_100F05730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5388);
  }

  return result;
}

unint64_t sub_100B9D9C8()
{
  result = qword_1011B5390;
  if (!qword_1011B5390)
  {
    sub_1001109D0(&qword_1011B5398, &unk_100F05F40);
    sub_100020674(&qword_1011B47D0, &qword_1011B47D8, &qword_100F051C8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5390);
  }

  return result;
}

unint64_t sub_100B9DAAC()
{
  result = qword_1011B53A8;
  if (!qword_1011B53A8)
  {
    sub_1001109D0(&qword_1011B5368, &qword_100F05F20);
    sub_100B9DB90(&qword_1011B53B0, &qword_1011B5360, &qword_100F05F18, sub_100B9DC14);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B53A8);
  }

  return result;
}

uint64_t sub_100B9DB90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B9DC14()
{
  result = qword_1011B53B8;
  if (!qword_1011B53B8)
  {
    sub_1001109D0(&qword_1011B5358, &qword_100F05F10);
    sub_100020674(&qword_1011B53C0, &qword_1011B53C8, &qword_100F05FB8, &protocol conformance descriptor for Button<A>);
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80, &qword_100F05FC0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B53B8);
  }

  return result;
}

double sub_100B9DDA8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100B9DDC4()
{
  result = qword_1011B54E8;
  if (!qword_1011B54E8)
  {
    sub_1001109D0(&qword_1011B54E0, &unk_100F061A8);
    sub_100B9DE7C();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B54E8);
  }

  return result;
}

unint64_t sub_100B9DE7C()
{
  result = qword_1011B54F0;
  if (!qword_1011B54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B54F0);
  }

  return result;
}

unint64_t sub_100B9DED0()
{
  result = qword_1011B5508;
  if (!qword_1011B5508)
  {
    sub_1001109D0(&qword_1011B5500, &qword_100F061C0);
    sub_100B9DFA8(&qword_1011B5510, &qword_1011B5518, &qword_100F061C8);
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5508);
  }

  return result;
}

uint64_t sub_100B9DFA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100B9E020(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return result;
}

uint64_t sub_100B9E0D0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_1000D8FC4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_100B9E460(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_100B99C10(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_100B9E558()
{
  result = qword_1011B5530;
  if (!qword_1011B5530)
  {
    sub_1001109D0(&qword_1011B5480, &qword_100F06148);
    sub_100020674(&qword_1011B5538, &qword_1011B5488, &qword_100F06150, &protocol conformance descriptor for TupleView<A>);
    sub_100B9E610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5530);
  }

  return result;
}

unint64_t sub_100B9E610()
{
  result = qword_1011B5540;
  if (!qword_1011B5540)
  {
    sub_1001109D0(&qword_1011B5548, &qword_100F06218);
    sub_100B9E6C8();
    sub_100020674(&qword_1011B4D78, &qword_1011B4D80, &qword_100F05FC0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5540);
  }

  return result;
}

unint64_t sub_100B9E6C8()
{
  result = qword_1011B5550;
  if (!qword_1011B5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5550);
  }

  return result;
}

double sub_100B9E764(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B96E98(a1, v4);
}

uint64_t sub_100B9E7DC()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for Playlist.Collaborator();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for Artwork();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for Playlist();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_1000D8FC4(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100B9EAC8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100B9EB3C()
{
  result = qword_1011B5598;
  if (!qword_1011B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5598);
  }

  return result;
}

uint64_t sub_100B9EB90()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100B98DF0();
}

uint64_t sub_100B9EC80()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for Playlist.Collaborator();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for Artwork();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_1000D8FC4(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100B9EF44()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100B97078();
}

uint64_t sub_100B9F034(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B98FA4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100B9F184(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B99EC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100B9F2D4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_10010FC20(&qword_1011B5088, &qword_100F05C60) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_1000D8FC4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_100B9F624(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100B99868(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100B9F774()
{
  result = qword_1011B55A0;
  if (!qword_1011B55A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B55A0);
  }

  return result;
}

uint64_t sub_100B9F7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100B9F818()
{
  result = qword_1011B55B8;
  if (!qword_1011B55B8)
  {
    sub_1001109D0(&qword_1011B53D8, &qword_100F05FD0);
    sub_1001109D0(&qword_1011B5370, &qword_100F05F28);
    sub_100B9DB90(&qword_1011B53A0, &qword_1011B5370, &qword_100F05F28, sub_100B9DAAC);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B55C0, &qword_1011B53E0, &qword_100F05FD8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55B8);
  }

  return result;
}

unint64_t sub_100B9F940()
{
  result = qword_1011B55D8;
  if (!qword_1011B55D8)
  {
    sub_1001109D0(&qword_1011B55E0, qword_100F062F8);
    sub_100020674(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55D8);
  }

  return result;
}

unint64_t sub_100B9F9FC()
{
  result = qword_1011B55E8;
  if (!qword_1011B55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B55E8);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_100BA5558(v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000089F8(a1, &v7 - v4, &unk_1011B55F0, &unk_100EFFDC0);
  sub_1000089F8(v5, v3, &unk_1011B55F0, &unk_100EFFDC0);
  Published.init(initialValue:)();
  sub_1000095E8(a1, &unk_1011B55F0, &unk_100EFFDC0);
  return sub_1000095E8(v5, &unk_1011B55F0, &unk_100EFFDC0);
}

uint64_t sub_100B9FBF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double property wrapper backing initializer of Reactions.StackView.Model.userImage(uint64_t a1)
{
  sub_10010FC20(&qword_1011B1180, &qword_100EFFA98);
  Published.init(initialValue:)();
  return result;
}

uint64_t sub_100B9FCB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100B9FD2C(void *a1)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = type metadata accessor for Artwork();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v6, v4, &unk_1011B55F0, &unk_100EFFDC0);

    static Published.subscript.setter();

    sub_1000095E8(v6, &unk_1011B55F0, &unk_100EFFDC0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  v74 = *(v0 - 8);
  v75 = v0;
  __chkstk_darwin();
  v73 = &v67 - v1;
  v72 = sub_10010FC20(&qword_1011B5608, &qword_100F06378);
  v70 = *(v72 - 8);
  __chkstk_darwin();
  v3 = &v67 - v2;
  v4 = sub_10010FC20(&qword_1011B5610, &qword_100F06380);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v67 - v6;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v68 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v69 = (&v67 - v9);
  __chkstk_darwin();
  v11 = &v67 - v10;
  __chkstk_darwin();
  v13 = &v67 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = type metadata accessor for Artwork();
  v76 = *(v15 - 8);
  v77 = v15;
  (*(v76 + 56))(v13, 1, 1);
  sub_1000089F8(v13, v11, &unk_1011B55F0, &unk_100EFFDC0);
  v67 = v11;
  Published.init(initialValue:)();
  v16 = v13;
  sub_1000095E8(v13, &unk_1011B55F0, &unk_100EFFDC0);
  v17 = v71;
  (*(v5 + 32))(v71 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v79 = 0;
  v80 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v70 + 32))(v17 + v18, v3, v72);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v79 = 0;
  sub_10010FC20(&qword_1011B1180, &qword_100EFFA98);
  v20 = v73;
  Published.init(initialValue:)();
  (*(v74 + 32))(v17 + v19, v20, v75);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v79 = v26;
    v80 = v28;

    static Published.subscript.setter();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = sub_100054D04(v32);

        if (v33)
        {
          Artwork.init(_:)();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000089F8(v16, v67, &unk_1011B55F0, &unk_100EFFDC0);

          static Published.subscript.setter();
          sub_1000095E8(v16, &unk_1011B55F0, &unk_100EFFDC0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v79);

  v35 = v79;
  v34 = v80;

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v76;
  v37 = v77;
  if (v36)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v69;
    static Published.subscript.getter(v69);

    if ((*(v38 + 48))(v39, 1, v37) != 1)
    {

LABEL_25:
      sub_1000095E8(v39, &unk_1011B55F0, &unk_100EFFDC0);
      return v17;
    }

    sub_1000095E8(v39, &unk_1011B55F0, &unk_100EFFDC0);
  }

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6C0;
  *(v40 + 32) = CNContactThumbnailImageDataKey;
  v78 = v40;
  v41 = objc_opt_self();
  v42 = CNContactThumbnailImageDataKey;
  v43 = [v41 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v44 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011B5638, &qword_100F06428);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v79 = 0;
  v46 = [v44 _ios_meContactWithKeysToFetch:isa error:&v79];

  v47 = v79;
  if (!v46)
  {
    v65 = v79;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v47;
  static Published.subscript.getter(&v79);

  v50 = v79;
  v49 = v80;

  v51 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v51 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    v52 = [v41 stringFromContact:v46 style:0];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      swift_getKeyPath();
      swift_getKeyPath();
      v79 = v54;
      v80 = v56;

      static Published.subscript.setter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v68;
  static Published.subscript.getter(v68);

  if ((*(v38 + 48))(v39, 1, v37) != 1)
  {

    goto LABEL_25;
  }

  sub_1000095E8(v39, &unk_1011B55F0, &unk_100EFFDC0);
  v57 = [v46 thumbnailImageData];
  if (v57)
  {
    v58 = v57;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = objc_allocWithZone(UIImage);
    sub_10002BC44(v59, v61);
    v63 = Data._bridgeToObjectiveC()().super.isa;
    v64 = [v62 initWithData:v63];

    sub_10002C064(v59, v61);
    sub_100B9FD2C(v64);

    sub_10002C064(v59, v61);
  }

  else
  {
  }

  return v17;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

void InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_100BA0C40@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v2 = (&v7 - v1);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v2);

  v4 = type metadata accessor for Artwork();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_1000095E8(v2, &unk_1011B55F0, &unk_100EFFDC0);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_10010FC20(&qword_1011B5610, &qword_100F06380);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_10010FC20(&qword_1011B5608, &qword_100F06378);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_10010FC20(&qword_1011B5610, &qword_100F06380);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_10010FC20(&qword_1011B5608, &qword_100F06378);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100BA108C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100BA56B4();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = sub_10010FC20(&qword_1011B5648, &qword_100F06478) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_10010FC20(&qword_1011B5650, &qword_100F06480) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = sub_10010FC20(&qword_1011B5658, &qword_100F06488) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = sub_10010FC20(&qword_1011B5660, &qword_100F06490);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = sub_10010FC20(&qword_1011B5668, &qword_100F06498);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = sub_10010FC20(&qword_1011B5670, &qword_100F064A0);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = sub_10010FC20(&qword_1011B5678, &qword_100F064A8);
  sub_100BA1AB0(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = Color.init(_:)();
  v24 = static Edge.Set.all.getter();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v9, v12, &qword_1011B5648, &qword_100F06478);
  v26 = &v12[*(v10 + 44)];
  v27 = v91;
  *(v26 + 4) = v90;
  *(v26 + 5) = v27;
  *(v26 + 6) = v92;
  v28 = v87;
  *v26 = v86;
  *(v26 + 1) = v28;
  v29 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, v15, &qword_1011B5650, &qword_100F06480);
  v30 = &v15[*(v13 + 44)];
  v31 = v98;
  *(v30 + 4) = v97;
  *(v30 + 5) = v31;
  *(v30 + 6) = v99;
  v32 = v94;
  *v30 = v93;
  *(v30 + 1) = v32;
  v33 = v96;
  *(v30 + 2) = v95;
  *(v30 + 3) = v33;
  v34 = *(v16 + 36);
  v35 = v79;
  v36 = &v79[v34];
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(sub_10010FC20(&unk_1011B5680, &qword_100F06240) + 36)] = 256;
  sub_10003D17C(v15, v35, &qword_1011B5658, &qword_100F06488);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  v66[1] = v66;
  v82 = v45;
  sub_10010FC20(&qword_1011B5690, &qword_100F064B0);
  sub_100BA5714();
  v46 = sub_1000098E0();
  sub_100020674(&qword_1011B56C8, &qword_1011B5690, &qword_100F064B0, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  sub_1000095E8(v48, &qword_1011B5660, &qword_100F06490);
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  sub_100BA4394(v50, v57);
  v58 = (v57 + *(sub_10010FC20(&qword_1011B56D0, &qword_100F064C8) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v52 + 16))(v51, v49, v59);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v60 = qword_10121B340;
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  State.projectedValue.getter();
  v79 = v66;
  __chkstk_darwin();
  sub_10010FC20(&qword_1011B56D8, &qword_100F064D0);
  sub_100BA5998();
  sub_100020674(&qword_1011B56F0, &qword_1011B56D8, &qword_100F064D0, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  View.alert<A, B>(_:isPresented:actions:)();

  return sub_1000095E8(v64, &qword_1011B5670, &qword_100F064A0);
}

uint64_t sub_100BA1AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = sub_10010FC20(&qword_1011B58F8, &qword_100F06698);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  sub_10010FC20(&unk_1011B5900, &unk_100F066A0);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for String.LocalizationValue();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = sub_10010FC20(&qword_1011B46C0, &qword_100F05060);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = sub_10010FC20(&qword_1011B5910, &qword_100F066B0);
  __chkstk_darwin();
  v224 = (v188 - v11);
  sub_10010FC20(&qword_1011B5918, &qword_100F066B8);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = type metadata accessor for Image.ResizingMode();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_10010FC20(&unk_1011B5920, &qword_100F066C0);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = type metadata accessor for Artwork.CropStyle();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkImage();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin();
  v213 = v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = v188 - v20;
  __chkstk_darwin();
  v205 = v188 - v21;
  __chkstk_darwin();
  v215 = v188 - v22;
  v216 = type metadata accessor for ArtworkImage.ReusePolicy();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = (v188 - v28);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = sub_10010FC20(&qword_1011B5938, &unk_100F066C8);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = sub_10010FC20(&unk_1011B5940, &qword_100F061D0);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = sub_10010FC20(&qword_1011B5468, &qword_100F06128);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = sub_10010FC20(&qword_1011B5950, &qword_100F06130);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  sub_10010FC20(&qword_1011B5958, &qword_100F066D8);
  __chkstk_darwin();
  v223 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = v188 - v45;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v229 = a1;
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v245);

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    Image.init(uiImage:)();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = Image.resizable(capInsets:resizingMode:)();

    (*(v47 + 8))(v48, v49);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v244 = 0;
    v245._countAndFlagsBits = v237;
    v245._object = v50;
    LOBYTE(v246._countAndFlagsBits) = v51;
    v246._object = v52;
    LOBYTE(v247._countAndFlagsBits) = v53;
    v247._object = v55;
    v248._countAndFlagsBits = v54;
    LOWORD(v248._object) = 256;
    *(&v248._object + 2) = v251;
    HIWORD(v248._object) = WORD2(v251);
    LOBYTE(v249._countAndFlagsBits) = v47;
    HIDWORD(v249._countAndFlagsBits) = *(v243 + 3);
    *(&v249._countAndFlagsBits + 1) = v243[0];
    v249._object = v56;
    *&v250[0] = v57;
    *(&v250[0] + 1) = v58;
    *&v250[1] = v59;
    BYTE8(v250[1]) = 0;
    v60 = v248;
    v61 = v250[0];
    v62 = v220;
    v220[4] = v249;
    v62[5] = v61;
    *(v62 + 89) = *(v250 + 9);
    v63 = v246;
    v64 = v247;
    *v62 = v245;
    v62[1] = v63;
    v62[2] = v64;
    v62[3] = v60;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v245, v243, &qword_1011B5968, &qword_100F066E0);
    sub_10010FC20(&qword_1011B5968, &qword_100F066E0);
    sub_100BA5D80();
    sub_100BA5F6C();
    v65 = v221;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(&v245, &qword_1011B5968, &qword_100F066E0);
    v66 = v239;
    goto LABEL_18;
  }

  v190 = v37;
  v191 = v41;
  v192 = v34;
  v209 = v36;
  v210 = v39;
  v211 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v193;
  static Published.subscript.getter(v193);

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = type metadata accessor for Artwork();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    sub_1000095E8(v68, &qword_1011B4720, &qword_100F02D00);
    sub_1000095E8(v67, &unk_1011B55F0, &unk_100EFFDC0);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_10003D17C(v68, v73 + *(v72 + 20), &qword_1011B4720, &qword_100F02D00);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v245);

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  sub_1000089F8(v73, v195, &qword_1011B5930, &qword_100EFDE70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_1000095E8(v76, &qword_1011B5930, &qword_100EFDE70);
    v78 = 1;
    v79 = v196;
    v80 = v197;
    v81 = v189;
  }

  else
  {
    v79 = v196;
    v81 = v189;
    (*(v70 + 16))(v196, v76, v189);
    sub_100BA61E8(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  sub_1000089F8(v79, v80, &unk_1011B55F0, &unk_100EFFDC0);
  ArtworkImage.init(_:)();
  sub_1000095E8(v79, &unk_1011B55F0, &unk_100EFFDC0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v82 = v198;
  sub_1000089F8(v237, v198, &qword_1011B5930, &qword_100EFDE70);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    sub_1000095E8(v82, &qword_1011B5930, &qword_100EFDE70);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = sub_1000060E4(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      sub_1000095E8(v93, &qword_1011B4720, &qword_100F02D00);
    }

    goto LABEL_17;
  }

  v85 = v199;
  sub_1000089F8(v82 + *(v72 + 20), v199, &qword_1011B4720, &qword_100F02D00);
  sub_100BA61E8(v82, type metadata accessor for ArtworkImage.ViewModel);
  v87 = v217;
  v88 = v236;
  v89 = (*(v217 + 48))(v85, 1, v236);
  v66 = v239;
  v86 = v206;
  if (v89 == 1)
  {
    goto LABEL_12;
  }

  v96 = v85;
  v94 = v204;
  (*(v87 + 32))(v204, v96, v88);
  v95 = v87;
LABEL_17:
  v97 = v203;
  v98 = v213;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v99(v97, v84);
  sub_100B5A2A8();
  v101 = v200;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  sub_1000095E8(v237, &qword_1011B5930, &qword_100EFDE70);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  sub_10003D17C(v102, v210, &unk_1011B5940, &qword_100F061D0);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  sub_10003D17C(v105, v191, &qword_1011B5468, &qword_100F06128);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  sub_10003D17C(v114, v211, &qword_1011B5950, &qword_100F06130);
  sub_1000089F8(v116, v220, &qword_1011B5950, &qword_100F06130);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B5968, &qword_100F066E0);
  sub_100BA5D80();
  sub_100BA5F6C();
  v65 = v221;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v116, &qword_1011B5950, &qword_100F06130);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v245);

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &qword_10121B000;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v245);

    v120 = String.trim()();

    v245 = v120;
    sub_1000098E0();
    v121 = Text.init<A>(_:)();
    v123 = v122;
    v125 = v124;
    v126 = Text.bold()();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    sub_10011895C(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &qword_10121B000;
    swift_storeEnumTagMultiPayload();
    sub_100B8D6D4();
    _ConditionalContent<>.init(storage:)();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    String.LocalizationValue.init(stringLiteral:)();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v139 = qword_10121B340;
    static Locale.current.getter();
    v140 = String.init(localized:table:bundle:locale:comment:)();
    v142 = v141;
    (*(v138 + 8))(v240, v136);
    v251 = v140;
    v252 = v142;
    v143 = swift_allocObject();
    v144 = v229;
    v145 = *(v229 + 48);
    v143[3] = *(v229 + 32);
    v143[4] = v145;
    v143[5] = v144[4];
    v146 = v144[1];
    v143[1] = *v144;
    v143[2] = v146;
    sub_100B9DCF8(v144, &v245);
    sub_1000098E0();
    v147 = v208;
    Button<>.init<A>(_:action:)();
    v148 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    sub_1000089F8(v147, v150, &qword_1011B46C0, &qword_100F05060);
    swift_storeEnumTagMultiPayload();
    sub_100B8D6D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v147, &qword_1011B46C0, &qword_100F05060);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v245);

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    String.LocalizationValue.init(stringLiteral:)();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v156 = v119[104];
    static Locale.current.getter();
    v157 = String.init(localized:table:bundle:locale:comment:)();
    v159 = v158;
    (*(v155 + 8))(v240, v136);
    v251 = v157;
    v252 = v159;
    v160 = swift_allocObject();
    v161 = v229;
    v162 = *(v229 + 48);
    v160[3] = *(v229 + 32);
    v160[4] = v162;
    v160[5] = v161[4];
    v163 = v161[1];
    v160[1] = *v161;
    v160[2] = v163;
    sub_100B9DCF8(v161, &v245);
    sub_1000098E0();
    v164 = v212;
    Button<>.init<A>(_:action:)();
    LOBYTE(v160) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(sub_10010FC20(&qword_1011B59E0, &qword_100F066F8) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(sub_10010FC20(&qword_1011B59E8, &qword_100F06730) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    sub_10003D17C(v164, v176, &qword_1011B58F8, &qword_100F06698);
    v178 = 0;
  }

  else
  {
    v178 = 1;
    v177 = v232;
    v176 = v233;
  }

  (*(v231 + 56))(v176, v178, 1, v177);
  v179 = v223;
  v180 = v65;
  sub_1000089F8(v65, v223, &qword_1011B5958, &qword_100F066D8);
  v181 = v241;
  v182 = v230;
  sub_1000089F8(v241, v230, &qword_1011B5918, &qword_100F066B8);
  v183 = v234;
  sub_1000089F8(v176, v234, &unk_1011B5900, &unk_100F066A0);
  v184 = v235;
  sub_1000089F8(v179, v235, &qword_1011B5958, &qword_100F066D8);
  v185 = sub_10010FC20(&unk_1011B59F0, &qword_100F06738);
  sub_1000089F8(v182, v184 + v185[12], &qword_1011B5918, &qword_100F066B8);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  sub_1000089F8(v183, v184 + v185[20], &unk_1011B5900, &unk_100F066A0);
  sub_1000095E8(v176, &unk_1011B5900, &unk_100F066A0);
  sub_1000095E8(v181, &qword_1011B5918, &qword_100F066B8);
  sub_1000095E8(v180, &qword_1011B5958, &qword_100F066D8);
  sub_1000095E8(v183, &unk_1011B5900, &unk_100F066A0);
  sub_1000095E8(v182, &qword_1011B5918, &qword_100F066B8);
  return sub_1000095E8(v179, &qword_1011B5958, &qword_100F066D8);
}

uint64_t sub_100BA3704@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  sub_10010FC20(&qword_1011B58E8, &qword_100F06688);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = sub_10010FC20(&unk_1011B46D0, &qword_100F05068);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v72 - v12;
  __chkstk_darwin();
  v85 = &v72 - v13;
  __chkstk_darwin();
  v80 = &v72 - v14;
  __chkstk_darwin();
  v88 = &v72 - v15;
  __chkstk_darwin();
  v91 = &v72 - v16;
  String.LocalizationValue.init(stringLiteral:)();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v17 = qword_10121B340;
  v18 = qword_10121B340;
  static Locale.current.getter();
  v83 = v18;
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v84 = v8;
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v90;
  v22(v10, v90);
  v94 = v19;
  v95 = v21;
  v24 = swift_allocObject();
  v25 = v6 + 8;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  v24[5] = a1[4];
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  sub_100B9DCF8(a1, v93);
  v28 = sub_1000098E0();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v89(v84, v10, v23);
  static Locale.current.getter();
  v79 = v17;
  v29 = v22;
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v78 = v25;
  v22(v10, v23);
  v94 = v30;
  v95 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  sub_100B9DCF8(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  Button<>.init<A>(_:action:)();
  v38 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v39 = v83;
    v73 = v29;
    v40 = v89;
    v41 = v90;
    v42 = [objc_opt_self() currentTraitCollection];
    v43 = [v42 userInterfaceIdiom];

    if (v43 == 6)
    {
      v38 = 1;
      v36 = v88;
      v29 = v73;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v40(v37, v10, v41);
      v44 = v39;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v46;
      v29 = v73;
      v73(v10, v41);
      v94 = v45;
      v95 = v47;
      v48 = swift_allocObject();
      v49 = a1[3];
      v48[3] = a1[2];
      v48[4] = v49;
      v48[5] = a1[4];
      v50 = a1[1];
      v48[1] = *a1;
      v48[2] = v50;
      sub_100B9DCF8(a1, v93);
      v51 = v80;
      Button<>.init<A>(_:action:)();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  String.LocalizationValue.init(stringLiteral:)();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v57;
  v29(v10, v54);
  v94 = v56;
  v95 = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v59[5] = a1[4];
  v61 = a1[1];
  v59[1] = *a1;
  v59[2] = v61;
  sub_100B9DCF8(a1, v93);
  v62 = v80;
  Button<>.init<A>(_:action:)();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  sub_1000089F8(v92, v76, &qword_1011B58E8, &qword_100F06688);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = sub_10010FC20(&qword_1011B58F0, &qword_100F06690);
  v63(&v68[v69[12]], v65, v53);
  sub_1000089F8(v66, &v68[v69[16]], &qword_1011B58E8, &qword_100F06688);
  v63(&v68[v69[20]], v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  sub_1000095E8(v92, &qword_1011B58E8, &qword_100F06688);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  sub_1000095E8(v66, &qword_1011B58E8, &qword_100F06688);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t sub_100BA4180(uint64_t a1, char a2)
{
  sub_10010FC20(&unk_1011B58D0, &qword_100F06640);
  State.wrappedValue.setter();
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  return State.wrappedValue.setter();
}

void sub_100BA420C(uint64_t a1)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = *(a1 + 8);
  sub_100B9FD2C(0);
  v7 = type metadata accessor for Artwork();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v5, v3, &unk_1011B55F0, &unk_100EFFDC0);

  static Published.subscript.setter();
  sub_1000095E8(v5, &unk_1011B55F0, &unk_100EFFDC0);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  *(v6 + v8) = 1;
}

uint64_t sub_100BA4394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100BA56B4();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  sub_10010FC20(&unk_1011B58D0, &qword_100F06640);
  State.projectedValue.getter();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.projectedValue.getter();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_1011B0700 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0890, &qword_100F06E90);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = v25;
  sub_100BA5CD4(v5, v25);
  v20 = (v19 + *(sub_10010FC20(&qword_1011B58E0, &qword_100F06680) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_100BA61E8(v5, type metadata accessor for ImagePicker);
}

void sub_100BA4634(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100BA46B4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  sub_10010FC20(&unk_1011B58A0, &qword_100F05080);
  __chkstk_darwin();
  v80 = &v68 - v3;
  v4 = sub_10010FC20(&unk_1011B46D0, &qword_100F05068);
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin();
  v82 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v68 - v6;
  __chkstk_darwin();
  v77 = &v68 - v7;
  v76 = sub_10010FC20(&qword_1011B58B0, &qword_100F065F0);
  __chkstk_darwin();
  v90 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v68 - v9;
  __chkstk_darwin();
  v89 = &v68 - v10;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  v79 = sub_10010FC20(&qword_1011B58B8, &qword_100F065F8);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v88 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v68 - v20;
  v81 = a1;
  v21 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v21;
  static Published.subscript.getter(&v95);

  v74 = v95;
  v73 = v96;
  String.LocalizationValue.init(stringLiteral:)();
  v22 = *(v14 + 16);
  v87 = v14 + 16;
  v86 = v22;
  v22(v16, v18, v13);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v23 = qword_10121B340;
  v24 = qword_10121B340;
  v68 = v12;
  static Locale.current.getter();
  v25 = v24;
  v69 = v16;
  v71 = v23;
  v26 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;
  v85 = *(v14 + 8);
  v85(v18, v13);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100BA56B4();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v97 = v26;
  v98 = v28;
  v72 = sub_1000098E0();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  String.LocalizationValue.init(stringLiteral:)();
  v29 = v69;
  v70 = v13;
  v86(v69, v18, v13);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v85(v18, v13);
  v95 = v30;
  v96 = v32;
  v33 = v77;
  Button<>.init<A>(_:action:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v95);

  v34 = String.trim()();

  v35 = (v34._object >> 56) & 0xF;
  if ((v34._object & 0x2000000000000000) == 0)
  {
    v35 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v36 = v35 == 0;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v92;
  v40 = v75;
  (*(v92 + 32))(v75, v33, v93);
  v41 = (v40 + *(v76 + 36));
  *v41 = KeyPath;
  v41[1] = sub_100239940;
  v41[2] = v38;
  v42 = v89;
  sub_10003D17C(v40, v89, &qword_1011B58B0, &qword_100F065F0);
  String.LocalizationValue.init(stringLiteral:)();
  v43 = v70;
  v86(v29, v18, v70);
  static Locale.current.getter();
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v46 = v45;
  v85(v18, v43);
  v97 = v44;
  v98 = v46;
  v47 = v80;
  static ButtonRole.cancel.getter();
  v48 = type metadata accessor for ButtonRole();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = swift_allocObject();
  v50 = v81;
  v51 = *(v81 + 3);
  *(v49 + 48) = *(v81 + 2);
  *(v49 + 64) = v51;
  *(v49 + 80) = v50[4];
  v52 = v50[1];
  *(v49 + 16) = *v50;
  *(v49 + 32) = v52;
  v53 = v73;
  *(v49 + 96) = v74;
  *(v49 + 104) = v53;
  sub_100B9DCF8(v50, &v95);
  v54 = v91;
  Button<>.init<A>(_:role:action:)();
  v55 = v78;
  v56 = *(v78 + 16);
  v57 = v88;
  v58 = v79;
  v56(v88, v94, v79);
  sub_1000089F8(v42, v90, &qword_1011B58B0, &qword_100F065F0);
  v59 = *(v39 + 16);
  v60 = v82;
  v61 = v93;
  v59(v82, v54, v93);
  v62 = v83;
  v56(v83, v57, v58);
  v63 = sub_10010FC20(&qword_1011B58C0, &qword_100F06630);
  v64 = v90;
  sub_1000089F8(v90, &v62[*(v63 + 48)], &qword_1011B58B0, &qword_100F065F0);
  v59(&v62[*(v63 + 64)], v60, v61);
  v65 = *(v92 + 8);
  v65(v91, v61);
  sub_1000095E8(v89, &qword_1011B58B0, &qword_100F065F0);
  v66 = *(v55 + 8);
  v66(v94, v58);
  v65(v60, v61);
  sub_1000095E8(v64, &qword_1011B58B0, &qword_100F065F0);
  return (v66)(v88, v58);
}

void sub_100BA51C0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_100BA5240(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100BA52C4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_1000089F8(&v7, v6, &qword_1011B58C8, &qword_100F06638);

  return static Published.subscript.setter();
}

double sub_100BA53AC@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_100BA5428(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_1011B55F0, &unk_100EFFDC0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_1011B55F0, &unk_100EFFDC0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_1011B55F0, &unk_100EFFDC0);
}

uint64_t sub_100BA5558@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100BA56B4();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t type metadata accessor for InlineProfileEditingView.Context(uint64_t a1)
{
  result = qword_1011B5720;
  if (!qword_1011B5720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100BA56B4()
{
  result = qword_1011B5640;
  if (!qword_1011B5640)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5640);
  }

  return result;
}

unint64_t sub_100BA5714()
{
  result = qword_1011B5698;
  if (!qword_1011B5698)
  {
    sub_1001109D0(&qword_1011B5660, &qword_100F06490);
    sub_100BA5828(&qword_1011B56A0, &qword_1011B5658, &qword_100F06488, sub_100BA57F8);
    sub_100020674(&qword_1011B2268, &unk_1011B5680, &qword_100F06240, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5698);
  }

  return result;
}

uint64_t sub_100BA5828(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BA58AC()
{
  result = qword_1011B56B0;
  if (!qword_1011B56B0)
  {
    sub_1001109D0(&qword_1011B5648, &qword_100F06478);
    sub_100020674(&qword_1011B56B8, &qword_1011B56C0, &qword_100F064B8, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&qword_1011B4EA8, &qword_1011B4EB0, &qword_100F064C0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B56B0);
  }

  return result;
}

unint64_t sub_100BA5998()
{
  result = qword_1011B56E0;
  if (!qword_1011B56E0)
  {
    sub_1001109D0(&qword_1011B5670, &qword_100F064A0);
    sub_1001109D0(&qword_1011B5660, &qword_100F06490);
    sub_1001109D0(&qword_1011B5690, &qword_100F064B0);
    sub_100BA5714();
    sub_1000098E0();
    sub_100020674(&qword_1011B56C8, &qword_1011B5690, &qword_100F064B0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B56E8, &qword_1011B56D0, &qword_100F064C8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B56E0);
  }

  return result;
}

void sub_100BA5B3C(uint64_t a1)
{
  sub_1000054CC(319, &qword_1011B5730, &unk_1011B55F0, &unk_100EFFDC0);
  if (v1 <= 0x3F)
  {
    sub_100BA5C78();
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &unk_1011B5740, &qword_1011B1180, &qword_100EFFA98);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100BA5C78()
{
  if (!qword_1011B5738)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B5738);
    }
  }
}

uint64_t sub_100BA5CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100BA5D80()
{
  result = qword_1011B5970;
  if (!qword_1011B5970)
  {
    sub_1001109D0(&qword_1011B5968, &qword_100F066E0);
    sub_100BA5E38(&qword_1011B5978, &qword_1011B5980, &qword_100F066E8, sub_100BA5EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5970);
  }

  return result;
}

uint64_t sub_100BA5E38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_100020674(&unk_1011B5000, &qword_1011B59A0, &qword_100F05C10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BA5EE8()
{
  result = qword_1011B5988;
  if (!qword_1011B5988)
  {
    sub_1001109D0(&unk_1011B5990, &qword_100F066F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5988);
  }

  return result;
}

unint64_t sub_100BA5F6C()
{
  result = qword_1011B59A8;
  if (!qword_1011B59A8)
  {
    sub_1001109D0(&qword_1011B5950, &qword_100F06130);
    sub_100BA5E38(&qword_1011B59B0, &qword_1011B5468, &qword_100F06128, sub_100BA6024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59A8);
  }

  return result;
}

unint64_t sub_100BA6024()
{
  result = qword_1011B59B8;
  if (!qword_1011B59B8)
  {
    sub_1001109D0(&unk_1011B5940, &qword_100F061D0);
    sub_100B5A2A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B59B8);
  }

  return result;
}

uint64_t sub_100BA6134()
{

  return swift_deallocObject();
}

uint64_t sub_100BA61E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  a3();
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a8;
  v18[3] = a9;
  v15 = type metadata accessor for HeightLimitedButtonTextView(0, v18);
  result = a4();
  v17 = (a7 + *(v15 + 56));
  *v17 = a1;
  v17[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1001109D0(&qword_1011B5A00, &qword_100F06770);
  v31 = a1 + 5;
  v3 = a1[2];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v29 = a1[3];
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _CompositingGroupEffect;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v40 = type metadata accessor for Button();
  v41 = type metadata accessor for PlainButtonStyle();
  v42 = swift_getWitnessTable();
  v43 = sub_100BA68A8();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v24[3] = swift_getWitnessTable();
  v24[0] = type metadata accessor for ViewThatFits();
  v27 = *(v24[0] - 8);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = type metadata accessor for ModifiedContent();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v24[1] = swift_getWitnessTable();
  v24[2] = type metadata accessor for _OverlayModifier();
  v9 = type metadata accessor for ModifiedContent();
  v25 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = a1[4];
  v15 = v30;
  View.hidden()();
  static Axis.Set.vertical.getter();
  *&v16 = v14;
  *(&v16 + 1) = *v31;
  *&v17 = v3;
  *(&v17 + 1) = v29;
  v33 = v17;
  v34 = v16;
  v35 = v15;
  ViewThatFits.init(in:content:)();
  static Alignment.center.getter();
  v18 = sub_100BA767C();
  v38 = v14;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24[0];
  View.overlay<A>(_:alignment:)();
  (*(v27 + 8))(v5, v20);
  (*(v26 + 8))(v8, v6);
  v21 = swift_getWitnessTable();
  v36 = v19;
  v37 = v21;
  swift_getWitnessTable();
  sub_100B5B86C();
  v22 = *(v25 + 8);
  v22(v11, v9);
  sub_100B5B86C();
  return (v22)(v13, v9);
}

unint64_t sub_100BA68A8()
{
  result = qword_1011B5A08;
  if (!qword_1011B5A08)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5A08);
  }

  return result;
}

uint64_t sub_100BA6900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a3;
  v50 = a1;
  v72 = a6;
  v8 = type metadata accessor for PlainButtonStyle();
  v60 = v8;
  v71 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _CompositingGroupEffect;
  v54 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v66 = v10;
  v65 = swift_getWitnessTable();
  v11 = type metadata accessor for Button();
  v61 = v11;
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v48 - v12;
  v13 = swift_getWitnessTable();
  v59 = v13;
  v58 = sub_100BA68A8();
  v82 = v11;
  v83 = v8;
  v84 = v13;
  v85 = v58;
  v62 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v15;
  sub_1001109D0(&qword_1011B5A00, &qword_100F06770);
  v49 = a2;
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - v18;
  v20 = type metadata accessor for ModifiedContent();
  v73 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v48 - v23;
  View.lineLimit(_:)();
  v25 = sub_100BA7BF0();
  v81[4] = a4;
  v81[5] = v25;
  v26 = a4;
  v27 = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v17 + 8))(v19, v16);
  v81[2] = v27;
  v81[3] = &protocol witness table for _FixedSizeLayout;
  v52 = swift_getWitnessTable();
  v28 = v24;
  v51 = v22;
  sub_100B5B86C();
  v53 = *(v73 + 8);
  v54 = (v73 + 8);
  v53(v22, v20);
  v29 = v49;
  v30 = v68;
  v82 = v49;
  v83 = v68;
  v31 = v69;
  v84 = v26;
  v85 = v69;
  type metadata accessor for HeightLimitedButtonTextView(0, &v82);
  v74 = v29;
  v75 = v30;
  v76 = v26;
  v77 = v31;
  v78 = v50;

  v32 = v56;
  Button.init(action:label:)();
  v33 = v70;
  PlainButtonStyle.init()();
  v34 = v55;
  v35 = v61;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  View.buttonStyle<A>(_:)();
  (*(v71 + 8))(v33, v36);
  (*(v67 + 8))(v32, v35);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = OpaqueTypeMetadata2;
  sub_100B5B86C();
  v42 = v63;
  v43 = *(v63 + 8);
  v44 = v34;
  v43(v34, v41);
  v45 = v51;
  (*(v73 + 16))(v51, v28, v20);
  v82 = v45;
  (*(v42 + 16))(v44, v40, v41);
  v83 = v44;
  v81[0] = v20;
  v81[1] = v41;
  v79 = v52;
  v80 = OpaqueTypeConformance2;
  sub_100BB7D60(&v82, 2uLL, v81);
  v43(v40, v41);
  v46 = v53;
  v53(v28, v20);
  v43(v44, v41);
  return v46(v45, v20);
}

uint64_t sub_100BA7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v24 = a6;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v19 - v14;
  static HorizontalAlignment.trailing.getter();
  static VerticalAlignment.lastTextBaseline.getter();
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  View.compositingGroup()();
  (*(v7 + 8))(v9, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_100B5B86C();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_100B5B86C();
  return (v17)(v15, v10);
}

uint64_t sub_100BA7404@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a6;
  v9 = *(a3 - 1);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  v26 = v20;
  sub_100B5B86C();
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v21 = v27;
  v35 = v27;
  type metadata accessor for HeightLimitedButtonTextView(0, &v32);
  sub_100B5B86C();
  (*(v15 + 16))(v17, v19, a2);
  v32 = v17;
  (*(v9 + 16))(v11, v13, a3);
  v33 = v11;
  v31[0] = a2;
  v31[1] = a3;
  v29 = v26;
  v30 = v21;
  sub_100BB7D60(&v32, 2uLL, v31);
  v22 = *(v9 + 8);
  v22(v13, a3);
  v23 = *(v15 + 8);
  v23(v19, a2);
  v22(v11, a3);
  return (v23)(v17, a2);
}

unint64_t sub_100BA767C()
{
  result = qword_1011B5A10[0];
  if (!qword_1011B5A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011B5A10);
  }

  return result;
}

unint64_t sub_100BA7718(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_10001F888();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100BA77BC(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_100BA798C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_100BA7BF0()
{
  result = qword_1011B5A98;
  if (!qword_1011B5A98)
  {
    sub_1001109D0(&qword_1011B5A00, &qword_100F06770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5A98);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0910, &unk_100F03BF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel(uint64_t a1)
{
  result = qword_1011B5B58;
  if (!qword_1011B5B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = type metadata accessor for Text.LineStyle.Pattern();
  v81 = *(v1 - 8);
  v82 = v1;
  __chkstk_darwin();
  v80 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin();
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B5418, &qword_100F06040);
  v77 = v5;
  __chkstk_darwin();
  v7 = &v72 - v6;
  v8 = sub_10010FC20(&qword_1011B5AA0, &qword_100F06860);
  __chkstk_darwin();
  v78 = &v72 - v9;
  Int.seconds.getter(44);
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v75 = v13;
  v76 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_10010FC20(&qword_1011B5420, &qword_100F06048) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = type metadata accessor for Text.Case();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v78;
  v22 = v79;
  v7[16] = v75 & 1;
  *(v7 + 3) = v76;
  static Font.Weight.semibold.getter();
  sub_100BA880C();
  View.fontWeight(_:)();
  sub_1000095E8(v7, &qword_1011B5418, &qword_100F06040);
  v24 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_10010FC20(&qword_1011B5AB8, &qword_100F068C8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel(0) + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    LOBYTE(v100) = v31 & 1;
  }

  else
  {

    sub_1005FF6B8(v31, 0);
    v32 = static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v34 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v35 = sub_1000D8F20(v31, 0);
    (*(v73 + 8))(v34, v74, v35);
  }

  v36 = v80;
  static Text.LineStyle.Pattern.solid.getter();
  sub_100BA88C4();
  v37 = v83;
  View.underline(_:pattern:color:)();
  (*(v81 + 8))(v36, v82);
  sub_1000C83F8(v23);
  v38 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37 + *(sub_10010FC20(&qword_1011B5AD0, &qword_100F06900) + 36);
  *v47 = v38;
  *(v47 + 8) = v40;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v48 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v37 + *(sub_10010FC20(&qword_1011B5AD8, &qword_100F06908) + 36);
  *v57 = v48;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = static VerticalAlignment.center.getter();
  v92 = 0;
  sub_100BA8474(&v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  v99[2] = v87;
  v99[3] = v88;
  v99[4] = v89;
  v99[5] = v90;
  v99[0] = v85;
  v99[1] = v86;
  sub_1000089F8(&v93, &v84, &qword_1011B5AE0, &qword_100F06910);
  sub_1000095E8(v99, &qword_1011B5AE0, &qword_100F06910);
  *&v91[39] = v95;
  *&v91[55] = v96;
  *&v91[71] = v97;
  *&v91[87] = v98;
  *&v91[7] = v93;
  *&v91[23] = v94;
  v59 = v92;
  v60 = v37 + *(sub_10010FC20(&qword_1011B5AE8, &qword_100F06918) + 36);
  v61 = *(sub_10010FC20(&qword_1011B5AF0, &qword_100F06920) + 36);
  v62 = enum case for BlendMode.destinationOut(_:);
  v63 = type metadata accessor for BlendMode();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  v64 = *&v91[32];
  *(v60 + 65) = *&v91[48];
  v65 = *&v91[80];
  *(v60 + 81) = *&v91[64];
  *(v60 + 97) = v65;
  v66 = *&v91[16];
  *(v60 + 17) = *v91;
  *(v60 + 33) = v66;
  *v60 = v58;
  *(v60 + 8) = 0;
  *(v60 + 16) = v59;
  *(v60 + 112) = *&v91[95];
  *(v60 + 49) = v64;
  v67 = static Alignment.center.getter();
  v69 = v68;
  result = sub_10010FC20(&qword_1011B5AF8, &qword_100F06928);
  v71 = (v60 + *(result + 36));
  *v71 = v67;
  v71[1] = v69;
  return result;
}