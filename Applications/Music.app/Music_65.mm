uint64_t sub_100732850()
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v1 = &v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  sub_10010FC20(&qword_1011A0A70, &qword_100EE00B0);
  __chkstk_darwin();
  v5 = &v17 - v4;
  sub_100732D38(v3);
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v6) == 1)
  {
    v9 = &unk_101188920;
    v10 = &qword_100EBCC50;
    v11 = v3;
  }

  else
  {
    Artwork.gradient.getter();
    (*(v7 + 8))(v3, v6);
    v12 = type metadata accessor for Artwork.Gradient();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      v16 = Artwork.Gradient.color.getter();
      (*(v13 + 8))(v5, v12);
      if (v16)
      {
        return Color.init(cgColor:)();
      }

      goto LABEL_6;
    }

    v9 = &qword_1011A0A70;
    v10 = &qword_100EE00B0;
    v11 = v5;
  }

  sub_1000095E8(v11, v9, v10);
LABEL_6:
  sub_100732D38(v1);
  if (v8(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_101188920, &qword_100EBCC50);
    return 0;
  }

  v14 = Artwork.backgroundColor.getter();
  (*(v7 + 8))(v1, v6);
  if (!v14)
  {
    return 0;
  }

  return Color.init(cgColor:)();
}

uint64_t sub_100732B10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v5 = v14 - v4;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100732D38(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000095E8(v5, &unk_101188920, &qword_100EBCC50);
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = *a3;
  swift_getKeyPath();
  v14[1] = v11;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  if (v12)
  {
    v13 = *(v11 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8);

    v12(v9);
    sub_100020438(v12, v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100732D38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VideoArtwork();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = type metadata accessor for MotionViewStateObserver.State();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Uber(0);
  sub_10010FC20(&qword_1011A0920, &qword_100EDFF28);
  LazyState.wrappedValue.getter();
  dispatch thunk of MotionViewStateObserver.state.getter();

  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for MotionViewStateObserver.State.fallback(_:))
  {
    v14 = *v1;
    swift_getKeyPath();
    v24 = v14;
    sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
    swift_beginAccess();
    return sub_1000089F8(v14 + v15, a1, &unk_101188920, &qword_100EBCC50);
  }

  else
  {
    v17 = *v1;
    if (v13 == enum case for MotionViewStateObserver.State.previewFrame(_:) || v13 == enum case for MotionViewStateObserver.State.motion(_:))
    {
      swift_getKeyPath();
      v24 = v17;
      sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
      swift_beginAccess();
      sub_1000089F8(v17 + v19, v8, &unk_101192950, &unk_100EBDF40);
      if ((*(v4 + 48))(v8, 1, v3))
      {
        sub_1000095E8(v8, &unk_101192950, &unk_100EBDF40);
        v20 = type metadata accessor for Artwork();
        return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      }

      else
      {
        (*(v4 + 16))(v6, v8, v3);
        sub_1000095E8(v8, &unk_101192950, &unk_100EBDF40);
        VideoArtwork.previewFrame.getter();
        (*(v4 + 8))(v6, v3);
        v22 = type metadata accessor for Artwork();
        return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
      }
    }

    else
    {
      swift_getKeyPath();
      v24 = v17;
      sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
      swift_beginAccess();
      sub_1000089F8(v17 + v21, a1, &unk_101188920, &qword_100EBCC50);
      return (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_100733274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v48 = a3;
  v46 = type metadata accessor for EnvironmentValues();
  v45 = *(v46 - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v51 = a1;
  sub_10073411C(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
  swift_beginAccess();
  sub_1000089F8(a1 + v10, a5, &unk_101192950, &unk_100EBDF40);
  swift_getKeyPath();
  *&v51 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
  swift_beginAccess();
  v12 = type metadata accessor for ArtworkMotionView(0);
  sub_1000089F8(a1 + v11, a5 + v12[5], &unk_101188920, &qword_100EBCC50);
  v13 = v12[6];
  v14 = type metadata accessor for Artwork.CropStyle();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  swift_getKeyPath();
  *&v51 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth;
  v16 = *(a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth);
  swift_getKeyPath();
  *&v51 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v16, 0, COERCE__INT64(*(a1 + v15) * 4.0 / 3.0), 0, 0, 1, 2, &v49);
  v17 = v12[8];
  v18 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v18 - 8) + 56))(a5 + v17, 1, 1, v18);
  v19 = v12[9];
  v20 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v21 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v21 - 8) + 104))(a5 + v19, v20, v21);
  v22 = (a5 + v12[7]);
  v23 = v50[0];
  *v22 = v49;
  v22[1] = v23;
  *(v22 + 26) = *(v50 + 10);
  *(a5 + v12[10]) = 1;
  *(a5 + v12[11]) = a2;
  v24 = a5 + *(sub_10010FC20(&qword_1011A0A80, &qword_100EE01E0) + 36);
  *v24 = 0;
  *(v24 + 8) = 257;
  swift_getKeyPath();
  *&v51 = a1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = (a5 + *(sub_10010FC20(&qword_1011A0A88, &qword_100EE01E8) + 36));
  v26 = v52;
  *v25 = v51;
  v25[1] = v26;
  v25[2] = v53;
  v27 = static Edge.Set.top.getter();
  if ((v47 & 1) == 0)
  {
    v28 = v48;

    v29 = static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v31 = v44;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v32 = sub_1000D8F20(v28, 0);
    (*(v45 + 8))(v31, v46, v32);
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  result = sub_10010FC20(&qword_1011A0A90, &unk_100EE01F0);
  v42 = a5 + *(result + 36);
  *v42 = v27;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  return result;
}

unint64_t sub_10073383C()
{
  result = qword_1011A09F8;
  if (!qword_1011A09F8)
  {
    sub_1001109D0(&qword_1011A09F0, &qword_100EDFFE8);
    sub_1007338C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A09F8);
  }

  return result;
}

unint64_t sub_1007338C8()
{
  result = qword_1011A0A00;
  if (!qword_1011A0A00)
  {
    sub_1001109D0(&qword_1011A0A08, &qword_100EDFFF0);
    sub_100733980();
    sub_100020674(&unk_1011A1880, &qword_1011A0A40, &unk_100EE1160, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A00);
  }

  return result;
}

unint64_t sub_100733980()
{
  result = qword_1011A0A10;
  if (!qword_1011A0A10)
  {
    sub_1001109D0(&qword_1011A0A18, &qword_100EDFFF8);
    sub_100733A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A10);
  }

  return result;
}

unint64_t sub_100733A0C()
{
  result = qword_1011A0A20;
  if (!qword_1011A0A20)
  {
    sub_1001109D0(&qword_1011A0A28, &qword_100EE0000);
    sub_100733AC4();
    sub_100020674(&qword_1011A0A38, &qword_1011A09E8, &qword_100EDFFE0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A20);
  }

  return result;
}

unint64_t sub_100733AC4()
{
  result = qword_1011A0A30;
  if (!qword_1011A0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A30);
  }

  return result;
}

unint64_t sub_100733B18()
{
  result = qword_1011A0A48;
  if (!qword_1011A0A48)
  {
    sub_1001109D0(&qword_1011A09D0, &qword_100EDFF98);
    sub_1001109D0(&qword_1011A09F0, &qword_100EDFFE8);
    sub_10073383C();
    swift_getOpaqueTypeConformance2();
    sub_10073411C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A48);
  }

  return result;
}

uint64_t sub_100733C40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_10073411C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100733CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Uber(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100733D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Uber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100733DBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Uber(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100732B10(a1, a2, v6);
}

uint64_t sub_100733E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100733ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100733F48()
{
  result = qword_1011A0A98;
  if (!qword_1011A0A98)
  {
    sub_1001109D0(&qword_1011A0A90, &unk_100EE01F0);
    sub_100733FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0A98);
  }

  return result;
}

unint64_t sub_100733FD4()
{
  result = qword_1011A0AA0;
  if (!qword_1011A0AA0)
  {
    sub_1001109D0(&qword_1011A0A88, &qword_100EE01E8);
    sub_100734060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0AA0);
  }

  return result;
}

unint64_t sub_100734060()
{
  result = qword_1011A0AA8;
  if (!qword_1011A0AA8)
  {
    sub_1001109D0(&qword_1011A0A80, &qword_100EE01E0);
    sub_10073411C(&qword_101190498, type metadata accessor for ArtworkMotionView, &unk_100EBDF74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0AA8);
  }

  return result;
}

uint64_t sub_10073411C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100734164()
{
  v0 = type metadata accessor for URLQueryItem();
  v42 = *(v0 - 8);
  __chkstk_darwin();
  v44 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v33 - v2;
  __chkstk_darwin();
  v45 = &v33 - v4;
  __chkstk_darwin();
  v6 = &v33 - v5;
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &qword_101194980, &qword_100ECA390);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v35 = v12;
  v36 = v10;
  v37 = v9;
  v33 = v6;
  v34 = v3;
  v14 = result;
  v41 = *(result + 16);
  if (v41)
  {
    v15 = 0;
    v40 = v42 + 16;
    v38 = (v42 + 8);
    v43 = (v42 + 32);
    v16 = _swiftEmptyArrayStorage;
    v39 = v0;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v18 = *(v42 + 72);
      (*(v42 + 16))(v45, v14 + v17 + v18 * v15, v0);
      if (URLQueryItem.name.getter() == 0x7542656372756F73 && v19 == 0xEE006449656C646ELL)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_13;
      }

      result = (*v38)(v45, v0);
LABEL_7:
      if (v41 == ++v15)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    v21 = v14;
    v22 = *v43;
    (*v43)(v44, v45, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10066CAA4(0, v16[2] + 1, 1);
      v16 = v46;
    }

    v25 = v16[2];
    v24 = v16[3];
    if (v25 >= v24 >> 1)
    {
      sub_10066CAA4((v24 > 1), v25 + 1, 1);
      v16 = v46;
    }

    v16[2] = v25 + 1;
    v26 = v16 + v17 + v25 * v18;
    v0 = v39;
    result = (v22)(v26, v44, v39);
    v14 = v21;
    goto LABEL_7;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_20:

  if (!v16[2])
  {
    (*(v36 + 8))(v35, v37);

    return 0;
  }

  v27 = v42;
  v28 = v34;
  (*(v42 + 16))(v34, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v0);

  v29 = v33;
  (*(v27 + 32))(v33, v28, v0);
  v30 = URLQueryItem.value.getter();
  v32 = v31;
  (*(v27 + 8))(v29, v0);
  (*(v36 + 8))(v35, v37);
  if (v32)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007346B4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v54 = type metadata accessor for URLQueryItem();
  v1 = *(v54 - 8);
  __chkstk_darwin();
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v43 - v3;
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v6 = &v43 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v43 - v13;
  __chkstk_darwin();
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v51 = v15;
  v19 = v15;
  v20 = v53;
  v18(v19, 1, 1, v16);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    result = URLComponents.queryItems.getter();
    v22 = v8;
    if (!result)
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_19;
    }

    v23 = result;
    v44 = v10;
    v45 = v22;
    v46 = v7;
    v47 = v17;
    v48 = v16;
    v49 = v12;
    v59 = *(result + 16);
    if (!v59)
    {
      v25 = _swiftEmptyArrayStorage;
LABEL_21:

      v38 = v44;
      if (!v25[2])
      {
      }

      v39 = v45;
      URLComponents.queryItems.setter();
      v40 = v50;
      URLComponents.url.getter();
      (*(v39 + 8))(v38, v46);
      v41 = v51;
      sub_1000095E8(v51, &qword_101183A20, &unk_100EBCF80);
      sub_100027998(v40, v41);
      v36 = v41;
      v37 = v52;
      v20 = v53;
      v16 = v48;
      v12 = v49;
      v17 = v47;
      goto LABEL_24;
    }

    v24 = 0;
    v55 = (v1 + 32);
    v57 = (v1 + 8);
    v58 = v1 + 16;
    v25 = _swiftEmptyArrayStorage;
    v26 = v54;
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      v27 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v28 = *(v1 + 72);
      (*(v1 + 16))(v4, v23 + v27 + v28 * v24, v26);
      if (URLQueryItem.name.getter() == 0x7542656372756F73 && v29 == 0xEE006449656C646ELL)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          v31 = *v55;
          (*v55)(v56, v4, v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066CAA4(0, v25[2] + 1, 1);
            v25 = v60;
          }

          v34 = v25[2];
          v33 = v25[3];
          if (v34 >= v33 >> 1)
          {
            sub_10066CAA4((v33 > 1), v34 + 1, 1);
            v25 = v60;
          }

          v25[2] = v34 + 1;
          v35 = v25 + v27 + v34 * v28;
          v26 = v54;
          result = v31(v35, v56, v54);
          goto LABEL_8;
        }
      }

      result = (*v57)(v4, v26);
LABEL_8:
      if (v59 == ++v24)
      {
        goto LABEL_21;
      }
    }
  }

  sub_1000095E8(v6, &qword_101194980, &qword_100ECA390);
LABEL_19:
  v36 = v51;
  v37 = v52;
LABEL_24:
  sub_100027998(v36, v12);
  v42 = *(v17 + 48);
  if (v42(v12, 1, v16) != 1)
  {
    return (*(v17 + 32))(v37, v12, v16);
  }

  (*(v17 + 16))(v37, v20, v16);
  result = (v42)(v12, 1, v16);
  if (result != 1)
  {
    return sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
  }

  return result;
}

uint64_t sub_100734D0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v13 = 0xD000000000000016;
  v14 = 0x8000000100E561E0;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x8000000100E56220;
  String.append(_:)(v9);
  URL.init(string:)();

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v7, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_100734E88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v7 = v14 - v6;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v8._object = 0x8000000100E561E0;
  v8._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v10._object = 0x8000000100E56200;
  String.append(_:)(v10);
  URL.init(string:)();

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v7, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v7, v11);
  }

  __break(1u);
  return result;
}

double sub_100735010(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10005EDE8();
  }

  return result;
}

uint64_t sub_100735068()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007352B8(char *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = a2 & 1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = v21 - v11;
  v13 = (*(v9 + 16))(v21 - v11, a1, v8, v10);
  v14 = a4(v13);
  v15 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  if (*(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) == v7)
  {
    v16 = *(v9 + 8);
    v16(v12, v8);
    *(v14 + v15) = v7;
  }

  else
  {
    swift_getKeyPath();
    v21[1] = v21;
    __chkstk_darwin();
    v21[-2] = v14;
    LOBYTE(v21[-1]) = v7;
    v21[3] = v14;
    sub_1007493A0(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v16 = *(v9 + 8);
    v16(v12, v8);
  }

  v17 = objc_allocWithZone(type metadata accessor for ContextualPreview.ViewController(0));
  sub_100243448(v14);
  v19 = v18;
  v16(a1, v8);
  return v19;
}

id sub_1007354F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100747E6C;
  v17 = &unk_1010BD268;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100747EBC;
  v17 = &unk_1010BD240;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_100020438(a4, a5);
  sub_100020438(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

uint64_t sub_1007356F0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1007357E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = _HashTable.startBucket.getter();
    v7 = *(a3 + 36);
  }

  v31 = v6;
  v32 = v7;
  v34 = v5 != 0;
  v33 = v5 != 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    if (v33)
    {
      goto LABEL_38;
    }

    v13 = v32;
    if (*(a3 + 36) != v32)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v14 = v31;
    if (v31 == 1 << *(a3 + 32))
    {
      break;
    }

    while (1)
    {
      sub_1007482E4(v14, v13, v34, a3, &qword_101181F70, UITab_ptr);
      v17 = v16;
      v30[0] = v16;
      v18 = a1(v30);

      if (v3)
      {
        sub_1000D8F7C(v14, v13, v5 != 0);
        return;
      }

      if (v18)
      {
        return;
      }

      if (!v5)
      {
        break;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10010FC20(&qword_1011A0DC8, &qword_100EE0480);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v8(v30, 0);
LABEL_7:
      v9 = __CocoaSet.endIndex.getter();
      if (!v33)
      {
        goto LABEL_38;
      }

      v11 = v9;
      v12 = v10;
      v14 = v31;
      v13 = v32;
      v15 = static __CocoaSet.Index.== infix(_:_:)();
      sub_1000D8F7C(v11, v12, 1);
      if (v15)
      {
        goto LABEL_32;
      }
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v19 = 1 << *(a3 + 32);
    if (v14 >= v19)
    {
      goto LABEL_35;
    }

    v20 = v14 >> 6;
    v21 = *(a3 + 56 + 8 * (v14 >> 6));
    if (((v21 >> v14) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(a3 + 36) != v13)
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v14 & 0x3F));
    if (v22)
    {
      v19 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v20 << 6;
      v24 = v20 + 1;
      v25 = (a3 + 64 + 8 * v20);
      while (v24 < (v19 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1000D8F7C(v14, v13, 0);
          v19 = __clz(__rbit64(v26)) + v23;
          goto LABEL_29;
        }
      }

      sub_1000D8F7C(v14, v13, 0);
    }

LABEL_29:
    v28 = *(a3 + 36);
    v31 = v19;
    v32 = v28;
    v33 = 0;
  }

  v14 = 1 << *(a3 + 32);
LABEL_32:
  sub_1000D8F7C(v14, v13, v5 != 0);
  v34 = 255;
}

uint64_t sub_100735B1C()
{
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v27 = &v26 - v1;
  v2 = type metadata accessor for Playlist();
  v26 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v15 = type metadata accessor for Playlist.Folder();
  (*(*(v15 - 8) + 16))(v14, v0, v15);
  v16 = enum case for Playlist.Folder.Item.folder(_:);
  (*(v10 + 104))(v14, enum case for Playlist.Folder.Item.folder(_:), v9);
  (*(v10 + 16))(v12, v14, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == v16)
  {
    (*(v6 + 104))(v8, enum case for Playlist.Variant.folder(_:), v5);
    Playlist.Variant.symbolImage.getter();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = *(v10 + 8);
    v20(v14, v9);
    v20(v12, v9);
  }

  else
  {
    if (v17 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v10 + 96))(v12, v9);
      v21 = v26;
      (*(v26 + 32))(v4, v12, v2);
      v22 = v27;
      Playlist.variant.getter();
      if ((*(v6 + 48))(v22, 1, v5) != 1)
      {
        Playlist.Variant.symbolImage.getter();
        v19 = v24;
        (*(v21 + 8))(v4, v2);
        (*(v10 + 8))(v14, v9);
        (*(v6 + 8))(v22, v5);
        return v19;
      }

      (*(v21 + 8))(v4, v2);
      (*(v10 + 8))(v14, v9);
      sub_1000095E8(v22, &unk_10119EF50, &unk_100EDDF70);
    }

    else
    {
      v23 = *(v10 + 8);
      v23(v14, v9);
      v23(v12, v9);
    }

    return 0;
  }

  return v19;
}

uint64_t *sub_100735FC4(void *a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Playlist.Folder();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v22[-v11];
  _s17PlaylistFolderTabCMa();
  if (swift_dynamicCastClass())
  {

    UnfairLock.locked<A>(_:)(sub_10074A094);

    (*(v8 + 32))(v12, v10, v7);
    v13 = *(v8 + 16);
  }

  else
  {
    v13 = *(v8 + 16);
    v13(v12, a2, v7);
  }

  v14 = *(v4 + 20);
  v13(v6 + v14, v12, v7);
  (*(v8 + 56))(v6 + v14, 0, 1, v7);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v6 = qword_101218AB8;
  *(v6 + *(v4 + 24)) = 0;

  v15 = [a1 tabBarController];
  if (!v15 || (v16 = v15, v17 = [v15 traitCollection], v16, !v17))
  {
    v17 = [objc_opt_self() currentTraitCollection];
  }

  v18 = [v17 horizontalSizeClass];

  v19 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
  v20 = sub_10037E11C(v6, 0, v18 != 2);
  (*(v8 + 8))(v12, v7);
  return v20;
}

uint64_t sub_100736308()
{
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v27 = &v26 - v1;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v26 - v14;
  (*(v3 + 16))(&v26 - v14, v0, v2, v13);
  v16 = enum case for Playlist.Folder.Item.playlist(_:);
  (*(v10 + 104))(v15, enum case for Playlist.Folder.Item.playlist(_:), v9);
  (*(v10 + 16))(v12, v15, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v6 + 104))(v8, enum case for Playlist.Variant.folder(_:), v5);
    Playlist.Variant.symbolImage.getter();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = *(v10 + 8);
    v20(v15, v9);
    v20(v12, v9);
  }

  else
  {
    if (v17 == v16)
    {
      (*(v10 + 96))(v12, v9);
      v21 = v26;
      (*(v3 + 32))(v26, v12, v2);
      v22 = v27;
      Playlist.variant.getter();
      if ((*(v6 + 48))(v22, 1, v5) != 1)
      {
        Playlist.Variant.symbolImage.getter();
        v19 = v24;
        (*(v3 + 8))(v21, v2);
        (*(v10 + 8))(v15, v9);
        (*(v6 + 8))(v22, v5);
        return v19;
      }

      (*(v3 + 8))(v21, v2);
      (*(v10 + 8))(v15, v9);
      sub_1000095E8(v22, &unk_10119EF50, &unk_100EDDF70);
    }

    else
    {
      v23 = *(v10 + 8);
      v23(v15, v9);
      v23(v12, v9);
    }

    return 0;
  }

  return v19;
}

char *sub_100736798(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v34 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v32 - v4;
  v32[1] = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v32 - v6;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v32 - v12;
  __chkstk_darwin();
  v15 = v32 - v14;
  __chkstk_darwin();
  v17 = v32 - v16;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {

    UnfairLock.locked<A>(_:)(sub_10074A07C);

    (*(v9 + 32))(v17, v15, v8);
    v18 = *(v9 + 16);
  }

  else
  {
    v18 = *(v9 + 16);
    v18(v17, a2, v8);
  }

  v18(v13, v17, v8);
  v19 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
  v20 = *(v19 + 48);
  v32[0] = v17;
  v21 = *(v19 + 64);
  v22 = _s6AlbumsV5ScopeOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v7[v20] = 0;
  v7[v21] = 0;
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for URL();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  v18(v11, v13, v8);
  v25 = v33;
  sub_100749D3C(v7, v33, type metadata accessor for ContainerDetail.Source);
  v26 = v34;
  sub_1000089F8(v24, v34, &qword_101183A20, &unk_100EBCF80);
  v27 = sub_100866288(v11, v25, 0, 0, v26, 0);
  v28 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v29 = sub_100137F48(v27, v28);
  sub_1000095E8(v24, &qword_101183A20, &unk_100EBCF80);
  sub_100749E0C(v7, type metadata accessor for ContainerDetail.Source);
  v30 = *(v9 + 8);
  v30(v13, v8);
  v30(v32[0], v8);
  return v29;
}

char *sub_100736C48()
{
  v1 = v0;
  v2 = 0xD000000000000011;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v4 = &aBlock - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction] = 0;
  v7 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab;
  v8 = objc_allocWithZone(_s8FacetTabCMa());
  *&v0[v7] = sub_1007EC0B0(1, 0);
  v9 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup;
  v10 = objc_allocWithZone(_s21UserPlaylistsTabGroupCMa());
  *&v0[v9] = sub_100737C64();
  v11 = 0x8000000100E564D0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v47 = 0xD000000000000011;
  v48 = 0x8000000100E564D0;
  aBlock = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v16 = v15;
  LOBYTE(v5) = v17;
  result = sub_1000095E8(v4, &unk_101182EA0, &unk_100EBE980);
  if (v5)
  {
    v19 = 0x8000000100E564F0;
    v20 = 0xD000000000000025;
  }

  else
  {
    v21 = ("Playlists.Section.NewPlaylist" >> 40) & 0xF0000;
    if (("Playlists.Section.NewPlaylist" & 0x2000000000000000) == 0)
    {
      v21 = 1114112;
    }

    if (v21 >> 14 < v16 >> 14)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v2 = static String._fromSubstring(_:)();
    v23 = v22;

    v20 = 0xD000000000000011;
    v19 = 0x8000000100E564D0;
    v11 = v23;
  }

  v47 = v20;
  v48 = v19;
  v49 = v2;
  v50 = v11;
  v51 = v12;
  v52 = v14;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v26.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v54)
  {
    v44 = v54;
    v45 = v55;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10003640C;
    v43 = &unk_1010BD5D8;
    v27 = _Block_copy(&aBlock);
  }

  else
  {
    v27 = 0;
  }

  v28 = v53;
  v29 = type metadata accessor for MusicTab.Group();
  v46.receiver = v1;
  v46.super_class = v29;
  v30 = objc_msgSendSuper2(&v46, "initWithTitle:image:identifier:children:viewControllerProvider:", v24, v28, v25, v26.super.isa, v27);
  _Block_release(v27);

  sub_100036360(&v47);
  v31 = v30;
  [v31 setPreferredPlacement:6];
  [v31 setAllowsHiding:0];
  [v31 setAllowsReordering:0];
  [v31 setSidebarAppearance:2];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100EBC6D0;
  v33 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab;
  v34 = *&v31[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab];
  *(v32 + 32) = v34;
  v35 = *&v31[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup];
  *(v32 + 40) = v35;
  v36 = v34;
  v37 = v35;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setChildren:isa];

  v39 = [*&v31[v33] identifier];
  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  [v31 setDefaultChildIdentifier:v39];

  sub_1007371EC();
  return v31;
}

void sub_1007371EC()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for MusicTab.Action();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  if (qword_10117FC90 != -1)
  {
    swift_once();
  }

  v4 = qword_101219508;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v4;

  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift_unknownObjectWeakAssign();

  if (v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction] == 1)
  {
    v7 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSidebarActions:isa];
}

void sub_100737528(uint64_t a1, uint64_t a2)
{
  v2 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v48 - v5;
  __chkstk_darwin();
  v8 = v48 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v10 = Strong;
  v11 = [Strong tabBarController];
  if (!v11 || (v12 = v11, v13 = sub_10003169C(), v12, !v13))
  {

LABEL_8:
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000060E4(v28, qword_101218E00);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136446210;
      swift_beginAccess();
      v48[2] = swift_unknownObjectWeakLoadStrong();
      sub_10010FC20(&qword_1011A0DD8, &qword_100EE04B8);
      v33 = String.init<A>(describing:)();
      v35 = sub_1000105AC(v33, v34, &v50);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to perform addToPlaylist: No interface context for tab=%{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    return;
  }

  v14 = [v10 managingTabGroup];
  if (v14)
  {
    v15 = v14;
    _s3TabCMa(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v48[0] = v16;
      v17 = type metadata accessor for Playlist.Folder();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = type metadata accessor for PlaylistCreation.Context(0);
      v48[1] = v13;
      v19 = v18;
      v20 = *(v18 + 24);
      v21 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
      (*(*(v21 - 8) + 56))(&v8[v20], 1, 1, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = v48[0];
      v23 = &v8[*(v19 + 20)];
      *v23 = 0;
      *(v23 + 1) = 0;
      v24 = &v8[*(v19 + 28)];
      *v24 = sub_100749D34;
      v24[1] = v22;
      swift_storeEnumTagMultiPayload();
      sub_100749D3C(v8, v6, type metadata accessor for AppInterfaceContext.Activity);
      sub_100749D3C(v6, v4, type metadata accessor for AppInterfaceContext.Activity);
      v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      sub_100749DA4(v4, v26 + v25, type metadata accessor for AppInterfaceContext.Activity);
      v27 = v15;
      sub_100706900(v6, sub_100115C18, v26);

      sub_100749E0C(v6, type metadata accessor for AppInterfaceContext.Activity);
      sub_100749E0C(v8, type metadata accessor for AppInterfaceContext.Activity);
      return;
    }
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218E00);
  v37 = v10;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v40 = 136446210;
    v42 = v37;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_1000105AC(v44, v46, v49);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unable to perform addToPlaylist: No library tab associated to tab=%{public}s", v40, 0xCu);
    sub_10000959C(v41);
  }

  else
  {
  }
}

NSString sub_100737B64()
{
  result = String._bridgeToObjectiveC()();
  qword_101219508 = result;
  return result;
}

void sub_100737B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
}

id sub_100737C64()
{
  v1 = v0;
  v2 = 0xEE00726573552E73;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v4 = &v25 - v3;
  strcpy(v33, "Playlists.User");
  HIBYTE(v33[1]) = -18;
  aBlock = 0xD000000000000014;
  v27 = 0x8000000100E3E560;
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v7 = v6;
  v9 = v8;
  result = sub_1000095E8(v4, &unk_101182EA0, &unk_100EBE980);
  if (v9)
  {
    v11 = 0x8000000100E56520;
    v12 = 0xD000000000000022;
    v13 = 0x7473696C79616C50;
  }

  else
  {
    if (v7 >> 14 > 0x38)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v12 = 0x7473696C79616C50;
    v11 = 0xEE00726573552E73;
    v2 = v15;
  }

  v33[0] = v12;
  v33[1] = v11;
  v33[2] = v13;
  v33[3] = v2;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v34 = 0;
  v35 = sub_100737FF0;
  v36 = 0;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v35)
  {
    v30 = v35;
    v31 = v36;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10003640C;
    v29 = &unk_1010BD600;
    v19 = _Block_copy(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  v20 = v34;
  v21 = type metadata accessor for MusicTab.Group();
  v32.receiver = v1;
  v32.super_class = v21;
  v22 = objc_msgSendSuper2(&v32, "initWithTitle:image:identifier:children:viewControllerProvider:", v16, v20, v17, v18.super.isa, v19);
  _Block_release(v19);

  sub_100036360(v33);
  v23 = v22;
  [v23 setAllowsHiding:0];
  [v23 setAllowsReordering:0];
  [v23 setSidebarAppearance:1];
  v24 = String._bridgeToObjectiveC()();
  [v23 setPlayActivityFeatureName:v24];

  return v23;
}

uint64_t *sub_100737FF0(void *a1)
{
  v2 = _s9PlaylistsV5ScopeVMa(0);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [a1 tabBarController];
  if (!v6 || (v7 = v6, v8 = [v6 traitCollection], v7, !v8))
  {
    v8 = [objc_opt_self() currentTraitCollection];
  }

  v9 = [v8 horizontalSizeClass];

  v10 = *(v2 + 20);
  v11 = type metadata accessor for Playlist.Folder();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v5 = qword_101218AB8;
  *(v5 + *(v2 + 24)) = 0;
  v12 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));

  return sub_10037E11C(v5, 0, v9 != 2);
}

double sub_10073819C()
{
  v1 = v0;
  v2 = 0;
  v99 = type metadata accessor for Playlist.Folder();
  v103 = *(v99 - 8);
  __chkstk_darwin();
  v98 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Folder.Item();
  v101 = *(v109 - 8);
  __chkstk_darwin();
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Playlist();
  v97 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F7A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = type metadata accessor for Logger();
    v113 = sub_1000060E4(v6, qword_101218E18);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Applying final updates", v9, 2u);
    }

    v10 = v1[4];
    v125 = v10;
    v11 = v10[2];
    v96 = v2;
    if (v11)
    {
      v12 = *v1;
      v123 = v1[1];
      v124 = v12;
      v102 = v1;
      v13 = v1[2];
      v121 = v1[3];
      v122 = v13;
      v100 = v121;

      sub_1000089F8(&v125, v117, &qword_1011A0DE0, &qword_100EE04C0);
      sub_1000089F8(&v124, v117, &qword_1011A0DE8, &qword_100EE04C8);
      sub_1000089F8(&v123, v117, &qword_1011A0DA0, &qword_100EE0438);
      sub_1000089F8(&v122, v117, &unk_1011A0DF0, &unk_100EE04D0);
      sub_1000089F8(&v121, v117, &unk_1011A0DF0, &unk_100EE04D0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v10[2];
        sub_1000095E8(&v124, &qword_1011A0DE8, &qword_100EE04C8);
        sub_1000095E8(&v123, &qword_1011A0DA0, &qword_100EE0438);
        sub_1000095E8(&v122, &unk_1011A0DF0, &unk_100EE04D0);
        sub_1000095E8(&v121, &unk_1011A0DF0, &unk_100EE04D0);
        sub_1000095E8(&v125, &qword_1011A0DE0, &qword_100EE04C0);
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating %ld playlist folder tabs", v16, 0xCu);
      }

      else
      {
        sub_1000095E8(&v124, &qword_1011A0DE8, &qword_100EE04C8);
        sub_1000095E8(&v123, &qword_1011A0DA0, &qword_100EE0438);
        sub_1000095E8(&v122, &unk_1011A0DF0, &unk_100EE04D0);
        sub_1000095E8(&v121, &unk_1011A0DF0, &unk_100EE04D0);
        sub_1000095E8(&v125, &qword_1011A0DE0, &qword_100EE04C0);
      }

      v20 = 0;
      v1 = (v10 + 8);
      v21 = 1 << *(v10 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v10[8];
      v24 = (v21 + 63) >> 6;
      *&v19 = 136446466;
      v106 = v19;
      v2 = &qword_101181F70;
      v107 = v10;
      while (v23)
      {
LABEL_21:
        v28 = (v20 << 9) | (8 * __clz(__rbit64(v23)));
        v29 = *(v10[7] + v28);
        v30 = *(v10[6] + v28);
        v114 = v29;

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v117[0] = v112;
          *v33 = v106;
          sub_100009F78(0, &qword_101181F70, UITab_ptr);
          v34 = Array.description.getter();
          v36 = sub_1000105AC(v34, v35, v117);

          *(v33 + 4) = v36;
          *(v33 + 12) = 2082;
          v37 = v30;
          v38 = [v37 description];
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LODWORD(v110) = v32;
          v40 = v39;
          v111 = v31;
          v25 = v30;
          v42 = v41;

          v10 = v107;
          v43 = sub_1000105AC(v40, v42, v117);

          *(v33 + 14) = v43;
          v2 = &qword_101181F70;
          v44 = v111;
          _os_log_impl(&_mh_execute_header, v111, v110, "Setting children=%{public}s for folderTab=%{public}s)", v33, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v25 = v30;
        }

        v23 &= v23 - 1;
        sub_100009F78(0, &qword_101181F70, UITab_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v25 setChildren:isa];
      }

      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v27 >= v24)
        {
          break;
        }

        v23 = v1[v27];
        ++v20;
        if (v23)
        {
          v20 = v27;
          goto LABEL_21;
        }
      }

      v1 = v102;
      v17 = v100;
      v18 = (v100 & 0xC000000000000001);
      if ((v100 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = v1[3];
      v18 = (v17 & 0xC000000000000001);
      if ((v17 & 0xC000000000000001) == 0)
      {
LABEL_8:
        if (!*(v17 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_25;
      }
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_54;
    }

LABEL_25:
    v114 = v18;
    v45 = *v1;
    v119 = v1[1];
    v120 = v45;
    v93 = v119;
    v118 = v1[2];
    sub_1000089F8(&v125, v117, &qword_1011A0DE0, &qword_100EE04C0);
    v1 = &qword_1011A0DE8;
    sub_1000089F8(&v120, v117, &qword_1011A0DE8, &qword_100EE04C8);
    sub_1000089F8(&v119, v117, &qword_1011A0DA0, &qword_100EE0438);
    sub_1000089F8(&v118, v117, &unk_1011A0DF0, &unk_100EE04D0);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    sub_1000095E8(&v120, &qword_1011A0DE8, &qword_100EE04C8);
    sub_1000095E8(&v119, &qword_1011A0DA0, &qword_100EE0438);
    sub_1000095E8(&v118, &unk_1011A0DF0, &unk_100EE04D0);

    sub_1000095E8(&v125, &qword_1011A0DE0, &qword_100EE04C0);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v117[0] = v49;
      *v48 = 136446210;
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      sub_100749E6C();
      v50 = Set.description.getter();
      v1 = v51;
      v52 = sub_1000105AC(v50, v51, v117);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Updating visual properties for invalidated playlist tabs=%{public}s", v48, 0xCu);
      sub_10000959C(v49);
    }

    v2 = v103;
    if (v114)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      sub_100749E6C();
      Set.Iterator.init(_cocoa:)();
      v17 = v117[0];
      v54 = v117[1];
      v55 = v117[2];
      v56 = v117[3];
      v57 = v117[4];
    }

    else
    {
      v58 = -1 << *(v17 + 32);
      v54 = (v17 + 56);
      v55 = ~v58;
      v59 = -v58;
      v60 = v59 < 64 ? ~(-1 << v59) : -1;
      v57 = (v60 & *(v17 + 56));

      v56 = 0;
    }

    v92 = v55;
    v61 = (v55 + 64) >> 6;
    v103 = (v97 + 2);
    LODWORD(v102) = enum case for Playlist.Folder.Item.playlist(_:);
    v107 = (v101 + 13);
    *&v106 = v101 + 1;
    v101 = (v97 + 1);
    v97 = (v2 + 2);
    v95 = enum case for Playlist.Folder.Item.folder(_:);
    v94 = (v2 + 1);
    *&v53 = 136446210;
    v91 = v53;
    v110 = v61;
    v111 = v54;
    v100 = v17;
    if (v17 < 0)
    {
      break;
    }

    while (1)
    {
      v69 = v56;
      v70 = v57;
      v71 = v56;
      if (!v57)
      {
        break;
      }

LABEL_40:
      v2 = ((v70 - 1) & v70);
      v1 = *(*(v17 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v70)))));
      if (!v1)
      {
        goto LABEL_53;
      }

LABEL_44:
      _s11PlaylistTabCMa();
      v73 = swift_dynamicCastClass();
      if (v73)
      {
        v112 = v73;

        v62 = v17;
        v63 = v104;
        v114 = v2;
        v2 = v105;
        UnfairLock.locked<A>(_:)(sub_10074A07C);

        v64 = v108;
        (*v103)(v108, v63, v2);
        v65 = v109;
        (*v107)(v64, v102, v109);
        Playlist.Folder.Item.name.getter();
        v66 = v64;
        v54 = v111;
        (*v106)(v66, v65);
        v67 = v63;
        v17 = v62;
        (*v101)(v67, v2);
        v68 = String._bridgeToObjectiveC()();

        [v112 setTitle:v68];

        v56 = v71;
        v57 = v114;
        v61 = v110;
        if (v17 < 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        _s17PlaylistFolderTabCMa();
        v74 = swift_dynamicCastClass();
        if (v74)
        {
          v114 = v74;

          v75 = v98;
          v76 = v99;
          UnfairLock.locked<A>(_:)(sub_10074A094);

          v77 = v108;
          (*v97)(v108, v75, v76);
          v78 = v109;
          (*v107)(v77, v95, v109);
          v79 = v2;
          v2 = Playlist.Folder.Item.name.getter();
          (*v106)(v77, v78);
          (*v94)(v75, v76);
          v80 = String._bridgeToObjectiveC()();

          [v114 setTitle:v80];

          v56 = v71;
          v57 = v79;
          v17 = v100;
        }

        else
        {
          v1 = v1;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v112 = v83;
            v114 = swift_slowAlloc();
            v116 = v114;
            *v83 = v91;
            v1 = v1;
            v84 = [v1 description];
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = sub_1000105AC(v85, v87, &v116);

            v89 = v112;
            *(v112 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v81, v82, "Unknown invalidated tab type=%{public}s", v89, 0xCu);
            sub_10000959C(v114);
          }

          else
          {
          }

          v56 = v71;
          v57 = v2;
        }

        v61 = v110;
        v54 = v111;
        if (v17 < 0)
        {
          goto LABEL_42;
        }
      }
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v61)
      {
        goto LABEL_53;
      }

      v70 = v54[v71].isa;
      ++v69;
      if (v70)
      {
        goto LABEL_40;
      }
    }

LABEL_56:
    __break(1u);
  }

LABEL_42:
  v72 = __CocoaSet.Iterator.next()();
  if (v72)
  {
    v115 = v72;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    swift_dynamicCast();
    v1 = v116;
    v71 = v56;
    v2 = v57;
    if (v116)
    {
      goto LABEL_44;
    }
  }

LABEL_53:
  sub_10005C9F8(v17);
LABEL_54:

  return result;
}

void *sub_10073920C(char *a1)
{
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v22[-1] - v8;
  v10 = *(v4 + 16);
  v10(&v22[-1] - v8, a1, v3, v7);
  if (qword_10117FC98 != -1)
  {
    swift_once();
  }

  v11 = qword_1011A0B60;
  sub_10010FC20(&qword_1011A0DC0, &qword_100EE0478);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + *(*v12 + 88), v9, v3);
  *(v12 + *(*v12 + 96)) = v11;
  *(v1 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab17PlaylistFolderTab_safeFolderMutator) = v12;
  (v10)(v9, a1, v3);
  (v10)(v6, v9, v3);

  sub_10074889C(v6, v22);
  v13 = *(v4 + 8);
  v13(v9, v3);
  v14 = sub_100489578(v22);
  v15 = AccessibilityIdentifier.playlistFolderView.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  _s17PlaylistFolderTabCMa();

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v16, v17, v18, v19);
  [v14 setSpringLoaded:1];
  [v14 setAllowsHiding:0];
  [v14 setAllowsReordering:0];
  [v14 setIsSidebarDestination:1];

  v13(a1, v3);
  return v14;
}

uint64_t sub_100739514(uint64_t a1)
{
  v3 = type metadata accessor for Playlist.Folder.Item();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin();
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Folder();
  v90 = *(v6 - 8);
  __chkstk_darwin();
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v72 - v8;
  __chkstk_darwin();
  v82 = &v72 - v9;
  __chkstk_darwin();
  v11 = &v72 - v10;
  v12 = v1;
  v13 = *&v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab17PlaylistFolderTab_safeFolderMutator];
  v87 = *(*v13 + 96);

  UnfairLock.locked<A>(_:)(sub_10074A094);
  v81 = 0;

  sub_1007493A0(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_1007493A0(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v14 = a1;
  v15 = v90;
  v16 = static MusicItem<>.==~ infix(_:_:)();
  v17 = *(v15 + 8);
  v17(v11, v6);
  v88 = v17;
  if (v16)
  {
    v78 = v11;
    v79 = v14;
    v80 = v12;
    v18 = *(v15 + 16);
    v90 = v15 + 16;
    v18(v5, v14, v6);
    v75 = enum case for Playlist.Folder.Item.folder(_:);
    v20 = v83;
    v19 = v84;
    v86 = v15 + 8;
    v74 = *(v83 + 13);
    v74(v5);
    v21 = Playlist.Folder.Item.name.getter();
    v76 = v22;
    v77 = v21;
    v89 = v6;
    v73 = *(v20 + 1);
    v73(v5, v19);

    v24 = v81;
    v23 = v82;
    UnfairLock.locked<A>(_:)(sub_10074A094);
    v81 = v24;

    v83 = v18;
    v18(v5, v23, v89);
    (v74)(v5, v75, v19);
    v25 = Playlist.Folder.Item.name.getter();
    v27 = v26;
    v73(v5, v19);
    v28 = v89;
    v29 = v23;
    v30 = v76;
    v17(v29, v89);
    if (v77 == v25 && v30 == v27)
    {

      LODWORD(v84) = 0;
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LODWORD(v84) = v48 ^ 1;
    }

    v49 = v78;
    v50 = v79;
    v51 = v28;
    v52 = v83;
    v83(v78, v79, v51);
    __chkstk_darwin();
    *(&v72 - 2) = v13;
    *(&v72 - 1) = v49;

    UnfairLock.locked<A>(_:)(sub_100749CFC);

    v53 = v89;
    v88(v49, v89);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000060E4(v54, qword_101218E18);
    v55 = v85;
    v52(v85, v50, v53);
    v56 = v80;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v59 = 136446722;
      v60 = v56;
      v61 = [v60 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_1000105AC(v62, v64, v91);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v88(v55, v53);
      v69 = sub_1000105AC(v66, v68, v91);

      *(v59 + 14) = v69;
      *(v59 + 22) = 1024;
      v70 = v84;
      *(v59 + 24) = v84 & 1;
      _os_log_impl(&_mh_execute_header, v57, v58, "🔁 Updating Playlist Folder Tab %{public}s with matching folder %{public}s — has visually changed: %{BOOL}d", v59, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v88(v55, v53);
      v70 = v84;
    }
  }

  else
  {
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101218E18);
    v32 = v89;
    (*(v15 + 16))(v89, v14, v6);
    v33 = v12;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v36 = 136446466;
      v37 = v33;
      v38 = [v37 description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_1000105AC(v39, v41, v91);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v43 = v89;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v88(v43, v6);
      v47 = sub_1000105AC(v44, v46, v91);

      *(v36 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v34, v35, "🔁 Attempted to update tab=%{public}s with unrelated folder=%{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v88(v32, v6);
    }

    v70 = 0;
  }

  return v70 & 1;
}

uint64_t sub_100739F08(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  *a2 = result;
  return result;
}

void *sub_100739F48(char *a1)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v22[-1] - v8;
  v10 = *(v4 + 16);
  v10(&v22[-1] - v8, a1, v3, v7);
  if (qword_10117FCA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1011A0B68;
  sub_10010FC20(&qword_1011A0DD0, &qword_100EE04B0);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + *(*v12 + 88), v9, v3);
  *(v12 + *(*v12 + 96)) = v11;
  *(v1 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab11PlaylistTab_safePlaylistMutator) = v12;
  (v10)(v9, a1, v3);
  (v10)(v6, v9, v3);

  sub_100748D2C(v6, v22);
  v13 = *(v4 + 8);
  v13(v9, v3);
  v14 = sub_10003622C(v22);
  v15 = AccessibilityIdentifier.playlistView.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  _s11PlaylistTabCMa();

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v16, v17, v18, v19);
  [v14 setSpringLoaded:1];
  [v14 setAllowsHiding:0];

  v13(a1, v3);
  return v14;
}

double sub_10073A228(void *a1, void (*a2)(void), void (*a3)(void))
{
  a2(0);

  UnfairLock.locked<A>(_:)(a3);

  return result;
}

uint64_t sub_10073A2CC(uint64_t a1)
{
  v83 = type metadata accessor for Playlist.Folder.Item();
  v81 = *(v83 - 8);
  __chkstk_darwin();
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v87 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v73 - v8;
  __chkstk_darwin();
  v80 = &v73 - v9;
  __chkstk_darwin();
  v11 = &v73 - v10;
  v12 = v1;
  v13 = *&v1[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab11PlaylistTab_safePlaylistMutator];
  v85 = *(*v13 + 96);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  sub_1007493A0(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v14 = a1;
  v15 = static MusicItem<>.==~ infix(_:_:)();
  v16 = v6;
  v18 = *(v6 + 8);
  v17 = v6 + 8;
  v88 = v18;
  v18(v11, v5);
  if (v15)
  {
    v77 = v11;
    v78 = v14;
    v79 = v12;
    v82 = *(v16 + 16);
    v82(v4, v14, v5);
    v74 = enum case for Playlist.Folder.Item.playlist(_:);
    v19 = v81;
    v86 = v17;
    v20 = *(v81 + 104);
    v21 = v83;
    v20(v4);
    v22 = Playlist.Folder.Item.name.getter();
    v75 = v23;
    v76 = v22;
    v87 = v5;
    v73 = *(v19 + 8);
    v73(v4, v21);

    v24 = v80;
    UnfairLock.locked<A>(_:)(sub_10074A07C);
    v81 = 0;

    v82(v4, v24, v87);
    (v20)(v4, v74, v21);
    v25 = Playlist.Folder.Item.name.getter();
    v27 = v26;
    v73(v4, v21);
    v28 = v87;
    v29 = v24;
    v30 = v75;
    v88(v29, v87);
    if (v76 == v25 && v30 == v27)
    {

      LODWORD(v83) = 0;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LODWORD(v83) = v49 ^ 1;
    }

    v50 = v77;
    v51 = v78;
    v52 = v28;
    v53 = v82;
    v82(v77, v78, v52);
    __chkstk_darwin();
    *(&v73 - 2) = v13;
    *(&v73 - 1) = v50;

    UnfairLock.locked<A>(_:)(sub_100749CCC);

    v54 = v87;
    v88(v50, v87);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000060E4(v55, qword_101218E18);
    v56 = v84;
    v53(v84, v51, v54);
    v57 = v79;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v60 = 136446722;
      v61 = v57;
      v62 = [v61 description];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_1000105AC(v63, v65, v89);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v88(v56, v54);
      v70 = sub_1000105AC(v67, v69, v89);

      *(v60 + 14) = v70;
      *(v60 + 22) = 1024;
      v71 = v83;
      *(v60 + 24) = v83 & 1;
      _os_log_impl(&_mh_execute_header, v58, v59, "🔁 Updated Playlist Tab %{public}s with matching playlist %{public}s — has visually changed: %{BOOL}d", v60, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v88(v56, v54);
      v71 = v83;
    }
  }

  else
  {
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101218E18);
    v32 = *(v16 + 16);
    v33 = v87;
    v32(v87, v14, v5);
    v34 = v12;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v86 = v17;
      v89[0] = v38;
      *v37 = 136446466;
      v39 = v34;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1000105AC(v41, v43, v89);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v88(v33, v5);
      v48 = sub_1000105AC(v45, v47, v89);

      *(v37 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v35, v36, "🔁 Attempted to update tab=%{public}s with unrelated playlist=%{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v88(v33, v5);
    }

    v71 = 0;
  }

  return v71 & 1;
}

uint64_t sub_10073AC2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Folder.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v28 = *(v11 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 managingTabGroup];
  if (v15)
  {
    v16 = v15;
    v27 = v4;
    _s3TabCMa(0);
    if (swift_dynamicCastClass())
    {
      v26 = v3;

      v25 = a1;
      UnfairLock.locked<A>(_:)(sub_10074A07C);

      sub_1003DDCB8();
      v17 = RequestResponse.Controller.revision.getter();

      sub_100749D3C(v17 + *(*v17 + 96), v8, _s19PlaylistTabsRequestVMa);

      sub_100749D3C(v8, v10, _s9PlaylistsVMa);
      sub_100749E0C(v8, _s19PlaylistTabsRequestVMa);
      v18 = v28;
      (*(v28 + 16))(v6, v14, v11);
      v20 = v26;
      v19 = v27;
      (*(v27 + 104))(v6, enum case for Playlist.Folder.Item.playlist(_:), v26);
      sub_1001917EC(v6, v25);

      (*(v19 + 8))(v6, v20);
      sub_100749E0C(v10, _s9PlaylistsVMa);
      return (*(v18 + 8))(v14, v11);
    }
  }

  v22 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

id sub_10073B070(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10073B0DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_10073B180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v57 = a4;
  v6 = _s19PlaylistTabsRequestVMa(0) - 8;
  v53 = *v6;
  v52 = *(v53 + 64);
  __chkstk_darwin();
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v58 = &v43 - v8;
  v9 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v43 - v12;
  __chkstk_darwin();
  v15 = &v43 - v14;
  type metadata accessor for TitledSection();
  type metadata accessor for Playlist.Folder.Item();
  sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v13);
  sub_10018ECCC();
  sub_10018EFFC();
  v16 = *(v4 + *(_s9PlaylistsVMa(0) + 36));
  MusicLibrarySectionedRequest.filterItems(text:)(v16);
  MusicLibrarySectionedRequest.limit.setter();
  v17 = v10;
  v18 = *(v10 + 32);
  v47 = v10 + 32;
  v48 = v18;
  v49 = v15;
  v19 = v13;
  v20 = v9;
  v18(v15, v19, v9);
  v46 = *(v5 + *(v6 + 28));
  v45 = swift_allocBox();
  sub_100749D3C(v5, v21, _s9PlaylistsVMa);
  v22 = v58;
  static TaskPriority.userInitiated.getter();
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = v51;
  sub_100749D3C(v5, v51, _s19PlaylistTabsRequestVMa);
  v44 = v17;
  v25 = v50;
  v26 = v15;
  v27 = v20;
  (*(v17 + 16))(v50, v26, v20);
  v28 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v17 + 80) + v30 + 8) & ~*(v17 + 80);
  v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  sub_100749DA4(v24, v33 + v28, _s19PlaylistTabsRequestVMa);
  *(v33 + v29) = v54;
  *(v33 + v30) = v45;
  v48(v33 + v31, v25, v27);
  v34 = v46;
  *(v33 + v32) = v46;
  v35 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v36 = v56;
  *v35 = v55;
  v35[1] = v36;
  v37 = v34;

  v38 = v58;
  v39 = sub_10035EB10(0, 0, v58, &unk_100EE0408, v33);
  sub_1000095E8(v38, &unk_101181520, &qword_100EBCC60);
  v40 = sub_10010FC20(&qword_1011A0D90, &unk_100EE0410);
  v41 = v57;
  v57[3] = v40;
  v41[4] = &protocol witness table for Task<A, B>;
  *v41 = v39;
  (*(v44 + 8))(v49, v27);

  return result;
}

uint64_t sub_10073B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = v15;
  v8[42] = v16;
  v8[39] = a7;
  v8[40] = a8;
  v8[37] = a5;
  v8[38] = a6;
  v8[36] = a4;
  v9 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v8[43] = v9;
  v8[44] = *(v9 - 8);
  v8[45] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v8[52] = v12;
  v8[53] = *(v12 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return _swift_task_switch(sub_10073B8F4, 0, 0);
}

uint64_t sub_10073B8F4()
{
  v49 = v0;
  sub_10010FC20(&qword_101183B78, &unk_100EBF5D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6B0;
  v2 = MPMediaLibraryDidChangeNotification;
  MusicLibrary.mediaLibrary.getter();
  v3 = v0[37];
  UIScreen.Dimensions.size.getter();
  *(v1 + 56) = &type metadata for NotificationTrigger;
  *(v1 + 64) = &protocol witness table for NotificationTrigger;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v0[56] = BindingRequestResponseInvalidation.init(triggers:)(v1);
  v6 = swift_allocObject();
  v0[57] = v6;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  v0[58] = v7;
  v8 = &_swiftEmptySetSingleton;
  *(v7 + 16) = &_swiftEmptySetSingleton;
  v9 = swift_allocObject();
  v0[59] = v9;
  if (v3 && (RequestResponse.Revision.content.getter((v0 + 14)), v0[15]))
  {
    v10 = v0[16];
    v11 = v0[14];
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010F538(_swiftEmptyArrayStorage);
    v10 = v42;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *(v9 + 16) = v10;
  v12 = swift_allocObject();
  v0[60] = v12;
  *(v12 + 16) = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v41 = v40;
    }

    else
    {
      v41 = &_swiftEmptySetSingleton;
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v14 = v44;
    }

    else
    {
      v14 = &_swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10010F538(_swiftEmptyArrayStorage);
      v8 = v45;
    }

    v13 = v43;
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = &_swiftEmptySetSingleton;
    v14 = &_swiftEmptySetSingleton;
  }

  v0[61] = v13;
  v15 = swift_allocObject();
  v0[62] = v15;
  v16 = sub_10010DB4C(_swiftEmptyArrayStorage);
  v15[2] = 0;
  v15[3] = _swiftEmptyArrayStorage;
  v15[4] = v14;
  v15[5] = v8;
  v15[6] = v16;
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v17 = v0[55];
  v18 = v0[52];
  v19 = v0[53];
  v20 = v0[39];
  v21 = type metadata accessor for Logger();
  v0[63] = sub_1000060E4(v21, qword_101218E18);
  v22 = *(v19 + 16);
  v22(v17, v20, v18);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[55];
  if (v25)
  {
    v27 = v0[53];
    v28 = v0[54];
    v29 = v0[52];
    v30 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v30 = 136446210;
    v22(v28, v26, v29);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    (*(v27 + 8))(v26, v29);
    v34 = sub_1000105AC(v31, v33, &v48);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "🔨 Building playlists tabs using request=%{public}s…", v30, 0xCu);
    sub_10000959C(v47);
  }

  else
  {
    v35 = v0[52];
    v36 = v0[53];

    (*(v36 + 8))(v26, v35);
  }

  v37 = swift_task_alloc();
  v0[64] = v37;
  *v37 = v0;
  v37[1] = sub_10073BE14;
  v38 = v0[51];
  v39 = v0[52];

  return MusicLibrarySectionedRequest.response()(v38, v39);
}

uint64_t sub_10073BE14()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_10073CAB8;
  }

  else
  {
    v2 = sub_10073BF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10073BF28()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = MusicLibrarySectionedResponse.sections.getter();
  *(v0 + 528) = v4;
  result = (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 16);
  *(v0 + 536) = v6;
  if (!v6)
  {
LABEL_5:

    v9 = *(v0 + 496);
    v10 = *(v0 + 480);
    v11 = *(v0 + 320);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    *(v9 + 32) = v12;

    if (v11 && (v13 = *(v0 + 456), swift_beginAccess(), !*(v13 + 16)))
    {
      v32 = *(v0 + 496);
      v33 = *(v0 + 320);
      v34 = *(v32 + 16);
      *(v32 + 16) = v33;
      v35 = v33;

      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_8;
      }
    }

    else if (static Task<>.isCancelled.getter())
    {
LABEL_8:
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "🔨‼️ Playlist Tabs task cancelled ", v16, 2u);
      }
    }

    v17 = *(v0 + 496);
    v18 = *(v0 + 448);
    v19 = *(v0 + 328);
    v20 = *(v17 + 24);
    v21 = *(v17 + 40);
    *(v0 + 64) = *(v17 + 16);
    *(v0 + 72) = v20;
    *(v0 + 88) = v21;
    *(v0 + 104) = 0;
    v22 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

    v19(v0 + 64, v18, v22);

    v23 = *(v0 + 8);

    return v23();
  }

  v7 = *(v0 + 376);
  *(v0 + 544) = 0;
  v8 = *(v0 + 528);
  if (!*(v8 + 16))
  {
    __break(1u);
    return result;
  }

  (*(v7 + 16))(*(v0 + 384), v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(v0 + 368));
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_5;
  }

  MusicLibrarySection.items.getter();
  v24 = swift_task_alloc();
  *(v0 + 552) = v24;
  *v24 = v0;
  v24[1] = sub_10073C2F4;
  v25 = *(v0 + 488);
  v26 = *(v0 + 496);
  v27 = *(v0 + 472);
  v28 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 360);
  v31 = *(v0 + 304);

  return sub_10073CD44(v30, 0, v29, v27, v25, v26, v31, v28);
}

uint64_t sub_10073C2F4(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  *(*v1 + 560) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10073C454, 0, 0);
}

void sub_10073C454()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(*(v0 + 496) + 24);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 + v3;
    if (!__OFADD__(v6, v3))
    {
      goto LABEL_5;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v54 + v3;
  if (__OFADD__(v54, v3))
  {
    goto LABEL_46;
  }

LABEL_5:
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_22;
  }

  if (v5)
  {
    goto LABEL_21;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v9 >= v7)
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_9:
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
LABEL_24:

    if (v3 <= 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_10:
  if (v9 - v10 < v3)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v2)
  {
    if (v11 < 1)
    {
LABEL_51:
      __break(1u);
      return;
    }

    sub_100020674(&qword_1011A0DA8, &qword_1011A0DA0, &qword_100EE0438, &protocol conformance descriptor for [A]);
    for (i = 0; i != v11; ++i)
    {
      v13 = *(v0 + 560);
      sub_10010FC20(&qword_1011A0DA0, &qword_100EE0438);
      v14 = sub_1006CAD14((v0 + 152), i, v13);
      v16 = *v15;
      (v14)(v0 + 152, 0);
      *(v8 + 8 * v10 + 32 + 8 * i) = v16;
    }
  }

  else
  {
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    swift_arrayInitWithCopy();
  }

  if (v3 > 0)
  {
    v17 = *(v8 + 16);
    v18 = __OFADD__(v17, v3);
    v19 = v17 + v3;
    if (v18)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(v8 + 16) = v19;
  }

LABEL_25:
  v20 = *(v0 + 536);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v0 + 368);
  v24 = *(v0 + 544) + 1;
  *(*(v0 + 496) + 24) = v4;
  swift_endAccess();
  (*(v22 + 8))(v21, v23);
  if (v24 == v20)
  {
LABEL_29:

    v27 = *(v0 + 496);
    v28 = *(v0 + 480);
    v29 = *(v0 + 320);
    swift_beginAccess();
    v30 = *(v28 + 16);
    swift_beginAccess();
    *(v27 + 32) = v30;

    if (v29 && (v31 = *(v0 + 456), swift_beginAccess(), !*(v31 + 16)))
    {
      v50 = *(v0 + 496);
      v51 = *(v0 + 320);
      v52 = *(v50 + 16);
      *(v50 + 16) = v51;
      v53 = v51;

      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_32;
      }
    }

    else if (static Task<>.isCancelled.getter())
    {
LABEL_32:
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "🔨‼️ Playlist Tabs task cancelled ", v34, 2u);
      }
    }

    v35 = *(v0 + 496);
    v36 = *(v0 + 448);
    v37 = *(v0 + 328);
    v38 = *(v35 + 24);
    v39 = *(v35 + 40);
    *(v0 + 64) = *(v35 + 16);
    *(v0 + 72) = v38;
    *(v0 + 88) = v39;
    *(v0 + 104) = 0;
    v40 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

    v37(v0 + 64, v36, v40);

    v41 = *(v0 + 8);

    v41();
    return;
  }

  v25 = *(v0 + 544) + 1;
  *(v0 + 544) = v25;
  v26 = *(v0 + 528);
  if (v25 >= *(v26 + 16))
  {
    goto LABEL_49;
  }

  (*(*(v0 + 376) + 16))(*(v0 + 384), v26 + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v25, *(v0 + 368));
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_29;
  }

  MusicLibrarySection.items.getter();
  v42 = swift_task_alloc();
  *(v0 + 552) = v42;
  *v42 = v0;
  v42[1] = sub_10073C2F4;
  v43 = *(v0 + 488);
  v44 = *(v0 + 496);
  v45 = *(v0 + 472);
  v46 = *(v0 + 480);
  v47 = *(v0 + 464);
  v48 = *(v0 + 360);
  v49 = *(v0 + 304);

  sub_10073CD44(v48, 0, v47, v45, v43, v44, v49, v46);
}

uint64_t sub_10073CAB8()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 520);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v0 + 280) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to query playlists with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = *(v0 + 448);
  *(v0 + 16) = *(v0 + 520);
  v10 = *(v0 + 328);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 1;
  v11 = sub_1007493A0(&qword_1011A0D98, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

  swift_errorRetain();
  v10(v0 + 16, v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10073CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[70] = v19;
  v8[69] = v18;
  v8[68] = a8;
  v8[67] = a7;
  v8[66] = a6;
  v8[65] = a5;
  v8[63] = a3;
  v8[64] = a4;
  v8[61] = a1;
  v8[62] = a2;
  v9 = type metadata accessor for Playlist();
  v8[71] = v9;
  v8[72] = *(v9 - 8);
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v8[76] = v10;
  v8[77] = *(v10 - 8);
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = _s9PlaylistsVMa(0);
  v8[81] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v8[82] = v11;
  v8[83] = *(v11 - 8);
  v8[84] = swift_task_alloc();
  v12 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v8[85] = v12;
  v8[86] = *(v12 - 8);
  v8[87] = swift_task_alloc();
  sub_10010FC20(&qword_1011A0DB0, &unk_100EE0440);
  v8[88] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v8[89] = v13;
  v8[90] = *(v13 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = _s9PlaylistsV5ScopeVMa(0);
  v8[94] = swift_task_alloc();
  v14 = type metadata accessor for Playlist.Folder();
  v8[95] = v14;
  v8[96] = *(v14 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v15 = type metadata accessor for Playlist.Folder.Item();
  v8[100] = v15;
  v8[101] = *(v15 - 8);
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();
  v8[106] = sub_10010FC20(&unk_1011828E0, &qword_100EBE230);
  v8[107] = swift_task_alloc();
  v8[108] = swift_projectBox();

  return _swift_task_switch(sub_10073D1D0, 0, 0);
}

uint64_t sub_10073D1D0()
{
  v192 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 488);
  v6._countAndFlagsBits = 8316;
  v6._object = 0xE200000000000000;
  *(v0 + 872) = String.init(repeating:count:)(v6, *(v0 + 496));
  v172 = _swiftEmptyArrayStorage;
  *(v0 + 448) = _swiftEmptyArrayStorage;
  v7 = *(v3 + 16);
  *(v0 + 888) = v7;
  *(v0 + 896) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v4);
  v8 = *(v2 + 36);
  *(v0 + 968) = v8;
  *(v0 + 904) = sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v9 = v0;
  swift_beginAccess();
  swift_beginAccess();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v8) != *(v0 + 464))
  {
    v177 = v0 + 16;
    v172 = _swiftEmptyArrayStorage;
    *(v0 + 972) = enum case for Playlist.Folder.Item.folder(_:);
    *(v0 + 976) = enum case for Playlist.Folder.Item.playlist(_:);
    v190 = v0;
    do
    {
      v21 = *(v9 + 840);
      v184 = *(v9 + 832);
      v22 = *(v9 + 808);
      v179 = *(v9 + 800);
      v23 = dispatch thunk of Collection.subscript.read();
      v24 = *(v22 + 16);
      v24(v21);
      v23(v177, 0);
      v9 = v190;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v22 + 32))(v184, v21, v179);
      v25 = static Task<>.isCancelled.getter();
      v26 = *(v190 + 808);
      v27 = *(v190 + 800);
      if (v25)
      {
        v146 = *(v190 + 856);
        v147 = *(v190 + 832);

        (*(v26 + 8))(v147, v27);
        sub_1000095E8(v146, &unk_1011828E0, &qword_100EBE230);
        goto LABEL_41;
      }

      v28 = *(v190 + 972);
      v29 = *(v190 + 824);
      (v24)(v29, *(v190 + 832), *(v190 + 800));
      v30 = (*(v26 + 88))(v29, v27);
      if (v30 == v28)
      {
        v31 = *(v190 + 824);
        v32 = *(v190 + 792);
        v33 = *(v190 + 768);
        v34 = *(v190 + 760);
        (*(*(v190 + 808) + 96))(v31, *(v190 + 800));
        (*(v33 + 32))(v32, v31, v34);
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v35 = *(v190 + 792);
        v36 = *(v190 + 784);
        v37 = *(v190 + 768);
        v38 = *(v190 + 760);
        v39 = type metadata accessor for Logger();
        v40 = sub_1000060E4(v39, qword_101218E18);
        v41 = *(v37 + 16);
        *(v190 + 912) = v40;
        v41(v36, v35, v38);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v190 + 880);
          v45 = *(v190 + 872);
          v46 = *(v190 + 784);
          v175 = v41;
          v47 = *(v190 + 768);
          v48 = *(v190 + 760);
          v49 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v49 = 136446466;
          *(v49 + 4) = sub_1000105AC(v45, v44, &v191);
          *(v49 + 12) = 2082;
          sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          v185 = *(v47 + 8);
          v185(v46, v48);
          v41 = v175;
          v53 = sub_1000105AC(v50, v52, &v191);

          *(v49 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s| ➕📁 Adding playlist folder %{public}s", v49, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v77 = *(v190 + 784);
          v78 = *(v190 + 768);
          v79 = *(v190 + 760);

          v185 = *(v78 + 8);
          v185(v77, v79);
        }

        *(v190 + 920) = v185;
        v80 = *(*(v190 + 504) + 16);
        sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

        dispatch thunk of Identifiable.id.getter();
        v81._countAndFlagsBits = *(v190 + 368);
        v82 = *(v190 + 376);
        *(v190 + 384) = 0xD000000000000014;
        *(v190 + 392) = 0x8000000100E3E560;
        v81._object = v82;
        String.append(_:)(v81);

        LOBYTE(v82) = sub_10048C9BC(*(v190 + 384), *(v190 + 392), v80);

        if ((v82 & 1) == 0)
        {
          v150 = *(v190 + 792);
          v151 = *(v190 + 768);
          v152 = *(v190 + 760);
          v153 = *(v190 + 752);
          v154 = *(v190 + 744);
          *(v190 + 928) = sub_100742384((*(v190 + 512) + 16), v150, (*(v190 + 520) + 16), *(v190 + 528) + 16, *(v190 + 872), *(v190 + 880));
          dispatch thunk of Identifiable.id.getter();
          v155._countAndFlagsBits = *(v190 + 416);
          v156 = *(v190 + 424);
          *(v190 + 432) = 0xD000000000000014;
          *(v190 + 440) = 0x8000000100E3E560;
          v155._object = v156;
          String.append(_:)(v155);

          v157 = *(v190 + 432);
          v158 = *(v190 + 440);
          swift_beginAccess();
          sub_1003B3170((v190 + 400), v157, v158);
          swift_endAccess();

          v159 = *(v154 + 20);
          v41(v153 + v159, v150, v152);
          (*(v151 + 56))(v153 + v159, 0, 1, v152);
          if (qword_10117F5D8 != -1)
          {
            swift_once();
          }

          v160 = *(v190 + 864);
          v161 = *(v190 + 752);
          v162 = *(v190 + 744);
          v163 = *(v190 + 648);
          v164 = *(v190 + 640);
          v189 = *(v190 + 632);
          v165 = *(v190 + 624);
          v166 = *(v190 + 616);
          v167 = *(v190 + 608);
          *v161 = qword_101218AB8;
          *(v161 + *(v162 + 24)) = 0;
          v168 = *(v164 + 32);

          sub_100749B78(v161, v160 + v168);
          sub_100749D3C(v160, v163, _s9PlaylistsVMa);
          type metadata accessor for TitledSection();
          sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
          MusicLibrarySectionedRequest.init()();
          MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

          MusicLibrarySectionedRequest.library.setter();
          MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
          sub_10018E714(v165);
          sub_10018ECCC();
          sub_10018EFFC();
          MusicLibrarySectionedRequest.filterItems(text:)(*(v163 + *(v164 + 36)));
          MusicLibrarySectionedRequest.limit.setter();
          (*(v166 + 32))(v189, v165, v167);
          sub_100749E0C(v163, _s9PlaylistsVMa);
          v169 = swift_task_alloc();
          *(v190 + 936) = v169;
          *v169 = v190;
          v169[1] = sub_10073E91C;
          v170 = *(v190 + 672);
          v171 = *(v190 + 608);

          return MusicLibrarySectionedRequest.response()(v170, v171);
        }

        v41(*(v190 + 776), *(v190 + 792), *(v190 + 760));

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v83, v84))
        {
          v85 = *(v190 + 832);
          v75 = v185;
          v86 = *(v190 + 808);
          v87 = *(v190 + 800);
          v88 = *(v190 + 792);
          v89 = *(v190 + 776);
          v90 = *(v190 + 760);
LABEL_26:

          v75(v89, v90);
          v75(v88, v90);
          (*(v86 + 8))(v85, v87);
          goto LABEL_5;
        }

        v10 = *(v190 + 880);
        v11 = *(v190 + 872);
        v181 = *(v190 + 832);
        v173 = *(v190 + 808);
        v178 = *(v190 + 800);
        v174 = *(v190 + 792);
        v12 = *(v190 + 776);
        v13 = *(v190 + 760);
        v14 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v14 = 136446466;
        *(v14 + 4) = sub_1000105AC(v11, v10, &v191);
        *(v14 + 12) = 2082;
        sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        v185(v12, v13);
        v18 = sub_1000105AC(v15, v17, &v191);
        v9 = v190;

        *(v14 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v14, 0x16u);
        swift_arrayDestroy();

        v185(v174, v13);
        (*(v173 + 8))(v181, v178);
      }

      else
      {
        if (v30 != *(v190 + 976))
        {
          v108 = v24;
          if (qword_10117F7A8 != -1)
          {
            swift_once();
          }

          v109 = *(v190 + 832);
          v110 = *(v190 + 816);
          v111 = *(v190 + 800);
          v112 = type metadata accessor for Logger();
          sub_1000060E4(v112, qword_101218E18);
          v108(v110, v109, v111);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.fault.getter();
          v115 = os_log_type_enabled(v113, v114);
          v116 = *(v190 + 832);
          v117 = *(v190 + 816);
          v118 = *(v190 + 808);
          v119 = *(v190 + 800);
          if (v115)
          {
            v187 = *(v190 + 832);
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v191 = v121;
            *v120 = 136446210;
            sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v123;
            v125 = *(v118 + 8);
            v125(v117, v119);
            v126 = sub_1000105AC(v122, v124, &v191);

            *(v120 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v113, v114, "Unhandled playlist type: %{public}s", v120, 0xCu);
            sub_10000959C(v121);

            v127 = v187;
          }

          else
          {

            v125 = *(v118 + 8);
            v125(v117, v119);
            v127 = v116;
          }

          v125(v127, v119);
          v9 = v190;
          v125(*(v190 + 824), *(v190 + 800));
          goto LABEL_5;
        }

        v54 = *(v190 + 824);
        v55 = *(v190 + 600);
        v56 = *(v190 + 576);
        v57 = *(v190 + 568);
        (*(*(v190 + 808) + 96))(v54, *(v190 + 800));
        (*(v56 + 32))(v55, v54, v57);
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v58 = *(v190 + 600);
        v59 = *(v190 + 592);
        v60 = *(v190 + 576);
        v61 = *(v190 + 568);
        v62 = type metadata accessor for Logger();
        sub_1000060E4(v62, qword_101218E18);
        v182 = *(v60 + 16);
        v182(v59, v58, v61);

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = *(v190 + 880);
          v66 = *(v190 + 872);
          v67 = *(v190 + 592);
          v68 = *(v190 + 576);
          v69 = *(v190 + 568);
          v70 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v70 = 136446466;
          *(v70 + 4) = sub_1000105AC(v66, v65, &v191);
          *(v70 + 12) = 2082;
          sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v74 = v69;
          v75 = *(v68 + 8);
          v75(v67, v74);
          v76 = sub_1000105AC(v71, v73, &v191);

          *(v70 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s| ➕ Adding playlist %{public}s", v70, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v91 = *(v190 + 592);
          v92 = *(v190 + 576);
          v93 = *(v190 + 568);

          v75 = *(v92 + 8);
          v75(v91, v93);
        }

        v94 = *(*(v190 + 504) + 16);
        sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

        dispatch thunk of Identifiable.id.getter();
        v95._countAndFlagsBits = *(v190 + 288);
        v96 = *(v190 + 296);
        *(v190 + 304) = 0xD000000000000014;
        *(v190 + 312) = 0x8000000100E3E560;
        v95._object = v96;
        String.append(_:)(v95);

        v97 = sub_10048C9BC(*(v190 + 304), *(v190 + 312), v94);

        if ((v97 & 1) == 0)
        {
          v188 = v75;
          v128 = sub_1007429EC((*(v190 + 512) + 16), *(v190 + 600), (*(v190 + 520) + 16), *(v190 + 528) + 16, *(v190 + 872), *(v190 + 880));
          dispatch thunk of Identifiable.id.getter();
          v129._countAndFlagsBits = *(v190 + 336);
          v130 = *(v190 + 344);
          *(v190 + 352) = 0xD000000000000014;
          *(v190 + 360) = 0x8000000100E3E560;
          v129._object = v130;
          String.append(_:)(v129);

          v131 = *(v190 + 352);
          v132 = *(v190 + 360);
          swift_beginAccess();
          sub_1003B3170((v190 + 320), v131, v132);
          swift_endAccess();

          v133 = v128;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v190 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v190 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v134 = *(v190 + 552);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v172 = *(v190 + 448);
          swift_beginAccess();
          sub_1003B4FFC(&v191, v133);
          swift_endAccess();

          v135 = *(v134 + *(_s19PlaylistTabsRequestVMa(0) + 20));
          v136 = *(v190 + 832);
          v137 = *(v190 + 800);
          v138 = *(v190 + 600);
          v139 = *(v190 + 568);
          v140 = (*(v190 + 808) + 8);
          if (v135)
          {
            _s11PlaylistTabCMa();
            v141 = v133;
            v142 = v135;
            v143 = static NSObject.== infix(_:_:)();
            v188(v138, v139);
            (*v140)(v136, v137);

            if (v143)
            {
              v9 = v190;
              v144 = *(v190 + 560);
              v145 = *(v144 + 16);
              *(v144 + 16) = v141;
            }

            else
            {

              v9 = v190;
            }
          }

          else
          {
            v188(v138, v139);
            (*v140)(v136, v137);

            v9 = v190;
          }

          goto LABEL_5;
        }

        v182(*(v190 + 584), *(v190 + 600), *(v190 + 568));

        v83 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v83, v98))
        {
          v85 = *(v190 + 832);
          v86 = *(v190 + 808);
          v87 = *(v190 + 800);
          v88 = *(v190 + 600);
          v89 = *(v190 + 584);
          v90 = *(v190 + 568);
          goto LABEL_26;
        }

        v99 = *(v190 + 880);
        v100 = *(v190 + 872);
        v186 = *(v190 + 832);
        v176 = *(v190 + 808);
        v183 = *(v190 + 800);
        v180 = *(v190 + 600);
        v101 = *(v190 + 584);
        v102 = *(v190 + 568);
        v103 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v103 = 136446466;
        *(v103 + 4) = sub_1000105AC(v100, v99, &v191);
        *(v103 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v105;
        v75(v101, v102);
        v107 = sub_1000105AC(v104, v106, &v191);
        v9 = v190;

        *(v103 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v83, v98, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v103, 0x16u);
        swift_arrayDestroy();

        v75(v180, v102);
        (*(v176 + 8))(v186, v183);
      }

LABEL_5:
      v19 = *(v9 + 968);
      v20 = *(v9 + 856);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v20 + v19) != *(v9 + 464));
  }

  sub_1000095E8(*(v9 + 856), &unk_1011828E0, &qword_100EBE230);

LABEL_41:

  v148 = *(v9 + 8);

  return v148(v172);
}

uint64_t sub_10073E91C()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 608);
  *(*v1 + 944) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100740AA0;
  }

  else
  {
    v5 = sub_10073EA8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10073EA8C()
{
  v41 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = MusicLibrarySectionedResponse.sections.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v5 = v0[92];
    v6 = v0[90];
    v7 = v0[89];
    v8 = v0[88];
    v9 = v0[87];
    v10 = v0[86];
    v11 = v0[85];
    (*(v10 + 16))(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v11);

    MusicLibrarySection.items.getter();
    (*(v10 + 8))(v9, v11);
    (*(v6 + 56))(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
  }

  else
  {
    v12 = v0[90];
    v13 = v0[89];
    v14 = v0[88];

    (*(v12 + 56))(v14, 1, 1, v13);
    sub_1007493A0(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v12 + 48))(v14, 1, v13) != 1)
    {
      sub_1000095E8(v0[88], &qword_1011A0DB0, &unk_100EE0440);
    }
  }

  v15 = v0[116];

  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[116];
    v20 = v0[110];
    v21 = v0[109];
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_1000105AC(v21, v20, &v40);
    *(v22 + 12) = 2082;
    v23 = v19;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_1000105AC(v25, v27, &v40);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s|— 🔨📁 Building tabs for folder=%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v29 = v0[62];
  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v31 = swift_task_alloc();
    v0[119] = v31;
    *v31 = v0;
    v31[1] = sub_10073EE8C;
    v32 = v0[92];
    v33 = v0[70];
    v34 = v0[68];
    v35 = v0[67];
    v36 = v0[66];
    v37 = v0[65];
    v38 = v0[63];
    v39 = v0[64];
    v43 = v0[69];
    v44 = v33;

    sub_10073CD44(v32, v30, v38, v39, v37, v36, v35, v34);
  }
}

uint64_t sub_10073EE8C(uint64_t a1)
{
  *(*v1 + 960) = a1;

  return _swift_task_switch(sub_10073EF8C, 0, 0);
}

uint64_t sub_10073EF8C()
{
  v246 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v243 = v0;
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[110];
    v4 = v0[109];
    v5 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000105AC(v4, v3, &v245);
    *(v5 + 12) = 2082;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v6 = Array.description.getter();
    v8 = sub_1000105AC(v6, v7, &v245);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s|— 🔨 Converted tabs=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[120];
  v10 = v0[116];
  v11 = v0[111];
  v12 = v0[92];
  v13 = v0;
  v14 = v0[91];
  v15 = v0[89];
  v16 = v0[66];
  swift_beginAccess();
  v17 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v245 = *(v16 + 48);
  *(v16 + 48) = 0x8000000000000000;
  sub_1006C72F8(v9, v17, isUniquelyReferenced_nonNull_native);

  *(v16 + 48) = v245;
  swift_endAccess();
  v11(v14, v12, v15);

  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v231 = v13[116];
    v22 = v13[110];
    v23 = v13[109];
    v236 = v13[92];
    v24 = v13[91];
    v25 = v13[90];
    v26 = v13[89];
    v27 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v27 = 136446722;
    *(v27 + 4) = sub_1000105AC(v23, v22, &v245);
    *(v27 + 12) = 2050;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v28 = dispatch thunk of Collection.distance(from:to:)();
    v29 = *(v25 + 8);
    v29(v24, v26);
    *(v27 + 14) = v28;
    *(v27 + 22) = 2082;
    v30 = v231;
    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000105AC(v32, v34, &v245);

    *(v27 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s╰ ✅ Added %{public}ld tabs to %{public}s", v27, 0x20u);
    swift_arrayDestroy();

    v29(v236, v26);
  }

  else
  {
    v36 = v13[92];
    v37 = v13[89];
    v38 = *(v13[90] + 8);
    v38(v13[91], v37);

    v38(v36, v37);
  }

  v39 = v13;
  v40 = v13[116];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v13[56] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13[56] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v41 = v13[116];
  v42 = v39[115];
  v43 = v39[104];
  v44 = v39[101];
  v45 = v39[100];
  v46 = v39[99];
  v47 = v243[95];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v227 = v243[56];
  swift_beginAccess();
  sub_1003B4FFC(&v245, v41);
  swift_endAccess();

  v48 = v47;
  v49 = v243;
  v42(v46, v48);
  (*(v44 + 8))(v43, v45);
  v50 = *(v243 + 242);
  v51 = v243[107];
  dispatch thunk of Collection.endIndex.getter();
  if (*(v51 + v50) != v243[58])
  {
    while (1)
    {
      v56 = v49[105];
      v237 = v49[104];
      v57 = v49[101];
      v232 = v49[100];
      v58 = dispatch thunk of Collection.subscript.read();
      v59 = *(v57 + 16);
      v59(v56);
      v58(v243 + 2, 0);
      v49 = v243;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v57 + 32))(v237, v56, v232);
      v60 = static Task<>.isCancelled.getter();
      v61 = v243[101];
      v62 = v243[100];
      if (v60)
      {
        v199 = v243[107];
        v200 = v243[104];

        (*(v61 + 8))(v200, v62);
        sub_1000095E8(v199, &unk_1011828E0, &qword_100EBE230);
        goto LABEL_49;
      }

      v63 = *(v243 + 243);
      v64 = v243[103];
      (v59)(v64, v243[104], v243[100]);
      v65 = (*(v61 + 88))(v64, v62);
      if (v65 == v63)
      {
        break;
      }

      if (v65 != *(v243 + 244))
      {
        v134 = v59;
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v135 = v243[104];
        v136 = v243[102];
        v137 = v243[100];
        v138 = type metadata accessor for Logger();
        sub_1000060E4(v138, qword_101218E18);
        v134(v136, v135, v137);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.fault.getter();
        v141 = os_log_type_enabled(v139, v140);
        v142 = v243[104];
        v143 = v243[102];
        v144 = v243[101];
        v145 = v243[100];
        if (v141)
        {
          v146 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v241 = v142;
          v147 = v245;
          *v146 = 136446210;
          sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v150 = v149;
          v52 = *(v144 + 8);
          v52(v143, v145);
          v151 = v148;
          v49 = v243;
          v152 = sub_1000105AC(v151, v150, &v245);

          *(v146 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v139, v140, "Unhandled playlist type: %{public}s", v146, 0xCu);
          sub_10000959C(v147);

          v53 = v241;
        }

        else
        {

          v52 = *(v144 + 8);
          v52(v143, v145);
          v53 = v142;
        }

        v52(v53, v145);
        v52(v49[103], v49[100]);
        goto LABEL_13;
      }

      v92 = v243[103];
      v93 = v243[75];
      v94 = v243[72];
      v95 = v243[71];
      (*(v243[101] + 96))(v92, v243[100]);
      (*(v94 + 32))(v93, v92, v95);
      if (qword_10117F7A8 != -1)
      {
        swift_once();
      }

      v96 = v243[75];
      v97 = v243[74];
      v98 = v243[72];
      v99 = v243[71];
      v100 = type metadata accessor for Logger();
      sub_1000060E4(v100, qword_101218E18);
      v101 = *(v98 + 16);
      v101(v97, v96, v99);

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = v243[110];
        v105 = v243[109];
        v106 = v243[74];
        v107 = v243[72];
        v233 = v101;
        v108 = v243[71];
        v109 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *v109 = 136446466;
        *(v109 + 4) = sub_1000105AC(v105, v104, &v245);
        *(v109 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v113 = v106;
        v49 = v243;
        v114 = v108;
        v101 = v233;
        v239 = *(v107 + 8);
        v239(v113, v114);
        v115 = sub_1000105AC(v110, v112, &v245);

        *(v109 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v102, v103, "%{public}s| ➕ Adding playlist %{public}s", v109, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v159 = v243[74];
        v160 = v243[72];
        v161 = v243[71];

        v239 = *(v160 + 8);
        v239(v159, v161);
      }

      v162 = *(v49[63] + 16);
      sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      dispatch thunk of Identifiable.id.getter();
      v163._countAndFlagsBits = v49[36];
      v164 = v49[37];
      v49[38] = 0xD000000000000014;
      v49[39] = 0x8000000100E3E560;
      v163._object = v164;
      String.append(_:)(v163);

      v165 = sub_10048C9BC(v49[38], v49[39], v162);

      if (v165)
      {
        v101(v49[73], v49[75], v49[71]);

        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v166, v167))
        {
          v153 = v49[104];
          v154 = v49[101];
          v155 = v49[100];
          v177 = v49[75];
          v178 = v49[73];
          v179 = v49[71];

          v239(v178, v179);
          v239(v177, v179);
          goto LABEL_40;
        }

        v168 = v49[110];
        v169 = v49[109];
        v234 = v49[100];
        v235 = v49[104];
        v229 = v49[75];
        v230 = v49[101];
        v170 = v49[73];
        v171 = v49[71];
        v172 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *v172 = 136446466;
        *(v172 + 4) = sub_1000105AC(v169, v168, &v245);
        *(v172 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = v174;
        v239(v170, v171);
        v176 = sub_1000105AC(v173, v175, &v245);

        *(v172 + 14) = v176;
        _os_log_impl(&_mh_execute_header, v166, v167, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v172, 0x16u);
        swift_arrayDestroy();

        v239(v229, v171);
        goto LABEL_38;
      }

      v180 = sub_1007429EC((v49[64] + 16), v49[75], (v49[65] + 16), v49[66] + 16, v49[109], v49[110]);
      dispatch thunk of Identifiable.id.getter();
      v181._countAndFlagsBits = v49[42];
      v182 = v49[43];
      v49[44] = 0xD000000000000014;
      v49[45] = 0x8000000100E3E560;
      v181._object = v182;
      String.append(_:)(v181);

      v183 = v49[44];
      v184 = v49[45];
      swift_beginAccess();
      sub_1003B3170(v49 + 40, v183, v184);
      swift_endAccess();

      v185 = v180;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49[56] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[56] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v186 = v49[69];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v227 = v49[56];
      swift_beginAccess();
      sub_1003B4FFC(&v245, v185);
      swift_endAccess();

      v187 = _s19PlaylistTabsRequestVMa(0);
      v188 = v49;
      v189 = *(v186 + *(v187 + 20));
      v190 = v188[104];
      v191 = v188[100];
      v192 = v188[75];
      v193 = v188[71];
      v194 = (v188[101] + 8);
      if (!v189)
      {
        v239(v188[75], v188[71]);
        (*v194)(v190, v191);
LABEL_47:
        v49 = v243;

        goto LABEL_13;
      }

      _s11PlaylistTabCMa();
      v185 = v185;
      v195 = v189;
      v196 = static NSObject.== infix(_:_:)();
      v239(v192, v193);
      (*v194)(v190, v191);

      if ((v196 & 1) == 0)
      {
        goto LABEL_47;
      }

      v49 = v243;
      v197 = v243[70];
      v198 = *(v197 + 16);
      *(v197 + 16) = v185;

LABEL_13:
      v54 = *(v49 + 242);
      v55 = v49[107];
      dispatch thunk of Collection.endIndex.getter();
      if (*(v55 + v54) == v49[58])
      {
        goto LABEL_9;
      }
    }

    v66 = v243[103];
    v67 = v243[99];
    v68 = v243[96];
    v69 = v243[95];
    (*(v243[101] + 96))(v66, v243[100]);
    (*(v68 + 32))(v67, v66, v69);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v70 = v243[99];
    v71 = v243[98];
    v72 = v243[96];
    v73 = v243[95];
    v74 = type metadata accessor for Logger();
    v75 = sub_1000060E4(v74, qword_101218E18);
    v76 = *(v72 + 16);
    v243[114] = v75;
    v76(v71, v70, v73);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v243[110];
      v80 = v243[109];
      v81 = v243[98];
      v238 = v76;
      v82 = v243[96];
      v83 = v243[95];
      v84 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      *v84 = 136446466;
      *(v84 + 4) = sub_1000105AC(v80, v79, &v245);
      *(v84 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v88 = *(v82 + 8);
      v89 = v81;
      v49 = v243;
      v88(v89, v83);
      v76 = v238;
      v90 = sub_1000105AC(v85, v87, &v245);

      *(v84 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v77, v78, "%{public}s| ➕📁 Adding playlist folder %{public}s", v84, 0x16u);
      swift_arrayDestroy();

      v91 = v88;
    }

    else
    {
      v116 = v243[98];
      v117 = v243[96];
      v118 = v243[95];

      v91 = *(v117 + 8);
      v91(v116, v118);
    }

    v49[115] = v91;
    v119 = *(v49[63] + 16);
    sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

    dispatch thunk of Identifiable.id.getter();
    v120._countAndFlagsBits = v49[46];
    v121 = v49[47];
    v49[48] = 0xD000000000000014;
    v49[49] = 0x8000000100E3E560;
    v120._object = v121;
    String.append(_:)(v120);

    LOBYTE(v121) = sub_10048C9BC(v49[48], v49[49], v119);

    v122 = v49[110];
    if ((v121 & 1) == 0)
    {
      v203 = v49[109];
      v204 = v49[99];
      v205 = v49;
      v206 = v49[96];
      v207 = v205[95];
      v242 = v76;
      v208 = v205[94];
      v209 = v205[93];
      v205[116] = sub_100742384((v205[64] + 16), v204, (v205[65] + 16), v205[66] + 16, v203, v122);
      dispatch thunk of Identifiable.id.getter();
      v210._countAndFlagsBits = v205[52];
      v211 = v205[53];
      v205[54] = 0xD000000000000014;
      v205[55] = 0x8000000100E3E560;
      v210._object = v211;
      String.append(_:)(v210);

      v212 = v205[54];
      v213 = v205[55];
      swift_beginAccess();
      sub_1003B3170(v205 + 50, v212, v213);
      swift_endAccess();

      v214 = *(v209 + 20);
      v242(v208 + v214, v204, v207);
      (*(v206 + 56))(v208 + v214, 0, 1, v207);
      if (qword_10117F5D8 != -1)
      {
        swift_once();
      }

      v215 = v205[108];
      v216 = v205[94];
      v217 = v205[93];
      v218 = v205[81];
      v219 = v205[80];
      v244 = v205[79];
      v220 = v205[78];
      v221 = v205[77];
      v222 = v205[76];
      *v216 = qword_101218AB8;
      *(v216 + *(v217 + 24)) = 0;
      v223 = *(v219 + 32);

      sub_100749B78(v216, v215 + v223);
      sub_100749D3C(v215, v218, _s9PlaylistsVMa);
      type metadata accessor for TitledSection();
      sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

      MusicLibrarySectionedRequest.library.setter();
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      sub_10018E714(v220);
      sub_10018ECCC();
      sub_10018EFFC();
      MusicLibrarySectionedRequest.filterItems(text:)(*(v218 + *(v219 + 36)));
      MusicLibrarySectionedRequest.limit.setter();
      (*(v221 + 32))(v244, v220, v222);
      sub_100749E0C(v218, _s9PlaylistsVMa);
      v224 = swift_task_alloc();
      v205[117] = v224;
      *v224 = v205;
      v224[1] = sub_10073E91C;
      v225 = v205[84];
      v226 = v205[76];

      return MusicLibrarySectionedRequest.response()(v225, v226);
    }

    v76(v49[97], v49[99], v49[95]);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v123, v124))
    {
      v153 = v49[104];
      v154 = v49[101];
      v155 = v49[100];
      v156 = v49[99];
      v157 = v49[97];
      v158 = v49[95];

      v91(v157, v158);
      v91(v156, v158);
LABEL_40:
      (*(v154 + 8))(v153, v155);
      goto LABEL_13;
    }

    v125 = v49[110];
    v240 = v91;
    v126 = v49[109];
    v234 = v49[100];
    v235 = v49[104];
    v228 = v49[99];
    v230 = v49[101];
    v127 = v49[97];
    v128 = v49[95];
    v129 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v129 = 136446466;
    *(v129 + 4) = sub_1000105AC(v126, v125, &v245);
    *(v129 + 12) = 2082;
    sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    v240(v127, v128);
    v133 = sub_1000105AC(v130, v132, &v245);

    *(v129 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v123, v124, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v129, 0x16u);
    swift_arrayDestroy();

    v240(v228, v128);
LABEL_38:
    (*(v230 + 8))(v235, v234);
    goto LABEL_13;
  }

LABEL_9:
  sub_1000095E8(v49[107], &unk_1011828E0, &qword_100EBE230);

LABEL_49:

  v201 = v49[1];

  return v201(v227);
}

uint64_t sub_100740AA0()
{
  v223 = v0;
  v1 = *(v0 + 928);

  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v220 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 944);
    v6 = *(v0 + 928);
    v7 = *(v220 + 880);
    v8 = *(v220 + 872);
    v9 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1000105AC(v8, v7, &v222);
    *(v9 + 12) = 2082;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000105AC(v12, v14, &v222);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    *(v220 + 456) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v222);
    v0 = v220;

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s | 📁❌ Failed to query children for folder=%{public}s. Error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 928);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v20 = *(v0 + 928);
  v21 = *(v0 + 920);
  v22 = *(v0 + 832);
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 792);
  v26 = *(v220 + 760);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v206 = *(v220 + 448);
  swift_beginAccess();
  sub_1003B4FFC(&v222, v20);
  swift_endAccess();

  v27 = v26;
  v28 = v220;
  v21(v25, v27);
  (*(v23 + 8))(v22, v24);
  v29 = *(v220 + 968);
  v30 = *(v220 + 856);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v30 + v29) != *(v220 + 464))
  {
    while (1)
    {
      v35 = *(v28 + 840);
      v214 = *(v28 + 832);
      v36 = *(v28 + 808);
      v210 = *(v28 + 800);
      v37 = dispatch thunk of Collection.subscript.read();
      v38 = *(v36 + 16);
      v38(v35);
      v37(v220 + 16, 0);
      v28 = v220;
      dispatch thunk of Collection.formIndex(after:)();
      (*(v36 + 32))(v214, v35, v210);
      v39 = static Task<>.isCancelled.getter();
      v40 = *(v220 + 808);
      v41 = *(v220 + 800);
      if (v39)
      {
        v178 = *(v220 + 856);
        v179 = *(v220 + 832);

        (*(v40 + 8))(v179, v41);
        sub_1000095E8(v178, &unk_1011828E0, &qword_100EBE230);
        goto LABEL_47;
      }

      v42 = *(v220 + 972);
      v43 = *(v220 + 824);
      (v38)(v43, *(v220 + 832), *(v220 + 800));
      v44 = (*(v40 + 88))(v43, v41);
      if (v44 == v42)
      {
        break;
      }

      if (v44 != *(v220 + 976))
      {
        v113 = v38;
        if (qword_10117F7A8 != -1)
        {
          swift_once();
        }

        v114 = *(v220 + 832);
        v115 = *(v220 + 816);
        v116 = *(v220 + 800);
        v117 = type metadata accessor for Logger();
        sub_1000060E4(v117, qword_101218E18);
        v113(v115, v114, v116);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.fault.getter();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v220 + 832);
        v122 = *(v220 + 816);
        v123 = *(v220 + 808);
        v124 = *(v220 + 800);
        if (v120)
        {
          v125 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v218 = v121;
          v126 = v222;
          *v125 = 136446210;
          sub_1007493A0(&qword_101183228, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
          v127 = dispatch thunk of CustomStringConvertible.description.getter();
          v129 = v128;
          v31 = *(v123 + 8);
          v31(v122, v124);
          v130 = v127;
          v28 = v220;
          v131 = sub_1000105AC(v130, v129, &v222);

          *(v125 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v118, v119, "Unhandled playlist type: %{public}s", v125, 0xCu);
          sub_10000959C(v126);

          v32 = v218;
        }

        else
        {

          v31 = *(v123 + 8);
          v31(v122, v124);
          v32 = v121;
        }

        v31(v32, v124);
        v31(*(v28 + 824), *(v28 + 800));
        goto LABEL_11;
      }

      v71 = *(v220 + 824);
      v72 = *(v220 + 600);
      v73 = *(v220 + 576);
      v74 = *(v220 + 568);
      (*(*(v220 + 808) + 96))(v71, *(v220 + 800));
      (*(v73 + 32))(v72, v71, v74);
      if (qword_10117F7A8 != -1)
      {
        swift_once();
      }

      v75 = *(v220 + 600);
      v76 = *(v220 + 592);
      v77 = *(v220 + 576);
      v78 = *(v220 + 568);
      v79 = type metadata accessor for Logger();
      sub_1000060E4(v79, qword_101218E18);
      v80 = *(v77 + 16);
      v80(v76, v75, v78);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = *(v220 + 880);
        v84 = *(v220 + 872);
        v85 = *(v220 + 592);
        v86 = *(v220 + 576);
        v211 = v80;
        v87 = *(v220 + 568);
        v88 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v88 = 136446466;
        *(v88 + 4) = sub_1000105AC(v84, v83, &v222);
        *(v88 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v92 = v85;
        v28 = v220;
        v93 = v87;
        v80 = v211;
        v216 = *(v86 + 8);
        v216(v92, v93);
        v94 = sub_1000105AC(v89, v91, &v222);

        *(v88 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v81, v82, "%{public}s| ➕ Adding playlist %{public}s", v88, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v138 = *(v220 + 592);
        v139 = *(v220 + 576);
        v140 = *(v220 + 568);

        v216 = *(v139 + 8);
        v216(v138, v140);
      }

      v141 = *(*(v28 + 504) + 16);
      sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      dispatch thunk of Identifiable.id.getter();
      v142._countAndFlagsBits = *(v28 + 288);
      v143 = *(v28 + 296);
      *(v28 + 304) = 0xD000000000000014;
      *(v28 + 312) = 0x8000000100E3E560;
      v142._object = v143;
      String.append(_:)(v142);

      v144 = sub_10048C9BC(*(v28 + 304), *(v28 + 312), v141);

      if (v144)
      {
        v80(*(v28 + 584), *(v28 + 600), *(v28 + 568));

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v145, v146))
        {
          v132 = *(v28 + 832);
          v133 = *(v28 + 808);
          v134 = *(v28 + 800);
          v156 = *(v28 + 600);
          v157 = *(v28 + 584);
          v158 = *(v28 + 568);

          v216(v157, v158);
          v216(v156, v158);
          goto LABEL_38;
        }

        v147 = *(v28 + 880);
        v148 = *(v28 + 872);
        v212 = *(v28 + 800);
        v213 = *(v28 + 832);
        v208 = *(v28 + 600);
        v209 = *(v28 + 808);
        v149 = *(v28 + 584);
        v150 = *(v28 + 568);
        v151 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v151 = 136446466;
        *(v151 + 4) = sub_1000105AC(v148, v147, &v222);
        *(v151 + 12) = 2082;
        sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v154 = v153;
        v216(v149, v150);
        v155 = sub_1000105AC(v152, v154, &v222);

        *(v151 + 14) = v155;
        _os_log_impl(&_mh_execute_header, v145, v146, "%{public}s| ❌ Skipping playlist: Duplicate identifier found for %{public}s", v151, 0x16u);
        swift_arrayDestroy();

        v216(v208, v150);
        goto LABEL_36;
      }

      v159 = sub_1007429EC((*(v28 + 512) + 16), *(v28 + 600), (*(v28 + 520) + 16), *(v28 + 528) + 16, *(v28 + 872), *(v28 + 880));
      dispatch thunk of Identifiable.id.getter();
      v160._countAndFlagsBits = *(v28 + 336);
      v161 = *(v28 + 344);
      *(v28 + 352) = 0xD000000000000014;
      *(v28 + 360) = 0x8000000100E3E560;
      v160._object = v161;
      String.append(_:)(v160);

      v162 = *(v28 + 352);
      v163 = *(v28 + 360);
      swift_beginAccess();
      sub_1003B3170((v28 + 320), v162, v163);
      swift_endAccess();

      v164 = v159;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v28 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v165 = *(v28 + 552);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v206 = *(v28 + 448);
      swift_beginAccess();
      sub_1003B4FFC(&v222, v164);
      swift_endAccess();

      v166 = _s19PlaylistTabsRequestVMa(0);
      v167 = v28;
      v168 = *(v165 + *(v166 + 20));
      v169 = v167[104];
      v170 = v167[100];
      v171 = v167[75];
      v172 = v167[71];
      v173 = (v167[101] + 8);
      if (!v168)
      {
        v216(v167[75], v167[71]);
        (*v173)(v169, v170);
LABEL_45:
        v28 = v220;

        goto LABEL_11;
      }

      _s11PlaylistTabCMa();
      v164 = v164;
      v174 = v168;
      v175 = static NSObject.== infix(_:_:)();
      v216(v171, v172);
      (*v173)(v169, v170);

      if ((v175 & 1) == 0)
      {
        goto LABEL_45;
      }

      v28 = v220;
      v176 = *(v220 + 560);
      v177 = *(v176 + 16);
      *(v176 + 16) = v164;

LABEL_11:
      v33 = *(v28 + 968);
      v34 = *(v28 + 856);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v34 + v33) == *(v28 + 464))
      {
        goto LABEL_7;
      }
    }

    v45 = *(v220 + 824);
    v46 = *(v220 + 792);
    v47 = *(v220 + 768);
    v48 = *(v220 + 760);
    (*(*(v220 + 808) + 96))(v45, *(v220 + 800));
    (*(v47 + 32))(v46, v45, v48);
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v49 = *(v220 + 792);
    v50 = *(v220 + 784);
    v51 = *(v220 + 768);
    v52 = *(v220 + 760);
    v53 = type metadata accessor for Logger();
    v54 = sub_1000060E4(v53, qword_101218E18);
    v55 = *(v51 + 16);
    *(v220 + 912) = v54;
    v55(v50, v49, v52);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v220 + 880);
      v59 = *(v220 + 872);
      v60 = *(v220 + 784);
      v215 = v55;
      v61 = *(v220 + 768);
      v62 = *(v220 + 760);
      v63 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v63 = 136446466;
      *(v63 + 4) = sub_1000105AC(v59, v58, &v222);
      *(v63 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = *(v61 + 8);
      v68 = v60;
      v28 = v220;
      v67(v68, v62);
      v55 = v215;
      v69 = sub_1000105AC(v64, v66, &v222);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s| ➕📁 Adding playlist folder %{public}s", v63, 0x16u);
      swift_arrayDestroy();

      v70 = v67;
    }

    else
    {
      v95 = *(v220 + 784);
      v96 = *(v220 + 768);
      v97 = *(v220 + 760);

      v70 = *(v96 + 8);
      v70(v95, v97);
    }

    *(v28 + 920) = v70;
    v98 = *(*(v28 + 504) + 16);
    sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

    dispatch thunk of Identifiable.id.getter();
    v99._countAndFlagsBits = *(v28 + 368);
    v100 = *(v28 + 376);
    *(v28 + 384) = 0xD000000000000014;
    *(v28 + 392) = 0x8000000100E3E560;
    v99._object = v100;
    String.append(_:)(v99);

    LOBYTE(v100) = sub_10048C9BC(*(v28 + 384), *(v28 + 392), v98);

    v101 = *(v28 + 880);
    if ((v100 & 1) == 0)
    {
      v182 = *(v28 + 872);
      v183 = *(v28 + 792);
      v184 = v28;
      v185 = *(v28 + 768);
      v186 = v184[95];
      v219 = v55;
      v187 = v184[94];
      v188 = v184[93];
      v184[116] = sub_100742384((v184[64] + 16), v183, (v184[65] + 16), v184[66] + 16, v182, v101);
      dispatch thunk of Identifiable.id.getter();
      v189._countAndFlagsBits = v184[52];
      v190 = v184[53];
      v184[54] = 0xD000000000000014;
      v184[55] = 0x8000000100E3E560;
      v189._object = v190;
      String.append(_:)(v189);

      v191 = v184[54];
      v192 = v184[55];
      swift_beginAccess();
      sub_1003B3170(v184 + 50, v191, v192);
      swift_endAccess();

      v193 = *(v188 + 20);
      v219(v187 + v193, v183, v186);
      (*(v185 + 56))(v187 + v193, 0, 1, v186);
      if (qword_10117F5D8 != -1)
      {
        swift_once();
      }

      v194 = v184[108];
      v195 = v184[94];
      v196 = v184[93];
      v197 = v184[81];
      v198 = v184[80];
      v221 = v184[79];
      v199 = v184[78];
      v200 = v184[77];
      v201 = v184[76];
      *v195 = qword_101218AB8;
      *(v195 + *(v196 + 24)) = 0;
      v202 = *(v198 + 32);

      sub_100749B78(v195, v194 + v202);
      sub_100749D3C(v194, v197, _s9PlaylistsVMa);
      type metadata accessor for TitledSection();
      sub_1007493A0(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

      MusicLibrarySectionedRequest.library.setter();
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      sub_10018E714(v199);
      sub_10018ECCC();
      sub_10018EFFC();
      MusicLibrarySectionedRequest.filterItems(text:)(*(v197 + *(v198 + 36)));
      MusicLibrarySectionedRequest.limit.setter();
      (*(v200 + 32))(v221, v199, v201);
      sub_100749E0C(v197, _s9PlaylistsVMa);
      v203 = swift_task_alloc();
      v184[117] = v203;
      *v203 = v184;
      v203[1] = sub_10073E91C;
      v204 = v184[84];
      v205 = v184[76];

      return MusicLibrarySectionedRequest.response()(v204, v205);
    }

    v55(*(v28 + 776), *(v28 + 792), *(v28 + 760));

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v102, v103))
    {
      v132 = *(v28 + 832);
      v133 = *(v28 + 808);
      v134 = *(v28 + 800);
      v135 = *(v28 + 792);
      v136 = *(v28 + 776);
      v137 = *(v28 + 760);

      v70(v136, v137);
      v70(v135, v137);
LABEL_38:
      (*(v133 + 8))(v132, v134);
      goto LABEL_11;
    }

    v104 = *(v28 + 880);
    v217 = v70;
    v105 = *(v28 + 872);
    v212 = *(v28 + 800);
    v213 = *(v28 + 832);
    v207 = *(v28 + 792);
    v209 = *(v28 + 808);
    v106 = *(v28 + 776);
    v107 = *(v28 + 760);
    v108 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *v108 = 136446466;
    *(v108 + 4) = sub_1000105AC(v105, v104, &v222);
    *(v108 + 12) = 2082;
    sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v217(v106, v107);
    v112 = sub_1000105AC(v109, v111, &v222);

    *(v108 + 14) = v112;
    _os_log_impl(&_mh_execute_header, v102, v103, "%{public}s| 📁❌ Skipping folder tab: Duplicate identifier found for %{public}s", v108, 0x16u);
    swift_arrayDestroy();

    v217(v207, v107);
LABEL_36:
    (*(v209 + 8))(v213, v212);
    goto LABEL_11;
  }

LABEL_7:
  sub_1000095E8(*(v28 + 856), &unk_1011828E0, &qword_100EBE230);

LABEL_47:

  v180 = *(v28 + 8);

  return v180(v206);
}

void *sub_100742384(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = type metadata accessor for Playlist.Folder();
  v12 = *(v60 - 8);
  __chkstk_darwin();
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v57 - v14;
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v17 = *a1;
  v62 = sub_100747904;
  v63 = 0;
  v64 = KeyPath;
  v65 = a2;
  v59 = a2;
  sub_1007357E0(sub_100749BDC, v61, v17);
  if (v20 == -1)
  {
    swift_endAccess();

LABEL_8:
    v57 = a5;
    v31 = v60;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218E18);
    v33 = *(v12 + 16);
    v33(v15, v59, v31);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v36 = 136446466;
      *(v36 + 4) = sub_1000105AC(v57, a6, v66);
      *(v36 + 12) = 2082;
      sub_1007493A0(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v12 + 8))(v15, v60);
      v40 = sub_1000105AC(v37, v39, v66);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s| ↳➕📁 Creating new tab for folder %{public}s", v36, 0x16u);
      swift_arrayDestroy();

      v31 = v60;
    }

    else
    {

      (*(v12 + 8))(v15, v31);
    }

    v41 = v58;
    v33(v58, v59, v31);
    v42 = objc_allocWithZone(_s17PlaylistFolderTabCMa());
    return sub_10073920C(v41);
  }

  v57 = a4;
  v21 = a6;
  v22 = v20;
  v23 = v18;
  v24 = v19;
  sub_10074805C(v18, v19, v20 & 1);
  v26 = v25;
  sub_100590F24(v23, v24, v22);
  _s17PlaylistFolderTabCMa();
  v27 = swift_dynamicCastClass();
  swift_endAccess();

  if (!v27)
  {

    goto LABEL_7;
  }

  swift_beginAccess();
  v28 = *a3;

  v29 = v26;
  v30 = sub_10048C8A4(v27, v28);

  if (v30)
  {

LABEL_7:
    a6 = v21;
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_1003B4FFC(v67, v27);
  swift_endAccess();

  swift_beginAccess();
  v44 = v21;
  if (sub_100739514(v59))
  {
    v45 = v29;
    sub_1003B4FFC(v67, v27);
  }

  swift_endAccess();
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, qword_101218E18);
  v47 = v29;

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v50 = 136446466;
    *(v50 + 4) = sub_1000105AC(a5, v44, v66);
    *(v50 + 12) = 2082;
    v51 = v47;
    v52 = [v27 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_1000105AC(v53, v55, v66);

    *(v50 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s| ↳♻️📁 Reusing tab for folder %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  return v27;
}

void *sub_1007429EC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = type metadata accessor for Playlist();
  v12 = *(v60 - 8);
  __chkstk_darwin();
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v57 - v14;
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v17 = *a1;
  v62 = sub_10074794C;
  v63 = 0;
  v64 = KeyPath;
  v65 = a2;
  v59 = a2;
  sub_1007357E0(sub_100749C54, v61, v17);
  if (v20 == -1)
  {
    swift_endAccess();

LABEL_8:
    v57 = a5;
    v31 = v60;
    if (qword_10117F7A8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218E18);
    v33 = *(v12 + 16);
    v33(v15, v59, v31);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v36 = 136446466;
      *(v36 + 4) = sub_1000105AC(v57, a6, v66);
      *(v36 + 12) = 2082;
      sub_1007493A0(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v12 + 8))(v15, v60);
      v40 = sub_1000105AC(v37, v39, v66);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s| ↳➕ Creating new tab for playlist %{public}s", v36, 0x16u);
      swift_arrayDestroy();

      v31 = v60;
    }

    else
    {

      (*(v12 + 8))(v15, v31);
    }

    v41 = v58;
    v33(v58, v59, v31);
    v42 = objc_allocWithZone(_s11PlaylistTabCMa());
    return sub_100739F48(v41);
  }

  v57 = a4;
  v21 = a6;
  v22 = v20;
  v23 = v18;
  v24 = v19;
  sub_10074805C(v18, v19, v20 & 1);
  v26 = v25;
  sub_100590F24(v23, v24, v22);
  _s11PlaylistTabCMa();
  v27 = swift_dynamicCastClass();
  swift_endAccess();

  if (!v27)
  {

    goto LABEL_7;
  }

  swift_beginAccess();
  v28 = *a3;

  v29 = v26;
  v30 = sub_10048C8A4(v27, v28);

  if (v30)
  {

LABEL_7:
    a6 = v21;
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_1003B4FFC(v67, v27);
  swift_endAccess();

  swift_beginAccess();
  v44 = v21;
  if (sub_10073A2CC(v59))
  {
    v45 = v29;
    sub_1003B4FFC(v67, v27);
  }

  swift_endAccess();
  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, qword_101218E18);
  v47 = v29;

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v50 = 136446466;
    *(v50 + 4) = sub_1000105AC(a5, v44, v66);
    *(v50 + 12) = 2082;
    v51 = v47;
    v52 = [v27 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_1000105AC(v53, v55, v66);

    *(v50 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s| ↳♻️ Reusing tab for playlist %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  return v27;
}

double sub_100743088(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), void (*a6)(void))
{
  (a5)(0, a2, a3);

  UnfairLock.locked<A>(_:)(a6);

  return result;
}

double sub_100743154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_10073B180(a1, sub_10074995C, v8, a4);

  return result;
}

void *sub_1007431F0()
{
  sub_10010FC20(&qword_1011A0D88, &qword_100EE03A8);
  __chkstk_darwin();
  v49 = &v41 - v1;
  v2 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin();
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UICellAccessory.DisplayedState();
  v4 = *(v52 - 8);
  __chkstk_darwin();
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = type metadata accessor for UICellAccessory.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin();
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UICellAccessory();
  v15 = *(v46 - 8);
  __chkstk_darwin();
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v41 - v17;
  *&v18 = __chkstk_darwin().n128_u64[0];
  v20 = &v41 - v19;
  v21 = [v0 managingTabGroup];
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = v21;
  _s3TabCMa(0);
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    v29 = _swiftEmptyArrayStorage;
    v28 = v46;
    goto LABEL_8;
  }

  v23 = sub_1003DF2C4();

  v24 = &v11[*(sub_10010FC20(&qword_101197090, &qword_100ED5D68) + 48)];
  (*(v4 + 104))(v11, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v52);
  *v24 = static MPMediaLibraryFilteringOptions.none.getter;
  v24[1] = 0;
  (*(v9 + 104))(v11, enum case for UICellAccessory.Placement.trailing(_:), v8);
  v25 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = v23;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  (*(v42 + 8))(v14, v43);
  v27 = v44;
  v28 = v46;
  (*(v15 + 16))(v44, v20, v46);
  v29 = sub_10049AA14(0, 1, 1, _swiftEmptyArrayStorage);
  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_10049AA14((v30 > 1), v31 + 1, 1, v29);
  }

  (*(v15 + 8))(v20, v28);
  v29[2] = v31 + 1;
  (*(v15 + 32))(v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31, v27, v28);
LABEL_8:
  v32 = v47;
  v33 = v52;
  (*(v4 + 104))(v47, enum case for UICellAccessory.DisplayedState.always(_:), v52);
  v34 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v35 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v36 = v48;
  UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
  v37 = v45;
  static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
  (*(v50 + 8))(v36, v51);
  (*(v4 + 8))(v32, v33);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_10049AA14(0, v29[2] + 1, 1, v29);
  }

  v39 = v29[2];
  v38 = v29[3];
  if (v39 >= v38 >> 1)
  {
    v29 = sub_10049AA14((v38 > 1), v39 + 1, 1, v29);
  }

  v29[2] = v39 + 1;
  (*(v15 + 32))(v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, v37, v28);
  return v29;
}

uint64_t sub_100743950(uint64_t a1)
{
  _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1;
  sub_100743A80(v5, v4);
  v6 = [v5 managingTabGroup];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  _s3TabCMa(0);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache);

LABEL_6:
  sub_10053BCD4(v4, v9, a1);

  return sub_100749E0C(v4, _s11ArtworkInfoV10PropertiesVMa);
}

void sub_100743A80(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v5 = &v22[-v4];
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Artwork();
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = _s11ArtworkInfoV10PropertiesVMa(0);
  v12 = a2 + v11[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v11[7];
  v14 = UIView.Corner.extraSmall.unsafeMutableAddressor();
  v15 = type metadata accessor for UIView.Corner();
  (*(*(v15 - 8) + 16))(a2 + v13, v14, v15);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  Playlist.artwork.getter();
  (*(v7 + 8))(v9, v6);
  sub_10006B010(v5, a2, &unk_101188920, &qword_100EBCC50);
  v16 = [objc_opt_self() defaultMetrics];
  [v16 scaledValueForValue:28.0];
  v18 = v17;
  [v16 scaledValueForValue:28.0];
  v20 = v19;

  v21 = (a2 + v11[5]);
  *v21 = v18;
  v21[1] = v20;
}

id sub_100743D40()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218E00);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1000105AC(v23, v25, v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "No presentation source provided for tab=%{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    return 0;
  }

  v2 = v1;
  v43 = v0;
  v44 = 0u;
  v45 = 0u;
  v46 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v43, 12, v35);
  v39[0] = v35[0];
  v39[1] = v35[1];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_10012B7A8(v34, v33);
    v9 = swift_allocObject();
    sub_10012B828(v33, v9 + 16);
    *(v9 + 112) = v5;
    v10 = objc_opt_self();
    v31 = sub_100747F4C;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747E6C;
    v30 = &unk_1010BD1F0;
    v11 = _Block_copy(&v27);
    v12 = v5;

    v31 = sub_100747F54;
    v32 = v9;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747EBC;
    v30 = &unk_1010BD218;
    v13 = _Block_copy(&v27);

    v14 = [v10 configurationWithIdentifier:v7 previewProvider:v11 actionProvider:v13];

    _Block_release(v13);
    _Block_release(v11);
    sub_10012BA6C(v34);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100744188(uint64_t a1)
{
  type metadata accessor for Playlist();
  __chkstk_darwin();
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  UnfairLock.locked<A>(_:)(sub_10074A07C);

  return sub_1007352B8(v2, 1, &type metadata accessor for Playlist, sub_100247018, sub_10023B16C);
}

unint64_t sub_1007442B4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UUID();
  v136 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v132 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v119 - v9;
  v135 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v10 = *(v135 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v144 = (&v119 - v11);
  v133 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v12;
  __chkstk_darwin();
  v143 = &v119 - v14;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v119 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v137 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v119 - v18;
  __chkstk_darwin();
  v20 = &v119 - v19;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v139 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v119 - v22;
  v130 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v125 = v10;
  v126 = v13;
  v141 = Strong;
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v7;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 56) = type metadata accessor for Playlist();
  *(v24 + 64) = &protocol witness table for Playlist;
  sub_10001C8B8((v24 + 32));

  UnfairLock.locked<A>(_:)(sub_100747F60);

  v25 = [a3 managingTabGroup];
  if (v25)
  {
    v26 = v25;
    _s3TabCMa(0);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v124 = *(v27 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_8;
    }
  }

  type metadata accessor for MusicLibrary();
  v124 = static MusicLibrary.shared.getter();
LABEL_8:
  v29 = qword_10117F608;
  v30 = a3;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v34 = result;
    v122 = v24;
    v123 = v5;
    v35 = *(result + 8);
    v36 = v30;
    v37 = v31;
    v35(ObjectType, v34);

    PlaybackIntentDescriptor.IntentType.init(_:)(v16, v20);
    v38 = UITab.combinedPlayActivityFeatureName.getter();
    v40 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v38, v39, 0, 0xF000000000000000);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v157[4] = &protocol witness table for UITab;
    v157[3] = v47;
    v157[0] = v36;
    v48 = v142;
    v119 = v37;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v37, v20, v40, v42, v44, v46, v157, v142);
    v49 = type metadata accessor for Actions.PlaybackContext(0);
    v140 = *(v49 - 8);
    v50 = *(v140 + 56);
    v129 = v49;
    v50(v48, 0, 1);
    v51 = type metadata accessor for PlaylistContext(0);
    (*(*(v51 - 8) + 56))(v143, 1, 1, v51);
    sub_10012B7A8(v130, v157);
    v52 = type metadata accessor for MetricsEvent.Page(0);
    v53 = *(*(v52 - 8) + 56);
    v54 = v131;
    v53(v131, 1, 1, v52);
    v55 = v132;
    sub_1000089F8(v54, v132, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v130 = sub_10053771C();
    v121 = v56;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v57 = qword_101218AD0;
    v120 = GroupActivitiesManager.hasJoined.getter();
    v58 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v54, &unk_1011838F0, &qword_100EC1070);
    v59 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v60 = *(v57 + v59);
    v61 = type metadata accessor for Actions.MetricsReportingContext(0);
    v62 = v61[5];
    v63 = v144;
    v53(v144 + v62, 1, 1, v52);
    v64 = v61[7];
    v65 = (v63 + v61[6]);
    v66 = v61[8];
    *v63 = xmmword_100EBEF60;
    sub_10006B010(v55, v63 + v62, &unk_1011838F0, &qword_100EC1070);
    v67 = v121;
    *v65 = v130;
    v65[1] = v67;
    *(v63 + v64) = 0;
    *(v63 + v66) = 0;
    v68 = v63 + v61[9];
    *v68 = v120 & 1;
    *(v68 + 1) = v58;
    *(v68 + 2) = v60;
    (*(*(v61 - 1) + 56))(v63, 0, 1, v61);
    sub_100008FE4(v122 + 32, v156);

    sub_1000089F8(v157, &v151, &unk_1011845E0, &unk_100EBF3A0);
    if (v154 == 1)
    {
      v162 = 0;
      memset(v161, 0, sizeof(v161));
      v163 = xmmword_100EBCEF0;
      v69 = v141;
      PresentationSource.init(viewController:position:)(v141, v161, v155);
      v71 = v139;
      v70 = v140;
      v72 = v129;
      if (v154 != 1)
      {
        sub_1000095E8(&v151, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v151, v155);
      v70 = v140;
      v69 = v141;
      v71 = v139;
      v72 = v129;
    }

    swift_getObjectType();
    v73 = swift_conformsToProtocol2();
    if (v73)
    {
      v130 = v73;
      v74 = v69;
      v131 = v69;
    }

    else
    {
      v130 = 0;
      v131 = 0;
    }

    v132 = swift_allocBox();
    v76 = v75;
    sub_1000089F8(v142, v71, &unk_10118AB20, &unk_100EBF390);
    v79 = *(v70 + 48);
    v77 = v70 + 48;
    v78 = v79;
    if (v79(v71, 1, v72) == 1)
    {
      v140 = v77;
      v80 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v81 = v138;
      (*(*(v80 - 8) + 56))(v138, 1, 1, v80);
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      sub_1000089F8(v81, v137, &unk_1011838E0, &unk_100EC1670);
      v82 = v119;
      v83 = UIViewController.playActivityInformation.getter();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      sub_1000089F8(&v151, &v149, &unk_101183910, &unk_100EBDD00);
      if (v150)
      {
        sub_100059A8C(&v149, &v158);
      }

      else
      {
        v148 = v69;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v90 = v69;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v145, &v158);
          v71 = v139;
        }

        else
        {
          v147 = 0;
          v145 = 0u;
          v146 = 0u;
          *&v158 = v90;
          v91 = v90;
          v92 = String.init<A>(reflecting:)();
          *(&v159 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v160 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v158 = v92;
          *(&v158 + 1) = v93;
          v71 = v139;
          if (*(&v146 + 1))
          {
            sub_1000095E8(&v145, &unk_101183910, &unk_100EBDD00);
          }
        }

        v69 = v141;
        if (v150)
        {
          sub_1000095E8(&v149, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v82, v137, v83, v85, v87, v89, &v158, v76);
      sub_1000095E8(&v151, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v138, &unk_1011838E0, &unk_100EC1670);
      v72 = v129;
      if (v78(v71, 1, v129) != 1)
      {
        sub_1000095E8(v71, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100749DA4(v71, v76, type metadata accessor for Actions.PlaybackContext);
    }

    v94 = *(v72 + 28);
    sub_1000089F8(&v76[v94], &v158, &unk_101183910, &unk_100EBDD00);
    if (*(&v159 + 1))
    {
      sub_100059A8C(&v158, &v151);
    }

    else
    {
      *&v151 = v69;
      v95 = v69;
      v96 = String.init<A>(reflecting:)();
      *(&v152 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v153 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v151 = v96;
      *(&v151 + 1) = v97;
      if (*(&v159 + 1))
      {
        sub_1000095E8(&v158, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100EBDC20;
    *(v98 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v98 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v98 + 32) = 0x4D747865746E6F43;
    *(v98 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v151, v98 + 72);
    v99 = static Player.CommandIssuer<>.combining(_:)(v98);
    v101 = v100;

    sub_10000959C(&v151);
    *(&v152 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v153 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v151 = v99;
    *(&v151 + 1) = v101;
    sub_10006B010(&v151, &v76[v94], &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v156, &v151);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v102 = String.init<A>(describing:)();
    v139 = v103;
    v140 = v102;
    v138 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v156, &v149);
    sub_10012B7A8(v155, &v151);
    v104 = v127;
    sub_1000089F8(v144, v127, &unk_1011838D0, &unk_100EC0320);
    v105 = v126;
    sub_1000089F8(v143, v126, &unk_1011845D0, &unk_100EBF380);
    v106 = (*(v135 + 80) + 160) & ~*(v135 + 80);
    v107 = (v125 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
    v109 = (*(v133 + 80) + v108 + 8) & ~*(v133 + 80);
    v137 = (v109 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v109 + v134 + 31) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    sub_100059A8C(&v149, v111 + 16);
    *(v111 + 56) = v124;
    sub_10012B828(&v151, v111 + 64);
    sub_10003D17C(v104, v111 + v106, &unk_1011838D0, &unk_100EC0320);
    *(v111 + v107) = v138;
    *(v111 + v108) = v132;
    sub_10003D17C(v105, v111 + v109, &unk_1011845D0, &unk_100EBF380);
    v112 = v111 + v137;
    v113 = v130;
    *v112 = v131;
    *(v112 + 8) = v113;
    *(v112 + 16) = 2;
    v114 = (v111 + v110);
    *v114 = variable initialization expression of Library.Context.playlistVariants;
    v114[1] = 0;
    swift_unknownObjectRetain();

    v115 = v128;
    UUID.init()();
    v116 = UUID.uuidString.getter();
    v118 = v117;
    (*(v136 + 8))(v115, v123);
    v164._object = v139;
    v164._countAndFlagsBits = v140;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v158, v164, v116, v118, sub_100217D28, v111);
    swift_unknownObjectRelease();
    sub_10012BA6C(v155);
    sub_10000959C(v156);

    v28 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
    v155[0] = v158;
    sub_100015BB0(v155);
    v151 = v159;
    sub_100015BB0(&v151);

    sub_1000095E8(v157, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v143, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v142, &unk_10118AB20, &unk_100EBF390);
    sub_1000095E8(v144, &unk_1011838D0, &unk_100EC0320);
    return v28;
  }

  __break(1u);
  return result;
}

id sub_100745390()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218E00);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1000105AC(v23, v25, v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "No presentation source provided for tab=%{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    return 0;
  }

  v2 = v1;
  v43 = v0;
  v44 = 0u;
  v45 = 0u;
  v46 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v43, 12, v35);
  v39[0] = v35[0];
  v39[1] = v35[1];
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v5 = v0;
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_10012B7A8(v34, v33);
    v9 = swift_allocObject();
    sub_10012B828(v33, v9 + 16);
    *(v9 + 112) = v5;
    v10 = objc_opt_self();
    v31 = sub_1007493E8;
    v32 = v8;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747E6C;
    v30 = &unk_1010BD358;
    v11 = _Block_copy(&v27);
    v12 = v5;

    v31 = sub_10074946C;
    v32 = v9;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100747EBC;
    v30 = &unk_1010BD380;
    v13 = _Block_copy(&v27);

    v14 = [v10 configurationWithIdentifier:v7 previewProvider:v11 actionProvider:v13];

    _Block_release(v13);
    _Block_release(v11);
    sub_10012BA6C(v34);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007457D8(char *a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v30 = &v28 - v2;
  v3 = type metadata accessor for Playlist.Folder();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v28 - v7;

  UnfairLock.locked<A>(_:)(sub_10074A094);

  v29 = *(v4 + 16);
  v29(v6, v8, v3);
  v31 = sub_1007352B8(v6, 1, &type metadata accessor for Playlist.Folder, sub_1002474C4, sub_10074A044);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v9 = [a1 managingTabGroup];
  v32 = a1;
  if (v9)
  {
    v10 = v9;
    _s3TabCMa(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

      goto LABEL_8;
    }
  }

  type metadata accessor for MusicLibrary();
  v12 = static MusicLibrary.shared.getter();
LABEL_8:
  v13 = [v32 managingTabGroup];
  if (v13)
  {
    v14 = v13;
    _s3TabCMa(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_1001747E4(v8, v12, v16);

  if ((v17 & 1) == 0)
  {
    v18 = type metadata accessor for TaskPriority();
    v19 = v30;
    (*(*(v18 - 8) + 56))(v30, 1, 1, v18);
    v29(v6, v8, v3);
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    (*(v4 + 32))(v22 + v20, v6, v3);
    v24 = v31;
    v23 = v32;
    *(v22 + v21) = v32;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v25 = v23;
    v26 = v24;
    sub_10035EB10(0, 0, v19, &unk_100EE03E0, v22);

    sub_1000095E8(v19, &unk_101181520, &qword_100EBCC60);
  }

  (*(v4 + 8))(v8, v3);
  return v31;
}

uint64_t sub_100745C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Playlist.Folder();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100745D34, 0, 0);
}

uint64_t sub_100745D34()
{
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v0[10] = qword_101218670;
  v0[11] = type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100745E08, v2, v1);
}

uint64_t sub_100745E08()
{
  v1 = v0[3];

  v2 = [v1 managingTabGroup];
  v0[13] = v2;
  if (v2)
  {
    v3 = v2;
    _s3TabCMa(0);
    v4 = swift_dynamicCastClass();
    v0[14] = v4;
    if (v4)
    {
      v5 = sub_100745F78;
    }

    else
    {

      v5 = sub_100745ED8;
    }
  }

  else
  {
    v5 = sub_10074A05C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100745ED8()
{
  type metadata accessor for MusicLibrary();
  *(v0 + 136) = static MusicLibrary.shared.getter();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746120, v2, v1);
}

uint64_t sub_100745F78(uint64_t a1)
{
  *(v1 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746004, v3, v2);
}

uint64_t sub_100746004()
{
  v1 = v0[14];
  v2 = v0[13];

  v0[16] = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

  return _swift_task_switch(sub_10074608C, 0, 0);
}

uint64_t sub_10074608C(uint64_t a1)
{
  v1[17] = v1[16];
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100746120, v3, v2);
}

uint64_t sub_100746120()
{
  v1 = v0[3];

  v2 = [v1 managingTabGroup];
  v0[19] = v2;
  if (v2)
  {
    v3 = v2;
    _s3TabCMa(0);
    v4 = swift_dynamicCastClass();
    v0[20] = v4;
    if (v4)
    {

      return _swift_task_switch(sub_100746248, 0, 0);
    }
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100746394;
  v6 = v0[17];
  v7 = v0[2];

  return sub_100174920(v7, v6, 0);
}

uint64_t sub_100746248(uint64_t a1)
{
  *(v1 + 168) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007462D4, v3, v2);
}

uint64_t sub_1007462D4()
{
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);

  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_100746394;
  v4 = *(v0 + 136);
  v5 = *(v0 + 16);

  return sub_100174920(v5, v4, v2);
}

uint64_t sub_100746394()
{

  return _swift_task_switch(sub_1007464AC, 0, 0);
}

uint64_t sub_1007464AC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v6, v4);
  v8 = v5;
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  *(v11 + 4) = v8;
  (*(v3 + 32))(&v11[v10], v1, v4);
  sub_1001F4CB8(0, 0, v2, &unk_100EE03F0, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10074662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007466C4, v7, v6);
}

uint64_t sub_1007466C4()
{

  v1 = sub_1002474C4();
  dispatch thunk of UIHostingController.rootView.getter();
  v2 = sub_10024D86C(*(v0 + 16), v1);

  if ((v2 & 1) == 0)
  {
    v3 = dispatch thunk of UIHostingController.rootView.modify();
    *v4 = v1;

    v3(v0 + 16, 0);
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1007467AC(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v10 = &v124[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v137 = &v124[-v11];
  v142 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v13 = &v124[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = v12;
  __chkstk_darwin();
  v150 = &v124[-v14];
  v140 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v144 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = v15;
  __chkstk_darwin();
  v149 = &v124[-v16];
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v18 = &v124[-v17];
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v138 = &v124[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v139 = &v124[-v20];
  __chkstk_darwin();
  v22 = &v124[-v21];
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v145 = &v124[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v148 = &v124[-v24];
  v136 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v129 = v10;
  v132 = v8;
  v133 = v6;
  v134 = v5;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBC6B0;
  *(v25 + 56) = type metadata accessor for Playlist.Folder();
  *(v25 + 64) = sub_1007493A0(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v127 = v25;
  sub_10001C8B8((v25 + 32));

  UnfairLock.locked<A>(_:)(sub_100749478);

  v26 = [a3 managingTabGroup];
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  _s3TabCMa(0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

LABEL_7:
    type metadata accessor for MusicLibrary();
    v130 = static MusicLibrary.shared.getter();
    goto LABEL_8;
  }

  v130 = *(v28 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);

LABEL_8:
  v30 = qword_10117F608;
  v31 = a3;
  if (v30 != -1)
  {
    swift_once();
  }

  v131 = v13;
  v32 = qword_101218AD8;
  ObjectType = swift_getObjectType();
  v34 = swift_conformsToProtocol2();
  if (v34)
  {
    v35 = *(v34 + 8);
    v36 = v34;
    v37 = v31;
    v38 = v32;
    v35(ObjectType, v36);
  }

  else
  {
    v39 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = v32;
  }

  PlaybackIntentDescriptor.IntentType.init(_:)(v18, v22);
  v41 = UITab.combinedPlayActivityFeatureName.getter();
  v43 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(v41, v42, 0, 0xF000000000000000);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v163[4] = &protocol witness table for UITab;
  v163[3] = v50;
  v163[0] = v31;
  v51 = v148;
  v128 = v32;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v32, v22, v43, v45, v47, v49, v163, v148);
  v52 = type metadata accessor for Actions.PlaybackContext(0);
  v146 = *(v52 - 8);
  v53 = *(v146 + 56);
  v135 = v52;
  v53(v51, 0, 1);
  v54 = type metadata accessor for PlaylistContext(0);
  (*(*(v54 - 8) + 56))(v149, 1, 1, v54);
  sub_10012B7A8(v136, v163);
  v55 = type metadata accessor for MetricsEvent.Page(0);
  v56 = *(*(v55 - 8) + 56);
  v57 = v137;
  v56(v137, 1, 1, v55);
  v58 = v129;
  sub_1000089F8(v57, v129, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v136 = sub_10053771C();
  v126 = v59;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v60 = qword_101218AD0;
  v125 = GroupActivitiesManager.hasJoined.getter();
  v61 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v57, &unk_1011838F0, &qword_100EC1070);
  v62 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v63 = *(v60 + v62);
  v64 = type metadata accessor for Actions.MetricsReportingContext(0);
  v65 = v64[5];
  v66 = v150;
  v56(&v150[v65], 1, 1, v55);
  v67 = v64[7];
  v68 = (v66 + v64[6]);
  v69 = v64[8];
  *v66 = xmmword_100EBEF60;
  sub_10006B010(v58, v66 + v65, &unk_1011838F0, &qword_100EC1070);
  v70 = v126;
  *v68 = v136;
  v68[1] = v70;
  *(v66 + v67) = 0;
  *(v66 + v69) = 0;
  v71 = v66 + v64[9];
  *v71 = v125 & 1;
  *(v71 + 1) = v61;
  *(v71 + 2) = v63;
  (*(*(v64 - 1) + 56))(v66, 0, 1, v64);
  sub_100008FE4(v127 + 32, v162);

  sub_1000089F8(v163, &v157, &unk_1011845E0, &unk_100EBF3A0);
  if (v160 == 1)
  {
    v168 = 0;
    memset(v167, 0, sizeof(v167));
    v169 = xmmword_100EBCEF0;
    v72 = Strong;
    PresentationSource.init(viewController:position:)(Strong, v167, v161);
    v74 = v145;
    v73 = v146;
    v75 = v128;
    if (v160 != 1)
    {
      sub_1000095E8(&v157, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v157, v161);
    v73 = v146;
    v72 = Strong;
    v74 = v145;
    v75 = v128;
  }

  swift_getObjectType();
  v76 = swift_conformsToProtocol2();
  v77 = v135;
  if (v76)
  {
    v129 = v76;
    v78 = v72;
    v136 = v72;
  }

  else
  {
    v136 = 0;
    v129 = 0;
  }

  v137 = swift_allocBox();
  v80 = v79;
  sub_1000089F8(v148, v74, &unk_10118AB20, &unk_100EBF390);
  v83 = *(v73 + 48);
  v81 = v73 + 48;
  v82 = v83;
  if (v83(v74, 1, v77) == 1)
  {
    v146 = v81;
    v84 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v85 = v139;
    (*(*(v84 - 8) + 56))(v139, 1, 1, v84);
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    sub_1000089F8(v85, v138, &unk_1011838E0, &unk_100EC1670);
    v86 = v75;
    v87 = UIViewController.playActivityInformation.getter();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    sub_1000089F8(&v157, &v155, &unk_101183910, &unk_100EBDD00);
    if (v156)
    {
      sub_100059A8C(&v155, &v164);
    }

    else
    {
      v154 = v72;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v94 = v72;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v151, &v164);
        v74 = v145;
      }

      else
      {
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        *&v164 = v94;
        v95 = v94;
        v96 = String.init<A>(reflecting:)();
        *(&v165 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v166 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v164 = v96;
        *(&v164 + 1) = v97;
        v74 = v145;
        if (*(&v152 + 1))
        {
          sub_1000095E8(&v151, &unk_101183910, &unk_100EBDD00);
        }
      }

      v72 = Strong;
      if (v156)
      {
        sub_1000095E8(&v155, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v86, v138, v87, v89, v91, v93, &v164, v80);
    sub_1000095E8(&v157, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v139, &unk_1011838E0, &unk_100EC1670);
    v77 = v135;
    if (v82(v74, 1, v135) != 1)
    {
      sub_1000095E8(v74, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100749DA4(v74, v80, type metadata accessor for Actions.PlaybackContext);
  }

  v98 = *(v77 + 28);
  sub_1000089F8(&v80[v98], &v164, &unk_101183910, &unk_100EBDD00);
  if (*(&v165 + 1))
  {
    sub_100059A8C(&v164, &v157);
  }

  else
  {
    *&v157 = v72;
    v99 = v72;
    v100 = String.init<A>(reflecting:)();
    *(&v158 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v159 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v157 = v100;
    *(&v157 + 1) = v101;
    if (*(&v165 + 1))
    {
      sub_1000095E8(&v164, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100EBDC20;
  *(v102 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v102 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v102 + 32) = 0x4D747865746E6F43;
  *(v102 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v157, v102 + 72);
  v103 = static Player.CommandIssuer<>.combining(_:)(v102);
  v105 = v104;

  sub_10000959C(&v157);
  *(&v158 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v159 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v157 = v103;
  *(&v157 + 1) = v105;
  sub_10006B010(&v157, &v80[v98], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v162, &v157);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v106 = String.init<A>(describing:)();
  v145 = v107;
  v146 = v106;
  v139 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v162, &v155);
  sub_10012B7A8(v161, &v157);
  v108 = v131;
  sub_1000089F8(v150, v131, &unk_1011838D0, &unk_100EC0320);
  v109 = v144;
  sub_1000089F8(v149, v144, &unk_1011845D0, &unk_100EBF380);
  v110 = (*(v142 + 80) + 160) & ~*(v142 + 80);
  v111 = (v143 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
  v113 = (*(v140 + 80) + v112 + 8) & ~*(v140 + 80);
  v143 = (v113 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + v141 + 31) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  sub_100059A8C(&v155, v115 + 16);
  *(v115 + 56) = v130;
  sub_10012B828(&v157, v115 + 64);
  sub_10003D17C(v108, v115 + v110, &unk_1011838D0, &unk_100EC0320);
  *(v115 + v111) = v139;
  *(v115 + v112) = v137;
  sub_10003D17C(v109, v115 + v113, &unk_1011845D0, &unk_100EBF380);
  v116 = v115 + v143;
  v117 = v129;
  *v116 = v136;
  *(v116 + 8) = v117;
  *(v116 + 16) = 2;
  v118 = (v115 + v114);
  *v118 = variable initialization expression of Library.Context.playlistVariants;
  v118[1] = 0;
  swift_unknownObjectRetain();

  v119 = v132;
  UUID.init()();
  v120 = UUID.uuidString.getter();
  v122 = v121;
  (*(v133 + 8))(v119, v134);
  v170._object = v145;
  v170._countAndFlagsBits = v146;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v164, v170, v120, v122, sub_10021953C, v115);
  swift_unknownObjectRelease();
  sub_10012BA6C(v161);
  sub_10000959C(v162);

  v29 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v161[0] = v164;
  sub_100015BB0(v161);
  v157 = v165;
  sub_100015BB0(&v157);

  sub_1000095E8(v163, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v149, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v148, &unk_10118AB20, &unk_100EBF390);
  sub_1000095E8(v150, &unk_1011838D0, &unk_100EC0320);
  return v29;
}

uint64_t sub_100747994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1007493A0(a4, a5, a6);
  return dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1;
}

uint64_t sub_100747A68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  v7 = (a2)(0);
  return (*(*(v7 - 8) + 16))(a3, a1 + v6, v7);
}

uint64_t sub_100747B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128))
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  v7 = (a3)(0);
  (*(*(v7 - 8) + 24))(a1 + v6, a2, v7);
  return swift_endAccess();
}

uint64_t sub_100747BD0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_100747C5C()
{
  sub_100747BD0();

  return swift_deallocClassInstance();
}

uint64_t _s19PlaylistTabsRequestVMa(uint64_t a1)
{
  result = qword_1011A0D10;
  if (!qword_1011A0D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100747D3C(uint64_t a1)
{
  _s9PlaylistsVMa(319);
  if (v1 <= 0x3F)
  {
    sub_100747DC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100747DC0(uint64_t a1)
{
  if (!qword_1011A0D20)
  {
    _s11PlaylistTabCMa();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A0D20);
    }
  }
}

uint64_t sub_100747E14(uint64_t a1, __n128 a2)
{
  result = sub_1007493A0(&qword_1011A0D80, _s19PlaylistTabsRequestVMa, &unk_100EE0324);
  *(a1 + 8) = result;
  return result;
}

id sub_100747E6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_100747EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

void sub_100747F90(int64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_10019372C();
    v9 = v10;
  }

  sub_100198C50(*(v9 + 48) + 96 * a1, a3);
  sub_100196A74(a1);
  *v4 = v10;
}

void sub_10074805C(unint64_t a1, void *a2, char a3)
{
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      __CocoaSet.member(for:)();
      sub_100009F78(0, &qword_101181F70, UITab_ptr);

      swift_dynamicCast();
      sub_10019653C(v6, v16);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    if (__CocoaSet.Index.age.getter() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    a2 = v16;
    v3 = v16;
    v12 = NSObject._rawHashValue(seed:)(*(v10 + 40));
    v13 = -1 << *(v10 + 32);
    a1 = v12 & ~v13;
    if ((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * a1);
        v3 = static NSObject.== infix(_:_:)();

        if (v3)
        {
          goto LABEL_19;
        }

        a1 = (a1 + 1) & v14;
      }

      while (((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a1)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100194A34();
  }

  sub_100197458(a1);
  *v11 = v10;
}

void sub_1007482E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100009F78(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100009F78(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_1007484FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v32 = &v29 - v4;
  v5 = type metadata accessor for MusicPin();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_1007493A0(&qword_10118BE70, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  dispatch thunk of Identifiable.id.getter();
  v33 = 0xD000000000000014;
  v34 = 0x8000000100E3E560;
  String.append(_:)(v35);

  countAndFlagsBits = v33;
  v8 = v34;
  v10 = MusicPin.title.getter();
  v30 = v11;
  v31 = v10;
  v29 = sub_1003277A8();
  v12 = *(v6 + 32);
  v12(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = v14 + v13;
  v16 = v14;
  v12(v15, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v35._countAndFlagsBits = countAndFlagsBits;
  v35._object = v8;
  v33 = 0xD000000000000014;
  v34 = 0x8000000100E3E560;
  v17 = type metadata accessor for Locale();
  v18 = v32;
  (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v20 = v19;
  LOBYTE(v7) = v21;
  sub_1000095E8(v18, &unk_101182EA0, &unk_100EBE980);
  if (v7)
  {
    v35._countAndFlagsBits = 0xD000000000000014;
    v35._object = 0x8000000100E3E560;
    v22._countAndFlagsBits = countAndFlagsBits;
    v22._object = v8;
    String.append(_:)(v22);
    v23 = countAndFlagsBits;
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v23;
    a2[3] = v8;
    v28 = v30;
    a2[4] = v31;
    a2[5] = v28;
    a2[6] = v29;
    a2[7] = sub_100749F64;
    a2[8] = v16;
    return;
  }

  v25 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v25 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v25 >= v20 >> 14)
  {

    String.subscript.getter();

    v23 = static String._fromSubstring(_:)();
    v27 = v26;

    object = v8;
    v8 = v27;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10074889C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v39 = &v34 - v4;
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  v38 = *(v6 + 64);
  __chkstk_darwin();
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493A0(&qword_1011A0DB8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  dispatch thunk of Identifiable.id.getter();
  v40 = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  String.append(_:)(v42);

  v12 = v41;
  v36 = v40;
  (*(v6 + 16))(v11, a1, v5);
  (*(v9 + 104))(v11, enum case for Playlist.Folder.Item.folder(_:), v8);
  v13 = Playlist.Folder.Item.name.getter();
  v34 = v14;
  v35 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = sub_100735B1C();
  v16 = *(v6 + 32);
  v17 = v37;
  v16(v37, a1, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v17;
  countAndFlagsBits = v36;
  v16((v19 + v18), v20, v5);
  v42._countAndFlagsBits = countAndFlagsBits;
  v42._object = v12;
  v40 = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  v22 = type metadata accessor for Locale();
  v23 = v39;
  (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v25 = v24;
  LOBYTE(v5) = v26;
  sub_1000095E8(v23, &unk_101182EA0, &unk_100EBE980);
  if (v5)
  {
    v42._countAndFlagsBits = 0xD000000000000014;
    v42._object = 0x8000000100E3E560;
    v27._countAndFlagsBits = countAndFlagsBits;
    v27._object = v12;
    String.append(_:)(v27);
    v28 = countAndFlagsBits;
    countAndFlagsBits = v42._countAndFlagsBits;
    object = v42._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v28;
    a2[3] = v12;
    v33 = v34;
    a2[4] = v35;
    a2[5] = v33;
    a2[6] = v15;
    a2[7] = sub_100749C28;
    a2[8] = v19;
    return;
  }

  v30 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v30 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v30 >= v25 >> 14)
  {

    String.subscript.getter();

    v28 = static String._fromSubstring(_:)();
    v32 = v31;

    object = v12;
    v12 = v32;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100748D2C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v39 = &v34 - v4;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v38 = *(v6 + 64);
  __chkstk_darwin();
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493A0(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  dispatch thunk of Identifiable.id.getter();
  v40 = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  String.append(_:)(v42);

  v12 = v41;
  v36 = v40;
  (*(v6 + 16))(v11, a1, v5);
  (*(v9 + 104))(v11, enum case for Playlist.Folder.Item.playlist(_:), v8);
  v13 = Playlist.Folder.Item.name.getter();
  v34 = v14;
  v35 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = sub_100736308();
  v16 = *(v6 + 32);
  v17 = v37;
  v16(v37, a1, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v17;
  countAndFlagsBits = v36;
  v16((v19 + v18), v20, v5);
  v42._countAndFlagsBits = countAndFlagsBits;
  v42._object = v12;
  v40 = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  v22 = type metadata accessor for Locale();
  v23 = v39;
  (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v25 = v24;
  LOBYTE(v5) = v26;
  sub_1000095E8(v23, &unk_101182EA0, &unk_100EBE980);
  if (v5)
  {
    v42._countAndFlagsBits = 0xD000000000000014;
    v42._object = 0x8000000100E3E560;
    v27._countAndFlagsBits = countAndFlagsBits;
    v27._object = v12;
    String.append(_:)(v27);
    v28 = countAndFlagsBits;
    countAndFlagsBits = v42._countAndFlagsBits;
    object = v42._object;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v28;
    a2[3] = v12;
    v33 = v34;
    a2[4] = v35;
    a2[5] = v33;
    a2[6] = v15;
    a2[7] = sub_100749CA0;
    a2[8] = v19;
    return;
  }

  v30 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v30 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v30 >= v25 >> 14)
  {

    String.subscript.getter();

    v28 = static String._fromSubstring(_:)();
    v32 = v31;

    object = v12;
    v12 = v32;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1007491BC(void **a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(__n128))
{
  v11 = a6(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = (v21 - v14);
  v16 = *a1;
  a7(v13);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v21[3] = v17;
    v18 = v16;
    swift_getAtKeyPath();
    v19 = a2(v15, a5);

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_100749310(uint64_t a1, uint64_t a2)
{
  if (sub_10019891C(a1, a2))
  {
    v4 = *(_s19PlaylistTabsRequestVMa(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        _s11PlaylistTabCMa();
        v7 = v6;
        v8 = v5;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1007493A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007493F0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1007494A8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100745C30(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1007495E0(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10074662C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007496D8()
{
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v4 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v4(v16, 0);
  v5 = objc_opt_self();
  v6 = [v5 defaultMetrics];
  [v6 scaledValueForValue:28.0];
  v8 = v7;
  [v6 scaledValueForValue:28.0];

  v9 = UIListContentConfiguration.imageProperties.modify();
  v10 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *v11 = v8;
  v10(v15, 0);
  v9(v16, 0);
  v12 = [v5 defaultMetrics];
  [v12 scaledValueForValue:28.0];
  [v12 scaledValueForValue:28.0];

  v13 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v13(v16, 0);
  (*(v1 + 104))(v3, enum case for Playlist.Variant.folder(_:), v0);
  Playlist.Variant.symbolImage.getter();
  (*(v1 + 8))(v3, v0);
  return UIListContentConfiguration.image.setter();
}

uint64_t sub_10074995C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return v2(&v5);
}

uint64_t sub_1007499A0(uint64_t a1)
{
  v3 = *(_s19PlaylistTabsRequestVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10010FC20(&qword_1011828F8, &qword_100EBE238) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v15 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100008F30;

  return sub_10073B6D0(a1, v11, v12, v1 + v4, v15, v9, v1 + v8, v10);
}

uint64_t sub_100749B78(uint64_t a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100749D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100749DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100749E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100749E6C()
{
  result = qword_10118DFA0;
  if (!qword_10118DFA0)
  {
    sub_100009F78(255, &qword_101181F70, UITab_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DFA0);
  }

  return result;
}

uint64_t sub_100749ED4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_100749F90(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t SharePlayTogetherSessionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10074A0BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 168) = a4;
  *(v7 + 176) = a5;
  *(v7 + 336) = a3;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for MainActor();
  *(v7 + 256) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 264) = v10;
  *(v7 + 272) = v9;

  return _swift_task_switch(sub_10074A210, v10, v9);
}

uint64_t sub_10074A210()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  v3 = [v2 activeUserState];

  if (v3)
  {

    v4 = [v3 music];
    if (v4 && (v5 = v4, v6 = [v4 userProfile], v5, v6))
    {
      v7 = [v6 collaborationAllowed];

      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 240);
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 336);
    v13 = *(v0 + 152);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = v13;
    sub_100030444(v11, v10);
    v17 = v12;

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v16;
    *(v19 + 40) = v11;
    *(v19 + 48) = v10;
    *(v19 + 56) = v17;
    *(v19 + 64) = v37;
    *(v19 + 72) = v14;
    *(v19 + 80) = v38;
    sub_1001F4CB8(0, 0, v9, &unk_100EE09E8, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = Logger.sharePlayTogether.unsafeMutableAddressor();
    *(v0 + 280) = v25;
    v26 = *(v24 + 16);
    *(v0 + 288) = v26;
    *(v0 + 296) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Couldn't get activeUserState, reloading", v29, 2u);
    }

    v30 = *(v0 + 232);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);

    v33 = *(v32 + 8);
    *(v0 + 304) = v33;
    v33(v30, v31);
    v34 = [v1 shared];
    *(v0 + 312) = v34;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10074A64C;
    v35 = swift_continuation_init();
    *(v0 + 136) = sub_10010FC20(&qword_10118EAE8, &qword_100ECAF38);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100407FE0;
    *(v0 + 104) = &unk_1010BDB10;
    *(v0 + 112) = v35;
    [v34 refreshUserStatesWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16, v36);
  }
}

uint64_t sub_10074A64C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_10074AC88;
  }

  else
  {
    v5 = sub_10074A77C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10074A77C()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    (*(v0 + 288))(*(v0 + 224), *(v0 + 280), *(v0 + 200));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Got activeUserState, retrying", v5, 2u);
    }

    v6 = *(v0 + 304);
    v7 = *(v0 + 224);
    v8 = *(v0 + 200);

    v6(v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 328) = v9;
    *v9 = v0;
    v9[1] = sub_10074AADC;
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);

    return sub_10074A0BC(v12, v10, 0, v11, 0, 0);
  }

  else
  {

    (*(v0 + 288))(*(v0 + 216), *(v0 + 280), *(v0 + 200));
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to refresh activeUserState, returning", v16, 2u);
    }

    v17 = *(v0 + 304);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);
    v21 = *(v0 + 160);

    v17(v19, v20);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    v23 = v21;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v23;
    sub_1001F4CB8(0, 0, v18, &unk_100EE09D8, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10074AADC()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_10074ABFC, v3, v2);
}

uint64_t sub_10074ABFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074AC88()
{
  v1 = *(v0 + 312);

  swift_willThrow();

  (*(v0 + 288))(*(v0 + 216), *(v0 + 280), *(v0 + 200));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh activeUserState, returning", v4, 2u);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 160);

  v5(v7, v8);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = v9;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F4CB8(0, 0, v6, &unk_100EE09D8, v13);

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_10074AE98()
{
  result = qword_1011A0E18;
  if (!qword_1011A0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0E18);
  }

  return result;
}

unint64_t *sub_10074AEEC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_10074AF18(uint64_t a1)
{
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007630D8(v1, v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v12;
      Hasher._combine(_:)(5uLL);
      Hasher._combine(_:)(v16);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = 4;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = *v12;
    Hasher._combine(_:)(2uLL);
    v14 = v15;
LABEL_9:
    Hasher._combine(_:)(v14);
    return;
  }

  sub_100763140(v12, v10, type metadata accessor for SharePlayTogetherSession.Participant);
  Hasher._combine(_:)(3uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v10[32]);
  sub_1000089F8(&v10[*(v8 + 32)], v3, &qword_101186E00, &qword_100EC31E0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100761B84(v10, type metadata accessor for SharePlayTogetherSession.Participant);
    sub_1000095E8(v3, &qword_101186E00, &qword_100EC31E0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    SocialProfile.id.getter();
    String.hash(into:)();

    (*(v5 + 8))(v7, v4);
    sub_100761B84(v10, type metadata accessor for SharePlayTogetherSession.Participant);
  }
}

Swift::Int sub_10074B288()
{
  Hasher.init(_seed:)();
  sub_10074AF18(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10074B2CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10074AF18(v2);
  return Hasher._finalize()();
}

id sub_10074B30C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
  v7 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion] = 0;
  v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce] = 0;
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

id sub_10074B480()
{
  v1 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_10074B4F0(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10074B4F0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v10[4] = sub_1007631D8;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1005A63A8;
  v10[3] = &unk_1010BD868;
  v6 = _Block_copy(v10);

  v7 = [v5 initWithSectionProvider:v6];
  _Block_release(v6);

  v8 = [objc_allocWithZone(UICollectionView) initWithFrame:v7 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  return v8;
}

void *sub_10074B64C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v46 = a1;
  v5 = sub_10010FC20(&qword_1011A0F90, &unk_100EE0750);
  v45 = *(v5 - 1);
  __chkstk_darwin();
  v7 = &v44 - v6;
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin();
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [v17 traitCollection];
    v19 = [v18 userInterfaceIdiom];

    v20 = &enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    if (v19 != 3)
    {
      v20 = &enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:);
    }

    (*(v9 + 104))(v11, *v20, v8);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v21 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    if (qword_10117FCA8 != -1)
    {
      swift_once();
    }

    v22 = *&qword_101219510 + 20.0;
    if (qword_10117FCB0 != -1)
    {
      swift_once();
    }

    v23 = v22 + *&qword_101219518;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 2) = v24;
    v25[3] = 0.0;
    v25[4] = v23;
    v25[5] = 0.0;
    v25[6] = 0.0;
    *(v25 + 7) = a4;
    v26 = v17;
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
    v27 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    v28 = [v26 traitCollection];

    v29 = [v28 userInterfaceIdiom];
    if (v29 != 3)
    {
      [v27 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      v32 = v47;
LABEL_20:

      (*(v48 + 8))(v15, v32);
      return v27;
    }

    v30 = *&v26[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
    if (v30)
    {
      v31 = v30;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v45 + 8))(v7, v5);
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v32 + 16) > v46)
      {
        v33 = v32 + 16 * v46;
        v35 = *(v33 + 32);
        v34 = *(v33 + 40);

        if (v35 == 0x7069636974726170 && v34 == 0xEC00000073746E61)
        {

          v32 = v47;
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v32 = v47;
          if ((v36 & 1) == 0)
          {
LABEL_19:
            [v27 contentInsets];
            [v27 setContentInsets:0.0];
            goto LABEL_20;
          }
        }

        v37 = objc_opt_self();
        v38 = [v37 fractionalWidthDimension:1.0];
        v39 = [v37 estimatedDimension:32.0];
        v25 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

        v5 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:UICollectionElementKindSectionHeader alignment:1];
        v40 = [v27 boundarySupplementaryItems];
        sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = v41;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v27 setBoundarySupplementaryItems:isa];

          goto LABEL_19;
        }

LABEL_23:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10074BDC0@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin();
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v66 - v12;
  v69 = sub_10010FC20(&qword_1011A0FA8, &qword_100EE0760);
  __chkstk_darwin();
  v71 = &v66 - v14;
  sub_10010FC20(&unk_1011A0FB0, &unk_100EE0768);
  __chkstk_darwin();
  v68 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v16;
  __chkstk_darwin();
  v77 = &v66 - v17;
  v75 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v70 = *(v75 - 8);
  __chkstk_darwin();
  v66 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v66 - v19;
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v66 - v22;
  v24 = type metadata accessor for UIListSeparatorConfiguration();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v79 = v25;
  v29 = *(v25 + 16);
  if (!Strong)
  {
    return v29(a4, a2, v24);
  }

  v30 = Strong;
  v78 = a4;
  result = v29(v27, a2, v24);
  v32 = *&v30[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v32)
  {
    v33 = v27;
    v34 = v32;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v35 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v35 - 8) + 48))(v23, 1, v35) == 1)
    {
LABEL_19:

LABEL_20:
      v51 = v78;
      v52 = v79;
      sub_1000095E8(v23, &qword_1011A0F78, &qword_100EE0740);
      return (*(v52 + 32))(v51, v33, v24);
    }

    sub_1000089F8(v23, v21, &qword_1011A0F78, &qword_100EE0740);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 3)
      {
        UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
        v37 = [v30 traitCollection];
        v38 = [v37 userInterfaceIdiom];

        if (v38 != 3)
        {
          if (*(*&v30[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session] + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost))
          {
            v50 = &enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
          }

          else
          {
            v50 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
          }

          (*(v73 + 104))(v67, *v50, v74);
          goto LABEL_18;
        }

LABEL_8:
        (*(v73 + 104))(v13, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v74);
LABEL_18:
        UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (!EnumCaseMultiPayload)
    {
LABEL_11:
      UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
      goto LABEL_19;
    }

    v74 = v24;
    v39 = v76;
    sub_100763140(v21, v76, type metadata accessor for SharePlayTogetherSession.Participant);
    v40 = v77;
    sub_1007630D8(v39, v77, type metadata accessor for SharePlayTogetherSession.Participant);
    v41 = v70;
    v42 = 1;
    v73 = *(v70 + 56);
    (v73)(v40, 0, 1, v75);
    v43 = *&v30[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
    v44 = *((swift_isaMask & *v43) + 0x180);
    v45 = v43;
    v46 = v44();

    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = v72;
      sub_1007630D8(v46 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * (v47 - 1), v72, type metadata accessor for SharePlayTogetherSession.Participant);
      v42 = 0;
      v49 = v71;
    }

    else
    {
      v49 = v71;
      v48 = v72;
    }

    v53 = v42;
    v54 = v75;
    (v73)(v48, v53, 1, v75);
    v55 = *(v69 + 48);
    sub_1000089F8(v77, v49, &unk_1011A0FB0, &unk_100EE0768);
    v73 = v55;
    sub_1000089F8(v48, v49 + v55, &unk_1011A0FB0, &unk_100EE0768);
    v56 = *(v41 + 48);
    v57 = v56(v49, 1, v54) == 1;
    v58 = v48;
    v24 = v74;
    v59 = v49;
    if (v57)
    {
      sub_1000095E8(v58, &unk_1011A0FB0, &unk_100EE0768);
      sub_1000095E8(v77, &unk_1011A0FB0, &unk_100EE0768);
      if (v56(v49 + v73, 1, v54) == 1)
      {
        sub_1000095E8(v49, &unk_1011A0FB0, &unk_100EE0768);
LABEL_30:
        UIListSeparatorConfiguration.bottomSeparatorInsets.setter();

        sub_100761B84(v76, type metadata accessor for SharePlayTogetherSession.Participant);
        goto LABEL_20;
      }
    }

    else
    {
      v60 = v49;
      v61 = v68;
      sub_1000089F8(v60, v68, &unk_1011A0FB0, &unk_100EE0768);
      v62 = v73;
      v63 = v56(v59 + v73, 1, v54);
      if (v63 != 1)
      {
        v64 = v61;
        v65 = v66;
        sub_100763140(v59 + v62, v66, type metadata accessor for SharePlayTogetherSession.Participant);
        static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(v64, v65);
        sub_100761B84(v65, type metadata accessor for SharePlayTogetherSession.Participant);
        sub_1000095E8(v72, &unk_1011A0FB0, &unk_100EE0768);
        sub_1000095E8(v77, &unk_1011A0FB0, &unk_100EE0768);
        sub_100761B84(v64, type metadata accessor for SharePlayTogetherSession.Participant);
        sub_1000095E8(v59, &unk_1011A0FB0, &unk_100EE0768);
        goto LABEL_30;
      }

      sub_1000095E8(v72, &unk_1011A0FB0, &unk_100EE0768);
      sub_1000095E8(v77, &unk_1011A0FB0, &unk_100EE0768);
      sub_100761B84(v61, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    sub_1000095E8(v59, &qword_1011A0FA8, &qword_100EE0760);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

char *sub_10074C798(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v3 = aBlock - v2;
  v4 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = aBlock - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  v11 = *&result[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v11)
  {
    v12 = v11;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v13 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
    {

      sub_1000095E8(v3, &qword_1011A0F78, &qword_100EE0740);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100763140(v3, v8, type metadata accessor for SharePlayTogetherSession.Participant);
      v14 = *&v10[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
      v15 = *((swift_isaMask & *v14) + 0x118);
      v16 = v14;
      v17 = v15();

      if ((v17 & 1) != 0 && (v8[32] & 1) == 0 && v8[33] == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1007630D8(v8, v6, type metadata accessor for SharePlayTogetherSession.Participant);
        v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        sub_100763140(v6, v20 + v19, type metadata accessor for SharePlayTogetherSession.Participant);

        v21 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_1007631FC;
        aBlock[5] = v20;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001D72A4;
        aBlock[3] = &unk_1010BD8E0;
        v22 = _Block_copy(aBlock);
        v23 = [objc_opt_self() contextualActionWithStyle:1 title:v21 handler:v22];

        _Block_release(v22);

        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100EBC6C0;
        *(v24 + 32) = v23;
        sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
        v25 = v23;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v27 = [objc_opt_self() configurationWithActions:isa];

        sub_100761B84(v8, type metadata accessor for SharePlayTogetherSession.Participant);
        return v27;
      }

      sub_100761B84(v8, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    else
    {

      sub_100761B84(v3, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    }

LABEL_12:
    sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
    v28 = Array._bridgeToObjectiveC()().super.isa;
    v27 = [objc_opt_self() configurationWithActions:v28];

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074CDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);

    (*((swift_isaMask & *v10) + 0x338))(a6);
  }

  return a3(1);
}

void sub_10074CEA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v76 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v77 = *(v76 - 8);
  v79 = *(v77 + 64);
  __chkstk_darwin();
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v70 - v3;
  v4 = sub_10010FC20(&qword_1011A0FD0, &qword_100EE0788);
  v94 = *(v4 - 8);
  v95 = v4;
  v75 = *(v94 + 64);
  __chkstk_darwin();
  v89 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v70 - v6;
  v7 = sub_10010FC20(&qword_1011A0FD8, &qword_100EE0790);
  v91 = *(v7 - 8);
  v92 = v7;
  v74 = *(v91 + 64);
  __chkstk_darwin();
  v87 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v70 - v9;
  v81 = sub_10010FC20(&unk_1011A0FE0, &qword_100EE0798);
  v83 = *(v81 - 8);
  v10 = v83[8];
  __chkstk_darwin();
  v88 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v70 - v11;
  __chkstk_darwin();
  v85 = &v70 - v12;
  __chkstk_darwin();
  v82 = &v70 - v13;
  __chkstk_darwin();
  v15 = &v70 - v14;
  __chkstk_darwin();
  v17 = &v70 - v16;
  v18 = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v97.receiver = v0;
  v97.super_class = v18;
  objc_msgSendSuper2(&v97, "viewDidLoad");
  sub_100750D7C();
  v19 = *&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
  v20 = *((swift_isaMask & *v19) + 0x368);
  v21 = v19;
  v22 = v20();

  v23 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion];
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion] = v22;

  v24 = sub_10074B480();
  [v24 setDelegate:v1];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SharePlayTogetherSession.Participant(0);
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v70 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView;
  v73 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v83;
  v27 = v83[2];
  v72 = v17;
  v28 = v81;
  v27(v85, v17, v81);
  v29 = v91;
  (*(v91 + 16))(v87, v84, v92);
  v30 = v94;
  (*(v94 + 16))(v89, v93, v95);
  v71 = v15;
  v31 = v15;
  v32 = v28;
  v27(v86, v31, v28);
  v27(v88, v82, v28);
  v33 = *(v26 + 80);
  v34 = v26;
  v35 = (v33 + 24) & ~v33;
  v36 = (v10 + *(v29 + 80) + v35) & ~*(v29 + 80);
  v37 = (v74 + *(v30 + 80) + v36) & ~*(v30 + 80);
  v38 = (v75 + v33 + v37) & ~v33;
  v39 = (v10 + v33 + v38) & ~v33;
  v40 = swift_allocObject();
  *(v40 + 16) = v25;
  v41 = v34[4];
  v42 = v40 + v35;
  v43 = v76;
  v41(v42, v85, v32);
  v44 = v40 + v36;
  v45 = v77;
  (*(v91 + 32))(v44, v87, v92);
  (*(v94 + 32))(v40 + v37, v89, v95);
  v41(v40 + v38, v86, v32);
  v46 = v90;
  v41(v40 + v39, v88, v32);
  v47 = objc_allocWithZone(sub_10010FC20(&qword_1011A0FF0, qword_100EE07A0));
  v48 = v73;
  v49 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v50 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource] = v49;
  v51 = v49;

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v78;
  (*(v45 + 16))(v78, v46, v43);
  v54 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v55 = (v79 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  (*(v45 + 32))(v56 + v54, v53, v43);
  *(v56 + v55) = ObjectType;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v57 = [v1 view];
  if (v57)
  {
    v58 = v57;
    v59 = v70;
    [v57 addSubview:*&v1[v70]];

    type metadata accessor for Whitetail.Binding();
    v60 = *&v1[v59];
    KeyPath = swift_getKeyPath();
    v96[3] = sub_10010FC20(&unk_1011A0FF8, &unk_100EE07E0);
    v96[4] = &protocol witness table for KeyValueObservationTrigger<A, B>;
    v96[0] = v60;
    v96[1] = KeyPath;
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v60;
    *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v96, 1, sub_100763550, v62);

    v64 = MRGroupSessionNearbyContactDiscoveryPreferenceDidChangeNotification;
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v66 = v64;

    v67 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v66, 0, 1, 1, sub_1007631B0, v65);
    (*(v45 + 8))(v90, v43);
    v68 = v83[1];
    v69 = v81;
    v68(v82, v81);
    v68(v71, v69);
    (*(v94 + 8))(v93, v95);
    (*(v91 + 8))(v84, v92);
    v68(v72, v69);

    *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver] = v67;
  }

  else
  {
    __break(1u);
  }
}

void sub_10074DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_1011A10A8, &qword_100EE08D0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v17 - v6;
  v8 = sub_10010FC20(&qword_1011A10B0, &qword_100EE08D8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong traitCollection];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 3)
    {
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      __chkstk_darwin();
      v17[-4] = v13;
      v17[-3] = sub_100763930;
      v17[-2] = v16;
      sub_1007639B8();

      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.horizontal.getter();
      v18 = v8;
      v19 = sub_100020674(&qword_1011A10E8, &qword_1011A10B0, &qword_100EE08D8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v17);
      UIHostingConfiguration.margins(_:_:)();

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      sub_10010FC20(&qword_1011A10B8, &qword_100EE08E0);
      sub_100763878();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v18 = v4;
      v19 = sub_100020674(&qword_1011A10D8, &qword_1011A10A8, &qword_100EE08D0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v17);
      UIHostingConfiguration.margins(_:_:)();
      (*(v5 + 8))(v7, v4);
    }

    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10074DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for Locale();
  v4[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10074DEF8, v6, v5);
}

uint64_t sub_10074DEF8()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x258);
  v4 = v2;
  v3();
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  if (v7)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    sub_10002BC44(v5, v6);
    v10 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
    v12 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)((v0 + 16));
    v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v12];

    [v13 setModalPresentationStyle:5];
    [v9 presentViewController:v13 animated:0 completion:0];

    sub_1000095E8(v0 + 56, &unk_1011A0F80, &qword_100EE0748);
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_10074E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_1011A1090, &qword_100EE08C8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong traitCollection];
    v11 = [v10 userInterfaceIdiom];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __chkstk_darwin();
    v13[-4] = v9;
    LOBYTE(v13[-3]) = v11 == 3;
    v13[-2] = sub_100763838;
    v13[-1] = v12;
    type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
    sub_100763090(&qword_1011A1098, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView, &unk_100EE0B24);

    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&qword_1011A10A0, &qword_1011A1090, &qword_100EE08C8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();

    (*(v5 + 8))(v7, v4);

    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074E400(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v3 = String._bridgeToObjectiveC()();

    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = v2;
    v8 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100763870;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010BDA20;
    v9 = _Block_copy(aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:0 handler:v9];
    _Block_release(v9);

    [v5 addAction:v11];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v10 actionWithTitle:v12 style:1 handler:0];

    [v5 addAction:v13];
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_10074E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x340);
  v4 = v2;
  v3();
}

void sub_10074E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A1078, &qword_100EE08C0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong traitCollection];
    [v11 userInterfaceIdiom];

    __chkstk_darwin();
    v13[-4] = v10;
    v13[-3] = a3;
    LOBYTE(v13[-2]) = v12;
    type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
    sub_100763090(&qword_1011A1080, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView, &unk_100EE0B74);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&qword_1011A1088, &qword_1011A1078, &qword_100EE08C0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_1011A1048, &qword_100EE0870);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong traitCollection];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 3)
    {
      __chkstk_darwin();
      v13[-2] = v9;
      sub_100763704();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v14 = v4;
      v15 = sub_100020674(&qword_1011A1070, &qword_1011A1048, &qword_100EE0870, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v13);
      UIHostingConfiguration.margins(_:_:)();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      __chkstk_darwin();
      v13[-4] = v9;
      v13[-3] = sub_100763688;
      v13[-2] = v12;
      v14 = sub_10010FC20(&qword_1011A1050, &qword_100EE0878);
      v15 = sub_100020674(&qword_1011A1058, &qword_1011A1050, &qword_100EE0878, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v13);
      type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
      sub_100763090(&qword_1011A1060, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell, &unk_100EE0C14);

      UIHostingConfiguration<>.init(content:)();
    }

    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_10074EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1001F4CB8(0, 0, v5, a3, v11);
  }
}

uint64_t sub_10074EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for Locale();
  v4[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10074F0A0, v6, v5);
}

uint64_t sub_10074F0A0()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v3 = *((swift_isaMask & *v2) + 0x258);
  v4 = v2;
  v3();
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  if (v7)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    sub_10002BC44(v5, v6);
    v10 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
    v12 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)((v0 + 16));
    [v12 setModalPresentationStyle:5];
    [v9 presentViewController:v12 animated:0 completion:0];

    sub_1000095E8(v0 + 56, &unk_1011A0F80, &qword_100EE0748);
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_10074F2EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [a1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v11) = UICellConfigurationState.isFocused.getter();
    (*(v6 + 8))(v8, v5);
    __chkstk_darwin();
    LOBYTE(v12[-2]) = v11 & 1;
    v12[3] = sub_10010FC20(&qword_1011A1008, &qword_100EE07F0);
    v12[4] = sub_100020674(&qword_1011A1010, &qword_1011A1008, &qword_100EE07F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v12);
    sub_10010FC20(&qword_1011A1018, &qword_100EE07F8);
    sub_100764A9C(&qword_1011A1020, &qword_1011A1018, &qword_100EE07F8, sub_100763574);
    UIHostingConfiguration<>.init(content:)();
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10074F51C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.header()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v6[3] = v0;
  v6[4] = &protocol witness table for UIListContentConfiguration;
  v4 = sub_10001C8B8(v6);
  (*(v1 + 16))(v4, v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v1 + 8))(v3, v0);
}

id sub_10074F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a8;
  v72 = a7;
  v69 = a6;
  v70 = a5;
  v79 = a2;
  v80 = a1;
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A0FB0, &unk_100EE0768);
  __chkstk_darwin();
  v68 = &v63 - v13;
  v66 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v73 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v67 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v63 - v16;
  __chkstk_darwin();
  v78 = &v63 - v18;
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v20 = &v63 - v19;
  v21 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for UIBackgroundConfiguration();
  v81 = *(v25 - 8);
  v82 = v25;
  __chkstk_darwin();
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v76 = v11;
  v64 = v10;
  v75 = Strong;
  v29 = [v75 traitCollection];
  v74 = [v29 userInterfaceIdiom];

  static UIBackgroundConfiguration.clear()();
  v30 = [objc_allocWithZone(UIView) init];
  v31 = [objc_opt_self() blackColor];
  v32 = a3;
  v33 = [v31 colorWithAlphaComponent:0.1];

  [v30 setBackgroundColor:v33];
  v34 = v32;
  [v30 _setDrawsAsBackdropOverlayWithBlendMode:1];
  v35 = v30;
  UIBackgroundConfiguration.customView.setter();
  sub_1007630D8(v32, v24, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v27;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v51 = v73;
      sub_100763140(v24, v73, type metadata accessor for SharePlayTogetherSession.Participant);
      v52 = v68;
      sub_1007630D8(v51, v68, type metadata accessor for SharePlayTogetherSession.Participant);
      (*(v65 + 56))(v52, 0, 1, v66);
      sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
      v47 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v52, &unk_1011A0FB0, &unk_100EE0768);
      v42 = v74;
      v40 = v76;
      v50 = v81;
      v49 = v82;
      v38 = v35;
      if (v74 == 3)
      {
        v53 = v47;
        v54 = v67;
        static UIBackgroundConfiguration.clear()();
      }

      else
      {
        v54 = v67;
        (*(v81 + 16))(v67, v37, v82);
        v56 = v47;
      }

      v39 = v75;
      (*(v50 + 56))(v54, 0, 1, v49);
      UICollectionViewCell.backgroundConfiguration.setter();

      sub_100761B84(v73, type metadata accessor for SharePlayTogetherSession.Participant);
    }

    else
    {
      v83 = *v24;
      v84 = 0;
      sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
      v41 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      v47 = v41;
      v42 = v74;
      v40 = v76;
      v50 = v81;
      v49 = v82;
      v38 = v35;
      if (v74 == 3)
      {
        v43 = v41;
        static UIBackgroundConfiguration.clear()();
      }

      else
      {
        (*(v81 + 16))(v17, v37, v82);
        v55 = v47;
      }

      (*(v50 + 56))(v17, 0, 1, v49);
      UICollectionViewCell.backgroundConfiguration.setter();

      v39 = v75;
    }
  }

  else
  {
    v38 = v35;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1007630D8(v34, v20, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      (*(v22 + 56))(v20, 0, 1, v21);
      sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
      v44 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v20, &qword_1011A0F78, &qword_100EE0740);
      v47 = v44;
      v45 = v78;
      static UIBackgroundConfiguration.clear()();
      v50 = v81;
      v49 = v82;
      (*(v81 + 56))(v45, 0, 1, v82);
      UICollectionViewCell.backgroundConfiguration.setter();

      v39 = v75;
      v40 = v76;
    }

    else
    {
      v39 = v75;
      v40 = v76;
      sub_1007630D8(v34, v20, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      (*(v22 + 56))(v20, 0, 1, v21);
      sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
      v46 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v20, &qword_1011A0F78, &qword_100EE0740);
      v47 = v46;
      v48 = v78;
      static UIBackgroundConfiguration.clear()();
      v50 = v81;
      v49 = v82;
      (*(v81 + 56))(v48, 0, 1, v82);
      UICollectionViewCell.backgroundConfiguration.setter();
    }

    v42 = v74;
  }

  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v42 == 3)
  {

    v58 = [v39 traitCollection];
    v59 = v77;
    UICellConfigurationState.init(traitCollection:)();
    sub_1007501D0(v47, v34, v59, v57);

    (*(v40 + 8))(v59, v64);
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = sub_100763558;
    v61[4] = v57;

    UICollectionViewCell.configurationUpdateHandler.setter();

    (*(v50 + 8))(v37, v49);
  }

  else
  {

    (*(v50 + 8))(v37, v49);
  }

  return v47;
}