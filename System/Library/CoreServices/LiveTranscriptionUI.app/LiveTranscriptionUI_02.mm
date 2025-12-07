__n128 sub_100036058(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003606C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000360B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100036120@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v26 = a1;
  v32 = a5;
  v30 = sub_100003968(&qword_100063C98, &qword_1000494B8);
  __chkstk_darwin(v30);
  v8 = &v26 - v7;
  v28 = sub_100003968(&qword_100063CA0, &qword_1000494C0);
  __chkstk_darwin(v28);
  v10 = &v26 - v9;
  v29 = sub_100003968(&qword_100063CA8, &qword_1000494C8);
  __chkstk_darwin(v29);
  v12 = &v26 - v11;
  v31 = sub_100003968(&qword_100063CB0, &qword_1000494D0);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v26 - v14;
  *&v33[0] = a3;
  *(&v33[0] + 1) = a4;
  sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  static Color.clear.getter();
  v16 = static Color.== infix(_:_:)();

  if (v16)
  {
    v17 = 1;
    v18 = v32;
  }

  else
  {
    if (v27 == 3)
    {
      sub_100036518(3u, a3, a4, v12);
      GeometryProxy.size.getter();
      sub_100036F18(v33);
      v19 = v34;
      v20 = &v12[*(v29 + 36)];
      v21 = v33[1];
      *v20 = v33[0];
      *(v20 + 1) = v21;
      v20[32] = v19;
      *(v20 + 33) = 257;
      v22 = &qword_100063CA8;
      v23 = &qword_1000494C8;
      sub_100006098(v12, v10, &qword_100063CA8, &qword_1000494C8);
      swift_storeEnumTagMultiPayload();
      sub_100036C68();
      sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
      _ConditionalContent<>.init(storage:)();
      v24 = v12;
    }

    else
    {
      sub_100036518(v27, a3, a4, v8);
      v22 = &qword_100063C98;
      v23 = &qword_1000494B8;
      sub_100006098(v8, v10, &qword_100063C98, &qword_1000494B8);
      swift_storeEnumTagMultiPayload();
      sub_100036C68();
      sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
      _ConditionalContent<>.init(storage:)();
      v24 = v8;
    }

    sub_100003CE8(v24, v22, v23);
    v18 = v32;
    sub_10000BB84(v15, v32, &qword_100063CB0, &qword_1000494D0);
    v17 = 0;
  }

  return (*(v13 + 56))(v18, v17, 1, v31);
}

uint64_t sub_100036518@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = type metadata accessor for RoundedRectangle();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100003968(&qword_100062800, &qword_100047CE0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (&v71 - v13);
  v15 = sub_100003968(&qword_100063CF0, &qword_1000494E8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v19 = sub_100003968(&qword_100063CE0, &qword_1000494E0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v72 = &v71 - v21;
  v74 = sub_100003968(&qword_100063CD0, &qword_1000494D8) - 8;
  __chkstk_darwin(v74);
  v73 = &v71 - v22;
  v76 = a2;
  v77 = a3;
  sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  v23 = Color.opacity(_:)();

  if (a1)
  {
    v24 = 15.0;
  }

  else
  {
    v24 = 18.0;
  }

  v25 = *(v8 + 28);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(v10 + v25, v26, v27);
  *v10 = v24;
  v10[1] = v24;
  v28 = v14 + *(v12 + 44);
  sub_100037314(v10, v28);
  *(v28 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  *v14 = v23;
  LOBYTE(v28) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10000BB84(v14, v18, &qword_100062800, &qword_100047CE0);
  v37 = &v18[*(v16 + 44)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(v28) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v72;
  sub_10000BB84(v18, v72, &qword_100063CF0, &qword_1000494E8);
  v47 = v46 + *(v20 + 44);
  *v47 = v28;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  LOBYTE(v28) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v46;
  v57 = v73;
  sub_10000BB84(v56, v73, &qword_100063CE0, &qword_1000494E0);
  v58 = v57 + *(v74 + 44);
  *v58 = v28;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  LOBYTE(v28) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v57;
  v68 = v75;
  sub_10000BB84(v67, v75, &qword_100063CD0, &qword_1000494D8);
  result = sub_100003968(&qword_100063C98, &qword_1000494B8);
  v70 = v68 + *(result + 36);
  *v70 = v28;
  *(v70 + 8) = v60;
  *(v70 + 16) = v62;
  *(v70 + 24) = v64;
  *(v70 + 32) = v66;
  *(v70 + 40) = 0;
  return result;
}

void sub_100036990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Notification.userInfo.getter();
  if (v6)
  {
    v7 = v6;
    v10 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_10003C2DC(v11), (v9 & 1) != 0))
    {
      sub_10000B3C8(*(v7 + 56) + 32 * v8, v12);
      sub_10000B374(v11);

      if (swift_dynamicCast())
      {
        v11[0] = a3;
        v11[1] = a4;
        v12[0] = v10;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v11);
    }
  }
}

uint64_t sub_100036A98@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = objc_opt_self();

  v8 = [v7 defaultCenter];
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  v9 = sub_100003968(&qword_100063C90, &unk_1000494A8);
  NSNotificationCenter.publisher(for:object:)();

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v5;
  *(v10 + 32) = v4;
  *a1 = sub_100036C10;
  a1[1] = v6;
  v11 = (a1 + *(v9 + 56));
  *v11 = sub_100036C5C;
  v11[1] = v10;
}

uint64_t sub_100036C1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100036C68()
{
  result = qword_100063CB8;
  if (!qword_100063CB8)
  {
    sub_100003AC0(&qword_100063CA8, &qword_1000494C8);
    sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
    sub_100003E3C(&qword_100063D00, &qword_100063D08, &unk_1000494F0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CB8);
  }

  return result;
}

uint64_t sub_100036D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100036E60()
{
  result = qword_100063CF8;
  if (!qword_100063CF8)
  {
    sub_100003AC0(&qword_100062800, &qword_100047CE0);
    sub_100003E3C(&qword_100062FD8, &qword_100062818, &qword_1000485C0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CF8);
  }

  return result;
}

double sub_100036F18@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = (v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_opt_self();
  v6 = [v5 mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v53.origin.x = v8;
  v53.origin.y = v10;
  v53.size.width = v12;
  v53.size.height = v14;
  Width = CGRectGetWidth(v53);
  v16 = [v5 mainScreen];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v54.origin.x = v18;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v24;
  Height = CGRectGetHeight(v54);
  Rectangle.path(in:)();
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v26 = [v5 mainScreen];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v55.origin.x = v28;
    v55.origin.y = v30;
    v55.size.width = v32;
    v55.size.height = v34;
    CGRectGetWidth(v55);
  }

  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v56.size.width = Width;
  v56.size.height = Height;
  CGRectGetHeight(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = Width;
  v57.size.height = Height;
  CGRectGetWidth(v57);
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v35 = [v5 mainScreen];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v58.origin.x = v37;
    v58.origin.y = v39;
    v58.size.width = v41;
    v58.size.height = v43;
    CGRectGetWidth(v58);
  }

  v44 = *(v2 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v4->i8[v44], v45, v46);
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  RoundedRectangle.path(in:)();
  sub_100037264(v4);
  v52[5] = 0x3FF0000000000000;
  v52[6] = 0;
  v52[7] = 0;
  v52[8] = 0x3FF0000000000000;
  v52[9] = 0;
  v52[10] = 0;
  Path.addPath(_:transform:)();
  sub_1000372C0(v52);
  v47 = v51;
  result = *v50;
  v49 = v50[1];
  *a1 = v50[0];
  *(a1 + 16) = v49;
  *(a1 + 32) = v47;
  return result;
}

uint64_t sub_100037264(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1000373C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000373F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10003743C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000374C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v27[0] = sub_100003968(&qword_100063D18, &qword_1000495E8);
  __chkstk_darwin(v27[0]);
  v4 = v27 - v3;
  v5 = sub_100003968(&qword_100063D20, &qword_1000495F0);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_100003968(&qword_100063D28, &qword_1000495F8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = AXLTCaption.appID.getter();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    goto LABEL_8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    v17 = AXLTCaption.appName.getter();
    v19 = v18;
    if (v17 == placeholderMicName.getter() && v19 == v20)
    {
LABEL_8:

      goto LABEL_9;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      sub_100037E08(v2, v4);
      v22 = &qword_100063D18;
      v23 = &qword_1000495E8;
      sub_100006098(v4, v7, &qword_100063D18, &qword_1000495E8);
      swift_storeEnumTagMultiPayload();
      sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8, &protocol conformance descriptor for HStack<A>);
      sub_1000394B0();
      _ConditionalContent<>.init(storage:)();
      v24 = v4;
      return sub_100003CE8(v24, v22, v23);
    }
  }

LABEL_9:
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = sub_100003968(&qword_100063D68, &qword_100049610);
  sub_100037834(v2, &v10[*(v21 + 44)]);
  v22 = &qword_100063D28;
  v23 = &qword_1000495F8;
  sub_100006098(v10, v7, &qword_100063D28, &qword_1000495F8);
  swift_storeEnumTagMultiPayload();
  sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8, &protocol conformance descriptor for HStack<A>);
  sub_1000394B0();
  _ConditionalContent<>.init(storage:)();
  v24 = v10;
  return sub_100003CE8(v24, v22, v23);
}

uint64_t sub_100037834@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003968(&qword_100063D18, &qword_1000495E8);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = sub_100003968(&qword_100063D70, &qword_100049618);
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v24 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100003968(&qword_100063D78, &qword_100049620);
  sub_100037B68(a1, &v15[*(v16 + 44)]);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v17 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    v23 = v17;
    swift_once();
    v17 = v23;
  }

  v18 = [v17 preferredFontForTextStyle:titleFontStyle];
  [v18 pointSize];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v15[*(v10 + 36)];
  v20 = v24[1];
  *v19 = v24[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v24[2];
  sub_100037E08(a1, v9);
  sub_100006098(v15, v12, &qword_100063D70, &qword_100049618);
  sub_100006098(v9, v6, &qword_100063D18, &qword_1000495E8);
  sub_100006098(v12, a2, &qword_100063D70, &qword_100049618);
  v21 = sub_100003968(&qword_100063D80, &qword_100049628);
  sub_100006098(v6, a2 + *(v21 + 48), &qword_100063D18, &qword_1000495E8);
  sub_100003CE8(v9, &qword_100063D18, &qword_1000495E8);
  sub_100003CE8(v15, &qword_100063D70, &qword_100049618);
  sub_100003CE8(v6, &qword_100063D18, &qword_1000495E8);
  return sub_100003CE8(v12, &qword_100063D70, &qword_100049618);
}

double sub_100037B68@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = dispatch thunk of AXLTCaption.text.getter();
  v6 = v5;
  if (v4 == placeholderPausedText.getter() && v6 == v7)
  {
    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = dispatch thunk of AXLTCaption.placeholder.getter();
    v12 = v11;
    if (v10 == placeholderPausedText.getter() && v12 == v13)
    {
LABEL_8:

      goto LABEL_9;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v14 = static Color.blue.getter();
      goto LABEL_10;
    }
  }

LABEL_9:
  v14 = static Color.gray.getter();
LABEL_10:
  v15 = v14;
  v16 = static Edge.Set.all.getter();
  v17 = *a1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = v17 * 0.5;
  v19 = (a2 + *(sub_100003968(&qword_100063D88, &unk_100049630) + 36));
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  v19[1] = v18;
  *(v19 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  *(a2 + 72) = v28;
  *(a2 + 88) = v29;
  *(a2 + 104) = v30;
  *(a2 + 120) = v31;
  result = *&v25;
  *(a2 + 24) = v25;
  *(a2 + 40) = v26;
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = 0x3FD999999999999ALL;
  *(a2 + 56) = v27;
  return result;
}

uint64_t sub_100037E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v109 = type metadata accessor for AXLTTextScrollView(0);
  __chkstk_darwin(v109);
  v4 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_100003968(&qword_100063D90, &qword_100049640);
  __chkstk_darwin(v106);
  v107 = &v94 - v5;
  v6 = type metadata accessor for AccessibilityTraits();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100003968(&qword_100063D98, &qword_100049648);
  __chkstk_darwin(v103);
  v104 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v94 - v15;
  v17 = sub_100003968(&qword_100063DA0, &unk_100049650);
  __chkstk_darwin(v17);
  v19 = &v94 - v18;
  v105 = sub_100003968(&qword_100063D58, &qword_100049608);
  __chkstk_darwin(v105);
  __chkstk_darwin(v20);
  v23 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v95 = v9;
    v96 = v7;
    v98 = v17;
    v99 = v16;
    v100 = v22;
    v102 = &v94 - v21;
    sub_100038B80(v23, v12);
    v24 = Text.init(_:)();
    v26 = v25;
    v28 = v27;
    v110 = *(a1 + 104);
    sub_100003968(&qword_100062C78, &qword_1000480F0);
    State.wrappedValue.getter();
    v29 = AXLTCaption.appID.getter();
    v31 = v30;
    v32 = placeholderID.getter();
    v101 = v19;
    v97 = v6;
    if (v29 == v32 && v31 == v33)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    Color.opacity(_:)();

    v54 = Text.foregroundColor(_:)();
    v56 = v55;
    v58 = v57;

    sub_10000B6F4(v24, v26, v28 & 1);

    v110 = *(a1 + 120);
    sub_100003968(&qword_100062D20, &qword_100048158);
    State.wrappedValue.getter();
    v59 = Text.font(_:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    sub_10000B6F4(v54, v56, v58 & 1);

    KeyPath = swift_getKeyPath();
    *&v110 = v59;
    *(&v110 + 1) = v61;
    v67 = v63 & 1;
    LOBYTE(v111) = v63 & 1;
    *(&v111 + 1) = v65;
    v112 = KeyPath;
    v113 = 0;
    v114 = 1;
    sub_100003968(&qword_100063DA8, &unk_1000496C0);
    sub_10003C180();
    v68 = v104;
    View.accessibility(identifier:)();
    sub_10000B6F4(v59, v61, v67);

    LOBYTE(v54) = *(a1 + 17);
    sub_100003968(&qword_100063C78, &unk_1000496D0);
    v69 = v96;
    if (v54)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100048C70;
      static AccessibilityTraits.updatesFrequently.getter();
    }

    else
    {
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100048930;
    }

    static AccessibilityTraits.isStaticText.getter();
    *&v110 = v70;
    sub_10003D7E8(&qword_100063C38, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_100003968(&qword_100063C40, &qword_1000493A8);
    sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8, &protocol conformance descriptor for [A]);
    v71 = v95;
    v72 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v99;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v69 + 8))(v71, v72);
    sub_100003CE8(v68, &qword_100063D98, &qword_100049648);
    v74 = objc_opt_self();
    v75 = [v74 defaultCenter];
    v76 = v101;
    if (qword_100062730 != -1)
    {
      swift_once();
    }

    v77 = v98;
    NSNotificationCenter.publisher(for:object:)();

    v78 = swift_allocObject();
    v79 = *(a1 + 112);
    *(v78 + 112) = *(a1 + 96);
    *(v78 + 128) = v79;
    *(v78 + 144) = *(a1 + 128);
    v80 = *(a1 + 48);
    *(v78 + 48) = *(a1 + 32);
    *(v78 + 64) = v80;
    v81 = *(a1 + 80);
    *(v78 + 80) = *(a1 + 64);
    *(v78 + 96) = v81;
    v82 = *(a1 + 16);
    *(v78 + 16) = *a1;
    *(v78 + 32) = v82;
    sub_10000BB84(v73, v76, &qword_100063D98, &qword_100049648);
    v83 = (v76 + *(v77 + 56));
    *v83 = sub_10003C23C;
    v83[1] = v78;
    sub_100025108(a1, &v110);
    v84 = [v74 defaultCenter];
    if (qword_100062740 != -1)
    {
      swift_once();
    }

    v85 = v105;
    v86 = v100;
    NSNotificationCenter.publisher(for:object:)();

    v87 = swift_allocObject();
    v88 = *(a1 + 112);
    *(v87 + 112) = *(a1 + 96);
    *(v87 + 128) = v88;
    *(v87 + 144) = *(a1 + 128);
    v89 = *(a1 + 48);
    *(v87 + 48) = *(a1 + 32);
    *(v87 + 64) = v89;
    v90 = *(a1 + 80);
    *(v87 + 80) = *(a1 + 64);
    *(v87 + 96) = v90;
    v91 = *(a1 + 16);
    *(v87 + 16) = *a1;
    *(v87 + 32) = v91;
    sub_10000BB84(v76, v86, &qword_100063DA0, &unk_100049650);
    v92 = (v86 + *(v85 + 56));
    *v92 = sub_10003C2D4;
    v92[1] = v87;
    v93 = v102;
    sub_10000BB84(v86, v102, &qword_100063D58, &qword_100049608);
    sub_100006098(v93, v107, &qword_100063D58, &qword_100049608);
    swift_storeEnumTagMultiPayload();
    sub_100025108(a1, &v110);
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView, &unk_100049710);
    _ConditionalContent<>.init(storage:)();
    return sub_100003CE8(v93, &qword_100063D58, &qword_100049608);
  }

  else
  {
    v110 = *(a1 + 24);
    *&v111 = *(a1 + 40);
    v104 = v23;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v103 = v117;
    v102 = v118;
    v34 = v119;
    v110 = *(a1 + 48);
    *&v111 = *(a1 + 64);
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v35 = v118;
    v101 = v117;
    v36 = v119;
    v37 = *(a1 + 88);
    v110 = *(a1 + 72);
    v111 = v37;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v39 = v117;
    v38 = v118;
    v40 = v119;
    v41 = v120;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v42 = static AXLTSettingsManager.shared;
    v43 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    v44 = *(v42 + v43);
    v45 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v46 = *(v42 + v45);
    v47 = v103;
    *v4 = v104;
    v4[1] = v47;
    v4[2] = v102;
    v4[3] = v34;
    v4[4] = v101;
    v4[5] = v35;
    v4[6] = v36;
    v4[7] = v39;
    v4[8] = v38;
    v4[9] = v40;
    v4[10] = v41;
    v115 = v44;

    State.init(wrappedValue:)();
    v48 = *(&v116 + 1);
    v4[11] = v116;
    v4[12] = v48;
    v115 = v46;
    State.init(wrappedValue:)();
    v49 = *(&v116 + 1);
    v4[13] = v116;
    v4[14] = v49;
    v50 = v109;
    v51 = *(v109 + 40);
    *(v4 + v51) = swift_getKeyPath();
    sub_100003968(&qword_100062C50, &qword_1000480D0);
    swift_storeEnumTagMultiPayload();
    v52 = *(v50 + 44);
    v115 = 0;
    sub_100003968(&qword_100062D88, &qword_100048850);
    State.init(wrappedValue:)();
    *(v4 + v52) = v116;
    sub_10003BF0C(v4, v107);
    swift_storeEnumTagMultiPayload();
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView, &unk_100049710);
    _ConditionalContent<>.init(storage:)();
    return sub_10003BF70(v4);
  }
}

uint64_t sub_100038B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Text.LineStyle.Pattern();
  __chkstk_darwin(v4 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003968(&qword_100063DB8, &unk_1000496E0);
  __chkstk_darwin(v6 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v48 - v9;
  v61 = type metadata accessor for AttributedString();
  v49 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v59 = &v48 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v58 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v18 = dispatch thunk of AXLTCaption.segments.getter();
  if (v18 >> 62)
  {
    goto LABEL_44;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v19)
  {
LABEL_45:
    dispatch thunk of AXLTCaption.text.getter();
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

LABEL_3:
  AttributedString.init(stringLiteral:)();
  v20 = dispatch thunk of AXLTCaption.segments.getter();
  v21 = v20;
  v48 = a2;
  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (v22)
  {
LABEL_5:
    v23 = 0;
    v56 = v21 & 0xFFFFFFFFFFFFFF8;
    v57 = v21 & 0xC000000000000001;
    v24 = (v49 + 8);
    v54 = v22;
    v55 = v21;
    do
    {
      if (v57)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v56 + 16))
        {
          goto LABEL_37;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v46 = _CocoaArrayWrapper.endIndex.getter();

        if (!v46)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      }

      v28 = [v25 substring];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      [v26 confidence];
      if (v29 != 0.0)
      {
        [v26 confidence];
        if (v30 < 0.5)
        {
          static Text.LineStyle.Pattern.dot.getter();
          static Color.blue.getter();
          v31 = v50;
          Text.LineStyle.init(pattern:color:)();
          v32 = type metadata accessor for Text.LineStyle();
          (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
          sub_100006098(v31, v51, &qword_100063DB8, &unk_1000496E0);
          sub_10003C4BC();
          AttributedString.subscript.setter();
          sub_100003CE8(v31, &qword_100063DB8, &unk_1000496E0);
        }
      }

      a2 = sub_10003D7E8(&qword_100063DC0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      AttributedString.append<A>(_:)();
      v33 = dispatch thunk of AXLTCaption.segments.getter();
      if (v33 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v34, 1))
      {
        goto LABEL_38;
      }

      if (v23 >= v34 - 1)
      {
        (*v24)(v13, v61);
      }

      else
      {
        v35 = [v26 substringRange];
        [v26 substringRange];
        v37 = &v35[v36];
        if (__OFADD__(v35, v36))
        {
          goto LABEL_39;
        }

        v38 = (v37 - 1);
        if (__OFSUB__(v37, 1))
        {
          goto LABEL_40;
        }

        v39 = dispatch thunk of AXLTCaption.segments.getter();
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v27 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v40 = *(v39 + 8 * v27 + 32);
        }

        v41 = v40;

        if ([v41 substringRange] < v38)
        {
          v42 = v53;
LABEL_31:
          AttributedString.init(stringLiteral:)();
          AttributedString.append<A>(_:)();

          v44 = *v24;
          v45 = v61;
          (*v24)(v42, v61);
          v44(v13, v45);
          goto LABEL_8;
        }

        v43 = [v41 substringRange];
        if (__OFSUB__(v43, v38))
        {
          goto LABEL_43;
        }

        if (v43 - v38 >= 2)
        {
          v42 = v53;
          goto LABEL_31;
        }

        (*v24)(v13, v61);
      }

LABEL_8:
      v21 = v55;
      ++v23;
    }

    while (v27 != v54);
  }

LABEL_47:

  return (*(v49 + 32))(v48, v59, v61);
}

void sub_10003925C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v7 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v8), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v9);
      sub_10000B374(v8);

      if (swift_dynamicCast())
      {
        v8[0] = *(a2 + 104);
        v9[0] = v7;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v8);
    }
  }
}

void sub_10003935C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v7 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v8), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v9);
      sub_10000B374(v8);

      if (swift_dynamicCast())
      {
        v8[0] = *(a2 + 120);
        v9[0] = v7;
        sub_100003968(&qword_100062D20, &qword_100048158);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v8);
    }
  }
}

unint64_t sub_1000394B0()
{
  result = qword_100063D38;
  if (!qword_100063D38)
  {
    sub_100003AC0(&qword_100063D18, &qword_1000495E8);
    sub_100039534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063D38);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_100063D40;
  if (!qword_100063D40)
  {
    sub_100003AC0(&qword_100063D48, &qword_100049600);
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView, &unk_100049710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063D40);
  }

  return result;
}

uint64_t type metadata accessor for AXLTTextScrollView(uint64_t a1)
{
  result = qword_100063E28;
  if (!qword_100063E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100039668@<X0>(void **a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v4 = type metadata accessor for AXLTTextScrollView(0);
  v40 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v5;
  v39 = type metadata accessor for AccessibilityTraits();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003968(&qword_100063E98, &qword_100049760);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v38 = sub_100003968(&qword_100063EA0, &qword_100049768);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  *v10 = static VerticalAlignment.top.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = &v10[*(sub_100003968(&qword_100063EA8, &qword_100049770) + 44)];
  *v13 = static VerticalAlignment.bottom.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(sub_100003968(&qword_100063EB0, &qword_100049778) + 44)];
  v43 = a2;
  sub_100039D04(a2, v14);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.bottomLeading.getter();
  v15 = v36;
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v13[*(sub_100003968(&qword_100063EB8, &qword_100049780) + 36)];
  v17 = v46;
  *v16 = v45;
  *(v16 + 1) = v17;
  *(v16 + 2) = v47;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v10[*(sub_100003968(&qword_100063EC0, &qword_100049788) + 36)];
  v19 = v49;
  *v18 = v48;
  *(v18 + 1) = v19;
  *(v18 + 2) = v50;
  *&v10[*(v8 + 36)] = 0;
  sub_10003CB8C();
  View.accessibility(identifier:)();
  sub_100003CE8(v10, &qword_100063E98, &qword_100049760);
  sub_100003968(&qword_100063C78, &unk_1000496D0);
  v20 = v37;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100048C70;
  static AccessibilityTraits.updatesFrequently.getter();
  static AccessibilityTraits.isStaticText.getter();
  v44 = v21;
  sub_10003D7E8(&qword_100063C38, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100003968(&qword_100063C40, &qword_1000493A8);
  sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8, &protocol conformance descriptor for [A]);
  v22 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v20 + 8))(v7, v22);
  sub_100003CE8(v12, &qword_100063EA0, &qword_100049768);
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  v25 = sub_100003968(&qword_100063EE8, &qword_1000497A0);
  NSNotificationCenter.publisher(for:object:)();

  v26 = v43;
  v27 = v41;
  sub_10003BF0C(v43, v41);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_10003CAA8(v27, v29 + v28);
  v30 = (v15 + *(v25 + 56));
  *v30 = sub_10003CCFC;
  v30[1] = v29;
  v31 = [v23 defaultCenter];
  if (qword_100062740 != -1)
  {
    swift_once();
  }

  v32 = sub_100003968(&qword_100063EF0, &qword_1000497A8);
  NSNotificationCenter.publisher(for:object:)();

  sub_10003BF0C(v26, v27);
  v33 = swift_allocObject();
  result = sub_10003CAA8(v27, v33 + v28);
  v35 = (v15 + *(v32 + 56));
  *v35 = sub_10003CD14;
  v35[1] = v33;
  return result;
}

uint64_t sub_100039D04@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for AXLTTextScrollView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v5;
  v7 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A2CC(v62);
  v31 = v62[1];
  v32 = v62[0];
  v8 = LOBYTE(v62[2]);
  v30 = v62[3];
  v9 = a1[14];
  *&v39[0] = a1[13];
  *(&v39[0] + 1) = v9;
  sub_100003968(&qword_100062D20, &qword_100048158);
  State.wrappedValue.getter();
  v29 = v61[0];
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v33 = v8;
  v64 = v8;
  v63 = 1;
  GeometryProxy.size.getter();
  static Alignment.topLeading.getter();
  v35 = v7;
  v25 = a1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v65[3] + 7) = *(&v65[10] + 8);
  *(&v65[4] + 7) = *(&v65[11] + 8);
  *(&v65[5] + 7) = *(&v65[12] + 8);
  *(&v65[6] + 7) = *(&v65[13] + 8);
  *(v65 + 7) = *(&v65[7] + 8);
  *(&v65[1] + 7) = *(&v65[8] + 8);
  *(&v65[2] + 7) = *(&v65[9] + 8);
  GeometryProxy.size.getter();
  static Alignment.topLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003BF0C(a1, v7);
  v10 = *(v4 + 80);
  v27 = v6;
  v28 = v10;
  v11 = (v10 + 16) & ~v10;
  v26 = v11;
  v12 = swift_allocObject();
  sub_10003CAA8(v7, v12 + v11);
  v13 = static Alignment.center.getter();
  v23 = v14;
  v15 = swift_allocObject();
  *(&v40[16] + 1) = v65[4];
  *(&v40[18] + 1) = v65[5];
  *(&v40[20] + 1) = v65[6];
  *(&v40[8] + 1) = v65[0];
  *(&v40[10] + 1) = v65[1];
  *(&v40[12] + 1) = v65[2];
  *(&v40[14] + 1) = v65[3];
  *&v40[27] = v39[2];
  v16 = v39[0];
  *&v40[25] = v39[1];
  v24 = v15;
  *(v15 + 16) = sub_10003CE08;
  *(v15 + 24) = v12;
  v40[0] = v32;
  v40[1] = v31;
  LOBYTE(v40[2]) = v33;
  v40[3] = v30;
  v40[4] = KeyPath;
  v40[5] = v29;
  v40[6] = v36;
  v40[7] = 0;
  LOBYTE(v40[8]) = 1;
  v40[22] = *(&v65[6] + 15);
  *&v40[23] = v16;
  LOWORD(v40[29]) = 256;
  v40[30] = sub_10003E0D0;
  v40[31] = 0;
  v40[32] = v13;
  v40[33] = v23;
  memcpy(v61, v40, sizeof(v61));
  v53 = v65[4];
  v54 = v65[5];
  *v55 = v65[6];
  v49 = v65[0];
  v50 = v65[1];
  v51 = v65[2];
  v52 = v65[3];
  *&v55[55] = v39[2];
  *&v55[39] = v39[1];
  v41[0] = v32;
  v41[1] = v31;
  v42 = v33;
  v43 = v30;
  v44 = KeyPath;
  v45 = v29;
  v46 = v36;
  v47 = 0;
  v48 = 1;
  *&v55[15] = *(&v65[6] + 15);
  *&v55[23] = v39[0];
  v56 = 256;
  v57 = sub_10003E0D0;
  v58 = 0;
  v59 = v13;
  v60 = v23;
  sub_100006098(v40, v62, &qword_100063EF8, &qword_1000497E0);
  sub_100003CE8(v41, &qword_100063EF8, &qword_1000497E0);
  memcpy(v39, v61, 0x110uLL);
  *&v39[17] = sub_10003CEB8;
  *(&v39[17] + 1) = v24;
  v38 = *v25;
  v17 = v38;
  v18 = v35;
  sub_10003BF0C(v25, v35);
  v19 = v26;
  v20 = swift_allocObject();
  sub_10003CAA8(v18, v20 + v19);
  v21 = v17;
  sub_100003968(&qword_100063F00, &qword_1000497E8);
  type metadata accessor for AXLTCaption();
  sub_10003D0D8();
  sub_10003D7E8(&qword_100062C68, &type metadata accessor for AXLTCaption, &protocol conformance descriptor for NSObject);
  View.onChange<A>(of:initial:_:)();

  memcpy(v62, v39, sizeof(v62));
  return sub_100003CE8(v62, &qword_100063F00, &qword_1000497E8);
}

uint64_t sub_10003A2CC@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  sub_100038B80(*v2, &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = Text.init(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v2[11];
  v10 = v2[12];
  v51 = v11;
  v52 = v10;
  v48 = v10;
  v47 = sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  v12 = AXLTCaption.appID.getter();
  v14 = v13;
  if (v12 == placeholderID.getter() && v14 == v15)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  Color.opacity(_:)();

  v49 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10000B6F4(v5, v7, v9 & 1);

  dispatch thunk of AXLTCaption.placeholder.getter();
  v22 = String.count.getter();

  if (v22 < 1)
  {
    v42 = v49;
  }

  else
  {
    v24._countAndFlagsBits = dispatch thunk of AXLTCaption.placeholder.getter();
    v51 = 10;
    v52 = 0xE100000000000000;
    String.append(_:)(v24);

    sub_10000B6A0();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v46 = v21;
    v51 = v11;
    v52 = v48;
    State.wrappedValue.getter();
    Color.opacity(_:)();
    v48 = v17;

    v44 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;

    sub_10000B6F4(v25, v27, v29 & 1);

    v34 = v19;
    v35 = v48;
    v36 = v49;
    v37 = v44;
    v47 = static Text.+ infix(_:_:)();
    v45 = v38;
    LOBYTE(v25) = v39;
    v41 = v40;
    sub_10000B6F4(v36, v35, v34 & 1);

    sub_10000B6F4(v37, v31, v33 & 1);

    v42 = v47;
    v17 = v45;
    v19 = v25;
    v21 = v41;
  }

  v43 = v50;
  *v50 = v42;
  v43[1] = v17;
  *(v43 + 16) = v19 & 1;
  v43[3] = v21;
  return result;
}

void sub_10003A638(void *a1, double a2, double a3)
{
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v6, v4, "readSize captionHeight: %f", v7, 0xCu);
    }

    sub_10003A6FC(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10003A6FC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AXLTTextScrollView(0);
  __chkstk_darwin(v4);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v60 = &v58 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v18 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v57 = v18;
    swift_once();
    v18 = v57;
  }

  v19 = [v18 preferredFontForTextStyle:textFontStyle];
  [v19 lineHeight];
  v21 = v20;

  v22 = AXLTCaption.appID.getter();
  v24 = v23;
  if (v22 == placeholderID.getter() && v24 == v25)
  {

LABEL_9:
    v27 = v1[2];
    v28 = v1[3];
    *&v63 = v1[1];
    *(&v63 + 1) = v27;
    v64 = v28;
    v62 = v21;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    goto LABEL_33;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_9;
  }

  v29 = a1 / v21;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = static os_log_type_t.debug.getter();
  v31 = AXLogLiveTranscription();
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = v31;
  v59 = v29;
  if (os_log_type_enabled(v31, v30))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v32, v30, "linesCount: %ld", v33, 0xCu);
  }

  sub_10000B0CC(v17);
  v26 = v61;
  (*(v61 + 56))(v17, 0, 1, v9);
  sub_100006098(v17, v14, &qword_100062AE8, &qword_1000480E0);
  if ((*(v26 + 48))(v14, 1, v9) != 1)
  {
    (*(v26 + 32))(v11, v14, v9);
    if (qword_1000626F8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  sub_100003CE8(v17, &qword_100062AE8, &qword_1000480E0);
  sub_100003CE8(v14, &qword_100062AE8, &qword_1000480E0);
LABEL_20:
  for (i = textLinesNumberMax.getter(); ; i = textLinesAccessibilityNumberMax.getter())
  {
    v36 = i;
    v9 = v2[4];
    v11 = v2[5];
    v37 = v2[6];
    *&v63 = v9;
    *(&v63 + 1) = v11;
    v64 = v37;
    v17 = sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.wrappedValue.getter();
    v38 = v62;
    v39 = v59;
    if (*&v62 >= v59)
    {
      v38 = *&v59;
    }

    *&v63 = v9;
    *(&v63 + 1) = v11;
    v64 = v37;
    v62 = v38;

    Binding.wrappedValue.setter();
    v40 = __OFSUB__(v39, v36);
    v26 = v39 - v36;
    if (v40)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    *&v63 = v9;
    *(&v63 + 1) = v11;
    v64 = v37;
    Binding.wrappedValue.getter();
    v41 = v62;
    if (*&v62 <= v26)
    {
      v41 = *&v26;
    }

    *&v63 = v9;
    *(&v63 + 1) = v11;
    v64 = v37;
    v62 = v41;
    Binding.wrappedValue.setter();

    v26 = static os_log_type_t.debug.getter();
    v42 = AXLogLiveTranscription();
    if (!v42)
    {
      goto LABEL_45;
    }

    v43 = v42;
    v44 = v60;
    sub_10003BF0C(v2, v60);
    if (os_log_type_enabled(v43, v26))
    {
      v45 = swift_slowAlloc();
      LODWORD(v61) = v26;
      v26 = v45;
      *v45 = 134217984;
      v46 = *(v44 + 48);
      v63 = *(v44 + 32);
      v64 = v46;
      Binding.wrappedValue.getter();
      v47 = v62;
      sub_10003BF70(v44);
      *(v26 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v43, v61, "lineNumberDisplay: %ld", v26, 0xCu);
    }

    else
    {
      sub_10003BF70(v44);
    }

    *&v63 = v9;
    *(&v63 + 1) = v11;
    v64 = v37;
    Binding.wrappedValue.getter();
    if (!__OFSUB__(v59, *&v62))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_19:
    sub_1000064FC(v9, accessibilityLayoutTextSize);
    sub_10003D7E8(&qword_100062AF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v34 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v26 + 8))(v11, v9);
    sub_100003CE8(v17, &qword_100062AE8, &qword_1000480E0);
    if (v34)
    {
      goto LABEL_20;
    }
  }

  v48 = v2[2];
  v49 = v2[3];
  *&v63 = v2[1];
  *(&v63 + 1) = v48;
  v64 = v49;
  v62 = v21 * (v59 - *&v62);
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
LABEL_33:
  Binding.wrappedValue.setter();
  v50 = static os_log_type_t.debug.getter();
  v51 = AXLogLiveTranscription();
  if (v51)
  {
    v52 = v51;
    sub_10003BF0C(v2, v6);
    if (os_log_type_enabled(v52, v50))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      v54 = v6[2];
      v55 = v6[3];
      *&v63 = v6[1];
      *(&v63 + 1) = v54;
      v64 = v55;
      sub_100003968(&qword_1000634D8, &qword_100048BA8);
      Binding.wrappedValue.getter();
      v56 = v62;
      sub_10003BF70(v6);
      *(v53 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v52, v50, "textHeight: %f", v53, 0xCu);
    }

    else
    {

      sub_10003BF70(v6);
    }

    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

NSObject *sub_10003AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AXLTTextScrollView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v51 - v8);
  v10 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v12 = result;
    sub_10003BF0C(a3, v9);
    v13 = os_log_type_enabled(v12, v10);
    v53 = v6;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v57 = v15;
      *v14 = 136315138;
      v16 = *v9;
      v17 = [v16 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v52) = v10;
      v19 = a3;
      v20 = v18;
      v22 = v21;

      sub_10003BF70(v9);
      v23 = sub_100031EB4(v20, v22, &v57);

      *(v14 + 4) = v23;
      a3 = v19;
      _os_log_impl(&_mh_execute_header, v12, v52, "onChange caption: %s", v14, 0xCu);
      sub_100018190(v15);
    }

    else
    {

      sub_10003BF70(v9);
    }

    v24 = dispatch thunk of AXLTCaption.text.getter();
    v26 = v25;
    v27 = AXLTCaption.appID.getter();
    v29 = v28;
    if (v27 == placeholderID.getter() && v29 == v30)
    {
      goto LABEL_7;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_9;
    }

    v32 = dispatch thunk of AXLTCaption.time.getter();
    v34 = v33;
    v35 = *(a3 + 64);
    v37 = *(a3 + 72);
    v36 = *(a3 + 80);
    v52 = *(a3 + 56);
    *&v57 = v52;
    *(&v57 + 1) = v35;
    v58 = v37;
    v59 = v36;
    v38 = sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.wrappedValue.getter();
    if (v55 == v32 && v56 == v34)
    {
LABEL_7:

LABEL_9:
      sub_10003B3F4(v24, v26);
    }

    v51 = v38;
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {

      goto LABEL_9;
    }

    v40 = *(a3 + 48);
    v57 = *(a3 + 32);
    v58 = v40;
    v55 = 0;
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.wrappedValue.setter();
    *&v57 = v52;
    *(&v57 + 1) = v35;
    v58 = v37;
    v59 = v36;
    v55 = v32;
    v56 = v34;

    Binding.wrappedValue.setter();
    v41 = static os_log_type_t.debug.getter();
    result = AXLogLiveTranscription();
    if (result)
    {
      v42 = result;

      v43 = v53;
      sub_10003BF0C(a3, v53);
      if (os_log_type_enabled(v42, v41))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136315138;
        v46 = *(v43 + 72);
        v47 = *(v43 + 80);
        v57 = *(v43 + 56);
        v58 = v46;
        v59 = v47;
        Binding.wrappedValue.getter();
        v48 = v55;
        v49 = v56;
        sub_10003BF70(v43);
        v50 = sub_100031EB4(v48, v49, &v54);

        *(v44 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v42, v41, "onChange caption, lineNumberDisplay = 0, current time: %s", v44, 0xCu);
        sub_100018190(v45);
      }

      else
      {

        sub_10003BF70(v43);
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10003B3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = type metadata accessor for AXLTTextScrollView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = v2 + *(v8 + 52);
  v11 = *(v9 + 8);
  aBlock = *v9;
  v10 = aBlock;
  v23 = v11;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v12 = v28;
  [v28 invalidate];

  aBlock = v10;
  v23 = v11;
  v28 = 0;
  State.wrappedValue.setter();
  v13 = objc_opt_self();
  textOnScreenTimeInterval.getter();
  v15 = v14;
  sub_10003BF0C(v3, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10003CAA8(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v21;
  v18[1] = a2;
  v26 = sub_10003D70C;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100032E40;
  v25 = &unk_10005F2D0;
  v19 = _Block_copy(&aBlock);

  v20 = [v13 scheduledTimerWithTimeInterval:1 repeats:v19 block:v15];
  _Block_release(v19);
  aBlock = v10;
  v23 = v11;
  v28 = v20;
  State.wrappedValue.setter();
}

void sub_10003B64C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v10);
      sub_10000B374(v9);

      if (swift_dynamicCast())
      {
        v7 = *(a2 + 96);
        v9[0] = *(a2 + 88);
        v9[1] = v7;
        v10[0] = v8;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v9);
    }
  }
}

void sub_10003B74C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v10);
      sub_10000B374(v9);

      if (swift_dynamicCast())
      {
        v7 = *(a2 + 112);
        v9[0] = *(a2 + 104);
        v9[1] = v7;
        v10[0] = v8;
        sub_100003968(&qword_100062D20, &qword_100048158);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v9);
    }
  }
}

void sub_10003B84C(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AXLTTextScrollView(0);
  v9 = __chkstk_darwin(v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isValid])
  {
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v12 = objc_opt_self();
    if (qword_100062780 != -1)
    {
      v43 = v12;
      swift_once();
      v12 = v43;
    }

    v13 = [v12 preferredFontForTextStyle:textFontStyle];
    [v13 lineHeight];
    v15 = v14;

    v16 = a2[2];
    v17 = a2[3];
    *&v49 = a2[1];
    *(&v49 + 1) = v16;
    v50 = v17;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.wrappedValue.getter();
    v18 = v45 / v15;
    if (COERCE__INT64(fabs(v45 / v15)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = v18;
        v51 = v18;
        v20 = v18 - 1;
        if (v18 < 1)
        {
LABEL_20:
          if (!v19)
          {
            v34 = (a2 + *(v8 + 44));
            v36 = v34[1];
            *&v49 = *v34;
            v35 = v49;
            *(&v49 + 1) = v36;
            sub_100003968(&qword_100062FE8, &qword_100048BA0);
            State.wrappedValue.getter();
            v37 = v45;
            [*&v45 invalidate];

            *&v49 = v35;
            *(&v49 + 1) = v36;
            v45 = 0.0;
            State.wrappedValue.setter();
          }

          return;
        }

        if (placeholderPausedText.getter() == a3 && v21 == a4)
        {
          goto LABEL_12;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_14;
        }

        if (placeholderText.getter() == a3 && v38 == a4)
        {
LABEL_12:

LABEL_14:
          v51 = 1;
          v23 = (a2 + *(v8 + 44));
          v25 = v23[1];
          *&v49 = *v23;
          v24 = v49;
          *(&v49 + 1) = v25;
          sub_100003968(&qword_100062FE8, &qword_100048BA0);
          State.wrappedValue.getter();
          v26 = v45;
          [*&v45 invalidate];

          *&v49 = v24;
          *(&v49 + 1) = v25;
          v45 = 0.0;
          State.wrappedValue.setter();
          goto LABEL_15;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_14;
        }

        v40 = *(a2 + 4);
        v41 = a2[5];
        v42 = a2[6];
        *&v49 = v40;
        *(&v49 + 1) = v41;
        v50 = v42;

        sub_100003968(&qword_1000637D0, &qword_100048F20);
        Binding.wrappedValue.getter();
        if (!__OFADD__(v48, 1))
        {
          v45 = v40;
          v46 = v41;
          v47 = v42;
          v44[1] = v48 + 1;
          Binding.wrappedValue.setter();

          v51 = v20;
LABEL_15:
          v27 = static os_log_type_t.debug.getter();
          v28 = AXLogLiveTranscription();
          if (v28)
          {
            v29 = v28;
            sub_10003BF0C(a2, v11);
            if (os_log_type_enabled(v29, v27))
            {
              v30 = swift_slowAlloc();
              *v30 = 134217984;
              v31 = *(v11 + 6);
              v49 = *(v11 + 2);
              v50 = v31;
              sub_100003968(&qword_1000637D0, &qword_100048F20);
              Binding.wrappedValue.getter();
              v32 = v45;
              sub_10003BF70(v11);
              *(v30 + 4) = v32;
              _os_log_impl(&_mh_execute_header, v29, v27, "Moving Timer fired, lineNumberDisplay: %ld", v30, 0xCu);
            }

            else
            {
              sub_10003BF70(v11);
            }

            __chkstk_darwin(v33);
            v44[-4] = a2;
            *&v44[-3] = v15;
            v44[-2] = &v51;
            static Animation.default.getter();
            withAnimation<A>(_:_:)();

            v19 = v51;
            goto LABEL_20;
          }

LABEL_32:
          __break(1u);
          return;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_10003BE40(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_10003BF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BF70(uint64_t a1)
{
  v2 = type metadata accessor for AXLTTextScrollView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003BFCC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10003BF0C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10003CAA8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10003CB0C;
  a2[1] = v7;
  return result;
}

uint64_t sub_10003C0B8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003C0EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10003C180()
{
  result = qword_100063DB0;
  if (!qword_100063DB0)
  {
    sub_100003AC0(&qword_100063DA8, &unk_1000496C0);
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063DB0);
  }

  return result;
}

uint64_t sub_10003C244()
{

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_10003C2DC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003C398(a1, v4);
}

unint64_t sub_10003C320(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003C510(a1, a2, v4);
}

unint64_t sub_10003C398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003C460(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000B374(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003C4BC()
{
  result = qword_100063DC8;
  if (!qword_100063DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063DC8);
  }

  return result;
}

unint64_t sub_10003C510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10003C5DC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10003C6AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003C75C(uint64_t a1)
{
  type metadata accessor for AXLTCaption();
  if (v1 <= 0x3F)
  {
    sub_10003C924(319, &qword_1000633C0, &type metadata for CGFloat, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10003C924(319, &qword_100063E38, &type metadata for Int, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_10003C924(319, &unk_100063E40, &type metadata for String, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_10003C924(319, &qword_100062BD8, &type metadata for Color, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10003C924(319, &qword_100062BE0, &type metadata for Font, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10003C974(319);
              if (v7 <= 0x3F)
              {
                sub_10001F288(319);
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

void sub_10003C924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10003C974(uint64_t a1)
{
  if (!qword_100062BD0)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100062BD0);
    }
  }
}

unint64_t sub_10003C9D0()
{
  result = qword_100063E88;
  if (!qword_100063E88)
  {
    sub_100003AC0(&qword_100063E90, "ک");
    sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8, &protocol conformance descriptor for HStack<A>);
    sub_1000394B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E88);
  }

  return result;
}

uint64_t sub_10003CAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CB0C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AXLTTextScrollView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_100039668(v5, a2);
}

unint64_t sub_10003CB8C()
{
  result = qword_100063EC8;
  if (!qword_100063EC8)
  {
    sub_100003AC0(&qword_100063E98, &qword_100049760);
    sub_10003CC44();
    sub_100003E3C(&qword_100063640, &qword_100063648, &qword_100048DC8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063EC8);
  }

  return result;
}

unint64_t sub_10003CC44()
{
  result = qword_100063ED0;
  if (!qword_100063ED0)
  {
    sub_100003AC0(&qword_100063EC0, &qword_100049788);
    sub_100003E3C(&qword_100063ED8, &qword_100063EE0, &unk_100049790, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063ED0);
  }

  return result;
}

uint64_t sub_10003CD2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXLTTextScrollView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003CDB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

void sub_10003CE08(double a1, double a2)
{
  v5 = *(type metadata accessor for AXLTTextScrollView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_10003A638(v6, a1, a2);
}

uint64_t sub_10003CE80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003CEC0()
{
  v1 = type metadata accessor for AXLTTextScrollView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

NSObject *sub_10003D058(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXLTTextScrollView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003AF54(a1, a2, v6);
}

unint64_t sub_10003D0D8()
{
  result = qword_100063F08;
  if (!qword_100063F08)
  {
    sub_100003AC0(&qword_100063F00, &qword_1000497E8);
    sub_10003D190();
    sub_100003E3C(&qword_1000636E0, &qword_1000636E8, &qword_100048E18, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F08);
  }

  return result;
}

unint64_t sub_10003D190()
{
  result = qword_100063F10;
  if (!qword_100063F10)
  {
    sub_100003AC0(&qword_100063EF8, &qword_1000497E0);
    sub_10003D248();
    sub_100003E3C(&qword_1000636D0, &qword_1000636D8, &qword_100048E10, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F10);
  }

  return result;
}

unint64_t sub_10003D248()
{
  result = qword_100063F18;
  if (!qword_100063F18)
  {
    sub_100003AC0(&qword_100063F20, &qword_1000497F0);
    sub_10003D2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F18);
  }

  return result;
}

unint64_t sub_10003D2D4()
{
  result = qword_100063F28;
  if (!qword_100063F28)
  {
    sub_100003AC0(&qword_100063F30, &qword_1000497F8);
    sub_10003D360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F28);
  }

  return result;
}

unint64_t sub_10003D360()
{
  result = qword_100063F38;
  if (!qword_100063F38)
  {
    sub_100003AC0(&qword_100063F40, &qword_100049800);
    sub_10003D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F38);
  }

  return result;
}

unint64_t sub_10003D3EC()
{
  result = qword_100063F48;
  if (!qword_100063F48)
  {
    sub_100003AC0(&qword_100063F50, &qword_100049808);
    sub_10003D4A4();
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F48);
  }

  return result;
}

unint64_t sub_10003D4A4()
{
  result = qword_100063F58;
  if (!qword_100063F58)
  {
    sub_100003AC0(&qword_100063F60, &qword_100049810);
    sub_100003E3C(&qword_100063F68, &qword_100063F70, &qword_100049818, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F58);
  }

  return result;
}

uint64_t sub_10003D55C()
{
  v1 = type metadata accessor for AXLTTextScrollView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_10003D70C(void *a1)
{
  v3 = *(type metadata accessor for AXLTTextScrollView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_10003B84C(a1, (v1 + v4), v6, v7);
}

uint64_t sub_10003D7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003D998()
{
  v1 = v0;
  v2 = type metadata accessor for RootView(0);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v24 - v6);
  v8 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v8];

  [v0 setClipsToBounds:1];
  [v0 makeKeyAndVisible];
  [v0 setOverrideUserInterfaceStyle:2];
  sub_10001560C(v7);
  sub_10003DE54(v7, v4);
  sub_10003DEB8();
  AnyView.init<A>(_:)();
  v9 = _makeUIHostingController(_:tracksContentSize:secure:)();

  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  sub_10003DF10();
  static Color.clear.getter();
  v13 = UIColor.init(_:)();
  [v12 setBackgroundColor:v13];

  [v1 setRootViewController:v10];
  v14 = 18;
  if (!_AXSLiveTranscriptionScreenshotHidingEnabled())
  {
    if (AXSSIsAppleInternalBuild())
    {
      v14 = 0;
    }

    else
    {
      v14 = 18;
    }
  }

  v15 = [v1 rootViewController];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 view];

  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = [v17 layer];

  [v18 setDisableUpdateMask:v14];
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSLiveTranscriptionScreenshotHidingDidChangeNotification)
  {
    v20 = v19;
    v21 = *&v1[OBJC_IVAR____TtC19LiveTranscriptionUI8LTWindow_screenshotsHidingChanged];
    v22 = kAXSLiveTranscriptionScreenshotHidingDidChangeNotification;
    CFNotificationCenterAddObserver(v20, v1, v21, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v23 = [objc_opt_self() defaultCenter];
    [v23 addObserver:v1 selector:"localeDidChangeWithNotification:" name:NSCurrentLocaleDidChangeNotification object:0];

    sub_10003DF5C(v7);
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10003DDFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LTWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003DE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003DEB8()
{
  result = qword_100063FB8;
  if (!qword_100063FB8)
  {
    type metadata accessor for RootView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063FB8);
  }

  return result;
}

unint64_t sub_10003DF10()
{
  result = qword_100063828;
  if (!qword_100063828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063828);
  }

  return result;
}

uint64_t sub_10003DF5C(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003DFB8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = 18;
  if (!_AXSLiveTranscriptionScreenshotHidingEnabled())
  {
    if (AXSSIsAppleInternalBuild())
    {
      v2 = 0;
    }

    else
    {
      v2 = 18;
    }
  }

  v3 = [v1 rootViewController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = [v5 layer];

  [v6 setDisableUpdateMask:v2];
}

void sub_10003E0D0(uint64_t *a1@<X8>)
{
  v3 = static Color.clear.getter();
  GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_10003E110(double a1)
{
  result = static Color.white.getter();
  microphoneColor = result;
  return result;
}

uint64_t *microphoneColor.unsafeMutableAddressor()
{
  if (qword_100062798 != -1)
  {
    swift_once();
  }

  return &microphoneColor;
}

uint64_t (*AudioHistogramConfig.levelBarMaxHeight.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarMaxHeight.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarMaxHeight.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarMinHeight.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarMinHeight.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarMinHeight.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarWidth.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarWidth.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarWidth.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarCount.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarCount.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarCount.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarKeys.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarKeys.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarKeys.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarSpacing.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarSpacing.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarSpacing.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.animationTimerDuration.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$animationTimerDuration.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$animationTimerDuration.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.minBarScale.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$minBarScale.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$minBarScale.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.maxBarScale.modify(uint64_t *a1))()
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
  return sub_10002A174;
}

uint64_t AudioHistogramConfig.$maxBarScale.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$maxBarScale.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.randomPower.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$randomPower.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$randomPower.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t sub_100040924(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.jitter.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$jitter.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$jitter.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

double sub_100040D4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_100040DB8@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100040E5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100040F10(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.magnitude.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$magnitude.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$magnitude.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t sub_10004132C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

void sub_100041398(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_10004143C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000414D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.levelBarColor.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarColor.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100064048, &qword_100049C80);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100064040, &qword_100049C78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarColor.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100064048, &qword_100049C80);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100064040, &qword_100049C78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t AudioHistogramConfig.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100041968(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1000419EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AudioHistogramConfig.histogram.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.histogram.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$histogram.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100064068, &qword_100049CE0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_100064060, &qword_100049CD8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$histogram.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100064068, &qword_100049CE0);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100064060, &qword_100049CD8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10002A51C;
}

void sub_100041E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void sub_100041FB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (__OFSUB__(*&v1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v1 * *&v1 + v1 * (*&v1 - 1);
  if (COERCE__INT64(fabs(v0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t AudioHistogramConfig.deinit()
{
  v1 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v2 = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth, v2);
  v4 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v5 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale, v2);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude, v2);
  v7 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  v8 = sub_100003968(&qword_100064040, &qword_100049C78);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v10 = sub_100003968(&qword_100064060, &qword_100049CD8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t AudioHistogramConfig.__deallocating_deinit()
{
  AudioHistogramConfig.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100042454()
{
  v1 = sub_100003968(&qword_100064060, &qword_100049CD8);
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = v34 - v2;
  v3 = sub_100003968(&qword_100064040, &qword_100049C78);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v34 - v4;
  v35 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v34 - v6;
  v8 = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - v10;
  v12 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v42 = 0x403C000000000000;
  Published.init(initialValue:)();
  v13 = *(v9 + 32);
  v13(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight;
  v42 = 0x4000000000000000;
  Published.init(initialValue:)();
  v13(v0 + v14, v11, v8);
  v15 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth;
  v42 = 0x4000000000000000;
  Published.init(initialValue:)();
  v13(v0 + v15, v11, v8);
  v16 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v42 = 16;
  Published.init(initialValue:)();
  v17 = *(v5 + 32);
  v18 = v35;
  v17(v0 + v16, v7, v35);
  v34[1] = v5 + 32;
  v19 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys;
  v42 = 10;
  Published.init(initialValue:)();
  v17(v0 + v19, v7, v18);
  v20 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing;
  v42 = 0x4000000000000000;
  Published.init(initialValue:)();
  v13(v0 + v20, v11, v8);
  v21 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration;
  v42 = 0x401C000000000000;
  Published.init(initialValue:)();
  v13(v0 + v21, v11, v8);
  v22 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale;
  v42 = 0x3FB999999999999ALL;
  Published.init(initialValue:)();
  v13(v0 + v22, v11, v8);
  v23 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale;
  v42 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  v13(v0 + v23, v11, v8);
  v24 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower;
  v42 = 80;
  Published.init(initialValue:)();
  v17(v0 + v24, v7, v18);
  v25 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter;
  v42 = 29;
  Published.init(initialValue:)();
  v17(v0 + v25, v7, v18);
  v26 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude;
  v42 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  v13(v0 + v26, v11, v8);
  v27 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  if (qword_100062798 != -1)
  {
    swift_once();
  }

  v42 = microphoneColor;

  v28 = v36;
  Published.init(initialValue:)();
  (*(v37 + 32))(v0 + v27, v28, v38);
  v29 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v30 + 16) = 16;
  v31 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v30 + 32) = v31;
  *(v30 + 48) = v31;
  *(v30 + 64) = v31;
  *(v30 + 80) = v31;
  *(v30 + 96) = v31;
  *(v30 + 112) = v31;
  *(v30 + 128) = v31;
  *(v30 + 144) = v31;
  v42 = v30;
  sub_100003968(&qword_100064050, &qword_100049C88);
  v32 = v39;
  Published.init(initialValue:)();
  (*(v40 + 32))(v0 + v29, v32, v41);
  return v0;
}

uint64_t sub_100042A84@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100042AC4()
{
  v0 = sub_100003968(&qword_100063018, &qword_1000486B0);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  sub_100045238();
  v3 = [objc_opt_self() mainRunLoop];
  v4 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = NSRunLoopCommonModes;
  v6 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100003CE8(v2, &qword_100063018, &qword_1000486B0);
  v8[1] = v6;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_100045284(&qword_1000644D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v7 = ConnectablePublisher.autoconnect()();

  qword_100063FC0 = v7;
}

void *sub_100042C80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = 1.0;
  if (v11 > 0.0)
  {
    sub_100003968(&qword_1000630B8, &qword_100048720);
    State.wrappedValue.getter();
    v0 = v10 / v11;
  }

  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v1 = *(v10 + 16);

  if (v1)
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v2[2] = v1;
    v3 = v2 + 2;
    bzero(v2 + 4, 8 * v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = &_swiftEmptyArrayStorage[2];
    v1 = _swiftEmptyArrayStorage[2];
    if (!v1)
    {
      return v2;
    }
  }

  v4 = 4;
  while (1)
  {
    v5 = v4 - 4;
    State.wrappedValue.getter();
    result = v10;
    if ((v4 - 4) >= *(v10 + 16))
    {
      break;
    }

    v7 = *(v10 + 8 * v4);

    State.wrappedValue.getter();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_14;
    }

    v8 = *(v10 + 8 * v4);

    State.wrappedValue.getter();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_15;
    }

    v9 = *(v10 + 8 * v4);

    if (v5 >= *v3)
    {
      goto LABEL_16;
    }

    *&v2[v4++] = v7 + v0 * (v8 - v9);
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_100042EAC()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v37 = v3;
  *v38 = v2;
  *&v36 = v2;
  *(&v36 + 1) = v3;
  sub_100006098(v38, &v34, &qword_100064050, &qword_100049C88);
  sub_100006098(&v37, &v34, &qword_1000644C0, &qword_100049F48);
  sub_100006098(v38, &v34, &qword_100064050, &qword_100049C88);
  sub_100006098(&v37, &v34, &qword_1000644C0, &qword_100049F48);
  sub_100006098(v38, &v34, &qword_100064050, &qword_100049C88);
  sub_100006098(&v37, &v34, &qword_1000644C0, &qword_100049F48);
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v4 = *(*&v34 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 == v36)
  {
    goto LABEL_13;
  }

  sub_100041E44();
  v31 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v36;
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (v36)
  {
    v7 = COERCE_DOUBLE(static Array._allocateBufferUninitialized(minimumCapacity:)());
    *(*&v7 + 16) = v6;
    v8 = (*&v7 + 32);
    if (v6 > 3)
    {
      v9 = v6 & 0x7FFFFFFFFFFFFFFCLL;
      v8 += v6 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = v31;
      v11 = vdupq_lane_s64(v31, 0);
      v12 = (*&v7 + 48);
      v13 = v6 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v11;
        *v12 = v11;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v6 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      v10 = v31;
    }

    v14 = v6 - v9;
    do
    {
      *v8++ = v10;
      --v14;
    }

    while (v14);
  }

  else
  {
    v7 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

LABEL_12:
  *&v36 = v2;
  *(&v36 + 1) = v3;
  v34 = v7;
  State.wrappedValue.setter();
LABEL_13:
  sub_100003CE8(v38, &qword_100064050, &qword_100049C88);
  sub_100003CE8(&v37, &qword_1000644C0, &qword_100049F48);
  *&v36 = v2;
  *(&v36 + 1) = v3;
  State.wrappedValue.getter();
  v36 = *(v1 + 16);
  State.wrappedValue.setter();
  v36 = *(v1 + 64);
  v34 = 0.0;
  sub_100003968(&qword_1000630B8, &qword_100048720);
  State.wrappedValue.setter();
  if (qword_100062790 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = static AXLTCaptionsProvider.shared;
    v16 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
    swift_beginAccess();
    v17 = *(v15 + v16);
    v34 = v2;
    v35 = v3;
    v33 = v17;

    State.wrappedValue.setter();
    sub_100003CE8(v38, &qword_100064050, &qword_100049C88);
    sub_100003CE8(&v37, &qword_1000644C0, &qword_100049F48);
    v34 = v2;
    v35 = v3;
    State.wrappedValue.getter();
    v18 = *(v33 + 16);
    if (!v18)
    {
      break;
    }

    v29 = *(v33 + 16);
    sub_100044B1C(0, v18, 0);
    v19 = 0;
    v30 = *(v33 + 16);
    while (v30 != v19)
    {
      if (v19 >= *(v33 + 16))
      {
        goto LABEL_26;
      }

      v20 = *(v33 + 8 * v19 + 32);
      v21 = v2;
      v34 = v2;
      v35 = v3;
      State.wrappedValue.getter();
      v22 = *(v32 + 16);

      v23 = sin(v19 / v22 * 3.14159265);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = v23 * (v24 - v34);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v20 * (v25 + v34) > 0.1)
      {
        v26 = v20 * (v25 + v34);
      }

      else
      {
        v26 = 0.1;
      }

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100044B1C((v27 > 1), v28 + 1, 1);
      }

      ++v19;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      *&_swiftEmptyArrayStorage[v28 + 4] = v26;
      v2 = v21;
      if (v29 == v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  v34 = v2;
  v35 = v3;
  State.wrappedValue.setter();
  sub_100003CE8(v38, &qword_100064050, &qword_100049C88);
  sub_100003CE8(&v37, &qword_1000644C0, &qword_100049F48);
}

uint64_t sub_1000434DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = v2[3];
  v8[3] = v2[2];
  v8[4] = v9;
  v8[5] = v2[4];
  v10 = v2[1];
  v8[1] = *v2;
  v8[2] = v10;
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  sub_100044D98(v2, v20);
  Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
  sub_100041FB0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (a1 + *(sub_100003968(&qword_1000644A0, &qword_100049F20) + 36));
  v12 = v22;
  *v11 = v21;
  v11[1] = v12;
  v11[2] = v23;
  if (qword_1000627A0 != -1)
  {
    swift_once();
  }

  v13 = qword_100063FC0;
  v14 = swift_allocObject();
  v15 = v2[3];
  *(v14 + 3) = v2[2];
  *(v14 + 4) = v15;
  *(v14 + 5) = v2[4];
  v16 = v2[1];
  *(v14 + 1) = *v2;
  *(v14 + 2) = v16;
  v17 = sub_100003968(&qword_1000644A8, &qword_100049F28);
  *(a1 + *(v17 + 52)) = v13;
  v18 = (a1 + *(v17 + 56));
  *v18 = sub_100045230;
  v18[1] = v14;
  sub_100044D98(v2, v20);
}

uint64_t sub_100043778(CGContext *a1, uint64_t a2, double a3, double a4)
{
  v17 = a1;
  v18 = type metadata accessor for CGPathFillRule();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v15 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Mutable = CGPathCreateMutable();
  v21 = *(a2 + 48);
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v7 = *(v20 + 16);

  if (v7)
  {
    v8 = 0;
    v21 = 0x3FF0000000000000uLL;
    v22 = 0;
    v23 = 0x3FF0000000000000;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v20 = *(a2 + 48);
      State.wrappedValue.getter();
      result = v19;
      if (v8 >= *(v19 + 16))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)();
      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v17;
    CGContextAddPath(v17, Mutable);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    GenericGray = Color.cgColor.getter();

    if (!GenericGray)
    {
      GenericGray = CGColorCreateGenericGray(1.0, 1.0);
    }

    CGContextSetFillColorWithColor(v10, GenericGray);

    CGContextSetLineWidth(v10, 0.0);
    v13 = v15;
    v12 = v16;
    v14 = v18;
    (*(v16 + 104))(v15, enum case for CGPathFillRule.winding(_:), v18);
    CGContextRef.fillPath(using:)();

    return (*(v12 + 8))(v13, v14);
  }

  return result;
}

void sub_100043B24(uint64_t a1, uint64_t a2)
{
  v8 = *(a2 + 64);
  *v6 = *(a2 + 64);
  v9 = *(&v8 + 1);
  sub_100006098(&v9, &v5, &qword_1000644B0, &unk_100049F30);
  sub_100003968(&qword_1000630B8, &qword_100048720);
  State.wrappedValue.getter();
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v8;
  State.wrappedValue.setter();
  sub_100003CE8(&v8, &qword_1000630B8, &qword_100048720);
  *v6 = v8;
  State.wrappedValue.getter();
  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6[0] <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6[0] >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v3 >= v6[0])
  {
    sub_100042EAC();
  }

  v4 = sub_100042C80();
  *v6 = *(a2 + 48);
  *&v5 = v4;
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.setter();
}

uint64_t type metadata accessor for AudioHistogramConfig(uint64_t a1)
{
  result = qword_1000640B8;
  if (!qword_1000640B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043DBC()
{
  type metadata accessor for AudioHistogramConfig(0);
  v0 = swift_allocObject();
  sub_100042454();
  return v0;
}

uint64_t sub_100043E10(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AudioHistogramConfig(0);
  v8 = sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);

  return a4(a1, a2, a3 & 1, v7, v8);
}

__n128 AXLTAudioHistogramView.body.getter@<Q0>(uint64_t a4@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  StateObject.wrappedValue.getter();
  sub_100044C40(v7);
  v5 = v7[3];
  *(a4 + 32) = v7[2];
  *(a4 + 48) = v5;
  *(a4 + 64) = v7[4];
  result = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_100043F74@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  StateObject.wrappedValue.getter();
  sub_100044C40(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double AXLTAudioHistogramViewGenerator.height.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.height.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AXLTAudioHistogramViewGenerator.height.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_100044308;
}

uint64_t sub_100044308(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  return static Published.subscript.setter();
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AXLTAudioHistogramViewGenerator.histogram.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_1000446A0;
}

uint64_t sub_1000446A0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {

    static Published.subscript.setter();
  }

  else
  {

    return static Published.subscript.setter();
  }
}

id AXLTAudioHistogramViewGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLTAudioHistogramViewGenerator.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  type metadata accessor for AudioHistogramConfig(0);
  v3 = swift_allocObject();
  sub_100042454();
  *&v1[v2] = v3;

  sub_100044C40(v9);
  v4 = &v1[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v5 = v9[3];
  *(v4 + 2) = v9[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = v9[4];
  v6 = v9[1];
  *v4 = v9[0];
  *(v4 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v8, "init");
}

UIViewController __swiftcall AXLTAudioHistogramViewGenerator.viewController()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v2 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v9 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 32);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v11 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v4 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v8[1] = v4;
  v7[7] = v9;
  v7[8] = v3;
  v7[9] = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v7[5] = v8[0];
  v7[6] = v1;
  v5 = objc_allocWithZone(sub_100003968(&qword_100064088, &qword_100049CE8));
  sub_100044D98(v8, v7);
  return UIHostingController.init(rootView:)();
}

id AXLTAudioHistogramViewGenerator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100044B1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100044B3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100044B3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_1000629D8, &unk_100047EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100044C40@<X0>(uint64_t *a2@<X8>)
{
  sub_100003968(&qword_100064050, &qword_100049C88);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for AudioHistogramConfig(0);
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v5;
  a2[7] = v6;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

void sub_100044DF4(uint64_t a1)
{
  sub_100044F78(319, &qword_1000640C8, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_100044F78(319, &qword_100063A58, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_100044F78(319, &qword_1000640D0, &type metadata for Color);
      if (v3 <= 0x3F)
      {
        sub_100044FC4(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100044F78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100044FC4(uint64_t a1)
{
  if (!qword_1000640D8)
  {
    sub_100003AC0(&qword_100064050, &qword_100049C88);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000640D8);
    }
  }
}

__n128 sub_100045034(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100045048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100045090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000450E8()
{
  result = qword_100064498;
  if (!qword_100064498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064498);
  }

  return result;
}

uint64_t sub_1000451C0()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_100045238()
{
  result = qword_1000644C8;
  if (!qword_1000644C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000644C8);
  }

  return result;
}

uint64_t sub_100045284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000452F0()
{
  result = qword_1000644D8;
  if (!qword_1000644D8)
  {
    sub_100003AC0(&qword_1000644A8, &qword_100049F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000644D8);
  }

  return result;
}

void sub_100045398()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_1000453BC();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

CGSize CGSizeFromString(NSString *string)
{
  v3 = _CGSizeFromString(string);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}