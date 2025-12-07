uint64_t sub_10025CAD8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v4) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view;
  type metadata accessor for TrendListMetricView();
  *(v2 + v6) = sub_10065AF60();
  v7 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel;
  sub_1000059F8(0, &qword_1008E2D40, UILabel_ptr);
  *(v2 + v7) = sub_100555C98();
  v8 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button;
  v9 = [objc_opt_self() buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v8) = v9;
  v10 = (v2 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_selectionFunction);
  *v10 = ASFriendListDisplayMode.id.getter;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_arrowDirection) = 1;
  v11 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_metric;
  v12 = type metadata accessor for TrendListMetric(0);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);

  sub_10025D068(v2 + v11);
  type metadata accessor for TrendingDownTableViewCell(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10025CD18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendingDownTableViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrendingDownTableViewCell(uint64_t a1)
{
  result = qword_1008E3D00;
  if (!qword_1008E3D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025CE34(uint64_t a1)
{
  sub_10025CEF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10025CEF0(uint64_t a1)
{
  if (!qword_1008E3D10)
  {
    type metadata accessor for TrendListMetric(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E3D10);
    }
  }
}

uint64_t sub_10025CF48()
{
  result = *(*(*v0 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view) + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection);
  if (result != 1)
  {
    return sub_100515494(result);
  }

  return result;
}

double sub_10025CF9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view);
  v2 = dbl_1006E1380[v1[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection]];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  sub_1001B1314(sub_10025D040, v3, v2);

  return result;
}

uint64_t sub_10025D068(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10025D0D0()
{
  v1 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TrendListMetric(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_metric;
  swift_beginAccess();
  sub_10025D260(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10025D068(v3);
  }

  sub_10025D2D0(v3, v7);
  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_selectionFunction);

  v10(v7);

  return sub_100073174(v7);
}

uint64_t sub_10025D260(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025D2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendListMetric(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025D334(uint64_t a1)
{
  if (*(v1 + 80) < 0)
  {
    return NSObject.hash(into:)();
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  String.hash(into:)();
  String.hash(into:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_8;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_8:

  return String.hash(into:)();
}

Swift::Int sub_10025D450()
{
  Hasher.init(_seed:)();
  sub_10025D334(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10025D494(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10025D334(v2);
  return Hasher._finalize()();
}

uint64_t sub_10025D4D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10025E9E0(v7, v9) & 1;
}

uint64_t sub_10025D53C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10025D5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 81))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 80) & 0x7E | (*(a1 + 80) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10025D60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_10025D6D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutDetailMapAndWeatherView.ViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10025D730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_100140278(&qword_1008E3DE8, &qword_1006E15B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v70 = a2;
  v13 = *(a2 + 24);
  v14 = v13[2];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = __OFADD__(v16, 2);
      v16 += 2;
      if (v18)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v15;
      if (v16 >= v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v17 = 0;
LABEL_9:
  v85 = _swiftEmptyArrayStorage;
  sub_100185F58(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    goto LABEL_65;
  }

  v71 = v14;
  v64 = a1;
  v65 = v12;
  v66 = a3;
  v67 = v9;
  v68 = v7;
  v69 = v6;
  v6 = v85;
  v73 = v13;
  if (v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = v13 + 4;
    v72 = (v71 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v7 = 2;
    while (v72 != v20)
    {
      if (v20 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_61;
      }

      v22 = v20 + 2;
      v23 = v13[2];
      if (v23 >= v20 + 2)
      {
        v24 = v20 + 2;
      }

      else
      {
        v24 = v13[2];
      }

      if (v24 < v20)
      {
        goto LABEL_62;
      }

      if (v23 >= v7)
      {
        v25 = v7;
      }

      else
      {
        v25 = v13[2];
      }

      v26 = v25 + v19;
      if (v25 + v19 == v23)
      {

        v27 = v13;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
        if (v20 != v24)
        {
          if (v26 >= 1)
          {
            sub_100140278(&qword_1008DF140, &qword_1006D8EB0);
            v27 = swift_allocObject();
            v30 = j__malloc_size(v27);
            v27[2] = v26;
            v27[3] = 2 * ((v30 - 32) / 88);
          }

          swift_arrayInitWithCopy();
        }
      }

      v85 = v6;
      v29 = *(v6 + 16);
      v28 = *(v6 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_100185F58((v28 > 1), v29 + 1, 1);
        v6 = v85;
      }

      v19 -= 2;
      *(v6 + 16) = v29 + 1;
      *(v6 + 8 * v29 + 32) = v27;
      v7 += 2;
      v21 += 22;
      v20 = v22;
      --v17;
      v13 = v73;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v22 = 0;
LABEL_32:
  if (v22 < v71)
  {
    v31 = &v13[11 * v22 + 4];
    v32 = -v22;
    v33 = v22 + 2;
    v34 = v22;
    while (1)
    {
      v35 = v13[2];
      if (v35 < v34)
      {
        break;
      }

      if (v22 < 0)
      {
        goto LABEL_64;
      }

      if (v35 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v13[2];
      }

      v37 = v36 + v32;
      if (v36 + v32 == v35)
      {
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
        if (v34 != v35)
        {
          if (v37 >= 1)
          {
            sub_100140278(&qword_1008DF140, &qword_1006D8EB0);
            v13 = swift_allocObject();
            v39 = j__malloc_size(v13);
            v13[2] = v37;
            v13[3] = 2 * ((v39 - 32) / 88);
          }

          swift_arrayInitWithCopy();
        }
      }

      v85 = v6;
      v7 = *(v6 + 16);
      v38 = *(v6 + 24);
      if (v7 >= v38 >> 1)
      {
        sub_100185F58((v38 > 1), v7 + 1, 1);
        v6 = v85;
      }

      v34 += 2;
      *(v6 + 16) = v7 + 1;
      *(v6 + 8 * v7 + 32) = v13;
      v31 += 176;
      v32 -= 2;
      v33 += 2;
      v13 = v73;
      if (v34 >= v71)
      {
        goto LABEL_49;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_53;
  }

LABEL_49:
  v7 = v70;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v77)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v77 & 1) == 0)
    {
      v71 = 0;
      v72 = 0;
      v43 = 0;
      v63 = 0;
      v73 = 0;
      goto LABEL_57;
    }
  }

  type metadata accessor for WorkoutDetailMapView.ViewModel(0);
  sub_10025EC70(v40);

  v41 = ObservedObject.init(wrappedValue:)();
  v71 = v42;
  v72 = v41;
  if (qword_1008DA718 != -1)
  {
    goto LABEL_66;
  }

LABEL_53:
  v43 = qword_1008E3D20;
  if (*(v6 + 16))
  {
    v44 = 0;
  }

  else
  {
    v44 = qword_1008E3D20;
  }

  v63 = v44;
  v45 = static Edge.Set.all.getter();
  LOBYTE(v77) = 0;
  v73 = v45;
LABEL_57:
  v62 = v43;
  v46 = *(v6 + 16);
  v77 = 0;
  v78 = v46;
  swift_getKeyPath();
  v47 = swift_allocObject();
  v48 = v64;
  v47[2] = v6;
  v47[3] = v48;
  v47[4] = v7;

  sub_100140278(&qword_1008DE078, &qword_1006D7670);
  sub_100140278(&qword_1008E3DF0, &qword_1006E1670);
  sub_100182FB4();
  sub_10014A6B0(&qword_1008E3DF8, &qword_1008E3DF0, &qword_1006E1670, &protocol conformance descriptor for TupleView<A>);
  v49 = v65;
  ForEach<>.init(_:id:content:)();
  v50 = v68;
  v51 = *(v68 + 16);
  v52 = v67;
  v53 = v69;
  v51(v67, v49, v69);
  v55 = v71;
  v54 = v72;
  *&v74 = v72;
  *(&v74 + 1) = v71;
  *&v75 = v73;
  *(&v75 + 1) = v43;
  v56 = v63;
  *v76 = 0;
  *&v76[8] = v63;
  *&v76[16] = 0;
  v76[24] = 0;
  v57 = v75;
  v58 = v66;
  *v66 = v74;
  v58[1] = v57;
  v58[2] = *v76;
  *(v58 + 41) = *&v76[9];
  v59 = sub_100140278(&qword_1008E3E00, &qword_1006E1678);
  v51(v58 + *(v59 + 48), v52, v53);
  sub_10001B104(&v74, &v77, &qword_1008E3E08, &unk_1006E1680);
  v60 = *(v50 + 8);
  v60(v49, v53);
  v60(v52, v53);
  v77 = v54;
  v78 = v55;
  v79 = v73;
  v80 = v62;
  v81 = 0;
  v82 = v56;
  v83 = 0;
  v84 = 0;
  return sub_10000EA04(&v77, &qword_1008E3E08, &unk_1006E1680);
}

uint64_t sub_10025DEFC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v35 = a5;
  v34 = sub_100140278(&qword_1008E3E18, &qword_1006E1690);
  __chkstk_darwin(v34);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Divider();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E3E20, &qword_1006E1698);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = &v32 - v20;
  v23 = *a1;
  if (*a1 < 1)
  {
    result = (*(v13 + 56))(&v32 - v20, 1, 1, v12, v21);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    Divider.init()();
    (*(v13 + 32))(v22, v15, v12);
    result = (*(v13 + 56))(v22, 0, 1, v12);
  }

  if (v23 < *(a2 + 16))
  {
    v25 = *(a2 + 8 * v23 + 32);

    *v11 = static VerticalAlignment.bottom.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    sub_100140278(&qword_1008E3E28, &qword_1006E16A0);
    v37 = v25;
    swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v33;
    *(v26 + 24) = a4;

    sub_100140278(&qword_1008DE448, &unk_1006D7BB0);
    sub_100140278(&qword_1008E3E30, &qword_1006E16C8);
    sub_10014A6B0(&qword_1008E3E38, &qword_1008DE448, &unk_1006D7BB0, &protocol conformance descriptor for [A]);
    sub_10025ECD0();
    sub_10025ED24();
    ForEach<>.init(_:id:content:)();
    v27 = static Edge.Set.all.getter();
    v28 = &v11[*(v34 + 36)];
    *v28 = v27;
    *(v28 + 8) = xmmword_1006DB530;
    *(v28 + 24) = xmmword_1006DB530;
    v28[40] = 0;
    sub_10001B104(v22, v18, &qword_1008E3E20, &qword_1006E1698);
    v29 = v36;
    sub_10001B104(v11, v36, &qword_1008E3E18, &qword_1006E1690);
    v30 = v35;
    sub_10001B104(v18, v35, &qword_1008E3E20, &qword_1006E1698);
    v31 = sub_100140278(&qword_1008E3E90, &qword_1006E16F0);
    sub_10001B104(v29, v30 + *(v31 + 48), &qword_1008E3E18, &qword_1006E1690);
    sub_10000EA04(v11, &qword_1008E3E18, &qword_1006E1690);
    sub_10000EA04(v22, &qword_1008E3E20, &qword_1006E1698);
    sub_10000EA04(v29, &qword_1008E3E18, &qword_1006E1690);
    return sub_10000EA04(v18, &qword_1008E3E20, &qword_1006E1698);
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 sub_10025E360@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X8>)
{
  v46 = *(a1 + 80);
  v3 = a1[3];
  v43 = a1[2];
  v44 = v3;
  v45 = a1[4];
  v4 = a1[1];
  v41 = *a1;
  v42 = v4;
  v5 = static HorizontalAlignment.center.getter();
  if (v46 < 0)
  {
    v6 = v41;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v32) = 0;
    v16 = v5;
    v17 = 0;
    v18 = 0;
    *(&v19 + 7) = v6;
    sub_10025EF20(&v16);
  }

  else
  {
    *&v14[39] = v43;
    *&v14[55] = v44;
    *&v14[71] = v45;
    v14[87] = v46;
    *&v14[7] = v41;
    *&v14[23] = v42;
    sub_10025EF2C(&v41, v39);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v15[55] = v35;
    *&v15[71] = v36;
    *&v15[87] = v37;
    *&v15[103] = v38;
    *&v15[7] = v32;
    *&v15[23] = v33;
    *&v15[39] = v34;
    v16 = v5;
    v17 = 0;
    v18 = 0;
    v20 = *&v14[16];
    v19 = *v14;
    v24 = *&v14[80];
    v23 = *&v14[64];
    v22 = *&v14[48];
    v21 = *&v14[32];
    v28 = *&v15[48];
    v27 = *&v15[32];
    v26 = *&v15[16];
    v25 = *v15;
    *&v31[15] = *(&v38 + 1);
    *v31 = *&v15[96];
    v30 = *&v15[80];
    v29 = *&v15[64];
    sub_10025EF88(&v16);
  }

  sub_100140278(&qword_1008E3E58, &qword_1006E16D0);
  sub_100140278(&qword_1008E3E78, &qword_1006E16E0);
  sub_10025EDB0();
  sub_10025EE68();
  _ConditionalContent<>.init(storage:)();
  v7 = v39[13];
  a2[12] = v39[12];
  a2[13] = v7;
  a2[14].n128_u8[0] = v40;
  v8 = v39[9];
  a2[8] = v39[8];
  a2[9] = v8;
  v9 = v39[11];
  a2[10] = v39[10];
  a2[11] = v9;
  v10 = v39[5];
  a2[4] = v39[4];
  a2[5] = v10;
  v11 = v39[7];
  a2[6] = v39[6];
  a2[7] = v11;
  v12 = v39[1];
  *a2 = v39[0];
  a2[1] = v12;
  result = v39[3];
  a2[2] = v39[2];
  a2[3] = result;
  return result;
}

uint64_t sub_10025E6CC@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_100140278(&qword_1008E3DD8, &qword_1006E15A0);
  sub_10025D730(v5, v4, (a2 + *(v6 + 44)));
  if (qword_1008DA718 != -1)
  {
    swift_once();
  }

  v7 = qword_1008E3D20;
  v8 = static Edge.Set.all.getter();
  result = sub_100140278(&qword_1008E3DE0, &qword_1006E15A8);
  v10 = a2 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = 0;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = 0;
  return result;
}

unint64_t sub_10025E79C()
{
  result = qword_1008E3DD0;
  if (!qword_1008E3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3DD0);
  }

  return result;
}

void sub_10025E7F0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10025E870(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10025E8E4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10025E964(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10025E9E0(uint64_t *a1, uint64_t *a2)
{
  if (a1[10] < 0)
  {
    if (a2[10] < 0)
    {
      sub_1001AC3CC();
      sub_10025EBFC(a1, v22);
      sub_10025EBFC(a2, v22);
      v11 = static NSObject.== infix(_:_:)();
      sub_10025EC34(a2);
      sub_10025EC34(a1);
      return v11 & 1;
    }

    goto LABEL_16;
  }

  if (a2[10] < 0)
  {
    goto LABEL_16;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v15 = a1[6];
  v16 = a1[8];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v14 = a2[6];
  v20 = a2[7];
  v21 = a1[7];
  v18 = a1[9];
  v19 = a2[8];
  v17 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((v3 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    if (!v10 || (v5 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v10)
  {
    goto LABEL_16;
  }

  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_16:
    v11 = 0;
    return v11 & 1;
  }

  if (!v20 || (v15 != v14 || v21 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v16 == v19 && v18 == v17)
  {
    v11 = 1;
    return v11 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10025EC70(__n128 a1)
{
  result = qword_1008E3E10;
  if (!qword_1008E3E10)
  {
    type metadata accessor for WorkoutDetailMapView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E10);
  }

  return result;
}

unint64_t sub_10025ECD0()
{
  result = qword_1008E3E40;
  if (!qword_1008E3E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E40);
  }

  return result;
}

unint64_t sub_10025ED24()
{
  result = qword_1008E3E48;
  if (!qword_1008E3E48)
  {
    sub_100141EEC(&qword_1008E3E30, &qword_1006E16C8);
    sub_10025EDB0();
    sub_10025EE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E48);
  }

  return result;
}

unint64_t sub_10025EDB0()
{
  result = qword_1008E3E50;
  if (!qword_1008E3E50)
  {
    sub_100141EEC(&qword_1008E3E58, &qword_1006E16D0);
    sub_10014A6B0(&qword_1008E3E60, &qword_1008E3E68, &qword_1006E16D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E50);
  }

  return result;
}

unint64_t sub_10025EE68()
{
  result = qword_1008E3E70;
  if (!qword_1008E3E70)
  {
    sub_100141EEC(&qword_1008E3E78, &qword_1006E16E0);
    sub_10014A6B0(&qword_1008E3E80, &qword_1008E3E88, &qword_1006E16E8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E70);
  }

  return result;
}

unint64_t sub_10025EF90()
{
  result = qword_1008E3E98;
  if (!qword_1008E3E98)
  {
    sub_100141EEC(&qword_1008E3DE0, &qword_1006E15A8);
    sub_10014A6B0(&qword_1008E3EA0, &qword_1008E3EA8, &qword_1006E16F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3E98);
  }

  return result;
}

uint64_t sub_10025F048()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10025F0BC()
{
  result = qword_1008E3FF8;
  if (!qword_1008E3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3FF8);
  }

  return result;
}

uint64_t sub_10025F118(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000059F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10025F168(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(v3 + 16);
  v13 = *(v3 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10003C1A8(a1, a2, a3, v12, v3 + v9, v3 + v11, v13);
}

unint64_t sub_10025F244()
{
  result = qword_1008E4088;
  if (!qword_1008E4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4088);
  }

  return result;
}

uint64_t sub_10025F2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reply();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  sub_10001B104(a1, &v13 - v9, &unk_1008EB5B0, &unk_1006D2BF0);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(0);
  v11 = swift_allocObject();
  sub_100261670(v10, v7);
  return v11;
}

uint64_t sub_10025F40C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v47 = type metadata accessor for Color.RGBColorSpace();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100140278(&qword_1008E4350, &qword_1006E1A90);
  __chkstk_darwin(v51);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for ActivitySharingReplyEditView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100140278(&qword_1008E4358, &qword_1006E1A98);
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = static Color.clear.getter();
  v18 = static SafeAreaRegions.all.getter();
  v19 = static Edge.Set.all.getter();
  *&v54 = v17;
  *(&v54 + 1) = v18;
  LOWORD(v55) = v19;
  sub_100262CF8(a1, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_100262D64(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_100140278(&qword_1008E4360, &qword_1006E1AA0);
  sub_100262EAC();
  v46 = v16;
  View.onTapGesture(count:perform:)();

  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v22 = sub_100140278(&qword_1008E4380, &qword_1006E1AB8);
  sub_10025FA2C(a1, &v8[*(v22 + 44)]);
  ReplyLayoutValues.bubbleBackgroundWhite.getter();
  (*(v45 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v47);
  v23 = Color.init(_:white:opacity:)();
  v24 = static Edge.Set.all.getter();
  v25 = &v8[*(sub_100140278(&qword_1008E4388, &qword_1006E1AC0) + 36)];
  *v25 = v23;
  v25[8] = v24;
  if (qword_1008DA728 != -1)
  {
    swift_once();
  }

  v26 = qword_100925390;
  v27 = &v8[*(sub_100140278(&qword_1008E4390, &unk_1006E1AC8) + 36)];
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  v27[1] = v26;
  *(v27 + *(sub_100140278(&qword_1008DE1E0, &unk_1006DC6E0) + 36)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = v50;
  v32 = v8;
  v33 = &v8[*(v51 + 36)];
  v34 = v55;
  *v33 = v54;
  *(v33 + 1) = v34;
  *(v33 + 2) = v56;
  v35 = v48;
  v36 = v49;
  v37 = *(v48 + 16);
  v38 = v46;
  v37(v31, v46, v49);
  v39 = v52;
  sub_10001B104(v32, v52, &qword_1008E4350, &qword_1006E1A90);
  v40 = v53;
  v37(v53, v31, v36);
  v41 = sub_100140278(&qword_1008E4398, &qword_1006E1AD8);
  sub_10001B104(v39, &v40[*(v41 + 48)], &qword_1008E4350, &qword_1006E1A90);
  sub_10000EA04(v32, &qword_1008E4350, &qword_1006E1A90);
  v42 = *(v35 + 8);
  v42(v38, v36);
  sub_10000EA04(v39, &qword_1008E4350, &qword_1006E1A90);
  return (v42)(v31, v36);
}

uint64_t sub_10025FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = sub_100140278(&qword_1008E43A0, &qword_1006E1AE0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v81 = &v73 - v3;
  v4 = sub_100140278(&qword_1008E43A8, &qword_1006E1AE8);
  __chkstk_darwin(v4 - 8);
  v80 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = (&v73 - v7);
  v75 = type metadata accessor for Color.RGBColorSpace();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100140278(&qword_1008E43B0, &qword_1006E1AF0);
  __chkstk_darwin(v76);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v73 - v11;
  v12 = sub_100140278(&qword_1008E43B8, &qword_1006E1AF8);
  __chkstk_darwin(v12 - 8);
  v91 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v95 = &v73 - v15;
  v89 = type metadata accessor for ActivitySharingReplyEditView(0);
  v85 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = v16;
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&qword_1008E43C0, &qword_1006E1B00);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v86 = sub_100140278(&qword_1008E43C8, &qword_1006E1B08);
  __chkstk_darwin(v86);
  v22 = &v73 - v21;
  v88 = sub_100140278(&qword_1008E43D0, &qword_1006E1B10);
  __chkstk_darwin(v88);
  v90 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v96 = &v73 - v25;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = *(a1 + 72);
  v100 = *(a1 + 56);
  *&v101 = v26;
  sub_100140278(&qword_1008E43D8, &qword_1006E1B18);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  if (qword_1008DA720 != -1)
  {
    swift_once();
  }

  v27 = qword_100925388;
  KeyPath = swift_getKeyPath();
  v29 = &v20[*(v18 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v84 = *(a1 + 80);
  v83 = *(a1 + 88);
  v82 = *(a1 + 96);
  LOBYTE(v103) = v84;
  v104 = v83;
  LOBYTE(v105) = v82;

  sub_100140278(&qword_1008E43E0, &qword_1006E1B50);
  FocusState.projectedValue.getter();
  sub_100262FE8();
  View.focused(_:)();

  sub_10000EA04(v20, &qword_1008E43C0, &qword_1006E1B00);
  sub_100262CF8(a1, v17);
  v30 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v31 = swift_allocObject();
  sub_100262D64(v17, v31 + v30);
  v32 = &v22[*(v86 + 36)];
  *v32 = sub_1002630CC;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  LOBYTE(v103) = v84;
  v104 = v83;
  LOBYTE(v105) = v82;
  FocusState.wrappedValue.getter();
  LOBYTE(v103) = v100;
  sub_100262CF8(a1, v17);
  v33 = swift_allocObject();
  sub_100262D64(v17, v33 + v30);
  sub_1002631D8();
  v34 = v96;
  View.onChange<A>(of:initial:_:)();

  sub_10000EA04(v22, &qword_1008E43C8, &qword_1006E1B08);
  ReplyLayoutValues.userMessageHorizontalInset.getter();
  v36 = v35;
  ReplyLayoutValues.userMessageHorizontalInset.getter();
  v38 = v37;
  v39 = static Edge.Set.all.getter();
  v40 = v34 + *(v88 + 36);
  *v40 = v39;
  *(v40 + 8) = 0x4028000000000000;
  *(v40 + 16) = v36;
  *(v40 + 24) = 0;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(0);
  sub_1002632A0(&unk_1008E42F8, type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel, &unk_1006E18E0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = 1;
  v42 = v34;
  if (v103 == 1)
  {
    v43 = v77;
    Divider.init()();
    ReplyLayoutValues.separatorThickness.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = (v43 + *(sub_100140278(&qword_1008E13B0, &unk_1006DD030) + 36));
    v45 = v101;
    *v44 = v100;
    v44[1] = v45;
    v44[2] = v102;
    ReplyLayoutValues.separatorWhite.getter();
    (*(v74 + 104))(v73, enum case for Color.RGBColorSpace.sRGB(_:), v75);
    v46 = Color.init(_:white:opacity:)();
    v47 = static Edge.Set.all.getter();
    v48 = v43 + *(sub_100140278(&qword_1008E4410, &qword_1006E1B68) + 36);
    *v48 = v46;
    *(v48 + 8) = v47;
    ReplyLayoutValues.separatorHorizontalInset.getter();
    v50 = v49;
    ReplyLayoutValues.separatorHorizontalInset.getter();
    v52 = v51;
    v53 = static Edge.Set.all.getter();
    v54 = v43 + *(v76 + 36);
    *v54 = v53;
    *(v54 + 8) = 0x4020000000000000;
    *(v54 + 16) = v50;
    *(v54 + 24) = 0x4028000000000000;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    v55 = static VerticalAlignment.center.getter();
    v56 = v79;
    *v79 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
    v57 = sub_100140278(&qword_1008E4418, &qword_1006E1B70);
    sub_1002608FC(a1, v56 + *(v57 + 44));
    v58 = v78;
    sub_10001B104(v43, v78, &qword_1008E43B0, &qword_1006E1AF0);
    v59 = v80;
    sub_10001B104(v56, v80, &qword_1008E43A8, &qword_1006E1AE8);
    v60 = v81;
    sub_10001B104(v58, v81, &qword_1008E43B0, &qword_1006E1AF0);
    v61 = sub_100140278(&qword_1008E4420, &qword_1006E1B78);
    sub_10001B104(v59, v60 + *(v61 + 48), &qword_1008E43A8, &qword_1006E1AE8);
    sub_10000EA04(v56, &qword_1008E43A8, &qword_1006E1AE8);
    sub_10000EA04(v43, &qword_1008E43B0, &qword_1006E1AF0);
    sub_10000EA04(v59, &qword_1008E43A8, &qword_1006E1AE8);
    sub_10000EA04(v58, &qword_1008E43B0, &qword_1006E1AF0);
    sub_100015E80(v60, v95, &qword_1008E43A0, &qword_1006E1AE0);
    v41 = 0;
  }

  v62 = v95;
  (*(v92 + 56))(v95, v41, 1, v93);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v93 = v103;
  v92 = v105;
  v89 = v107;
  v88 = v108;
  v99 = 1;
  v98 = v104;
  v97 = v106;
  v63 = v90;
  sub_10001B104(v42, v90, &qword_1008E43D0, &qword_1006E1B10);
  v64 = v91;
  sub_10001B104(v62, v91, &qword_1008E43B8, &qword_1006E1AF8);
  v65 = v99;
  v66 = v98;
  v67 = v97;
  v68 = v94;
  sub_10001B104(v63, v94, &qword_1008E43D0, &qword_1006E1B10);
  v69 = sub_100140278(&qword_1008E4408, &unk_1006E1B58);
  sub_10001B104(v64, v68 + *(v69 + 48), &qword_1008E43B8, &qword_1006E1AF8);
  v70 = v68 + *(v69 + 64);
  *v70 = 0;
  *(v70 + 8) = v65;
  *(v70 + 16) = v93;
  *(v70 + 24) = v66;
  *(v70 + 32) = v92;
  *(v70 + 40) = v67;
  v71 = v88;
  *(v70 + 48) = v89;
  *(v70 + 56) = v71;
  sub_10000EA04(v62, &qword_1008E43B8, &qword_1006E1AF8);
  sub_10000EA04(v96, &qword_1008E43D0, &qword_1006E1B10);
  sub_10000EA04(v64, &qword_1008E43B8, &qword_1006E1AF8);
  return sub_10000EA04(v63, &qword_1008E43D0, &qword_1006E1B10);
}

void sub_1002607A4(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    sub_100140278(&qword_1008E43D8, &qword_1006E1B18);
    State.wrappedValue.getter();

    v2 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v2 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      sub_100140278(&qword_1008DDE80, &unk_1006DC080);
      Binding.wrappedValue.getter();
      if (v3[0] == 1)
      {
        State.wrappedValue.getter();
        sub_100140278(&unk_1008DF3F0, &unk_1006E1BC0);
        Binding.wrappedValue.setter();
        Binding.wrappedValue.setter();
      }
    }
  }
}

void sub_1002608FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_100140278(&qword_1008E4428, &qword_1006E1B80);
  __chkstk_darwin(v33);
  v34 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(0);
  sub_1002632A0(&unk_1008E42F8, type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel, &unk_1006E18E0);
  v31[0] = v9;
  v31[1] = v8;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v35)
  {
    v10 = v35;
    v11 = Image.init(uiImage:)();
    v12 = static Edge.Set.leading.getter();
    type metadata accessor for ActivitySharingReplyEditView(0);
    ReplyLayoutValues.activityIconHorizontalInset.getter();
    EdgeInsets.init(_all:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v32 = v11;
    v21 = v12;
  }

  else
  {
    v32 = 0;
    v21 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
  }

  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_100140278(&qword_1008E4430, &unk_1006E1B88);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  sub_100140278(&unk_1008E4108, &qword_1006E1888);
  sub_10014A6B0(&qword_1008E4438, &unk_1008E4108, &qword_1006E1888, &protocol conformance descriptor for [A]);
  sub_1002632A0(&qword_1008E4440, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  ForEach<>.init(_:id:content:)();
  type metadata accessor for ActivitySharingReplyEditView(0);
  ReplyLayoutValues.activityTextLeftInset.getter();
  v23 = v22;
  ReplyLayoutValues.activityTextRightInset.getter();
  v25 = v24;
  v26 = static Edge.Set.all.getter();
  v27 = v34;
  v28 = &v7[*(v33 + 36)];
  *v28 = v26;
  *(v28 + 1) = 0;
  *(v28 + 2) = v23;
  *(v28 + 3) = 0;
  *(v28 + 4) = v25;
  v28[40] = 0;
  sub_10001B104(v7, v27, &qword_1008E4428, &qword_1006E1B80);
  *a2 = v32;
  *(a2 + 8) = v21;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = 0;
  v29 = sub_100140278(&qword_1008E4448, &unk_1006E1BB0);
  sub_10001B104(v27, a2 + *(v29 + 48), &qword_1008E4428, &qword_1006E1B80);
  v30 = a2 + *(v29 + 64);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_10000EA04(v7, &qword_1008E4428, &qword_1006E1B80);
  sub_10000EA04(v27, &qword_1008E4428, &qword_1006E1B80);
}

uint64_t sub_100260D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = Text.init(_:)();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_100260E44(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100260EDC, v3, v2);
}

uint64_t sub_100260EDC()
{
  type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(0);
  sub_1002632A0(&unk_1008E42F8, type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel, &unk_1006E18E0);
  *(v0 + 48) = StateObject.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100260FDC;

  return sub_100261998();
}

uint64_t sub_100260FDC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001D04BC, v3, v2);
}

uint64_t sub_100261120@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static Alignment.center.getter();
  *(a2 + 1) = v6;
  v7 = sub_100140278(&qword_1008E4340, &qword_1006E1A70);
  sub_10025F40C(v2, &a2[*(v7 + 44)]);
  sub_100262CF8(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100262D64(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &a2[*(sub_100140278(&qword_1008E4348, &qword_1006E1A88) + 36)];
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v10 = &unk_1006E1A80;
  *(v10 + 1) = v9;
  return result;
}

uint64_t sub_100261268()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7, v9);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448, &qword_1006D48C0);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v13 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925388 = v13;
  return result;
}

uint64_t sub_100261514()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100261588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002615FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100261670(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v21 = sub_100140278(&unk_1008F6FE0, &unk_1006E1A10);
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v21 - v4;
  v6 = sub_100140278(&qword_1008E4270, &qword_1006E1A08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_100140278(&qword_1008E4268, &qword_1006E1A00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__iconImage;
  v24 = 0;
  sub_100140278(&qword_1008E9B30, &qword_1006E1880);
  Published.init(initialValue:)();
  (*(v11 + 32))(v2 + v14, v13, v10);
  v15 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__labels;
  v24 = _swiftEmptyArrayStorage;
  sub_100140278(&unk_1008E4108, &qword_1006E1888);
  Published.init(initialValue:)();
  (*(v7 + 32))(v2 + v15, v9, v6);
  v16 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__isLoaded;
  LOBYTE(v24) = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v2 + v16, v5, v21);
  v17 = v2 + OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_renderer;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_100015E80(v22, v2 + OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_payload, &unk_1008EB5B0, &unk_1006D2BF0);
  v18 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_reply;
  v19 = type metadata accessor for Reply();
  (*(*(v19 - 8) + 32))(v2 + v18, v23, v19);
  return v2;
}

uint64_t sub_100261998()
{
  v1[14] = v0;
  v2 = type metadata accessor for AttributedString();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v5;
  v1[24] = v4;

  return _swift_task_switch(sub_100261B20, v5, v4);
}

uint64_t sub_100261B20()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_10001B104(v0[14] + OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_payload, v3, &unk_1008EB5B0, &unk_1006D2BF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];

    sub_10000EA04(v4, &unk_1008EB5B0, &unk_1006D2BF0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[14];
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v8 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_reply;
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_100261CB4;
    v10 = v0[21];

    return static ActivityRendererFactory.activityRenderer(for:payload:)(v0 + 7, v7 + v8, v10);
  }
}

uint64_t sub_100261CB4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_100261DD4, v3, v2);
}

void *sub_100261DD4()
{

  if (*(v0 + 80))
  {
    sub_100006260((v0 + 56), v0 + 16);
    sub_1000066AC((v0 + 16), *(v0 + 40));
    v1 = dispatch thunk of ActivityRenderer.iconView.getter();
    v2 = [v1 image];

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = v2;

    static Published.subscript.setter();
    sub_1000066AC((v0 + 16), *(v0 + 40));
    v3 = dispatch thunk of ActivityRenderer.labels.getter();
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_29:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_28;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = [v8 attributedText];

      ++v7;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v10;
      }
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_17:
        result = sub_100185F98(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
          return result;
        }

        v14 = 0;
        v15 = *(v0 + 128);
        do
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = _swiftEmptyArrayStorage[v14 + 4];
          }

          AttributedString.init(_:)();
          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          if (v18 >= v17 >> 1)
          {
            sub_100185F98((v17 > 1), v18 + 1, 1);
          }

          v19 = *(v0 + 136);
          v20 = *(v0 + 120);
          ++v14;
          _swiftEmptyArrayStorage[2] = v18 + 1;
          (*(v15 + 32))(_swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v18, v19, v20);
        }

        while (v12 != v14);
      }
    }

    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = _swiftEmptyArrayStorage;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 1;

    static Published.subscript.setter();
    (*(v22 + 8))(v21, v23);
    sub_100005A40((v0 + 16));
    goto LABEL_32;
  }

  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_10000EA04(v0 + 56, &qword_1008E4260, &qword_1006E1920);
LABEL_32:

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10026225C()
{
  v1 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__iconImage;
  v2 = sub_100140278(&qword_1008E4268, &qword_1006E1A00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__labels;
  v4 = sub_100140278(&qword_1008E4270, &qword_1006E1A08);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel__isLoaded;
  v6 = sub_100140278(&unk_1008F6FE0, &unk_1006E1A10);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000EA04(v0 + OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_payload, &unk_1008EB5B0, &unk_1006D2BF0);
  v7 = OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_reply;
  v8 = type metadata accessor for Reply();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_10000EA04(v0 + OBJC_IVAR____TtCV10FitnessApp28ActivitySharingReplyEditView33ActivitySharingReplyEditViewModel_renderer, &qword_1008E4260, &qword_1006E1920);

  return swift_deallocClassInstance();
}

void sub_100262444(uint64_t a1)
{
  sub_100262B3C(319, &qword_1008E40F8, &qword_1008E9B30, &qword_1006E1880, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100262B3C(319, &qword_1008E4100, &unk_1008E4108, &qword_1006E1888, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100262BA0(319, &qword_1008F6F50, &type metadata for Bool, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1001B0B70(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Reply();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100262644@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100262684(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100262704(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

void sub_10026277C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002627FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100262878(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002628F8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002629B4(uint64_t a1)
{
  sub_100262BA0(319, &qword_1008E0678, &type metadata for Bool, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_100262B3C(319, &qword_1008DF470, &unk_1008DF478, &qword_1006FC980, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_100262BA0(319, &qword_1008E42E0, &type metadata for String, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100262BF0();
        if (v4 <= 0x3F)
        {
          sub_100262C48(319);
          if (v5 <= 0x3F)
          {
            sub_1001B0B70(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Reply();
              if (v7 <= 0x3F)
              {
                type metadata accessor for ReplyLayoutValues();
                if (v8 <= 0x3F)
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
}

void sub_100262B3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100141EEC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100262BA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100262BF0()
{
  if (!qword_1008E42E8)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E42E8);
    }
  }
}

void sub_100262C48(uint64_t a1)
{
  if (!qword_1008E42F0)
  {
    type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel(255);
    sub_1002632A0(&unk_1008E42F8, type metadata accessor for ActivitySharingReplyEditView.ActivitySharingReplyEditViewModel, &unk_1006E18E0);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E42F0);
    }
  }
}

uint64_t sub_100262CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingReplyEditView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100262D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingReplyEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100262DC8()
{
  v2 = *(type metadata accessor for ActivitySharingReplyEditView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_100260E44(v0 + v3);
}

unint64_t sub_100262EAC()
{
  result = qword_1008E4368;
  if (!qword_1008E4368)
  {
    sub_100141EEC(&qword_1008E4360, &qword_1006E1AA0);
    sub_100262F64();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4368);
  }

  return result;
}

unint64_t sub_100262F64()
{
  result = qword_1008E4370;
  if (!qword_1008E4370)
  {
    sub_100141EEC(&qword_1008E4378, &unk_1006E1AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4370);
  }

  return result;
}

unint64_t sub_100262FE8()
{
  result = qword_1008E43E8;
  if (!qword_1008E43E8)
  {
    sub_100141EEC(&qword_1008E43C0, &qword_1006E1B00);
    sub_10014A6B0(&qword_1008E43F0, &qword_1008E43F8, &unk_1006EC6C0, &protocol conformance descriptor for TextField<A>);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E43E8);
  }

  return result;
}

uint64_t sub_1002630E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivitySharingReplyEditView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_100263158(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for ActivitySharingReplyEditView(0);

  sub_1002607A4(a1, a2);
}

unint64_t sub_1002631D8()
{
  result = qword_1008E4400;
  if (!qword_1008E4400)
  {
    sub_100141EEC(&qword_1008E43C8, &qword_1006E1B08);
    sub_100141EEC(&qword_1008E43C0, &qword_1006E1B00);
    sub_100262FE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4400);
  }

  return result;
}

uint64_t sub_1002632A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002632E8()
{
  result = qword_1008E4450;
  if (!qword_1008E4450)
  {
    sub_100141EEC(&qword_1008E4348, &qword_1006E1A88);
    sub_10014A6B0(&qword_1008E4458, &unk_1008E4460, qword_1006E1BD0, &protocol conformance descriptor for ZStack<A>);
    sub_1002632A0(&qword_1008DB010, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4450);
  }

  return result;
}

id sub_100263758(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnboardingNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10026390C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7, v9);
  v12 = enum case for Font.Design.default(_:);
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  sub_1000465F8(v6);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v15 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925398 = v15;
  return result;
}

uint64_t sub_100263BCC()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for Font.TextStyle.caption2(_:), v4, v6);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v8, v4);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v9 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_1009253A0 = v9;
  return result;
}

void *sub_100263DA4@<X0>(void *a1@<X8>)
{
  v3 = sub_100140278(&qword_1008E44A0, &qword_1006E1CC8);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_100140278(&qword_1008E44A8, &unk_1006E1CD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = *(*(v1 + 24) + 16);
  v41 = v3;
  v42 = a1;
  if (v11 < 2)
  {
    v17 = *(v1 + 40);
    v43 = *v1;
    v44 = *(v1 + 16);
    sub_100140278(&qword_1008E0EA0, &unk_1006DCAF0);
    Binding.wrappedValue.getter();
    result = [v17 stringFromInteger:v46];
    if (result)
    {
      v18 = result;
      v40 = v6;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *&v43 = v19;
      *(&v43 + 1) = v21;
      sub_10000FCBC();
      v22 = Text.init<A>(_:)();
      v24 = v23;
      v26 = v25;
      if (qword_1008DA730 != -1)
      {
        swift_once();
      }

      v27 = Text.font(_:)();
      v29 = v28;
      v31 = v30;
      sub_10004642C(v22, v24, v26 & 1);

      static Color.secondary.getter();
      v32 = Text.foregroundColor(_:)();
      v34 = v33;
      v36 = v35;
      v38 = v37;

      sub_10004642C(v27, v29, v31 & 1);

      *v5 = v32;
      *(v5 + 1) = v34;
      v5[16] = v36 & 1;
      *(v5 + 3) = v38;
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008E44B0, &qword_1008E44A8, &unk_1006E1CD0, &protocol conformance descriptor for Menu<A, B>);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v40 = &v39;
    __chkstk_darwin(v8);
    *(&v39 - 2) = v1;
    __chkstk_darwin(v12);
    *(&v39 - 2) = v1;
    v39 = sub_100140278(&qword_1008E44B8, &qword_1006E1CE0);
    sub_100140278(&qword_1008E44C0, &qword_1006E1CE8);
    v13 = sub_100141EEC(&qword_1008E44C8, &qword_1006E1CF0);
    v14 = sub_10014A6B0(&qword_1008E44D0, &qword_1008E44C8, &qword_1006E1CF0, &protocol conformance descriptor for Label<A, B>);
    v15 = sub_100264AB4();
    *&v43 = v13;
    *(&v43 + 1) = &type metadata for PickerLabelStyle;
    v44 = v14;
    v45 = v15;
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44E0, &qword_1008E44C0, &qword_1006E1CE8, &protocol conformance descriptor for Picker<A, B, C>);
    Menu.init(content:label:)();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E44B0, &qword_1008E44A8, &unk_1006E1CD0, &protocol conformance descriptor for Menu<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1002642CC(__int128 *a1)
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_100140278(&qword_1008E0EA0, &unk_1006DCAF0);
  Binding.projectedValue.getter();
  sub_100140278(&qword_1008E4508, &unk_1006E1D78);
  sub_100264EC0();
  return Picker<>.init(_:selection:content:)();
}

uint64_t sub_1002643D8(uint64_t *a1)
{
  v11 = a1[3];
  v8[4] = v11;
  swift_getKeyPath();
  v2 = *a1;
  v3 = a1[5];
  v9 = a1[4];
  v10 = v2;
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = *(a1 + 2);

  sub_100264F90(&v11, v8);
  sub_100265000(&v10, v8);

  sub_10026505C(&v9, v8);
  v6 = v3;
  sub_100140278(&qword_1008E4518, &unk_1006E1DA0);
  sub_100140278(&qword_1008E4520, &qword_1006EC830);
  sub_10014A6B0(&qword_1008E4528, &qword_1008E4518, &unk_1006E1DA0, &protocol conformance descriptor for [A]);
  sub_1002650B8();
  v8[0] = &type metadata for Text;
  v8[1] = &type metadata for Int;
  v8[2] = &protocol witness table for Text;
  v8[3] = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

id sub_100264594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = [*(a2 + 40) stringFromInteger:*a1];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000FCBC();
    result = Text.init<A>(_:)();
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8 & 1;
    *(a3 + 24) = v9;
    *(a3 + 32) = v4;
    *(a3 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10026463C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E44C8, &qword_1006E1CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v9 = a1;
  v8 = a1;
  sub_100140278(&qword_1008E44E8, &qword_1006E1CF8);
  sub_100264B18();
  Label.init(title:icon:)();
  sub_10014A6B0(&qword_1008E44D0, &qword_1008E44C8, &qword_1006E1CF0, &protocol conformance descriptor for Label<A, B>);
  sub_100264AB4();
  View.labelStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

id sub_1002647E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 5);
  sub_100140278(&qword_1008E0EA0, &unk_1006DCAF0);
  Binding.wrappedValue.getter();
  result = [v3 stringFromInteger:v23];
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000FCBC();
    v6 = Text.init<A>(_:)();
    v8 = v7;
    v10 = v9;
    if (qword_1008DA730 != -1)
    {
      swift_once();
    }

    v11 = Text.font(_:)();
    v13 = v12;
    v15 = v14;
    sub_10004642C(v6, v8, v10 & 1);

    static Color.secondary.getter();
    v16 = Text.foregroundColor(_:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_10004642C(v11, v13, v15 & 1);

    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v20 & 1;
    *(a2 + 24) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100264994@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Image.init(systemName:)();
  if (qword_1008DA738 != -1)
  {
    swift_once();
  }

  v5 = qword_1009253A0;
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + 32);
  v8 = swift_getKeyPath();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v5;
  a2[3] = v8;
  a2[4] = v7;
}

unint64_t sub_100264AB4()
{
  result = qword_1008E44D8;
  if (!qword_1008E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E44D8);
  }

  return result;
}

unint64_t sub_100264B18()
{
  result = qword_1008E44F0;
  if (!qword_1008E44F0)
  {
    sub_100141EEC(&qword_1008E44E8, &qword_1006E1CF8);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E44F0);
  }

  return result;
}

uint64_t sub_100264BD0@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Icon();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Title();
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(sub_100140278(&qword_1008E4550, &qword_1006E1E10) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_100264E60@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v3 = sub_100140278(&qword_1008E4548, &qword_1006E1E08);
  return sub_100264BD0((a2 + *(v3 + 44)));
}

unint64_t sub_100264EC0()
{
  result = qword_1008E4510;
  if (!qword_1008E4510)
  {
    sub_100141EEC(&qword_1008E4508, &unk_1006E1D78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4510);
  }

  return result;
}

uint64_t sub_100264F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4518, &unk_1006E1DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002650B8()
{
  result = qword_1008E4530;
  if (!qword_1008E4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4530);
  }

  return result;
}

unint64_t sub_10026511C()
{
  result = qword_1008E4538;
  if (!qword_1008E4538)
  {
    sub_100141EEC(&qword_1008E4540, "NT\v");
    sub_10014A6B0(&qword_1008E44B0, &qword_1008E44A8, &unk_1006E1CD0, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4538);
  }

  return result;
}

uint64_t sub_1002651F0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimeZone();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() localTimeZone];
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  v16 = TimeZone.secondsFromGMT(for:)();
  v25 = *(v8 + 8);
  v25(v10, v7);
  result = (*(v12 + 8))(v14, v11);
  if (__OFSUB__(0, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = [v26 _startDate];
    if (v18)
    {
      v19 = v18;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v8 + 56);
    v21(v3, v20, 1, v7);
    sub_1002239C4(v3, v6);
    if ((*(v8 + 48))(v6, 1, v7))
    {
      sub_1001F145C(v6);
      v22 = 1;
      v23 = v27;
    }

    else
    {
      (*(v8 + 16))(v10, v6, v7);
      sub_1001F145C(v6);
      v23 = v27;
      Date.addingTimeInterval(_:)();
      v25(v10, v7);
      v22 = 0;
    }

    return (v21)(v23, v22, 1, v7);
  }

  return result;
}

id sub_100265534(char a1, char a2)
{
  v4 = [objc_allocWithZone(HKActivitySummary) init];
  [v4 setActivityMoveMode:1];
  v5 = objc_opt_self();
  v6 = [v5 kilocalorieUnit];
  v7 = objc_opt_self();
  v8 = [v7 quantityWithUnit:v6 doubleValue:100.0];

  [v4 setActiveEnergyBurned:v8];
  v9 = [v5 kilocalorieUnit];
  v10 = [v7 quantityWithUnit:v9 doubleValue:100.0];

  [v4 setActiveEnergyBurnedGoal:v10];
  [v4 setDeprecatedPauseForInternalSwiftClient:a2 & 1];
  if ((a1 & 1) == 0)
  {
    v11 = [v5 minuteUnit];
    v12 = [v7 quantityWithUnit:v11 doubleValue:30.0];

    [v4 setAppleExerciseTime:v12];
    v13 = [v5 minuteUnit];
    v14 = [v7 quantityWithUnit:v13 doubleValue:30.0];

    [v4 setExerciseTimeGoal:v14];
    v15 = [v5 countUnit];
    v16 = [v7 quantityWithUnit:v15 doubleValue:12.0];

    [v4 setStandHoursGoal:v16];
    v17 = [v5 countUnit];
    v18 = [v7 quantityWithUnit:v17 doubleValue:12.0];

    [v4 setAppleStandHours:v18];
  }

  return v4;
}

unint64_t sub_1002657F4()
{
  result = qword_1008E4568;
  if (!qword_1008E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4568);
  }

  return result;
}

unint64_t sub_10026584C()
{
  result = qword_1008E4570;
  if (!qword_1008E4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4570);
  }

  return result;
}

unint64_t sub_10026590C()
{
  result = qword_1008E4578;
  if (!qword_1008E4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4578);
  }

  return result;
}

uint64_t sub_10026598C(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for URLComponents();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v1[22] = swift_task_alloc();
  sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  v1[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_100265AF0, v4, v3);
}

uint64_t sub_100265AF0()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  URLComponents.init(string:)();
  v4 = *(v3 + 48);
  if (!v4(v1, 1, v2))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
  }

  v5 = v0[23];
  v6 = v0[19];
  v7 = [objc_opt_self() sharedApplication];
  v0[27] = v7;
  if (v4(v5, 1, v6))
  {
    v8 = v0[22];
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = 0;
  }

  else
  {
    v11 = v0[22];
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    (*(v13 + 16))(v12, v0[23], v14);
    URLComponents.url.getter();
    (*(v13 + 8))(v12, v14);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v10 = 0;
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      v18 = v0[22];
      URL._bridgeToObjectiveC()(v17);
      v10 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v0[28] = v10;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_100265E8C;
  v20 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_10084E668;
  v0[14] = v20;
  [v7 openURL:v10 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100265E8C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100265F94, v2, v1);
}

uint64_t sub_100265F94()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[23];

  static IntentResult.result<>()();
  sub_1001760E8(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100266068(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002BACC;

  return sub_10026598C(a1);
}

uint64_t sub_100266100(uint64_t a1)
{
  v2 = sub_10026590C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100266140()
{
  result = qword_1008E4580;
  if (!qword_1008E4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4580);
  }

  return result;
}

unint64_t sub_100266198()
{
  result = qword_1008E4588;
  if (!qword_1008E4588)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4588);
  }

  return result;
}

uint64_t sub_10026621C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v5, a2);
  sub_10001AC90(v5, a2);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10026627C()
{
  sub_100140278(&qword_1008E45E8, &qword_1006E21B0);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D46C0;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_1009253D8 = v3;
  return result;
}

uint64_t sub_100266384(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URLComponents();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for StringSearchCriteria();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100266510, 0, 0);
}

uint64_t sub_100266510()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[21];
  URLComponents.init(string:)();
  v4 = *(v3 + 48);
  v0[28] = v4;
  v0[29] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v4(v1, 1, v2))
  {
    v5 = v0[26];
    v6 = v0[24];
    v7 = v0[25];
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    IntentParameter.wrappedValue.getter();
    StringSearchCriteria.term.getter();
    (*(v7 + 8))(v5, v6);
    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
  }

  v0[30] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[31] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026671C, v9, v8);
}

uint64_t sub_10026671C()
{
  v1 = *(v0 + 240);

  *(v0 + 256) = [v1 sharedApplication];

  return _swift_task_switch(sub_1002667A0, 0, 0);
}

uint64_t sub_1002667A0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = (*(v0 + 224))(v1, 1, v2);
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    (*(v8 + 16))(v7, v1, v2);
    URLComponents.url.getter();
    (*(v8 + 8))(v7, v2);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v6 = 0;
    if ((*(v10 + 48))(v4, 1, v9) != 1)
    {
      v12 = *(v0 + 184);
      URL._bridgeToObjectiveC()(v11);
      v6 = v13;
      (*(v10 + 8))(v12, v9);
    }
  }

  *(v0 + 264) = v6;
  v14 = *(v0 + 256);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_100266A04;
  v15 = swift_continuation_init();
  *(v0 + 136) = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10039070C;
  *(v0 + 104) = &unk_10084E640;
  *(v0 + 112) = v15;
  [v14 openURL:v6 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100266A04()
{

  return _swift_task_switch(sub_100266AE4, 0, 0);
}

uint64_t sub_100266AE4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);

  static IntentResult.result<>()();
  sub_1001760E8(v2);

  v3 = *(v0 + 8);

  return v3();
}

double sub_100266B98@<D0>(void *a1@<X8>)
{
  if (qword_1008DA750 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1009253D8;

  return result;
}

uint64_t sub_100266C2C(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100266D1C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

unint64_t sub_100266D90()
{
  result = qword_1008E4590;
  if (!qword_1008E4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4590);
  }

  return result;
}

unint64_t sub_100266DE8()
{
  result = qword_1008E4598;
  if (!qword_1008E4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4598);
  }

  return result;
}

unint64_t sub_100266E44()
{
  result = qword_1008E45A0;
  if (!qword_1008E45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E45A0);
  }

  return result;
}

unint64_t sub_100266E9C()
{
  result = qword_1008E45A8;
  if (!qword_1008E45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E45A8);
  }

  return result;
}

uint64_t sub_100266F4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100140278(&qword_1008E45D0, &qword_1006E2170);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008E45D8, &qword_1006E2178);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x20686372616553;
  v4._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100140278(&qword_1008E45E0, &qword_1006E21A8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1002670E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_100266384(a1, v4);
}

uint64_t sub_100267180@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008E45C0, &qword_1006E2150);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = type metadata accessor for IntentDialog();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v2);
  result = IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
  *a1 = result;
  return result;
}

uint64_t sub_100267438(uint64_t a1)
{
  v2 = sub_100266D90();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002674A4()
{
  sub_100140278(&qword_1008DD148, &unk_1006D5CD0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150, &qword_1006D8820);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_1009253E0 = v0;
  *algn_1009253E8 = result;
  return result;
}

uint64_t sub_100267564()
{
  v0 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009253F0);
  sub_10001AC90(v5, qword_1009253F0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002676D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_10026777C()
{
  result = qword_1008E45F0;
  if (!qword_1008E45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E45F0);
  }

  return result;
}

Swift::Int sub_1002677D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100267850(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002678BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100267938@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100843840, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100267998(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1002679D8()
{
  result = qword_1008E45F8;
  if (!qword_1008E45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E45F8);
  }

  return result;
}

unint64_t sub_100267A30()
{
  result = qword_1008E4600;
  if (!qword_1008E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4600);
  }

  return result;
}

unint64_t sub_100267A88()
{
  result = qword_1008E4608;
  if (!qword_1008E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4608);
  }

  return result;
}

unint64_t sub_100267B90()
{
  result = qword_1008E4610;
  if (!qword_1008E4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4610);
  }

  return result;
}

unint64_t sub_100267BE4()
{
  result = qword_1008E4618;
  if (!qword_1008E4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4618);
  }

  return result;
}

unint64_t sub_100267C38()
{
  result = qword_1008E4620;
  if (!qword_1008E4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4620);
  }

  return result;
}

unint64_t sub_100267C90()
{
  result = qword_1008E4628;
  if (!qword_1008E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4628);
  }

  return result;
}

unint64_t sub_100267D58()
{
  result = qword_1008E4630;
  if (!qword_1008E4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4630);
  }

  return result;
}

uint64_t sub_100267DAC(uint64_t a1)
{
  v2 = sub_100267D58();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100267DFC()
{
  result = qword_1008E4638;
  if (!qword_1008E4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4638);
  }

  return result;
}

unint64_t sub_100267E54()
{
  result = qword_1008E4640;
  if (!qword_1008E4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4640);
  }

  return result;
}

unint64_t sub_100267EAC()
{
  result = qword_1008E4648;
  if (!qword_1008E4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4648);
  }

  return result;
}

uint64_t sub_100267F04(uint64_t a1)
{
  v2 = sub_100267C90();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100267FA8()
{
  result = qword_1008E4660;
  if (!qword_1008E4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4660);
  }

  return result;
}

unint64_t sub_100268000()
{
  result = qword_1008E4668;
  if (!qword_1008E4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4668);
  }

  return result;
}

unint64_t sub_100268058()
{
  result = qword_1008E4670;
  if (!qword_1008E4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4670);
  }

  return result;
}

unint64_t sub_1002680B0()
{
  result = qword_1008E4678;
  if (!qword_1008E4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4678);
  }

  return result;
}

uint64_t sub_100268170()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v0, qword_100925408);
  sub_10001AC90(v0, qword_100925408);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

void *sub_1002681E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008DDB78, &unk_1006E28C0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v19._countAndFlagsBits = 0x2074696C7053;
  v19._object = 0xE600000000000000;
  result = EntityProperty.wrappedValue.getter();
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    ++v18;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = a1;
    String.append(_:)(v12);

    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    LocalizedStringResource.init(stringInterpolation:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v15._countAndFlagsBits = sub_100268500();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v7 + 56))(v5, 0, 1, v6);

    DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
    return DisplayRepresentation.init(title:subtitle:image:)();
  }

  return result;
}

uint64_t sub_100268500()
{
  v1 = sub_100140278(&qword_1008DEC70, &unk_1006D8760);
  __chkstk_darwin(v1 - 8);
  v3 = &v49 - v2;
  v4 = sub_100140278(&qword_1008DEC88, &qword_1006D8970);
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v49 - v5;
  v6 = sub_100140278(&qword_1008DEC58, "fv\n");
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = v0;
  v54 = *(v0 + 48);
  AppDependency.wrappedValue.getter();
  v17 = v59;
  v52 = *(v0 + 16);
  EntityProperty.wrappedValue.getter();
  Measurement.value.getter();
  v19 = v18;
  v51 = *(v7 + 8);
  v51(v9, v6);
  v20 = [v17 stringWithDuration:3 durationFormat:v19];

  v53 = v13;
  v55 = v15;
  if (v20)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {

    v22 = v15;
  }

  EntityProperty.wrappedValue.getter();
  v23 = v57;
  v24 = v58;
  if ((*(v57 + 48))(v3, 1, v58) == 1)
  {

    sub_10026A294(v3);
  }

  else
  {
    v50 = v13;
    (*(v23 + 32))(v56, v3, v24);
    v25 = [objc_opt_self() meterUnit];
    Measurement.value.getter();
    v27 = [objc_opt_self() quantityWithUnit:v25 doubleValue:v26];

    v28 = *(v16 + 40);
    v29 = FIUIPaceFormatForDistanceType();
    AppDependency.wrappedValue.getter();
    v30 = v59;
    v31 = v27;
    EntityProperty.wrappedValue.getter();
    Measurement.value.getter();
    v33 = v32;
    v51(v9, v6);
    v34 = [v30 localizedPaceStringWithDistance:v31 overDuration:v29 paceFormat:v28 distanceType:v33];

    if (v34)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v53;
      v39 = v55;
    }

    else
    {
      v39 = v55;

      v38 = v53;
      v35 = v53;
      v37 = v39;
    }

    AppDependency.wrappedValue.getter();
    v40 = v59;
    Measurement.value.getter();
    v41 = [v40 localizedStringWithDistanceInMeters:v28 distanceType:1 unitStyle:?];

    if (v41)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v39 = v43;
    }

    v59 = v38;
    v60 = v39;
    v44._countAndFlagsBits = 548913696;
    v44._object = 0xA400000000000000;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v50;
    v45._object = v22;
    String.append(_:)(v45);

    v46._countAndFlagsBits = 548913696;
    v46._object = 0xA400000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = v35;
    v47._object = v37;
    String.append(_:)(v47);

    v13 = v59;
    (*(v57 + 8))(v56, v58);
  }

  return v13;
}

uint64_t sub_100268A4C@<X0>(void *a1@<X8>)
{
  if (qword_1008DA758 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1009253E8;
  *a1 = qword_1009253E0;
  a1[1] = v1;
}

unint64_t sub_100268ACC()
{
  result = qword_1008E4688;
  if (!qword_1008E4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4688);
  }

  return result;
}

unint64_t sub_100268B20()
{
  result = qword_1008E4690;
  if (!qword_1008E4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4690);
  }

  return result;
}

unint64_t sub_100268B74()
{
  result = qword_1008E4698;
  if (!qword_1008E4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4698);
  }

  return result;
}

unint64_t sub_100268BCC()
{
  result = qword_1008E46A0;
  if (!qword_1008E46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E46A0);
  }

  return result;
}

uint64_t sub_100268C98@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for TypeDisplayRepresentation();
  v7 = sub_10001AC90(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100268D78(uint64_t a1)
{
  v2 = sub_10026A634();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100268DC8()
{
  result = qword_1008E46C0;
  if (!qword_1008E46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E46C0);
  }

  return result;
}

uint64_t sub_100268E20(uint64_t a1)
{
  v2 = sub_100268BCC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

Swift::Int sub_100268E78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100268F38(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100268FE4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002690A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026AB64(*a1);
  *a2 = result;
  return result;
}

void sub_1002690D0(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x4974756F6B726F77;
  v4 = 0x8000000100747220;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x7865646E69;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10026914C()
{
  v1 = 0x4974756F6B726F77;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7865646E69;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

unint64_t sub_1002691C4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10026AB64(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002691F8(uint64_t a1)
{
  v2 = sub_10026A538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100269234(uint64_t a1)
{
  v2 = sub_10026A538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100269270()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_10026A49C(&qword_1008E4798, v2, type metadata accessor for WorkoutSplitIdentifier, &unk_1006E26E0);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;
  static String.Encoding.utf8.getter();
  v11 = String.init(data:encoding:)();
  if (v12)
  {
    v13 = v11;
    sub_10000AF88(v8, v10);
  }

  else
  {
    sub_10026A4E4();
    swift_allocError();
    swift_willThrow();
    sub_10000AF88(v8, v10);
    v3 = static os_log_type_t.error.getter();
    v4 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006D1F70;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000A788();
    *(v5 + 32) = 0xD000000000000016;
    *(v5 + 40) = 0x8000000100750300;
    v6 = v4;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 96) = sub_10026A450();
    *(v5 + 104) = sub_10026A49C(&qword_1008E4030, 255, sub_10026A450, &protocol conformance descriptor for NSObject);
    *(v5 + 72) = v7;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v6, "%@ Error creating JSON data. error=%@", 37, 2, v5);

    v13 = 0;
  }

  return v13;
}

uint64_t *sub_100269578(void *a1)
{
  v3 = v1;
  v14 = sub_100140278(&qword_1008E47C0, &qword_1006E28B8);
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_10026A538();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v19 = 0;
    v9 = v14;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v10;
    v17 = 1;
    sub_10026A5E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 32) = v18;
    v16 = 2;
    *(v1 + 40) = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 3;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v8 + 8))(v7, v9);
    *(v3 + 48) = v12;
  }

  sub_100005A40(a1);
  return v3;
}

uint64_t sub_1002697F4(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008E47A8, &qword_1006E28B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000066AC(a1, a1[3]);
  sub_10026A538();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 32);
    v10[13] = 1;
    sub_10026A58C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002699C0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10026A49C(&qword_1008E4790, v9, type metadata accessor for WorkoutSplitIdentifier, &unk_1006E26B8);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100145150(v6, v8);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

Swift::Int sub_100269CF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100269D7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100269DD8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100843938, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100269E54()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100269E8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 48));
  return Hasher._finalize()();
}

uint64_t *sub_100269F34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100269578(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100269FB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100269270();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10026A000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1002699C0(a1, a2);
  *a3 = result;
  return result;
}

void sub_10026A094(uint64_t a1)
{
  v2 = *v1;
  String.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 48));
}

Swift::Int sub_10026A124(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 48));
  return Hasher._finalize()();
}

uint64_t sub_10026A1DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10026A224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026A294(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DEC70, &unk_1006D8760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10026A344(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*(a1 + 32))
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*(a2 + 32))
  {
    v7 = 0x6D6F74737563;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (*(a2 + 32))
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return 0;
}

unint64_t sub_10026A450()
{
  result = qword_1008E56F0;
  if (!qword_1008E56F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E56F0);
  }

  return result;
}

uint64_t sub_10026A49C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10026A4E4()
{
  result = qword_1008E47A0;
  if (!qword_1008E47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47A0);
  }

  return result;
}

unint64_t sub_10026A538()
{
  result = qword_1008E47B0;
  if (!qword_1008E47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47B0);
  }

  return result;
}

unint64_t sub_10026A58C()
{
  result = qword_1008E47B8;
  if (!qword_1008E47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47B8);
  }

  return result;
}

unint64_t sub_10026A5E0()
{
  result = qword_1008E47C8;
  if (!qword_1008E47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47C8);
  }

  return result;
}

unint64_t sub_10026A634()
{
  result = qword_1008E47D0;
  if (!qword_1008E47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47D0);
  }

  return result;
}

unint64_t sub_10026A688()
{
  v0 = sub_100140278(&qword_1008DDB78, &unk_1006E28C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v16 = type metadata accessor for LocalizedStringResource();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_100140278(&qword_1008E47D8, &qword_1006E28D0);
  v5 = *(sub_100140278(&qword_1008E47E0, &qword_1006E28D8) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D1F70;
  v9 = (v8 + v7);
  *v9 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v10 = v4 + 56;
  v11 = *(v4 + 56);
  v15 = v10;
  v12 = v16;
  v11(v3, 1, 1, v16);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v9[v6] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v11(v3, 1, 1, v12);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v13 = sub_1004CA388(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

unint64_t sub_10026AA08()
{
  result = qword_1008E47E8;
  if (!qword_1008E47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47E8);
  }

  return result;
}

unint64_t sub_10026AA60()
{
  result = qword_1008E47F0;
  if (!qword_1008E47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47F0);
  }

  return result;
}

unint64_t sub_10026AAB8()
{
  result = qword_1008E47F8;
  if (!qword_1008E47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E47F8);
  }

  return result;
}

unint64_t sub_10026AB10()
{
  result = qword_1008E4800;
  if (!qword_1008E4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4800);
  }

  return result;
}

unint64_t sub_10026AB64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008438B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026ABF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10026AC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_10026ACC0(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = v2[28];
  if (v5 == 2)
  {
    sub_100140278(&qword_1008E48C8, &qword_1006E2C80);
    UIViewRepresentableContext.coordinator.getter();
    v6 = *(v15 + 16);

    v7 = v6 & v3[25];
  }

  else if (v5)
  {
    v7 = 1;
  }

  else
  {
    sub_100140278(&qword_1008E48C8, &qword_1006E2C80);
    UIViewRepresentableContext.coordinator.getter();
    v8 = *(v15 + 16);

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3[25];
    }
  }

  sub_10026AE90(a1, v7 & 1);
  sub_100140278(&qword_1008E48C8, &qword_1006E2C80);
  UIViewRepresentableContext.coordinator.getter();
  *(v15 + 16) = 0;

  if (v3[27])
  {
    v9 = (v3[27] == 1 ? &selRef_defaultSpriteSheet : &selRef_wheelchairSpriteSheet);
    v10 = [objc_opt_self() *v9];
    if (v10)
    {
      v11 = v10;
      v12 = [a1 ringGroup];
      if (v3[8])
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      [v12 setSpriteSheet:v13];

      v14 = [a1 ringGroup];
      [v14 playSpriteAnimation];
    }
  }
}

void sub_10026AE90(void *a1, char a2)
{
  v3 = v2;
  v6 = ARUIRingPercentageValueNoRing;
  v7 = *(v3 + 24);
  if (v7 == 2)
  {
    v8 = *v3;
    if (*v3)
    {
      LOBYTE(v7) = [*v3 _isStandalonePhoneSummary];
LABEL_5:
      v11 = v8;
      v12 = [v11 activityMoveMode];
      v13 = &selRef__moveMinutesCompletionPercentage;
      if (v12 != 2)
      {
        v13 = &selRef__activeEnergyCompletionPercentage;
      }

      [v11 *v13];
      v10 = v14;
      [v11 _exerciseTimeCompletionPercentage];
      v9 = v15;
      [v11 _standHoursCompletionPercentage];
      v17 = v16;

      v6 = v17;
      goto LABEL_10;
    }

    v18 = [objc_opt_self() sharedBehavior];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    LOBYTE(v7) = [v18 isStandalonePhoneFitnessMode];

    v9 = v6;
    v10 = v6;
  }

  else
  {
    v8 = *v3;
    v9 = ARUIRingPercentageValueNoRing;
    v10 = ARUIRingPercentageValueNoRing;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

LABEL_10:

  v20 = [a1 ringGroup];
  [v20 setIsStandalonePhoneFitnessMode:v7 & 1 animated:0];

  v21 = [a1 ringGroup];
  *&v22 = v10;
  *&v23 = v9;
  *&v24 = v6;
  [v21 setActiveEnergyPercentage:a2 & 1 exerciseMinutesPercentage:0 standHoursPercentage:v22 animated:v23 completion:v24];

  v25 = [a1 ringGroup];
  [v25 setIsPaused:*(v3 + 8) animated:*(v3 + 26)];

  v26 = *(v3 + 32);
  if (v26)
  {
    v26();
  }
}

uint64_t sub_10026B0F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RingCoordinator();
  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result;
  return result;
}

uint64_t sub_10026B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026B39C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10026B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026B39C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10026B1F4(uint64_t a1)
{
  sub_10026B39C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10026B220()
{
  result = qword_1008E48C0;
  if (!qword_1008E48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E48C0);
  }

  return result;
}

uint64_t sub_10026B274()
{
  v0 = [objc_opt_self() activityRingGroupForRingType:3];
  v1 = [v0 forCompanion];

  if (qword_1008DA638 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(ARUIRingsView) initWithRingGroup:v1 renderer:static ARUIRendererCacheWrapper.sharedRenderer];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  v6 = ARUIRingsView.nilRings(animated:)();
  return v6;
}

unint64_t sub_10026B39C()
{
  result = qword_1008E48D0;
  if (!qword_1008E48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E48D0);
  }

  return result;
}

unint64_t sub_10026B3F4()
{
  result = qword_1008E48D8;
  if (!qword_1008E48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E48D8);
  }

  return result;
}

uint64_t sub_10026B448()
{
  sub_100005A40((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_10026B480(uint64_t a1)
{
  sub_1000059F8(319, &qword_1008E53D0, ASFriend_ptr);
  if (v1 <= 0x3F)
  {
    sub_10026B574();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttributedString();
      if (v3 <= 0x3F)
      {
        sub_10026B5C4(319);
        if (v4 <= 0x3F)
        {
          sub_10026B61C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026B574()
{
  if (!qword_1008E4A10)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E4A10);
    }
  }
}

void sub_10026B5C4(uint64_t a1)
{
  if (!qword_1008E4A18)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E4A18);
    }
  }
}

void sub_10026B61C(uint64_t a1)
{
  if (!qword_1008E3090)
  {
    sub_1000059F8(255, &qword_1008E3098, HKActivitySummary_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E3090);
    }
  }
}

uint64_t sub_10026B684()
{
  v0 = type metadata accessor for UUID();
  sub_100163368(v0, qword_1008E4990);
  sub_10001AC90(v0, qword_1008E4990);
  return UUID.init()();
}

id sub_10026B6D0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v13 = *(v3 - 8);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ([*v1 isMe])
  {
    if (qword_1008DA770 != -1)
    {
      swift_once();
    }

    v8 = sub_10001AC90(v3, qword_1008E4990);
    v9 = *(v13 + 16);

    return v9(a1, v8, v3);
  }

  else
  {
    result = [v7 UUID];
    if (result)
    {
      v11 = result;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      return (*(v13 + 32))(a1, v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_10026B878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_activitySummaryProvider] = 0;
  v6 = [objc_allocWithZone(type metadata accessor for PaletteViewControllerSizingDelegate()) init];
  type metadata accessor for ActivitySharingFriendDetailPaletteDateProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = [objc_allocWithZone(NSDate) init];
  result = [objc_allocWithZone(PaletteViewController) initWithSizingDelegate:v6 dateProvider:v7];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_paletteViewController] = result;
    if (a3)
    {

      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    v22.receiver = v3;
    v22.super_class = type metadata accessor for ActivitySharingFriendDetailPaletteTableViewCell();
    v10 = objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v9);

    v11 = v10;
    v12 = [v11 contentView];
    v13 = *&v6[OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view];
    *&v6[OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view] = v12;

    v14 = [v11 contentView];
    result = [*&v11[OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_paletteViewController] view];
    if (result)
    {
      v15 = result;

      [v14 addSubview:v15];

      v16 = objc_opt_self();
      sub_100140278(&unk_1008E4E20, &qword_1006D5040);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1006D4E70;
      v18 = [v11 contentView];
      v19 = [v18 heightAnchor];

      v20 = [v19 constraintEqualToConstant:70.0];
      *(v17 + 32) = v20;
      sub_10019EC5C();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 activateConstraints:isa];

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

id sub_10026BB7C(void *a1, void *a2)
{
  v5 = type metadata accessor for ActivitySharingFriendDetailActivitySummaryProvider();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend] = a1;
  *&v6[OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_pauseRingsCoordinator] = a2;
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v14, "init");
  v10 = OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_activitySummaryProvider;
  v11 = *(v2 + OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_activitySummaryProvider);
  *(v2 + OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_activitySummaryProvider) = v9;

  if ([v7 isMe])
  {
    [*(v2 + OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_paletteViewController) setPauseRingsCoordinator:v8];
  }

  v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp47ActivitySharingFriendDetailPaletteTableViewCell_paletteViewController);
  [v12 setActivitySummaryProvider:*(v2 + v10)];
  return [v12 setIsUserInteractionEnabled:0];
}

id sub_10026BCDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingFriendDetailPaletteTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10026BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_div;
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  *&v3[v6] = sub_10065AEC8();
  v7 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v9;
  v11 = v9;

  v12 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v11];

  sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  v13.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.67843, 0.70588, 0.74902, 1.0).super.isa;
  v14 = *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v13;
  v15 = v13.super.isa;

  [*&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v15];
  v16 = [objc_opt_self() mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v19 = v18;
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_labelPair;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = &v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v24 = v21;
  v24[1] = v23;

  v25 = *&v7[v12];

  [v25 setText:v19];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v20] = v7;
  if (a3)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  v34.receiver = v4;
  v34.super_class = type metadata accessor for DayViewFlightsTableViewCell();
  v27 = objc_msgSendSuper2(&v34, "initWithStyle:reuseIdentifier:", a1, v26);

  v28 = v27;
  v29 = [v8 systemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_labelPair]];

  v31 = [v28 contentView];
  [v31 addSubview:*&v28[OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_div]];

  sub_10026C1A0();
  return v28;
}

void sub_10026C1A0()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_div];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v41 = [v2 constraintEqualToAnchor:v4];
  v5 = [v1 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v39 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  v8 = [v1 trailingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 trailingAnchor];

  v38 = [v8 constraintEqualToAnchor:v10];
  v11 = [v1 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v36 = [v11 constraintEqualToConstant:*&qword_100925B90];

  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_labelPair];
  v13 = [v12 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v37 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  v16 = [v12 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-16.0];
  v20 = [v12 topAnchor];
  v21 = [v1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  v23 = [v12 bottomAnchor];
  v24 = [v0 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  v35 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006D68B0;
  *(v27 + 32) = v41;
  *(v27 + 40) = v39;
  *(v27 + 48) = v38;
  *(v27 + 56) = v36;
  *(v27 + 64) = v37;
  *(v27 + 72) = v19;
  *(v27 + 80) = v22;
  *(v27 + 88) = v26;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  v34 = v41;
  v40 = v39;
  v28 = v38;
  v29 = v36;
  v30 = v37;
  v31 = v19;
  v32 = v22;
  v33 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];
}

uint64_t sub_10026C6A8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_div;
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  *(v1 + v4) = sub_10065AEC8();
  v5 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = [objc_opt_self() labelColor];
  v7 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v6;
  v8 = v6;

  v9 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v8];

  sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  v10.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.67843, 0.70588, 0.74902, 1.0).super.isa;
  v11 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v10;
  v12 = v10.super.isa;

  [*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v12];
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = v15;
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_labelPair;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v21 = v18;
  v21[1] = v20;

  v22 = *&v5[v9];

  [v22 setText:v16];

  v23 = v5;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v17) = v23;
  type metadata accessor for DayViewFlightsTableViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10026C9A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DayViewFlightsTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10026CA48(void *a1)
{
  v3 = objc_opt_self();
  v4 = [objc_opt_self() countUnit];
  [a1 doubleValueForUnit:v4];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v6 = [v3 stringWithNumber:isa decimalPrecision:1];

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp27DayViewFlightsTableViewCell_labelPair);
  v11 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  v12 = [*(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_1004C154C(v7, v9, 0, 0xE000000000000000, v12);

  v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  v16 = *(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
  *(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v14;
  v17 = v14;

  [*(v10 + v11) setText:0];
  [*(v10 + v11) setAttributedText:*(v10 + v15)];
}

id sub_10026CBF4()
{
  result = [objc_opt_self() companionTotalScoreFriendDetailConfiguration];
  if (result)
  {
    v1 = result;
    [result setNameBaselineOffset:25.0];
    [v1 setPrimaryScoreBaselineOffset:12.0];
    result = [objc_allocWithZone(ASCompetitionScoreView) initWithConfiguration:v1];
    if (result)
    {
      v2 = result;
      [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10026CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() companionTotalScoreFriendDetailConfiguration];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  [result setNameBaselineOffset:25.0];
  [v7 setPrimaryScoreBaselineOffset:12.0];
  result = [objc_allocWithZone(ASCompetitionScoreView) initWithConfiguration:v7];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v8 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView;
  v9 = result;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v8] = v9;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionScoreTableViewCell();
  v11 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v10);

  v12 = v11;
  v13 = [v12 contentView];
  [v13 addSubview:*&v12[OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionScoreTableViewCell_scoreView]];

  v14 = objc_opt_self();
  v15 = [v12 contentView];
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();

  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];

  return v12;
}

id sub_10026CF8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionScoreTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10026D03C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v5 = sub_100140278(&qword_1008E4B10, &unk_1006E2FE0);
  __chkstk_darwin(v5 - 8);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = (&v98 - v8);
  v117 = type metadata accessor for DynamicTypeSize();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100140278(&qword_1008DDBE0, &qword_1006D7F60);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v114 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v98 - v12;
  __chkstk_darwin(v13);
  v113 = &v98 - v14;
  __chkstk_darwin(v15);
  v118 = &v98 - v16;
  v110 = type metadata accessor for SegmentedPickerStyle();
  v111 = *(v110 - 8);
  __chkstk_darwin(v110);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100140278(&qword_1008E4B18, &unk_1006E2FF0);
  v19 = *(v109 - 1);
  __chkstk_darwin(v109);
  v21 = &v98 - v20;
  v22 = sub_100140278(&qword_1008E4B20, &qword_1007036A0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v112 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = (&v98 - v26);
  v108 = LocalizedStringKey.init(stringLiteral:)();
  v107 = v28;
  v105 = v29;
  v106 = v30;
  type metadata accessor for WorkoutDetailSwimmingSplitDataSource(0);
  sub_10026DED8();
  v31 = a2;
  v115 = v31;
  v32 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v125 = v122;
  v126 = v123;
  v120 = a1;
  v121 = v31;
  sub_100140278(&qword_1008E4B30, &qword_1007036D0);
  sub_10026DF38();
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10014A6B0(&qword_1008E4B40, &qword_1008E4B18, &unk_1006E2FF0, &protocol conformance descriptor for Picker<A, B, C>);
  v33 = v109;
  v34 = v110;
  View.pickerStyle<A>(_:)();
  v111[1](v18, v34);
  (*(v19 + 8))(v21, v33);
  LOBYTE(v34) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = *(v23 + 44);
  v111 = v27;
  v36 = v27 + v35;
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = [objc_opt_self() mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 localizedStringForKey:v42 value:0 table:0];

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *&v122 = v44;
  *(&v122 + 1) = v46;
  sub_10000FCBC();
  v47 = Text.init<A>(_:)();
  v49 = v48;
  LOBYTE(a1) = v50;
  static Font.headline.getter();
  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v18) = v54;
  v56 = v55;

  sub_10004642C(v47, v49, a1 & 1);

  *&v122 = v51;
  *(&v122 + 1) = v53;
  LOBYTE(v49) = v18 & 1;
  LOBYTE(v123) = v18 & 1;
  v124 = v56;
  v57 = v119;
  v58 = *(v119 + 104);
  v59 = v116;
  LODWORD(v110) = enum case for DynamicTypeSize.large(_:);
  v60 = v117;
  v109 = v58;
  v58(v116);
  View.dynamicTypeSize(_:)();
  v61 = *(v57 + 8);
  v119 = v57 + 8;
  v108 = v61;
  v61(v59, v60);
  sub_10004642C(v51, v53, v49);

  *&v122 = (*((swift_isaMask & *v115) + 0x188))(v62);
  *(&v122 + 1) = v63;
  v64 = Text.init<A>(_:)();
  v66 = v65;
  LOBYTE(v60) = v67;
  static Font.largeTitle.getter();
  v68 = Text.font(_:)();
  v70 = v69;
  v72 = v71;

  sub_10004642C(v64, v66, v60 & 1);

  v73 = [objc_opt_self() paceColors];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 nonGradientTextColor];

    if (v75)
    {
      Color.init(_:)();
      v76 = Text.foregroundColor(_:)();
      v78 = v77;
      v80 = v79;
      v82 = v81;

      sub_10004642C(v68, v70, v72 & 1);

      *&v122 = v76;
      *(&v122 + 1) = v78;
      v83 = v80 & 1;
      LOBYTE(v123) = v80 & 1;
      v124 = v82;
      v85 = v116;
      v84 = v117;
      (v109)(v116, v110, v117);
      v86 = v113;
      View.dynamicTypeSize(_:)();
      v108(v85, v84);
      sub_10004642C(v76, v78, v83);

      v87 = v102;
      sub_1002CE550(v102);
      v88 = v112;
      sub_10008B50C(v111, v112);
      v89 = v100;
      v90 = *(v100 + 16);
      v91 = v99;
      v92 = v101;
      v90(v99, v118, v101);
      v90(v114, v86, v92);
      v93 = v104;
      sub_10026E000(v87, v104);
      v94 = v103;
      sub_10008B50C(v88, v103);
      v95 = sub_100140278(&qword_1008E4B48, &qword_1006E3030);
      v90((v94 + v95[12]), v91, v92);
      v96 = v114;
      v90((v94 + v95[16]), v114, v92);
      sub_10026E000(v93, v94 + v95[20]);
      sub_10026E070(v87);
      v97 = *(v89 + 8);
      v97(v113, v92);
      v97(v118, v92);
      sub_10008B57C(v111);
      sub_10026E070(v93);
      v97(v96, v92);
      v97(v91, v92);
      sub_10008B57C(v112);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10026DB5C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10026DBDC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10026DC4C(uint64_t a1, char *a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_100140278(&qword_1008E4B50, &unk_1006E3060);
  sub_100140278(&qword_1008E4520, &qword_1006EC830);
  sub_10014A6B0(&qword_1008E4B58, &qword_1008E4B50, &unk_1006E3060, &protocol conformance descriptor for [A]);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10026DDC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10028B1B4(*a1);
  sub_10000FCBC();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

double sub_10026DE3C@<D0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_100140278(&qword_1008E4B00, &qword_1006E2FD0);
  sub_10026D03C(v5, v4, a2 + *(v6 + 44));
  LOBYTE(v4) = static Edge.Set.all.getter();
  v7 = a2 + *(sub_100140278(&qword_1008E4B08, &qword_1006E2FD8) + 36);
  *v7 = v4;
  result = 0.0;
  *(v7 + 8) = xmmword_1006D6F10;
  *(v7 + 24) = xmmword_1006D6F10;
  *(v7 + 40) = 0;
  return result;
}

unint64_t sub_10026DED8()
{
  result = qword_1008E4B28;
  if (!qword_1008E4B28)
  {
    type metadata accessor for WorkoutDetailSwimmingSplitDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4B28);
  }

  return result;
}

unint64_t sub_10026DF38()
{
  result = qword_1008E4B38;
  if (!qword_1008E4B38)
  {
    sub_100141EEC(&qword_1008E4B30, &qword_1007036D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4B38);
  }

  return result;
}

uint64_t sub_10026E000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4B10, &unk_1006E2FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026E070(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E4B10, &unk_1006E2FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10026E0E0()
{
  result = qword_1008E4B60;
  if (!qword_1008E4B60)
  {
    sub_100141EEC(&qword_1008E4B08, &qword_1006E2FD8);
    sub_10014A6B0(&qword_1008E4B68, &unk_1008E4B70, &qword_1006E30B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4B60);
  }

  return result;
}

uint64_t sub_10026E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001B104(a3, v25 - v10, &qword_1008E1760, &qword_1006D4490);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EA04(v11, &qword_1008E1760, &qword_1006D4490);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10026E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001B104(a3, v25 - v10, &qword_1008E1760, &qword_1006D4490);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EA04(v11, &qword_1008E1760, &qword_1006D4490);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100140278(&qword_1008DC408, &qword_1006D4870);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100140278(&qword_1008DC408, &qword_1006D4870);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10026E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001B104(a3, v25 - v10, &qword_1008E1760, &qword_1006D4490);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EA04(v11, &qword_1008E1760, &qword_1006D4490);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100140278(&unk_1008E4DC0, &qword_1006D44A0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100140278(&unk_1008E4DC0, &qword_1006D44A0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10026EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001B104(a3, v25 - v10, &qword_1008E1760, &qword_1006D4490);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000EA04(v11, &qword_1008E1760, &qword_1006D4490);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1000059F8(0, &qword_1008DD8C0, UIImage_ptr);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000EA04(v25[0], &qword_1008E1760, &qword_1006D4490);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1000059F8(0, &qword_1008DD8C0, UIImage_ptr);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_10026EECC(void *a1, void *a2, void *a3, void *a4, char *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v16 = v15;
  v164 = a8;
  v162 = a7;
  v161 = a6;
  v168 = a15;
  v166 = a14;
  v165 = a13;
  v163 = a12;
  v167 = a10;
  v159 = a9;
  v22 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v22 - 8);
  v158 = &v148 - v23;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_impressionsTracker;
  type metadata accessor for ActivityTileImpressionsTracker();
  v25 = swift_allocObject();
  type metadata accessor for BasicImpressionsTracker();
  v25[2] = BasicImpressionsTracker.__allocating_init(threshold:)();
  v25[3] = &protocol witness table for BasicImpressionsTracker;
  v25[4] = 0;
  v25[5] = sub_1004CA570(_swiftEmptyArrayStorage);
  v25[6] = sub_100037340(_swiftEmptyArrayStorage);
  *&v15[v24] = v25;
  v26 = &v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_paletteBannerInsets];
  *v26 = sub_10013A92C();
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator] = 0;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController] = 0;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerViewController] = 0;
  v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility] = 0;
  v30 = &v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_initialPresentation];
  *v30 = 0;
  v30[8] = 1;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_observers] = _swiftEmptyArrayStorage;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_keyValueObservers] = _swiftEmptyArrayStorage;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_resignActiveObserver] = 0;
  v31 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_accountButton;
  type metadata accessor for AccountButton();
  *&v15[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore] = a1;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext] = a2;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider] = a3;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator] = a4;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_historyDataProvider] = a5;
  v32 = *&a5[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider];
  v160 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider;
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider] = v32;
  v33 = objc_allocWithZone(FIMindfulnessSessionDataProvider);
  v34 = a1;
  v169 = a2;
  v157 = a3;
  v156 = a4;
  v155 = a5;
  v35 = v32;
  v36 = [v33 initWithHealthStore:v34];
  *&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionDataProvider] = v36;
  v37 = v161;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementsDataProvider) = v161;
  v38 = v162;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider) = v162;
  v39 = v164;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel) = v164;
  v40 = v159;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory) = v159;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager) = a11;
  v41 = v163;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager) = v163;
  v42 = type metadata accessor for MindfulnessSessionFormattingManager();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR___CHMindfulnessSessionFormattingManager_fiuiFormattingManager] = a11;
  *&v43[OBJC_IVAR___CHMindfulnessSessionFormattingManager_healthStore] = v34;
  v176.receiver = v43;
  v176.super_class = v42;
  v44 = a11;
  v45 = v34;
  v46 = v44;
  v161 = v37;
  v154 = v38;
  v162 = v39;
  v159 = v40;
  v164 = v41;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager) = objc_msgSendSuper2(&v176, "init");
  v47 = type metadata accessor for StackFormattingManager();
  v48 = objc_allocWithZone(v47);
  *&v48[OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager] = v46;
  *&v48[OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_healthStore] = v45;
  v175.receiver = v48;
  v175.super_class = v47;
  v49 = v45;
  v50 = v46;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_stackFormattingManager) = objc_msgSendSuper2(&v175, "init");
  v51 = v165;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDateCache) = v165;
  v52 = v166;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsAvailabilityManager) = v166;
  v53 = v168;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_wheelchairUseCache) = v168;
  v54 = v167;
  *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager) = v167;
  v55 = objc_opt_self();
  v165 = v51;
  v163 = v52;
  v168 = v53;
  v166 = v54;
  v56 = [v55 sharedInstance];
  v57 = *&v160[v16];
  result = [v50 unitManager];
  if (result)
  {
    v59 = result;
    v60 = v169;
    v61 = *&v169[OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider];
    v62 = objc_allocWithZone(type metadata accessor for TrendsDataProvider(0));
    v63 = v49;
    v64 = v157;
    v65 = sub_10042F578(v63, v56, v57, v59, v64, v61, v62);
    v66 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsDataProvider;
    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsDataProvider) = v65;
    v67 = type metadata accessor for TrendsFormattingManager();
    v68 = objc_allocWithZone(v67);
    *&v68[OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter] = v50;
    v174.receiver = v68;
    v174.super_class = v67;
    v160 = v50;
    v69 = objc_msgSendSuper2(&v174, "init");
    v70 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsFormattingManager;
    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsFormattingManager) = v69;
    LODWORD(v152) = [v168 isWheelchairUser];
    v71 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_dependencies;
    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_dependencies) = *&v60[OBJC_IVAR___CHFitnessAppContext_dependencies];
    v72 = v71;
    swift_retain_n();
    sub_100140278(&qword_1008E4F18, &unk_1006E3470);
    Dependencies.resolve<A>(failureHandler:)();

    sub_100006260(&v173, v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_avatarSettingsProvider);
    v73 = v72;
    v157 = v72;

    sub_100140278(&qword_1008E4F20, &unk_1006F1470);
    Dependencies.resolve<A>(failureHandler:)();

    v74 = *(&v173 + 1);
    v75 = v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_eventHub;
    *v75 = v173;
    v75[1] = v74;
    type metadata accessor for SubscriptionToken();
    swift_allocObject();
    swift_unknownObjectRetain();
    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_subscriptionToken) = SubscriptionToken.init(eventHub:)();
    v76 = [objc_allocWithZone(AAUIAchievementResourceProvider) init];
    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider) = v76;
    v77 = type metadata accessor for AAUIAwardsDataProvider();
    v78 = v63;
    v79 = AAUIAwardsDataProvider.__allocating_init(healthStore:layoutMode:)();
    v80 = (v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider);
    v80[3] = v77;
    v80[4] = &protocol witness table for AAUIAwardsDataProvider;
    *v80 = v79;
    v153 = v80;
    v81 = *(v16 + v66);
    v82 = *(v16 + v70);
    sub_100007C5C(v80, &v173);
    v83 = *&v73[v16];
    type metadata accessor for ActivityTileViewDataModel();
    v84 = swift_allocObject();
    v85 = type metadata accessor for TodayActivityTileDataModel();
    v84[7] = 0;
    v84[8] = 0;
    v86 = objc_allocWithZone(v85);
    swift_unknownObjectWeakInit();
    *&v86[OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary] = 0;
    *&v86[OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_observers] = _swiftEmptyArrayStorage;
    *&v86[OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activityDataProvider] = v64;
    v172.receiver = v86;
    v172.super_class = v85;
    v87 = v64;
    v167 = v78;
    v88 = v87;
    v89 = v155;
    v150 = v154;
    v90 = v163;
    v91 = v81;
    v92 = v82;

    v93 = objc_msgSendSuper2(&v172, "init");
    v94 = *(*&v88[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener] + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers);
    v95 = v93;
    [v94 addObject:v95];
    sub_10033B138();

    v84[2] = v95;
    type metadata accessor for HistoryActivityTileDataModel();
    swift_allocObject();
    v96 = v89;
    v155 = v96;
    v97 = sub_100229DC4(v96);

    v84[3] = v97;
    type metadata accessor for CatalogTipActivityTileDataModel();
    swift_allocObject();
    v151 = v83;

    v99 = sub_100611488(v98);

    v84[6] = v99;
    type metadata accessor for TrendsActivityTileDataModel();
    swift_allocObject();
    v100 = v167;
    v154 = v100;
    v101 = v90;
    v167 = v101;
    v102 = v91;
    v149 = v102;
    v148 = v92;
    v84[4] = sub_1002D4A6C(v100, v101, v102, v148, v152);
    sub_100007C5C(&v173, v171);
    v103 = objc_allocWithZone(type metadata accessor for AwardsActivityTileDataModel());
    v104 = v88;
    v152 = v104;
    v105 = v150;
    v106 = sub_100323D38(v171, v105, v104);

    v163 = v105;
    v84[5] = v106;
    v107 = v84[3];
    v108 = swift_allocObject();
    swift_weakInit();
    v109 = *(v107 + 40);
    v110 = *(v107 + 48);
    *(v107 + 40) = sub_100282F78;
    *(v107 + 48) = v108;

    sub_1000245E0(v109, v110);

    v111 = v84[6];
    v112 = swift_allocObject();
    v113 = swift_weakInit();
    v114 = *(v111 + 32);
    __chkstk_darwin(v113);
    *(&v148 - 2) = sub_100282F80;
    *(&v148 - 1) = v112;
    v115 = *(*v114 + class metadata base offset for ManagedBuffer + 16);
    v116 = (*(*v114 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v114 + v116));
    sub_100282F88((v114 + v115));
    os_unfair_lock_unlock((v114 + v116));

    v117 = v154;

    v118 = v155;

    v119 = v152;
    sub_100005A40(&v173);

    v120 = v84[4];
    v121 = swift_allocObject();
    swift_weakInit();
    v122 = *(v120 + 104);
    v123 = *(v120 + 112);
    *(v120 + 104) = sub_100282FA4;
    *(v120 + 112) = v121;

    sub_1000245E0(v122, v123);

    v124 = v84[5];
    v125 = swift_allocObject();
    swift_weakInit();

    v126 = (v124 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate);
    v127 = *(v124 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate);
    v128 = v126[1];
    *v126 = sub_100282FAC;
    v126[1] = v125;

    sub_1000245E0(v127, v128);

    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel) = v84;
    sub_100007C5C(v153, &v173);
    v129 = type metadata accessor for TrophyCasePrefetcher();
    v130 = objc_allocWithZone(v129);
    v131 = v159;
    v132 = sub_10037D5C8(&v173, v131);

    v133 = v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trophyCasePrefetcher;
    v133[3] = v129;
    v133[4] = &off_100854718;
    *v133 = v132;
    type metadata accessor for SummaryBannerActionPresenter();
    swift_allocObject();

    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_summaryBannerActionPresenter) = SummaryBannerActionPresenter.init(dependencies:placement:)();
    v134 = objc_allocWithZone(type metadata accessor for MarketingPaletteBannerPresenter());

    *(v16 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerPresenter) = MarketingPaletteBannerPresenter.init(dependencies:placement:)();
    v135 = type metadata accessor for ActivityTileViewController();
    v170.receiver = v16;
    v170.super_class = v135;
    v136 = objc_msgSendSuper2(&v170, "initWithNibName:bundle:", 0, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v137 = v136;

    dispatch thunk of SummaryBannerActionPresenter.onNavigateToURLAction.setter();

    v138 = type metadata accessor for TaskPriority();
    v139 = v158;
    (*(*(v138 - 8) + 56))(v158, 1, 1, v138);
    type metadata accessor for MainActor();
    v140 = v137;
    v141 = static MainActor.shared.getter();
    v142 = swift_allocObject();
    v142[2] = v141;
    v142[3] = &protocol witness table for MainActor;
    v142[4] = v140;
    sub_10026E198(0, 0, v139, &unk_1006E3488, v142);

    v143 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerPresenter;
    v144 = *&v140[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerPresenter];
    sub_100281448(&qword_1008E4F28, v145, type metadata accessor for ActivityTileViewController, &unk_1006E3260);
    v146 = v144;
    dispatch thunk of MarketingPaletteBannerPresenter.display.setter();

    v147 = *&v140[v143];
    dispatch thunk of MarketingPaletteBannerPresenter.activate()();

    return v140;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10026FEF0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      if ([v8 navigateToSeymourTab])
      {
        static Log.default.getter();
        v9._object = 0x80000001007514B0;
        v10._countAndFlagsBits = 0xD000000000000027;
        v10._object = 0x80000001007514E0;
        v9._countAndFlagsBits = 0xD000000000000022;
        Logger.trace(file:function:)(v9, v10);
        (*(v3 + 8))(v5, v2);
        sub_1005D2F1C(1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002701B0()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ActivityTileViewController();
  objc_msgSendSuper2(&v57, "viewDidLoad");
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 setPrefersLargeTitles:1];
  }

  v5 = [v1 navigationItem];
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v5 setTitle:v8];
  sub_1002736C0(v9, v10);
  v11 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_accountButton];
  [v11 setFrame:{0.0, 0.0, 34.0, 34.0}];
  v12 = [objc_opt_self() keyColors];
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v12;
  v14 = [v12 nonGradientTextColor];

  [v11 setTintColor:v14];
  [v11 addTarget:v1 action:"accountButtonTapped:" forControlEvents:64];
  v15 = [v1 navigationItem];
  [v15 _setLargeTitleAccessoryView:v11 alignToBaseline:0];

  v16 = &selRef_setNavigationBarHidden_animated_;
  v17 = [v1 tableView];
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  [v17 setEstimatedRowHeight:100.0];

  v19 = [v1 tableView];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  [v19 setEstimatedSectionHeaderHeight:100.0];

  v21 = [v1 tableView];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  [v21 setSectionHeaderTopPadding:0.0];

  v23 = [v1 tableView];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  [v23 setSeparatorStyle:0];

  v25 = [v1 tableView];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;

  v27 = [v1 tableView];
  if (!v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = v27;
  [v27 contentInset];
  [v28 setContentInset:-13.0];

  v29 = [v1 tableView];
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v29;
  [v29 contentInset];
  [v30 setContentInset:?];

  v31 = v1;
  v32 = [v1 tableView];
  if (!v32)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = v32;
  type metadata accessor for ActivityTileSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();
  [v33 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v35];

  v36 = sub_100145C50();
  v37 = v36;
  v38 = *(v36 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = (v36 + 40);
    while (v39 < *(v37 + 16))
    {
      v41 = *(v40 - 1);
      v42 = *v40;
      v43 = v16;
      v44 = [v31 v16[447]];
      if (!v44)
      {
        goto LABEL_22;
      }

      v45 = v44;
      ++v39;
      v46 = swift_getObjCClassFromMetadata();
      (*(v42 + 8))(v41, v42);
      v47 = String._bridgeToObjectiveC()();

      [v45 registerClass:v46 forCellReuseIdentifier:v47];

      v40 += 2;
      v16 = v43;
      if (v38 == v39)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:

  v48 = *&v31[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = *(v48 + 56);
  v51 = *(v48 + 64);
  *(v48 + 56) = sub_100282F54;
  *(v48 + 64) = v49;

  sub_1000245E0(v50, v51);

  [*(*(*&v31[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v31];
  sub_100271C28();
  v52 = [v31 v16[447]];
  if (v52)
  {
    v53 = v52;
    v56[0] = v52;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1006D4E70;
    *(v55 + 32) = v54;
    *&v31[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_keyValueObservers] = v55;

    swift_getObjectType();
    type metadata accessor for AvatarSettingsChanged();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100281448(&qword_1008EE8C0, 255, &type metadata accessor for AvatarSettingsChanged, &protocol conformance descriptor for AvatarSettingsChanged);

    dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

    sub_100005A40(v56);

    return;
  }

LABEL_32:
  __break(1u);
}

void sub_10027096C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong tableView];

    if (v4)
    {
      IndexSet._bridgeToObjectiveC()(v5);
      v7 = v6;
      [v4 reloadSections:v6 withRowAnimation:100];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100270A10(uint64_t a1)
{
  v1 = sub_100140278(&unk_1008E4F00, qword_1006E3428);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000066AC((Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_avatarSettingsProvider), *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_avatarSettingsProvider + 24));
    dispatch thunk of AvatarSettingsCoordinating.fetchAvatarSettings()();
    v6 = type metadata accessor for AvatarSettings();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      sub_10000EA04(v3, &unk_1008E4F00, qword_1006E3428);
      v8 = 0;
    }

    else
    {
      v8 = AvatarSettings.contact.getter();
      (*(v7 + 8))(v3, v6);
    }

    dispatch thunk of AccountButton.updateContact(_:)();
  }
}

id sub_100270BF4()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_observers];
  v2 = objc_opt_self();

  v3 = [v2 defaultCenter];
  v4 = *(v1 + 16);
  result = v3;
  v6 = result;
  if (v4)
  {
    v7 = 0;
    v8 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      sub_10000B1B4(v8, v10);
      ++v7;
      sub_1000066AC(v10, v10[3]);
      [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      result = sub_100005A40(v10);
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(*(*&v0[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v0];
    v9.receiver = v0;
    v9.super_class = type metadata accessor for ActivityTileViewController();
    return objc_msgSendSuper2(&v9, "dealloc");
  }

  return result;
}

uint64_t sub_100271024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for Date();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_100140278(&unk_1008E4F30, &unk_1006E3490);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for ServiceSubscription();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for ServiceSubscriptionRequest();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v10;
  v4[22] = v9;

  return _swift_task_switch(sub_100271238, v10, v9);
}

uint64_t sub_100271238()
{
  sub_100140278(&qword_1008E1278, "\b\t\v");
  Dependencies.resolve<A>(failureHandler:)();
  ServiceSubscriptionRequest.init(authenticationBehavior:cacheBehavior:)();
  sub_1000066AC((v0 + 16), *(v0 + 40));
  dispatch thunk of ServiceSubscriptionClientProtocol.fetchServiceSubscription(with:)();

  return _swift_task_switch(sub_100271320, 0, 0);
}

uint64_t sub_100271320()
{
  v1 = v0[13];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *(v2 + 16) = "FitnessApp/ActivityTileViewController.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 247;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_100271430;
  v4 = v0[16];
  v5 = v0[14];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_100283070, v2, v5);
}

uint64_t sub_100271430()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_100271864;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[12];
    v6 = v2[13];
    v8 = v2[11];

    (*(v7 + 8))(v6, v8);
    v4 = v2[21];
    v5 = v2[22];
    v3 = sub_100271594;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100271594()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];

  Date.init()();
  ServiceSubscription.isSubscribed(date:)();
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_100005A40(v0 + 2);
  v10 = v0[25];
  v11 = v0[7];
  v12 = sub_1000066AC((v11 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trophyCasePrefetcher), *(v11 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trophyCasePrefetcher + 24));
  sub_1000066AC((*v12 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider), *(*v12 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider + 24));
  sub_100281448(&unk_1008E4F40, 255, type metadata accessor for TrophyCasePrefetcher, &unk_1006EBFC8);
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
  sub_10037B860();
  sub_1000066AC((v11 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider), *(v11 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider + 24));
  dispatch thunk of AAUIAwardsDataProviding.activate(isFitnessPlusSubscriber:)();
  if (v10)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v15, v13, "Failed to activate AwardsDataProvider: %@", v16, 0xCu);
      sub_10000EA04(v17, &unk_1008DB8B0, &unk_1006DBD30);
    }

    else
    {
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100271864()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[21];
  v2 = v0[22];

  return _swift_task_switch(sub_1002718D8, v1, v2);
}

uint64_t sub_1002718D8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];

  (*(v3 + 8))(v1, v2);
  sub_100005A40(v0 + 2);
  v4 = static os_log_type_t.error.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v6, v4, "Failed to fetch F+ subscription status, assuming not subscribed: %@", v7, 0xCu);
    sub_10000EA04(v8, &unk_1008DB8B0, &unk_1006DBD30);
  }

  else
  {
  }

  v10 = v0[7];
  v11 = sub_1000066AC((v10 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trophyCasePrefetcher), *(v10 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trophyCasePrefetcher + 24));
  sub_1000066AC((*v11 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider), *(*v11 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider + 24));
  sub_100281448(&unk_1008E4F40, 255, type metadata accessor for TrophyCasePrefetcher, &unk_1006EBFC8);
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
  sub_10037B860();
  sub_1000066AC((v10 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider), *(v10 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider + 24));
  dispatch thunk of AAUIAwardsDataProviding.activate(isFitnessPlusSubscriber:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100271C28()
{
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_100282ED8;
    v31 = v6;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100026F8C;
    v29 = &unk_10084F388;
    v7 = _Block_copy(&aBlock);

    v25 = [v3 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v8 = [v2 defaultCenter];
    v9 = [v4 mainQueue];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_100282EE0;
    v31 = v10;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100026F8C;
    v29 = &unk_10084F3B0;
    v11 = _Block_copy(&aBlock);

    v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
    _Block_release(v11);

    v13 = [v2 defaultCenter];
    v14 = [v4 mainQueue];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_100282EE8;
    v31 = v15;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100026F8C;
    v29 = &unk_10084F3D8;
    v16 = _Block_copy(&aBlock);

    v17 = [v13 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v14 usingBlock:v16];
    _Block_release(v16);

    v18 = [v2 defaultCenter];
    if (qword_1008DA5A0 != -1)
    {
      swift_once();
    }

    v19 = qword_100925168;
    v20 = [v4 mainQueue];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_100282EF0;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100026F8C;
    v29 = &unk_10084F400;
    v22 = _Block_copy(&aBlock);

    v23 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v22];
    _Block_release(v22);

    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006D6950;
    *(v24 + 56) = swift_getObjectType();
    *(v24 + 32) = v25;
    *(v24 + 88) = swift_getObjectType();
    *(v24 + 64) = v12;
    *(v24 + 120) = swift_getObjectType();
    *(v24 + 96) = v17;
    *(v24 + 152) = swift_getObjectType();
    *(v24 + 128) = v23;
    *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_observers) = v24;
  }

  return result;
}

void sub_10027216C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "ActivityTileViewController did receive didBecomeActiveNotification notification", 79, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionDataProvider);

    [v14 startMindfulnessSessionQueryIfNeeded];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15 && (v16 = v15, v17 = *(v15 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider), v16, v18 = [v17 name], v17, v18))
  {
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v44 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100282F4C;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084F428;
    v19 = _Block_copy(aBlock);
    v43 = v7;
    v42 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100281448(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v20 = v45;
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v42;
    v22 = v44;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v4 + 8))(v6, v3);
    (*(v20 + 8))(v9, v43);
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 navigationController];

    v26 = [v25 visibleViewController];
  }

  else
  {
    v26 = 0;
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  v28 = v27;
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v27)
  {
    v28 = v26;
    goto LABEL_20;
  }

  sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v30 = static os_log_type_t.info.getter();
  v31 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "ActivityTileViewController is visible, resuming video playback", 62, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v28 = [objc_opt_self() defaultCenter];
    if (qword_1008DA778 != -1)
    {
      swift_once();
    }

    [v28 postNotificationName:qword_100925420 object:v33];

    goto LABEL_20;
  }

LABEL_21:
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility];

    if (v35 == 2)
    {
      swift_beginAccess();
      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        v37 = v36;
        v38 = [v36 tableView];

        if (v38)
        {
          swift_beginAccess();
          v39 = swift_unknownObjectWeakLoadStrong();
          if (v39)
          {
            v40 = v39;

            sub_1004F72F4(v38, v41);
          }
        }
      }
    }
  }
}

void sub_1002727F8(uint64_t a1)
{
  v1 = static os_log_type_t.info.getter();
  v2 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "ActivityTileViewController fetch user first name", 48, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider);

    v6 = FIUICopyUserFirstNameFromAddressBook();
    [v5 setName:v6];
  }
}

void sub_1002728DC(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.info.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "ActivityTileViewController entering background, pausing videos", 62, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() defaultCenter];
    if (qword_1008DA780 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_100925428 object:v5];
  }
}

void sub_1002729F4(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "ActivityTileViewController did receive significantTimeChangeNotification notification", 85, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1002736C0(Strong, v5);
  }
}

void sub_100272A9C(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1004C5BC0(v11), (v5 & 1) != 0))
    {
      sub_10000B1B4(*(v3 + 56) + 32 * v4, v12);
      sub_100282EF8(v11);

      if (swift_dynamicCast())
      {
        v6 = static os_log_type_t.default.getter();
        v7 = HKLogActivity;
        os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "ActivityTileViewController did receive WheelchairUseDidChange notification", 74, 2, _swiftEmptyArrayStorage);

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          v10 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider);

          [v10 setWheelchairUser:16];
        }
      }
    }

    else
    {

      sub_100282EF8(v11);
    }
  }
}

void sub_100272C28(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_100140278(&qword_1008E4F10, &qword_1006F2B70);
  NSKeyValueObservedChange.oldValue.getter();
  NSKeyValueObservedChange.newValue.getter();
  if (v9)
  {
    if (v12)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v12 & 1) != 0 || (v7 == v10 ? (v4 = v8 == v11) : (v4 = 0), !v4))
  {
LABEL_9:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;

      sub_1004F8250(v3);
    }
  }
}

void sub_100272D14(char a1)
{
  v2 = v1;
  v4 = sub_100140278(&unk_1008E4F00, qword_1006E3428);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ActivityTileViewController();
  v15.receiver = v2;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v8 = [v2 navigationController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
    }

    [v10 detachPalette];
  }

  sub_1000066AC(&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_avatarSettingsProvider], *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_avatarSettingsProvider + 24]);
  dispatch thunk of AvatarSettingsCoordinating.fetchAvatarSettings()();
  v11 = type metadata accessor for AvatarSettings();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10000EA04(v6, &unk_1008E4F00, qword_1006E3428);
    v13 = 0;
  }

  else
  {
    v13 = AvatarSettings.contact.getter();
    (*(v12 + 8))(v6, v11);
  }

  dispatch thunk of AccountButton.updateContact(_:)();

  v14 = [objc_opt_self() defaultCenter];
  if (qword_1008DA778 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_100925420 object:v2];
}

uint64_t sub_100272FC8(uint64_t a1)
{
  v2 = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ActivityTileViewController();
  objc_msgSendSuper2(&v12, "viewDidAppear:", v2 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate:v1];
  }

  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator];
  *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator] = 0;

  v6 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController];
  *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController] = 0;

  v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility] = 2;
  if (v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_initialPresentation + 8])
  {
    v7 = static os_log_type_t.default.getter();
    v8 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "ActivityTileViewController no initial presentation", 50, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    [v1 presentAppSettingsShowingPane:*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_initialPresentation]];
  }

  sub_100281448(&qword_1008E4EF0, v9, type metadata accessor for ActivityTileViewController, &unk_1006E3208);
  sub_100281448(&qword_1008E4EF8, v10, type metadata accessor for ActivityTileViewController, &unk_1006E3198);
  MetricResignActiveObserving<>.addResignActiveObserver()();
  return dispatch thunk of MarketingPaletteBannerPresenter.onAppear()();
}

void sub_1002731D0(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityTileViewController();
  v14.receiver = v3;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v10 = [objc_opt_self() defaultCenter];
  if (qword_1008DA780 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_100925428 object:v3];

  v11 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility;
  if (*(v3 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility) == 2)
  {
    v13[1] = v3;
    Date.init()();
    sub_100281448(&qword_1008E4EF0, v12, type metadata accessor for ActivityTileViewController, &unk_1006E3208);
    MetricImpressionPublishing.publishImpressions(on:)();
    (*(v6 + 8))(v8, v5);
  }

  *(v3 + v11) = 1;
}

void sub_1002734D0()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 tableView];
  if (!v7)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 numberOfSections];

  if (v9 < 1)
  {
    return;
  }

  v10 = [v1 tableView];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 numberOfRowsInSection:0];

  if (v12 < 1)
  {
    return;
  }

  IndexPath.init(row:section:)();
  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v14 = v13;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v14 scrollToRowAtIndexPath:isa atScrollPosition:1 animated:1];

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1002736C0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  [v10 setFormattingContext:2];
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  v14 = [v11 dateFormatFromTemplate:v12 options:0 locale:isa];

  [v10 setDateFormat:v14];
  Date.init()();
  v15 = [v19[1] navigationItem];
  v16 = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v10 stringFromDate:v16];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v15 _setWeeTitle:v17];

  return (*(v3 + 8))(v5, v2);
}

void sub_100273968()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  (*(v5 + 8))(v7, v4);
  v16 = [*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
  if (v16)
  {
    v17 = v16;
    v18 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
    v19 = [v18 activityMoveMode];
    if (v19 == [v17 activityMoveMode])
    {
      v15(v14, v8);

      return;
    }

    v28 = v2;
    [v18 setActivityMoveMode:{objc_msgSend(v17, "activityMoveMode")}];
    v27 = [v1 tableView];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v31 = &off_100843AC0;
    sub_100281448(&qword_1008E4D70, 255, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_100140278(&qword_1008E4D78, &unk_1006E3350);
    sub_100282B7C(&qword_1008E4D80, &qword_1008E4D78, &unk_1006E3350);
    v21 = v28;
    v20 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v22);
    v24 = v23;
    (*(v30 + 8))(v20, v21);
    v25 = v27;
    [v27 reloadSections:v24 withRowAnimation:100];
  }

  v15(v14, v8);
}

id sub_100273E6C(char *a1, Class a2)
{
  v138 = a1;
  v2 = sub_100140278(&qword_1008E4EB8, &qword_1006E3408);
  __chkstk_darwin(v2 - 8);
  v4 = &v133 - v3;
  v5 = sub_100140278(&qword_1008E4EC0, &qword_1006E3410);
  v135 = *(v5 - 8);
  v136 = v5;
  __chkstk_darwin(v5);
  v133 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v134 = &v133 - v8;
  v9 = sub_100140278(&qword_1008E4EC8, &unk_1006E3418);
  __chkstk_darwin(v9 - 8);
  v11 = &v133 - v10;
  v12 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v133 - v13;
  v15 = type metadata accessor for CatalogTipSection(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FitnessPlusStackViewModel(0);
  __chkstk_darwin(v19);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = IndexPath.section.getter();
  v137 = sub_100145D40(v22);
  if (v137 > 2u)
  {
    if (v137 > 4u)
    {
      if (v137 != 5)
      {
        goto LABEL_56;
      }

      v46 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v48 = [v138 dequeueReusableCellWithIdentifier:v46 forIndexPath:isa];

      type metadata accessor for AwardsActivityTile();
      v49 = swift_dynamicCastClass();
      v50 = v139;
      if (!v49)
      {
        v28 = v48;
        goto LABEL_51;
      }

      v51 = v49;
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      v53 = (v51 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement);
      v54 = *(v51 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement);
      v55 = *(v51 + OBJC_IVAR____TtC10FitnessApp18AwardsActivityTile_onDidTapAchievement + 8);
      *v53 = sub_100282C50;
      v53[1] = v52;
      v56 = v48;
      v57 = v50;
      v28 = v56;
      sub_1000245E0(v54, v55);
      v58 = *(*&v57[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 40) + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards;
      v59 = *v58;
      if (*v58)
      {
        v61 = *(v58 + 8);
        v60 = *(v58 + 16);
        v62 = *&v57[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
        v63 = *&v57[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
        sub_100282C74(v59, v61, v60);
        v64 = v61;
        v65 = v28;
        v66 = v60;
        sub_100339968(v59, v61, v60, v62, v63, 0);

        v28 = v65;
      }
    }

    else
    {
      if (v137 != 3)
      {
        v77 = String._bridgeToObjectiveC()();
        v78 = IndexPath._bridgeToObjectiveC()().super.isa;
        v79 = [v138 dequeueReusableCellWithIdentifier:v77 forIndexPath:v78];

        v28 = v79;
        v80 = [v139 view];
        if (v80)
        {
          v81 = v80;
          [v80 bounds];
          v83 = v82;
          v85 = v84;
          v87 = v86;
          v89 = v88;

          v143.origin.x = v83;
          v143.origin.y = v85;
          v143.size.width = v87;
          v143.size.height = v89;
          Width = CGRectGetWidth(v143);
          v91 = objc_opt_self();
          v92 = [v91 literUnitWithMetricPrefix:4];
          v93 = [v91 gramUnitWithMetricPrefix:9];
          v94 = [v91 minuteUnit];
          v95 = [v92 unitDividedByUnit:v93];
          v96 = [v95 unitDividedByUnit:v94];

          v97 = [objc_opt_self() quantityWithUnit:v96 doubleValue:99.99];
          v102 = sub_100602E08(v97, 4);

          v103 = Width * 0.5 + -16.0 + -8.0 + -40.0 + -12.0;
          [v102 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
          v105 = v104;

          v106 = v136;
          type metadata accessor for TrendPairTableViewCell(0);
          v107 = swift_dynamicCastClass();
          if (v107)
          {
            v108 = v107;
            v28 = v28;
            v109 = IndexPath.row.getter();
            sub_100629680(v109, v105 < v103, v4);
            if ((*(v135 + 48))(v4, 1, v106) == 1)
            {

              sub_10000EA04(v4, &qword_1008E4EB8, &qword_1006E3408);
            }

            else
            {
              v117 = v134;
              sub_100015E80(v4, v134, &qword_1008E4EC0, &qword_1006E3410);
              v118 = v133;
              sub_10001B104(v117, v133, &qword_1008E4EC0, &qword_1006E3410);
              v119 = *(v106 + 48);
              sub_100594FD8(v118, v118 + v119);
              sub_100282CC4(v118 + v119, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
              sub_100282CC4(v118, type metadata accessor for TrendListMetric);
              v120 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v121 = (v108 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction);
              *v121 = sub_100282D24;
              v121[1] = v120;

              v122 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection;
              v123 = *(*(v108 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView) + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection);
              if (v123 != 1)
              {
                sub_100515494(v123);
                v122 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection;
              }

              v124 = *(*(v108 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView) + v122);
              if (v124 != 1)
              {
                sub_100515494(v124);
              }

              v125 = swift_allocObject();
              swift_unknownObjectWeakInit();

              sub_1001B1314(sub_100282D2C, v125, 0.5);

              sub_10000EA04(v117, &qword_1008E4EC0, &qword_1006E3410);
            }
          }

          goto LABEL_51;
        }

        goto LABEL_55;
      }

      v26 = String._bridgeToObjectiveC()();
      v27 = IndexPath._bridgeToObjectiveC()().super.isa;
      v28 = [v138 dequeueReusableCellWithIdentifier:v26 forIndexPath:v27];

      type metadata accessor for TrendsOnBoardingActivityTile();
      if (!swift_dynamicCastClass())
      {
        v28 = v28;
        goto LABEL_51;
      }

      v29 = *&v139[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if (*(*(v29 + 32) + 96) - 2 >= 2)
      {
        if (*(*(v29 + 32) + 96))
        {
          v126 = v28;

          v30 = 0;
          v32 = 2;
        }

        else
        {
          v110 = v28;
          v32 = sub_100282D34;
        }
      }

      else
      {
        v31 = v28;

        v30 = 0;
        v32 = 1;
      }

      sub_1002C5FBC(v32, v30);
      sub_100282D3C(v32, v30);
    }

    goto LABEL_47;
  }

  if (!v137)
  {
    v33 = String._bridgeToObjectiveC()();
    v34 = IndexPath._bridgeToObjectiveC()().super.isa;
    v35 = [v138 dequeueReusableCellWithIdentifier:v33 forIndexPath:v34];

    type metadata accessor for TodayActivityTile();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      v28 = v35;
      goto LABEL_51;
    }

    v37 = v139;
    v38 = *&v139[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
    v39 = *(v36 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager);
    *(v36 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager) = v38;
    v28 = v35;
    v40 = v38;

    v41 = *(*&v37[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      v44 = v28;
      v45 = static NSObject.== infix(_:_:)();

      if (v45)
      {

        v28 = v44;
        goto LABEL_51;
      }
    }

    swift_unknownObjectWeakAssign();
    v101 = *(v41 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary);
    *(v41 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activitySummary) = 0;

    sub_1001B79A0(*(*(v41 + OBJC_IVAR____TtC10FitnessApp26TodayActivityTileDataModel_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser));
    sub_10033B9DC();
LABEL_47:

    goto LABEL_51;
  }

  if (v137 != 1)
  {
    v67 = String._bridgeToObjectiveC()();
    v68 = IndexPath._bridgeToObjectiveC()().super.isa;
    v69 = [v138 dequeueReusableCellWithIdentifier:v67 forIndexPath:v68];

    type metadata accessor for CatalogTipActivityTile(0);
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v138 = v70;
      v71 = *(*(*&v139[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 48) + 32);
      v72 = *(*v71 + class metadata base offset for ManagedBuffer + 16);
      v73 = (*(*v71 + 48) + 3) & 0x1FFFFFFFCLL;
      v74 = v69;
      os_unfair_lock_lock((v71 + v73));
      v75 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
      sub_10001B104(v71 + *(v75 + 20) + v72, v14, &qword_1008E4E80, &qword_100700A40);
      os_unfair_lock_unlock((v71 + v73));
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        sub_10000EA04(v14, &qword_1008E4E80, &qword_100700A40);
        v76 = v137;
        v28 = v74;
      }

      else
      {
        sub_100282AA8(v14, v18, type metadata accessor for CatalogTipSection);
        sub_100281448(&unk_1008E4ED0, v111, type metadata accessor for ActivityTileViewController, &unk_1006E32B8);
        v112 = v74;
        v113 = v138;
        v114 = v139;
        dispatch thunk of CatalogTipPlainView.delegate.setter();
        sub_100282D50(&v18[*(v15 + 36)], v11, type metadata accessor for CatalogTipSectionItem);
        v115 = type metadata accessor for CatalogTipSectionItem(0);
        (*(*(v115 - 8) + 56))(v11, 0, 1, v115);
        v116 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_tipSectionItem;
        swift_beginAccess();
        sub_100282DB8(v11, v113 + v116);
        swift_endAccess();
        dispatch thunk of CatalogTipPlainView.configure(attributedTagStrings:artwork:artworkCropCode:)();

        sub_100282CC4(v18, type metadata accessor for CatalogTipSection);
        v76 = v137;
        v28 = v112;
      }

      goto LABEL_52;
    }

    v28 = v69;
LABEL_51:
    v76 = v137;
LABEL_52:
    v100 = v28;
    v130 = IndexPath.row.getter();
    sub_100145B18(v130, v76);
    v131 = String._bridgeToObjectiveC()();

    [v100 setAccessibilityIdentifier:v131];

    [v100 setSelectionStyle:0];
    return v100;
  }

  v23 = *&v139[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel];
  v24 = IndexPath.row.getter();
  v25 = *(*(v23 + 24) + 24);
  if (v24 < *(v25 + 16))
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      sub_100007C5C(v25 + 40 * v24 + 32, v142);
      sub_100007C5C(v142, v141);
      sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
      sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
      if (swift_dynamicCast() || (sub_100007C5C(v142, v141), type metadata accessor for MindfulnessSessionViewModel(), swift_dynamicCast()))
      {

LABEL_50:
        v127 = String._bridgeToObjectiveC()();

        v128 = IndexPath._bridgeToObjectiveC()().super.isa;
        v129 = [v138 dequeueReusableCellWithIdentifier:v127 forIndexPath:v128];

        v28 = v129;
        sub_10027506C(v142, v28);
        sub_100005A40(v142);
        goto LABEL_51;
      }

      sub_100007C5C(v142, v141);
      if (swift_dynamicCast())
      {
        sub_100282CC4(v21, type metadata accessor for FitnessPlusStackViewModel);
        goto LABEL_50;
      }

      while (1)
      {
LABEL_56:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v98 = String._bridgeToObjectiveC()();
  v99 = IndexPath._bridgeToObjectiveC()().super.isa;
  v100 = [v138 dequeueReusableCellWithIdentifier:v98 forIndexPath:v99];

  [v100 setSelectionStyle:0];
  return v100;
}

void sub_10027506C(uint64_t a1, void *a2)
{
  v4 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for FitnessPlusStackViewModel(0);
  v51 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C5C(a1, v54);
  sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  if (swift_dynamicCast())
  {

    type metadata accessor for WorkoutsListTableViewCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      sub_100007C5C(a1, v54);
      v18 = a2;
      if (swift_dynamicCast())
      {
        v51 = v18;
        v19 = v52;
        v20 = v53;
        v21 = *(v52 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel);
        v22 = [v53 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v19;
        UUID.uuidString.getter();
        (*(v13 + 8))(v15, v12);
        sub_1000066AC((*(v21 + 40) + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider), *(*(v21 + 40) + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider + 24));
        v24 = dispatch thunk of AAUIAwardsDataProviding.achievements(forWorkoutIdentifier:)();

        v25 = *(v23 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);
        v26 = *(v23 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager);
        if (v24 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v28 = *(v17 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView);
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = swift_allocObject();
        v30[3] = 0;
        v30[4] = 0;
        v30[2] = v29;
        v31 = *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
        *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v20;
        v32 = v20;

        *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = v27;
        v33 = *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
        *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v26;
        v34 = v26;

        v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
        v35 = *&v28[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
        v36 = *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
        *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v20;

        v37 = *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
        *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v25;
        v38 = v25;

        v39 = *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
        *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v26;

        *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = v27;
        *(v35 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
        sub_100697158(sub_100175B38, v30);
        sub_100698004();
        [v28 configureWithCurrentWorkout];

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_100007C5C(a1, v54);
    type metadata accessor for MindfulnessSessionViewModel();
    if (swift_dynamicCast())
    {

      type metadata accessor for MindfulnessSessionListTableViewCell();
      if (swift_dynamicCastClass())
      {
        sub_100007C5C(a1, v54);
        v40 = a2;
        if (swift_dynamicCast())
        {
          v41 = v53;
          v42 = *(v52 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);
          v43 = *(v52 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager);
          v44 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1004D643C(v41, v42, v43, sub_100192CCC, v44);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_100007C5C(a1, v54);
      if (swift_dynamicCast())
      {
        sub_100282CC4(v11, type metadata accessor for FitnessPlusStackViewModel);
        type metadata accessor for StackListTableViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_100007C5C(a1, v54);
          v45 = a2;
          if (swift_dynamicCast())
          {
            (*(v51 + 7))(v6, 0, 1, v7);
            v46 = v50;
            sub_100282AA8(v6, v50, type metadata accessor for FitnessPlusStackViewModel);
            v47 = *(v52 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);
            v48 = swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_10033834C(v46, v47, sub_100282E28, v48);

            sub_100282CC4(v46, type metadata accessor for FitnessPlusStackViewModel);
LABEL_7:

            return;
          }

          (*(v51 + 7))(v6, 1, 1, v7);
          sub_10000EA04(v6, &qword_1008E0BC0, &qword_1006DC7C0);
        }
      }
    }
  }
}

void sub_1002757F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsAvailabilityManager);
    v3 = Strong;
    v4 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
    v5 = sub_1001C083C(v2);
    [v3 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_100275898(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002758F4(a1);
  }
}

void sub_1002758F4(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_wheelchairUseCache] isWheelchairUser];
  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_4:
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v8)
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v6 + 8 * v9 + 32);
LABEL_9:
          v11 = v10;

          v12 = v1;
          v13 = static NSObject.== infix(_:_:)();

          if (v13)
          {
            sub_100351600(a1);
            if (v14)
            {
              v17 = v14;
              v15 = [v12 navigationController];
              if (v15)
              {
                v16 = v15;
                [v15 pushViewController:v17 animated:1];
              }
            }
          }

          return;
        }

        __break(1u);
        return;
      }

      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }
}

void sub_100275B54(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView);
    v3 = dbl_1006E34C0[v2[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection]];
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v2;
    sub_1001B1314(sub_10025D040, v5, v3);

    v7 = *&v4[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView];
    v8 = dbl_1006E34C0[v7[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection]];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = v7;
    sub_1001B1314(sub_1002831B4, v9, v8);
  }
}

uint64_t sub_100275C90(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v78 = a2;
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D64F0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_10000A788();
  *(v14 + 64) = v15;
  *(v14 + 32) = 0xD000000000000038;
  *(v14 + 40) = 0x80000001007511E0;
  *(v14 + 96) = sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
  *(v14 + 104) = sub_100282E30();
  *(v14 + 72) = a1;
  v16 = v13;
  v17 = a1;
  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  v18 = NSStringFromRect(v86);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v15;
  *(v14 + 112) = v19;
  *(v14 + 120) = v21;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v16, "%@ presenting detail for achievement %{public}@ badgeRect %{public}@", 68, 2, v14);

  v79 = [v17 unearned] ^ 1;
  if (AAUIShouldUseNewTrophyCase())
  {
    v76 = type metadata accessor for TrophyCaseAwardDetailViewController();
    v22 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
    v23 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
    sub_100007C5C(&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], &aBlock);
    v24 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
    v25 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
    v26 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
    v27 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
    v28 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
    v71 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
    v72 = v28;
    v29 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider];
    v73 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
    v74 = v29;
    v30 = v83;
    v75 = v84;
    v31 = sub_1001DF03C(&aBlock, v83);
    v77 = &v67;
    v32 = __chkstk_darwin(v31);
    v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v34, v32);
    v36 = v17;
    v70 = v22;
    v69 = v23;
    v68 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v71;
    v71 = v40;
    v41 = v72;
    v72 = v41;
    v42 = v73;
    v73 = v6;
    v43 = v42;
    v44 = v74;
    v65 = v40;
    v66 = v41;
    v45 = v70;
    v46 = v69;
    v47 = v34;
    v48 = v68;
    sub_1006524C4(v36, v70, v69, v47, v68, v37, v38, v39, v65, v66, v43, v44, 0, 0, v79, 1, 0, v76, v30, v75);
    v50 = v49;

    v6 = v73;
    sub_100005A40(&aBlock);
  }

  else
  {
    v50 = [objc_allocWithZone(CHAchievementDetailViewController) initWithAchievement:v17 locProvider:*&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider] formatsForFriend:0 forDayView:1 forModalPresentation:0 shouldShowCelebration:0];
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (v51)
  {
    v77 = v51;
    v52 = swift_allocObject();
    v53 = v78;
    *(v52 + 16) = v78;
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    v55 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
    v84 = sub_100282E98;
    v85 = v52;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10084F338;
    v56 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();
    v57 = v53;

    v84 = sub_100282EB8;
    v85 = v54;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10084F360;
    v58 = _Block_copy(&aBlock);

    v59 = [v55 initWithPresentingViewController:v6 detailViewController:v50 shouldPlayFlipInAnimation:v79 initialBadgeFrame:v57 conversionView:v56 didStartAnimationBlock:v58 didFinishAnimationBlock:{a3, a4, a5, a6}];
    _Block_release(v58);
    _Block_release(v56);
    swift_unknownObjectRelease();
    v60 = *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator];
    *&v6[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator] = v59;
    v61 = v59;

    if (v61)
    {
      [v61 setShouldAdjustForInset:1];
    }

    v62 = [v6 navigationController];
    if (v62)
    {
      v63 = v62;
      [v62 pushViewController:v77 animated:1];
    }

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_10027645C(void *a1, unint64_t a2)
{
  v3 = sub_100145D40(a2);
  if (v3 != 6)
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    v6 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v5];

    if (v6)
    {
      v7 = v6;
      sub_100145A18(v4);
      v8 = String._bridgeToObjectiveC()();

      [v7 setAccessibilityIdentifier:v8];
    }

    v9 = sub_100145788(v4);
    v11 = v10;
    v12 = sub_100276628(v4);
    if (v6)
    {
      v14 = v12;
      v15 = v13;
      type metadata accessor for ActivityTileSectionHeader();
      if (swift_dynamicCastClass())
      {
        v16 = v6;
        sub_10050ADC0(v9, v11, 0, 0, v14, v15, 18.0);
        sub_1000245E0(v14, v15);

LABEL_9:

        return v6;
      }

      v12 = v14;
      v13 = v15;
    }

    sub_1000245E0(v12, v13);
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*sub_100276628(unsigned __int8 a1))()
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (*(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 32) + 96) != 1)
      {
        return 0;
      }

      v2 = sub_100282C20;
    }

    else if (a1 == 4)
    {
      v2 = sub_100283178;
    }

    else
    {
      v2 = sub_100282BD0;
    }

    goto LABEL_10;
  }

  v2 = 0;
  if (a1 == 1)
  {
    v2 = sub_100282C38;
LABEL_10:
    *(swift_allocObject() + 16) = v1;
    v3 = v1;
  }

  return v2;
}

void sub_100276808(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for FitnessPlusStackViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 24) + 24);
  if (*(v10 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_100007C5C(v10 + 40 * a1 + 32, v27);
      sub_100007C5C(v27, v26);
      sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
      sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
      if (swift_dynamicCast())
      {
        v11 = v25;
        sub_10027A1F8(v25, 0, 0, 0);
      }

      else
      {
        sub_100007C5C(v27, v26);
        type metadata accessor for MindfulnessSessionViewModel();
        if (swift_dynamicCast())
        {
          v12 = v25;
          v13 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
          v14 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
          objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController(0));
          v15 = v13;
          v16 = v14;
          v17 = v12;
          v18 = v15;
          v19 = v1;
          sub_100349480(v17, v18, v16);
          v21 = v20;
          v22 = [v19 navigationController];
          if (v22)
          {
            v23 = v22;
            [v22 pushViewController:v21 animated:1];
          }

          else
          {
          }
        }

        else
        {
          sub_100007C5C(v27, v26);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_100005A40(v27);
            (*(v7 + 56))(v5, 1, 1, v6);
            sub_10000EA04(v5, &qword_1008E0BC0, &qword_1006DC7C0);
            return;
          }

          (*(v7 + 56))(v5, 0, 1, v6);
          sub_100282AA8(v5, v9, type metadata accessor for FitnessPlusStackViewModel);
          sub_10027A614(v9);
          sub_100282CC4(v9, type metadata accessor for FitnessPlusStackViewModel);
        }
      }

      sub_100005A40(v27);
    }
  }
}

uint64_t sub_100276B6C(uint64_t a1)
{
  v79 = a1;
  v77 = type metadata accessor for Logger();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v90 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EAEF0, &unk_1006E9510);
  __chkstk_darwin(v5 - 8);
  v83 = &v74 - v6;
  v7 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v7 - 8);
  v81 = &v74 - v8;
  v9 = sub_100140278(&qword_1008E4DB0, &qword_1006E3370);
  __chkstk_darwin(v9 - 8);
  v80 = &v74 - v10;
  v11 = type metadata accessor for MetricPage();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  __chkstk_darwin(v13 - 8);
  v78 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = &v74 - v16;
  v17 = type metadata accessor for MetricClickAction();
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v95 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MetricClickElement();
  v93 = *(v19 - 8);
  v94 = v19;
  __chkstk_darwin(v19);
  v82 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MetricLocation();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v100 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v99 = &v74 - v24;
  v25 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v25 - 8);
  v27 = &v74 - v26;
  v28 = type metadata accessor for CatalogTipSection(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v1;
  v32 = *(*(*(v1 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel) + 48) + 32);
  v33 = *(*v32 + class metadata base offset for ManagedBuffer + 16);
  v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v34));
  v35 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
  sub_10001B104(v32 + *(v35 + 20) + v33, v27, &qword_1008E4E80, &qword_100700A40);
  os_unfair_lock_unlock((v32 + v34));
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000EA04(v27, &qword_1008E4E80, &qword_100700A40);
    v36 = v75;
    static Log.default.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "[ActivityTileViewController] tip row selected with no tip section", v39, 2u);
    }

    return (*(v76 + 8))(v36, v77);
  }

  else
  {
    v41 = v31;
    v74 = v31;
    sub_100282AA8(v27, v31, type metadata accessor for CatalogTipSection);
    sub_100145788(2);
    v42 = *(v93 + 104);
    v43 = v82;
    v44 = v94;
    v42(v82, enum case for MetricClickElement.shelf(_:));
    sub_1004A8614(_swiftEmptyArrayStorage);
    MetricLocation.init(identifier:identifierType:index:name:elementType:entitlementRequired:contentType:metadata:)();
    v45 = &v41[*(v28 + 36)];
    v46 = &v45[*(type metadata accessor for CatalogTipSectionItem(0) + 28)];
    v47 = v46[1];
    v77 = *v46;
    v76 = v47;

    v48 = ShelfLockupAttributedTagStrings.detail.getter();
    v49 = [v48 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = enum case for MetricClickElement.button(_:);
    (v42)(v43, enum case for MetricClickElement.button(_:), v44);
    sub_1004A8614(_swiftEmptyArrayStorage);
    MetricLocation.init(identifier:identifierType:index:name:elementType:entitlementRequired:contentType:metadata:)();
    v102 = v98;
    (*(v96 + 104))(v95, enum case for MetricClickAction.navigate(_:), v97);
    (v42)(v43, v50, v44);
    v51 = enum case for MetricClickDestination.trainerTip(_:);
    v52 = type metadata accessor for MetricClickDestination();
    v53 = *(v52 - 8);
    v54 = v86;
    (*(v53 + 104))(v86, v51, v52);
    v55 = *(v53 + 56);
    v55(v54, 0, 1, v52);
    v56 = enum case for MetricPageCategory.summary(_:);
    v57 = type metadata accessor for MetricPageCategory();
    v58 = *(v57 - 8);
    v59 = v80;
    (*(v58 + 104))(v80, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    v60 = type metadata accessor for URL();
    (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
    v55(v78, 1, 1, v52);
    v61 = type metadata accessor for MetricPlaybackEntitlement();
    (*(*(v61 - 8) + 56))(v83, 1, 1, v61);
    v62 = v87;
    MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
    sub_100140278(&unk_1008EAF00, &qword_1006E3400);
    v63 = v84;
    v64 = *(v84 + 72);
    v65 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1006D1F70;
    v67 = v66 + v65;
    v68 = *(v63 + 16);
    v69 = v85;
    v68(v67, v100, v85);
    v68(v67 + v64, v99, v69);
    v101 = *(v98 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_impressionsTracker);

    v70 = v90;
    Date.init()();
    type metadata accessor for ActivityTileImpressionsTracker();
    sub_100281448(&qword_1008E4DB8, 255, type metadata accessor for ActivityTileImpressionsTracker, &unk_1006F6240);
    MetricImpressionConsuming.snapshotOnScreenImpressions(on:)();
    (*(v91 + 8))(v70, v92);

    type metadata accessor for ActivityTileViewController();
    sub_100281448(&qword_1008E4EB0, v71, type metadata accessor for ActivityTileViewController, &unk_1006E31E0);
    v72 = v95;
    MetricClickPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:impressions:topicRoutingBehavior:)();

    (*(v88 + 8))(v62, v89);
    sub_10000EA04(v54, &unk_1008E4DA0, &unk_1006E3360);
    (*(v93 + 8))(v43, v94);
    (*(v96 + 8))(v72, v97);
    v73 = *(v63 + 8);
    v73(v100, v69);
    v73(v99, v69);
    return sub_100282CC4(v74, type metadata accessor for CatalogTipSection);
  }
}

uint64_t sub_1002778B8()
{
  v1 = type metadata accessor for Logger();
  v54 = *(v1 - 8);
  v55 = v1;
  __chkstk_darwin(v1);
  v53 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&unk_1008E4E70, &qword_1006EC9D0);
  __chkstk_darwin(v3 - 8);
  v63 = v50 - v4;
  v5 = type metadata accessor for URL();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v60 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008EAF20, &unk_1006E33E0);
  __chkstk_darwin(v7 - 8);
  v59 = v50 - v8;
  v56 = type metadata accessor for CatalogTipPlayerOptions();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v65 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CatalogTipSummaryNavigationHandlers();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v66 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v12 - 8);
  v14 = v50 - v13;
  v15 = type metadata accessor for CatalogTipSection(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v64 = v0;
  v22 = *(*(*&v0[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 48) + 32);
  v23 = *(*v22 + class metadata base offset for ManagedBuffer + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  v25 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
  sub_10001B104(v22 + *(v25 + 20) + v23, v14, &qword_1008E4E80, &qword_100700A40);
  os_unfair_lock_unlock((v22 + v24));
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000EA04(v14, &qword_1008E4E80, &qword_100700A40);
    v26 = v53;
    static Log.default.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "[ActivityTileViewController] tip row selected with no tip section", v29, 2u);
    }

    return (*(v54 + 8))(v26, v55);
  }

  else
  {
    v31 = v21;
    sub_100282AA8(v14, v21, type metadata accessor for CatalogTipSection);
    v32 = swift_allocObject();
    v33 = v64;
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v35 = v33;
    swift_unknownObjectWeakInit();
    v36 = v31;
    v51 = v31;
    sub_100282D50(v31, v18, type metadata accessor for CatalogTipSection);
    v37 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    v39 = v38;
    sub_100282AA8(v18, v38 + v37, type metadata accessor for CatalogTipSection);
    v54 = v32;

    v55 = v39;

    CatalogTipSummaryNavigationHandlers.init(onLearnMoreTapped:onSeeMoreTipsTapped:)();
    v53 = type metadata accessor for CatalogTipPlayerPresenter();
    v50[1] = *&v35[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_dependencies];
    sub_100140278(&qword_1008E4E88, &qword_1006E33F0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006D1F70;

    static CatalogTipPlayerOptions.summary.getter();
    static CatalogTipPlayerOptions.catalogSync.getter();
    v67 = v40;
    sub_100281448(&qword_1008E4E90, 255, &type metadata accessor for CatalogTipPlayerOptions, &protocol conformance descriptor for CatalogTipPlayerOptions);
    sub_100140278(&qword_1008E4E98, &qword_1006E33F8);
    sub_100282B7C(&unk_1008E4EA0, &qword_1008E4E98, &qword_1006E33F8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v36 + *(v15 + 36);
    v42 = type metadata accessor for CatalogTipSectionItem(0);
    sub_10001B104(v41 + v42[8], v59, &unk_1008EAF20, &unk_1006E33E0);
    v43 = v42[10];
    v56 = *(v41 + v42[9]);
    v52 = *(v41 + v43);
    v44 = v42[12];
    v50[0] = *(v41 + v42[11]);
    (*(v57 + 16))(v60, v41 + v44, v58);
    v46 = v61;
    v45 = v62;
    v47 = v63;
    (*(v61 + 16))(v63, v66, v62);
    (*(v46 + 56))(v47, 0, 1, v45);

    CatalogTipPlayerPresenter.__allocating_init(dependencies:metricTopicRoutingBehavior:options:pageContext:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:summaryNavigationHandlers:tipIdentifier:)();
    v48 = objc_allocWithZone(type metadata accessor for CatalogTipPlayerViewController());

    v49 = CatalogTipPlayerViewController.init(presenter:)();
    [v64 presentViewController:v49 animated:1 completion:0];

    (*(v46 + 8))(v66, v45);
    return sub_100282CC4(v51, type metadata accessor for CatalogTipSection);
  }
}

void sub_100278730(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MetricPublishingBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_initialPresentation];
  if (!v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility])
  {
    *v8 = a1;
    v8[8] = 0;
    return;
  }

  *v8 = 0;
  v8[8] = 1;
  type metadata accessor for AccountViewController();
  (*(v5 + 104))(v7, enum case for MetricPublishingBehavior.suppress(_:), v4);

  swift_unknownObjectRetain();
  v9 = AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:metricPublishingBehavior:)();
  v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v9];
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    if (a1 != 1)
    {
      goto LABEL_17;
    }

    v12 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());

    v13 = NotificationSettingsViewController.init(dependencies:)();
LABEL_14:
    [v10 pushViewController:v13 animated:0];

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v13 = [objc_allocWithZone(CHASActivitySetupMetricsCollectionViewController) initWithPresentationContext:6];
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of AccountFitnessSettingsProviding.makeChangeGoalsViewController()();
    goto LABEL_13;
  }

  if (a1 != 4)
  {
LABEL_17:
    v14[1] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = dispatch thunk of AccountFitnessSettingsProviding.makeUnitsViewController()();
LABEL_13:
  v13 = v11;
  swift_unknownObjectRelease();
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_15:
  [v2 presentViewController:v10 animated:1 completion:0];
}

void sub_100278A60(char a1, uint64_t a2)
{
  if (a2 && (a1 & 1) == 0)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      log = v3;
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, log, v2, "presentWorkoutStructureData failed with error: %@", v4, 0xCu);
      sub_10000EA04(v5, &unk_1008DB8B0, &unk_1006DBD30);
    }

    else
    {
    }
  }
}

void sub_100278CE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);

    sub_1005CE9AC();
  }
}

void sub_100278D50(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);

    sub_1005D065C(a2);
  }
}

char *sub_100278DCC(void *a1, int a2, int a3, int a4, char *a5, int a6)
{
  v7 = v6;
  LODWORD(v129) = a6;
  v128 = a5;
  v112 = a3;
  v113 = a2;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchQoS();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchTime();
  v103 = *(v114 - 8);
  __chkstk_darwin(v114);
  v101 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v100 - v14;
  v15 = 1;
  LODWORD(v130) = a4;
  if ((a4 & 1) == 0)
  {
    v15 = sub_100279C8C();
  }

  LODWORD(v125) = static os_log_type_t.default.getter();
  v16 = HKLogActivity;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D64F0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10000A788();
  *(v17 + 64) = v18;
  *(v17 + 32) = 0xD000000000000050;
  *(v17 + 40) = 0x8000000100750DD0;
  v19 = v16;
  v20 = a1;
  v21 = [v20 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 72) = v22;
  *(v17 + 80) = v24;
  v127 = v15 & 1;
  LOBYTE(aBlock[0]) = v15 & 1;
  v126 = v130 & 1;
  BYTE1(aBlock[0]) = v130 & 1;
  v25 = String.init<A>(describing:)();
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  *(v17 + 112) = v25;
  *(v17 + 120) = v26;
  os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v19, "%@ presenting today view for %{public}@ with celebration context %{public}@", 75, 2, v17);

  v125 = *(v6 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDateCache);
  sub_1002477A8(v20, v6);
  v115 = *(v6 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider);
  v27 = v115;
  v117 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator);
  v28 = v117;
  v29 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionDataProvider);
  v123 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory);
  v124 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager);
  v130 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider);
  sub_100007C5C(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider, aBlock);
  v118 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager);
  v116 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider);
  v30 = v116;
  v119 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager);
  v120 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager);
  v121 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider);
  v110 = v7;
  v122 = *(v7 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext);
  v111 = type metadata accessor for HistoryPagingViewController(0);
  v31 = objc_allocWithZone(v111);
  swift_unknownObjectWeakInit();
  v32 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener];
  *v32 = 0u;
  v32[1] = 0u;
  v33 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_selectedDateListener];
  *v33 = 0u;
  v33[1] = 0u;
  v34 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled;
  v35 = [objc_opt_self() standardUserDefaults];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 BOOLForKey:v36];

  v31[v34] = v37;
  v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete] = 0;
  v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete] = 0;
  v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_initialLoad] = 1;
  v38 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController;
  *&v31[v38] = [objc_allocWithZone(FIUIPageViewController) init];
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages] = 0;
  sub_100284730(&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_jan1_2014]);
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] = v27;
  v39 = v125;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache] = v125;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsCoordinator] = v28;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionDataProvider] = v29;
  v40 = v123;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_badgeImageFactory] = v123;
  v41 = v124;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_friendListManager] = v124;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementResourceProvider] = v130;
  sub_100007C5C(aBlock, &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_awardsDataProvider]);
  v42 = v118;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutFormattingManager] = v118;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutDataProvider] = v30;
  v43 = v119;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionFormattingManager] = v119;
  v44 = v120;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fiuiFormattingManager] = v120;
  v45 = v121;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementLocalizationProvider] = v121;
  v46 = v122;
  *&v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fitnessAppContext] = v122;
  v47 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationContext];
  *v47 = v127;
  v47[1] = v126;
  v48 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_goalRecommendation];
  *v48 = v128;
  v48[8] = v129 & 1;
  v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsEditing] = 0;
  v129 = objc_opt_self();
  v128 = v115;
  v49 = v39;
  v50 = v117;
  v51 = v29;
  v52 = v40;
  v53 = v41;
  v54 = v130;
  v55 = v42;
  v56 = v116;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v60 = v46;
  result = [v129 sharedBehavior];
  if (result)
  {
    v62 = result;
    v63 = [result isStandalonePhoneFitnessMode];

    v64 = type metadata accessor for AppStoreQuery();
    swift_allocObject();
    v65 = sub_10020F478();
    v66 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appStoreQuery];
    v66[3] = v64;
    v66[4] = &off_10084CB18;
    *v66 = v65;
    v67 = *&v128[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider];
    v68 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_recentWorkoutAppQuery];
    v68[3] = &type metadata for RecentWorkoutAppQuery;
    v68[4] = &off_1008624B8;
    *v68 = v67;
    sub_100007C5C(v66, v134);
    sub_100007C5C(v68, v133);
    v69 = sub_1001DF03C(v134, v134[3]);
    v70 = __chkstk_darwin(v69);
    v72 = (&v100 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72, v70);
    v74 = sub_1001DF03C(v133, v133[3]);
    v75 = __chkstk_darwin(v74);
    v77 = (&v100 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77, v75);
    v79 = *v72;
    v80 = *v77;
    v81 = v67;
    v82 = sub_10039D868(v79, v80, &off_100843AE8, v63 ^ 1);
    sub_100005A40(v133);
    sub_100005A40(v134);
    v83 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appRecommendationDataProvider];
    v83[3] = type metadata accessor for AppRecommendationDataProvider();
    v83[4] = &off_10085F1A0;
    *v83 = v82;
    v84 = type metadata accessor for SeymourWorkoutRecommendationDataProvider(0);
    swift_allocObject();
    v85 = sub_10016DF3C(v60);
    v86 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_seymourWorkoutRecommendationDataProvider];
    v86[3] = v84;
    v86[4] = &off_100848248;
    *v86 = v85;
    v87 = &v31[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_walkSuggestionDataProvider];
    *(v87 + 3) = &type metadata for WalkSuggestionDataProvider;
    *(v87 + 4) = &off_1008624A8;
    v132.receiver = v31;
    v132.super_class = v111;
    v88 = objc_msgSendSuper2(&v132, "initWithNibName:bundle:", 0, 0);
    sub_1002831F8();

    sub_100005A40(aBlock);
    v89 = v110;
    swift_unknownObjectWeakAssign();
    v90 = [v89 navigationController];
    [v90 pushViewController:v88 animated:v112 & 1];

    if (v113)
    {
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v129 = static OS_dispatch_queue.main.getter();
      v91 = v101;
      static DispatchTime.now()();
      v92 = v102;
      + infix(_:_:)();
      v130 = *(v103 + 8);
      (v130)(v91, v114);
      v93 = swift_allocObject();
      *(v93 + 16) = v88;
      aBlock[4] = sub_100282A90;
      aBlock[5] = v93;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10084F018;
      v94 = _Block_copy(aBlock);
      v95 = v88;

      v96 = v104;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100281448(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
      v97 = v106;
      v98 = v109;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v99 = v129;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v94);

      (*(v108 + 8))(v97, v98);
      (*(v105 + 8))(v96, v107);
      (v130)(v92, v114);
    }

    return v88;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100279C8C()
{
  v1 = type metadata accessor for Calendar();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    goto LABEL_18;
  }

  Date.init()();
  v17 = [*(*(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
  if (!v17)
  {
    (*(v4 + 8))(v12, v3);
    goto LABEL_18;
  }

  v18 = v17;
  if (([v17 _isStandalonePhoneSummary] & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = [v18 activityMoveMode];
  if (v19 == 2)
  {
    v20 = &selRef_minuteUnit;
  }

  else
  {
    v20 = &selRef_kilocalorieUnit;
  }

  v43 = v20;
  v21 = &selRef_appleMoveTime;
  if (v19 != 2)
  {
    v21 = &selRef_activeEnergyBurned;
  }

  v22 = *v21;
  v23 = &selRef_appleMoveTimeGoal;
  if (v19 != 2)
  {
    v23 = &selRef_activeEnergyBurnedGoal;
  }

  v44 = v23;
  v24 = [v18 v22];
  v25 = objc_opt_self();
  v26 = [v25 *v20];
  [v24 doubleValueForUnit:v26];
  v28 = v27;

  v29 = [v18 *v44];
  v30 = [v25 *v43];
  [v29 doubleValueForUnit:v30];
  v32 = v31;

  if (v32 <= 0.0 || v32 > v28)
  {
LABEL_16:
    (*(v4 + 8))(v12, v3);

LABEL_18:
    v34 = 0;
    return v34 & 1;
  }

  v36 = [v13 standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 hk_dateForKey:v37];

  if (v38)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v6, v3);
    v39 = v45;
    static Calendar.current.getter();
    v40 = Calendar.isDate(_:inSameDayAs:)();

    (*(v46 + 8))(v39, v47);
    v41 = *(v4 + 8);
    v41(v9, v3);
    v41(v12, v3);
    v34 = v40 ^ 1;
  }

  else
  {
    (*(v4 + 8))(v12, v3);

    v34 = 1;
  }

  return v34 & 1;
}

void sub_10027A150(uint64_t a1)
{
  v3 = [*(a1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController) currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
    {
      sub_100511674(v1, v2);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_shareWhenDataLoads) = 1;
    }
  }
}

void sub_10027A1F8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel];
  v44 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v39 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v40 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider];
  v6 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  v7 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  v8 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v9 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v10 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  v11 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v32 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider;
  sub_100007C5C(&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], v47);
  v12 = type metadata accessor for CHAwardsDataProvider();
  v13 = objc_allocWithZone(v12);
  sub_100007C5C(v47, v13 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v46.receiver = v13;
  v46.super_class = v12;
  v14 = objc_msgSendSuper2(&v46, "init");
  sub_100005A40(v47);
  LOBYTE(v30) = 1;
  v33 = v11;
  v34 = v9;
  v35 = v8;
  v36 = v7;
  v15 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:v5 workoutActivity:v6 healthStore:v7 model:v8 fitnessAppContext:v9 workoutFormattingManager:v10 workoutDataProvider:v11 badgeImageFactory:v14 friendListManager:v30 achievementLocalizationProvider:? pauseRingsCoordinator:? achievementResourceProvider:? formattingManager:? awardsDataProvider:? shouldExposeDeepLinkToTrainingLoadFromEffort:?];

  if (v15)
  {
    v16 = [v4 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v15 animated:a4 == 0];
    }

    if (!a2)
    {
      v22 = 0;
      v23 = v15;
      v25 = a4;
      goto LABEL_14;
    }

    v18 = a2;
    if ([a1 isMultiSportWorkout])
    {
      sub_100007C5C(&v4[v32], v47);
      v19 = objc_allocWithZone(v12);
      sub_100007C5C(v47, v19 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
      v45.receiver = v19;
      v45.super_class = v12;
      v20 = v18;
      v21 = objc_msgSendSuper2(&v45, "init");
      sub_100005A40(v47);
      LOBYTE(v31) = 1;
      v22 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:a1 workoutActivity:v20 healthStore:v44 model:v43 fitnessAppContext:v40 workoutFormattingManager:v39 workoutDataProvider:v5 badgeImageFactory:v6 friendListManager:v36 achievementLocalizationProvider:v35 pauseRingsCoordinator:v34 achievementResourceProvider:v10 formattingManager:v33 awardsDataProvider:v21 shouldExposeDeepLinkToTrainingLoadFromEffort:v31];

      if (v22)
      {
        v23 = v22;
        v24 = [v4 navigationController];
        v25 = a4;
        if (v24)
        {
          v26 = v24;
          [v24 pushViewController:v23 animated:a4 == 0];
        }

        v22 = v23;
        goto LABEL_13;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v15;
    v25 = a4;
LABEL_13:

LABEL_14:
    v27 = v23;
    if (v25)
    {

      v48._countAndFlagsBits = a3;
      v48._object = v25;
      v28 = sub_100404390(v48);
      if (v28 <= 4)
      {
        if (v28 <= 1)
        {
          if (v28)
          {
            v29 = 9;
          }

          else
          {
            v29 = 2;
          }
        }

        else if (v28 == 2)
        {
          v29 = 11;
        }

        else if (v28 == 3)
        {
          v29 = 6;
        }

        else
        {
          v29 = 13;
        }

        goto LABEL_35;
      }

      if (v28 <= 7)
      {
        if (v28 == 5)
        {
          v29 = 14;
        }

        else if (v28 == 6)
        {
          v29 = 10;
        }

        else
        {
          v29 = 7;
        }

        goto LABEL_35;
      }

      if (v28 == 8)
      {
        v29 = 8;
        goto LABEL_35;
      }

      if (v28 == 9)
      {
        v29 = 15;
LABEL_35:
        [v27 navigateToSection:v29];
      }
    }
  }
}

void sub_10027A614(uint64_t a1)
{
  v93 = type metadata accessor for FitnessPlusStackViewModel(0) - 8;
  __chkstk_darwin(v93);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v4;
  sub_100282D50(a1, v4, type metadata accessor for FitnessPlusStackViewModel);
  v92 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_historyDataProvider];
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v86 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v87 = v5;
  v80 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v6 = v80;
  v88 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel];
  v81 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  v7 = v81;
  v82 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  v8 = v82;
  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v89 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v90 = v9;
  v91 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  sub_100007C5C(&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], aBlock);
  v10 = type metadata accessor for CHAwardsDataProvider();
  v11 = objc_allocWithZone(v10);
  sub_100007C5C(aBlock, v11 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v98.receiver = v11;
  v98.super_class = v10;
  v12 = objc_msgSendSuper2(&v98, "init");
  v83 = v12;
  sub_100005A40(aBlock);
  v84 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_stackFormattingManager];
  v85 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v79 = v1;
  v95 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
  v13 = type metadata accessor for StackDetailViewController(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = 0;
  sub_100282D50(v4, &v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel], type metadata accessor for FitnessPlusStackViewModel);
  v15 = v86;
  v16 = v87;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext] = v86;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fiuiFormattingManager] = v16;
  v17 = v92;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_historyDataProvider] = v92;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_healthStore] = v6;
  v19 = v88;
  v18 = v89;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_model] = v88;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_badgeImageFactory] = v7;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_friendListManager] = v8;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementLocalizationProvider] = v18;
  v21 = v90;
  v20 = v91;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_pauseRingsCoordinator] = v90;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementResourceProvider] = v20;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_awardsDataProvider] = v12;
  v22 = v84;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackFormattingManager] = v84;
  v23 = v85;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager] = v85;
  *&v14[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager] = v95;
  v97.receiver = v14;
  v97.super_class = v13;
  v24 = v15;
  v25 = v16;
  v92 = v17;
  v26 = v80;
  v27 = v19;
  v28 = v81;
  v29 = v82;
  v30 = v18;
  v31 = v21;
  v32 = v20;
  v91 = v83;
  v33 = v22;
  v34 = v23;
  v35 = v95;
  v36 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 detailViewDateFormatter];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v41 = [v39 stringFromDate:isa];

  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  [v38 setTitle:v41];
  v42 = [v38 navigationItem];
  [v42 setLargeTitleDisplayMode:2];

  v43 = [v38 tableView];
  if (!v43)
  {
    __break(1u);
    goto LABEL_17;
  }

  v44 = v43;
  [v43 setSeparatorStyle:0];

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v38;
  v47 = [v46 tableView];
  v48 = v92;
  if (!v47)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v49 = v47;
  v50 = objc_allocWithZone(UITableViewDiffableDataSource);
  aBlock[4] = sub_100282A98;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  aBlock[3] = &unk_10084F090;
  v51 = _Block_copy(aBlock);

  v52 = [v50 initWithTableView:v49 cellProvider:v51];

  _Block_release(v51);

  v53 = *&v46[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource];
  *&v46[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = v52;

  v54 = [v46 tableView];
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v55 = v54;
  type metadata accessor for StackDetailHeaderCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = String._bridgeToObjectiveC()();
  [v55 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v57];

  v58 = [v46 tableView];
  if (!v58)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = v58;
  type metadata accessor for StackDetailSideBySideItemsCell();
  v60 = swift_getObjCClassFromMetadata();
  v61 = String._bridgeToObjectiveC()();
  [v59 registerClass:v60 forCellReuseIdentifier:v61];

  v62 = [v46 tableView];
  if (!v62)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v63 = v62;
  type metadata accessor for WorkoutsListTableViewCell();
  v64 = swift_getObjCClassFromMetadata();
  v65 = String._bridgeToObjectiveC()();
  [v63 registerClass:v64 forCellReuseIdentifier:v65];

  v66 = [v46 tableView];
  if (!v66)
  {
LABEL_21:
    __break(1u);
    return;
  }

  type metadata accessor for MindfulnessSessionListTableViewCell();
  v67 = swift_getObjCClassFromMetadata();
  v68 = String._bridgeToObjectiveC()();
  [v66 registerClass:v67 forCellReuseIdentifier:v68];

  sub_10029DB90();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v70 = swift_allocObject();
  *(v70 + 16) = sub_100282AA0;
  *(v70 + 24) = v69;
  v71 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v72 = *&v48[v71];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v48[v71] = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_1001A1E7C(0, v72[2] + 1, 1, v72);
    *&v48[v71] = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    v72 = sub_1001A1E7C((v74 > 1), v75 + 1, 1, v72);
  }

  v72[2] = v75 + 1;
  v76 = &v72[2 * v75];
  v76[4] = sub_100283170;
  v76[5] = v70;
  *&v48[v71] = v72;
  swift_endAccess();

  sub_100282CC4(v94, type metadata accessor for FitnessPlusStackViewModel);

  v77 = [v79 navigationController];
  if (v77)
  {
    v78 = v77;
    [v77 pushViewController:v46 animated:1];
  }
}