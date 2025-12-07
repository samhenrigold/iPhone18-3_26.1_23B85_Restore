uint64_t sub_100059064(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config))
  {

    TerrestrialRadioStation.setFavorite(_:)(0);
  }

  return result;
}

uint64_t sub_1000590C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000368C(&qword_1000ED400, &unk_1000B7118);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v15 - v4);
  v6 = Image.init(systemName:)();
  v7 = (v5 + *(v3 + 44));
  v8 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
  v9 = enum case for Image.Scale.large(_:);
  v10 = type metadata accessor for Image.Scale();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *v5 = v6;
  if (UICellConfigurationState.isFocused.getter())
  {
    v11 = [objc_opt_self() radio_carSystemFocusLabelColor];
    v12 = Color.init(uiColor:)();
  }

  else
  {
    v12 = static Color.primary.getter();
  }

  v13 = v12;
  sub_10001721C(v5, a1, &qword_1000ED400, &unk_1000B7118);
  result = sub_10000368C(&qword_1000ED3E8, &qword_1000B7110);
  *(a1 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_10005925C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v122 = a2;
  v119 = a4;
  v108 = sub_10000368C(&qword_1000ED320, &qword_1000B6F40);
  __chkstk_darwin(v108);
  v110 = &v102 - v5;
  v109 = sub_10000368C(&qword_1000ED328, &qword_1000B6F48);
  __chkstk_darwin(v109);
  v107 = (&v102 - v6);
  v7 = sub_10000368C(&qword_1000ED330, &qword_1000B6F50);
  v8 = __chkstk_darwin(v7 - 8);
  v118 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v102 - v10;
  v12 = sub_10000368C(&qword_1000ED338, &qword_1000B6F58);
  __chkstk_darwin(v12 - 8);
  v113 = &v102 - v13;
  v120 = sub_10000368C(&qword_1000ED340, &qword_1000B6F60);
  v14 = __chkstk_darwin(v120);
  v105 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = &v102 - v16;
  v111 = sub_10000368C(&qword_1000ED348, &qword_1000B6F68);
  v17 = __chkstk_darwin(v111);
  v116 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v102 - v20;
  __chkstk_darwin(v19);
  v23 = &v102 - v22;
  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v106 = v24;
  v25 = *(a1 + v24);
  v26 = CAFMediaItem.songTitle.getter();
  v28 = v27;

  v117 = v11;
  v121 = v23;
  v115 = a1;
  if (!v28)
  {
    v26 = TerrestrialRadioStation.favoritesDisplayName.getter();
    v28 = v29;
  }

  v123 = v26;
  v124 = v28;
  v104 = sub_100020F58();
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  v103 = objc_opt_self();
  v35 = [v103 systemFontOfSize:10.0];
  Font.init(_:)();
  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;

  sub_100021B08(v30, v32, v34 & 1);

  if ((v122 & 0x10000) != 0)
  {
    v43 = static Color.primary.getter();
  }

  else
  {
    v41 = [objc_opt_self() labelColor];
    v42 = [v41 colorWithAlphaComponent:0.3];

    v43 = Color.init(_:)();
  }

  v123 = v43;
  v44 = Text.foregroundStyle<A>(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_100021B08(v36, v38, v40 & 1);

  v123 = v44;
  v124 = v46;
  v125 = v48 & 1;
  v126 = v50;
  v51 = v113;
  View.accessibilityIdentifier(_:)();
  sub_100021B08(v44, v46, v48 & 1);

  if (v114)
  {
    v52 = 1;
  }

  else
  {
    v52 = 2;
  }

  KeyPath = swift_getKeyPath();
  v54 = v51;
  v55 = v112;
  sub_10001721C(v54, v112, &qword_1000ED338, &qword_1000B6F58);
  v56 = v55 + *(v120 + 36);
  *v56 = KeyPath;
  *(v56 + 8) = v52;
  *(v56 + 16) = 0;
  v57 = swift_getKeyPath();
  sub_10001721C(v55, v21, &qword_1000ED340, &qword_1000B6F60);
  v58 = &v21[*(v111 + 36)];
  *v58 = v57;
  v58[8] = 1;
  v59 = v121;
  sub_10001721C(v21, v121, &qword_1000ED348, &qword_1000B6F68);
  v60 = v115;
  v61 = (v115 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  if ((v61[1] & 1) != 0 || (v62 = *v61) == 0)
  {
    v65 = *(v60 + v106);
    v66 = CAFMediaItem.songArtist.getter();
    v68 = v67;

    v63 = v117;
    if (v68)
    {
      v69 = HIBYTE(v68) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v69 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (v69)
      {
        v123 = v66;
        v124 = v68;
        v70 = Text.init<A>(_:)();
        v72 = v71;
        v74 = v73;
        v75 = [v103 systemFontOfSize:10.0];
        Font.init(_:)();
        v76 = Text.font(_:)();
        v78 = v77;
        v80 = v79;

        sub_100021B08(v70, v72, v74 & 1);

        LODWORD(v123) = static HierarchicalShapeStyle.secondary.getter();
        v81 = Text.foregroundStyle<A>(_:)();
        v83 = v82;
        LOBYTE(v72) = v84;
        v86 = v85;
        v87 = v80 & 1;
        v59 = v121;
        sub_100021B08(v76, v78, v87);

        v123 = v81;
        v124 = v83;
        v125 = v72 & 1;
        v126 = v86;
        v88 = v105;
        View.accessibilityIdentifier(_:)();
        sub_100021B08(v81, v83, v72 & 1);

        v89 = swift_getKeyPath();
        v90 = v88 + *(v120 + 36);
        *v90 = v89;
        *(v90 + 8) = 1;
        *(v90 + 16) = 0;
        sub_1000077CC(v88, v110, &qword_1000ED340, &qword_1000B6F60);
        swift_storeEnumTagMultiPayload();
        sub_100005870(&qword_1000ED360, &qword_1000ED328, &qword_1000B6F48, &protocol conformance descriptor for HStack<A>);
        sub_10005AF98();
        _ConditionalContent<>.init(storage:)();
        sub_100007834(v88, &qword_1000ED340, &qword_1000B6F60);
        v91 = 0;
        goto LABEL_22;
      }
    }

    v91 = 1;
    goto LABEL_22;
  }

  v63 = v117;
  if (v122)
  {
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    static UIColor.cafui_HDOrangeColor.getter();
    v64 = Color.init(uiColor:)();
  }

  else
  {
    v64 = static Color.secondary.getter();
  }

  v92 = v64;
  v93 = static VerticalAlignment.center.getter();
  v94 = v107;
  *v107 = v93;
  *(v94 + 8) = 0x4000000000000000;
  *(v94 + 16) = 0;
  v95 = sub_10000368C(&qword_1000ED380, &qword_1000B6FE8);
  sub_100059D68(v92, v62, v94 + *(v95 + 44));
  sub_1000077CC(v94, v110, &qword_1000ED328, &qword_1000B6F48);
  swift_storeEnumTagMultiPayload();
  sub_100005870(&qword_1000ED360, &qword_1000ED328, &qword_1000B6F48, &protocol conformance descriptor for HStack<A>);
  sub_10005AF98();
  _ConditionalContent<>.init(storage:)();

  sub_100007834(v94, &qword_1000ED328, &qword_1000B6F48);
  v91 = 0;
LABEL_22:
  v96 = sub_10000368C(&qword_1000ED350, &qword_1000B6FD0);
  (*(*(v96 - 8) + 56))(v63, v91, 1, v96);
  v97 = v116;
  sub_1000077CC(v59, v116, &qword_1000ED348, &qword_1000B6F68);
  v98 = v118;
  sub_1000077CC(v63, v118, &qword_1000ED330, &qword_1000B6F50);
  v99 = v119;
  sub_1000077CC(v97, v119, &qword_1000ED348, &qword_1000B6F68);
  v100 = sub_10000368C(&qword_1000ED358, &qword_1000B6FD8);
  sub_1000077CC(v98, v99 + *(v100 + 48), &qword_1000ED330, &qword_1000B6F50);
  sub_100007834(v63, &qword_1000ED330, &qword_1000B6F50);
  sub_100007834(v59, &qword_1000ED348, &qword_1000B6F68);
  sub_100007834(v98, &qword_1000ED330, &qword_1000B6F50);
  return sub_100007834(v97, &qword_1000ED348, &qword_1000B6F68);
}

void sub_100059D68(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a1;
  v74 = a3;
  v3 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v3 - 8);
  v72 = &v65 - v4;
  v5 = sub_10000368C(&qword_1000ED390, &qword_1000B9750);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000368C(&qword_1000EBAE0, &qword_1000B7000);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v13 = &v65 - v12;
  v65 = sub_10000368C(&qword_1000ED398, &qword_1000B7008);
  __chkstk_darwin(v65);
  v15 = &v65 - v14;
  v66 = sub_10000368C(&qword_1000ED3A0, &qword_1000B7010);
  __chkstk_darwin(v66);
  v17 = &v65 - v16;
  v69 = sub_10000368C(&qword_1000ED3A8, &qword_1000B7018);
  v18 = __chkstk_darwin(v69);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v65 - v21;
  __chkstk_darwin(v20);
  v75 = &v65 - v23;
  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() _systemImageNamed:v24];

  if (v25)
  {
    Image.init(uiImage:)();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    Image.resizable(capInsets:resizingMode:)();

    (*(v9 + 8))(v11, v8);
    v26 = enum case for Image.TemplateRenderingMode.template(_:);
    v27 = type metadata accessor for Image.TemplateRenderingMode();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v7, v26, v27);
    (*(v28 + 56))(v7, 0, 1, v27);
    v29 = Image.renderingMode(_:)();

    sub_100007834(v7, &qword_1000ED390, &qword_1000B9750);
    v30 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    *&v78 = v29;
    *(&v78 + 1) = KeyPath;
    *&v79 = v30;
    static Font.Weight.medium.getter();
    sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
    sub_100014710();
    View.fontWeight(_:)();

    v32 = &v15[*(v65 + 36)];
    v33 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
    v34 = enum case for Image.Scale.medium(_:);
    v35 = type metadata accessor for Image.Scale();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    (*(v67 + 32))(v15, v13, v68);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001721C(v15, v17, &qword_1000ED398, &qword_1000B7008);
    v36 = &v17[*(v66 + 36)];
    v37 = v83;
    *(v36 + 4) = v82;
    *(v36 + 5) = v37;
    *(v36 + 6) = v84;
    v38 = v79;
    *v36 = v78;
    *(v36 + 1) = v38;
    v39 = v81;
    *(v36 + 2) = v80;
    *(v36 + 3) = v39;
    sub_10001721C(v17, v22, &qword_1000ED3A0, &qword_1000B7010);
    v40 = v73;
    *&v22[*(v69 + 36)] = v73;
    sub_10001721C(v22, v75, &qword_1000ED3A8, &qword_1000B7018);
    LOBYTE(v76) = v70;

    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v41;
    sub_100020F58();
    v42 = Text.init<A>(_:)();
    v44 = v43;
    v46 = v45;
    static Font.Weight.medium.getter();
    v47 = enum case for Font.Design.rounded(_:);
    v48 = type metadata accessor for Font.Design();
    v49 = *(v48 - 8);
    v50 = v72;
    (*(v49 + 104))(v72, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    static Font.system(size:weight:design:)();
    sub_100007834(v50, &qword_1000ED388, &unk_1000B6FF0);
    v51 = Text.font(_:)();
    v53 = v52;
    LOBYTE(v50) = v54;

    sub_100021B08(v42, v44, v46 & 1);

    v76 = v40;
    v55 = Text.foregroundStyle<A>(_:)();
    v57 = v56;
    LOBYTE(v44) = v58;
    v60 = v59;
    sub_100021B08(v51, v53, v50 & 1);

    v61 = v75;
    v62 = v71;
    sub_1000077CC(v75, v71, &qword_1000ED3A8, &qword_1000B7018);
    v63 = v74;
    sub_1000077CC(v62, v74, &qword_1000ED3A8, &qword_1000B7018);
    v64 = v63 + *(sub_10000368C(&qword_1000ED3B8, &qword_1000B7098) + 48);
    *v64 = v55;
    *(v64 + 8) = v57;
    *(v64 + 16) = v44 & 1;
    *(v64 + 24) = v60;
    sub_100021B18(v55, v57, v44 & 1);

    sub_100007834(v61, &qword_1000ED3A8, &qword_1000B7018);
    sub_100021B08(v55, v57, v44 & 1);

    sub_100007834(v62, &qword_1000ED3A8, &qword_1000B7018);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A6D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_10005A7C0(void *a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  objc_msgSendSuper2(&v9, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = [a1 nextFocusedItem];
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6 == v2)
    {
      return [v2 setNeedsUpdateConfiguration];
    }
  }

  result = [a1 previouslyFocusedItem];
  if (result)
  {
    v8 = result;
    result = swift_unknownObjectRelease();
    if (v8 == v2)
    {
      return [v2 setNeedsUpdateConfiguration];
    }
  }

  return result;
}

id sub_10005AA28(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005AA94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_10005AAA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_10005AAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005AB44(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10005AB58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10005ABA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10005ABF0@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  *&result = sub_100057F98(*(v1 + 16), v3 | v4, *(v1 + 32), *(v1 + 40), a1).n128_u64[0];
  return result;
}

unint64_t sub_10005AC28()
{
  result = qword_1000ED2C0;
  if (!qword_1000ED2C0)
  {
    sub_100005780(&qword_1000ED2B8, &qword_1000B6EF8);
    sub_10005ACB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C0);
  }

  return result;
}

unint64_t sub_10005ACB4()
{
  result = qword_1000ED2C8;
  if (!qword_1000ED2C8)
  {
    sub_100005780(&qword_1000ED2D0, &qword_1000B6F00);
    sub_100005870(&qword_1000ED2D8, &qword_1000ED2E0, &qword_1000B6F08, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C8);
  }

  return result;
}

uint64_t *sub_10005AD6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10005ADD0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005AE28@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005AE5C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005AEF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005AF1C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10005AF98()
{
  result = qword_1000ED368;
  if (!qword_1000ED368)
  {
    sub_100005780(&qword_1000ED340, &qword_1000B6F60);
    sub_10005B050();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED368);
  }

  return result;
}

unint64_t sub_10005B050()
{
  result = qword_1000ED370;
  if (!qword_1000ED370)
  {
    sub_100005780(&qword_1000ED338, &qword_1000B6F58);
    sub_10005BF48(&qword_1000ED378, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED370);
  }

  return result;
}

uint64_t sub_10005B10C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005B1AC(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_10005B280()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10005B2C8()
{
  result = qword_1000ED3F0;
  if (!qword_1000ED3F0)
  {
    sub_100005780(&qword_1000ED3E8, &qword_1000B7110);
    sub_10005B380();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED3F0);
  }

  return result;
}

unint64_t sub_10005B380()
{
  result = qword_1000ED3F8;
  if (!qword_1000ED3F8)
  {
    sub_100005780(&qword_1000ED400, &unk_1000B7118);
    sub_100005870(&qword_1000ED408, &qword_1000ED3B0, &qword_1000B7060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED3F8);
  }

  return result;
}

uint64_t sub_10005B438@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100053E74(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), a1, *(v1 + 32), *(v1 + 88), *(v1 + 96));
}

double sub_10005B48C(char a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    v9 = 6.0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = 6.0;
    if ((v8 & 1) == 0)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

        v9 = 12.0;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = 12.0;
        if ((v15 & 1) == 0)
        {
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
          if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
          {

            v9 = 18.0;
          }

          else
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v9 = 0.0;
            if (v22)
            {
              v9 = 18.0;
            }
          }
        }
      }
    }
  }

  if ((a1 - 1) > 7u)
  {
    v20 = 40.0;
  }

  else
  {
    v20 = dbl_1000B74C8[(a1 - 1)];
  }

  return v9 + v20;
}

double sub_10005B670(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

uint64_t sub_10005B698()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100056DD0(*(v0 + 16), v1 | *(v0 + 24), *(v0 + 32));
}

unint64_t sub_10005B6BC()
{
  result = qword_1000ED4B0;
  if (!qword_1000ED4B0)
  {
    sub_100005780(&qword_1000ED4B8, &qword_1000B71A0);
    sub_10005B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4B0);
  }

  return result;
}

unint64_t sub_10005B748()
{
  result = qword_1000ED4C0;
  if (!qword_1000ED4C0)
  {
    sub_100005780(&qword_1000ED4C8, &qword_1000B71A8);
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C0);
  }

  return result;
}

unint64_t sub_10005B810()
{
  result = qword_1000ED578;
  if (!qword_1000ED578)
  {
    sub_100005780(&qword_1000ED550, &qword_1000B7270);
    sub_10005B89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED578);
  }

  return result;
}

unint64_t sub_10005B89C()
{
  result = qword_1000ED580;
  if (!qword_1000ED580)
  {
    sub_100005780(&qword_1000ED548, &qword_1000B7268);
    sub_10005B954();
    sub_100005870(&qword_1000ED5B8, &qword_1000ED5C0, &qword_1000B72F8, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED580);
  }

  return result;
}

unint64_t sub_10005B954()
{
  result = qword_1000ED588;
  if (!qword_1000ED588)
  {
    sub_100005780(&qword_1000ED540, &qword_1000B7260);
    sub_10005BA0C();
    sub_100005870(&qword_1000ED5B0, &qword_1000ED570, &qword_1000B72D8, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED588);
  }

  return result;
}

unint64_t sub_10005BA0C()
{
  result = qword_1000ED590;
  if (!qword_1000ED590)
  {
    sub_100005780(&qword_1000ED598, &qword_1000B72E0);
    sub_10005BA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED590);
  }

  return result;
}

unint64_t sub_10005BA98()
{
  result = qword_1000ED5A0;
  if (!qword_1000ED5A0)
  {
    sub_100005780(&qword_1000ED5A8, &unk_1000B72E8);
    sub_100014710();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5A0);
  }

  return result;
}

unint64_t sub_10005BB50()
{
  result = qword_1000ED5C8;
  if (!qword_1000ED5C8)
  {
    sub_100005780(&qword_1000ED538, &qword_1000B7258);
    sub_10005BC08(&qword_1000ED5D0, &qword_1000ED530, &qword_1000B7250, sub_10005BCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5C8);
  }

  return result;
}

uint64_t sub_10005BC08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    sub_10005BF48(&qword_1000ED378, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005BCBC()
{
  result = qword_1000ED5D8;
  if (!qword_1000ED5D8)
  {
    sub_100005780(&qword_1000ED528, &qword_1000B7248);
    sub_10005BD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5D8);
  }

  return result;
}

unint64_t sub_10005BD48()
{
  result = qword_1000ED5E0;
  if (!qword_1000ED5E0)
  {
    sub_100005780(&qword_1000ED520, &qword_1000B7240);
    sub_10005BE00();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5E0);
  }

  return result;
}

unint64_t sub_10005BE00()
{
  result = qword_1000ED5E8;
  if (!qword_1000ED5E8)
  {
    sub_100005780(&qword_1000ED5F0, &unk_1000B7300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5E8);
  }

  return result;
}

unint64_t sub_10005BE84()
{
  result = qword_1000ED5F8;
  if (!qword_1000ED5F8)
  {
    sub_100005780(&qword_1000ED560, &qword_1000B7280);
    sub_10005BC08(&qword_1000ED600, &qword_1000ED558, &qword_1000B7278, sub_10005B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED5F8);
  }

  return result;
}

uint64_t sub_10005BF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BF90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10005BFA0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10005BFB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
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

uint64_t sub_10005C010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005C090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C158(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005C1C0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_10005C21C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005C280()
{
  result = qword_1000ED6A8;
  if (!qword_1000ED6A8)
  {
    sub_100005780(&qword_1000ED680, &qword_1000B7400);
    sub_10005C338();
    sub_100005870(&qword_1000ED6E0, &qword_1000ED6A0, &qword_1000B7420, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6A8);
  }

  return result;
}

unint64_t sub_10005C338()
{
  result = qword_1000ED6B0;
  if (!qword_1000ED6B0)
  {
    sub_100005780(&qword_1000ED678, &qword_1000B73F8);
    sub_10005C3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6B0);
  }

  return result;
}

unint64_t sub_10005C3C4()
{
  result = qword_1000ED6B8;
  if (!qword_1000ED6B8)
  {
    sub_100005780(&qword_1000ED670, &qword_1000B73F0);
    sub_10005C47C();
    sub_100005870(&qword_1000ED6D0, &qword_1000ED6D8, qword_1000B7458, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6B8);
  }

  return result;
}

unint64_t sub_10005C47C()
{
  result = qword_1000ED6C0;
  if (!qword_1000ED6C0)
  {
    sub_100005780(&qword_1000ED668, &qword_1000B73E8);
    sub_100005870(&qword_1000ED6C8, &qword_1000ED660, &qword_1000B73E0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6C0);
  }

  return result;
}

unint64_t sub_10005C554()
{
  result = qword_1000ED6F0;
  if (!qword_1000ED6F0)
  {
    sub_100005780(&qword_1000ED6F8, &unk_1000B74B8);
    sub_10005BD48();
    sub_10005BA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED6F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RadioFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10005C6C8()
{
  result = qword_1000ED700;
  if (!qword_1000ED700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED700);
  }

  return result;
}

Swift::Int sub_10005C71C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005C788(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005C7F0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MediaProgressView(0);
  sub_1000077CC(v1 + *(v10 + 20), v9, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_10005C9F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v15;
  }

  swift_getKeyPath();
  v15 = v7;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v7 + 16);

  if (v9)
  {
    return 0;
  }

  sub_10005CCCC();
  if (v11)
  {

    return 0;
  }

  else
  {

    if ((v6 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v5 = v15;
    }

    swift_getKeyPath();
    v15 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v5 + 17);

    return (v13 - 1) < 2;
  }
}

uint64_t sub_10005CCCC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v25;
  }

  swift_getKeyPath();
  v25 = v7;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v7 + 24);
  if (*(v7 + 40))
  {
    if (*(v7 + 40) != 1)
    {

      return 0;
    }

    v10 = *(v7 + 32);

    sub_10006957C();

    sub_10000C9C0(v9, v10, 1);
  }

  else
  {
    v11 = v9;
    [v11 durationSnapshot];
    v12 = v26;

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v5 = v25;
  }

  swift_getKeyPath();
  v25 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v5 + 24);
  if (*(v5 + 40))
  {
    if (*(v5 + 40) == 1)
    {
      v15 = *(v5 + 32);

      v16 = sub_10006957C();
      v18 = v17;

      sub_10000C9C0(v14, v15, 1);
      if (v18)
      {
        return v16;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = v14;
    [v20 durationSnapshot];
  }

LABEL_16:
  v21 = String._bridgeToObjectiveC()();
  v22 = CPUILocalizedStringForKey();

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v23;
  }

  return 0;
}

id sub_10005D0C4()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_1000ED708 = result;
  return result;
}

uint64_t sub_10005D0F8@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v84 = type metadata accessor for EnvironmentValues();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MediaProgressView(0);
  v81 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v97 = v4;
  v89 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000368C(&qword_1000ED8D0, &qword_1000B77B8);
  __chkstk_darwin(v93);
  v88 = (&v74 - v5);
  v94 = sub_10000368C(&qword_1000ED8D8, &qword_1000B77C0);
  v85 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v74 - v6;
  v95 = sub_10000368C(&qword_1000ED8E0, &qword_1000B77C8);
  v87 = *(v95 - 8);
  __chkstk_darwin(v95);
  v86 = &v74 - v7;
  v80 = type metadata accessor for ColorScheme();
  v79 = *(v80 - 8);
  v8 = __chkstk_darwin(v80);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for BlendMode();
  v90 = *(v13 - 8);
  v91 = v13;
  __chkstk_darwin(v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000368C(&qword_1000ED8E8, &qword_1000B77D0);
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for LiveLabelView(0);
  __chkstk_darwin(v19);
  v21 = (&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1;
  v23 = sub_10005CCCC();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    *v21 = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v27 = (v21 + *(v19 + 20));
    *v27 = v25;
    v27[1] = v26;
    sub_100064448(v21, v18, type metadata accessor for LiveLabelView);
    swift_storeEnumTagMultiPayload();
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView, &unk_1000B7A50);
    v28 = sub_100064218();
    v29 = sub_100036F74();
    v98 = *&v93;
    v99 = &type metadata for NowPlayingStyle;
    v100 = v28;
    v101 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_1000643EC();
    v98 = *&v94;
    v99 = &type metadata for RadioNowPlayingViewModel.Source;
    v100 = OpaqueTypeConformance2;
    v101 = v31;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_1000644B0(v21);
  }

  else
  {
    v76 = v16;
    v77 = v19;
    v78 = v18;
    sub_10005C7F0(v12);
    v33 = v79;
    v34 = v80;
    (*(v79 + 104))(v10, enum case for ColorScheme.dark(_:), v80);
    v35 = static ColorScheme.== infix(_:_:)();
    v36 = *(v33 + 8);
    v36(v10, v34);
    v36(v12, v34);
    v37 = &enum case for BlendMode.plusLighter(_:);
    if ((v35 & 1) == 0)
    {
      v37 = &enum case for BlendMode.plusDarker(_:);
    }

    (*(v90 + 104))(v15, *v37, v91);
    v38 = static HorizontalAlignment.leading.getter();
    v39 = v88;
    *v88 = v38;
    v39[1] = 0x4010000000000000;
    *(v39 + 16) = 0;
    v40 = v39 + *(sub_10000368C(&qword_1000ED8F0, &qword_1000B77D8) + 44);
    v80 = v15;
    sub_10005DDCC(v22, v15, v40);
    KeyPath = swift_getKeyPath();
    v42 = (v39 + *(sub_10000368C(&qword_1000ED8F8, &qword_1000B7810) + 36));
    v43 = *(sub_10000368C(&qword_1000ED900, &unk_1000B7818) + 28);
    v44 = enum case for LayoutDirection.leftToRight(_:);
    v45 = type metadata accessor for LayoutDirection();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = KeyPath;
    v46 = v89;
    sub_100064448(v22, v89, type metadata accessor for MediaProgressView);
    v47 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v48 = swift_allocObject();
    sub_1000076F8(v46, v48 + v47);
    v49 = v93;
    v50 = (v39 + *(v93 + 36));
    *v50 = sub_100064078;
    v50[1] = v48;
    v50[2] = 0;
    v50[3] = 0;
    v51 = *v22;
    LODWORD(v48) = *(v22 + 8);

    v52 = v51;
    LODWORD(v79) = v48;
    if ((v48 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v53 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v54 = v82;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v83 + 8))(v54, v84);
      v52 = v98;
    }

    swift_getKeyPath();
    v98 = v52;
    sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(*&v52 + 17);

    LOBYTE(v98) = v55;
    v81 = v22;
    sub_100064448(v22, v46, type metadata accessor for MediaProgressView);
    v56 = swift_allocObject();
    sub_1000076F8(v46, v56 + v47);
    v57 = sub_100064218();
    v58 = sub_100036F74();
    v75 = v57;
    v59 = v88;
    View.onChange<A>(of:initial:_:)();

    sub_100007834(v59, &qword_1000ED8D0, &qword_1000B77B8);

    if ((v79 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v60 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v61 = v82;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v83 + 8))(v61, v84);
      v51 = v98;
    }

    swift_getKeyPath();
    v98 = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(*&v51 + 24);
    v63 = *(*&v51 + 32);
    v64 = *(*&v51 + 40);
    sub_10000C964(v62, v63, v64);

    v102 = v62;
    v103 = v63;
    v104 = v64;
    v65 = v89;
    sub_100064448(v81, v89, type metadata accessor for MediaProgressView);
    v66 = swift_allocObject();
    sub_1000076F8(v65, v66 + v47);
    v98 = *&v49;
    v99 = &type metadata for NowPlayingStyle;
    v100 = v75;
    v101 = v58;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = sub_1000643EC();
    v69 = v86;
    v70 = v94;
    v71 = v92;
    View.onChange<A>(of:initial:_:)();

    sub_10000C9C0(v62, v63, v64);
    (*(v85 + 8))(v71, v70);
    v72 = v87;
    v73 = v95;
    (*(v87 + 16))(v78, v69, v95);
    swift_storeEnumTagMultiPayload();
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView, &unk_1000B7A50);
    v98 = *&v70;
    v99 = &type metadata for RadioNowPlayingViewModel.Source;
    v100 = v67;
    v101 = v68;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v72 + 8))(v69, v73);
    return (*(v90 + 8))(v80, v91);
  }
}

uint64_t sub_10005DDCC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v97 = sub_10000368C(&qword_1000ED950, &qword_1000B79D0);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v86 = (&v86 - v5);
  v6 = sub_10000368C(&qword_1000ED958, &qword_1000B79D8);
  v7 = __chkstk_darwin(v6 - 8);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v86 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v92 = *(v10 - 8);
  __chkstk_darwin(v10);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000368C(&qword_1000ED960, &qword_1000B79E0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v86 - v14);
  v93 = sub_10000368C(&qword_1000ED968, &qword_1000B79E8);
  v16 = __chkstk_darwin(v93);
  v95 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v86 - v19;
  __chkstk_darwin(v18);
  v94 = &v86 - v21;
  v22 = [objc_opt_self() secondarySystemFillColor];
  v23 = Color.init(uiColor:)();
  v24 = static Alignment.leading.getter();
  v26 = v25;
  v27 = v15 + *(sub_10000368C(&qword_1000ED970, &qword_1000B79F0) + 36);
  v87 = a2;
  sub_10005ECE4(a1, a2, v27);
  v28 = (v27 + *(sub_10000368C(&qword_1000ED978, &qword_1000B79F8) + 36));
  *v28 = v24;
  v28[1] = v26;
  *v15 = v23;
  v29 = v15 + *(v13 + 44);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  *&v29[*(sub_10000368C(&qword_1000ED980, &qword_1000B7A00) + 36)] = 256;
  v32 = *a1;
  LODWORD(a2) = *(a1 + 8);

  v33 = v32;
  v90 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v91;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v35, v10);
    v33 = *&v104;
  }

  v88 = v10;
  v36 = 1701736302;
  swift_getKeyPath();
  *&v104 = v33;
  v89 = sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(*&v33 + 17);

  if (v37 <= 2 && v37)
  {
    v38 = v37 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
    v39 = v37 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    if (v38 == 0xD000000000000010 && 0x80000001000BAEF0 == v39)
    {
      v40 = v100;
      v41 = v93;
LABEL_16:

LABEL_17:
      v42 = v94;
      goto LABEL_20;
    }
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
    if (v37 <= 2)
    {
      v40 = v100;
      if (v37)
      {
        if (v37 == 1)
        {
          v36 = 0x4D646E417370616DLL;
        }

        else
        {
          v36 = 0xD000000000000010;
        }

        if (v37 == 1)
        {
          v85 = 0xEC00000061696465;
        }

        else
        {
          v85 = 0x80000001000BAEF0;
        }
      }

      else
      {
        v85 = 0xE400000000000000;
      }
    }

    else
    {
      v40 = v100;
      if (v37 > 4)
      {
        if (v37 != 5)
        {
          v41 = v93;
          goto LABEL_53;
        }

        v36 = 0x756964654D616364;
        v85 = 0xE90000000000006DLL;
      }

      else
      {
        v36 = 0x6D696E694D616364;
        if (v37 == 3)
        {
          v85 = 0xEA00000000006C61;
        }

        else
        {
          v85 = 0xEE00656469576C61;
        }
      }
    }

    v41 = v93;
    if (v36 == 0x4D646E417370616DLL && v85 == 0xEC00000061696465)
    {
      goto LABEL_16;
    }

LABEL_53:
    _stringCompareWithSmolCheck(_:_:expecting:)();

    goto LABEL_17;
  }

  v40 = v100;
  v42 = v94;
  v41 = v93;
LABEL_20:
  static Alignment.center.getter();
  v44 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v15, v20, &qword_1000ED960, &qword_1000B79E0);
  v45 = &v20[*(v41 + 36)];
  v46 = v109;
  *(v45 + 4) = v108;
  *(v45 + 5) = v46;
  *(v45 + 6) = v110;
  v47 = v105;
  *v45 = v104;
  *(v45 + 1) = v47;
  v48 = v107;
  *(v45 + 2) = v106;
  *(v45 + 3) = v48;
  sub_10001721C(v20, v42, &qword_1000ED968, &qword_1000B79E8);
  v49 = sub_10005C9F8();
  v50 = v98;
  if (v49)
  {

    if ((v90 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v52 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v92 + 8))(v52, v88);
      v32 = v101[0];
    }

    swift_getKeyPath();
    v101[0] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(*&v32 + 24);
    if (*(*&v32 + 40))
    {
      if (*(*&v32 + 40) != 1)
      {

        goto LABEL_35;
      }

      v54 = *(*&v32 + 32);

      sub_10006957C();

      sub_10000C9C0(v53, v54, 1);

      v55 = 1.0;
      v56 = 0.0;
      v57 = 0.0;
      v58 = 0.0;
    }

    else
    {
      v59 = v53;
      [v59 durationSnapshot];
      v56 = v101[0];
      v57 = v101[3];
      v58 = v101[4];
      v60 = v102;

      v55 = v60;
    }

    v61 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
    v63 = *v61;
    v62 = v61[1];
    v101[0] = v63;
    v101[1] = v62;
    sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
    State.wrappedValue.getter();
    v64 = v103;
    swift_getKeyPath();
    v101[0] = v64;
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v65 = *(*&v64 + 56);

    if ((v65 & 1) == 0)
    {
      static Date.timeIntervalSinceReferenceDate.getter();
      v67 = v58 + (v66 - v56) * v55;
      if (v67 >= v57)
      {
        v67 = v57;
      }

      v68 = v57 - fmax(v67, 0.0);
      if (qword_1000EAD20 != -1)
      {
        swift_once();
      }

      v69 = qword_1000ED708;
      v70 = [qword_1000ED708 stringFromSeconds:?];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = [v69 stringFromSeconds:v68];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = static VerticalAlignment.center.getter();
      v79 = v86;
      *v86 = v78;
      *(v79 + 8) = 0;
      *(v79 + 16) = 1;
      v80 = sub_10000368C(&qword_1000ED990, &qword_1000B7A10);
      sub_10005EFD4(v71, v73, v87, v75, v77, v79 + *(v80 + 44));

      sub_10001721C(v79, v50, &qword_1000ED950, &qword_1000B79D0);
      v44 = 0;
    }
  }

LABEL_35:
  (*(v96 + 56))(v50, v44, 1, v97);
  v81 = v95;
  sub_1000077CC(v42, v95, &qword_1000ED968, &qword_1000B79E8);
  v82 = v99;
  sub_1000077CC(v50, v99, &qword_1000ED958, &qword_1000B79D8);
  sub_1000077CC(v81, v40, &qword_1000ED968, &qword_1000B79E8);
  v83 = sub_10000368C(&qword_1000ED988, &qword_1000B7A08);
  sub_1000077CC(v82, v40 + *(v83 + 48), &qword_1000ED958, &qword_1000B79D8);
  sub_100007834(v50, &qword_1000ED958, &qword_1000B79D8);
  sub_100007834(v42, &qword_1000ED968, &qword_1000B79E8);
  sub_100007834(v82, &qword_1000ED958, &qword_1000B79D8);
  return sub_100007834(v81, &qword_1000ED968, &qword_1000B79E8);
}

uint64_t sub_10005ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000ED9A8, &qword_1000B7A28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  v24 = v12;
  v25 = v11;
  sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
  State.wrappedValue.getter();
  v13 = v23[1];
  swift_getKeyPath();
  v24 = v13;
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 48);
  LOBYTE(a1) = *(v13 + 56);

  if (a1)
  {
    v15 = 1;
  }

  else
  {
    v16 = static HierarchicalShapeStyle.secondary.getter();
    v17 = *(sub_10000368C(&qword_1000ED9B0, &qword_1000B7A30) + 36);
    v18 = type metadata accessor for BlendMode();
    (*(*(v18 - 8) + 16))(&v9[v17], a2, v18);
    *v9 = v16;
    static UnitPoint.leading.getter();
    v19 = &v9[*(v6 + 36)];
    *v19 = v14;
    *(v19 + 1) = 0x3FF0000000000000;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    sub_10001721C(v9, a3, &qword_1000ED9A8, &qword_1000B7A28);
    v15 = 0;
  }

  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t sub_10005EF30()
{
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_10005EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v64._countAndFlagsBits = a4;
  v64._object = a5;
  v71 = a3;
  v68 = a6;
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v70 = sub_10000368C(&qword_1000ED998, &qword_1000B7A18) - 8;
  v9 = __chkstk_darwin(v70);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v66 = &v61 - v12;
  v13 = __chkstk_darwin(v11);
  v65 = &v61 - v14;
  __chkstk_darwin(v13);
  v69 = &v61 - v15;
  v72 = a1;
  v73 = a2;
  sub_100020F58();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.body.getter();
  Font.monospacedDigit()();

  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  sub_100021B08(v16, v18, v20 & 1);

  LODWORD(v72) = static HierarchicalShapeStyle.secondary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;
  sub_100021B08(v21, v23, v25 & 1);

  v32 = *(v70 + 44);
  v33 = type metadata accessor for BlendMode();
  v34 = *(v33 - 8);
  v62 = *(v34 + 16);
  v63 = v34 + 16;
  v35 = v69;
  v62(v69 + v32, v71, v33);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v16 & 1;
  *(v35 + 24) = v31;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v64);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  LocalizedStringKey.init(stringInterpolation:)();
  v38 = Text.init(_:tableName:bundle:comment:)();
  v40 = v39;
  LOBYTE(v28) = v41;
  static Font.body.getter();
  Font.monospacedDigit()();

  v42 = Text.font(_:)();
  v44 = v43;
  v46 = v45;

  sub_100021B08(v38, v40, v28 & 1);

  LODWORD(v72) = static HierarchicalShapeStyle.secondary.getter();
  v47 = Text.foregroundStyle<A>(_:)();
  v49 = v48;
  LOBYTE(v28) = v50;
  v52 = v51;
  sub_100021B08(v42, v44, v46 & 1);

  v53 = v65;
  v62(&v65[*(v70 + 44)], v71, v33);
  *v53 = v47;
  *(v53 + 8) = v49;
  *(v53 + 16) = v28 & 1;
  *(v53 + 24) = v52;
  v54 = v69;
  v55 = v66;
  sub_1000077CC(v69, v66, &qword_1000ED998, &qword_1000B7A18);
  v56 = v67;
  sub_1000077CC(v53, v67, &qword_1000ED998, &qword_1000B7A18);
  v57 = v68;
  sub_1000077CC(v55, v68, &qword_1000ED998, &qword_1000B7A18);
  v58 = sub_10000368C(&qword_1000ED9A0, &qword_1000B7A20);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_1000077CC(v56, v57 + *(v58 + 64), &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v53, &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v54, &qword_1000ED998, &qword_1000B7A18);
  sub_100007834(v56, &qword_1000ED998, &qword_1000B7A18);
  return sub_100007834(v55, &qword_1000ED998, &qword_1000B7A18);
}

void sub_10005F4C0(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for MediaProgressView(0) + 24));
  v8 = *v6;
  v7 = v6[1];
  v14 = v8;
  v15 = v7;
  sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
  State.wrappedValue.getter();
  v9 = v13[1];
  v10 = *a1;
  v11 = *(a1 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v10 = v14;
  }

  *(v9 + 24) = v10;

  sub_100060BF4();

  sub_10005F678();
}

void sub_10005F678()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = *&v19[0];
  }

  swift_getKeyPath();
  *&v19[0] = v6;
  sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v6 + 24);
  v9 = *(v6 + 32);
  v11 = *(v6 + 40);
  sub_10000C964(v10, v9, *(v6 + 40));

  if (v11)
  {
    sub_10000C9C0(v10, v9, v11);
  }

  else
  {

    v12 = (v1 + *(type metadata accessor for MediaProgressView(0) + 24));
    v14 = *v12;
    v13 = v12[1];
    *&v19[0] = v14;
    *(&v19[0] + 1) = v13;
    sub_10000368C(&qword_1000ED940, &qword_1000B78B0);
    State.wrappedValue.getter();
    v15 = v21;
    [v10 durationSnapshot];
    v16 = v20;
    v17 = v19[1];
    v18 = v19[2];
    *(v15 + 64) = v19[0];
    *(v15 + 80) = v17;
    *(v15 + 96) = v18;
    *(v15 + 112) = v16;
    sub_1000621A8();
  }
}

uint64_t sub_10005F8E0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077CC(v2, &v14 - v9, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005FAE4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_10000368C(&qword_1000EDA58, &qword_1000B7AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v30 = sub_10000368C(&qword_1000EDA60, &qword_1000B7AA8) - 8;
  __chkstk_darwin(v30);
  v29 = &v28 - v5;
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v28 = type metadata accessor for BlendMode();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005F8E0(v12);
  (*(v7 + 104))(v10, enum case for ColorScheme.dark(_:), v6);
  v16 = static ColorScheme.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);
  v18 = &enum case for BlendMode.plusLighter(_:);
  if ((v16 & 1) == 0)
  {
    v18 = &enum case for BlendMode.plusDarker(_:);
  }

  v19 = v28;
  (*(v13 + 104))(v15, *v18, v28);
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0x4024000000000000;
  v4[16] = 0;
  v20 = sub_10000368C(&qword_1000EDA68, &qword_1000B7AB0);
  sub_10005FE88(v15, v1, &v4[*(v20 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v29;
  sub_10001721C(v4, v29, &qword_1000EDA58, &qword_1000B7AA0);
  v22 = v31;
  v23 = (v21 + *(v30 + 44));
  v24 = v37;
  v23[4] = v36;
  v23[5] = v24;
  v23[6] = v38;
  v25 = v33;
  *v23 = v32;
  v23[1] = v25;
  v26 = v35;
  v23[2] = v34;
  v23[3] = v26;
  sub_10001721C(v21, v22, &qword_1000EDA60, &qword_1000B7AA8);
  return (*(v13 + 8))(v15, v19);
}

uint64_t sub_10005FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v77 = a1;
  v88 = a3;
  v4 = sub_10000368C(&qword_1000EDA70, &qword_1000B7AB8);
  v5 = v4 - 8;
  v76 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v85 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v71[-v8];
  v10 = sub_10000368C(&qword_1000EDA78, &qword_1000B7AC0) - 8;
  v73 = v10;
  v11 = __chkstk_darwin(v10);
  v87 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v90 = &v71[-v14];
  v15 = __chkstk_darwin(v13);
  v86 = &v71[-v16];
  v17 = __chkstk_darwin(v15);
  v89 = &v71[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v71[-v20];
  __chkstk_darwin(v19);
  v23 = &v71[-v22];
  v79 = &v71[-v22];
  v83 = sub_10000368C(&qword_1000EDA80, &qword_1000B7AC8);
  v24 = swift_allocObject();
  v82 = xmmword_1000B5700;
  *(v24 + 16) = xmmword_1000B5700;
  v81 = objc_opt_self();
  v25 = [v81 secondarySystemFillColor];
  *(v24 + 32) = Color.init(uiColor:)();
  *(v24 + 40) = static Color.clear.getter();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v80 = sub_10000368C(&qword_1000EDA88, &qword_1000B7AD0);
  v26 = *(v80 + 36);
  v75 = type metadata accessor for BlendMode();
  v27 = *(v75 - 8);
  v74 = *(v27 + 16);
  v78 = v27 + 16;
  v74(&v9[v26], a1, v75);
  *(v9 + 4) = v93;
  v28 = v92;
  *v9 = v91;
  *(v9 + 1) = v28;
  v29 = &v9[*(v5 + 44)];
  *v29 = 0x4024000000000000;
  *(v29 + 1) = 5;
  *(v29 + 8) = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v9, v21, &qword_1000EDA70, &qword_1000B7AB8);
  v30 = &v21[*(v10 + 44)];
  v31 = v99;
  v32 = v100;
  v30[4] = v98;
  v30[5] = v31;
  v30[6] = v32;
  v33 = v95;
  *v30 = v94;
  v30[1] = v33;
  v34 = v97;
  v30[2] = v96;
  v30[3] = v34;
  sub_10001721C(v21, v23, &qword_1000EDA78, &qword_1000B7AC0);
  v35 = (v84 + *(type metadata accessor for LiveLabelView(0) + 20));
  v36 = v35[1];
  *&v104 = *v35;
  *(&v104 + 1) = v36;
  sub_100020F58();

  v37 = Text.init<A>(_:)();
  v39 = v38;
  LOBYTE(v5) = v40;
  static Font.body.getter();
  v41 = Text.font(_:)();
  v43 = v42;
  LOBYTE(v24) = v44;

  sub_100021B08(v37, v39, v5 & 1);

  static Font.Weight.semibold.getter();
  v45 = Text.fontWeight(_:)();
  v47 = v46;
  v72 = v48;
  v84 = v49;
  sub_100021B08(v41, v43, v24 & 1);

  v50 = swift_allocObject();
  *(v50 + 16) = v82;
  *(v50 + 32) = static Color.clear.getter();
  v51 = [v81 secondarySystemFillColor];
  *(v50 + 40) = Color.init(uiColor:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v52 = v85;
  v74(&v85[*(v80 + 36)], v77, v75);
  *(v52 + 4) = v103;
  v53 = v102;
  *v52 = v101;
  *(v52 + 1) = v53;
  v54 = &v52[*(v76 + 44)];
  *v54 = 0x4024000000000000;
  *(v54 + 1) = 10;
  *(v54 + 8) = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v52;
  v56 = v86;
  sub_10001721C(v55, v86, &qword_1000EDA70, &qword_1000B7AB8);
  v57 = &v56[*(v73 + 44)];
  v58 = v109;
  v57[4] = v108;
  v57[5] = v58;
  v57[6] = v110;
  v59 = v105;
  *v57 = v104;
  v57[1] = v59;
  v60 = v107;
  v57[2] = v106;
  v57[3] = v60;
  v61 = v56;
  v62 = v89;
  sub_10001721C(v61, v89, &qword_1000EDA78, &qword_1000B7AC0);
  v63 = v79;
  v64 = v90;
  sub_1000077CC(v79, v90, &qword_1000EDA78, &qword_1000B7AC0);
  v65 = v87;
  sub_1000077CC(v62, v87, &qword_1000EDA78, &qword_1000B7AC0);
  v66 = v88;
  sub_1000077CC(v64, v88, &qword_1000EDA78, &qword_1000B7AC0);
  v67 = sub_10000368C(&qword_1000EDA90, &qword_1000B7AD8);
  v68 = v66 + *(v67 + 48);
  v69 = v66;
  *v68 = v45;
  *(v68 + 8) = v47;
  LOBYTE(v66) = v72 & 1;
  *(v68 + 16) = v72 & 1;
  *(v68 + 24) = v84;
  sub_1000077CC(v65, v69 + *(v67 + 64), &qword_1000EDA78, &qword_1000B7AC0);
  sub_100021B18(v45, v47, v66);

  sub_100007834(v89, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100007834(v63, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100007834(v65, &qword_1000EDA78, &qword_1000B7AC0);
  sub_100021B08(v45, v47, v66);

  return sub_100007834(v90, &qword_1000EDA78, &qword_1000B7AC0);
}

double sub_1000605F8@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  Path.init(_:)();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t (*sub_1000606E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10006076C;
}

void sub_10006076C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000607B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064CF4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006081C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064CF4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100060880(uint64_t a1)
{
  v2 = sub_100064CF4();

  return Shape.body.getter(a1, v2);
}

double sub_1000608CC()
{
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_100060984@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_100060A44(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100063868(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100060B8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void sub_100060BF4()
{
  v1 = v0;
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - v7;
  v9 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v10 = __chkstk_darwin(v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  v16 = __chkstk_darwin(v13);
  v19 = &v63 - v18;
  v20 = v1[3];
  if (v20)
  {
    v63 = v8;
    v64 = v6;
    v65 = v5;
    v66 = v17;
    v67 = v16;
    swift_getKeyPath();
    v68 = v20;
    sub_100063C7C(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v20[17] == 2)
    {
      sub_100061A5C(0xD000000000000011, 0x80000001000BC330);
      v21 = objc_opt_self();
      v22 = [v21 sharedApplication];
      v23 = [v22 delegate];

      if (v23)
      {
        type metadata accessor for AppDelegate(0);
        swift_dynamicCastClassUnconditional();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_unknownObjectRelease();
        v24 = v68;
        v25 = [v68 windowScene];

        v26 = v1[15];
        v1[15] = v25;
        v27 = v25;
        sub_100062EA4(v26);

        v28 = [v21 sharedApplication];
        v29 = [v28 delegate];

        if (v29)
        {
          swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
          v30 = v63;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_unknownObjectRelease();
          v31 = [objc_opt_self() mainRunLoop];
          v68 = v31;
          v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
          sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
          sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
          sub_10001ADF4();
          v33 = v65;
          Publisher.receive<A>(on:options:)();
          sub_100007834(v4, &unk_1000EC7E0, &unk_1000B5100);

          (*(v64 + 8))(v30, v33);
          swift_allocObject();
          swift_weakInit();
          sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
          v34 = v67;
          Publisher<>.sink(receiveValue:)();

          (*(v66 + 8))(v19, v34);
LABEL_13:
          swift_getKeyPath();
          v68 = v1;
          sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v68 = v1;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v68 = v1;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v68 = v20;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v20[16] != 1)
      {
        sub_100061A5C(0x2072657473756C43, 0xEE00746567646957);
        v49 = objc_opt_self();
        v50 = [v49 sharedApplication];
        v51 = [v50 delegate];

        if (v51)
        {
          type metadata accessor for AppDelegate(0);
          swift_dynamicCastClassUnconditional();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_unknownObjectRelease();
          v52 = v68;
          v53 = [v68 windowScene];

          v54 = v1[15];
          v1[15] = v53;
          v55 = v53;
          sub_100062EA4(v54);

          v56 = [v49 sharedApplication];
          v57 = [v56 delegate];

          if (v57)
          {
            swift_dynamicCastClassUnconditional();
            swift_beginAccess();
            sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
            v58 = v63;
            Published.projectedValue.getter();
            swift_endAccess();
            swift_unknownObjectRelease();
            v59 = [objc_opt_self() mainRunLoop];
            v68 = v59;
            v60 = type metadata accessor for NSRunLoop.SchedulerOptions();
            (*(*(v60 - 8) + 56))(v4, 1, 1, v60);
            sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
            sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
            sub_10001ADF4();
            v61 = v65;
            Publisher.receive<A>(on:options:)();
            sub_100007834(v4, &unk_1000EC7E0, &unk_1000B5100);

            (*(v64 + 8))(v58, v61);
            swift_allocObject();
            swift_weakInit();
            sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
            v62 = v67;
            Publisher<>.sink(receiveValue:)();

            (*(v66 + 8))(v12, v62);
            goto LABEL_13;
          }

LABEL_20:
          __break(1u);
          return;
        }

        goto LABEL_18;
      }

      sub_100061A5C(0xD000000000000010, 0x80000001000BC310);
      v35 = objc_opt_self();
      v36 = [v35 sharedApplication];
      v37 = [v36 delegate];

      if (v37)
      {
        type metadata accessor for AppDelegate(0);
        swift_dynamicCastClassUnconditional();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_unknownObjectRelease();
        v38 = v68;
        v39 = [v68 windowScene];

        v40 = v1[15];
        v1[15] = v39;
        v41 = v39;
        sub_100062EA4(v40);

        v42 = [v35 sharedApplication];
        v43 = [v42 delegate];

        if (v43)
        {
          swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
          v44 = v63;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_unknownObjectRelease();
          v45 = [objc_opt_self() mainRunLoop];
          v68 = v45;
          v46 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v46 - 8) + 56))(v4, 1, 1, v46);
          sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
          sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
          sub_10001ADF4();
          v47 = v65;
          Publisher.receive<A>(on:options:)();
          sub_100007834(v4, &unk_1000EC7E0, &unk_1000B5100);

          (*(v64 + 8))(v44, v47);
          swift_allocObject();
          swift_weakInit();
          sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
          v48 = v67;
          Publisher<>.sink(receiveValue:)();

          (*(v66 + 8))(v15, v48);
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_100061A5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100061BCC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 128);
    *(result + 128) = v2 ^ 1;
    if (v2 == v4)
    {
      sub_10006290C();
    }
  }

  return result;
}

uint64_t sub_100061C44()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    [v1 invalidate];
  }

  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC5MediaP33_B94F66D5E47EFF0D797EA644E6E4527820PlaybackTimeObserver___observationRegistrar;
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v0 + 16) = &_swiftEmptySetSingleton;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_100061DE8()
{
  v0 = sub_100061C44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100061E64()
{
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

double sub_100061F14@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_100061FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100062070(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1000621A8()
{
  v1 = v0;
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000ED710);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v13 = v6;
    sub_10000368C(&qword_1000ED948, &unk_1000B78B8);
    v7 = String.init<A>(describing:)();
    v9 = sub_100043AF0(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_100006960(v6);
  }

  v10 = static Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + 144) = v11;
  sub_100062344(v10);
  return sub_10006290C();
}

void sub_100062344(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (v2 == 2)
  {
    if (qword_1000EAD28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006928(v3, qword_1000ED710);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31[0] = v7;
      *v6 = 136446210;
      swift_getKeyPath();
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
      v8 = Optional<A>.description.getter();
      v10 = sub_100043AF0(v8, v9, v31);

      *(v6 + 4) = v10;
      sub_100006960(v7);
    }

    v11 = *(v1 + 56);
    if (v11 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

LABEL_14:
    *(v1 + 48) = 0;
    *(v1 + 56) = v11;
    return;
  }

  if (v2)
  {
    if (qword_1000EAD28 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006928(v12, qword_1000ED710);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446210;
      swift_getKeyPath();
      sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
      v17 = Optional<A>.description.getter();
      v19 = sub_100043AF0(v17, v18, v31);

      *(v15 + 4) = v19;
      sub_100006960(v16);
    }

    v11 = *(v1 + 56);
    if (v11 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v20 = *(v1 + 88);
  v21 = *(v1 + 104);
  if (v20 <= 0.0)
  {
    v26 = 0.0;
  }

  else
  {
    v22 = *(v1 + 96);
    v23 = *(v1 + 64);
    static Date.timeIntervalSinceReferenceDate.getter();
    v25 = v22 + (v24 - v23) * v21;
    if (v25 >= v20)
    {
      v25 = v20;
    }

    v26 = fmax(v25, 0.0) / v20;
  }

  sub_100062070(*&v26, 0);
  static Date.timeIntervalSinceReferenceDate.getter();
  v29 = vabdd_f64(v28, *(v1 + 144));
  v30 = fabsf(v21);
  if (v30 <= 1.0)
  {
    v30 = 1.0;
  }

  if (v29 >= (1.0 / v30))
  {
    *(v1 + 144) = v28;
  }
}

uint64_t sub_10006290C()
{
  v1 = v0;
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000ED710);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136446210;
    swift_getKeyPath();
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v7 = Optional<A>.description.getter();
    v9 = sub_100043AF0(v7, v8, &v35);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "📺 %{public}s: Updating DisplayLink…", v5, 0xCu);
    sub_100006960(v6);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = *(v1 + 128);

    _os_log_impl(&_mh_execute_header, v10, v11, "   — isBackgrounded: %{BOOL,public}d", v12, 8u);
  }

  else
  {
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = *(v1 + 112);
  if (v14 == 2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "   — Null Snapshot", v17, 2u);
    }
  }

  else if ((*(v1 + 128) & 1) == 0)
  {
    v18 = *(v1 + 104);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v34 = v18;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100043AF0(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "   — Snapshot: %{public}s", v21, 0xCu);
      sub_100006960(v22);

      v18 = v34;
    }

    v26 = v18 & 0x7FFFFFFF;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67240192;
      *(v29 + 4) = v14 & 1;
      _os_log_impl(&_mh_execute_header, v27, v28, "   — isLiveContent: %{BOOL,public}d", v29, 8u);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = v26 == 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "   — isRateNull: %{BOOL,public}d", v32, 8u);
    }

    *(v13 + 16) = v14 & 1 | (v26 == 0);
  }

  sub_10006451C(v13, v1);
}

void sub_100062EA4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 120);
  if (v4)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_100005A50(0, &qword_1000ECF30, UIWindowScene_ptr);
    v5 = v4;
    v3 = v3;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 120);
    if (v4)
    {
LABEL_5:
      v7 = qword_1000EAD28;
      v8 = v4;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006928(v9, qword_1000ED710);
      v10 = v8;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v13 = 136446466;
        swift_getKeyPath();
        sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v49 = *(v2 + 32);
        sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
        v14 = Optional<A>.description.getter();
        v16 = sub_100043AF0(v14, v15, &v51);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2082;
        v17 = v10;
        v18 = [v17 description];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_100043AF0(v19, v21, &v51);

        *(v13 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
        swift_arrayDestroy();
      }

      v23 = [v10 activationState] == 2;
      v24 = *(v2 + 128);
      *(v2 + 128) = v23;
      if (v23 != v24)
      {
        sub_10006290C();
      }

      v25 = [v10 screen];
      v26 = [v25 displayLinkWithTarget:v2 selector:"updateElapsedDuration"];

      if (v26)
      {
        v27 = objc_opt_self();
        v28 = v26;
        v29 = [v27 mainRunLoop];
        [v28 addToRunLoop:v29 forMode:NSRunLoopCommonModes];

        [v28 setPaused:1];
        v30 = v28;
        [v30 setPreferredFramesPerSecond:15];
      }

      v31 = *(v2 + 136);
      *(v2 + 136) = v26;

      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v32 = qword_1000EAD28;
  v33 = v3;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006928(v34, qword_1000ED710);
  v35 = v33;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v38 = 136446466;
    swift_getKeyPath();
    sub_100063C7C(&qword_1000ED828, type metadata accessor for PlaybackTimeObserver, &unk_1000B76B0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = *(v2 + 32);
    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v39 = Optional<A>.description.getter();
    v41 = sub_100043AF0(v39, v40, &v51);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2082;
    v42 = v35;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_100043AF0(v44, v46, &v51);

    *(v38 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Removed windowScene=%{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v48 = *(v2 + 128);
  *(v2 + 128) = 1;
  if ((v48 & 1) == 0)
  {
    sub_10006290C();
  }
}

uint64_t sub_10006352C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100063610()
{
  v0 = type metadata accessor for Logger();
  sub_100014D80(v0, qword_1000ED710);
  v1 = sub_100006928(v0, qword_1000ED710);
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006928(v0, qword_1000F3BA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100063710()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_100063724()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = xmmword_1000B75B0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000637B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100061A5C(v1, v2);
}

uint64_t sub_1000637F8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_100063868(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1000EAE58;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_100063C7C(&qword_1000EAE58, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_100063C7C(&qword_1000EAE60, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
          while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1000EAE58;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_100063B78(v8, v7);
}

uint64_t sub_100063B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100063CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100063DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100063EA0(uint64_t a1)
{
  sub_100063FCC(319, &unk_1000EC1A8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100063FCC(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100063FCC(319, &unk_1000ED898, type metadata accessor for PlaybackTimeObserver, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100063FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100064084()
{
  v1 = type metadata accessor for MediaProgressView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100064218()
{
  result = qword_1000ED908;
  if (!qword_1000ED908)
  {
    sub_100005780(&qword_1000ED8D0, &qword_1000B77B8);
    sub_1000642A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED908);
  }

  return result;
}

unint64_t sub_1000642A4()
{
  result = qword_1000ED910;
  if (!qword_1000ED910)
  {
    sub_100005780(&qword_1000ED8F8, &qword_1000B7810);
    sub_100005870(&qword_1000ED918, &qword_1000ED920, &qword_1000B7850, &protocol conformance descriptor for VStack<A>);
    sub_100005870(&qword_1000ED928, &qword_1000ED900, &unk_1000B7818, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED910);
  }

  return result;
}

unint64_t sub_1000643EC()
{
  result = qword_1000ED930;
  if (!qword_1000ED930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED930);
  }

  return result;
}

uint64_t sub_100064448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000644B0(uint64_t a1)
{
  v2 = type metadata accessor for LiveLabelView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006451C(uint64_t a1, uint64_t a2)
{
  if (qword_1000EAD28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000ED710);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    v8 = *(a2 + 136);
    if (!v8)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = swift_slowAlloc();
  *v7 = 67240192;
  swift_beginAccess();
  *(v7 + 4) = *(a1 + 16);

  _os_log_impl(&_mh_execute_header, v5, v6, " -> should pause: %{BOOL,public}d", v7, 8u);

  v8 = *(a2 + 136);
  if (v8)
  {
LABEL_7:
    swift_beginAccess();
    [v8 setPaused:*(a1 + 16)];
  }
}

uint64_t sub_100064698()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000647F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000648B8(uint64_t a1)
{
  sub_100063FCC(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100064960()
{
  result = qword_1000EDA48;
  if (!qword_1000EDA48)
  {
    sub_100005780(&qword_1000EDA50, &qword_1000B7A48);
    sub_100063C7C(&qword_1000ED938, type metadata accessor for LiveLabelView, &unk_1000B7A50);
    sub_100005780(&qword_1000ED8D8, &qword_1000B77C0);
    sub_100005780(&qword_1000ED8D0, &qword_1000B77B8);
    sub_100064218();
    sub_100036F74();
    swift_getOpaqueTypeConformance2();
    sub_1000643EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDA48);
  }

  return result;
}

unint64_t sub_100064AF0()
{
  result = qword_1000EDA98;
  if (!qword_1000EDA98)
  {
    sub_100005780(&qword_1000EDA60, &qword_1000B7AA8);
    sub_100005870(&qword_1000EDAA0, &qword_1000EDA58, &qword_1000B7AA0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDA98);
  }

  return result;
}

unint64_t sub_100064BF0()
{
  result = qword_1000EDAB8;
  if (!qword_1000EDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAB8);
  }

  return result;
}

unint64_t sub_100064C48()
{
  result = qword_1000EDAC0;
  if (!qword_1000EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAC0);
  }

  return result;
}

unint64_t sub_100064CA0()
{
  result = qword_1000EDAC8;
  if (!qword_1000EDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAC8);
  }

  return result;
}

unint64_t sub_100064CF4()
{
  result = qword_1000EDAD0;
  if (!qword_1000EDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDAD0);
  }

  return result;
}

uint64_t sub_100064D70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100064DB4(unint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_32:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v6 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v38 = isUniquelyReferenced_nonNull_native;
      v39 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v40 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v41 = v3;
      do
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_29;
          }

          v7 = *(isUniquelyReferenced_nonNull_native + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v10 = [v7 identifier];
        if (v10)
        {
          v11 = v10;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v14 = [v8 imageData];
          if (v14)
          {
            v45 = v13;
            v15 = v14;
            v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v18 = v17;

            v19 = objc_allocWithZone(UIImage);
            sub_1000725CC(v16, v18);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v21 = [v19 initWithData:isa];

            sub_100072620(v16, v18);
            if (v21)
            {
              v42 = v21;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v22 = *a2;
              v24 = sub_1000275D8(v44, v13);
              v25 = v22[2];
              v26 = (v23 & 1) == 0;
              v27 = v25 + v26;
              if (__OFADD__(v25, v26))
              {
                goto LABEL_30;
              }

              v28 = v23;
              if (v22[3] >= v27)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100072458();
                }
              }

              else
              {
                sub_100027A84(v27, isUniquelyReferenced_nonNull_native);
                v29 = sub_1000275D8(v44, v45);
                if ((v28 & 1) != (v30 & 1))
                {
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return;
                }

                v24 = v29;
              }

              isUniquelyReferenced_nonNull_native = v38;
              if (v28)
              {
                v31 = v22[7];
                v32 = *(v31 + 8 * v24);
                *(v31 + 8 * v24) = v42;
                v33 = v42;
              }

              else
              {
                v22[(v24 >> 6) + 8] |= 1 << v24;
                v34 = (v22[6] + 16 * v24);
                *v34 = v44;
                v34[1] = v45;
                *(v22[7] + 8 * v24) = v42;
                v35 = v22[2];
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_31;
                }

                v33 = v42;
                v22[2] = v37;
              }

              *a2 = v22;
              sub_100072620(v16, v18);
            }

            else
            {
              sub_100072620(v16, v18);
            }

            v5 = v40;
            v3 = v41;
            v6 = v39;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v4;
      }

      while (v9 != v3);
    }
  }
}

uint64_t sub_100065128(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065320(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000EC8A0, &qword_1000B6110);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065518(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065710(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000658D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100065970(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065B54(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065D38(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100065F30(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100066168(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10006D0AC(a1);
}

uint64_t sub_100066274(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EE018, &qword_1000B8140);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000664A0(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000666A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NowPlayingObserver.dialableStationStrings.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NowPlayingObserver.dialableStationStrings.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10003E708;
}

uint64_t NowPlayingObserver.$dialableStationStrings.setter(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NowPlayingObserver.$dialableStationStrings.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Media18NowPlayingObserver__dialableStationStrings;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10003EA34;
}

uint64_t sub_100066B30@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100066BC0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100066C44(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100066CB8(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t NowPlayingObserver.preferredArtworkSize.getter()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void NowPlayingObserver.preferredArtworkSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void NowPlayingObserver.car.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_10006A4AC();
}

void (*NowPlayingObserver.car.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver_car;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10006708C;
}

void sub_10006708C(id **a1, char a2)
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

    sub_10006A4AC();
  }

  free(v3);
}

double NowPlayingObserver.mediaSourceObservers.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t NowPlayingObserver.mediaSourceObservers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NowPlayingObserver.isNowPlayingOnlySource.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v0 = [v7 currentMediaSourceIdentifier], v7, v0))
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;

    if (v1 == 0x59414C505F574F4ELL && v3 == 0xEB00000000474E49)
    {

      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100067334(void *a1, void *a2)
{
  v3 = v2;
  v109 = a1;
  v110 = a2;
  v100 = type metadata accessor for NSNotificationCenter.Publisher();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000368C(&qword_1000EE000, &unk_1000B8130);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v98 = &v78 - v6;
  v7 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v7 - 8);
  v108 = &v78 - v8;
  v93 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v78 - v9;
  v96 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v95 = *(v96 - 1);
  __chkstk_darwin(v96);
  v94 = &v78 - v10;
  v11 = sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin(v11);
  v105 = &v78 - v12;
  v13 = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v90 = &v78 - v14;
  v81 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v89 = *(v81 - 8);
  __chkstk_darwin(v81);
  v88 = &v78 - v15;
  v87 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v16 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v78 - v17;
  v80 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v19 = &v78 - v18;
  v20 = sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v78 - v22;
  v24 = sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v84 = v24;
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v78 - v26;
  v28 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSource;
  aBlock[0] = 0;
  v86 = sub_10000368C(&qword_1000EB998, &qword_1000B7C40);
  Published.init(initialValue:)();
  v29 = *(v25 + 32);
  v83 = v25 + 32;
  v85 = v29;
  v29(v3 + v28, v27, v24);
  v30 = OBJC_IVAR____TtC5Media18NowPlayingObserver__lastSnapshot;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EDAE0, &qword_1000B7C98);
  Published.init(initialValue:)();
  v31 = v81;
  (*(v21 + 32))(v3 + v30, v23, v20);
  v32 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artwork;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  (*(v79 + 32))(v3 + v32, v19, v80);
  v33 = OBJC_IVAR____TtC5Media18NowPlayingObserver__playingStation;
  aBlock[0] = 0;
  sub_10000368C(&qword_1000EC5B0, &qword_1000B7D80);
  v34 = v82;
  Published.init(initialValue:)();
  (*(v16 + 32))(v3 + v33, v34, v87);
  v35 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSourceEnabled;
  LOBYTE(aBlock[0]) = 1;
  v36 = v88;
  Published.init(initialValue:)();
  v37 = *(v89 + 32);
  v37(v3 + v35, v36, v31);
  v38 = OBJC_IVAR____TtC5Media18NowPlayingObserver__carOwnsMainAudio;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v37(v3 + v38, v36, v31);
  v39 = OBJC_IVAR____TtC5Media18NowPlayingObserver__mediaSourceTitles;
  aBlock[0] = _swiftEmptyArrayStorage;
  v40 = sub_10000368C(&qword_1000EDB18, &qword_1000B7E70);
  v41 = v90;
  v89 = v40;
  Published.init(initialValue:)();
  (*(v103 + 32))(v3 + v39, v41, v104);
  v42 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artworkCache;
  aBlock[0] = sub_100044148(_swiftEmptyArrayStorage);
  sub_10000368C(&qword_1000EDB28, &qword_1000B7EC8);
  v43 = v105;
  Published.init(initialValue:)();
  v106[4](v3 + v42, v43, v107);
  v44 = OBJC_IVAR____TtC5Media18NowPlayingObserver__targetSource;
  aBlock[0] = 0;
  Published.init(initialValue:)();
  v85(v3 + v44, v27, v84);
  v45 = OBJC_IVAR____TtC5Media18NowPlayingObserver__isCallActive;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v37(v3 + v45, v36, v31);
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v46 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v46 = &_swiftEmptySetSingleton;
  }

  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet) = v46;
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager) = 0;
  v47 = OBJC_IVAR____TtC5Media18NowPlayingObserver_callObserver;
  *(v3 + v47) = [objc_allocWithZone(type metadata accessor for CallObserver(0)) init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize) = 500;
  swift_beginAccess();
  v112 = _swiftEmptyArrayStorage;
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v112 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  swift_endAccess();
  v48 = [v110 currentSession];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 carOwnsMainAudio];
  }

  else
  {
    v50 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v50;

  static Published.subscript.setter();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = objc_allocWithZone(CAFNowPlayingManager);
  aBlock[4] = sub_100073194;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031AE4;
  aBlock[3] = &unk_1000E1398;
  v53 = _Block_copy(aBlock);

  v54 = [v52 initWithObserver:v53];
  _Block_release(v53);

  v55 = *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
  *(v3 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager) = v54;

  swift_beginAccess();
  v56 = v91;
  Published.projectedValue.getter();
  swift_endAccess();
  v57 = objc_opt_self();
  v90 = v57;
  v58 = [v57 mainRunLoop];
  aBlock[0] = v58;
  v107 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v59 = *(v107 - 8);
  v60 = *(v59 + 56);
  v105 = (v59 + 56);
  v106 = v60;
  v61 = v108;
  (v60)(v108, 1, 1, v107);
  v104 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
  v103 = sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v62 = v94;
  v63 = v93;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v61, &unk_1000EC7E0, &unk_1000B5100);

  (*(v92 + 8))(v56, v63);
  swift_allocObject();
  swift_weakInit();
  sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v64 = v96;
  Publisher<>.sink(receiveValue:)();

  (*(v95 + 8))(v62, v64);
  v65 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v96 = objc_opt_self();
  v66 = [v96 defaultCenter];
  v67 = v97;
  NSNotificationCenter.publisher(for:object:)();

  v68 = [v57 mainRunLoop];
  aBlock[0] = v68;
  v69 = v61;
  (v106)(v61, 1, 1, v107);
  v95 = sub_10007310C(&qword_1000EE008, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v70 = v98;
  v71 = v100;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v69, &unk_1000EC7E0, &unk_1000B5100);

  v99 = *(v99 + 8);
  (v99)(v67, v71);
  swift_allocObject();
  swift_weakInit();
  v94 = sub_100005870(&qword_1000EE010, &qword_1000EE000, &unk_1000B8130, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v72 = v102;
  Publisher<>.sink(receiveValue:)();

  v101 = *(v101 + 8);
  (v101)(v70, v72);
  v93 = v65;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73 = [v96 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v74 = [v90 mainRunLoop];
  aBlock[0] = v74;
  v75 = v108;
  (v106)(v108, 1, 1, v107);
  Publisher.receive<A>(on:options:)();
  sub_100007834(v75, &unk_1000EC7E0, &unk_1000B5100);

  (v99)(v67, v71);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v101)(v70, v72);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();

  v76 = v109;
  if (v109)
  {
    sub_10006A4AC();
  }

  return v3;
}

uint64_t sub_100068654(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3BD0);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received car now playing snapshot %{public}@", v8, 0xCu);
      sub_100007834(v9, &unk_1000EE230, &qword_1000BA550);
    }

    sub_1000687D8(v5);
  }

  return result;
}

void sub_1000687D8(void *a1)
{
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v87 = v7;
    *v6 = 136446210;
    v8 = [v3 currentMediaSourceIdentifier];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    v10 = Optional<A>.description.getter();
    v12 = v11;

    v13 = sub_100043AF0(v10, v12, &v87);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing now playing snapshot with source identifier %{public}s", v6, 0xCu);
    sub_100006960(v7);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v3;

  static Published.subscript.setter();
  sub_10006DDBC();
  v15 = [v14 currentMediaSourceIdentifier];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    v87 = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v87 = 0;

    static Published.subscript.setter();
    if (NowPlayingObserver.isNowPlayingOnlySource.getter())
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received now-playing-only snapshot update.", v32, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v87 = 0;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v87) = 1;

      static Published.subscript.setter();
      NowPlayingObserver.emitFinalizedIfNeeded()();
    }

    else
    {
      v33 = v14;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v87 = v37;
        *v36 = 136446210;
        v38 = [v33 currentMediaSourceIdentifier];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v42 = 0xE600000000000000;
          v40 = 0x29656E6F6E28;
        }

        v57 = sub_100043AF0(v40, v42, &v87);

        *(v36 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v34, v35, "No known media source with identifier %{public}s", v36, 0xCu);
        sub_100006960(v37);
      }

      sub_100070F04();
    }

    return;
  }

  v18 = Strong;
  v19 = [Strong mediaSourceWithIdentifier:v16];

  if (!v19)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v87;
  v21 = &off_1000E7000;
  if (v87)
  {
    v22 = [v87 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = [v19 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v23 == v27 && v25 == v29)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        v58 = v19;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = v86;
          *v47 = 136446210;
          v59 = [v58 identifier];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v19;
          v63 = v62;

          v64 = sub_100043AF0(v60, v63, &v87);
          v19 = v61;

          *(v47 + 4) = v64;
          v56 = "Car has transitioned to an unexpected source: %{public}s";
          goto LABEL_31;
        }

LABEL_32:

        v21 = &off_1000E7000;
        goto LABEL_33;
      }
    }

    v44 = v20;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v47 = 136446210;
      v48 = [v44 identifier];
      v49 = v20;
      v50 = v19;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = v51;
      v19 = v50;
      v20 = v49;
      v55 = sub_100043AF0(v54, v53, &v87);

      *(v47 + 4) = v55;
      v56 = "Car has transitioned to target source %{public}s";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v45, v46, v56, v47, 0xCu);
      sub_100006960(v86);

      v21 = &off_1000E7000;

LABEL_33:
      swift_getKeyPath();
      swift_getKeyPath();
      v87 = 0;

      static Published.subscript.setter();

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_34:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v65 = v87;
  if (v87)
  {
    v66 = [v19 v21[233]];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = [v65 v21[233]];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (v67 == v71 && v69 == v73)
    {

LABEL_39:
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Snapshot updated, but current source is still the same.", v77, 2u);
      }

      sub_10006E488();
      sub_10006D88C();
      NowPlayingObserver.emitFinalizedIfNeeded()();

      return;
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v74)
    {
      goto LABEL_39;
    }
  }

  v78 = v19;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138543362;
    *(v81 + 4) = v78;
    *v82 = v19;
    v83 = v78;
    _os_log_impl(&_mh_execute_header, v79, v80, "Applying now playing snapshot with new source %{public}@", v81, 0xCu);
    sub_100007834(v82, &unk_1000EE230, &qword_1000BA550);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v87 = _swiftEmptyDictionarySingleton;

  static Published.subscript.setter();
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10006D0AC(v87);

  v84 = [v78 disabled] ^ 1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v87) = v84;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v19;

  v85 = v78;
  static Published.subscript.setter();
  sub_10006CC20(v85);
}

uint64_t sub_100069464(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000694F0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10006957C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v37)
  {
    return 0;
  }

  v0 = [v37 mediaSourceSemanticType];
  if (v0 > 3)
  {
    if ((v0 - 4) < 2 || v0 == 7)
    {
      [v37 mediaSourceSemanticType];
      v2 = CAFMediaSourceSemanticType.title.getter();

      return v2;
    }

LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v13 = [*&v37[v12] mediaItemCategoryUserVisibleLabel];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        goto LABEL_24;
      }
    }

    v19 = [*&v37[v12] mediaItemCategory];

    if (v19)
    {
LABEL_24:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v20 = v36;
      if (v36)
      {
        v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v22 = [*(v36 + v21) mediaItemCategoryUserVisibleLabel];
        if (!v22)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }
    }

LABEL_45:

    return 0;
  }

  if (!v0)
  {
    v9 = [v37 userVisibleLabel];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_49:
      return v11;
    }

    goto LABEL_45;
  }

  if (v0 != 3)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong nowPlayingInformation];

    if (v6)
    {
      v7 = [v6 nowPlaying];

      if (v7)
      {
        if ([v7 hasPlaybackState])
        {
          v8 = [v7 playbackState] == 1;
        }

        else
        {
          v8 = 1;
        }

        if ([v7 hasNextItem])
        {
          v23 = [v7 nextItemDisabled];

          if (v23 & v8)
          {
            goto LABEL_45;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v36)
  {
LABEL_39:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v36;
    if (v36)
    {
      v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v22 = [*(v36 + v21) mediaItemCategoryUserVisibleLabel];
      if (!v22)
      {
LABEL_48:
        v11 = sub_1000820E4([*(v20 + v21) mediaItemCategory]);

        goto LABEL_49;
      }

LABEL_41:
      v31 = v22;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {

        return v32;
      }

      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v25 = [*(v36 + v24) mediaItemCategoryUserVisibleLabel];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      goto LABEL_38;
    }
  }

  if ([*(v36 + v24) mediaItemCategory])
  {
LABEL_38:

    goto LABEL_39;
  }

  return 0;
}

void sub_100069AE0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_20;
    }

    v6 = Strong;
    v7 = CAFCar.nowPlaying.getter();

    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = [v7 currentMediaSourceIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == a1 && v11 == a2)
    {

      goto LABEL_20;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {

LABEL_20:
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006928(v17, qword_1000F3BD0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_100043AF0(a1, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v18, v19, "Already on source %{public}s", v20, 0xCu);
        sub_100006960(v21);
      }

      return;
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22 && (v23 = v22, v24 = String._bridgeToObjectiveC()(), v25 = [v23 mediaSourceWithIdentifier:v24], v23, v24, v25))
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006928(v26, qword_1000F3B70);
      v27 = v25;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        *(v30 + 4) = v27;
        *v31 = v25;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Initiating media source change to %{public}@", v30, 0xCu);
        sub_100007834(v31, &unk_1000EE230, &qword_1000BA550);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v27;

      static Published.subscript.setter();
      v34 = String._bridgeToObjectiveC()();
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = a2;
      aBlock[4] = sub_10007318C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009959C;
      aBlock[3] = &unk_1000E1370;
      v36 = _Block_copy(aBlock);

      [v7 changeMediaSourceWithIdentifier:v34 completion:v36];
      _Block_release(v36);
    }

    else
    {
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006928(v37, qword_1000F3BD0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_100043AF0(a1, a2, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "No available media source with identifier %{public}s", v40, 0xCu);
        sub_100006960(v41);
      }
    }
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006928(v14, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Can't change source to an empty identifier.", v16, 2u);
    }
  }
}

void sub_10006A168(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3B70);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_100043AF0(a2, a3, &v17);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error changing media source to %{public}s: %{public}@", v8, 0x16u);
      sub_100007834(v9, &unk_1000EE230, &qword_1000BA550);

      sub_100006960(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006928(v12, qword_1000F3B70);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100043AF0(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Changed media source successfully to %{public}s!", v14, 0xCu);
      sub_100006960(v15);
    }

    else
    {
    }
  }
}

void sub_10006A4AC()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (!v3)
  {
    goto LABEL_52;
  }

  v4 = sub_1000ACA04();
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    if (qword_1000EAD48 != -1)
    {
      swift_once();
    }

    sub_1000922F8(3u);
  }

  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006928(v7, qword_1000F3BD0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Already registered observers for media.", v10, 2u);
      }

      goto LABEL_49;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0;
    goto LABEL_31;
  }

  v12 = Strong;
  v13 = [Strong media];

  if (!v13)
  {
    v14 = 0;
    goto LABEL_31;
  }

  v14 = [v13 mediaSources];

  if (v14)
  {
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_19:
        v27 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v16 & 0x8000000000000000) == 0)
        {
          v17 = 0;
          do
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v15 + 8 * v17 + 32);
            }

            ++v17;
            v19 = v18;
            swift_getAtKeyPath();

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v16 != v17);

          v14 = v27;
          goto LABEL_31;
        }

        __break(1u);
LABEL_52:
        __break(1u);
        return;
      }
    }

    v14 = _swiftEmptyArrayStorage;
  }

LABEL_31:
  *(v1 + v5) = v14;

  if (v14)
  {
    if (v14 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v22 = *(v14 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v27 = v22;
        sub_10006A964(&v27, v1);

        ++v21;
        if (v24 == i)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_45:
  }

  sub_10006C8D0();
  v25 = *(v1 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
  if (v25)
  {
    v26 = [v25 lastSnapshot];
    if (v26)
    {
      v8 = v26;
      sub_1000687D8(v26);
LABEL_49:
    }
  }
}

uint64_t sub_10006A964(void **a1, uint64_t a2)
{
  v89 = a2;
  v3 = sub_10000368C(&qword_1000EE020, &qword_1000B81C8);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v66 - v4;
  v5 = sub_10000368C(&qword_1000EE028, &qword_1000B81D0);
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v74 = &v66 - v6;
  v80 = sub_10000368C(&qword_1000EE030, &qword_1000B81D8);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v66 - v7;
  v83 = sub_10000368C(&qword_1000EE038, &qword_1000B81E0);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v66 - v8;
  v9 = sub_10000368C(&qword_1000EE040, &qword_1000B81E8);
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v66 - v10;
  v11 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v11 - 8);
  v66 = &v66 - v12;
  v69 = sub_10000368C(&qword_1000EE048, &qword_1000B81F0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v13;
  v71 = sub_10000368C(&qword_1000EE050, &qword_1000B81F8);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = &v66 - v14;
  v90 = sub_10000368C(&qword_1000EE058, &qword_1000B8200);
  v73 = *(v90 - 8);
  __chkstk_darwin(v90);
  v72 = &v66 - v16;
  v17 = *a1;
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006928(v18, qword_1000F3BD0);
  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v22 = 136446466;
    v23 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v25 = sub_100043AF0(v23, v24, v91);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v27 = sub_100083338(v26);
    v29 = sub_100043AF0(v27, v28, v91);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Registering observers for Media source %{public}s %{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v91[0] = dispatch thunk of CAFMediaSourceObservable.$mediaItems.getter();
  sub_10000368C(&qword_1000EE060, &qword_1000B8208);
  sub_10000368C(&qword_1000EE068, &qword_1000B8210);
  sub_100005870(&qword_1000EE070, &qword_1000EE060, &qword_1000B8208, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  v30 = swift_allocObject();
  v31 = v89;
  *(v30 + 16) = v19;
  *(v30 + 24) = v31;
  v32 = v19;

  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  v33 = v72;
  v34 = v71;
  Publishers.CompactMap.map<A>(_:)();

  (*(v70 + 8))(v15, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v31;
  sub_100005870(&qword_1000EE078, &qword_1000EE058, &qword_1000B8200, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v36 = v32;

  v37 = v90;
  Publisher<>.sink(receiveValue:)();

  v73[1](v33, v37);
  v38 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
  swift_beginAccess();
  v90 = v38;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v39 = CAFMediaSourceObservable.observed.getter();
  v40 = [v39 hasUserVisibleLabel];

  if (v40)
  {
    v73 = dispatch thunk of CAFMediaSourceObservable.$userVisibleLabel.getter();
    v91[0] = v73;
    v41 = [objc_opt_self() mainRunLoop];
    v92 = v41;
    v42 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v43 = v66;
    (*(*(v42 - 8) + 56))(v66, 1, 1, v42);
    sub_10000368C(&qword_1000EE0B8, &qword_1000B8260);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&qword_1000EE0C8, &qword_1000EE0B8, &qword_1000B8260, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v44 = v67;
    Publisher.receive<A>(on:options:)();
    sub_100007834(v43, &unk_1000EC7E0, &unk_1000B5100);

    sub_100005870(&unk_1000EE0E0, &qword_1000EE048, &qword_1000B81F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v45 = v69;
    Publisher<>.sink(receiveValue:)();

    (*(v68 + 8))(v44, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v91[0] = dispatch thunk of CAFMediaSourceObservable.$mediaItemImages.getter();
  sub_10000368C(&qword_1000EE080, qword_1000B8218);
  sub_100005A50(0, &qword_1000EE088, CAFMediaItemImages_ptr);
  v73 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005870(&qword_1000EE090, &qword_1000EE080, qword_1000B8218, &protocol conformance descriptor for AnyPublisher<A, B>);
  v46 = v74;
  Publisher.compactMap<A>(_:)();

  swift_getKeyPath();
  sub_100005870(&qword_1000EE098, &qword_1000EE028, &qword_1000B81D0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v47 = v76;
  v48 = v77;
  Publisher.map<A>(_:)();

  (*(v75 + 8))(v46, v47);
  v49 = swift_allocObject();
  v50 = v89;
  *(v49 + 16) = v89;
  *(v49 + 24) = v36;
  sub_100005870(&qword_1000EE0A0, &qword_1000EE030, &qword_1000B81D8, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v51 = v36;

  v53 = v79;
  v52 = v80;
  Publisher.filter(_:)();

  (*(v78 + 8))(v48, v52);
  sub_10000368C(&qword_1000EDB28, &qword_1000B7EC8);
  sub_100005870(&qword_1000EE0A8, &qword_1000EE038, &qword_1000B81E0, &protocol conformance descriptor for Publishers.Filter<A>);
  v55 = v82;
  v54 = v83;
  Publisher.map<A>(_:)();
  (*(v81 + 8))(v53, v54);
  swift_getKeyPath();
  v91[0] = v50;
  sub_100005870(&qword_1000EE0B0, &qword_1000EE040, &qword_1000B81E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v85;
  Publisher<>.assign<A>(to:on:)();

  (*(v84 + 8))(v55, v56);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v91[0] = dispatch thunk of CAFMediaSourceObservable.$disabled.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = v50;
  v58 = v51;

  sub_10000368C(&qword_1000ED170, &qword_1000B6CD8);
  v59 = v73;
  sub_100005870(&qword_1000ED178, &qword_1000ED170, &qword_1000B6CD8, v73);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v91[0] = dispatch thunk of CAFMediaSourceObservable.$userVisibleLabel.getter();
  v92 = dispatch thunk of CAFMediaSourceObservable.$mediaSourceSemanticType.getter();
  sub_10000368C(&qword_1000EE0B8, &qword_1000B8260);
  sub_10000368C(&qword_1000EE0C0, &qword_1000B8268);
  sub_100005870(&qword_1000EE0C8, &qword_1000EE0B8, &qword_1000B8260, v59);
  sub_100005870(&qword_1000EE0D0, &qword_1000EE0C0, &qword_1000B8268, v59);
  v60 = v86;
  Publishers.CombineLatest.init(_:_:)();
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  *(v61 + 24) = v50;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_100073334;
  *(v62 + 24) = v61;
  sub_100005870(&qword_1000EE0D8, &qword_1000EE020, &qword_1000B81C8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v63 = v58;

  v64 = v88;
  Publisher<>.sink(receiveValue:)();

  (*(v87 + 8))(v60, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10006BA08(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 mediaItems];
    sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10006BA88(unint64_t *a1@<X0>, uint64_t *a2@<X1>, char **a4@<X8>)
{
  v5 = *a1;
  if (qword_1000EACE0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100006928(v6, qword_1000F3B70);

  v8 = a2;
  a2 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = v5 >> 62;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v12 = 134349570;
    if (v11)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    *(v12 + 12) = 2082;
    v14 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v16 = sub_100043AF0(v14, v15, v32);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    v18 = sub_100083338(v17);
    a2 = v19;
    v20 = sub_100043AF0(v18, v19, v32);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received %{public}ld media items for source %{public}s %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v32[0] = _swiftEmptyArrayStorage;
  if (v11)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_9:
      v22 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v26 = v32[0];
            goto LABEL_25;
          }
        }

        else
        {
          if (v22 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v23 = *(v5 + 8 * v22 + 32);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_19;
          }
        }

        v25 = v23;
        a2 = sub_100083460();

        if (a2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a2 = v32;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v22;
        if (v24 == v21)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = CAFMediaSourceObservable.observed.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = sub_100072F1C(v27, v26);

    *a4 = v30;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006BDD4(unint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B70);

  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134349570;
    v30 = v10;
    if (v4 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v11;

    *(v9 + 12) = 2082;
    v12 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v14 = sub_100043AF0(v12, v13, &v30);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v16 = sub_100083338(v15);
    v18 = sub_100043AF0(v16, v17, &v30);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Mapped to %{public}ld media items for source %{public}s %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v30;
  if (v30)
  {
    v20 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v22 = v21;
    v23 = [v19 identifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v20 == v24 && v22 == v26)
    {

LABEL_13:
      sub_10006D0AC(v4);
      goto LABEL_17;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_13;
    }
  }

  v19 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v19, v28, "Not updating stations for non-active source", v29, 2u);
  }

LABEL_17:

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
}

void sub_10006C168(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mediaItemImages];
  sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_10006C1DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    v2 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v4 = v3;
    v5 = [v12 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v2 == v6 && v4 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

LABEL_7:
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  sub_100092458();
  return 0;
}

void sub_10006C338(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_100044148(_swiftEmptyArrayStorage);
  sub_100064DB4(v3, &v4);
  *a2 = v4;
}

void sub_10006C394(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B70);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136446722;
    v10 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v12 = sub_100043AF0(v10, v11, &v28);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v14 = sub_100083338(v13);
    v16 = sub_100043AF0(v14, v15, &v28);

    *(v9 + 14) = v16;
    *(v9 + 22) = 1026;
    *(v9 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "Media source %{public}s %{public}s, now disabled: %{BOOL,public}d", v9, 0x1Cu);
    swift_arrayDestroy();
  }

  v17 = CAFMediaSourceObservable.observed.getter();
  v18 = [v17 identifier];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v28;
  if (v28)
  {
    v23 = [v28 identifier];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v19 == v24 && v21 == v26)
    {

LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v28) = v4 ^ 1;

      static Published.subscript.setter();
      goto LABEL_12;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_12:
  sub_10006C8D0();
}

void sub_10006C6AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B70);
  v6 = a4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446978;
    v10 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    v12 = sub_100043AF0(v10, v11, &v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v14 = sub_100083338(v13);
    v16 = sub_100043AF0(v14, v15, &v24);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0x6E776F6E6B6E55;
      v19 = 0xE700000000000000;
    }

    v20 = sub_100043AF0(v17, v19, &v24);

    *(v9 + 24) = v20;
    *(v9 + 32) = 2082;
    dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v21 = CAFMediaSourceSemanticType.description.getter();
    v23 = sub_100043AF0(v21, v22, &v24);

    *(v9 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "Media source %{public}s %{public}s, updated name: %s type: %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
  }

  sub_10006C8D0();
}

void sub_10006C8D0()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_34:
    v27 = v4;

    sub_100071A20(&v27);

    v25 = v27;
LABEL_36:
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v25;

    static Published.subscript.setter();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    return;
  }

  v27 = _swiftEmptyArrayStorage;

  sub_1000A2C90(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v26 = v2;
    v5 = 0;
    v4 = v27;
    v6 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
      if (v9 > 7u || ((1 << v9) & 0x91) == 0)
      {
        goto LABEL_23;
      }

      v11 = CAFMediaSourceObservable.observed.getter();
      v12 = [v11 hasUserVisibleLabel];

      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      if (!((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v13 & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if (String.count.getter() <= 15)
      {
      }

      else
      {
        String.index(_:offsetBy:limitedBy:)();
        String.subscript.getter();

        v2 = v26;
        v15 = static String._fromSubstring(_:)();
        v16 = v18;
      }

LABEL_29:
      v27 = v4;
      v23 = *(v4 + 2);
      v22 = *(v4 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_1000A2C90((v22 > 1), v23 + 1, 1);
        v4 = v27;
      }

      ++v5;
      *(v4 + 2) = v23 + 1;
      v24 = &v4[16 * v23];
      *(v24 + 4) = v15;
      *(v24 + 5) = v16;
      if (v3 == v5)
      {

        goto LABEL_34;
      }
    }

LABEL_23:
    dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    v19 = CAFMediaSourceSemanticType.title.getter();
    v21 = v20;

    if (v21)
    {
      v15 = v19;
    }

    else
    {
      v15 = 0;
    }

    if (v21)
    {
      v16 = v21;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
}

void sub_10006CC20(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 mediaItems];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 mediaItems];

      sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v8 = sub_100072F1C(a1, v7);
        if (qword_1000EACE0 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100006928(v9, qword_1000F3B70);
        swift_bridgeObjectRetain_n();

        v10 = a1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v33 = v14;
          *v13 = 134349570;
          if (v7 >> 62)
          {
            v15 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v13 + 4) = v15;

          *(v13 + 12) = 2082;
          v16 = [v10 identifier];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = sub_100043AF0(v17, v19, &v33);

          *(v13 + 14) = v20;
          *(v13 + 22) = 2050;
          if (v8 >> 62)
          {
            v21 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v13 + 24) = v21;

          _os_log_impl(&_mh_execute_header, v11, v12, "Processing %{public}ld items in source %{public}s into %{public}ld stations", v13, 0x20u);
          sub_100006960(v14);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        sub_10006D0AC(v8);

        return;
      }
    }

    else
    {
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006928(v22, qword_1000F3B70);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    v28 = [v23 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_100043AF0(v29, v31, &v33);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "No available stations in source %{public}s", v26, 0xCu);
    sub_100006960(v27);
  }

  sub_10006D0AC(_swiftEmptyArrayStorage);
}

void sub_10006D0AC(unint64_t a1)
{
  if (qword_1000EACE0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3B70);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = a1 >> 62;
    v47 = a1;
    if (os_log_type_enabled(v3, v4))
    {
      v6 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v6 = 134349570;
      if (v5)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0x29656E6F6E28;
      *(v6 + 4) = v7;

      *(v6 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v49)
      {
        v9 = [v49 identifier];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE600000000000000;
        v10 = 0x29656E6F6E28;
      }

      v13 = sub_100043AF0(v10, v12, v50);

      *(v6 + 14) = v13;
      *(v6 + 22) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v49)
      {
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
        v14 = CAFObserved<>.observable.getter();
        v8 = sub_100083338(v14);
        v16 = v15;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v17 = sub_100043AF0(v8, v16, v50);

      *(v6 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "Processing %{public}ld updated stations. Active source %{public}s %{public}s", v6, 0x20u);
      swift_arrayDestroy();

      a1 = v47;
    }

    else
    {
    }

    if (!v5)
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_15;
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      break;
    }

LABEL_15:
    v19 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v20)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_29;
      }

LABEL_23:
      v24 = (v22 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
      swift_beginAccess();
      v25 = v24[1];
      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = *v24;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v49 + 2))
      {
        v27 = sub_1000275D8(v26, v25);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v49 + 7) + 8 * v27);

          v31 = v30;
          v51.value.super.isa = v30;
          TerrestrialRadioStation.setImage(_:)(v51);

          goto LABEL_18;
        }
      }

      else
      {
      }

LABEL_18:
      a1 = v47;
LABEL_19:

      ++v19;
      if (v23 == v18)
      {
        goto LABEL_33;
      }
    }

    if (v19 >= *(v21 + 16))
    {
      goto LABEL_30;
    }

    v22 = *(a1 + 8 * v19 + 32);

    v23 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_33:

  v49 = sub_10002BC68(v32);
  sub_100027D28(&v49);
  v33 = v49;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = 0x29656E6F6E28;
    v37 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v37 = 136446466;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v48)
    {
      v38 = [v48 identifier];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v41 = 0xE600000000000000;
      v39 = 0x29656E6F6E28;
    }

    v42 = sub_100043AF0(v39, v41, &v49);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v48)
    {
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
      v43 = CAFObserved<>.observable.getter();
      v36 = sub_100083338(v43);
      v45 = v44;
    }

    else
    {
      v45 = 0xE600000000000000;
    }

    v46 = sub_100043AF0(v36, v45, &v49);

    *(v37 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Updating stations in source %{public}s %{public}s.", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v33;

  static Published.subscript.setter();
  sub_10006E488();
  sub_10006D88C();
  NowPlayingObserver.emitFinalizedIfNeeded()();
}

void sub_10006D88C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v42[0];
  if (v42[0])
  {
    v1 = &off_1000E7000;
    v2 = [v42[0] mediaSourceSemanticType];
    if (v2 - 1 < 2 || v2 == 8)
    {
      v4 = [v42[0] currentFrequencyRange];
      v5 = [v4 minimumValue];
      v6 = [v4 maximumValue];
      v7 = [v4 stepValue];
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = v42[0];
      v10 = sub_100072930(v5, v6, v8, v9);

      swift_getKeyPath();
      swift_getKeyPath();
      v42[0] = v10;

      static Published.subscript.setter();
    }

    else
    {
      if (v2 == 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v42[0] = sub_10002BC68(v11);
        sub_100027D28(v42);

        v12 = v42[0];
        if ((v42[0] & 0x8000000000000000) != 0 || (v42[0] & 0x4000000000000000) != 0)
        {
          v39 = v42[0];
          v13 = _CocoaArrayWrapper.endIndex.getter();
          v12 = v39;
          if (v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v13 = *(v42[0] + 2);
          if (v13)
          {
LABEL_15:
            v14 = v12;
            v43 = _swiftEmptyArrayStorage;
            sub_1000A2C90(0, v13 & ~(v13 >> 63), 0);
            if (v13 < 0)
            {
              __break(1u);

              __break(1u);
              return;
            }

            v15 = 0;
            v16 = v43;
            v17 = v14;
            v40 = v14 & 0xC000000000000001;
            v41 = v14;
            v18 = v13;
            do
            {
              if (v40)
              {
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v19 = *(v17 + 8 * v15 + 32);
              }

              v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v21 = *(v19 + v20);
              v22 = v1;
              v23 = v0;
              [v0 v1[146]];
              v24 = CAFMediaItem.formattedUserEnteredFrequency(in:)();
              v26 = v25;

              v43 = v16;
              v28 = v16[2];
              v27 = v16[3];
              if (v28 >= v27 >> 1)
              {
                sub_1000A2C90((v27 > 1), v28 + 1, 1);
                v16 = v43;
              }

              ++v15;
              v16[2] = v28 + 1;
              v29 = &v16[2 * v28];
              v29[4] = v24;
              v29[5] = v26;
              v0 = v23;
              v1 = v22;
              v17 = v41;
            }

            while (v18 != v15);

            goto LABEL_31;
          }
        }

        v16 = _swiftEmptyArrayStorage;
LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        v43 = v16;

        static Published.subscript.setter();

        return;
      }

      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006928(v30, qword_1000F3B70);
      v31 = v42[0];
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v42[0] = v35;
        *v34 = 136315138;
        [v31 mediaSourceSemanticType];
        v36 = CAFMediaSourceSemanticType.description.getter();
        v38 = sub_100043AF0(v36, v37, v42);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Dialable station strings are unsupported for media type: %s", v34, 0xCu);
        sub_100006960(v35);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v42[0] = _swiftEmptyArrayStorage;

      static Published.subscript.setter();
    }
  }
}

void sub_10006DDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v40;
  if (!v40)
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v40;
      v19 = qword_1000EAD00;
      v20 = v40;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006928(v21, qword_1000F3BD0);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40 = v26;
        *v25 = 136446210;
        v27 = sub_10007DDA8();
        v29 = v28;

        v34 = sub_100043AF0(v27, v29, &v40);

        *(v25 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "Updated current artwork from playing station: %{public}s", v25, 0xCu);
        sub_100006960(v26);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000EAD00 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006928(v30, qword_1000F3BD0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No available current artwork.", v33, 2u);
      }

      v9 = 0;
    }

    goto LABEL_30;
  }

  v1 = [v40 artworkData];
  if (!v1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    if (v3 == v3 >> 32)
    {
LABEL_16:

      sub_100072620(v3, v5);
      goto LABEL_19;
    }
  }

  else if ((v5 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v7 = objc_allocWithZone(UIImage);
  sub_1000725CC(v3, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100072620(v3, v5);
  if (!v9)
  {
    sub_100072620(v3, v5);
    goto LABEL_18;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3BD0);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v40 = v15;
    v16 = sub_10007DDA8();
    v18 = sub_100043AF0(v16, v17, &v40);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updated current artwork from snapshot artwork data: %{public}s", v14, 0xCu);
    sub_100006960(v15);
  }

  sub_100072620(v3, v5);
LABEL_30:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v40;
  if (!v40)
  {
LABEL_38:
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v9;

    static Published.subscript.setter();
    return;
  }

  if (([v40 isEqual:v9] & 1) == 0)
  {

    goto LABEL_38;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006928(v36, qword_1000F3BD0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Artwork has not changed.", v39, 2u);
  }
}

void sub_10006E488()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v101 = [Strong np_currentFrequency];
  }

  else
  {
    v101 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v108[0])
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006928(v22, qword_1000F3BD0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No available active source.", v25, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v108[0] = 0;

    static Published.subscript.setter();
    sub_10006DDBC();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    return;
  }

  v102 = v1;
  v100 = v108[0];
  if ([v108[0] hasCurrentMediaItemIdentifier] && objc_msgSend(v108[0], "currentMediaItemIdentifierInvalid"))
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3B70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_32;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Current media item identifier is invalid.";
    v7 = v4;
    v8 = v3;
    v9 = v5;
    v10 = 2;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v8, v7, v6, v9, v10);

LABEL_32:

    v13 = 0;
    v15 = 0;
    goto LABEL_33;
  }

  if (![v108[0] hasCurrentMediaItemIdentifier] || (v11 = objc_msgSend(v108[0], "currentMediaItemIdentifier")) == 0)
  {
LABEL_27:
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006928(v26, qword_1000F3B70);
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_32;
    }

    v28 = swift_slowAlloc();
    *v28 = 67240192;
    *(v28 + 1) = v101;
    v6 = "No available current media item identifier. Current frequency %{public}u";
    v7 = v27;
    v8 = v3;
    v9 = v28;
    v10 = 8;
    goto LABEL_31;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_27;
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3B70);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v108[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100043AF0(v13, v15, v108);
    _os_log_impl(&_mh_execute_header, v18, v19, "Current media item identifier: %{public}s", v20, 0xCu);
    sub_100006960(v21);
  }

LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v108[0];
  if (v108[0] >> 62)
  {
LABEL_88:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_89:

    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100006928(v78, qword_1000F3B70);
    swift_retain_n();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v81 = 67241218;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        v82 = [v106 currentFrequency];
      }

      else
      {
        v82 = 0;
      }

      v83 = 0x29656E6F6E28;
      *(v81 + 4) = v82;

      *(v81 + 8) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106 && (v84 = [v106 currentMediaItemIdentifier], v106, v84))
      {
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = v85;
      }

      else
      {
        v87 = 0xE600000000000000;
        v88 = 0x29656E6F6E28;
      }

      v89 = sub_100043AF0(v88, v87, v107);

      *(v81 + 10) = v89;
      *(v81 + 18) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        v90 = [v106 identifier];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
      }

      else
      {
        v93 = 0xE600000000000000;
        v91 = 0x29656E6F6E28;
      }

      v94 = sub_100043AF0(v91, v93, v107);

      *(v81 + 20) = v94;
      *(v81 + 28) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106)
      {
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
        v95 = CAFObserved<>.observable.getter();
        v83 = sub_100083338(v95);
        v97 = v96;
      }

      else
      {
        v97 = 0xE600000000000000;
      }

      v98 = sub_100043AF0(v83, v97, v107);

      *(v81 + 30) = v98;
      *(v81 + 38) = 2050;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v106 >> 62)
      {
        v99 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v99 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v81 + 40) = v99;

      _os_log_impl(&_mh_execute_header, v79, v80, "Unable to match a playing station for freq: %{public}u ID %{public}s. Source %{public}s %{public}s has %{public}ld stations.", v81, 0x30u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v107[0] = 0;

    static Published.subscript.setter();
LABEL_110:

    sub_10006DDBC();
    NowPlayingObserver.emitFinalizedIfNeeded()();
    goto LABEL_111;
  }

  v30 = *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_89;
  }

LABEL_35:
  v31 = 0;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_52;
    }

LABEL_40:
    if (v15)
    {
      v34 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v35 = *v34 == v13 && v15 == v34[1];
      if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v36 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
      swift_beginAccess();
      if (v102 && *(v32 + v36) == v101)
      {
        goto LABEL_53;
      }
    }

    ++v31;
    if (v33 == v30)
    {
      goto LABEL_89;
    }
  }

  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_88;
  }

  v32 = *(v29 + 8 * v31 + 32);

  v33 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_40;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  v37 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v106)
  {
    v40 = (v106 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v42 = *v40;
    v41 = v40[1];

    if (v39 == v42 && v38 == v41)
    {

      goto LABEL_67;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
LABEL_67:
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100006928(v54, qword_1000F3B70);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Playing station has not changed.", v57, 2u);
      }

      goto LABEL_110;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006928(v45, qword_1000F3B70);
  swift_retain_n();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = 0x29656E6F6E28;
    v49 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v49 = 136447234;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v50 = [v32 identifier];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v53 = 0xE600000000000000;
      v51 = 0x29656E6F6E28;
    }

    v58 = sub_100043AF0(v51, v53, &v105);

    *(v49 + 4) = v58;
    *(v49 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
      v59 = CAFObserved<>.observable.getter();
      v48 = sub_100083338(v59);
      v61 = v60;
    }

    else
    {
      v61 = 0xE600000000000000;
    }

    v62 = sub_100043AF0(v48, v61, &v105);

    *(v49 + 14) = v62;
    *(v49 + 22) = 2050;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v49 + 24) = v63;

    *(v49 + 32) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v103 = TerrestrialRadioStation.formattedFrequency.getter();
      v104 = v64;
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      v66 = (v32 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
      swift_beginAccess();
      v67 = v47;
      v68 = *v66;
      v69 = v66[1];

      v70._countAndFlagsBits = v68;
      v70._object = v69;
      String.append(_:)(v70);

      v47 = v67;

      v71 = v103;
      v72 = v104;
    }

    else
    {
      v72 = 0xE400000000000000;
      v71 = 1701736302;
    }

    v73 = sub_100043AF0(v71, v72, &v105);

    *(v49 + 34) = v73;
    *(v49 + 42) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v103)
    {
      v74 = TerrestrialRadioStation.debugDisplayName.getter();
      v76 = v75;
    }

    else
    {
      v76 = 0xE400000000000000;
      v74 = 1701736302;
    }

    v77 = sub_100043AF0(v74, v76, &v105);

    *(v49 + 44) = v77;
    _os_log_impl(&_mh_execute_header, v46, v47, "Source %{public}s %{public}s has %{public}ld stations, current %{public}s - %{public}s", v49, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10006DDBC();
  NowPlayingObserver.emitFinalizedIfNeeded()();
LABEL_111:
}

Swift::Void __swiftcall NowPlayingObserver.emitFinalizedIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v4 = *(v9 - 8);
  __chkstk_darwin(v9);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10007051C;
  v12 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E1170;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007310C(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v10 + 8))(v3, v1);
  (*(v4 + 8))(v6, v9);
}

void sub_10006FA04(unint64_t a1)
{
  if (qword_1000EACC0 != -1)
  {
    goto LABEL_72;
  }

LABEL_2:
  v1 = qword_1000F3B28;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v3 = Hasher._finalize()();
    v4 = -1 << *(v2 + 32);
    v5 = v3 & ~v4;
    if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v4;
      do
      {
        if (*(*(v2 + 48) + v5) == 4)
        {

          return;
        }

        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {

          return;
        }

        v5 = (v5 + 1) & v6;
      }

      while (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }
  }

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (!v9)
  {
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (!v54)
  {
    if (qword_1000EACE8 != -1)
    {
LABEL_75:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006928(v20, qword_1000F3B88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_83;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Awaiting main scene for finalized signpost.";
    goto LABEL_82;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_78;
  }

  v11 = Strong;
  v12 = [Strong media];

  if (!v12)
  {
    goto LABEL_78;
  }

  v13 = [v12 mediaSources];

  if (!v13)
  {
    goto LABEL_78;
  }

  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
LABEL_77:

LABEL_78:
      if (qword_1000EACE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100006928(v51, qword_1000F3B88);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_83;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "No sources yet exist. Deferring finalized.";
      goto LABEL_82;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_77;
    }
  }

  v16 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      swift_once();
      goto LABEL_2;
    }

    if ([v17 mediaSourceSemanticType])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v16;
  }

  while (v19 != v15);

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v25 = _swiftEmptyArrayStorage[2];
    if (v25)
    {
      goto LABEL_34;
    }

LABEL_85:

    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006928(v52, qword_1000F3B88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_83;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "No available non-other sources. Deferring finalized.";
LABEL_82:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);

    goto LABEL_83;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_85;
  }

LABEL_34:
  v26 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      goto LABEL_40;
    }

    if (v26 >= _swiftEmptyArrayStorage[2])
    {
      goto LABEL_71;
    }

    v27 = _swiftEmptyArrayStorage[v26 + 4];
    v28 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
LABEL_40:
      v29 = v27;
      v30 = [v29 mediaSourceSemanticType];
      if (v30 > 8 || ((1 << v30) & 0x14F) == 0)
      {
      }

      else
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v26;
      if (v28 == v25)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_48:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_51;
    }

    goto LABEL_90;
  }

  v32 = _swiftEmptyArrayStorage[2];
  if (!v32)
  {
LABEL_90:

    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006928(v53, qword_1000F3B88);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "At least one source exists, but no browsable sources exist. Firing finalized.";
LABEL_94:
      _os_log_impl(&_mh_execute_header, v47, v48, v50, v49, 2u);
    }

    goto LABEL_95;
  }

LABEL_51:
  v33 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_74;
      }

      v34 = _swiftEmptyArrayStorage[v33 + 4];
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v37 = [v34 mediaItems];
    if (!v37)
    {

      if (qword_1000EACE8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006928(v40, qword_1000F3B88);
      v41 = v35;
      v21 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        *(v43 + 4) = v41;
        *v44 = v41;
        v45 = v41;
        _os_log_impl(&_mh_execute_header, v21, v42, "Media source %{public}@ isn't ready yet. Deferring finalized.", v43, 0xCu);
        sub_100007834(v44, &unk_1000EE230, &qword_1000BA550);

        return;
      }

      goto LABEL_83;
    }

    v38 = v37;
    v39 = [v37 mediaItems];

    ++v33;
  }

  while (v36 != v32);

  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006928(v46, qword_1000F3B88);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "All browsable sources are ready. Emitting Finalized.";
    goto LABEL_94;
  }

LABEL_95:

  v21 = swift_unknownObjectWeakLoadStrong();
  sub_10000612C(4, v21);
LABEL_83:
}

uint64_t sub_100070524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NowPlayingObserver.deinit()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSource;
  v2 = sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  v20 = *(*(v2 - 8) + 8);
  v20(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media18NowPlayingObserver__lastSnapshot;
  v4 = sub_10000368C(&unk_1000EC8C0, &qword_1000B6128);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artwork;
  v6 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Media18NowPlayingObserver__terrestrialStations;
  v8 = sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC5Media18NowPlayingObserver__playingStation;
  v10 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC5Media18NowPlayingObserver__activeSourceEnabled;
  v12 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__carOwnsMainAudio, v12);
  v14 = OBJC_IVAR____TtC5Media18NowPlayingObserver__mediaSourceTitles;
  v15 = sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v14, v15);
  v17 = OBJC_IVAR____TtC5Media18NowPlayingObserver__artworkCache;
  v18 = sub_10000368C(&qword_1000EDB38, &qword_1000B7F18);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v20(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__targetSource, v2);
  v16(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__dialableStationStrings, v15);
  v13(v0 + OBJC_IVAR____TtC5Media18NowPlayingObserver__isCallActive, v12);
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t NowPlayingObserver.__deallocating_deinit()
{
  NowPlayingObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100070910@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NowPlayingObserver(uint64_t a1)
{
  result = qword_1000EDB98;
  if (!qword_1000EDB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100070BE0(uint64_t a1)
{
  sub_100045298(319, &qword_1000EDBA8, &qword_1000EB998, &qword_1000B7C40);
  if (v1 <= 0x3F)
  {
    sub_100045298(319, &qword_1000EDBB0, &qword_1000EDAE0, &qword_1000B7C98);
    if (v2 <= 0x3F)
    {
      sub_100045298(319, &unk_1000EC9E8, &qword_1000EC950, &qword_1000B6250);
      if (v3 <= 0x3F)
      {
        sub_100045298(319, &qword_1000ECDE8, &qword_1000EEF30, &qword_1000B68E0);
        if (v4 <= 0x3F)
        {
          sub_100045298(319, &qword_1000ECDE0, &qword_1000EC5B0, &qword_1000B7D80);
          if (v5 <= 0x3F)
          {
            sub_10000B5F0();
            if (v6 <= 0x3F)
            {
              sub_100045298(319, &qword_1000EDBB8, &qword_1000EDB18, &qword_1000B7E70);
              if (v7 <= 0x3F)
              {
                sub_100045298(319, &unk_1000EDBC0, &qword_1000EDB28, &qword_1000B7EC8);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100070F04()
{
  v2 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v35 = _swiftEmptyArrayStorage;
    v4 = (v3 & 0xFFFFFFFFFFFFFF8);
    if (v3 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= v4[2])
          {
            goto LABEL_42;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v1 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (dispatch thunk of CAFMediaSourceObservable.disabled.getter())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v8 == i)
        {
          v9 = v35;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_17:

    if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_20:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v9 + 16))
          {
            __break(1u);
LABEL_56:
            swift_once();
LABEL_26:
            v12 = type metadata accessor for Logger();
            sub_100006928(v12, qword_1000F3BD0);
            v13 = v1;
            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              *v16 = 136446466;
              v17 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
              v19 = sub_100043AF0(v17, v18, &v35);

              *(v16 + 4) = v19;
              *(v16 + 12) = 2082;
              dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
              v20 = CAFMediaSourceSemanticType.description.getter();
              v22 = sub_100043AF0(v20, v21, &v35);

              *(v16 + 14) = v22;
              _os_log_impl(&_mh_execute_header, v14, v15, "Selecting first known media source: %{public}s of type %{public}s", v16, 0x16u);
              swift_arrayDestroy();
            }

            v23 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
            sub_100069AE0(v23, v24);
          }

          v10 = *(v9 + 32);
        }

        v11 = v10;
        if (v3 != 1)
        {
          v26 = 1;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v26 & 0x8000000000000000) != 0)
              {
                goto LABEL_44;
              }

              if (v26 >= *(v9 + 16))
              {
                goto LABEL_45;
              }

              v27 = *(v9 + 8 * v26 + 32);
            }

            v1 = v27;
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_43;
            }

            v4 = CAFMediaSourceObservable.observed.getter();
            v29 = CAFMediaSourceObservable.observed.getter();
            v30 = [v4 typeCompare:v29];

            if (v30 == -1)
            {

              v11 = v1;
              ++v26;
              if (v28 == v3)
              {
                goto LABEL_25;
              }
            }

            else
            {

              ++v26;
              if (v28 == v3)
              {
                break;
              }
            }
          }
        }

        v1 = v11;
LABEL_25:

        if (qword_1000EAD00 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v3 = *(v9 + 16);
      if (v3)
      {
        goto LABEL_20;
      }
    }
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006928(v31, qword_1000F3BD0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "No available source to change to.", v34, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v35 = 0;

  return static Published.subscript.setter();
}

void *sub_100071400()
{
  v1 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_33;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      v21 = v2;
      v22 = v2 & 0xC000000000000001;
      v20 = v3;
      while (1)
      {
        if (v22)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_32;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v3 = v6;
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        sub_100083338(v6);
        v7 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
        sub_100083720(v7);
        v8 = CAFMediaSourceObservable.observed.getter();
        v9 = [v8 mediaSourceSemanticType];
        v10 = v9 > 8 || ((1 << v9) & 0x14E) == 0;
        if (v10)
        {
          [v8 disabled];
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (!v23)
        {
          break;
        }

        v11 = [v23 identifier];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
        if (!v14)
        {
          goto LABEL_21;
        }

        if (v12 == v15 && v14 == v16)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

LABEL_23:
        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = v3;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v5;
        v3 = v20;
        v10 = v2 == v4;
        v2 = v21;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      dispatch thunk of CAFMediaSourceObservable.identifier.getter();
LABEL_21:

      goto LABEL_23;
    }

LABEL_29:
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100071790(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = dispatch thunk of CAFMediaSourceObservable.identifier.getter();
    sub_100069AE0(v3, v4);
  }

  return result;
}

uint64_t sub_100071808(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v4 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);

    v5 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_4;
  }

  v4 = sub_100071400();

  if (v4 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
  v5 = v4;
LABEL_4:

  a1(v5);
}

uint64_t sub_10007192C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100071970(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000274CC(v2, 0);

    v1 = sub_100072674(&v5, v3 + 4, v2, v1);
    sub_100073104(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_100071A20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002BCFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100071A8C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100071A8C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100071C54(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100071B84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100071B84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100071C54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10002B800(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100072230((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002B814(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10002B814((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100072230((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002B800(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10002B774(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}