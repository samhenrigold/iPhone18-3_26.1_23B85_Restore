id sub_1000D53EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton;
  *&v1[v4] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_stackView;
  *&v1[v6] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_1000D47E0();
  }

  return v8;
}

unint64_t sub_1000D55A4(double a1)
{
  result = qword_100147EE8;
  if (!qword_100147EE8)
  {
    type metadata accessor for AttributedString.FormattingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147EE8);
  }

  return result;
}

unint64_t sub_1000D55FC()
{
  result = qword_100147EF8;
  if (!qword_100147EF8)
  {
    sub_100004370(&qword_100147EF0, &qword_1000FD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147EF8);
  }

  return result;
}

unint64_t sub_1000D5660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F20, &qword_1000FDC80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000B8EA0(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100146E70, &unk_1000FC200);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007FDC(v4, &v13, &qword_100144580, &qword_1000F8648);
      v5 = v13;
      v6 = v14;
      result = sub_1000B8EA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000B2D80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D58A4(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100144958, &qword_1000F8A48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002D44(&qword_100144960, &unk_1000F8A50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007FDC(v9, v5, &qword_100144958, &qword_1000F8A48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000B8EA0(*v5, v12);
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
      v18 = type metadata accessor for Playlist();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F28, &qword_1000FD978);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000B8EA0(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F18, &qword_1000FD970);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007FDC(v4, &v11, &qword_100147F10, &unk_1000FD960);
      v5 = v11;
      result = sub_1000B974C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000B2D80(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000D5CBC(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100147F10, &unk_1000FD960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5D50()
{
  result = static Font.title3.getter();
  qword_100147F30 = result;
  return result;
}

uint64_t sub_1000D5D90()
{
  result = static Font.title.getter();
  qword_100147F40 = result;
  return result;
}

uint64_t sub_1000D5DB0()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = Color.init(uiColor:)();
  qword_100147F48 = result;
  return result;
}

__n128 sub_1000D5DF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_100147F50, &qword_1000FDA18);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4014000000000000;
  v5[16] = 0;
  v6 = sub_100002D44(&qword_100147F58, &qword_1000FDA20);
  sub_1000D5F34(v1, &v5[*(v6 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000D680C(v5, a1);
  v7 = a1 + *(sub_100002D44(&qword_100147F60, &qword_1000FDA28) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_1000D5F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v94 = type metadata accessor for Text.Suffix();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100002D44(&qword_100147F68, &qword_1000FDA30);
  v4 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v83 - v5;
  v6 = sub_100002D44(&qword_100147F70, &qword_1000FDA38);
  __chkstk_darwin(v6);
  v86 = &v83 - v7;
  v8 = sub_100002D44(&qword_100147F78, &qword_1000FDA40);
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v83 - v11;
  v12 = *(a1 + 8);
  v91 = *a1;
  v92 = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  LODWORD(v85) = *(a1 + 32);
  v105 = v13;
  v106 = v14;
  v18 = sub_10000B730(v15, v16, v17);

  v101 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  if (qword_100141D50 != -1)
  {
    swift_once();
  }

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000BFBC(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v88 = v24;
  v105 = v24;
  v106 = v26;
  v87 = v26;
  v32 = v28;
  v107 = v28 & 1;
  v89 = v30;
  v108 = v30;
  v109 = KeyPath;
  v110 = 3;
  v111 = 0;
  if (v85)
  {
    v83 = KeyPath;
    v84 = v6;
    v85 = v4;
    v103 = 3028656112;
    v104 = 0xA400000000000000;
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    if (qword_100141D58 != -1)
    {
      swift_once();
    }

    v38 = Text.foregroundColor(_:)();
    v40 = v39;
    v42 = v41;
    sub_10000BFBC(v33, v35, v37 & 1);

    static Font.title2.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_10000BFBC(v38, v40, v42 & 1);

    v48 = v90;
    static Text.Suffix.alwaysVisible(_:)();
    v49 = v45;
    v50 = v48;
    sub_10000BFBC(v43, v49, v47 & 1);

    v51 = v96;
    v4 = v85;
    v6 = v84;
  }

  else
  {
    v50 = v90;
    static Text.Suffix.none.getter();
    v51 = v96;
  }

  sub_100002D44(&qword_100142990, &qword_1000F6FD0);
  sub_1000149E0();
  v52 = v95;
  View.textSuffix(_:)();
  (*(v93 + 8))(v50, v94);
  sub_10000BFBC(v88, v87, v32 & 1);

  v53 = v86;
  v54 = &v86[*(v6 + 36)];
  v55 = *(sub_100002D44(&qword_100147F80, &qword_1000FDA78) + 28);
  v56 = enum case for Image.Scale.small(_:);
  v57 = type metadata accessor for Image.Scale();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = swift_getKeyPath();
  (*(v4 + 32))(v53, v52, v51);
  static Font.Weight.bold.getter();
  sub_1000D6974();
  View.fontWeight(_:)();
  sub_1000D6A68(v53);
  v105 = v91;
  v106 = v92;

  v58 = Text.init<A>(_:)();
  v60 = v59;
  v62 = v61;
  if (qword_100141D40 != -1)
  {
    swift_once();
  }

  v63 = Text.font(_:)();
  v65 = v64;
  v67 = v66;
  sub_10000BFBC(v58, v60, v62 & 1);

  if (qword_100141D48 != -1)
  {
    swift_once();
  }

  v68 = Text.fontWeight(_:)();
  v70 = v69;
  LODWORD(v96) = v71;
  v101 = v72;
  sub_10000BFBC(v63, v65, v67 & 1);

  v73 = swift_getKeyPath();
  v75 = v97;
  v74 = v98;
  v76 = *(v98 + 16);
  v77 = v102;
  v78 = v99;
  v76(v97, v102, v99);
  v79 = v100;
  v76(v100, v75, v78);
  v80 = &v79[*(sub_100002D44(&qword_100147F98, &unk_1000FDAB0) + 48)];
  *v80 = v68;
  *(v80 + 1) = v70;
  LOBYTE(v79) = v96 & 1;
  v80[16] = v96 & 1;
  *(v80 + 3) = v101;
  *(v80 + 4) = v73;
  *(v80 + 5) = 2;
  v80[48] = 0;
  sub_100003B04(v68, v70, v79);
  v81 = *(v74 + 8);

  v81(v77, v78);
  sub_10000BFBC(v68, v70, v79);

  return (v81)(v75, v78);
}

uint64_t sub_1000D680C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100147F50, &qword_1000FDA18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D68A8(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_1000D6974()
{
  result = qword_100147F88;
  if (!qword_100147F88)
  {
    sub_100004370(&qword_100147F70, &qword_1000FDA38);
    sub_100004370(&qword_100142990, &qword_1000F6FD0);
    sub_1000149E0();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100147F90, &qword_100147F80, &qword_1000FDA78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147F88);
  }

  return result;
}

uint64_t sub_1000D6A68(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100147F70, &qword_1000FDA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D6AD4()
{
  result = qword_100147FA0;
  if (!qword_100147FA0)
  {
    sub_100004370(&qword_100147F60, &qword_1000FDA28);
    sub_100004610(qword_100147FA8, &qword_100147F50, &qword_1000FDA18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147FA0);
  }

  return result;
}

uint64_t sub_1000D6B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000D6BC8(uint64_t a1, int a2)
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

uint64_t sub_1000D6BE8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000D6C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a7;
  v26 = a9;
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v13 = type metadata accessor for CoordinateSpace();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SizeModifier(0, a6, a8, v17);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v24 - v21;
  (*(v14 + 16))(v16, a2, v13, v20);
  sub_100082968(v24, v16, v25, a4, a6, a8, v22);

  View.modifier<A>(_:)();
  return (*(v19 + 8))(v22, v18);
}

uint64_t getEnumTagSinglePayload for MusicRecognitionLifeCycle.OriginType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicRecognitionLifeCycle.OriginType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000D6F50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 50;
  v4 = 0xE100000000000000;
  v5 = 57;
  if (a1 != 5)
  {
    v5 = 12337;
    v4 = 0xE200000000000000;
  }

  v6 = 55;
  if (a1 != 3)
  {
    v6 = 56;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE100000000000000;
  }

  v7 = 51;
  if (a1 != 1)
  {
    v7 = 53;
  }

  if (a1)
  {
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    v10 = 0xE100000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 51)
        {
          goto LABEL_38;
        }
      }

      else if (v8 != 53)
      {
        goto LABEL_38;
      }
    }

    else if (v8 != 50)
    {
      goto LABEL_38;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xE100000000000000;
      if (v8 != 57)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 12337)
      {
LABEL_38:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_39;
      }
    }
  }

  else
  {
    v10 = 0xE100000000000000;
    if (a2 == 3)
    {
      if (v8 != 55)
      {
        goto LABEL_38;
      }
    }

    else if (v8 != 56)
    {
      goto LABEL_38;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

Swift::Int sub_1000D70D8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D71A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_100148030);
  sub_10000BEC4(v0, qword_100148030);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D7220(char a1)
{
  result = 0x6572616873;
  switch(a1)
  {
    case 1:
      result = 0x6973754D6E65706FLL;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x7265764F6E65706FLL;
      break;
    case 4:
      result = 0x726968546E65706FLL;
      break;
    case 5:
      result = 0x7A6168536E65706FLL;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x62694C6F54646461;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x73616C436E65706FLL;
      break;
    case 10:
      result = 0x616C506F54646461;
      break;
    case 11:
      v3 = 1852141679;
      goto LABEL_6;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6C65636E6163;
      break;
    case 14:
      result = 0x7972746572;
      break;
    case 15:
      result = 0x7473694877656976;
      break;
    case 16:
      v3 = 2003134838;
LABEL_6:
      result = v3 | 0x6374614D00000000;
      break;
    case 17:
      result = 0x74726F53706174;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D7488(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 49;
    v7 = 52;
    v8 = 53;
    if (a1 != 3)
    {
      v8 = 54;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 51;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 12337;
    v2 = 12849;
    if (a1 != 9)
    {
      v2 = 13105;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 55;
    v4 = 56;
    if (a1 != 6)
    {
      v4 = 57;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000D75C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D856C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000D75F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7220(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D7634(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000D76E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D7764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_1000D77D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D783C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D85C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D786C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7488(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148048;
  if (!qword_100148048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148048);
  }

  return result;
}

uint64_t sub_1000D7908(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000D79C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D882C(*a1);
  *a2 = result;
  return result;
}

void sub_1000D79F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 50;
  v5 = 0xE100000000000000;
  v6 = 57;
  if (v2 != 5)
  {
    v6 = 12337;
    v5 = 0xE200000000000000;
  }

  v7 = 55;
  if (v2 != 3)
  {
    v7 = 56;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE100000000000000;
  }

  v8 = 51;
  if (v2 != 1)
  {
    v8 = 53;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t *sub_1000D7A80(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1000D7BE0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000D7CDC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1000D7BE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000D7D54(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000D7D54(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000D7CDC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1000D7BE0(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_1000D7D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100002D44(&qword_100147F20, &qword_1000FDC80);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1000D7FAC(char a1, unsigned __int8 a2, char a3)
{
  v6 = a2;
  sub_100002D44(&qword_100144F68, &qword_1000F93D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F6160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 48) = sub_1000D7220(a1);
  *(inited + 56) = v9;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v10;
  if (v6 == 11)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v11 = sub_1000D7488(a2);
  }

  *(inited + 80) = v11;
  *(inited + 88) = v12;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v13;
  if (a3 != 2)
  {
    if (a3)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a3)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = v15;
    String.append(_:)(*&v14);
  }

  *(inited + 112) = 0;
  *(inited + 120) = 0xE000000000000000;
  v17 = sub_1000D5660(inited);
  swift_setDeallocating();
  sub_100002D44(&unk_100144F70, &unk_1000F93E0);
  swift_arrayDestroy();
  v18 = sub_1000D7A80(v17);

  sub_100002D44(&qword_100148050, &qword_1000FDC78);
  result = static _DictionaryStorage.copy(original:)();
  v20 = result;
  v21 = 0;
  v39 = result;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v18[8];
  v25 = (v22 + 63) >> 6;
  v38 = result + 8;
  if (v24)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_21:
      v29 = v26 | (v21 << 6);
      v30 = (v18[6] + 16 * v29);
      v31 = *v30;
      v32 = v30[1];

      v33 = String._bridgeToObjectiveC()();

      v20 = v39;
      *(v38 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = (v39[6] + 16 * v29);
      *v34 = v31;
      v34[1] = v32;
      *(v39[7] + 8 * v29) = v33;
      v35 = v39[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v39[2] = v37;
      if (!v24)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        return v20;
      }

      v28 = v18[v21 + 8];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000D82A0(char a1, unsigned __int8 a2)
{
  sub_100002D44(&qword_100144F68, &qword_1000F93D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = 48;
  if (a1)
  {
    v6 = 49;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v6;
  v7 = 0xE100000000000000;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v8;
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 51;
      }

      else
      {
        v9 = 53;
      }
    }

    else
    {
      v9 = 50;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 57;
    }

    else
    {
      v7 = 0xE200000000000000;
      v9 = 12337;
    }
  }

  else if (a2 == 3)
  {
    v9 = 55;
  }

  else
  {
    v9 = 56;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v7;
  v10 = sub_1000D5660(inited);
  swift_setDeallocating();
  sub_100002D44(&unk_100144F70, &unk_1000F93E0);
  swift_arrayDestroy();
  v11 = sub_1000D7A80(v10);

  sub_100002D44(&qword_100148050, &qword_1000FDC78);
  result = static _DictionaryStorage.copy(original:)();
  v13 = result;
  v14 = 0;
  v32 = result;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v11[8];
  v18 = (v15 + 63) >> 6;
  v31 = result + 8;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_25:
      v22 = v19 | (v14 << 6);
      v23 = (v11[6] + 16 * v22);
      v24 = *v23;
      v25 = v23[1];

      v26 = String._bridgeToObjectiveC()();

      v13 = v32;
      *(v31 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = (v32[6] + 16 * v22);
      *v27 = v24;
      v27[1] = v25;
      *(v32[7] + 8 * v22) = v26;
      v28 = v32[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v32[2] = v30;
      if (!v17)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        return v13;
      }

      v21 = v11[v14 + 8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D856C(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000D85C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135178, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for MusicRecognitionLifeCycle.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicRecognitionLifeCycle.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D8770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148058;
  if (!qword_100148058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148058);
  }

  return result;
}

unint64_t sub_1000D87D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148060;
  if (!qword_100148060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148060);
  }

  return result;
}

unint64_t sub_1000D882C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001352A0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D8914@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel, &unk_1000FDE38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  return sub_100008790(v3 + v6, a3);
}

uint64_t sub_1000D89F0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel, &unk_1000FDE38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  return sub_100008790(v6 + v7, a4);
}

uint64_t sub_1000D8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100008790(a1, &v15 - v12);
  return sub_1000D8BC0(v13, a5, a6, a7);
}

uint64_t sub_1000D8BC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_100008790(v4 + v10, v9);
  LOBYTE(a2) = sub_1000D900C(v9, a1);
  sub_100007E14(v9, &unk_100144630, &qword_1000F5180);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel, &unk_1000FDE38);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_1000D92FC(a1, v4 + v10);
    swift_endAccess();
  }

  return sub_100007E14(a1, &unk_100144630, &qword_1000F5180);
}

uint64_t sub_1000D8DA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1000D92FC(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1000D8E08()
{
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL, &unk_100144630, &qword_1000F5180);
  v1 = OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SongArtworkViewModel(uint64_t a1)
{
  result = qword_1001480A8;
  if (!qword_1001480A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D8F40(uint64_t a1)
{
  sub_1000085D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D900C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002D44(&qword_100148140, &qword_1000FDE88);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_100008790(a1, &v21 - v12);
  sub_100008790(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100008790(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1000D93F4(&qword_100144DF0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100007E14(v13, &unk_100144630, &qword_1000F5180);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007E14(v13, &qword_100148140, &qword_1000FDE88);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007E14(v13, &unk_100144630, &qword_1000F5180);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000D92FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D93F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D94C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1000D9520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000D9580()
{
  v1 = *v0;
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v9 = v2;
  LOBYTE(v10) = v3 & 1;
  v11 = v4;
  v5 = objc_allocWithZone(sub_100002D44(&qword_100148148, &unk_1000FDFC8));
  v6 = UIHostingController.init(rootView:)();
  if (v1)
  {
    [v1 setPresentingViewController:{v6, v8, v9, v10, v11}];
  }

  return v6;
}

uint64_t sub_1000D9620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9714(a1, a2, a3);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000D9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9714(a1, a2, a3);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000D96E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D9714(a1, a2, a3);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000D9714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148150;
  if (!qword_100148150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148150);
  }

  return result;
}

uint64_t sub_1000D9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v32[1] = a4;
  v34 = a6;
  v9 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for ShazamUpsellOverlayModifier(0);
  __chkstk_darwin(v12);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v32 - v20;
  sub_100007FDC(a1, v11, &unk_100144630, &qword_1000F5180);
  sub_100089B20(v11, v14);
  v22 = v12[6];
  *(v14 + v22) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v23 = v12[7];
  *(v14 + v23) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  v24 = swift_storeEnumTagMultiPayload();
  v37 = 0x4051800000000000;
  sub_100080214(v24, v25, v26);
  ScaledMetric.init(wrappedValue:)();
  v27 = (v14 + v12[5]);
  *v27 = a2;
  v27[1] = a3;
  sub_10002F7D4(a2, a3);
  v28 = v33;
  View.modifier<A>(_:)();
  sub_1000DABE8(v14);
  v29 = sub_1000DBFE4(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier, &unk_1000FE080);
  v35 = v28;
  v36 = v29;
  swift_getWitnessTable();
  sub_1000B03E4();
  v30 = *(v16 + 8);
  v30(v18, v15);
  sub_1000B03E4();
  return (v30)(v21, v15);
}

double sub_1000D9AD8()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100144138, &unk_1000F7DC0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100002D44(&qword_1001420F8, &qword_1000F52A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = (&v23 - v14);
  type metadata accessor for ShazamUpsellOverlay(0);
  sub_1000413BC(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100007FDC(v15, v6, &qword_1001420F8, &qword_1000F52A0);
  sub_100007FDC(v12, &v6[v16], &qword_1001420F8, &qword_1000F52A0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100007E14(v6, &qword_1001420F8, &qword_1000F52A0);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_100007FDC(v6, v9, &qword_1001420F8, &qword_1000F52A0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100007E14(v6, &qword_100144138, &unk_1000F7DC0);
    return 80.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
  sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
  v22(v9, v0);
  sub_100007E14(v6, &qword_1001420F8, &qword_1000F52A0);
  result = 80.0;
  if (v21)
  {
    return 8.0;
  }

  return result;
}

double sub_1000D9F44()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100144138, &unk_1000F7DC0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100002D44(&qword_1001420F8, &qword_1000F52A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = (&v23 - v14);
  type metadata accessor for ShazamUpsellOverlay(0);
  sub_1000413BC(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100007FDC(v15, v6, &qword_1001420F8, &qword_1000F52A0);
  sub_100007FDC(v12, &v6[v16], &qword_1001420F8, &qword_1000F52A0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100007E14(v6, &qword_1001420F8, &qword_1000F52A0);
      return 10.0;
    }

    goto LABEL_6;
  }

  sub_100007FDC(v6, v9, &qword_1001420F8, &qword_1000F52A0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100007E14(v6, &qword_100144138, &unk_1000F7DC0);
    return 28.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_100007E14(v12, &qword_1001420F8, &qword_1000F52A0);
  sub_100007E14(v15, &qword_1001420F8, &qword_1000F52A0);
  v22(v9, v0);
  sub_100007E14(v6, &qword_1001420F8, &qword_1000F52A0);
  result = 28.0;
  if (v21)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1000DA3A8@<X0>(uint64_t a1@<X8>)
{
  v48[1] = a1;
  v48[0] = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v48[0]);
  v54 = v48 - v2;
  v3 = type metadata accessor for ShazamUpsellOverlay(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v53 = sub_100002D44(&qword_100148318, &qword_1000FE1C0);
  __chkstk_darwin(v53);
  v8 = v48 - v7;
  v9 = (v1 + *(v4 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v51 = v9[2];
  v52 = v10;
  sub_1000DC5B4(v1, v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamUpsellOverlay);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1000DBE0C(v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1000DC5B4(v1, v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamUpsellOverlay);
  v15 = swift_allocObject();
  sub_1000DBE0C(v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);

  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v55 = 0;
  v24 = static Alignment.center.getter();
  v49 = v25;
  v50 = v24;
  v26 = &v8[*(sub_100002D44(&qword_100148320, &unk_1000FE1C8) + 36)];
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #16.0 }

  *v26 = _Q0;
  *&v26[*(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)] = 256;
  v35 = v51;
  *v8 = v52;
  *(v8 + 1) = v11;
  v37 = v53;
  v36 = v54;
  *(v8 + 2) = v35;
  *(v8 + 3) = v12;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = sub_1000DC620;
  *(v8 + 9) = v14;
  *(v8 + 10) = sub_1000DC9A4;
  *(v8 + 11) = v15;
  v8[96] = v4;
  *(v8 + 97) = *v57;
  *(v8 + 25) = *&v57[3];
  *(v8 + 13) = v17;
  *(v8 + 14) = v19;
  *(v8 + 15) = v21;
  *(v8 + 16) = v23;
  v8[136] = 0;
  *(v8 + 35) = *&v56[3];
  *(v8 + 137) = *v56;
  *(v8 + 18) = 9;
  v38 = v49;
  *(v8 + 19) = v50;
  *(v8 + 20) = v38;
  v39 = sub_1000D9AD8();
  v40 = sub_1000D9F44();
  v41 = sub_1000D9AD8();
  LOBYTE(v28) = static Edge.Set.all.getter();
  v42 = &v8[*(sub_100002D44(&qword_100148328, &qword_1000FE1D8) + 36)];
  *v42 = v28;
  *(v42 + 1) = 0x4020000000000000;
  *(v42 + 2) = v39;
  *(v42 + 3) = v40;
  *(v42 + 4) = v41;
  v42[40] = 0;
  static Color.black.getter();
  v43 = Color.opacity(_:)();

  v44 = &v8[*(v37 + 36)];
  *v44 = v43;
  v44[1] = 0x4034000000000000;
  v44[2] = 0;
  v44[3] = 0;
  v45 = enum case for DynamicTypeSize.xLarge(_:);
  v46 = type metadata accessor for DynamicTypeSize();
  (*(*(v46 - 8) + 104))(v36, v45, v46);
  sub_1000DBFE4(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000DCA14();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v36, &qword_100142950, &qword_1000F7340);
    return sub_100007E14(v8, &qword_100148318, &qword_1000FE1C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA8B8(uint64_t a1)
{
  v16 = type metadata accessor for OpenURLAction();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ShazamUpsellOverlay(0) + 24);
  v13 = type metadata accessor for ShazamUpsellViewModel(0);
  sub_100007FDC(v12 + *(v13 + 24), v7, &unk_100144630, &qword_1000F5180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100007E14(v7, &unk_100144630, &qword_1000F5180);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_100041144(v4);
  OpenURLAction.callAsFunction(_:)();
  (*(v2 + 8))(v4, v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000DAB1C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = type metadata accessor for ShazamUpsellOverlay(0);
  v10 = (a2 + *(result + 28));
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_1000DABE8(uint64_t a1)
{
  v2 = type metadata accessor for ShazamUpsellOverlayModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DAC58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ShazamUpsellViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = sub_100002D44(&qword_100143E20, &qword_1000FE040);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[7];
    goto LABEL_13;
  }

  v18 = sub_100002D44(&qword_100148158, &qword_1000FE048);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_1000DAE58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ShazamUpsellViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002D44(&qword_100143E20, &qword_1000FE040);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_100002D44(&qword_100148158, &qword_1000FE048);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_1000DB038(uint64_t a1)
{
  type metadata accessor for ShazamUpsellViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000DB178(319, &qword_100142230, &qword_100142238, &unk_1000FE070, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000DC45C(319, &qword_1001432F0, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_1000DB178(319, &qword_100143E90, &qword_1001420F8, &qword_1000F52A0, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1000DB1DC(319, v4, v5);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000DB178(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004370(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000DB1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1001481C8)
  {
    sub_100080214(0, a2, a3);
    v3 = type metadata accessor for ScaledMetric();
    if (!v4)
    {
      atomic_store(v3, &qword_1001481C8);
    }
  }
}

uint64_t sub_1000DB254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = sub_100002D44(&qword_100148220, &qword_1000FE0E8);
  __chkstk_darwin(v54);
  v56 = &v45 - v3;
  v55 = sub_100002D44(&qword_100148228, &unk_1000FE0F0);
  __chkstk_darwin(v55);
  v47 = &v45 - v4;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_100144138, &unk_1000F7DC0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v10 = sub_100002D44(&qword_1001420F8, &qword_1000F52A0);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v45 - v13;
  __chkstk_darwin(v14);
  v59 = (&v45 - v15);
  v16 = type metadata accessor for ShazamUpsellOverlay(0);
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100002D44(&qword_100148230, &qword_1000FE100);
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  sub_1000DC5B4(a1, v19 + v17[8], type metadata accessor for ShazamUpsellViewModel);
  v23 = (a1 + *(type metadata accessor for ShazamUpsellOverlayModifier(0) + 20));
  v24 = *v23;
  v25 = v23[1];
  *v19 = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  swift_storeEnumTagMultiPayload();
  v26 = v17[7];
  *(v19 + v26) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  v27 = v49;
  swift_storeEnumTagMultiPayload();
  v28 = (v19 + v17[9]);
  *v28 = v24;
  v28[1] = v25;
  sub_10002F7D4(v24, v25);
  sub_100002D44(&qword_100148158, &qword_1000FE048);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000DBE0C(v19, v22);
  v52 = v20;
  v53 = v22;
  v29 = &v22[*(v20 + 36)];
  v30 = v50;
  v31 = v51;
  v32 = v61;
  *v29 = v60;
  *(v29 + 1) = v32;
  *(v29 + 2) = v62;
  v33 = v59;
  sub_1000413BC(v59);
  v34 = v58;
  (*(v30 + 104))(v58, enum case for UserInterfaceSizeClass.compact(_:), v31);
  (*(v30 + 56))(v34, 0, 1, v31);
  v35 = *(v8 + 56);
  sub_100007FDC(v33, v27, &qword_1001420F8, &qword_1000F52A0);
  sub_100007FDC(v34, v27 + v35, &qword_1001420F8, &qword_1000F52A0);
  v36 = *(v30 + 48);
  if (v36(v27, 1, v31) == 1)
  {
    sub_100007E14(v34, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v33, &qword_1001420F8, &qword_1000F52A0);
    v37 = v36(v27 + v35, 1, v31);
    v38 = v53;
    if (v37 == 1)
    {
      sub_100007E14(v27, &qword_1001420F8, &qword_1000F52A0);
LABEL_9:
      v43 = v47;
      sub_1000DBA6C(v38, v47);
      sub_100007FDC(v43, v56, &qword_100148228, &unk_1000FE0F0);
      swift_storeEnumTagMultiPayload();
      sub_1000DBE70();
      sub_1000DBF28();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v43, &qword_100148228, &unk_1000FE0F0);
      return sub_100007E14(v38, &qword_100148230, &qword_1000FE100);
    }

    goto LABEL_6;
  }

  v39 = v48;
  sub_100007FDC(v27, v48, &qword_1001420F8, &qword_1000F52A0);
  if (v36(v27 + v35, 1, v31) == 1)
  {
    sub_100007E14(v58, &qword_1001420F8, &qword_1000F52A0);
    sub_100007E14(v59, &qword_1001420F8, &qword_1000F52A0);
    (*(v30 + 8))(v39, v31);
    v38 = v53;
LABEL_6:
    sub_100007E14(v27, &qword_100144138, &unk_1000F7DC0);
    goto LABEL_7;
  }

  v40 = v46;
  (*(v30 + 32))(v46, v27 + v35, v31);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v30 + 8);
  v42(v40, v31);
  sub_100007E14(v58, &qword_1001420F8, &qword_1000F52A0);
  sub_100007E14(v59, &qword_1001420F8, &qword_1000F52A0);
  v42(v39, v31);
  sub_100007E14(v27, &qword_1001420F8, &qword_1000F52A0);
  v38 = v53;
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100007FDC(v38, v56, &qword_100148230, &qword_1000FE100);
  swift_storeEnumTagMultiPayload();
  sub_1000DBE70();
  sub_1000DBF28();
  _ConditionalContent<>.init(storage:)();
  return sub_100007E14(v38, &qword_100148230, &qword_1000FE100);
}

__n128 sub_1000DBA6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  sub_100002D44(&qword_100148260, &qword_1000FE148);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000F7970;
  type metadata accessor for ShazamUpsellOverlayModifier(0);
  sub_10004116C(v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v12 = static ColorScheme.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (v12)
  {
    v14 = [objc_opt_self() systemGray6Color];
    v15 = Color.init(uiColor:)();
  }

  else
  {
    v15 = static Color.black.getter();
  }

  *(v11 + 32) = v15;
  *(v11 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.center.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v16 = v20[1];
  v17 = static Edge.Set.all.getter();
  sub_100007FDC(a1, a2, &qword_100148230, &qword_1000FE100);
  v18 = a2 + *(sub_100002D44(&qword_100148228, &unk_1000FE0F0) + 36);
  *v18 = v16;
  result = v21;
  *(v18 + 24) = v22;
  *(v18 + 8) = result;
  *(v18 + 40) = v17;
  return result;
}

uint64_t sub_1000DBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = static HorizontalAlignment.center.getter();
  v7 = a2 + *(sub_100002D44(&qword_100148208, &qword_1000FE0D0) + 36);
  sub_1000DB254(v3, v7);
  VerticalEdge.rawValue.getter();
  LOBYTE(v3) = Edge.init(rawValue:)();
  v8 = static SafeAreaRegions.container.getter();
  v9 = v7 + *(sub_100002D44(&qword_100148210, &qword_1000FE0D8) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v9 + 17) = v3;
  *(v9 + 24) = v6;
  v10 = sub_100002D44(&qword_100148218, &qword_1000FE0E0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1000DBE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DBE70()
{
  result = qword_100148238;
  if (!qword_100148238)
  {
    sub_100004370(&qword_100148228, &unk_1000FE0F0);
    sub_1000DBF28();
    sub_100004610(&qword_100148250, &qword_100148258, &qword_1000FE140, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148238);
  }

  return result;
}

unint64_t sub_1000DBF28()
{
  result = qword_100148240;
  if (!qword_100148240)
  {
    sub_100004370(&qword_100148230, &qword_1000FE100);
    sub_1000DBFE4(&qword_100148248, type metadata accessor for ShazamUpsellOverlay, &unk_1000FE164);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148240);
  }

  return result;
}

uint64_t sub_1000DBFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DC040(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002D44(&qword_100143E20, &qword_1000FE040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for ShazamUpsellViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000DC1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100002D44(&qword_100143E20, &qword_1000FE040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for ShazamUpsellViewModel(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000DC334(uint64_t a1)
{
  sub_1000DC45C(319, &qword_100142248, &type metadata accessor for OpenURLAction);
  if (v1 <= 0x3F)
  {
    sub_1000DB178(319, &qword_100143E90, &qword_1001420F8, &qword_1000F52A0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ShazamUpsellViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_1000DB178(319, &qword_100142230, &qword_100142238, &unk_1000FE070, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000DC45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000DC4B4()
{
  result = qword_100148300;
  if (!qword_100148300)
  {
    sub_100004370(&qword_100148208, &qword_1000FE0D0);
    sub_100004610(&qword_100148308, &qword_100148218, &qword_1000FE0E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004610(&qword_100148310, &qword_100148210, &qword_1000FE0D8, &protocol conformance descriptor for _InsetViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148300);
  }

  return result;
}

uint64_t sub_1000DC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DC620()
{
  v1 = *(type metadata accessor for ShazamUpsellOverlay(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000DA8B8(v2);
}

uint64_t sub_1000DC680()
{
  v1 = type metadata accessor for ShazamUpsellOverlay(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = (v2 + 16) & ~v2;
  v18 = v0;
  v3 = v0 + v17;
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];

  v9 = type metadata accessor for ShazamUpsellViewModel(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v14 = *(v9 + 40);
  if (!v13(v8 + v14, 1, v11))
  {
    (*(v12 + 8))(v8 + v14, v11);
  }

  if (*(v3 + v1[7]))
  {
  }

  return _swift_deallocObject(v18, v17 + v16, v2 | 7);
}

uint64_t sub_1000DC9A4(uint64_t a1)
{
  v3 = *(type metadata accessor for ShazamUpsellOverlay(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000DAB1C(a1, v4);
}

unint64_t sub_1000DCA14()
{
  result = qword_100148330;
  if (!qword_100148330)
  {
    sub_100004370(&qword_100148318, &qword_1000FE1C0);
    sub_1000DCACC(&qword_100148338, &qword_100148328, &qword_1000FE1D8, sub_1000DCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148330);
  }

  return result;
}

uint64_t sub_1000DCACC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DCB50()
{
  result = qword_100148340;
  if (!qword_100148340)
  {
    sub_100004370(&qword_100148320, &unk_1000FE1C8);
    sub_1000DCC08();
    sub_100004610(&qword_100145808, &qword_100143758, &qword_1000F97A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148340);
  }

  return result;
}

unint64_t sub_1000DCC08()
{
  result = qword_100148348;
  if (!qword_100148348)
  {
    sub_100004370(&qword_100148350, &qword_1000FE1E0);
    sub_1000DCACC(&qword_100148358, &qword_100148360, &qword_1000FE1E8, sub_10006EB60);
    sub_100004610(&qword_100148368, &qword_100148370, &qword_1000FE1F0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148348);
  }

  return result;
}

uint64_t sub_1000DCCEC()
{
  sub_100004370(&qword_100148318, &qword_1000FE1C0);
  sub_100004370(&qword_100142950, &qword_1000F7340);
  sub_1000DCA14();
  sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

id sub_1000DCDB4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_100148378 = result;
  return result;
}

int64x2_t sub_1000DCE04()
{
  result = vdupq_n_s64(0x4042000000000000uLL);
  xmmword_100148380 = result;
  return result;
}

void sub_1000DCE1C()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000F57E0;
  v5 = [v2 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 heightAnchor];
  if (qword_100141D70 != -1)
  {
    swift_once();
  }

  v12 = [v11 constraintEqualToConstant:*(&xmmword_100148380 + 1)];

  *(v4 + 48) = v12;
  v13 = [v2 widthAnchor];
  v14 = [v13 constraintEqualToConstant:*&xmmword_100148380];

  *(v4 + 56) = v14;
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_1000DD230()
{
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000FE200;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 whiteColor];
  *(v1 + 40) = [v2 whiteColor];
  if (qword_100141D68 != -1)
  {
    swift_once();
  }

  v3 = qword_100148378;
  *(v1 + 48) = qword_100148378;
  sub_1000123E4(0, &qword_100142E20, UIColor_ptr);
  v4 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() configurationWithPaletteColors:isa];

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  v10 = *(v0 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView);
  [v10 setImage:v9];
  [v10 transform];
  CGAffineTransformScale(&v14, &aBlock, 0.9, 0.9);
  aBlock = v14;
  [v10 setTransform:&aBlock];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_1000DD624;
  *&aBlock.ty = v12;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_10013A518;
  v13 = _Block_copy(&aBlock);

  [v11 animateWithDuration:24 delay:v13 options:0 animations:1.2 completion:0.0];

  _Block_release(v13);
}

void sub_1000DD52C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView);

    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [v3 setTransform:v4];
  }
}

uint64_t sub_1000DD5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DD62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000DD644()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1001483C0 = v2;
}

uint64_t sub_1000DD6B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000DD6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000DD768@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&qword_1001483C8, &qword_1000FE2D8);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = sub_100002D44(&qword_1001483D0, &qword_1000FE2E0);
  sub_1000DD8B8(a1, a2, &v8[*(v9 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000DF634(v8, a3);
  v10 = a3 + *(sub_100002D44(&qword_1001483D8, &qword_1000FE2E8) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_1000DD8B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = sub_100002D44(&qword_1001483E0, &qword_1000FE2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100002D44(&qword_1001483E8, &qword_1000FE2F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  v21 = static HorizontalAlignment.leading.getter();
  v22 = 0x3FF0000000000000;
  if (v3)
  {
    v22 = 0x4000000000000000;
  }

  *v17 = v21;
  *(v17 + 1) = v22;
  v17[16] = 0;
  v23 = sub_100002D44(&qword_1001483F0, &qword_1000FE300);
  sub_1000DDAFC(a1, v3, &v17[*(v23 + 44)]);
  sub_10002F250(v17, v20, &qword_1001483E8, &qword_1000FE2F8);
  sub_1000DE7B0(a1, v11);
  sub_100007FDC(v20, v14, &qword_1001483E8, &qword_1000FE2F8);
  sub_1000DF6A4(v11, v8);
  sub_100007FDC(v14, a3, &qword_1001483E8, &qword_1000FE2F8);
  v24 = sub_100002D44(&qword_1001483F8, &unk_1000FE308);
  sub_1000DF6A4(v8, a3 + *(v24 + 48));
  sub_1000DF714(v11);
  sub_100007E14(v20, &qword_1001483E8, &qword_1000FE2F8);
  sub_1000DF714(v8);
  return sub_100007E14(v14, &qword_1001483E8, &qword_1000FE2F8);
}

uint64_t sub_1000DDAFC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_100002D44(&qword_100148460, &unk_1000FE388);
  __chkstk_darwin(v5 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v40 - v8;
  v9 = sub_100002D44(&qword_1001462D0, &qword_1000FADC0);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_100002D44(&qword_100148468, &qword_1000FE398);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = sub_100002D44(&qword_100148470, &qword_1000FE3A0);
  __chkstk_darwin(v19 - 8);
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v25 = [a1 title];
  if (v25)
  {
    v41 = v15;
    v26 = v24;
    v27 = a2;
    v28 = a1;
    v29 = v11;
    v30 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v29;
    a1 = v28;
    a2 = v27;
    v24 = v26;
    *v18 = static VerticalAlignment.center.getter();
    *(v18 + 1) = 0x4014000000000000;
    v18[16] = 0;
    v31 = sub_100002D44(&qword_100148480, &qword_1000FE3B0);
    sub_1000DEED8(a1, a2 & 1, &v18[*(v31 + 44)]);

    sub_10002F250(v18, v26, &qword_100148468, &qword_1000FE398);
    (*(v16 + 56))(v26, 0, 1, v41);
  }

  else
  {
    (*(v16 + 56))(v24, 1, 1, v15);
  }

  sub_1000DE014(a1, v14);
  if (a2)
  {
    sub_1000DE2E4(a1, v11);
    sub_10002F250(v11, v47, &qword_1001462D0, &qword_1000FADC0);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v47;
  (*(v42 + 7))(v47, v32, 1, v43);
  v34 = v44;
  sub_100007FDC(v24, v44, &qword_100148470, &qword_1000FE3A0);
  sub_100007FDC(v14, v11, &qword_1001462D0, &qword_1000FADC0);
  v43 = v14;
  v35 = v45;
  sub_100007FDC(v33, v45, &qword_100148460, &unk_1000FE388);
  v42 = v24;
  v36 = v33;
  v37 = v46;
  sub_100007FDC(v34, v46, &qword_100148470, &qword_1000FE3A0);
  v38 = sub_100002D44(&qword_100148478, &qword_1000FE3A8);
  sub_100007FDC(v11, v37 + *(v38 + 48), &qword_1001462D0, &qword_1000FADC0);
  sub_100007FDC(v35, v37 + *(v38 + 64), &qword_100148460, &unk_1000FE388);
  sub_100007E14(v36, &qword_100148460, &unk_1000FE388);
  sub_100007E14(v43, &qword_1001462D0, &qword_1000FADC0);
  sub_100007E14(v42, &qword_100148470, &qword_1000FE3A0);
  sub_100007E14(v35, &qword_100148460, &unk_1000FE388);
  sub_100007E14(v11, &qword_1001462D0, &qword_1000FADC0);
  return sub_100007E14(v34, &qword_100148470, &qword_1000FE3A0);
}

uint64_t sub_1000DE014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  v28 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = [a1 subtitle];
  if (v8 || (v8 = [a1 artist]) != 0)
  {
    v26 = v4;
    v27 = a2;
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static Font.caption.getter();
    v10 = Text.font(_:)();
    v12 = v11;
    v14 = v13;

    v29 = Color.init(_:bundle:)();
    v15 = Text.foregroundStyle<A>(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_10000BFBC(v10, v12, v14 & 1);

    v29 = v15;
    v30 = v17;
    v19 &= 1u;
    v31 = v19;
    v32 = v21;
    View.accessibilityIdentifier(_:)();
    sub_10000BFBC(v15, v17, v19);

    v22 = v27;
    sub_10002F250(v7, v27, &qword_100143B50, &qword_1000F9790);
    return (*(v28 + 56))(v22, 0, 1, v26);
  }

  else
  {
    v24 = *(v28 + 56);

    return v24(a2, 1, 1, v4);
  }
}

uint64_t sub_1000DE2E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v43 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.DateStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = [a1 creationDate];
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v11;
    v42 = v12;
    v21 = *(v12 + 32);
    v40 = v18;
    v21(v18, v14, v11);
    static Date.FormatStyle.DateStyle.long.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    Date.formatted(date:time:)();
    (*(v3 + 8))(v5, v43);
    (*(v7 + 8))(v9, v6);
    static Font.caption.getter();
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;

    v48 = Color.init(_:bundle:)();
    v27 = Text.foregroundStyle<A>(_:)();
    v29 = v28;
    v31 = v30;
    v32 = v46;
    v34 = v33;
    sub_10000BFBC(v22, v24, v26 & 1);

    v48 = v27;
    v49 = v29;
    LOBYTE(v22) = v31 & 1;
    v50 = v31 & 1;
    v51 = v34;
    v35 = v44;
    View.accessibilityIdentifier(_:)();
    sub_10000BFBC(v27, v29, v22);

    (*(v42 + 8))(v40, v41);
    sub_10002F250(v35, v32, &qword_100143B50, &qword_1000F9790);
    return (*(v47 + 56))(v32, 0, 1, v45);
  }

  else
  {
    v37 = v46;
    v38 = *(v47 + 56);
    v39 = v45;

    return v38(v37, 1, 1, v39);
  }
}

uint64_t sub_1000DE7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v3);
  v5 = &v49 - v4;
  v6 = sub_100002D44(&qword_100148400, &qword_1000FE318);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100002D44(&qword_100148408, &qword_1000FE320);
  __chkstk_darwin(v60);
  v13 = &v49 - v12;
  v57 = sub_100002D44(&qword_100148410, &qword_1000FE328);
  __chkstk_darwin(v57);
  v15 = &v49 - v14;
  v16 = sub_100002D44(&qword_100148418, &qword_1000FE330);
  v61 = *(v16 - 8);
  __chkstk_darwin(v16);
  v56 = &v49 - v17;
  type metadata accessor for SHLibrary();
  v18 = static SHLibrary.localizedAttribution(for:)();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v50 = v16;
    v51 = v3;
    v52 = a2;
    v54 = static Edge.Set.all.getter();
    LOBYTE(v64[0]) = 0;
    LOBYTE(v63[0]) = 0;
    v22 = [objc_opt_self() systemGray6Color];
    v23 = Color.init(uiColor:)();
    v55 = v5;
    v53 = v23;
    v24 = v15;
    v25 = static Edge.Set.all.getter();
    v26 = &v13[*(sub_100002D44(&qword_100148420, &unk_1000FE338) + 36)];
    v27 = *(type metadata accessor for RoundedRectangle() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = type metadata accessor for RoundedCornerStyle();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #4.0 }

    *v26 = _Q0;
    *&v26[*(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)] = 256;
    *v13 = v20;
    *(v13 + 1) = v21;
    v13[16] = 0;
    *(v13 + 17) = v64[0];
    *(v13 + 5) = *(v64 + 3);
    *(v13 + 3) = _swiftEmptyArrayStorage;
    v13[32] = v54;
    *(v13 + 33) = v63[0];
    *(v13 + 9) = *(v63 + 3);
    *(v13 + 40) = xmmword_1000FE240;
    *(v13 + 56) = xmmword_1000FE240;
    v13[72] = 0;
    *(v13 + 73) = *v62;
    *(v13 + 19) = *&v62[3];
    *(v13 + 10) = v53;
    v35 = v55;
    v13[88] = v25;
    v37 = v58;
    v36 = v59;
    (*(v58 + 104))(v11, enum case for Font.TextStyle.caption2(_:), v59);
    v38 = type metadata accessor for Font.Design();
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    static Font.Weight.semibold.getter();
    v39 = static Font.system(_:design:weight:)();
    sub_100007E14(v8, &qword_100148400, &qword_1000FE318);
    (*(v37 + 8))(v11, v36);
    KeyPath = swift_getKeyPath();
    v41 = &v13[*(sub_100002D44(&qword_100148428, &qword_1000FE378) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    *&v13[*(v60 + 36)] = Color.init(_:bundle:)();
    sub_1000DF784();
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v13, &qword_100148408, &qword_1000FE320);
    v42 = enum case for DynamicTypeSize.xxxLarge(_:);
    v43 = type metadata accessor for DynamicTypeSize();
    (*(*(v43 - 8) + 104))(v35, v42, v43);
    sub_1000800EC(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_1000DFA64();
      sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
      v45 = v56;
      View.dynamicTypeSize<A>(_:)();
      sub_100007E14(v35, &qword_100142950, &qword_1000F7340);
      sub_100007E14(v24, &qword_100148410, &qword_1000FE328);
      v46 = v52;
      v47 = v50;
      (*(v61 + 32))(v52, v45, v50);
      return (*(v61 + 56))(v46, 0, 1, v47);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v48 = *(v61 + 56);

    return v48(a2, 1, 1, v16);
  }

  return result;
}

uint64_t sub_1000DEED8@<X0>(void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a3;
  v67 = a5;
  v57 = sub_100002D44(&qword_100148488, &qword_1000FE3B8);
  __chkstk_darwin(v57);
  v6 = (&v57 - v5);
  v64 = sub_100002D44(&qword_100148490, &qword_1000FE3C0);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v57 - v9;
  v10 = sub_100002D44(&qword_100148498, &qword_1000FE3C8);
  __chkstk_darwin(v10 - 8);
  v66 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v57 - v13;
  v14 = sub_100002D44(&qword_1001484A0, &qword_1000FE3D0);
  __chkstk_darwin(v14 - 8);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;

  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  LODWORD(v73[0]) = static HierarchicalShapeStyle.primary.getter();
  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v21;
  v32 = v18;
  sub_10000BFBC(v19, v31, v23 & 1);

  v33 = v60 & 1;
  if (v60)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v76 = v28 & 1;
  v75 = v33;
  *&v68 = v24;
  *(&v68 + 1) = v26;
  LOBYTE(v69) = v28 & 1;
  *(&v69 + 1) = v30;
  *&v70 = KeyPath;
  *(&v70 + 1) = v34;
  LOBYTE(v71) = v33;
  *(&v71 + 1) = v36;
  v72 = 0;
  sub_100002D44(&qword_100145A28, &unk_1000FA370);
  sub_1000DFB30();
  View.accessibilityIdentifier(_:)();
  v73[2] = v70;
  v73[3] = v71;
  v74 = v72;
  v73[0] = v68;
  v73[1] = v69;
  sub_100007E14(v73, &qword_100145A28, &unk_1000FA370);
  if ([v61 explicitContent])
  {
    v37 = Image.init(systemName:)();
    v38 = static Font.caption.getter();
    v39 = swift_getKeyPath();
    v40 = (v6 + *(sub_100002D44(&qword_1001484B8, &unk_1000FE440) + 36));
    v41 = *(sub_100002D44(&qword_100143AF8, &qword_1000F7498) + 28);
    static SymbolRenderingMode.palette.getter();
    v42 = type metadata accessor for SymbolRenderingMode();
    (*(*(v42 - 8) + 56))(v40 + v41, 0, 1, v42);
    *v40 = swift_getKeyPath();
    *v6 = v37;
    v6[1] = v39;
    v6[2] = v38;
    v43 = static Color.white.getter();
    v44 = Color.init(_:bundle:)();
    v45 = (v6 + *(v57 + 36));
    *v45 = v43;
    v45[1] = v44;
    sub_1000DFBF0();
    v46 = v59;
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v6, &qword_100148488, &qword_1000FE3B8);
    LocalizedStringKey.init(_:)();
    v47 = v58;
    v48 = v64;
    ModifiedContent<>.accessibilityLabel(_:)();

    sub_100007E14(v46, &qword_100148490, &qword_1000FE3C0);
    v49 = v62;
    sub_10002F250(v47, v62, &qword_100148490, &qword_1000FE3C0);
    v50 = 0;
    v51 = v48;
  }

  else
  {
    v50 = 1;
    v51 = v64;
    v49 = v62;
  }

  (*(v65 + 56))(v49, v50, 1, v51);
  v52 = v63;
  sub_100007FDC(v32, v63, &qword_1001484A0, &qword_1000FE3D0);
  v53 = v66;
  sub_100007FDC(v49, v66, &qword_100148498, &qword_1000FE3C8);
  v54 = v67;
  sub_100007FDC(v52, v67, &qword_1001484A0, &qword_1000FE3D0);
  v55 = sub_100002D44(&qword_1001484B0, &qword_1000FE438);
  sub_100007FDC(v53, v54 + *(v55 + 48), &qword_100148498, &qword_1000FE3C8);
  sub_100007E14(v49, &qword_100148498, &qword_1000FE3C8);
  sub_100007E14(v32, &qword_1001484A0, &qword_1000FE3D0);
  sub_100007E14(v53, &qword_100148498, &qword_1000FE3C8);
  return sub_100007E14(v52, &qword_1001484A0, &qword_1000FE3D0);
}

uint64_t sub_1000DF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001483C8, &qword_1000FE2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DF6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001483E0, &qword_1000FE2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DF714(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001483E0, &qword_1000FE2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DF784()
{
  result = qword_100148430;
  if (!qword_100148430)
  {
    sub_100004370(&qword_100148408, &qword_1000FE320);
    sub_1000DF83C();
    sub_100004610(&qword_100142A88, &unk_100142A90, &qword_1000F9FB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148430);
  }

  return result;
}

unint64_t sub_1000DF83C()
{
  result = qword_100148438;
  if (!qword_100148438)
  {
    sub_100004370(&qword_100148428, &qword_1000FE378);
    sub_1000DF8F4();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148438);
  }

  return result;
}

unint64_t sub_1000DF8F4()
{
  result = qword_100148440;
  if (!qword_100148440)
  {
    sub_100004370(&qword_100148420, &unk_1000FE338);
    sub_1000DF9AC();
    sub_100004610(&qword_100145808, &qword_100143758, &qword_1000F97A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148440);
  }

  return result;
}

unint64_t sub_1000DF9AC()
{
  result = qword_100148448;
  if (!qword_100148448)
  {
    sub_100004370(&qword_100148450, &qword_1000FE380);
    sub_10002DBB0();
    sub_100004610(&qword_1001457F8, &qword_100145800, &unk_1000F9EE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148448);
  }

  return result;
}

unint64_t sub_1000DFA64()
{
  result = qword_100148458;
  if (!qword_100148458)
  {
    sub_100004370(&qword_100148410, &qword_1000FE328);
    sub_1000DF784();
    sub_1000800EC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148458);
  }

  return result;
}

unint64_t sub_1000DFB30()
{
  result = qword_1001484A8;
  if (!qword_1001484A8)
  {
    sub_100004370(&qword_100145A28, &unk_1000FA370);
    sub_1000149E0();
    sub_100004610(&qword_100143D78, &qword_100143D80, &unk_1000F7930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484A8);
  }

  return result;
}

unint64_t sub_1000DFBF0()
{
  result = qword_1001484C0;
  if (!qword_1001484C0)
  {
    sub_100004370(&qword_100148488, &qword_1000FE3B8);
    sub_1000DFCA8();
    sub_100004610(&qword_100143370, &qword_100143378, &qword_1000F6B68, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484C0);
  }

  return result;
}

unint64_t sub_1000DFCA8()
{
  result = qword_1001484C8;
  if (!qword_1001484C8)
  {
    sub_100004370(&qword_1001484B8, &unk_1000FE440);
    sub_10003E3A8();
    sub_100004610(&qword_100143AF0, &qword_100143AF8, &qword_1000F7498, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484C8);
  }

  return result;
}

unint64_t sub_1000DFD64()
{
  result = qword_1001484D0;
  if (!qword_1001484D0)
  {
    sub_100004370(&qword_1001483D8, &qword_1000FE2E8);
    sub_100004610(qword_1001484D8, &qword_1001483C8, &qword_1000FE2D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484D0);
  }

  return result;
}

uint64_t sub_1000DFE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000DFEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v29 = a1;
  v30 = a7;
  v24 = a6;
  type metadata accessor for SafeAreaModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v35 = sub_100082A0C();
  WitnessTable = swift_getWitnessTable();
  v25 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v23[1] = swift_getWitnessTable();
  v23[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v15 = swift_allocObject();
  v16 = v24;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v27;
  v15[4] = v26;
  v15[5] = v17;
  v15[6] = v28;

  v33 = GeometryReader.init(content:)();
  v34 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v31 = v19;
  v32 = v20;
  swift_getWitnessTable();
  sub_1000B03E4();
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_1000B03E4();
  return (v21)(v14, v8);
}

uint64_t sub_1000E0210@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[4] = a3;
  v25 = a1;
  v26 = a6;
  v23[1] = a4;
  v23[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v23 - v8;
  v23[0] = sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  v23[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v30 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_100082A0C();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v27 = v19;
  v28 = WitnessTable;
  swift_getWitnessTable();
  sub_1000B03E4();
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1000B03E4();
  return (v21)(v16, v10);
}

uint64_t sub_1000E04F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E0540@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E056C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E05F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SafeAreaModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_100082A0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1000E0808(uint64_t a1)
{
  sub_1000E08B0(319);
  if (v1 <= 0x3F)
  {
    sub_10006A3FC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        type metadata accessor for StreamingService(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E08B0(uint64_t a1)
{
  if (!qword_1001485E0)
  {
    type metadata accessor for URL();
    sub_100004370(&qword_100142238, &unk_1000FE070);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001485E0);
    }
  }
}

void sub_1000E0A54(uint64_t a1)
{
  sub_10006F07C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E0B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000E0C38(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1000E0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_10006A3FC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000E0F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000E1060(uint64_t a1)
{
  sub_10006F07C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_10006A3FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000E1128()
{
  v1 = type metadata accessor for OpenAction(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v5 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_1000E33C8(v0, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OpenAction);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000E345C(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for OpenAction);
  v17 = v0;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v11 = (v0 + *(v2 + 28));
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6E6F74747542;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E1408(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100041144(v5);
  v6 = type metadata accessor for OpenAction(0);
  OpenURLAction.callAsFunction(_:)();
  v7 = (*(v3 + 8))(v5, v2);
  return (*(a1 + *(v6 + 32)))(v7);
}

uint64_t sub_1000E150C()
{
  v1 = type metadata accessor for _OpenAction(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v5 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_1000E33C8(v0, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _OpenAction);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000E345C(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for _OpenAction);
  v17 = v0;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v11 = (v0 + *(v2 + 28));
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6E6F74747542;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E17EC(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3B44(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for _OpenAction(0);
  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000E1A68@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for ShareAction(0);
  v3 = v2 - 8;
  v20[0] = *(v2 - 8);
  v4 = *(v20[0] + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D44(&qword_1001489A8, &qword_1000FE858);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - v12;
  (*(v6 + 16))(v8, &v1[*(v3 + 32)], v5, v11);
  sub_1000E33C8(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareAction);
  v14 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v15 = swift_allocObject();
  sub_1000E345C(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ShareAction);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  v16 = *(v1 + 1);
  v20[2] = *v1;
  v20[3] = v16;

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x6E6F74747542;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);

  sub_100004610(&qword_1001489B0, &qword_1001489A8, &qword_1000FE858, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000E1D9C@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for SyncAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SyncAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SyncAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E2160@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for AsyncAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AsyncAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AsyncAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

double sub_1000E2504(uint64_t a1)
{
  v2 = type metadata accessor for AsyncAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000E33C8(a1, v5, type metadata accessor for AsyncAction);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1000E345C(v5, v12 + v11, type metadata accessor for AsyncAction);
  sub_1000C8AF8(0, 0, v8, &unk_1000FE868, v12);

  return result;
}

uint64_t sub_1000E26D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000E2770, v6, v5);
}

uint64_t sub_1000E2770()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for AsyncAction(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100043010;

  return v5();
}

uint64_t sub_1000E2870@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for AsyncThrowingAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AsyncThrowingAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AsyncThrowingAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

double sub_1000E2C14(uint64_t a1)
{
  v2 = type metadata accessor for AsyncThrowingAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000E33C8(a1, v5, type metadata accessor for AsyncThrowingAction);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1000E345C(v5, v12 + v11, type metadata accessor for AsyncThrowingAction);
  sub_1000C8DF8(0, 0, v8, &unk_1000FE878, v12);

  return result;
}

uint64_t sub_1000E2DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000E2E80, v6, v5);
}

uint64_t sub_1000E2E80()
{
  v1 = *(v0 + 24);
  v2 = (v1 + *(type metadata accessor for AsyncThrowingAction(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000E2F7C;

  return v5();
}

uint64_t sub_1000E2F7C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000E4078;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000E30A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000E30A4()
{
  v1 = v0[8];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000E318C()
{
  v1 = type metadata accessor for OpenAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E33C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E345C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E34C4(char a1)
{
  result = type metadata accessor for ShareAction(0);
  if (a1)
  {
    return (*(v1 + *(result + 28) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

uint64_t sub_1000E3564(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*v4 + 64);

  v8 = v4[8];
  v9 = a2(0);
  (*(*(v9 - 8) + 8))(v2 + v6 + v8, v9);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000E36A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1000E3750@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v6 = (a1 + *(a2(0) + 24));
  v7 = *v6;
  v8 = v6[1];

  result = a3(v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_1000E37CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_1000E26D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000E38BC()
{
  v1 = type metadata accessor for _OpenAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E3A9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = (v4 + *(a1(0) + 20));
  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000E3B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3C24(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  v6 = v2[8];
  v7 = type metadata accessor for ButtonRole();
  (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000E3D3C(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncThrowingAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100012EC8;

  return sub_1000E2DE8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000E3F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000E3F70@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_1000E3FC0()
{
  result = qword_1001489B8;
  if (!qword_1001489B8)
  {
    sub_100004370(&qword_1001489C0, &qword_1000FE888);
    sub_100004610(&qword_1001489B0, &qword_1001489A8, &qword_1000FE858, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001489B8);
  }

  return result;
}

uint64_t sub_1000E40B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002D44(&qword_100148158, &qword_1000FE048);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000E422C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100002D44(&qword_100148158, &qword_1000FE048);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for LibraryItemArtwork(uint64_t a1)
{
  result = qword_100148A30;
  if (!qword_100148A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E43E8(uint64_t a1)
{
  sub_1000E44E4(319, &qword_100142180, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000DB1DC(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_1000E44E4(319, &qword_1001432F0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E44E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000E4564(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v45 = a2;
  v8 = type metadata accessor for URLRequest();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_100002D44(qword_100144D30, &qword_1000F9208);
  __chkstk_darwin(v20 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v37 - v24;
  v42 = a1;
  sub_100007FDC(a1, v12, &unk_100144630, &qword_1000F5180);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007E14(v12, &unk_100144630, &qword_1000F5180);
    v26 = 1;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    (*(v14 + 8))(v19, v13);
    v26 = 0;
  }

  v28 = v43;
  v27 = v44;
  (*(v43 + 56))(v25, v26, 1, v44);
  v29 = sub_100002D44(&qword_100148A98, &unk_1000FE950);
  v30 = *(v29 + 44);
  sub_10002F250(v25, a6 + v30, qword_100144D30, &qword_1000F9208);
  v31 = [objc_opt_self() defaultSessionConfiguration];
  v32 = v45;
  [v31 setURLCache:v45];
  *(a6 + *(v29 + 48)) = [objc_opt_self() sessionWithConfiguration:v31];
  v33 = v39;
  *(a6 + 16) = v40;
  *(a6 + 24) = v41;
  *(a6 + 32) = v33;
  v46 = 0x8000000000000000;
  State.init(wrappedValue:)();
  v34 = v47;
  *a6 = v47;
  sub_100007FDC(a6 + v30, v22, qword_100144D30, &qword_1000F9208);
  if ((*(v28 + 48))(v22, 1, v27) == 1)
  {
    sub_100007E14(v42, &unk_100144630, &qword_1000F5180);

    sub_100007E14(v22, qword_100144D30, &qword_1000F9208);
  }

  else
  {
    v35 = v38;
    (*(v28 + 32))(v38, v22, v27);
    v36 = sub_1000E4AB4();
    if (v36)
    {
      v46 = v36;
      State.init(wrappedValue:)();

      sub_100007E14(v42, &unk_100144630, &qword_1000F5180);
      (*(v28 + 8))(v35, v27);
      sub_10006B3EC(v34);

      *a6 = v47;
    }

    else
    {

      sub_100007E14(v42, &unk_100144630, &qword_1000F5180);
      (*(v28 + 8))(v35, v27);
    }
  }
}

uint64_t sub_1000E4AB4()
{
  v1 = [*(v0 + *(sub_100002D44(&qword_100148A98 &unk_1000FE950) + 48))];
  v2 = [v1 URLCache];

  if (v2)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v4 = [v2 cachedResponseForRequest:isa];

    if (v4)
    {
      v5 = [v4 data];
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = objc_allocWithZone(UIImage);
      v10 = Data._bridgeToObjectiveC()().super.isa;
      v11 = [v9 initWithData:v10];

      if (v11)
      {
        v12 = Image.init(uiImage:)();

        sub_10005B7AC(v6, v8);
        return v12;
      }

      sub_10005B7AC(v6, v8);
    }
  }

  return 0;
}

uint64_t sub_1000E4C14(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 8.0;
  if (result)
  {
    v2 = 12.0;
  }

  qword_1001489C8 = *&v2;
  return result;
}

uint64_t sub_1000E4C44()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1001489D0 = result;
  return result;
}

uint64_t sub_1000E4D24@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for LibraryItemArtwork(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = sub_100002D44(&qword_100148A70, &unk_1000FE938);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  sub_100007FDC(v1, v7, &unk_100144630, &qword_1000F5180);
  static Animation.easeInOut.getter();
  v11 = Transaction.init(animation:)();
  sub_1000802D4(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_1000E6278(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LibraryItemArtwork);
  v15 = [objc_opt_self() sharedURLCache];
  sub_1000E4564(v7, v15, v11, sub_1000E5E3C, v14, v10);
  sub_100002D44(&qword_100148158, &qword_1000FE048);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v10[*(sub_100002D44(&qword_100148A78, &qword_1000FE948) + 36)];
  v17 = v21;
  *v16 = v20;
  *(v16 + 1) = v17;
  *(v16 + 2) = v22;
  v10[*(v8 + 36)] = 1;
  sub_1000E5EBC();
  View.accessibilityHidden(_:)();
  return sub_100007E14(v10, &qword_100148A70, &unk_1000FE938);
}

uint64_t sub_1000E5018@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38[1] = a2;
  v47 = a3;
  v45 = type metadata accessor for AccessibilityChildBehavior();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100002D44(&qword_100148AA8, &qword_1000FE960);
  __chkstk_darwin(v39);
  v6 = (v38 - v5);
  v7 = sub_100002D44(&qword_100148AB0, &qword_1000FE968);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v38[0] = v38 - v8;
  v48 = sub_100002D44(&qword_100148AB8, &qword_1000FE970);
  __chkstk_darwin(v48);
  v44 = v38 - v9;
  v46 = sub_100002D44(&qword_100148AC0, &qword_1000FE978);
  __chkstk_darwin(v46);
  v11 = v38 - v10;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002D44(&qword_100148AC8, &qword_1000FE980);
  __chkstk_darwin(v16);
  v18 = (v38 - v17);
  v19 = sub_100002D44(&qword_100148AD0, &qword_1000FE988);
  v20 = __chkstk_darwin(v19);
  v22 = v38 - v21;
  if (a1 >> 62)
  {
    *v6 = static Alignment.center.getter();
    v6[1] = v30;
    v31 = sub_100002D44(&qword_100148AD8, &unk_1000FE990);
    sub_1000E5748(v6 + *(v31 + 44));
    v32 = v40;
    static AccessibilityChildBehavior.combine.getter();
    v33 = sub_100004610(&qword_100148AE0, &qword_100148AA8, &qword_1000FE960, &protocol conformance descriptor for ZStack<A>);
    v34 = v38[0];
    v35 = v39;
    View.accessibilityElement(children:)();
    (*(v43 + 8))(v32, v45);
    sub_100007E14(v6, &qword_100148AA8, &qword_1000FE960);
    v49 = v35;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    v36 = v44;
    v37 = v42;
    View.accessibilityIdentifier(_:)();
    (*(v41 + 8))(v34, v37);
    sub_1000E6054(v36, v11);
    swift_storeEnumTagMultiPayload();
    sub_1000E632C(&qword_100148AE8, &qword_100148AD0, &qword_1000FE988, sub_1000E60C4);
    sub_1000E617C();
    _ConditionalContent<>.init(storage:)();
    return sub_100007E14(v36, &qword_100148AB8, &qword_1000FE970);
  }

  else
  {
    v45 = v19;
    (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12, v20);
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v13 + 8))(v15, v12);
    if (qword_100141D80 != -1)
    {
      swift_once();
    }

    v24 = qword_1001489C8;
    v25 = (v18 + *(v16 + 36));
    v26 = *(type metadata accessor for RoundedRectangle() + 20);
    v27 = enum case for RoundedCornerStyle.continuous(_:);
    v28 = type metadata accessor for RoundedCornerStyle();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = v24;
    v25[1] = v24;
    *(v25 + *(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)) = 256;
    *v18 = v23;
    sub_1000E60C4();
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v18, &qword_100148AC8, &qword_1000FE980);
    sub_100007FDC(v22, v11, &qword_100148AD0, &qword_1000FE988);
    swift_storeEnumTagMultiPayload();
    sub_1000E632C(&qword_100148AE8, &qword_100148AD0, &qword_1000FE988, sub_1000E60C4);
    sub_1000E617C();
    _ConditionalContent<>.init(storage:)();
    return sub_100007E14(v22, &qword_100148AD0, &qword_1000FE988);
  }
}

uint64_t sub_1000E5748@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_100002D44(&qword_100148B00, &unk_1000FE9A0);
  __chkstk_darwin(v37);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  if (qword_100141D80 != -1)
  {
    swift_once();
  }

  v18 = qword_1001489C8;
  v19 = *(v8 + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(v10 + v19, v20, v21);
  *v10 = v18;
  v10[1] = v18;
  sub_100002D44(&qword_100148260, &qword_1000FE148);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000F7970;
  type metadata accessor for LibraryItemArtwork(0);
  sub_10004116C(v7);
  (*(v2 + 104))(v4, enum case for ColorScheme.light(_:), v1);
  LOBYTE(v19) = static ColorScheme.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v4, v1);
  v23(v7, v1);
  if (v19)
  {
    v24 = [objc_opt_self() systemGray5Color];
    v25 = Color.init(uiColor:)();
  }

  else
  {
    v25 = static Color.gray.getter();
  }

  *(v22 + 32) = v25;
  if (qword_100141D88 != -1)
  {
    swift_once();
  }

  *(v22 + 40) = qword_1001489D0;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  sub_1000E6278(v10, v14, &type metadata accessor for RoundedRectangle);
  v26 = v37;
  v27 = &v14[*(v37 + 52)];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v42;
  *&v14[*(v26 + 56)] = 256;
  sub_10002F250(v14, v17, &qword_100148B00, &unk_1000FE9A0);
  v29 = Image.init(_internalSystemName:)();
  v30 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v32 = static Color.white.getter();
  v33 = v38;
  sub_100007FDC(v17, v38, &qword_100148B00, &unk_1000FE9A0);
  v34 = v39;
  sub_100007FDC(v33, v39, &qword_100148B00, &unk_1000FE9A0);
  v35 = (v34 + *(sub_100002D44(&qword_100148B08, &qword_1000FE9E0) + 48));
  *v35 = v29;
  v35[1] = KeyPath;
  v35[2] = v30;
  v35[3] = v32;

  sub_100007E14(v17, &qword_100148B00, &unk_1000FE9A0);

  return sub_100007E14(v33, &qword_100148B00, &unk_1000FE9A0);
}

uint64_t sub_1000E5C64()
{
  v1 = type metadata accessor for LibraryItemArtwork(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 20);
  v9 = sub_100002D44(&qword_100148158, &qword_1000FE048);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v1 + 24);
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E5E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LibraryItemArtwork(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000E5018(a1, v6, a2);
}

unint64_t sub_1000E5EBC()
{
  result = qword_100148A80;
  if (!qword_100148A80)
  {
    sub_100004370(&qword_100148A70, &unk_1000FE938);
    v3 = sub_1000E5F48();
    sub_1000E6000(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148A80);
  }

  return result;
}

unint64_t sub_1000E5F48()
{
  result = qword_100148A88;
  if (!qword_100148A88)
  {
    sub_100004370(&qword_100148A78, &qword_1000FE948);
    sub_100004610(&qword_100148A90, &qword_100148A98, &unk_1000FE950, &unk_1000F9238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148A88);
  }

  return result;
}

unint64_t sub_1000E6000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148AA0;
  if (!qword_100148AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AA0);
  }

  return result;
}

uint64_t sub_1000E6054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100148AB8, &qword_1000FE970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E60C4()
{
  result = qword_100148AF0;
  if (!qword_100148AF0)
  {
    sub_100004370(&qword_100148AC8, &qword_1000FE980);
    sub_100004610(&qword_100145808, &qword_100143758, &qword_1000F97A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AF0);
  }

  return result;
}

unint64_t sub_1000E617C()
{
  result = qword_100148AF8;
  if (!qword_100148AF8)
  {
    sub_100004370(&qword_100148AB8, &qword_1000FE970);
    sub_100004370(&qword_100148AA8, &qword_1000FE960);
    sub_100004610(&qword_100148AE0, &qword_100148AA8, &qword_1000FE960, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AF8);
  }

  return result;
}

uint64_t sub_1000E6278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E632C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    a4();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E63B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E6490(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000E71BC(a1, a2);
  return v4;
}

void *sub_1000E64E0(uint64_t a1)
{
  v93 = *v1;
  v95 = *(v93 + 80);
  v92 = *(v95 - 8);
  v2 = *(v92 + 64);
  __chkstk_darwin(a1);
  v91 = &v80 - v3;
  v4 = _s14descr1001347F1V6ActionOMa(0);
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextMenuItemSection(0);
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v80 - v10;
  __chkstk_darwin(v11);
  v13 = &v80 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v80 - v18;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v90 = *(v1 + 2);
  v26 = [v90 webURL];
  v27 = &unk_1000F5000;
  v101 = v15;
  v102 = v4;
  v100 = v1;
  v86 = v14;
  v94 = v6;
  if (v26)
  {
    v88 = v2;
    v28 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 32))(v25, v21, v14);
    sub_100002D44(&qword_100148BA0, &qword_1000FEA68);
    v29 = (type metadata accessor for ContextMenuItem(0) - 8);
    v30 = v15;
    v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F57C0;
    v33 = sub_100002D44(&qword_100145FD0, &unk_1000FEA80);
    v34 = v99;
    v35 = &v6[*(v33 + 48)];
    (*(v30 + 16))(v6, v25, v14);
    v36 = v100;
    *v35 = sub_1000E75C8;
    v35[1] = v36;
    v1 = v100;
    swift_storeEnumTagMultiPayload();

    UUID.init()();
    sub_1000E7558(v6, v32 + v31 + v29[7], _s14descr1001347F1V6ActionOMa);
    UUID.init()();
    v37 = &v13[*(v34 + 20)];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v13[*(v34 + 24)] = v32;
    v38 = sub_100058190(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_100058190((v39 > 1), v40 + 1, 1, v38);
    }

    v89 = v38;
    (*(v101 + 8))(v25, v14);
    v38[2] = v40 + 1;
    sub_1000E7558(v13, v38 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v40, type metadata accessor for ContextMenuItemSection);
    v2 = v88;
    v27 = &unk_1000F5000;
  }

  else
  {
    v89 = _swiftEmptyArrayStorage;
  }

  v41 = sub_100002D44(&qword_100148BA0, &qword_1000FEA68);
  v42 = type metadata accessor for ContextMenuItem(0);
  v43 = *(*(v42 - 8) + 80);
  v44 = (v43 + 32) & ~v43;
  v82 = *(*(v42 - 8) + 72);
  v81 = v43;
  v84 = v41;
  v45 = swift_allocObject();
  v80 = v27[124];
  *(v45 + 16) = v80;
  v83 = v44;
  v88 = v45 + v44;
  v47 = v91;
  v46 = v92;
  v48 = v95;
  (*(v92 + 16))(v91, v1 + *(*v1 + 104), v95);
  v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v50 = (v2 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  *(v51 + 24) = *(v93 + 88);
  (*(v46 + 32))(v51 + v49, v47, v48);
  v52 = v90;
  *(v51 + v50) = v90;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v53 = v94;
  *v94 = &unk_1000FEA78;
  *(v53 + 8) = v51;
  swift_storeEnumTagMultiPayload();

  v54 = v52;
  v55 = v88;
  UUID.init()();
  v95 = v42;
  sub_1000E7558(v53, v55 + *(v42 + 20), _s14descr1001347F1V6ActionOMa);
  v56 = v96;
  UUID.init()();
  v57 = v99;
  v58 = (v56 + *(v99 + 20));
  *v58 = 0;
  v58[1] = 0;
  *(v56 + *(v57 + 24)) = v45;
  v59 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_100058190(0, v59[2] + 1, 1, v59);
  }

  v61 = v59[2];
  v60 = v59[3];
  if (v61 >= v60 >> 1)
  {
    v59 = sub_100058190((v60 > 1), v61 + 1, 1, v59);
  }

  v59[2] = v61 + 1;
  v62 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v63 = *(v98 + 72);
  sub_1000E7558(v56, v59 + v62 + v63 * v61, type metadata accessor for ContextMenuItemSection);
  v64 = [v54 webURL];
  if (v64)
  {
    v96 = v63;
    v98 = v62;
    v65 = v85;
    v66 = v64;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v101;
    v68 = v97;
    v69 = v86;
    (*(v101 + 32))(v97, v65, v86);
    v70 = v83;
    v71 = swift_allocObject();
    *(v71 + 16) = v80;
    v72 = v71 + v70;
    v73 = (v53 + *(sub_100002D44(&qword_100145FD0, &unk_1000FEA80) + 48));
    (*(v67 + 16))(v53, v68, v69);
    v74 = v100;
    *v73 = sub_1000E75C0;
    v73[1] = v74;
    swift_storeEnumTagMultiPayload();

    UUID.init()();
    sub_1000E7558(v53, v72 + *(v95 + 20), _s14descr1001347F1V6ActionOMa);
    v75 = v87;
    UUID.init()();
    v76 = (v75 + *(v57 + 20));
    *v76 = 0;
    v76[1] = 0;
    *(v75 + *(v57 + 24)) = v71;
    v78 = v59[2];
    v77 = v59[3];
    if (v78 >= v77 >> 1)
    {
      v59 = sub_100058190((v77 > 1), v78 + 1, 1, v59);
    }

    (*(v101 + 8))(v97, v69);
    v59[2] = v78 + 1;
    sub_1000E7558(v75, v59 + v98 + v78 * v96, type metadata accessor for ContextMenuItemSection);
  }

  return v59;
}

uint64_t sub_1000E6E8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v6 = *(v5 + 88);
  v3[4] = v6;
  v7 = *(v6 + 40);
  v8 = *(v5 + 80);
  v3[5] = v8;
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1000E700C;

  return v11(a2, v8, v6);
}

uint64_t sub_1000E700C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E7148, v1, v0);
}

uint64_t sub_1000E7148()
{

  sub_1000E7600(0x12u);
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000E71BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  ObservationRegistrar.init()();
  *(v2 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a2);
  return v2;
}

id *sub_1000E7268()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 13));
  v2 = *(*v0 + 14);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000E7334()
{
  sub_1000E7268();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000E73A4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000E7448()
{
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000789C;

  return sub_1000E6E8C(v0 + v2, v4, v5);
}

uint64_t sub_1000E7558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E7600(unsigned __int8 a1)
{
  v2 = type metadata accessor for MusicSubscription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142FA0, &qword_1000F9620);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF90;
  swift_getKeyPath();
  v14[1] = v9;
  sub_10005B1D0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_10005B228(v9 + v10, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000717A0(v8);
    v11 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000717A0(v8);
    v12 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v3 + 8))(v5, v2);
    if (v12)
    {
      v11 = 0x10000;
    }

    else
    {
      v11 = 0;
    }
  }

  return sub_1000C3900(v11 | a1 | 0x300u, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000E785C()
{
  swift_getKeyPath();
  sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
}

void sub_1000E7904(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000E7A1C()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) == 1)
  {
    *(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v2 = 66304;
  }

  else
  {
    v2 = 768;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000E7B74(uint64_t (*a1)(uint64_t))
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BEC4(v3, qword_10014FEA0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    type metadata accessor for URL();
    sub_1000E80CC(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000BA1EC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Opening Shazam App Store URL %s", v6, 0xCu);
    sub_100007E74(v7);
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v11 = 66309;
  }

  else
  {
    v11 = 773;
  }

  v12 = sub_1000C3900(v11, 0xD000000000000028, 0x80000001000FF5D0);
  return a1(v12);
}

void sub_1000E7D78(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
}

uint64_t sub_1000E7E50()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v2);
  v4 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for ContextMenuViewModel(uint64_t a1)
{
  result = qword_100148BE8;
  if (!qword_100148BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7FB0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E80CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E8158@<X0>(double a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LibraryItemArtwork(0);
  __chkstk_darwin(v50);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v51 = a3;
  if (a2)
  {
    v22 = a1;
    v23 = a1;
  }

  else
  {
    sub_1000E8610(*&a1, 0);
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v25 = sub_100069CB4(*&a1, 0);
    v49 = a4;
    v26 = *(v12 + 8);
    v26(v14, v11, v25);
    v23 = *&v53;

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v28 = sub_100069CB4(*&a1, 0);
    v26(v14, v11, v28);
    a4 = v49;
    v22 = *&v53;
  }

  v29 = v51;
  v30 = [v51 artworkURLForSize:{v23 * 60.0, v22 * 60.0}];
  if (v30)
  {
    v31 = v30;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 56))(v10, v32, 1, v33);
  v34 = sub_100007F6C(v10, v18);
  v35 = v50;
  *&v53 = 60.0;
  sub_100080214(v34, v36, v37);
  ScaledMetric.init(wrappedValue:)();
  v38 = *(v35 + 24);
  *&v18[v38] = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  sub_100080270(v18, v21, v39);
  v40 = v52;
  sub_1000802D4(v21, v52, v41);
  sub_1000802D4(v40, a4, v42);
  v43 = a4 + *(sub_100002D44(&qword_100148D10, &qword_1000FEC80) + 48);
  *v43 = v29;
  *(v43 + 8) = 0;
  v44 = v29;
  sub_1000803A8(v21, v45);

  return sub_1000803A8(v40, v46);
}

uint64_t sub_1000E8598@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v7 = sub_100002D44(&qword_100148D08, &unk_1000FEC38);
  return sub_1000E8158(v4, v5, v6, a1 + *(v7 + 44));
}

uint64_t sub_1000E8610(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1000E8628()
{
  result = qword_100148D18;
  if (!qword_100148D18)
  {
    sub_100004370(&qword_100148D20, &qword_1000FEC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D18);
  }

  return result;
}

uint64_t sub_1000E868C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000E86D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000E874C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_1000E8AA0(v2, &v54);
  v48 = v64;
  v49 = v65;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  v38 = v54;
  v39 = v55;
  v51[10] = v64;
  v51[11] = v65;
  v51[6] = v60;
  v51[7] = v61;
  v51[8] = v62;
  v51[9] = v63;
  v51[2] = v56;
  v51[3] = v57;
  v51[4] = v58;
  v51[5] = v59;
  v50 = v66;
  v52 = v66;
  v51[0] = v54;
  v51[1] = v55;
  sub_100007FDC(&v38, v35, &qword_100148D28, &qword_1000FED38);
  sub_100007E14(v51, &qword_100148D28, &qword_1000FED38);
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v63 = v47;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  v54 = v38;
  v55 = v39;
  v34 = *(v2 + 1);
  v35[0] = v34;
  sub_100002D44(&qword_100148D30, &qword_1000FED40);
  State.wrappedValue.getter();
  v8 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v34) = 0;
  v17 = (a2 + *(sub_100002D44(&qword_100148D38, &qword_1000FED48) + 36));
  v18 = sub_100002D44(&qword_100148D40, &qword_1000FED50);
  v19 = *(v18 + 36);
  v20 = enum case for CoordinateSpace.local(_:);
  v21 = type metadata accessor for CoordinateSpace();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  *v17 = &type metadata for CircularWidthHeightPreferenceKey;
  v22 = &v17[*(v18 + 40)];
  *v22 = sub_10004CB50;
  v22[1] = 0;
  *a2 = v5;
  *(a2 + 8) = v7;
  v23 = v65;
  *(a2 + 176) = v64;
  *(a2 + 192) = v23;
  *(a2 + 208) = v66;
  v24 = v61;
  *(a2 + 112) = v60;
  *(a2 + 128) = v24;
  v25 = v63;
  *(a2 + 144) = v62;
  *(a2 + 160) = v25;
  v26 = v57;
  *(a2 + 48) = v56;
  *(a2 + 64) = v26;
  v27 = v59;
  *(a2 + 80) = v58;
  *(a2 + 96) = v27;
  v28 = v55;
  *(a2 + 16) = v54;
  *(a2 + 32) = v28;
  *(a2 + 216) = v8;
  *(a2 + 217) = *v53;
  *(a2 + 220) = *&v53[3];
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = v16;
  *(a2 + 256) = 0;
  v29 = *v3;
  v36 = v3[3];
  v37 = v29;
  v30 = swift_allocObject();
  v31 = *(v3 + 1);
  *(v30 + 1) = *v3;
  *(v30 + 2) = v31;
  *(v30 + 3) = *(v3 + 2);
  v32 = (a2 + *(sub_100002D44(&qword_100148D48, &qword_1000FED58) + 36));
  *v32 = sub_1000E8F30;
  v32[1] = v30;
  sub_1000E8F38(&v37, &v34);
  sub_100007FDC(v35, &v34, &qword_100148D30, &qword_1000FED40);
  sub_1000E8F94(&v36, &v34);
}

uint64_t sub_1000E8AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *a1;

  v33 = Color.opacity(_:)();
  sub_100002D44(&qword_100148D30, &qword_1000FED40);
  State.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v53;
  v32 = DWORD2(v53);
  v4 = v54;
  v5 = v55;
  v6 = static Alignment.center.getter();
  v34 = v7;
  sub_100002D44(&qword_100148D50, &qword_1000FED60);
  Binding.wrappedValue.getter();
  v8 = *&v60[0];
  State.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = static Alignment.center.getter();
  v30 = v10;
  v31 = v9;
  static UnitPoint.center.getter();
  v12 = v11;
  v14 = v13;
  v15 = static Animation.easeOut.getter();
  Binding.wrappedValue.getter();
  v16 = *&v60[0];
  v56[0] = v53;
  v17 = HIDWORD(v53);
  v56[1] = v54;
  *&v57 = v55;
  *(&v57 + 1) = v33;
  LOWORD(v58) = 256;
  *(&v58 + 1) = v6;
  v18 = v57;
  v19 = v58;
  *&v60[0] = 0;
  *(&v60[0] + 1) = v8;
  v60[1] = v50;
  v60[2] = v51;
  v20 = v52;
  *&v61 = v52;
  *(&v61 + 1) = v35;
  LOWORD(v62) = 256;
  *(&v62 + 1) = v31;
  *&v63 = v30;
  *(&v63 + 1) = 0xBFF921FB54442D18;
  *&v64 = v12;
  *(&v64 + 1) = v14;
  *&v65 = v15;
  *(&v65 + 1) = v16;
  *&v49[56] = v61;
  *&v49[40] = v51;
  *&v49[24] = v50;
  *&v49[8] = v60[0];
  *&v49[120] = v65;
  *&v49[104] = v64;
  *&v49[88] = v63;
  *&v49[72] = v62;
  v22 = v53;
  v21 = v54;
  *(a2 + 192) = v16;
  v59 = v34;
  *v49 = v34;
  v47 = v18;
  v48 = v19;
  v45 = v22;
  v46 = v21;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *a2 = v22;
  *(a2 + 16) = v21;
  v23 = *v49;
  v24 = *&v49[16];
  v25 = *&v49[48];
  *(a2 + 96) = *&v49[32];
  *(a2 + 112) = v25;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  v26 = *&v49[64];
  v27 = *&v49[80];
  v28 = *&v49[112];
  *(a2 + 160) = *&v49[96];
  *(a2 + 176) = v28;
  *(a2 + 128) = v26;
  *(a2 + 144) = v27;
  v66[0] = 0;
  v66[1] = v8;
  v67 = v50;
  v68 = v51;
  v69 = v20;
  v70 = v35;
  v71 = 256;
  v72 = v31;
  v73 = v30;
  v74 = 0xBFF921FB54442D18;
  v75 = v12;
  v76 = v14;
  v77 = v15;
  v78 = v16;
  sub_100007FDC(v56, &v36, &qword_100148D58, &qword_1000FED68);
  sub_100007FDC(v60, &v36, &qword_100148D60, &unk_1000FED70);
  sub_100007E14(v66, &qword_100148D60, &unk_1000FED70);
  v36 = v3;
  v37 = v32;
  v38 = v17;
  v39 = v4;
  v40 = v5;
  v41 = v33;
  v42 = 256;
  v43 = v6;
  v44 = v34;
  return sub_100007E14(&v36, &qword_100148D58, &qword_1000FED68);
}

uint64_t sub_1000E8EE0()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000E9004()
{
  result = qword_100148D68;
  if (!qword_100148D68)
  {
    sub_100004370(&qword_100148D48, &qword_1000FED58);
    sub_1000E90BC();
    sub_100004610(&qword_100148DA0, &qword_100148DA8, &qword_1000FEDB8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D68);
  }

  return result;
}

unint64_t sub_1000E90BC()
{
  result = qword_100148D70;
  if (!qword_100148D70)
  {
    sub_100004370(&qword_100148D38, &qword_1000FED48);
    sub_1000E9174();
    sub_100004610(&qword_100148D98, &qword_100148D40, &qword_1000FED50, &unk_1000FA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D70);
  }

  return result;
}

unint64_t sub_1000E9174()
{
  result = qword_100148D78;
  if (!qword_100148D78)
  {
    sub_100004370(&qword_100148D80, &qword_1000FEDA8);
    sub_100004610(&qword_100148D88, &qword_100148D90, &qword_1000FEDB0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D78);
  }

  return result;
}

unint64_t sub_1000E922C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000E9254(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E9254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148DB0;
  if (!qword_100148DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148DB0);
  }

  return result;
}

uint64_t sub_1000E92A8()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_10014FFD0);
  sub_10000BEC4(v0, qword_10014FFD0);
  return Logger.init(subsystem:category:)();
}

void sub_1000E931C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && a2)
  {
    swift_errorRetain();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000BEC4(v10, qword_10014FEA0);
    (*(v7 + 16))(v9, a3, v6);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315394;
      sub_100099E38();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v7 + 8))(v9, v6);
      v18 = sub_1000BA1EC(v15, v17, &v21);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to launch url: %s error: %@", v13, 0x16u);
      sub_1000157BC(v14);

      sub_100007E74(v20);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1000E95DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1000E9654(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_100002D44(&qword_100144578, &qword_1000F8640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_1000D5774(inited);
  swift_setDeallocating();
  sub_100002D44(&qword_100144580, &qword_1000F8648);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setFrontBoardOptions:isa];

  v10 = objc_opt_self();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1000E99D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E95DC;
  aBlock[3] = &unk_10013AAA0;
  v16 = _Block_copy(aBlock);
  v17 = v5;

  [v10 openWithURL:v13 configuration:v17 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1000E994C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000E99D4(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1000E931C(a1, a2, v6);
}

uint64_t sub_1000E9A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E9A7C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1000E9AD0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000E9B24()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1000E9B7C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

unint64_t sub_1000E9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100148DB8;
  if (!qword_100148DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148DB8);
  }

  return result;
}

uint64_t sub_1000E9C38()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E9D04, 0, 0);
}

uint64_t sub_1000E9D04()
{
  v1 = [*(v0 + 16) artworkURL];
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v1)
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2, v3, v4);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_1000E9E58;
    v8 = *(v0 + 48);

    return sub_10005B2BC(v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1000E9E58(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000EA00C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1000E9F84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E9F84()
{
  v1 = v0[8];
  (*(v0[4] + 8))(v0[6], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1000EA00C()
{
  (*(v0[4] + 8))(v0[6], v0[3]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1000EA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_100002D44(&qword_100148DC0, &qword_1000FEF38);
  v5[13] = swift_task_alloc();
  sub_100002D44(&qword_1001467E8, &qword_1000FB630);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_100002D44(&qword_100148DC8, &qword_1000FEF40);
  v5[16] = swift_task_alloc();
  sub_100002D44(&qword_1001467E0, &qword_1000FB628);
  v5[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_1001449B8, &qword_1000F8A98);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_100002D44(&qword_1001467F0, &qword_1000FB638);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = sub_100002D44(&qword_100148DD0, &qword_1000FEF48);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = sub_100002D44(&qword_100148DD8, &qword_1000FEF50);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v10 = type metadata accessor for MusicAuthorization.Status();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000EA434, 0, 0);
}

uint64_t sub_1000EA434()
{
  (*(v0[31] + 104))(v0[32], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[30]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1000EA4FC;
  v2 = v0[36];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_1000EA4FC()
{

  return _swift_task_switch(sub_1000EA5F8, 0, 0);
}

uint64_t sub_1000EA5F8()
{
  (*(v0[34] + 104))(v0[35], enum case for MusicAuthorization.Status.authorized(_:), v0[33]);
  sub_1000EBE18(&qword_100148DE0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[12];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v6 = *(v4 + 8);
    v6(v0[35], v0[33]);
    v6(v1, v3);

    if (!v5)
    {
LABEL_10:
      if (qword_100141A70 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BEC4(v14, qword_10014FEA0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected MusicKit authorization status", v17, 2u);
      }

      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];

      v21 = type metadata accessor for Song();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      v22 = type metadata accessor for Artist();
      (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      v23 = type metadata accessor for Album();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);

      v24 = v0[1];

      return v24();
    }
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = *(v4 + 8);
    v8(v2, v3);
    v8(v1, v3);

    if ((v7 & 1) == 0 || !v5)
    {
      goto LABEL_10;
    }
  }

  swift_getKeyPath();

  v0[6] = MusicItemID.init(_:)();
  v0[7] = v9;
  v0[38] = type metadata accessor for Song();
  sub_1000EBE18(&qword_100148DE8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v0[39] = sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000FE200;
  sub_100002D44(&qword_100148DF0, &qword_1000FEF80);
  *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
  *(v10 + 40) = static PartialMusicProperty<A>.artists.getter();
  *(v10 + 48) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  MusicCatalogResourceRequest.properties.setter();
  MusicCatalogResourceRequest.limit.setter();
  v11 = swift_task_alloc();
  v0[40] = v11;
  *v11 = v0;
  v11[1] = sub_1000EAB7C;
  v12 = v0[26];
  v13 = v0[27];

  return MusicCatalogResourceRequest.response()(v12, v13);
}

uint64_t sub_1000EAB7C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1000EBA3C;
  }

  else
  {
    v2 = sub_1000EAC90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EAC90()
{
  v1 = v0[38];
  v2 = v0[23];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  MusicCatalogResourceResponse.items.getter();
  sub_10006056C(v2);
  (*(v5 + 8))(v4, v6);
  sub_1000EBE60(v2, v3);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = v0[22];
    v10 = &qword_1001467F0;
    v11 = &qword_1000FB638;
LABEL_5:
    sub_100007E14(v9, v10, v11);
    v17 = v0[17];
    v18 = type metadata accessor for Album();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    goto LABEL_7;
  }

  v12 = v0[38];
  v13 = v0[22];
  v14 = v0[16];
  Song.albums.getter();
  (*(v7 + 8))(v13, v12);
  v15 = sub_100002D44(&qword_100144998, &qword_1000F8A88);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v9 = v0[16];
    v10 = &qword_100148DC8;
    v11 = &qword_1000FEF40;
    goto LABEL_5;
  }

  v19 = v0[16];
  sub_10006059C(v0[17]);
  (*(v16 + 8))(v19, v15);
LABEL_7:
  v20 = v0[38];
  v21 = v0[21];
  sub_1000EBE60(v0[23], v21);
  if (v8(v21, 1, v20) == 1)
  {
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[27];
    v25 = v0[21];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v23 + 8))(v22, v24);
    v26 = &qword_1001467F0;
    v27 = &qword_1000FB638;
LABEL_13:
    sub_100007E14(v25, v26, v27);
    v43 = v0[15];
    v44 = type metadata accessor for Artist();
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    v45 = v0[17];
    v46 = v0[15];
    v48 = v0[9];
    v47 = v0[10];
    sub_10002F250(v0[23], v0[8], &qword_1001467F0, &qword_1000FB638);
    sub_10002F250(v46, v48, &qword_1001467E8, &qword_1000FB630);
    sub_10002F250(v45, v47, &qword_1001467E0, &qword_1000FB628);

    v49 = v0[1];

    return v49();
  }

  v28 = v0[38];
  v29 = v0[21];
  v30 = v0[13];
  Song.artists.getter();
  (*(v7 + 8))(v29, v28);
  v31 = sub_100002D44(&qword_1001449A8, &qword_1000F8A90);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v34 = v0[28];
    v33 = v0[29];
    v35 = v0[27];
    v25 = v0[13];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v34 + 8))(v33, v35);
    v26 = &qword_100148DC0;
    v27 = &qword_1000FEF38;
    goto LABEL_13;
  }

  v36 = v0[13];
  v37 = v0[14];
  sub_1000605CC(v37);
  (*(v32 + 8))(v36, v31);
  v38 = type metadata accessor for Artist();
  v0[42] = v38;
  v39 = *(v38 - 8);
  v0[43] = v39;
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v41 = v0[28];
    v40 = v0[29];
    v42 = v0[27];
    v25 = v0[14];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v41 + 8))(v40, v42);
    v26 = &qword_1001467E8;
    v27 = &qword_1000FB630;
    goto LABEL_13;
  }

  v51 = swift_allocObject();
  v0[44] = v51;
  *(v51 + 16) = xmmword_1000F8490;
  sub_100002D44(&qword_100148DF8, &qword_1000FEF88);
  *(v51 + 32) = static PartialMusicProperty<A>.biography.getter();
  v52 = swift_task_alloc();
  v0[45] = v52;
  *v52 = v0;
  v52[1] = sub_1000EB31C;
  v53 = v0[15];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v53, v51, v38, &protocol witness table for Artist);
}

uint64_t sub_1000EB31C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1000EB638;
  }

  else
  {
    (*(v2[43] + 8))(v2[14], v2[42]);
    v3 = sub_1000EB46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EB46C()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[15];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 56))(v6, 0, 1, v1);
  v7 = v0[17];
  v8 = v0[15];
  v10 = v0[9];
  v9 = v0[10];
  sub_10002F250(v0[23], v0[8], &qword_1001467F0, &qword_1000FB638);
  sub_10002F250(v8, v10, &qword_1001467E8, &qword_1000FB630);
  sub_10002F250(v7, v9, &qword_1001467E0, &qword_1000FB628);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000EB638()
{
  v30 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[14];
  sub_100007E14(v0[17], &qword_1001467E0, &qword_1000FB628);
  sub_100007E14(v6, &qword_1001467F0, &qword_1000FB638);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v7, v1);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000BEC4(v8, qword_10014FEA0);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  if (v11)
  {
    v28 = v0[29];
    v15 = v0[11];
    v16 = v0[12];
    v27 = v0[27];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_1000BA1EC(v15, v16, &v29);
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching metadata for song %s: %@", v17, 0x16u);
    sub_100007E14(v18, &unk_100142880, &unk_1000F5950);

    sub_100007E74(v19);

    (*(v13 + 8))(v28, v27);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[9];
  v22 = v0[10];
  (*(*(v0[38] - 8) + 56))(v0[8], 1, 1);
  v23 = type metadata accessor for Artist();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = type metadata accessor for Album();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000EBA3C()
{
  v23 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  if (v4)
  {
    v21 = v0[29];
    v8 = v0[11];
    v9 = v0[12];
    v20 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000BA1EC(v8, v9, &v22);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching metadata for song %s: %@", v10, 0x16u);
    sub_100007E14(v11, &unk_100142880, &unk_1000F5950);

    sub_100007E74(v12);

    (*(v6 + 8))(v21, v20);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[9];
  v15 = v0[10];
  (*(*(v0[38] - 8) + 56))(v0[8], 1, 1);
  v16 = type metadata accessor for Artist();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = type metadata accessor for Album();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000EBDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of SongFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000EBE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000EBE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001467F0, &qword_1000FB638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EBEE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000EBFA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocationManager(uint64_t a1)
{
  result = qword_100148E58;
  if (!qword_100148E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EC094(uint64_t a1)
{
  result = sub_1000EC118();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000EC118()
{
  result = qword_100148E68;
  if (!qword_100148E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100148E68);
  }

  return result;
}

void sub_1000EC164()
{
  v1 = type metadata accessor for LocationManager(0);
  v2 = __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  if ([*v0 authorizationStatus])
  {
    sub_1000EC348(v0, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      v9 = [*v4 authorizationStatus];
      sub_1000EC3AC(v4);
      *(v8 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, v7, "Location status is %d, not requesting authorization", v8, 8u);
    }

    else
    {
      sub_1000EC3AC(v4);
    }
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Location status is notDetermined, requesting authorization", v12, 2u);
    }

    [v5 requestWhenInUseAuthorization];
  }
}

uint64_t sub_1000EC348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationManager(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC3AC(uint64_t a1)
{
  v2 = type metadata accessor for LocationManager(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000EC4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnySong(uint64_t a1)
{
  result = qword_100148EF0;
  if (!qword_100148EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EC610(uint64_t a1)
{
  sub_1000085D0(319);
  if (v1 <= 0x3F)
  {
    sub_1000EC694();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000EC694()
{
  result = qword_100148F00;
  if (!qword_100148F00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100148F00);
  }

  return result;
}

uint64_t sub_1000EC6F8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 8))(v3, v4);
}

uint64_t sub_1000EC750(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_1000EC7A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_1000EC800(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_1000EC858(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_1000EC8B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 48))(v3, v4);
}

uint64_t sub_1000EC918(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100002D44(&unk_100144630, &qword_1000F5180);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1000ECA50, v5, v4);
}

uint64_t sub_1000ECA50()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView);
  v2 = [*(v0 + 16) artworkURL];
  if (v2)
  {
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v3, v4, v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v2 != 0;
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(*(v0 + 40) + 56);
  v13 = 1;
  v12(v9, v7, 1, *(v0 + 32));
  sub_10001719C(v9);
  [v1 setHidden:v8];
  v14 = *(v11 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView);
  *(v0 + 96) = v14;
  v15 = [v10 artworkURL];
  if (v15)
  {
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 32))(v16, v17, v18);
    v13 = 0;
  }

  v20 = *(v0 + 56);
  v12(v20, v13, 1, *(v0 + 32));
  sub_10001719C(v20);
  [v14 setHidden:v15 == 0];
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_1000ECC64;

  return sub_1000E9C38();
}

uint64_t sub_1000ECC64(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1000ECD8C, v4, v3);
}

uint64_t sub_1000ECD8C()
{
  v1 = v0[14];
  v2 = v0[12];

  [v2 setImage:v1];

  v3 = v0[1];

  return v3();
}

id sub_1000ECE60(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) centerYAnchor];
    v7 = [*(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView) centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:391.0];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_1000ECF34()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  qword_100148F30 = result;
  return result;
}

id sub_1000ECF80()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_100148F38 = result;
  return result;
}

void sub_1000ECFD0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  qword_100148F40 = v1;
}

id sub_1000ED040()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
  qword_100148F48 = result;
  return result;
}

__n128 sub_1000ED088()
{
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_100148F50 = result;
  return result;
}

void sub_1000ED09C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArtworkUnavailableView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  v18 = objc_allocWithZone(sub_100002D44(&qword_100148FE8, &qword_1000FF018));
  (*(v12 + 16))(v14, v17, v11);
  v19 = UIHostingController.init(rootView:)();
  (*(v12 + 8))(v17, v11);
  v20 = [v19 view];

  if (v20)
  {
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView] = v20;
    v21 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView;
    *&v5[v21] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v22 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView;
    *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v23 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
    *&v5[v23] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v24 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
    *&v5[v24] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v25 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView;
    *&v5[v25] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v26 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
    *&v5[v26] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView;
    *&v5[v27] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v28 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView;
    *&v5[v28] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v29 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
    *&v5[v29] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v31.receiver = v5;
    v31.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
    sub_1000ED454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000ED454()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100146198, &unk_1000FF020);
  __chkstk_darwin(v2 - 8);
  v145 = v140 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v143 = *(v4 - 8);
  v144 = v4;
  __chkstk_darwin(v4);
  v142 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v154 = *(v6 - 8);
  v155 = v6;
  v7 = __chkstk_darwin(v6);
  v153 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v7}];
  v9 = *&v0[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v9];
  v10 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel];
  [v9 addArrangedSubview:v10];
  v11 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel];
  [v9 addArrangedSubview:v11];
  [v9 setAxis:1];
  [v9 setDistribution:0];
  v150 = v9;
  [v9 setAlignment:0];
  v12 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v12];
  v13 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 addSubview:v13];
  [v13 _setContinuousCornerRadius:20.0];
  [v13 setClipsToBounds:1];
  v14 = [v13 layer];
  if (qword_100141DA8 != -1)
  {
    swift_once();
  }

  v15 = qword_100148F40;
  v16 = [qword_100148F40 CGColor];
  [v14 setBorderColor:v16];

  v17 = [v13 layer];
  [v17 setBorderWidth:0.5];

  v18 = [v13 layer];
  [v18 setBorderPathIsBounds:1];

  v19 = String._bridgeToObjectiveC()();
  v141 = v13;
  [v13 setAccessibilityIdentifier:v19];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_opt_self();
  v21 = [v20 systemFontOfSize:38.0 weight:UIFontWeightSemibold];
  [v10 setFont:v21];

  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v10 setTextColor:v23];

  [v10 setNumberOfLines:2];
  LODWORD(v24) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v24];
  v25 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v25];

  v26 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v140[0] = v12;
  [v12 addSubview:v26];
  [v26 _setContinuousCornerRadius:20.0];
  [v26 setClipsToBounds:1];
  v27 = String._bridgeToObjectiveC()();
  [v26 setAccessibilityIdentifier:v27];

  v28 = [v26 layer];
  v29 = [v15 CGColor];
  [v28 setBorderColor:v29];

  v30 = [v26 layer];
  [v30 setBorderWidth:0.5];

  v31 = [v26 layer];
  [v31 setBorderPathIsBounds:1];

  v149 = v26;
  [v26 setOverrideUserInterfaceStyle:2];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v151 = v20;
  v32 = [v20 systemFontOfSize:34.0 weight:UIFontWeightRegular];
  [v11 setFont:v32];

  [v11 setNumberOfLines:1];
  if (qword_100141D98 != -1)
  {
    swift_once();
  }

  [v11 setTextColor:qword_100148F30];
  LODWORD(v33) = 1132068864;
  [v11 setContentCompressionResistancePriority:0 forAxis:v33];
  v34 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v34];

  v35 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v35];
  v36 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView];
  [v35 addArrangedSubview:v36];
  v152 = v36;
  [v35 setCustomSpacing:v36 afterView:4.0];
  v37 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel];
  [v35 addArrangedSubview:v37];
  [v35 setAxis:0];
  [v35 setDistribution:0];
  v146 = v35;
  [v35 setAlignment:0];
  v140[1] = sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000FE200;
  *(v38 + 32) = [v22 blackColor];
  *(v38 + 40) = [v22 blackColor];
  if (qword_100141DA0 != -1)
  {
    swift_once();
  }

  v39 = qword_100148F38;
  *(v38 + 48) = qword_100148F38;
  sub_1000123E4(0, &qword_100142E20, UIColor_ptr);
  v40 = v39;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = [objc_opt_self() configurationWithPaletteColors:isa];

  v43 = v42;
  v44 = String._bridgeToObjectiveC()();
  v45 = objc_opt_self();
  v46 = [v45 systemImageNamed:v44 withConfiguration:v43];

  v148 = v43;
  v147 = v46;
  [v152 setImage:v46];
  v47 = [v151 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  [v37 setFont:v47];

  [v37 setAdjustsFontForContentSizeCategory:1];
  [v37 setTextColor:v40];
  LODWORD(v48) = 1132068864;
  [v37 setContentCompressionResistancePriority:0 forAxis:v48];
  v49 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v49];

  v50 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = String._bridgeToObjectiveC()();
  [v50 setAccessibilityIdentifier:v51];

  v52 = [objc_opt_self() mainBundle];
  v156._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD00000000000001FLL;
  v53._object = 0x8000000100102540;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v156._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v156);

  v55 = String._bridgeToObjectiveC()();

  [v50 setAccessibilityLabel:v55];

  [v1 addSubview:v50];
  v56 = v153;
  static UIButton.Configuration.filled()();
  v57 = String._bridgeToObjectiveC()();
  v58 = [v45 imageNamed:v57];

  UIButton.Configuration.image.setter();
  v59 = v141;
  v60 = v140[0];
  if (qword_100141DB0 != -1)
  {
    swift_once();
  }

  v61 = qword_100148F48;
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v143 + 104))(v142, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v144);
  UIButton.Configuration.cornerStyle.setter();
  v62 = v154;
  v63 = v155;
  v64 = v145;
  (*(v154 + 16))(v145, v56, v155);
  (*(v62 + 56))(v64, 0, 1, v63);
  UIButton.configuration.setter();
  v65 = [objc_opt_self() mainScreen];
  [v65 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v157.origin.x = v67;
  v157.origin.y = v69;
  v157.size.width = v71;
  v157.size.height = v73;
  v74 = CGRectGetWidth(v157) + -98.0;
  v151 = objc_opt_self();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1000FEFF0;
  v76 = [v60 leadingAnchor];
  v77 = [v1 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:24.0];

  *(v75 + 32) = v78;
  v79 = [v60 heightAnchor];
  v80 = [v79 constraintEqualToConstant:v74];

  *(v75 + 40) = v80;
  v81 = [v60 widthAnchor];
  v82 = [v60 heightAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v75 + 48) = v83;
  v84 = [v60 centerYAnchor];
  v85 = [v1 centerYAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v75 + 56) = v86;
  v87 = [v59 centerXAnchor];
  v88 = [v60 centerXAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v75 + 64) = v89;
  v90 = [v59 heightAnchor];
  v91 = [v60 heightAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v75 + 72) = v92;
  v93 = [v59 widthAnchor];
  v94 = [v60 widthAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v75 + 80) = v95;
  *(v75 + 88) = sub_1000ECE60(&OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView);
  v96 = v150;
  v97 = [v150 leadingAnchor];
  v98 = [v60 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:38.0];

  *(v75 + 96) = v99;
  v100 = [v96 trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v75 + 104) = v102;
  v103 = [v96 centerYAnchor];
  v104 = [v1 centerYAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v75 + 112) = v105;
  v106 = [v50 trailingAnchor];
  v107 = [v1 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v75 + 120) = v108;
  v109 = [v50 widthAnchor];
  v110 = [v109 constraintEqualToConstant:149.0];

  *(v75 + 128) = v110;
  v111 = [v50 heightAnchor];
  v112 = [v111 constraintEqualToConstant:50.0];

  *(v75 + 136) = v112;
  v113 = [v50 bottomAnchor];
  v114 = [v60 bottomAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];

  *(v75 + 144) = v115;
  v116 = v146;
  v117 = [v146 leadingAnchor];
  v118 = [v96 leadingAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];

  *(v75 + 152) = v119;
  v120 = [v116 centerYAnchor];
  v121 = [v50 centerYAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];

  *(v75 + 160) = v122;
  v123 = v152;
  v124 = [v152 heightAnchor];
  if (qword_100141DB8 != -1)
  {
    swift_once();
  }

  v125 = [v124 constraintEqualToConstant:*(&xmmword_100148F50 + 1)];

  *(v75 + 168) = v125;
  v126 = [v123 widthAnchor];
  v127 = [v126 constraintEqualToConstant:*&xmmword_100148F50];

  *(v75 + 176) = v127;
  v128 = v149;
  v129 = [v149 centerXAnchor];
  v130 = [v60 centerXAnchor];
  v131 = [v129 constraintEqualToAnchor:v130];

  *(v75 + 184) = v131;
  v132 = [v128 heightAnchor];
  v133 = [v60 heightAnchor];
  v134 = [v132 constraintEqualToAnchor:v133];

  *(v75 + 192) = v134;
  v135 = [v128 widthAnchor];
  v136 = [v60 widthAnchor];
  v137 = [v135 constraintEqualToAnchor:v136];

  *(v75 + 200) = v137;
  *(v75 + 208) = sub_1000ECE60(&OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint, &OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView);
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  v138 = Array._bridgeToObjectiveC()().super.isa;

  [v151 activateConstraints:v138];

  return (*(v154 + 8))(v153, v155);
}

void sub_1000EE9F4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ArtworkUnavailableView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  v12 = objc_allocWithZone(sub_100002D44(&qword_100148FE8, &qword_1000FF018));
  (*(v6 + 16))(v8, v11, v5);
  v13 = UIHostingController.init(rootView:)();
  (*(v6 + 8))(v11, v5);
  v14 = [v13 view];

  if (v14)
  {
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView] = v14;
    v15 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView;
    *&v2[v15] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v16 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView;
    *&v2[v16] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v17 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
    *&v2[v17] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v18 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
    *&v2[v18] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v19 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView;
    *&v2[v19] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v20 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
    *&v2[v20] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v21 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView;
    *&v2[v21] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v22 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView;
    *&v2[v22] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v23 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
    *&v2[v23] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v26.receiver = v2;
    v26.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v26, "initWithCoder:", a1);
    if (v24)
    {
      v25 = v24;
      sub_1000ED454();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000EEF04(int a1, int a2, int a3, int a4)
{
  if (qword_10014FE90 == -1)
  {
    if (qword_10014FE98)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000EF3CC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10014FE98)
    {
      return _availability_version_check();
    }
  }

  if (qword_10014FE88 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000EF3E4();
    a3 = v10;
    a4 = v9;
    v8 = dword_10014FE78 < v11;
    if (dword_10014FE78 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10014FE7C > a3)
      {
        return 1;
      }

      if (dword_10014FE7C >= a3)
      {
        return dword_10014FE80 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10014FE78 < a2;
  if (dword_10014FE78 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000EF098(uint64_t result)
{
  v1 = qword_10014FE98;
  if (qword_10014FE98)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10014FE98 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10014FE78, &dword_10014FE7C, &dword_10014FE80);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)()
{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.toolbar<A>(content:)()
{
  return View.toolbar<A>(content:)();
}

{
  return View.toolbar<A>(content:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}