uint64_t sub_10011B4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v97 = a4;
  *&v96 = a3;
  v93 = a2;
  v89 = sub_1000024C4(&qword_100228408, &qword_1001BED58);
  __chkstk_darwin(v89);
  v85 = &v75 - v7;
  v95 = sub_1000024C4(&qword_100228410, &qword_1001BED60);
  __chkstk_darwin(v95);
  v9 = &v75 - v8;
  v91 = sub_1000024C4(&qword_100228418, &qword_1001BED68);
  __chkstk_darwin(v91);
  v90 = &v75 - v10;
  v94 = sub_1000024C4(&qword_100228358, &qword_1001BED00);
  __chkstk_darwin(v94);
  v92 = &v75 - v11;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000024C4(&qword_100228368, &qword_1001BED08);
  __chkstk_darwin(v88);
  v17 = &v75 - v16;
  v18 = type metadata accessor for AsyncImagePhase();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v19 + 96))(v21, v18);
    v83 = *v21;
    LODWORD(v85) = enum case for Image.ResizingMode.stretch(_:);
    v84 = *(v13 + 104);
    v84(v15);
    v23 = Image.resizable(capInsets:resizingMode:)();
    v24 = *(v13 + 8);
    v77 = v13 + 8;
    v82 = v24;
    v24(v15, v12);
    *v104 = v23;
    *&v104[16] = 257;
    static Axis.Set.horizontal.getter();
    v87 = a5;
    static Alignment.center.getter();
    v86 = v9;
    v81 = sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    v80 = sub_100069870();
    View.containerRelativeFrame(_:alignment:)();

    v79 = type metadata accessor for TourPhotosView(0, v96, v97, v25);
    sub_10011988C(v79, v29, v26, v27, v28);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v78 = sub_1000024C4(&qword_1002283C8, &qword_1001BED38);
    v30 = &v17[*(v78 + 36)];
    v31 = v102;
    *v30 = v101;
    *(v30 + 1) = v31;
    *(v30 + 2) = v103;
    v32 = sub_1000024C4(&qword_1002283B8, &qword_1001BED30);
    *&v17[*(v32 + 36)] = 0;
    v33 = static Alignment.center.getter();
    v35 = v34;
    sub_10011D300(&static Color.black.getter, &static Color.clear.getter, v104);
    v36 = *v104;
    v76 = *&v104[8];
    v75 = *&v104[24];
    v37 = &v17[*(sub_1000024C4(&qword_1002283A8, &qword_1001BED28) + 36)];
    *v37 = v33;
    *(v37 + 1) = v35;
    *(v37 + 2) = v36;
    *(v37 + 40) = v75;
    *(v37 + 24) = v76;
    (v84)(v15, v85, v12);
    v38 = Image.resizable(capInsets:resizingMode:)();
    v82(v15, v12);
    *v104 = v38;
    *&v104[16] = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v39 = &v17[*(sub_1000024C4(&qword_100228398, &qword_1001BED20) + 36)];
    View.containerRelativeFrame(_:alignment:)();

    sub_10011988C(v79, v43, v40, v41, v42);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = &v39[*(v78 + 36)];
    v45 = *&v104[16];
    *v44 = *v104;
    *(v44 + 1) = v45;
    *(v44 + 2) = *&v104[32];
    *&v39[*(v32 + 36)] = 0;
    v46 = &v39[*(sub_1000024C4(&qword_100228420, &qword_1001BED70) + 36)];
    *v46 = 0x4049000000000000;
    v46[8] = 1;
    *&v39[*(sub_1000024C4(&qword_100228428, &qword_1001BED78) + 36)] = 0;
    v47 = static Alignment.center.getter();
    v49 = v48;
    v50 = &v39[*(sub_1000024C4(&qword_1002283E8, &qword_1001BED48) + 36)];
    *v50 = v47;
    v50[1] = v49;
    v51 = static Alignment.center.getter();
    v53 = v52;
    v54 = &v17[*(sub_1000024C4(&qword_100228388, &qword_1001BED18) + 36)];
    sub_10011C104(v96, v97, v54);
    v55 = (v54 + *(sub_1000024C4(&qword_1002283F8, &qword_1001BED50) + 36));
    *v55 = v51;
    v55[1] = v53;
    v56 = static Alignment.center.getter();
    v58 = v57;
    sub_10011D3C4(&v98);
    v59 = v98;
    v96 = v100;
    v97 = v99;
    v60 = &v17[*(sub_1000024C4(&qword_100228378, &qword_1001BED10) + 36)];
    *v60 = v59;
    v61 = v97;
    *(v60 + 24) = v96;
    *(v60 + 8) = v61;
    *(v60 + 5) = v56;
    *(v60 + 6) = v58;
    v17[*(v88 + 36)] = 1;
    v62 = &qword_100228368;
    v63 = &qword_1001BED08;
    sub_10000BEB8(v17, v90, &qword_100228368, &qword_1001BED08);
    swift_storeEnumTagMultiPayload();
    sub_10011F210();
    sub_10011F708();
    v64 = v92;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v64, v86, &qword_100228358, &qword_1001BED00);
    swift_storeEnumTagMultiPayload();
    sub_10011F184();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v64, &qword_100228358, &qword_1001BED00);
    v65 = v17;
    return sub_1000050C4(v65, v62, v63);
  }

  if (v22 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v19 + 8))(v21, v18);
LABEL_6:
    v86 = v9;
    v87 = a5;
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    *v104 = qword_1002390C0;
    *&v104[8] = 256;

    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_1000024C4(&qword_1002282F0, &qword_1001BEC90);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    v66 = v85;
    View.containerRelativeFrame(_:alignment:)();

    v67 = static Alignment.center.getter();
    v69 = v68;
    sub_10011D3C4(v104);
    v70 = *&v104[8];
    v71 = *&v104[24];
    v72 = v66 + *(v89 + 36);
    *v72 = *v104;
    *(v72 + 8) = v70;
    *(v72 + 24) = v71;
    *(v72 + 40) = v67;
    *(v72 + 48) = v69;
    v62 = &qword_100228408;
    v63 = &qword_1001BED58;
    sub_10000BEB8(v66, v90, &qword_100228408, &qword_1001BED58);
    swift_storeEnumTagMultiPayload();
    sub_10011F210();
    sub_10011F708();
    v73 = v92;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v73, v86, &qword_100228358, &qword_1001BED00);
    swift_storeEnumTagMultiPayload();
    sub_10011F184();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v73, &qword_100228358, &qword_1001BED00);
    v65 = v66;
    return sub_1000050C4(v65, v62, v63);
  }

  if (v22 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_10011F184();
  _ConditionalContent<>.init(storage:)();
  return (*(v19 + 8))(v21, v18);
}

__n128 sub_10011C104@<Q0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v11 = Image.resizable(capInsets:resizingMode:)();
  (*(v8 + 8))(v10, v7);
  v32 = v11;
  LOWORD(v33) = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
  sub_100069870();
  View.containerRelativeFrame(_:alignment:)();

  v13 = type metadata accessor for TourPhotosView(0, a2, a3, v12);
  sub_10011988C(v13, v17, v14, v15, v16);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (a4 + *(sub_1000024C4(&qword_1002283C8, &qword_1001BED38) + 36));
  v19 = v33;
  *v18 = v32;
  v18[1] = v19;
  v18[2] = v34;
  *(a4 + *(sub_1000024C4(&qword_1002283B8, &qword_1001BED30) + 36)) = 0;
  *(a4 + *(sub_1000024C4(&qword_100228430, &qword_1001BED80) + 36)) = 0x3FF0000000000000;
  v20 = a4 + *(sub_1000024C4(&qword_100228438, &qword_1001BED88) + 36);
  *v20 = 0x4038000000000000;
  *(v20 + 8) = 1;
  *(a4 + *(sub_1000024C4(&qword_100228440, &qword_1001BED90) + 36)) = 0;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_10011D300(&static Color.clear.getter, &static Color.black.getter, &v29);
  v24 = v29;
  v27 = v31;
  v28 = v30;
  v25 = a4 + *(sub_1000024C4(&qword_100228448, &qword_1001BED98) + 36);
  *v25 = v21;
  *(v25 + 8) = v23;
  *(v25 + 16) = v24;
  result = v28;
  *(v25 + 40) = v27;
  *(v25 + 24) = result;
  return result;
}

uint64_t sub_10011C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v13 = type metadata accessor for TourPhotosView(0, a2, a3, v12);
  v18 = *(sub_10011988C(v13, v17, v14, v15, v16) + 32);

  v24[1] = v18;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v19 = *(a2 - 8);
  if ((*(v19 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  else
  {
    (*(a3 + 16))(a2, a3);
    (*(v19 + 8))(v8, a2);
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  }

  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  sub_1000024C4(&qword_100228270, &qword_1001BEC48);
  sub_10011E978();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10011C760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a2;
  v47 = a3;
  v55 = a4;
  v50 = sub_1000024C4(&qword_100228300, &qword_1001BEC98);
  v46[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v46 - v5;
  v54 = sub_1000024C4(&qword_100228308, &qword_1001BECA0);
  __chkstk_darwin(v54);
  v52 = v46 - v7;
  v48 = sub_1000024C4(&qword_100228310, &qword_1001BECA8);
  __chkstk_darwin(v48);
  v51 = v46 - v8;
  v53 = sub_1000024C4(&qword_100228288, &qword_1001BEC50);
  __chkstk_darwin(v53);
  v49 = v46 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_100228298, &qword_1001BEC58);
  __chkstk_darwin(v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for AsyncImagePhase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v46[0] = v22;
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v56 = v23;
    *&v57 = 0;
    WORD4(v57) = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    sub_100069870();
    View.containerRelativeFrame(_:alignment:)();

    v24 = &v16[*(sub_1000024C4(&qword_1002282C8, &unk_1001BEC70) + 36)];
    *v24 = 0x4059000000000000;
    v24[8] = 1;
    *&v16[*(sub_1000024C4(&qword_1002282B8, &qword_1001BEC68) + 36)] = 0;
    v25 = static Alignment.center.getter();
    v27 = v26;
    v28 = &v16[*(sub_1000024C4(&qword_1002282A8, &qword_1001BEC60) + 36)];
    sub_10011D060(v28);
    v29 = (v28 + *(sub_1000024C4(&qword_1002282D8, &qword_1001BEC80) + 36));
    *v29 = v25;
    v29[1] = v27;
    v30 = static Alignment.center.getter();
    v32 = v31;
    sub_10011D3C4(&v56);
    v33 = v57;
    v34 = v58;
    v35 = &v16[*(v14 + 36)];
    *v35 = v56;
    *(v35 + 8) = v33;
    *(v35 + 24) = v34;
    *(v35 + 5) = v30;
    *(v35 + 6) = v32;
    sub_10000BEB8(v16, v51, &qword_100228298, &qword_1001BEC58);
    swift_storeEnumTagMultiPayload();
    sub_10011EB08();
    v36 = sub_10000460C(&qword_1002282F0, &qword_1001BEC90);
    v37 = sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    v56 = v36;
    *&v57 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v49;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v38, v52, &qword_100228288, &qword_1001BEC50);
    swift_storeEnumTagMultiPayload();
    sub_10011EA04();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v38, &qword_100228288, &qword_1001BEC50);
    return sub_1000050C4(v16, &qword_100228298, &qword_1001BEC58);
  }

  v47 = v14;
  v40 = v51;
  if (v21 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 != enum case for AsyncImagePhase.empty(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_10011EA04();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v17);
  }

  if (qword_100220BA0 != -1)
  {
    swift_once();
  }

  v56 = qword_1002390C0;
  LOWORD(v57) = 256;

  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v41 = sub_1000024C4(&qword_1002282F0, &qword_1001BEC90);
  v42 = sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
  View.containerRelativeFrame(_:alignment:)();

  v43 = v46[0];
  v44 = v50;
  (*(v46[0] + 16))(v40, v6, v50);
  swift_storeEnumTagMultiPayload();
  sub_10011EB08();
  v56 = v41;
  *&v57 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v49;
  _ConditionalContent<>.init(storage:)();
  sub_10000BEB8(v45, v52, &qword_100228288, &qword_1001BEC50);
  swift_storeEnumTagMultiPayload();
  sub_10011EA04();
  _ConditionalContent<>.init(storage:)();
  sub_1000050C4(v45, &qword_100228288, &qword_1001BEC50);
  return (*(v43 + 8))(v6, v44);
}

__n128 sub_10011D060@<Q0>(uint64_t a4@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v9 = Image.resizable(capInsets:resizingMode:)();
  (*(v6 + 8))(v8, v5);
  v19 = v9;
  v20.n128_u64[0] = 0;
  v20.n128_u16[4] = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
  sub_100069870();
  View.containerRelativeFrame(_:alignment:)();

  *(a4 + *(sub_1000024C4(&qword_100228318, &qword_1001BECB0) + 36)) = 0;
  *(a4 + *(sub_1000024C4(&qword_100228320, &qword_1001BECB8) + 36)) = 0x3FF0000000000000;
  v10 = a4 + *(sub_1000024C4(&qword_100228328, &qword_1001BECC0) + 36);
  *v10 = 0x4038000000000000;
  *(v10 + 8) = 1;
  *(a4 + *(sub_1000024C4(&qword_100228330, &qword_1001BECC8) + 36)) = 0;
  v11 = static Alignment.center.getter();
  v13 = v12;
  sub_10011D300(&static Color.clear.getter, &static Color.black.getter, &v19);
  v14 = v19;
  v17 = v21;
  v18 = v20;
  v15 = a4 + *(sub_1000024C4(&qword_100228338, &qword_1001BECD0) + 36);
  *v15 = v11;
  *(v15 + 8) = v13;
  *(v15 + 16) = v14;
  result = v18;
  *(v15 + 40) = v17;
  *(v15 + 24) = result;
  return result;
}

double sub_10011D300@<D0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001B3B50;
  *(v8 + 32) = a1();
  *(v8 + 40) = a2();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v10;
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  return result;
}

double sub_10011D3C4@<D0>(uint64_t a1@<X8>)
{
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001B3B50;
  *(v2 + 32) = static Color.clear.getter();
  static Color.black.getter();
  v3 = Color.opacity(_:)();

  *(v2 + 40) = v3;
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

__n128 sub_10011D484@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = static HorizontalAlignment.center.getter();
  LOBYTE(v46[0]) = 0;
  sub_10011D7D4(a2, a3, v7, &v49);
  v67 = v55;
  v68 = v56;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v61 = v49;
  v62 = v50;
  v70[6] = v55;
  v70[7] = v56;
  v70[2] = v51;
  v70[3] = v52;
  v70[4] = v53;
  v70[5] = v54;
  v69 = v57;
  v71 = v57;
  v70[0] = v49;
  v70[1] = v50;
  sub_10000BEB8(&v61, v48, &qword_100228268, &qword_1001BEC40);
  sub_1000050C4(v70, &qword_100228268, &qword_1001BEC40);
  *&v58[87] = v66;
  *&v58[103] = v67;
  *&v58[119] = v68;
  *&v58[23] = v62;
  *&v58[39] = v63;
  *&v58[55] = v64;
  *&v58[71] = v65;
  v58[135] = v69;
  *&v58[7] = v61;
  v8 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v49) = 0;
  v17 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v59 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v60[55] = v52;
  *&v60[71] = v53;
  *&v60[87] = v54;
  *&v60[103] = v55;
  *&v60[7] = v49;
  *&v60[23] = v50;
  *&v60[39] = v51;
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = static Alignment.center.getter();
  v28 = v27;
  sub_10011DA68(a2, a3, v46);
  v29 = *&v58[64];
  *(a4 + 97) = *&v58[80];
  v30 = *&v58[112];
  *(a4 + 113) = *&v58[96];
  *(a4 + 129) = v30;
  v31 = *v58;
  *(a4 + 33) = *&v58[16];
  v32 = *&v58[48];
  *(a4 + 49) = *&v58[32];
  v33 = v47;
  *(a4 + 65) = v32;
  *(a4 + 81) = v29;
  result = v46[0];
  v35 = v46[1];
  *a4 = v45;
  *(a4 + 8) = 0x4032000000000000;
  *(a4 + 16) = 0;
  *(a4 + 145) = *&v58[128];
  *(a4 + 17) = v31;
  *(a4 + 160) = v8;
  *(a4 + 168) = v10;
  *(a4 + 176) = v12;
  *(a4 + 184) = v14;
  *(a4 + 192) = v16;
  *(a4 + 200) = 0;
  *(a4 + 208) = v17;
  *(a4 + 216) = v19;
  *(a4 + 224) = v21;
  *(a4 + 232) = v23;
  *(a4 + 240) = v25;
  *(a4 + 248) = 0;
  v36 = *&v60[64];
  v37 = *&v60[96];
  *(a4 + 329) = *&v60[80];
  *(a4 + 345) = v37;
  *(a4 + 360) = *&v60[111];
  v38 = *&v60[16];
  *(a4 + 249) = *v60;
  v39 = *&v60[32];
  v40 = *&v60[48];
  *(a4 + 265) = v38;
  *(a4 + 281) = v39;
  *(a4 + 297) = v40;
  *(a4 + 313) = v36;
  v41 = v48[1];
  *(a4 + 368) = v48[0];
  *(a4 + 384) = v41;
  v42 = v48[6];
  v43 = v48[5];
  *(a4 + 432) = v48[4];
  *(a4 + 448) = v43;
  v44 = v48[3];
  *(a4 + 400) = v48[2];
  *(a4 + 416) = v44;
  *(a4 + 464) = v42;
  *(a4 + 480) = result;
  *(a4 + 496) = v35;
  *(a4 + 512) = v33;
  *(a4 + 520) = v26;
  *(a4 + 528) = v28;
  *(a4 + 536) = 0;
  return result;
}

uint64_t sub_10011D7D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for TourPhotosView(0, a1, a2, a3);
  v10 = sub_10011988C(v5, v9, v6, v7, v8);
  v11 = *(v10 + 48);
  v49 = *(v10 + 40);

  v12 = LocalizedStringKey.init(stringLiteral:)();
  v46 = v13;
  v47 = v12;
  v44 = v14;
  v48 = v15;
  v16 = LocalizedStringKey.init(stringLiteral:)();
  v18 = v17;
  v43 = v19;
  v45 = v20;
  type metadata accessor for CGSize(0);
  v50 = 0u;
  v53 = 0u;
  State.init(wrappedValue:)();
  v21 = v60;
  v22 = v61;
  sub_10011988C(v5, v26, v23, v24, v25);
  v27 = sub_10015737C();

  v31.n128_u64[0] = 0;
  if (v27)
  {
    sub_10011988C(v5, v31, v28, v29, v30);
    v51 = sub_1001573B4();

    sub_10011988C(v5, v35, v32, v33, v34);
    v42 = sub_1001573CC();

    v31.n128_f64[0] = sub_1001199A8();
    *&v36 = v51;
    *(&v36 + 1) = v42;
    v50 = v36;
  }

  *&v53 = v47;
  *(&v53 + 1) = v46;
  LOBYTE(v54) = v44 & 1;
  *(&v54 + 1) = v73[0];
  DWORD1(v54) = *(v73 + 3);
  *(&v54 + 1) = v48;
  *&v55 = v16;
  *(&v55 + 1) = v18;
  LOBYTE(v56) = v43 & 1;
  *(&v56 + 1) = *v72;
  DWORD1(v56) = *&v72[3];
  *(&v56 + 1) = v45;
  *&v57 = v49;
  *(&v57 + 1) = v11;
  v58 = v60;
  v59 = v61;
  v52[104] = !v27;
  *(a4 + 96) = v61;
  v37 = v53;
  v38 = v54;
  v39 = v56;
  *(a4 + 32) = v55;
  *(a4 + 48) = v39;
  *a4 = v37;
  *(a4 + 16) = v38;
  v40 = v58;
  *(a4 + 64) = v57;
  *(a4 + 80) = v40;
  *(a4 + 104) = v50;
  *(a4 + 120) = v31.n128_u64[0];
  *(a4 + 128) = !v27;
  *&v60 = v47;
  *(&v60 + 1) = v46;
  LOBYTE(v61) = v44 & 1;
  HIDWORD(v61) = *(v73 + 3);
  *(&v61 + 1) = v73[0];
  v62 = v48;
  v63 = v16;
  v64 = v18;
  v65 = v43 & 1;
  *&v66[3] = *&v72[3];
  *v66 = *v72;
  v67 = v45;
  v68 = v49;
  v69 = v11;
  v70 = v21;
  v71 = v22;
  sub_10006996C(&v53, v52);
  return sub_10011E90C(&v60);
}

void *sub_10011DA68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContentSizeCategory();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v21 - v11);
  type metadata accessor for TourPhotosView(0, a1, a2, v13);
  sub_10003A100(v12);
  (*(v7 + 104))(v10, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v6);
  LOBYTE(a2) = sub_100172140(v12, v10);
  v14 = *(v7 + 8);
  v14(v10, v6);
  result = (v14)(v12, v6);
  if (a2)
  {
    sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001B3B50;
    *(v16 + 32) = static Color.clear.getter();
    static Color.black.getter();
    v17 = Color.opacity(_:)();

    *(v16 + 40) = v17;
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v18 = v21[1];
    v19 = v22;
    v20 = v23;
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 24) = v20;
  return result;
}

void sub_10011DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v7 = type metadata accessor for TourPhotosView(0, a2, a3, v6);
  sub_10011988C(v7, v11, v8, v9, v10);
  if (*(a1 + *(v7 + 44)))
  {

    sub_100157420(v12);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10011DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TourPhotosView(0, a2, a3, a4);
  result = sub_1001198CC();
  if ((v6 & 1) == 0)
  {
    v10 = result;
    sub_10011988C(v4, v9, v6, v7, v8);
    v11 = sub_1001573CC();

    return sub_100119A08(v4, v11 * v10);
  }

  return result;
}

unint64_t sub_10011DE1C()
{
  result = qword_1002281E8;
  if (!qword_1002281E8)
  {
    sub_10000460C(&qword_1002281E0, &qword_1001BEBF0);
    sub_10011DEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281E8);
  }

  return result;
}

unint64_t sub_10011DEA8()
{
  result = qword_1002281F0;
  if (!qword_1002281F0)
  {
    sub_10000460C(&qword_1002281F8, &qword_1001BEBF8);
    sub_10011DF60();
    sub_10000BFFC(&qword_100228250, &qword_100228258, &unk_1001BEC28, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281F0);
  }

  return result;
}

unint64_t sub_10011DF60()
{
  result = qword_100228200;
  if (!qword_100228200)
  {
    sub_10000460C(&qword_100228208, &qword_1001BEC00);
    sub_10011DFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228200);
  }

  return result;
}

unint64_t sub_10011DFEC()
{
  result = qword_100228210;
  if (!qword_100228210)
  {
    sub_10000460C(&qword_100228218, &qword_1001BEC08);
    sub_10011E078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228210);
  }

  return result;
}

unint64_t sub_10011E078()
{
  result = qword_100228220;
  if (!qword_100228220)
  {
    sub_10000460C(&qword_100228228, &qword_1001BEC10);
    sub_10011E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228220);
  }

  return result;
}

unint64_t sub_10011E104()
{
  result = qword_100228230;
  if (!qword_100228230)
  {
    sub_10000460C(&qword_100228238, &qword_1001BEC18);
    sub_10000BFFC(&qword_100228240, &qword_100228248, &qword_1001BEC20, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228230);
  }

  return result;
}

void sub_10011E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TourPhotosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_10011DC74(v8, v5, v6);
}

uint64_t sub_10011E264@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v56 = a1;
  v54 = sub_1000024C4(&qword_100228468, &qword_1001BEE40) - 8;
  v5 = __chkstk_darwin(v54);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v52 = sub_1000024C4(&qword_100228470, &unk_1001BEE48) - 8;
  v9 = __chkstk_darwin(v52);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v51 = type metadata accessor for RoundedRectangle();
  v13 = *(v51 + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  v16 = *(v15 - 8);
  v48 = *(v16 + 104);
  v50 = v16 + 104;
  v48(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #2.0 }

  v47 = _Q0;
  *v12 = _Q0;
  v46 = objc_opt_self();
  v22 = [v46 tertiaryLabelColor];
  v23 = Color.init(uiColor:)();
  v45 = sub_1000024C4(&qword_100223250, &unk_1001BCCE0);
  *&v12[*(v45 + 36)] = v23;
  v44 = sub_1000024C4(&qword_100228478, &qword_1001BEE58);
  v24 = &v12[*(v44 + 36)];
  v25 = sub_1000024C4(&qword_100228480, &qword_1001BEE60);
  v26 = *(v25 + 28);
  v27 = enum case for ColorScheme.light(_:);
  v28 = type metadata accessor for ColorScheme();
  v29 = *(*(v28 - 8) + 104);
  v29(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = v52;
  v31 = &v12[*(v52 + 44)];
  v32 = v58;
  *v31 = v57;
  *(v31 + 1) = v32;
  *(v31 + 2) = v59;
  v48(&v8[*(v51 + 20)], v49, v15);
  *v8 = v47;
  v33 = [v46 secondaryLabelColor];
  *&v8[*(v45 + 36)] = Color.init(uiColor:)();
  v34 = &v8[*(v44 + 36)];
  v29(v34 + *(v25 + 28), v27, v28);
  *v34 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = &v8[*(v30 + 44)];
  v36 = v61;
  *v35 = v60;
  *(v35 + 1) = v36;
  *(v35 + 2) = v62;
  v37 = v53;
  v38 = &v8[*(v54 + 44)];
  *v38 = a4;
  *(v38 + 1) = 0;
  sub_10000BEB8(v12, v37, &qword_100228470, &unk_1001BEE48);
  v39 = v55;
  sub_10000BEB8(v8, v55, &qword_100228468, &qword_1001BEE40);
  v40 = v56;
  sub_10000BEB8(v37, v56, &qword_100228470, &unk_1001BEE48);
  v41 = sub_1000024C4(&qword_100228488, &qword_1001BEE98);
  sub_10000BEB8(v39, v40 + *(v41 + 48), &qword_100228468, &qword_1001BEE40);
  sub_1000050C4(v8, &qword_100228468, &qword_1001BEE40);
  sub_1000050C4(v12, &qword_100228470, &unk_1001BEE48);
  sub_1000050C4(v39, &qword_100228468, &qword_1001BEE40);
  return sub_1000050C4(v37, &qword_100228470, &unk_1001BEE48);
}

uint64_t sub_10011E750@<X0>(char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = static Alignment.leading.getter();
  *(a2 + 1) = v7;
  v8 = sub_1000024C4(&qword_100228450, &qword_1001BEE28);
  sub_10011E264(&a2[*(v8 + 44)], v4, v5, v6);
  v9 = *(sub_1000024C4(&qword_100228458, &qword_1001BEE30) + 36);
  v10 = enum case for BlendMode.plusLighter(_:);
  v11 = type metadata accessor for BlendMode();
  (*(*(v11 - 8) + 104))(&a2[v9], v10, v11);
  result = sub_1000024C4(&qword_100228460, &qword_1001BEE38);
  a2[*(result + 36)] = 1;
  return result;
}

uint64_t sub_10011E844(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10011E978()
{
  result = qword_100228278;
  if (!qword_100228278)
  {
    sub_10000460C(&qword_100228270, &qword_1001BEC48);
    sub_10011EA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228278);
  }

  return result;
}

unint64_t sub_10011EA04()
{
  result = qword_100228280;
  if (!qword_100228280)
  {
    sub_10000460C(&qword_100228288, &qword_1001BEC50);
    sub_10011EB08();
    sub_10000460C(&qword_1002282F0, &qword_1001BEC90);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228280);
  }

  return result;
}

unint64_t sub_10011EB08()
{
  result = qword_100228290;
  if (!qword_100228290)
  {
    sub_10000460C(&qword_100228298, &qword_1001BEC58);
    sub_10011EBC0();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8, &qword_1001BEC88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228290);
  }

  return result;
}

unint64_t sub_10011EBC0()
{
  result = qword_1002282A0;
  if (!qword_1002282A0)
  {
    sub_10000460C(&qword_1002282A8, &qword_1001BEC60);
    sub_10011EC78();
    sub_10000BFFC(&qword_1002282D0, &qword_1002282D8, &qword_1001BEC80, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002282A0);
  }

  return result;
}

unint64_t sub_10011EC78()
{
  result = qword_1002282B0;
  if (!qword_1002282B0)
  {
    sub_10000460C(&qword_1002282B8, &qword_1001BEC68);
    sub_10011F654(&qword_1002282C0, &qword_1002282C8, &unk_1001BEC70, &protocol witness table for _BlurEffect);
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002282B0);
  }

  return result;
}

uint64_t sub_10011ED5C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for TourPhotosView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_10011B240(v7, v4, v5, a2);
}

uint64_t sub_10011EE00()
{

  return swift_deallocObject();
}

uint64_t sub_10011EE38(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_10011EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for TourPhotosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));
  type metadata accessor for TourPhotosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);

  v11 = v7[14];
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10011F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TourPhotosView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10011B4A0(a1, v9, v6, v7, a3);
}

unint64_t sub_10011F0F8()
{
  result = qword_100228348;
  if (!qword_100228348)
  {
    sub_10000460C(&qword_100228340, &qword_1001BECF8);
    sub_10011F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228348);
  }

  return result;
}

unint64_t sub_10011F184()
{
  result = qword_100228350;
  if (!qword_100228350)
  {
    sub_10000460C(&qword_100228358, &qword_1001BED00);
    sub_10011F210();
    sub_10011F708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228350);
  }

  return result;
}

unint64_t sub_10011F210()
{
  result = qword_100228360;
  if (!qword_100228360)
  {
    sub_10000460C(&qword_100228368, &qword_1001BED08);
    v3 = sub_10011F29C();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228360);
  }

  return result;
}

unint64_t sub_10011F29C()
{
  result = qword_100228370;
  if (!qword_100228370)
  {
    sub_10000460C(&qword_100228378, &qword_1001BED10);
    sub_10011F354();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8, &qword_1001BEC88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228370);
  }

  return result;
}

unint64_t sub_10011F354()
{
  result = qword_100228380;
  if (!qword_100228380)
  {
    sub_10000460C(&qword_100228388, &qword_1001BED18);
    sub_10011F40C();
    sub_10000BFFC(&qword_1002283F0, &qword_1002283F8, &qword_1001BED50, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228380);
  }

  return result;
}

unint64_t sub_10011F40C()
{
  result = qword_100228390;
  if (!qword_100228390)
  {
    sub_10000460C(&qword_100228398, &qword_1001BED20);
    sub_10011F4C4();
    sub_10000BFFC(&qword_1002283E0, &qword_1002283E8, &qword_1001BED48, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228390);
  }

  return result;
}

unint64_t sub_10011F4C4()
{
  result = qword_1002283A0;
  if (!qword_1002283A0)
  {
    sub_10000460C(&qword_1002283A8, &qword_1001BED28);
    sub_10011F57C();
    sub_10000BFFC(&qword_1002283D0, &qword_1002283D8, &qword_1001BED40, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002283A0);
  }

  return result;
}

unint64_t sub_10011F57C()
{
  result = qword_1002283B0;
  if (!qword_1002283B0)
  {
    sub_10000460C(&qword_1002283B8, &qword_1001BED30);
    sub_10011F654(&qword_1002283C0, &qword_1002283C8, &qword_1001BED38, &protocol witness table for _FrameLayout);
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002283B0);
  }

  return result;
}

uint64_t sub_10011F654(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    sub_10000460C(&qword_100223B58, &qword_1001B7E10);
    sub_100069870();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011F708()
{
  result = qword_100228400;
  if (!qword_100228400)
  {
    sub_10000460C(&qword_100228408, &qword_1001BED58);
    sub_10000460C(&qword_1002282F0, &qword_1001BEC90);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_1002282E0, &qword_1002282E8, &qword_1001BEC88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TourPhotosScrollBar(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TourPhotosScrollBar(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10011F88C(void *a1)
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_10000460C(&qword_1002281A0, &qword_1001BEBC8);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_10000BFFC(&qword_1002281A8, &qword_1002281A0, &qword_1001BEBC8, &protocol conformance descriptor for AsyncImage<A>);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002281B0, &unk_1001BEBD0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226328, &qword_1001BC028);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002281B8, &qword_1001BEBE0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221850, &qword_1001B4960);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002281C0, &qword_1002281B0, &unk_1001BEBD0, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_1002281C8, &qword_1002281B8, &qword_1001BEBE0, &protocol conformance descriptor for _OverlayModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100011884();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10011FDB0()
{
  result = qword_100228490;
  if (!qword_100228490)
  {
    sub_10000460C(&qword_100228460, &qword_1001BEE38);
    v3 = sub_10011FE3C();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228490);
  }

  return result;
}

unint64_t sub_10011FE3C()
{
  result = qword_100228498;
  if (!qword_100228498)
  {
    sub_10000460C(&qword_100228458, &qword_1001BEE30);
    sub_10000BFFC(&qword_1002284A0, qword_1002284A8, &unk_1001BEEA0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228498);
  }

  return result;
}

id sub_10011FEFC(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result addressRepresentations];
    if (!v2 || (v3 = v2, v4 = [v2 fullAddressIncludingRegion:0 singleLine:1], v3, !v4))
    {
      result = [v1 address];
      if (!result)
      {
        return result;
      }

      v5 = result;
      v4 = [result fullAddress];
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  return result;
}

uint64_t sub_10011FFD8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100120000, 0, 0);
}

uint64_t sub_100120000()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + 24);
    if (v3 == 0.0 || *(v0 + 32) == 0.0)
    {
LABEL_5:
      v4 = v2;
LABEL_6:
      v5 = *(v0 + 8);

      return v5(v2);
    }

    v11 = v1;
    v12 = v2;
    [v12 size];
    v14 = vabdd_f64(v13, v3);
    [v12 size];
    if (v14 < 15.0 && vabdd_f64(v15, *(v0 + 32)) < 15.0)
    {

      v2 = *(v0 + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v1;
  }

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100120180;
  v9.n128_u64[0] = *(v0 + 24);
  v10.n128_u64[0] = *(v0 + 32);

  return (sub_1000C6958)(v1, v9, v10);
}

uint64_t sub_100120180(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100120314;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1001202A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001202A8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100120314()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100120388(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
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

uint64_t sub_100120434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for PageControl(0, a3, a4, a4) + 36);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

id sub_1001204D4()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.3];

  return v1;
}

uint64_t sub_100120540(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  return a2(v3);
}

uint64_t sub_100120598(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for PageControl.Coordinator(0, v2, *(a1 + 24), v6);
  sub_100120540(a1, &Binding.projectedValue.getter);
  v7 = swift_allocObject();
  sub_100120C40(v5);
  return v7;
}

uint64_t sub_10012066C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100120C40(a1);
  return v2;
}

id sub_1001206AC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(UIPageControl) init];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v6 action:"pageDidChange:" forControlEvents:4096];

  [v2 setNumberOfPages:Array.count.getter()];
  v3 = sub_1001204D4();
  [v2 setPageIndicatorTintColor:v3];

  v4 = [objc_opt_self() labelColor];
  [v2 setCurrentPageIndicatorTintColor:v4];

  return v2;
}

void sub_1001207EC(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v27 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v26 - v8;
  v32 = *(v5 - 8);
  __chkstk_darwin(v7);
  v28 = v10;
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v15 = v36;
  v16 = *v3;
  v17 = *(*v36 + 104);
  swift_beginAccess();
  *(v15 + v17) = v16;

  sub_100120540(a3, &Binding.projectedValue.getter);
  v18 = *(*v15 + 96);
  swift_beginAccess();
  v19 = v14;
  v20 = v30;
  (*(v12 + 40))(v15 + v18, v19, v11);
  swift_endAccess();
  v21 = [v20 numberOfPages];
  if (v21 != Array.count.getter())
  {
    [v20 setNumberOfPages:Array.count.getter()];
  }

  v22 = v31;
  sub_100120540(a3, &Binding.wrappedValue.getter);
  v23 = v32;
  if ((*(v32 + 48))(v22, 1, v5) == 1)
  {

    (*(v27 + 8))(v22, v28);
  }

  else
  {
    v24 = v29;
    (*(v23 + 32))(v29, v22, v5);
    v33 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v35 == 1 || (v25 = v34, v25 == [v20 currentPage]))
    {
      (*(v23 + 8))(v24, v5);
    }

    else
    {
      [v20 setCurrentPage:v25];

      (*(v23 + 8))(v24, v5);
    }
  }
}

uint64_t sub_100120C40(uint64_t a1)
{
  v3 = *(*v1 + 104);
  *(v1 + v3) = static Array._allocateUninitialized(_:)();
  v4 = *(*v1 + 96);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_100120D08(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v11[-v5];
  v8 = *(v7 + 104);
  swift_beginAccess();
  v15 = *(v1 + v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v14 = v12;
  v13 = [a1 currentPage];
  sub_1000024C4(qword_100228530, qword_1001BEF50);
  result = Range.contains(_:)();
  if (result)
  {
    [a1 currentPage];
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v10 = [a1 interactionState];
    if (v10 != 2)
    {
      v10 = static Animation.default.getter();
    }

    __chkstk_darwin(v10);
    *&v11[-16] = v1;
    *&v11[-8] = v6;
    withAnimation<A>(_:_:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100120F64(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = *(v4 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a1[v13], v9);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v8, a2, v5);
  (*(v14 + 56))(v8, 0, 1, v5);
  Binding.wrappedValue.setter();
  return (*(v10 + 8))(v12, v9);
}

double sub_10012116C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100120D08(v3);

  return result;
}

uint64_t sub_1001211BC()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100121268()
{
  sub_1001211BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001212E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100120598(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100121308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100121384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100121400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100121474(uint64_t a1)
{
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100121510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_100121710(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_54:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

uint64_t sub_1001219E0()
{
  v0 = type metadata accessor for EventService();
  sub_1000640DC(v0, qword_100239108);
  sub_10000BE10(v0, qword_100239108);
  return EventService.init()();
}

double sub_100121ABC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v34 = v7;
  v35 = v6;
  (*(v3 + 8))(v5, v2);
  v32 = 0x80000001001C78A0;
  v33 = 0x80000001001C78C0;
  v8 = type metadata accessor for DesignTimeMusicPlaylist(0);
  v9 = *(v8 + 32);
  v10 = v8;
  v31 = v8;
  sub_100057B70((a1 + v9));
  v11 = type metadata accessor for DesignTimeImage(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v9, 0, 1, v11);
  v13 = *(v10 + 36);
  v14 = type metadata accessor for URL();
  v30 = *(*(v14 - 8) + 56);
  v30(a1 + v13, 1, 1, v14);
  sub_1000024C4(&qword_100228640, &unk_1001BF120);
  v15 = (type metadata accessor for DesignTimeSong(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001B49B0;
  v18 = (v17 + v16);
  v29 = 0x80000001001C78F0;
  v19 = v15[9];
  sub_100057B70(&v18[v19]);
  v12(&v18[v19], 0, 1, v11);
  URL.init(string:)();
  v20 = v15[11];
  v21 = type metadata accessor for PlayParameters();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v30(&v18[v15[13]], 1, 1, v14);
  *v18 = 0x61662072656B6F50;
  *(v18 + 1) = 0xEA00000000006563;
  *(v18 + 2) = 0x676147207964614CLL;
  *(v18 + 3) = 0xE900000000000061;
  v22 = v29;
  *(v18 + 4) = 0xD000000000000010;
  *(v18 + 5) = v22;
  v23 = &v18[v15[12]];
  *v23 = 0;
  v23[8] = 1;
  v18[v15[14]] = 0;
  v24 = v34;
  *a1 = v35;
  *(a1 + 8) = v24;
  v25 = v32;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = v25;
  result = 1.09334023e257;
  *(a1 + 32) = xmmword_1001BF050;
  v27 = v33;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = v27;
  *(a1 + *(v31 + 40)) = v17;
  return result;
}

void sub_100121E70(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DesignTimeImage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 56))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 56))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v14 = type metadata accessor for DesignTimeMusicPlaylist(0);
  sub_10000BEB8(v1 + v14[8], v13, &qword_100221250, &unk_1001B3990);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
    v16 = v22;
    v15 = v23;
  }

  else
  {
    sub_100005180(v13, v10);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_100122C64(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = v23;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v10[*(v7 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100122C64(&qword_100221268, type metadata accessor for CGColor, &unk_1001B3470);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v16 = v22;
    Hasher._combine(_:)(v10[*(v7 + 28)]);
    sub_100005124(v10);
  }

  sub_10000BEB8(v1 + v14[9], v6, &qword_1002214F8, &qword_1001B3D20);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = v21;
    (*(v16 + 32))(v21, v6, v15);
    Hasher._combine(_:)(1u);
    sub_100122C64(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v16 + 8))(v17, v15);
  }

  v18 = *(v1 + v14[10]);
  Hasher._combine(_:)(*(v18 + 16));
  for (i = *(v18 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }
}

uint64_t sub_10012238C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100122430(uint64_t a1)
{
  *(a1 + 8) = sub_100122C64(&qword_100228628, type metadata accessor for DesignTimeMusicPlaylist, &unk_1001BF0B4);
  result = sub_100122C64(&qword_100228630, type metadata accessor for DesignTimeMusicPlaylist, &unk_1001BF07C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicPlaylist(uint64_t a1)
{
  result = qword_1002286A0;
  if (!qword_1002286A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100122548()
{
  Hasher.init(_seed:)();
  sub_100121E70(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10012258C()
{
  Hasher.init(_seed:)();
  sub_100121E70(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001225C8(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - v7;
  v8 = sub_1000024C4(&qword_100222A70, &unk_1001B6CF0);
  __chkstk_darwin(v8);
  v51 = &v47 - v9;
  v10 = type metadata accessor for DesignTimeImage(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  __chkstk_darwin(v14 - 8);
  v16 = (&v47 - v15);
  v17 = sub_1000024C4(&qword_100221258, &unk_1001B6D00);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v21)
  {
    goto LABEL_34;
  }

  v22 = a1[7];
  v23 = a2[7];
  if (v22)
  {
    if (!v23 || (a1[6] != a2[6] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v23)
  {
    goto LABEL_34;
  }

  v48 = v4;
  v47 = type metadata accessor for DesignTimeMusicPlaylist(0);
  v24 = *(v47 + 32);
  v25 = *(v17 + 48);
  sub_10000BEB8(a1 + v24, v19, &qword_100221250, &unk_1001B3990);
  v26 = a2 + v24;
  v27 = v25;
  sub_10000BEB8(v26, &v19[v25], &qword_100221250, &unk_1001B3990);
  v28 = *(v11 + 48);
  if (v28(v19, 1, v10) != 1)
  {
    sub_10000BEB8(v19, v16, &qword_100221250, &unk_1001B3990);
    if (v28(&v19[v27], 1, v10) != 1)
    {
      sub_100005180(&v19[v27], v13);
      v32 = sub_10005859C(v16, v13);
      sub_100005124(v13);
      sub_100005124(v16);
      sub_1000050C4(v19, &qword_100221250, &unk_1001B3990);
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    sub_100005124(v16);
LABEL_25:
    v29 = &qword_100221258;
    v30 = &unk_1001B6D00;
    v31 = v19;
LABEL_33:
    sub_1000050C4(v31, v29, v30);
    goto LABEL_34;
  }

  if (v28(&v19[v27], 1, v10) != 1)
  {
    goto LABEL_25;
  }

  sub_1000050C4(v19, &qword_100221250, &unk_1001B3990);
LABEL_27:
  v33 = v47;
  v34 = *(v47 + 36);
  v35 = *(v8 + 48);
  v36 = v51;
  sub_10000BEB8(a1 + v34, v51, &qword_1002214F8, &qword_1001B3D20);
  sub_10000BEB8(a2 + v34, v36 + v35, &qword_1002214F8, &qword_1001B3D20);
  v37 = v52;
  v38 = *(v52 + 48);
  v39 = v48;
  if (v38(v36, 1, v48) == 1)
  {
    if (v38(v36 + v35, 1, v39) == 1)
    {
      sub_1000050C4(v36, &qword_1002214F8, &qword_1001B3D20);
LABEL_37:
      v41 = sub_10004966C(*(a1 + *(v33 + 40)), *(a2 + *(v33 + 40)));
      return v41 & 1;
    }

    goto LABEL_32;
  }

  v40 = v50;
  sub_10000BEB8(v36, v50, &qword_1002214F8, &qword_1001B3D20);
  if (v38(v36 + v35, 1, v39) == 1)
  {
    (*(v37 + 8))(v40, v39);
LABEL_32:
    v29 = &qword_100222A70;
    v30 = &unk_1001B6CF0;
    v31 = v36;
    goto LABEL_33;
  }

  v43 = v36 + v35;
  v44 = v49;
  (*(v37 + 32))(v49, v43, v39);
  sub_100122C64(&qword_100222A78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v37 + 8);
  v46(v44, v39);
  v46(v40, v39);
  sub_1000050C4(v36, &qword_1002214F8, &qword_1001B3D20);
  if (v45)
  {
    goto LABEL_37;
  }

LABEL_34:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_100122C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100122CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100122E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100122F4C(uint64_t a1)
{
  sub_1000EFEF8();
  if (v1 <= 0x3F)
  {
    sub_1001230A0(319, &qword_1002212D8, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1001230A0(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1001230A0(319, &qword_100222FF0, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001230A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100123118(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001231E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AttributionViewModel(uint64_t a1)
{
  result = qword_100228748;
  if (!qword_100228748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001232E4(uint64_t a1)
{
  sub_10000693C(319);
  if (v1 <= 0x3F)
  {
    sub_1000994D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100123384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v12 - 8);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_100222078, &unk_1001B5670);
  __chkstk_darwin(v14 - 8);
  v48 = &v39 - v15;
  v16 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AttributionViewModel(0);
  sub_100073F10(v2 + *(v26 + 32), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000050C4(v21, &qword_1002214F8, &qword_1001B3D20);
    object = v2[1]._object;
    countAndFlagsBits = v2[1]._countAndFlagsBits;
    v51 = object;

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    String.append(_:)(v2[3]);
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    v42 = v5;
    (*(v23 + 32))(v25, v21, v22);
    v30 = v2->_object;
    countAndFlagsBits = v2->_countAndFlagsBits;
    v51 = v30;

    v31._countAndFlagsBits = 23328;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v2[3]._countAndFlagsBits;
    v40 = v2[3]._object;
    v32._object = v40;
    v41 = v32._countAndFlagsBits;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 10333;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10006E2EC();
    v43 = v25;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    (*(v23 + 56))(v19, 1, 1, v22);
    (*(v45 + 104))(v47, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v46);
    (*(v7 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v6);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v36 = v48;
    AttributedString.init(markdown:options:baseURL:)();
    (*(v23 + 8))(v43, v22);
    v37 = type metadata accessor for AttributedString();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v36, 0, 1, v37);
    return (*(v38 + 32))(v49, v36, v37);
  }
}

void sub_100123A14(uint64_t a1)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v4 = v1[4];
  v5 = v1[5];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = *(v1 + *(type metadata accessor for AttributionViewModel(0) + 36));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 5;
  v7 = v1[6];
  v8 = v1[7];
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = v7;
  *(inited + 160) = v8;
  *(inited + 168) = 0;
  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v17 = v9;
  v18 = v10;

  v11 = sub_1001894F4(1, 5, 1, inited);
  v15 = v11;
  sub_100006C98(&aBlock, v22);
  sub_100118768(4, v22, &v15, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001ELL;
  v13[3] = 0x80000001001C4640;
  v13[4] = v11;
  v20 = sub_100006D88;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10015B4A4;
  v19 = &unk_100217C58;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_100123C94()
{

  return swift_deallocObject();
}

double sub_100123CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100123D40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v16 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v24);
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v17 = type metadata accessor for PromotionalAssetsEntryView(0, &v24);
  v18 = v17[13];
  *(a6 + v18) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  swift_storeEnumTagMultiPayload();
  v19 = v17[14];
  *(a6 + v19) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  swift_storeEnumTagMultiPayload();
  v20 = a6 + v17[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a6 + v17[16];
  v27 = a7;
  v28 = a8;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v22 = v25;
  result = *&v24;
  *v21 = v24;
  *(v21 + 16) = v22;
  return result;
}

void sub_100123F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v1;
  v2 = type metadata accessor for PromotionalAssetsEntryViewModel(319, &v12);
  if (v3 <= 0x3F)
  {
    *&v12 = v2;
    sub_10012A320(319, &qword_100221C00, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      *(&v12 + 1) = v4;
      sub_10012A320(319, &qword_100226230, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v7 <= 0x3F)
      {
        *&v13 = v6;
        sub_10001B850();
        if (v9 <= 0x3F)
        {
          *(&v13 + 1) = v8;
          sub_10012A320(319, &qword_100228810, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v11 <= 0x3F)
          {
            v14 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001240A0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v30 = *(a3 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v31 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v33 = *(type metadata accessor for ColorScheme() - 8);
  v10 = *(v33 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  if (v9 < a2)
  {
    v16 = *(v33 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = ((v12 + ((v34 + v17 + ((v16 + (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v9 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_31:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v9 + (v19 | v24) + 1;
      }
    }
  }

  if (v5 == v9)
  {
    v26 = *(v4 + 48);

    return v26(a1, v5, v32);
  }

  v27 = (a1 + v15) & ~v13;
  if (v31 == v9)
  {
    if (v7 >= 2)
    {
      v29 = (*(v6 + 48))(v27, v7, v30);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v14) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_100124400(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v34 = *(a4 + 16);
  v4 = *(v34 - 8);
  v33 = v4;
  v5 = *(v4 + 84);
  v31 = *(a4 + 24);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v32 = v8;
  if (v8 <= v5)
  {
    v8 = *(v4 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for ContentSizeCategory();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  v18 = *(v4 + 64) + v17;
  v19 = *(v6 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = ((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a3)
  {
    if (((v16 + ((v11 + v21 + ((v20 + (((((v18 & ~v17) + v19) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 32) & ~v20) + 1) & ~v21) + 24) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v23 = a3 - v9 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  v25 = a2;
  if (a2 > v9)
  {
    if (v22)
    {
      v26 = 1;
    }

    else
    {
      v26 = a2 - v9;
    }

    if (v22)
    {
      bzero(a1, v22);
      *a1 = ~v9 + a2;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v22) = v26;
      }

      else
      {
        *(a1 + v22) = v26;
      }
    }

    else if (v14)
    {
      *(a1 + v22) = v26;
    }

    return;
  }

  v27 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v22) = 0;
  }

  else if (v14)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 == v9)
  {
    v28 = v34;
    v29 = *(v33 + 56);
    v13 = v5;
  }

  else
  {
    v27 = ((a1 + v18) & ~v17);
    if (v32 != v9)
    {
      v30 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v30[3] = 0;
        v30[4] = 0;
        v30[1] = a2 & 0x7FFFFFFF;
        v30[2] = 0;
      }

      else
      {
        v30[2] = a2 - 1;
      }

      return;
    }

    v29 = *(v6 + 56);
    v25 = a2 + 1;
    v28 = v31;
  }

  v29(v27, v25, v13, v28);
}

double sub_1001247C4(uint64_t a1)
{
  sub_1000024C4(&qword_100223B38, &qword_1001B7E00);
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100124888@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_1000024C4(&qword_100228818, &qword_1001BF2A0);
  sub_100124A14(v2, a1[2], *(a1 + 3), *(a1 + 4), *(a1 + 5), a2 + *(v5 + 44));
  v6 = a2 + *(sub_1000024C4(&qword_100228820, &qword_1001BF2A8) + 36);
  sub_100127AEC(a1, v6);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (v6 + *(sub_1000024C4(&qword_100228828, &qword_1001BF2B0) + 36));
  *v10 = v7;
  v10[1] = v9;
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v11 = qword_1002390D8;
  v12 = (a2 + *(sub_1000024C4(&qword_100228830, &unk_1001BF2B8) + 36));
  v13 = *(type metadata accessor for RoundedRectangle() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  result = sub_1000024C4(&qword_100221C80, &qword_1001B6990);
  *(v12 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100124A14@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v103 = a4;
  *(&v102 + 1) = a3;
  *&v102 = a2;
  v101 = a1;
  v100 = a6;
  v11 = sub_1000024C4(&qword_100228850, &qword_1001BF2D8);
  __chkstk_darwin(v11 - 8);
  v92 = (&v86 - v12);
  v91 = sub_1000024C4(&qword_100228858, &qword_1001BF2E0);
  __chkstk_darwin(v91);
  v97 = &v86 - v13;
  v96 = sub_1000024C4(&qword_100228860, &unk_1001BF2E8);
  v14 = __chkstk_darwin(v96);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v95 = &v86 - v17;
  __chkstk_darwin(v16);
  v98 = &v86 - v18;
  v19 = type metadata accessor for RoundedRectangle();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1000024C4(&qword_1002243F0, &qword_1001B8D60);
  __chkstk_darwin(v23 - 8);
  v25 = &v86 - v24;
  v26 = sub_1000024C4(&qword_100228868, &qword_1001BF2F8);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v86 - v28;
  v87 = sub_1000024C4(&qword_100228870, &qword_1001BF300);
  __chkstk_darwin(v87);
  v90 = &v86 - v30;
  v89 = sub_1000024C4(&qword_100228878, &qword_1001BF308);
  v31 = __chkstk_darwin(v89);
  v94 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v88 = &v86 - v34;
  __chkstk_darwin(v33);
  v93 = &v86 - v35;
  sub_100125490(a1, a2, a3, a4, a5, v29);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v29[*(sub_1000024C4(&qword_100228880, &qword_1001BF310) + 36)];
  v37 = v104[1];
  *v36 = v104[0];
  *(v36 + 1) = v37;
  *(v36 + 2) = v104[2];
  *&v29[*(sub_1000024C4(&qword_100228888, &qword_1001BF318) + 36)] = 0;
  v38 = 6.0;
  if (static Solarium.isEnabled.getter())
  {
    v39 = 10.0;
  }

  else
  {
    v39 = 6.0;
  }

  v40 = &v29[*(v27 + 44)];
  v41 = *(v20 + 28);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(*(v43 - 8) + 104);
  v44(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  v44(v22 + *(v20 + 28), v42, v43);
  v45 = v86;
  *v22 = v38;
  v22[1] = v38;
  v106 = v102;
  *&v107 = v103;
  *(&v107 + 1) = v45;
  v46 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v106);
  if (*(v101 + *(v46 + 56)))
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v47 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1001281D0(v22, v25, &type metadata accessor for RoundedRectangle);
  v48 = &v25[*(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36)];
  v49 = v104[4];
  *v48 = v104[3];
  *(v48 + 1) = v49;
  *(v48 + 4) = v105;
  v50 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *&v25[*(v50 + 52)] = v47;
  *&v25[*(v50 + 56)] = 256;
  v51 = static Alignment.center.getter();
  v53 = v52;
  sub_100128238(v22, &type metadata accessor for RoundedRectangle);
  v54 = &v25[*(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36)];
  *v54 = v51;
  v54[1] = v53;
  v55 = static Alignment.center.getter();
  v57 = v56;
  v58 = v90;
  v59 = &v90[*(v87 + 36)];
  sub_10001AE00(v25, v59, &qword_1002243F0, &qword_1001B8D60);
  v60 = (v59 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
  *v60 = v55;
  v60[1] = v57;
  sub_10001AE00(v29, v58, &qword_100228868, &qword_1001BF2F8);
  v61 = static Edge.Set.all.getter();
  v62 = v58;
  v63 = v88;
  sub_10001AE00(v62, v88, &qword_100228870, &qword_1001BF300);
  v64 = v63 + *(v89 + 36);
  *v64 = v61;
  *(v64 + 8) = 0u;
  *(v64 + 24) = 0u;
  *(v64 + 40) = 1;
  v65 = v93;
  sub_10001AE00(v63, v93, &qword_100228878, &qword_1001BF308);
  v66 = static HorizontalAlignment.leading.getter();
  v67 = v92;
  *v92 = v66;
  *(v67 + 8) = 0x4020000000000000;
  *(v67 + 16) = 0;
  v68 = sub_1000024C4(&qword_100228890, &unk_1001BF320);
  sub_100125AEC(v101, v102, *(&v102 + 1), v103, v45, v67 + *(v68 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v97;
  sub_10001AE00(v67, v97, &qword_100228850, &qword_1001BF2D8);
  v70 = (v69 + *(v91 + 36));
  v71 = v111;
  v70[4] = v110;
  v70[5] = v71;
  v70[6] = v112;
  v72 = v107;
  *v70 = v106;
  v70[1] = v72;
  v73 = v109;
  v70[2] = v108;
  v70[3] = v73;
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v75 = static Edge.Set.vertical.getter();
  *(inited + 32) = v75;
  v76 = static Edge.Set.trailing.getter();
  *(inited + 33) = v76;
  v77 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v77 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v76)
  {
    v77 = Edge.Set.init(rawValue:)();
  }

  v78 = v95;
  sub_10001AE00(v69, v95, &qword_100228858, &qword_1001BF2E0);
  v79 = v78 + *(v96 + 36);
  *v79 = v77;
  *(v79 + 8) = 0u;
  *(v79 + 24) = 0u;
  *(v79 + 40) = 1;
  v80 = v98;
  sub_10001AE00(v78, v98, &qword_100228860, &unk_1001BF2E8);
  v81 = v94;
  sub_10000BEB8(v65, v94, &qword_100228878, &qword_1001BF308);
  v82 = v99;
  sub_10000BEB8(v80, v99, &qword_100228860, &unk_1001BF2E8);
  v83 = v100;
  sub_10000BEB8(v81, v100, &qword_100228878, &qword_1001BF308);
  v84 = sub_1000024C4(&qword_100228898, &qword_1001BF330);
  sub_10000BEB8(v82, v83 + *(v84 + 48), &qword_100228860, &unk_1001BF2E8);
  sub_1000050C4(v80, &qword_100228860, &unk_1001BF2E8);
  sub_1000050C4(v65, &qword_100228878, &qword_1001BF308);
  sub_1000050C4(v82, &qword_100228860, &unk_1001BF2E8);
  return sub_1000050C4(v81, &qword_100228878, &qword_1001BF308);
}

uint64_t sub_100125490@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v55 = type metadata accessor for PhotoView(0);
  __chkstk_darwin(v55);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000024C4(&qword_100228938, &qword_1001BF468);
  __chkstk_darwin(v52);
  v54 = (&v46 - v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v17 - 8);
  v19 = &v46 - v18;
  v57 = type metadata accessor for URL();
  v20 = *(v57 - 8);
  __chkstk_darwin(v57);
  v46 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v58 = a2;
  v59 = a3;
  v50 = a4;
  v51 = a5;
  v60 = a4;
  v61 = a5;
  result = type metadata accessor for PromotionalAssetsEntryView(0, &v58);
  v23 = a1 + *(result + 60);
  v24 = *v23;
  v25 = *(v23 + 8);
  v53 = a1;
  if (v25 == 1)
  {
    v26 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v26 = v58;
  }

  v28 = v26 * 96.0;
  if (COERCE__INT64(fabs(v26 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25)
  {
    v29 = *&v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v24, 0);
    result = (*(v14 + 8))(v16, v13);
    v29 = v58;
  }

  v31 = v57;
  v32 = v29 * 96.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v33 = v32;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v34 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v58);
  sub_100115600(v28, v33, v34, v19);
  if ((*(v20 + 48))(v19, 1, v31) == 1)
  {
    sub_1000050C4(v19, &qword_1002214F8, &qword_1001B3D20);
    v35 = sub_100115354(v34);
    *v54 = v35;
    swift_storeEnumTagMultiPayload();
    v36 = sub_100129C80(&qword_100228940, type metadata accessor for PhotoView, &unk_1001BF560);
    sub_100129CC8(v36, v37, v38);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v39 = v46;
    (*(v20 + 32))(v46, v19, v31);
    v40 = v47;
    (*(v20 + 16))(v47, v39, v31);
    v41 = sub_100115354(v34);
    v42 = v54;
    *(v40 + *(v55 + 20)) = v41;
    sub_1001281D0(v40, v42, type metadata accessor for PhotoView);
    swift_storeEnumTagMultiPayload();
    v43 = sub_100129C80(&qword_100228940, type metadata accessor for PhotoView, &unk_1001BF560);
    sub_100129CC8(v43, v44, v45);
    _ConditionalContent<>.init(storage:)();
    sub_100128238(v40, type metadata accessor for PhotoView);
    return (*(v20 + 8))(v39, v31);
  }
}

uint64_t sub_100125AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v104 = a5;
  v114 = a4;
  v111 = a6;
  v113 = type metadata accessor for ColorScheme();
  v112 = *(v113 - 8);
  v10 = __chkstk_darwin(v113);
  v99 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = (&v99 - v12);
  v106 = sub_1000024C4(&qword_1002288A0, &qword_1001BF338);
  v13 = __chkstk_darwin(v106);
  v110 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v109 = &v99 - v18;
  v19 = sub_1000024C4(&qword_1002288A8, &qword_1001BF340);
  __chkstk_darwin(v19 - 8);
  v21 = &v99 - v20;
  v22 = sub_1000024C4(&qword_1002288B0, &qword_1001BF348);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v31 = &v21[*(sub_1000024C4(&qword_1002288B8, &qword_1001BF350) + 44)];
  v100 = a1;
  v32 = a2;
  v102 = a2;
  v33 = a2;
  v103 = a3;
  v34 = v114;
  sub_1001264B4(a1, v33, a3, v114, v6, v31);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v21, v28, &qword_1002288A8, &qword_1001BF340);
  v35 = &v28[*(v23 + 44)];
  v36 = v126;
  v37 = v128;
  v38 = v129;
  *(v35 + 4) = v127;
  *(v35 + 5) = v37;
  *(v35 + 6) = v38;
  v39 = v124;
  *v35 = v123;
  *(v35 + 1) = v39;
  *(v35 + 2) = v125;
  *(v35 + 3) = v36;
  v107 = v30;
  sub_10001AE00(v28, v30, &qword_1002288B0, &qword_1001BF348);
  v115 = v32;
  v116 = a3;
  v117 = v34;
  v118 = v6;
  v40 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v115);

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v6) = v44;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;
  v101 = v50;

  sub_100017398(v41, v43, v6 & 1);
  v51 = v100;

  LOBYTE(v6) = *(v51 + *(v40 + 56));
  v115 = v102;
  v116 = v103;
  v117 = v114;
  v118 = v104;
  v114 = type metadata accessor for PromotionalAssetsEntryView(0, &v115);
  v52 = v105;
  sub_100039EE0(v105);
  if ((v6 & 1) != 0 || (v53 = v112, v54 = v99, v55 = v113, (*(v112 + 104))(v99, enum case for ColorScheme.light(_:), v113), v56 = static ColorScheme.== infix(_:_:)(), v99 = *(v53 + 8), (v99)(v54, v55), (v56 & 1) == 0))
  {
    v115 = static Color.white.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v61;
    v59 = v62;
    v102 = v63;
    sub_100017398(v45, v47, v49 & 1);

    (*(v112 + 8))(v52, v113);
  }

  else
  {
    v115 = static Color.blue.getter();
    v104 = Text.foregroundStyle<A>(_:)();
    v103 = v57;
    v59 = v58;
    v102 = v60;
    sub_100017398(v45, v47, v49 & 1);

    (v99)(v52, v113);
  }

  LODWORD(v113) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v112 = v64;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v59 & 1;
  v120 = v59 & 1;
  v119 = 0;
  v72 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v121 = 0;
  sub_1001278FC(v114, &v115);
  v81 = v115;
  v82 = v116;
  v83 = static Alignment.center.getter();
  v85 = v84;
  v122 = v82;
  if (static Solarium.isEnabled.getter())
  {
    v86 = 16.0;
  }

  else
  {
    v86 = 14.0;
  }

  v87 = &v17[*(v106 + 36)];
  v88 = *(type metadata accessor for RoundedRectangle() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = v86;
  v87[1] = v86;
  *(v87 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  v91 = v103;
  *v17 = v104;
  *(v17 + 1) = v91;
  v17[16] = v71;
  *(v17 + 3) = v102;
  v17[32] = v113;
  *(v17 + 5) = v112;
  *(v17 + 6) = v66;
  *(v17 + 7) = v68;
  *(v17 + 8) = v70;
  v17[72] = 0;
  v17[80] = v72;
  *(v17 + 11) = v74;
  *(v17 + 12) = v76;
  *(v17 + 13) = v78;
  *(v17 + 14) = v80;
  v17[120] = 0;
  *(v17 + 16) = v81;
  v17[136] = v82;
  *(v17 + 18) = v83;
  *(v17 + 19) = v85;
  v92 = v109;
  sub_10001AE00(v17, v109, &qword_1002288A0, &qword_1001BF338);
  v93 = v107;
  v94 = v108;
  sub_10000BEB8(v107, v108, &qword_1002288B0, &qword_1001BF348);
  v95 = v110;
  sub_10000BEB8(v92, v110, &qword_1002288A0, &qword_1001BF338);
  v96 = v111;
  sub_10000BEB8(v94, v111, &qword_1002288B0, &qword_1001BF348);
  v97 = sub_1000024C4(&qword_1002288C0, &qword_1001BF358);
  sub_10000BEB8(v95, v96 + *(v97 + 48), &qword_1002288A0, &qword_1001BF338);
  sub_1000050C4(v92, &qword_1002288A0, &qword_1001BF338);
  sub_1000050C4(v93, &qword_1002288B0, &qword_1001BF348);
  sub_1000050C4(v95, &qword_1002288A0, &qword_1001BF338);
  return sub_1000050C4(v94, &qword_1002288B0, &qword_1001BF348);
}

uint64_t sub_1001264B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v62 = type metadata accessor for ContentSizeCategory();
  v11 = *(v62 - 8);
  v12 = __chkstk_darwin(v62);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v53[-v15];
  v17 = sub_1000024C4(&qword_1002288C8, &qword_1001BF360);
  v18 = __chkstk_darwin(v17 - 8);
  v64 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v53[-v20];
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0x4000000000000000;
  v21[16] = 0;
  v22 = sub_1000024C4(&qword_1002288D0, &qword_1001BF368);
  sub_100126A60(a1, a2, a3, a4, a5, &v21[*(v22 + 44)]);
  v58 = a2;
  v70 = a2;
  v71 = a3;
  v59 = a3;
  v60 = a4;
  v72 = a4;
  v73 = a5;
  v61 = a5;
  v23 = type metadata accessor for PromotionalAssetsEntryViewModel(0, &v70);
  sub_100115510(v23);
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  if (*(a1 + *(v23 + 56)))
  {
    v70 = static Color.white.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v29;
    v54 = v30;
    v57 = v31;
    sub_100017398(v24, v26, v28 & 1);
  }

  else
  {
    LODWORD(v70) = static HierarchicalShapeStyle.primary.getter();
    v56 = Text.foregroundStyle<A>(_:)();
    v55 = v32;
    v54 = v33;
    v57 = v34;
    sub_100017398(v24, v26, v28 & 1);
  }

  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  type metadata accessor for PromotionalAssetsEntryView(0, &v70);
  sub_10003A100(v16);
  v35 = v62;
  (*(v11 + 104))(v14, enum case for ContentSizeCategory.accessibilityMedium(_:), v62);
  v36 = sub_100172140(v16, v14);
  v37 = *(v11 + 8);
  v37(v14, v35);
  v37(v16, v35);
  if (v36)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  KeyPath = swift_getKeyPath();
  v62 = static Font.subheadline.getter();
  v40 = swift_getKeyPath();
  v61 = v40;
  v41 = v54 & 1;
  v83 = v54 & 1;
  v81 = 0;
  v42 = v64;
  sub_10000BEB8(v21, v64, &qword_1002288C8, &qword_1001BF360);
  v43 = v63;
  sub_10000BEB8(v42, v63, &qword_1002288C8, &qword_1001BF360);
  v44 = v43 + *(sub_1000024C4(&qword_1002288D8, &unk_1001BF3D0) + 48);
  v45 = v56;
  *&v65 = v56;
  v46 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v41;
  *(&v66 + 1) = *v82;
  DWORD1(v66) = *&v82[3];
  v47 = v21;
  v48 = v57;
  *(&v66 + 1) = v57;
  *&v67 = KeyPath;
  *(&v67 + 1) = v38;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v80;
  DWORD1(v68) = *&v80[3];
  *(&v68 + 1) = v40;
  v49 = v62;
  v69 = v62;
  *(v44 + 64) = v62;
  v50 = v66;
  *v44 = v65;
  *(v44 + 16) = v50;
  v51 = v68;
  *(v44 + 32) = v67;
  *(v44 + 48) = v51;
  sub_10000BEB8(&v65, &v70, &qword_100222270, &unk_1001B5940);
  sub_1000050C4(v47, &qword_1002288C8, &qword_1001BF360);
  v70 = v45;
  v71 = v46;
  LOBYTE(v72) = v41;
  *(&v72 + 1) = *v82;
  HIDWORD(v72) = *&v82[3];
  v73 = v48;
  v74 = KeyPath;
  v75 = v38;
  v76 = 0;
  *v77 = *v80;
  *&v77[3] = *&v80[3];
  v78 = v61;
  v79 = v49;
  sub_1000050C4(&v70, &qword_100222270, &unk_1001B5940);
  return sub_1000050C4(v42, &qword_1002288C8, &qword_1001BF360);
}

uint64_t sub_100126A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a4;
  v113 = a5;
  v110 = a2;
  v111 = a3;
  v109 = a6;
  *&v115 = a2;
  *(&v115 + 1) = a3;
  *&v116 = a4;
  *(&v116 + 1) = a5;
  v7 = type metadata accessor for PromotionalAssetsEntryView(0, &v115);
  v107 = *(v7 - 8);
  v104 = *(v107 + 64);
  __chkstk_darwin(v7);
  v105 = &v83 - v8;
  v102 = type metadata accessor for ColorScheme();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for Material();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000024C4(&qword_1002288E0, &qword_1001BF3E0);
  __chkstk_darwin(v90);
  v88 = &v83 - v11;
  v91 = sub_1000024C4(&qword_1002288E8, &qword_1001BF3E8);
  __chkstk_darwin(v91);
  v93 = &v83 - v12;
  v92 = sub_1000024C4(&qword_1002288F0, &qword_1001BF3F0);
  __chkstk_darwin(v92);
  v96 = &v83 - v13;
  v95 = sub_1000024C4(&qword_1002288F8, &qword_1001BF3F8);
  v14 = __chkstk_darwin(v95);
  v103 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v83 - v17;
  __chkstk_darwin(v16);
  v99 = &v83 - v18;
  v19 = sub_1000024C4(&qword_100228900, &qword_1001BF400);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v98 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  sub_100127578(v7, &v115);
  v25 = v115;
  BYTE3(v116) = 1;
  sub_1000024C4(&qword_100228908, &qword_1001BF408);
  sub_1001297C4();
  View.accessibilityHidden(_:)();
  j__swift_release(v25);
  v108 = v7;
  sub_1001247C4(v7);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = *(v20 + 44);
  v97 = v24;
  v27 = &v24[v26];
  v28 = v116;
  *v27 = v115;
  *(v27 + 1) = v28;
  *(v27 + 2) = v117;
  v114[0] = v110;
  v114[1] = v111;
  v114[2] = v112;
  v114[3] = v113;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel(0, v114);

  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  v34 = v33;
  v35 = *(v29 + 56);
  v106 = a1;
  v89 = *(a1 + v35);
  if (v89)
  {
    v36 = v83;
    static Material.thin.getter();
    v37 = v85;
    v87 = Text.foregroundStyle<A>(_:)();
    v86 = v38;
    v40 = v39;
    v42 = v41;
    sub_100017398(v30, v32, v34 & 1);

    (*(v84 + 8))(v36, v37);
  }

  else
  {
    v43 = [objc_opt_self() secondaryLabelColor];
    v114[0] = Color.init(uiColor:)();
    v87 = Text.foregroundStyle<A>(_:)();
    v86 = v44;
    v40 = v45;
    v42 = v46;
    sub_100017398(v30, v32, v34 & 1);
  }

  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v47 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v49 = v88;
  v50 = &v88[*(v90 + 36)];
  v51 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v52 = enum case for Text.Case.uppercase(_:);
  v53 = type metadata accessor for Text.Case();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v50 + v51, v52, v53);
  (*(v54 + 56))(v50 + v51, 0, 1, v53);
  *v50 = swift_getKeyPath();
  v55 = v86;
  *v49 = v87;
  *(v49 + 8) = v55;
  *(v49 + 16) = v40 & 1;
  *(v49 + 24) = v42;
  *(v49 + 32) = KeyPath;
  *(v49 + 40) = v47;
  v56 = swift_getKeyPath();
  v57 = v93;
  sub_10001AE00(v49, v93, &qword_1002288E0, &qword_1001BF3E0);
  v58 = v57 + *(v91 + 36);
  *v58 = v56;
  *(v58 + 8) = 1;
  *(v58 + 16) = 0;
  v59 = swift_getKeyPath();
  if (v89)
  {
    v60 = v101;
    v61 = v100;
    v62 = v102;
    (*(v101 + 104))(v100, enum case for ColorScheme.light(_:), v102);
    v63 = v108;
    v64 = v106;
  }

  else
  {
    v63 = v108;
    v64 = v106;
    v61 = v100;
    sub_100039EE0(v100);
    v62 = v102;
    v60 = v101;
  }

  v65 = v96;
  v66 = &v96[*(v92 + 36)];
  v67 = sub_1000024C4(&qword_100228480, &qword_1001BEE60);
  (*(v60 + 32))(v66 + *(v67 + 28), v61, v62);
  *v66 = v59;
  sub_10001AE00(v57, v65, &qword_1002288E8, &qword_1001BF3E8);
  v68 = v107;
  v69 = v105;
  (*(v107 + 16))(v105, v64, v63);
  v70 = (*(v68 + 80) + 48) & ~*(v68 + 80);
  v71 = swift_allocObject();
  v72 = v111;
  *(v71 + 2) = v110;
  *(v71 + 3) = v72;
  v73 = v113;
  *(v71 + 4) = v112;
  *(v71 + 5) = v73;
  (*(v68 + 32))(&v71[v70], v69, v63);
  v74 = v94;
  sub_10001AE00(v65, v94, &qword_1002288F0, &qword_1001BF3F0);
  v75 = (v74 + *(v95 + 36));
  *v75 = sub_100069438;
  v75[1] = 0;
  v75[2] = sub_100129BAC;
  v75[3] = v71;
  v76 = v99;
  sub_10001AE00(v74, v99, &qword_1002288F8, &qword_1001BF3F8);
  v77 = v97;
  v78 = v98;
  sub_10000BEB8(v97, v98, &qword_100228900, &qword_1001BF400);
  v79 = v103;
  sub_10000BEB8(v76, v103, &qword_1002288F8, &qword_1001BF3F8);
  v80 = v109;
  sub_10000BEB8(v78, v109, &qword_100228900, &qword_1001BF400);
  v81 = sub_1000024C4(&qword_100228928, &unk_1001BF450);
  sub_10000BEB8(v79, v80 + *(v81 + 48), &qword_1002288F8, &qword_1001BF3F8);
  sub_1000050C4(v76, &qword_1002288F8, &qword_1001BF3F8);
  sub_1000050C4(v77, &qword_100228900, &qword_1001BF400);
  sub_1000050C4(v79, &qword_1002288F8, &qword_1001BF3F8);
  return sub_1000050C4(v78, &qword_100228900, &qword_1001BF400);
}

double sub_100127578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v16;
  if ((*(v2 + *(type metadata accessor for PromotionalAssetsEntryViewModel(0, &v29) + 56)) & 1) != 0 || (sub_100039EE0(v15), (*(v10 + 104))(v13, enum case for ColorScheme.light(_:), v9), v17 = static ColorScheme.== infix(_:_:)(), v18 = *(v10 + 8), v18(v13, v9), v18(v15, v9), (v17 & 1) == 0))
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v28 = 1;
  }

  else
  {
    Image.init(_:bundle:)();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v8, v5);
    v25 = v19;
    v26 = 0;
    v27 = 1;
    v28 = 0;
  }

  sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
  sub_100069870();
  _ConditionalContent<>.init(storage:)();
  result = *&v29;
  v22 = v30;
  v23 = BYTE2(v30);
  *a2 = v29;
  *(a2 + 16) = v22;
  *(a2 + 18) = v23;
  return result;
}

uint64_t sub_1001278FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v21 - v10);
  v12 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v12;
  v13 = type metadata accessor for PromotionalAssetsEntryViewModel(0, v23);
  if ((*(v2 + *(v13 + 56)) & 1) != 0 || (sub_100039EE0(v11), (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5), v16 = static ColorScheme.== infix(_:_:)(), v17 = *(v6 + 8), v17(v9, v5), v13 = (v17)(v11, v5), (v16 & 1) == 0))
  {
    v21 = 11;
    v22 = 1;
  }

  else
  {
    v18 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v13 = Color.init(uiColor:)();
    v21 = v13;
    v22 = 0;
  }

  sub_1000055F4(v13, v14, v15);
  result = _ConditionalContent<>.init(storage:)();
  v20 = BYTE8(v23[0]);
  *a2 = *&v23[0];
  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_100127AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v49 = sub_1000024C4(&qword_100228838, &unk_1001BF2C8);
  __chkstk_darwin(v49);
  v51 = (&v44 - v5);
  v50 = type metadata accessor for PhotoBackgroundView(0);
  __chkstk_darwin(v50);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v44 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v46 = *(a1 + 32);
  v47 = v18;
  v19 = v3 + *(a1 + 60);
  v20 = *v19;
  v21 = *(v19 + 8);
  v48 = v3;
  if (v21 == 1)
  {
    v22 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v22 = *v53;
  }

  v24 = v22 * 96.0;
  if (COERCE__INT64(fabs(v22 * 96.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21)
  {
    v25 = *&v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v20, 0);
    result = (*(v8 + 8))(v10, v7);
    v25 = *v53;
  }

  v27 = v25 * 96.0;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v28 = v27;
  v53[0] = v47;
  v53[1] = v46;
  v29 = type metadata accessor for PromotionalAssetsEntryViewModel(0, v53);
  v30 = v48;
  sub_100115600(v24, v28, v29, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000050C4(v13, &qword_1002214F8, &qword_1001B3D20);
    v31 = sub_100115354(v29);
    v32 = *(v30 + *(v29 + 56));
    v33 = v51;
    *v51 = v31;
    *(v33 + 8) = v32;
    swift_storeEnumTagMultiPayload();
    v34 = sub_100129C80(&qword_100228840, type metadata accessor for PhotoBackgroundView, &unk_1001BF600);
    sub_10012817C(v34, v35, v36);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v37 = v44;
    (*(v15 + 32))(v44, v13, v14);
    v38 = *(v30 + *(v29 + 56));
    v39 = v45;
    (*(v15 + 16))(v45, v37, v14);
    v40 = v51;
    *(v39 + *(v50 + 20)) = v38;
    sub_1001281D0(v39, v40, type metadata accessor for PhotoBackgroundView);
    swift_storeEnumTagMultiPayload();
    v41 = sub_100129C80(&qword_100228840, type metadata accessor for PhotoBackgroundView, &unk_1001BF600);
    sub_10012817C(v41, v42, v43);
    _ConditionalContent<>.init(storage:)();
    sub_100128238(v39, type metadata accessor for PhotoBackgroundView);
    return (*(v15 + 8))(v37, v14);
  }
}

unint64_t sub_10012817C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228848;
  if (!qword_100228848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228848);
  }

  return result;
}

uint64_t sub_1001281D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100128238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100128298(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v26 = v14;
    v27 = 0;
    v28 = 257;
    v29 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    v15 = sub_100069870();
    sub_100129CC8(v15, v16, v17);
    _ConditionalContent<>.init(storage:)();

    v18 = v30;
    v19 = v31;
    v20 = v32;
  }

  else
  {
    v26 = *(a2 + *(type metadata accessor for PhotoView(0) + 20));
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v21 = v26;
    sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    v22 = sub_100069870();
    sub_100129CC8(v22, v23, v24);
    _ConditionalContent<>.init(storage:)();
    v25 = v30;
    v19 = v31;
    v20 = v32;
    (*(v11 + 8))(v13, v10);
    v18 = v25;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 18) = v20;
}

uint64_t sub_1001285C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, v2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1001281D0(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10012A780(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotoView);
  sub_1000024C4(&qword_100228AD8, &qword_1001BF688);
  sub_10012A594(&qword_100228AE0, &qword_100228AD8, &qword_1001BF688, sub_100129CC8);
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10012881C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1000024C4(&qword_100228A98, &qword_1001BF650);
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228AA0, &qword_1001BF658);
  __chkstk_darwin(v12);
  v14 = (&v26 - v13);
  v15 = sub_1000024C4(&qword_100228AA8, &qword_1001BF660);
  __chkstk_darwin(v15);
  v17 = (&v26 - v16);
  if (*(v1 + *(type metadata accessor for PhotoBackgroundView(0) + 20)))
  {
    *v14 = static Alignment.center.getter();
    v14[1] = v18;
    v27 = v14 + *(sub_1000024C4(&qword_100228AB0, &unk_1001BF668) + 44);
    v19 = type metadata accessor for URL();
    v28 = a1;
    v29 = v12;
    v20 = v19;
    v21 = *(v19 - 8);
    (*(v21 + 16))(v5, v1, v19);
    (*(v21 + 56))(v5, 0, 1, v20);
    sub_1000024C4(&qword_100227A80, &unk_1001BDBD0);
    sub_10012A594(&qword_100227A88, &qword_100227A80, &unk_1001BDBD0, sub_1000573BC);
    AsyncImage.init(url:scale:transaction:content:)();
    v22 = &v11[*(v6 + 36)];
    *v22 = 0x4039000000000000;
    v22[8] = 0;
    sub_10000BEB8(v11, v9, &qword_100228A98, &qword_1001BF650);
    v23 = v27;
    sub_10000BEB8(v9, v27, &qword_100228A98, &qword_1001BF650);
    *(v23 + *(sub_1000024C4(&qword_100228AB8, &qword_1001BF678) + 48)) = 18;
    sub_1000050C4(v11, &qword_100228A98, &qword_1001BF650);
    sub_1000050C4(v9, &qword_100228A98, &qword_1001BF650);
    sub_10000BEB8(v14, v17, &qword_100228AA0, &qword_1001BF658);
    swift_storeEnumTagMultiPayload();
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0, &qword_1001BF658, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000050C4(v14, &qword_100228AA0, &qword_1001BF658);
  }

  else
  {
    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    *v17 = Color.init(uiColor:)();
    swift_storeEnumTagMultiPayload();
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0, &qword_1001BF658, &protocol conformance descriptor for ZStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100128CAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v17 = v12;
    v18 = 0;
    v19 = 257;
    v20 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  else
  {
    v17 = static Color.blue.getter();
    v18 = 0;
    v19 = 0;
    v20 = 1;
    sub_1000024C4(&qword_100223B58, &qword_1001B7E10);
    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_100069870();
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v16 = v21;
    v14 = v22;
    v15 = v23;
    (*(v9 + 8))(v11, v8);
    v13 = v16;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 18) = v15;
}

uint64_t sub_100128FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002259F8, &qword_1001C1900);
  v9 = __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = *(v5 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v7[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  if (a1)
  {
    v25 = a1;
    v26 = Color.init(cgColor:)();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  v27 = v26;
  sub_10012A780(v7, v14, &type metadata accessor for RoundedRectangle);
  *&v14[*(v8 + 52)] = v27;
  *&v14[*(v8 + 56)] = 256;
  sub_10001AE00(v14, v16, &qword_1002259F8, &qword_1001C1900);
  v28 = Image.init(_:bundle:)();
  v29 = Image.init(systemName:)();
  v48 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001B3B50;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *(v31 + 32) = v32;
  *(v31 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  static Color.black.getter();
  v38 = Color.opacity(_:)();

  sub_10000BEB8(v16, v11, &qword_1002259F8, &qword_1001C1900);
  sub_10000BEB8(v11, a2, &qword_1002259F8, &qword_1001C1900);
  v39 = sub_1000024C4(&qword_100228AF0, &qword_1001BF6A8);
  *(a2 + v39[12]) = 16;
  *(a2 + v39[16]) = v28;
  v40 = (a2 + v39[20]);
  *&v49 = v29;
  *(&v49 + 1) = KeyPath;
  v47 = v11;
  v41 = v48;
  *&v50 = v48;
  *(&v50 + 1) = v33;
  *&v51 = v34;
  *(&v51 + 1) = v35;
  *&v52 = v36;
  *(&v52 + 1) = v37;
  *&v53[0] = v38;
  v46 = xmmword_1001BF170;
  *(v53 + 8) = xmmword_1001BF170;
  *(&v53[1] + 1) = 0x4020000000000000;
  v42 = v52;
  v40[2] = v51;
  v40[3] = v42;
  v43 = v50;
  *v40 = v49;
  v40[1] = v43;
  v44 = v53[1];
  v40[4] = v53[0];
  v40[5] = v44;

  sub_10000BEB8(&v49, v54, &qword_100228AF8, &qword_1001BF6B0);
  sub_1000050C4(v16, &qword_1002259F8, &qword_1001C1900);
  v54[0] = v29;
  v54[1] = KeyPath;
  v54[2] = v41;
  v54[3] = v33;
  v54[4] = v34;
  v54[5] = v35;
  v54[6] = v36;
  v54[7] = v37;
  v54[8] = v38;
  v55 = v46;
  v56 = 0x4020000000000000;
  sub_1000050C4(v54, &qword_100228AF8, &qword_1001BF6B0);

  return sub_1000050C4(v47, &qword_1002259F8, &qword_1001C1900);
}

uint64_t sub_1001294C4@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = sub_1000024C4(&qword_100228AE8, &unk_1001BF690);
  return sub_100128FEC(v4, a2 + *(v6 + 44));
}

double sub_100129514@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    static Alignment.center.getter();
    sub_100129650(a1, v10);
  }

  else
  {
    v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    Color.init(uiColor:)();
  }

  sub_1000024C4(&qword_100228AC8, &qword_1001BF680);
  sub_10000BFFC(&qword_100228AD0, &qword_100228AC8, &qword_1001BF680, &protocol conformance descriptor for ZStack<A>);
  _ConditionalContent<>.init(storage:)();
  result = *v10;
  v7 = v10[1];
  v8 = v11;
  v9 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

uint64_t sub_100129650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    Color.init(cgColor:)();
  }

  else
  {
    static Color.blue.getter();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 17;
  return result;
}

uint64_t sub_10012970C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100228930, &qword_1001BF460);
  __chkstk_darwin(v2 - 8);
  sub_10000BEB8(a1, &v5 - v3, &qword_100228930, &qword_1001BF460);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_1001297C4()
{
  result = qword_100228910;
  if (!qword_100228910)
  {
    sub_10000460C(&qword_100228908, &qword_1001BF408);
    v3 = sub_100129850();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228910);
  }

  return result;
}

unint64_t sub_100129850()
{
  result = qword_100228918;
  if (!qword_100228918)
  {
    sub_10000460C(&qword_100228920, &qword_1001BF410);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228918);
  }

  return result;
}

uint64_t sub_100129900()
{
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v14 = v0[2];
  v2 = v14;
  v15 = v1;
  v16 = v3;
  v17 = v4;
  v5 = type metadata accessor for PromotionalAssetsEntryView(0, &v14);
  v6 = v0 + ((*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80));
  (*(*(v2 - 8) + 8))(v6, v2);
  v14 = v2;
  v15 = v1;
  v16 = v3;
  v17 = v4;
  v7 = *(type metadata accessor for PromotionalAssetsEntryViewModel(0, &v14) + 52);
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(&v6[v7], 1, v1))
  {
    (*(v8 + 8))(&v6[v7], v1);
  }

  v9 = v5[13];
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
  }

  v11 = v5[14];
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
  }

  else
  {
  }

  sub_10001BC5C(*&v6[v5[15]], v6[v5[15] + 8]);

  return swift_deallocObject();
}

uint64_t sub_100129BAC(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11 = v1[2];
  v3 = v11;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  type metadata accessor for PromotionalAssetsEntryView(0, &v11);
  v7 = *a1;
  v8 = a1[1];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v9 = type metadata accessor for PromotionalAssetsEntryView(0, &v11);
  return sub_100124824(v9, v7, v8);
}

uint64_t sub_100129C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100129CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228948;
  if (!qword_100228948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228948);
  }

  return result;
}

uint64_t sub_100129D1C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100129D30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_100129D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100129E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100129ED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100129F88(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012A008(uint64_t *a1, unsigned int a2)
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

uint64_t sub_10012A064(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10012A0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10012A1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10012A26C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10012A320(319, &qword_100223360, type metadata accessor for CGColor, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012A320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10012A388()
{
  result = qword_100228A70;
  if (!qword_100228A70)
  {
    sub_10000460C(&qword_100228830, &unk_1001BF2B8);
    sub_10012A440();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A70);
  }

  return result;
}

unint64_t sub_10012A440()
{
  result = qword_100228A78;
  if (!qword_100228A78)
  {
    sub_10000460C(&qword_100228820, &qword_1001BF2A8);
    sub_10000BFFC(&qword_100228A80, &qword_100228A88, &qword_1001BF508, &protocol conformance descriptor for HStack<A>);
    sub_10000BFFC(&qword_100228A90, &qword_100228828, &qword_1001BF2B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A78);
  }

  return result;
}

uint64_t sub_10012A594(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    sub_100069870();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012A618()
{
  v1 = (type metadata accessor for PhotoView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

void sub_10012A700(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100128298(a1, v6, a2);
}

uint64_t sub_10012A780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10012A7EC()
{
  result = qword_100228B00;
  if (!qword_100228B00)
  {
    sub_10000460C(&qword_100228B08, &qword_1001BF6B8);
    sub_10000BFFC(&qword_100228AC0, &qword_100228AA0, &qword_1001BF658, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B00);
  }

  return result;
}

unint64_t sub_10012A8A8()
{
  result = qword_100228B10;
  if (!qword_100228B10)
  {
    sub_10000460C(&qword_100228B18, &qword_1001BF6C0);
    sub_10000BFFC(&qword_100228AD0, &qword_100228AC8, &qword_1001BF680, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B10);
  }

  return result;
}

uint64_t sub_10012A9FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10012AA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10012AB5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012AC40(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10012AD10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10012ADF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012C130(*a1);
  *a2 = result;
  return result;
}

void sub_10012AE20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656D614E65676170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E656C75646F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6341656C75646F6DLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4449656C646E7562;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_10012AEC8()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_10012AF90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012C17C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012AFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10012B044(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10012AFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228B40;
  if (!qword_100228B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B40);
  }

  return result;
}

uint64_t sub_10012B044(char a1)
{
  result = 0x746E657665;
  switch(a1)
  {
    case 1:
      result = 0x756D2D746E657665;
      break;
    case 2:
      result = 0x70732D746E657665;
      break;
    case 3:
      result = 0x68742D746E657665;
      break;
    case 4:
      result = 0x61642D746E657665;
      break;
    case 5:
      result = 0x72612D746E657665;
      break;
    case 6:
      v3 = 0x45746E657665;
      goto LABEL_15;
    case 7:
      result = 0x747369747261;
      break;
    case 8:
      result = 0x7245747369747261;
      break;
    case 9:
      result = 0x65756E6576;
      break;
    case 10:
      v3 = 0x4565756E6576;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
      break;
    case 11:
      result = 0x7374656B636974;
      break;
    case 12:
      result = 0x737265746C6966;
      break;
    case 13:
      result = 0x746E65746E6F63;
      break;
    case 14:
      result = 0x45746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10012B268(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int sub_10012B314(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_10012B408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10012B470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012C4E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10012B4A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10012B4CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10012B4CC(char a1)
{
  result = 0x7261626C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x726564616568;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x42746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C75646F4D707061;
      break;
    case 7:
      result = 0x707041636973756DLL;
      break;
    case 8:
      result = 0x70417374726F7073;
      break;
    case 9:
      result = 0x737265746C6966;
      break;
    case 10:
      result = 0x694C73746E657665;
      break;
    case 11:
      result = 0x646F4D636973756DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x7473694C746573;
      break;
    case 14:
      result = 0x507473694C746573;
      break;
    case 15:
      result = 0x736F65646976;
      break;
    case 16:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0x676E696D6F637075;
      break;
    default:
      return result;
  }

  return result;
}

id sub_10012B728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(*v3, a2);
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  return v6;
}

uint64_t sub_10012B7A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    v3 = 0x686372616573;
    switch(a1)
    {
      case 1:
        v3 = 0x6572616873;
        break;
      case 2:
        v3 = 0x7373696D736964;
        break;
      case 3:
        v3 = 0x656B636954746567;
        break;
      case 4:
        v3 = 0x6C61436F54646461;
        break;
      case 5:
        v3 = 0x7370614D776F6873;
        break;
      case 6:
        v3 = 0x64616F6C6E776F64;
        break;
      case 7:
        v5 = 0x657461657263;
        goto LABEL_34;
      case 8:
        v3 = 0x7070416E65706FLL;
        break;
      case 9:
        v3 = 0x6973754D6E65706FLL;
        break;
      case 10:
        v3 = 0x726F70536E65706FLL;
        break;
      case 11:
        v3 = 0xD000000000000011;
        break;
      case 12:
        v3 = 0xD000000000000012;
        break;
      case 13:
        v3 = 0x6E6576456E65706FLL;
        break;
      case 14:
        v3 = 0x746C69466E65706FLL;
        break;
      case 15:
        v3 = 0xD000000000000011;
        break;
      case 16:
      case 32:
        v3 = 0xD000000000000013;
        break;
      case 17:
        v3 = 0x676E6F536E65706FLL;
        break;
      case 18:
        v3 = 0x656469566E65706FLL;
        break;
      case 19:
        v3 = 2036427888;
        break;
      case 20:
        v3 = 0x6573756170;
        break;
      case 21:
        v3 = 0x6C69467465736572;
        break;
      case 22:
        v3 = 0x61577463656C6573;
        break;
      case 23:
        v5 = 0x7463656C6573;
LABEL_34:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x6157000000000000;
        break;
      case 24:
        v3 = 0xD000000000000011;
        break;
      case 25:
        v3 = 0x65726F4D776F6873;
        break;
      case 26:
        v3 = 0x6F68506570697773;
        break;
      case 27:
        v3 = 0x6E6F536570697773;
        break;
      case 28:
        v3 = 0x6469566570697773;
        break;
      case 29:
        v3 = 0x6C61576570697773;
        break;
      case 30:
        v3 = 0x7461576570697773;
        break;
      case 31:
        v3 = 0x706C6C6157657375;
        break;
      default:
        break;
    }
  }

  else
  {
    v3 = a1;
  }

  sub_100006C80(a1, a2, a3);
  return v3;
}

id sub_10012BC48()
{
  sub_10012B7A8(*v0, *(v0 + 8), *(v0 + 16));
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

uint64_t sub_10012BCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v28 = type metadata accessor for Art();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Dance();
  v26 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Theater();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Sport();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Music();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  v18 = sub_10005EC40(v34);
  (*(*(a2 - 8) + 16))(v18, v32, a2);
  sub_10002FF80(v34, v33);
  sub_1000024C4(&qword_100228B98, &qword_1001BF820);
  if (swift_dynamicCast())
  {
    (*(v15 + 8))(v17, v14);
    v19 = 1;
  }

  else if (swift_dynamicCast())
  {
    (*(v11 + 8))(v13, v10);
    v19 = 2;
  }

  else if (swift_dynamicCast())
  {
    (*(v29 + 8))(v9, v7);
    v19 = 3;
  }

  else
  {
    v21 = v30;
    v20 = v31;
    if (swift_dynamicCast())
    {
      (*(v26 + 8))(v21, v20);
      v19 = 4;
    }

    else
    {
      v23 = v27;
      v22 = v28;
      if (swift_dynamicCast())
      {
        (*(v25 + 8))(v23, v22);
        v19 = 5;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  sub_100012A7C(v33);
  sub_100012A7C(v34);
  return v19;
}

unint64_t sub_10012C130(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002117E0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10012C17C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211878, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10012C1D8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_10012C228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228BA0;
  if (!qword_100228BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BA0);
  }

  return result;
}

uint64_t sub_10012C280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10012C2CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10012C310(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10012C33C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10012C3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012C494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228BF8[0];
  if (!qword_100228BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100228BF8);
  }

  return result;
}

unint64_t sub_10012C4E8(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10012C554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v9 = type metadata accessor for FeaturedVideosView(0, *(v7 + 80), *(v7 + 88), v8);
  v10 = v9[9];
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  sub_10012C7A4(a3);
  v12 = (a4 + v9[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100131F50(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  *v12 = EnvironmentObject.init()();
  v12[1] = v13;
  v14 = v9[12];
  *(a4 + v14) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  swift_storeEnumTagMultiPayload();
  v15 = v9[13];
  *(a4 + v15) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10012C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10012C7A4(uint64_t a1)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v8 - v6, a1, v4);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v4);
}

void sub_10012C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    if (v5 <= 0x3F)
    {
      type metadata accessor for State();
      if (v6 <= 0x3F)
      {
        sub_100017044(319);
        if (v7 <= 0x3F)
        {
          sub_100039C10(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10012C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_8:

    return v10(v11, a2, v9);
  }

  type metadata accessor for Optional();
  v12 = type metadata accessor for Binding();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = *(a3 + 36);
LABEL_7:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_8;
  }

  v15 = type metadata accessor for State();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = *(a3 + 40);
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + *(a3 + 44));
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + *(a3 + 48);

    return v20(v21, a2, v19);
  }
}

uint64_t sub_10012CBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 36);
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for State();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = *(a4 + 40);
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 44)) = a2;
  }

  else
  {
    v17 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 48);

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void *sub_10012CE10()
{
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t sub_10012CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for TaskPriority();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v64 = *(a1 - 8);
  v66 = *(v64 + 64);
  __chkstk_darwin(v4);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000460C(&qword_1002230E8, &unk_1001B6E80);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v9 = *(a1 + 24);
  v60 = v9;
  type metadata accessor for FeaturedVideoPlayer(255, v7, v9, v10);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v79 = v11;
  v80 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v14 = swift_getWitnessTable();
  v15 = *(v9 + 8);
  v79 = v8;
  v80 = v7;
  v81 = v13;
  v82 = v14;
  v83 = v15;
  type metadata accessor for ForEach();
  v79 = v11;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v17 = swift_getWitnessTable();
  v79 = v16;
  v80 = v17;
  swift_getOpaqueTypeMetadata2();
  v79 = v16;
  v80 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for ScrollView();
  v19 = swift_getWitnessTable();
  v79 = v18;
  v80 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = v18;
  v80 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v79 = OpaqueTypeMetadata2;
  v80 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeMetadata2();
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v26 = swift_getOpaqueTypeConformance2();
  v79 = v25;
  v80 = v7;
  v81 = v26;
  v82 = v15;
  swift_getOpaqueTypeMetadata2();
  v27 = type metadata accessor for ModifiedContent();
  v28 = type metadata accessor for Optional();
  v79 = v25;
  v80 = v7;
  v53 = v7;
  v81 = v26;
  v82 = v15;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _FlexFrameLayout;
  v29 = swift_getWitnessTable();
  v74 = v15[1];
  v30 = swift_getWitnessTable();
  v79 = v27;
  v80 = v28;
  v81 = v29;
  v82 = v30;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v31 = type metadata accessor for VStack();
  v61 = *(v31 - 8);
  __chkstk_darwin(v31);
  v55 = &v53 - v32;
  v56 = swift_getWitnessTable();
  v79 = v31;
  v80 = v56;
  v58 = &unk_1001C94C8;
  v33 = swift_getOpaqueTypeMetadata2();
  v59 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v57 = &v53 - v37;
  static HorizontalAlignment.leading.getter();
  v38 = v60;
  v71 = v7;
  v72 = v60;
  v39 = v65;
  v73 = v65;
  VStack.init(alignment:spacing:content:)();
  v54 = "openContentPhotos";
  v40 = v64;
  v41 = v63;
  v42 = v62;
  (*(v64 + 16))(v63, v39, v62);
  type metadata accessor for MainActor();
  v43 = static MainActor.shared.getter();
  v44 = v40;
  v45 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = v43;
  *(v46 + 3) = &protocol witness table for MainActor;
  *(v46 + 4) = v53;
  *(v46 + 5) = v38;
  (*(v44 + 32))(&v46[v45], v41, v42);
  v47 = v67;
  v48 = v56;
  j___sScP13userInitiatedScPvgZ();
  v49 = v55;
  sub_10000250C(0, v47, 0xD000000000000029, (v54 | 0x8000000000000000), 91, &unk_1001BFC20, v46, v36, v31, v48);
  (*(v68 + 8))(v47, v69);
  (*(v61 + 8))(v49, v31);
  v79 = v31;
  v80 = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_1000EE87C();
  v51 = *(v59 + 8);
  v51(v36, v33);
  sub_1000EE87C();
  return (v51)(v50, v33);
}

uint64_t sub_10012D824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v178 = a1;
  v168 = a5;
  v5 = a2;
  v177 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  v166 = *(v177 - 8);
  v175 = *(v166 + 64);
  __chkstk_darwin(v177);
  v174 = &v121 - v7;
  v8 = type metadata accessor for Optional();
  v167 = *(v8 - 8);
  __chkstk_darwin(v8);
  v165 = &v121 - v9;
  v10 = type metadata accessor for Binding();
  v163 = *(v10 - 8);
  v164 = v10;
  __chkstk_darwin(v10);
  v162 = &v121 - v11;
  v12 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v12 - 8);
  v160 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v161 = *(v14 - 8);
  __chkstk_darwin(v14);
  v159 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContentMarginPlacement();
  v157 = *(v16 - 8);
  v158 = v16;
  __chkstk_darwin(v16);
  v156 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Array();
  v19 = a3;
  v176 = a3;
  type metadata accessor for FeaturedVideoPlayer(255, v5, a3, v20);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  *&v202 = v21;
  *(&v202 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for Optional();
  v24 = swift_getWitnessTable();
  v25 = *(v19 + 8);
  *&v202 = v18;
  *(&v202 + 1) = v5;
  *&v203 = v23;
  *(&v203 + 1) = v24;
  *&v204 = v25;
  v26 = v25;
  type metadata accessor for ForEach();
  *&v202 = v21;
  *(&v202 + 1) = WitnessTable;
  v193[9] = swift_getOpaqueTypeConformance2();
  v193[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v27 = type metadata accessor for LazyHStack();
  v28 = swift_getWitnessTable();
  *&v202 = v27;
  *(&v202 + 1) = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v202 = v27;
  *(&v202 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for ScrollView();
  v153 = *(v29 - 8);
  __chkstk_darwin(v29);
  v140 = &v121 - v30;
  v31 = swift_getWitnessTable();
  *&v202 = v29;
  *(&v202 + 1) = v31;
  v137 = v29;
  v138 = v31;
  v32 = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v152 = *(v33 - 8);
  __chkstk_darwin(v33);
  v139 = &v121 - v34;
  *&v202 = v29;
  *(&v202 + 1) = v32;
  v35 = swift_getOpaqueTypeConformance2();
  *&v202 = v33;
  *(&v202 + 1) = v35;
  v36 = v33;
  v130 = v35;
  v131 = v33;
  v37 = v35;
  v38 = swift_getOpaqueTypeMetadata2();
  v147 = *(v38 - 8);
  __chkstk_darwin(v38);
  v132 = &v121 - v39;
  *&v202 = v36;
  *(&v202 + 1) = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v202 = v38;
  *(&v202 + 1) = v14;
  v41 = v38;
  v127 = v14;
  v128 = v38;
  *&v203 = v40;
  *(&v203 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v42 = v40;
  v129 = v40;
  v43 = swift_getOpaqueTypeMetadata2();
  v144 = *(v43 - 8);
  __chkstk_darwin(v43);
  v126 = &v121 - v44;
  *&v202 = v41;
  *(&v202 + 1) = v14;
  *&v203 = v42;
  *(&v203 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  *&v202 = v43;
  *(&v202 + 1) = v5;
  v46 = v43;
  v122 = v43;
  v123 = v45;
  v169 = v5;
  *&v203 = v45;
  *(&v203 + 1) = v26;
  v47 = v45;
  v133 = swift_getOpaqueTypeMetadata2();
  v142 = *(v133 - 8);
  __chkstk_darwin(v133);
  v125 = &v121 - v48;
  v49 = type metadata accessor for ModifiedContent();
  v154 = *(v49 - 8);
  __chkstk_darwin(v49);
  v173 = &v121 - v50;
  *&v202 = v46;
  *(&v202 + 1) = v5;
  *&v203 = v47;
  *(&v203 + 1) = v26;
  v121 = v26;
  v124 = swift_getOpaqueTypeConformance2();
  v193[6] = v124;
  v193[7] = &protocol witness table for _FlexFrameLayout;
  v155 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v134 = v49;
  v51 = swift_getWitnessTable();
  v170 = v51;
  v193[5] = *(v26 + 8);
  v135 = v8;
  v172 = swift_getWitnessTable();
  *&v202 = v49;
  *(&v202 + 1) = v8;
  *&v203 = v51;
  *(&v203 + 1) = v172;
  v145 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v141 = swift_getOpaqueTypeMetadata2();
  v150 = *(v141 - 8);
  __chkstk_darwin(v141);
  v171 = &v121 - v52;
  v146 = type metadata accessor for ModifiedContent();
  v151 = *(v146 - 8);
  v53 = __chkstk_darwin(v146);
  v136 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v143 = &v121 - v55;
  sub_10012C764(v177, v56, v57, v58);
  sub_100069FD8();

  v59 = Text.init(_:tableName:bundle:comment:)();
  v61 = v60;
  LOBYTE(v8) = v62;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v63 = Text.font(_:)();
  v65 = v64;
  LOBYTE(v5) = v66;
  v68 = v67;

  sub_100017398(v59, v61, v8 & 1);

  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();
  LOBYTE(v202) = v5 & 1;
  LOBYTE(v194) = 0;
  LOBYTE(v8) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v193[0]) = 0;
  *&v194 = v63;
  *(&v194 + 1) = v65;
  LOBYTE(v195) = v5 & 1;
  *(&v195 + 1) = v68;
  *&v196 = KeyPath;
  *(&v196 + 1) = 2;
  LOBYTE(v197) = 0;
  *(&v197 + 1) = v70;
  LOBYTE(v198) = 0;
  *(&v198 + 1) = v202;
  DWORD1(v198) = *(&v202 + 3);
  BYTE8(v198) = v8;
  HIDWORD(v198) = *(&v185 + 3);
  *(&v198 + 9) = v185;
  *&v199 = v71;
  *(&v199 + 1) = v72;
  *&v200 = v73;
  *(&v200 + 1) = v74;
  v201 = 0;
  static Axis.Set.horizontal.getter();
  v75 = v169;
  v179 = v169;
  v180 = v176;
  v76 = v178;
  v181 = v178;
  v77 = v140;
  ScrollView.init(_:showsIndicators:content:)();
  v78 = v177;
  sub_10012C764(v177, v79, v80, v81);
  sub_10006A098();

  v82 = v139;
  v83 = v137;
  View.scrollDisabled(_:)();
  (*(v153 + 8))(v77, v83);
  static Edge.Set.horizontal.getter();
  v84 = v156;
  v85 = v131;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ(v131, v130);
  v86 = v132;
  View.contentMargins(_:_:for:)();
  (*(v157 + 8))(v84, v158);
  (*(v152 + 8))(v82, v85);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v87 = v159;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v89 = v126;
  v88 = v127;
  v90 = v128;
  View.scrollTargetBehavior<A>(_:)();
  (*(v161 + 8))(v87, v88);
  (*(v147 + 8))(v86, v90);
  v91 = v162;
  v92 = v78;
  sub_100120540(v78, &Binding.projectedValue.getter);
  v93 = v125;
  v94 = v122;
  View.scrollPosition<A>(id:anchor:)();
  (*(v163 + 8))(v91, v164);
  (*(v144 + 8))(v89, v94);
  static Alignment.center.getter();
  v95 = v133;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v142 + 8))(v93, v95);
  v96 = v165;
  sub_100120540(v92, &Binding.wrappedValue.getter);
  v97 = v166;
  v164 = *(v166 + 16);
  v98 = v174;
  v164(v174, v76, v92);
  v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v100 = swift_allocObject();
  v101 = v176;
  *(v100 + 16) = v75;
  *(v100 + 24) = v101;
  v166 = *(v97 + 32);
  (v166)(v100 + v99, v98, v92);
  v103 = v134;
  v102 = v135;
  v104 = v173;
  View.onChange<A>(of:initial:_:)();

  (*(v167 + 8))(v96, v102);
  v105 = v104;
  v106 = v103;
  (*(v154 + 8))(v105, v103);
  v107 = v174;
  v108 = v177;
  v164(v174, v178, v177);
  v109 = swift_allocObject();
  v110 = v176;
  *(v109 + 16) = v169;
  *(v109 + 24) = v110;
  (v166)(v109 + v99, v107, v108);
  *&v202 = v106;
  *(&v202 + 1) = v102;
  *&v203 = v170;
  *(&v203 + 1) = v172;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v136;
  v113 = v141;
  v114 = v171;
  View.onAppear(perform:)();

  (*(v150 + 8))(v114, v113);
  v193[2] = v111;
  v193[3] = &protocol witness table for _AppearanceActionModifier;
  v115 = v146;
  v116 = swift_getWitnessTable();
  v117 = v143;
  sub_1000EE87C();
  v118 = v151;
  v119 = *(v151 + 8);
  v119(v112, v115);
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v192 = v201;
  v185 = v194;
  v186 = v195;
  v187 = v196;
  v188 = v197;
  v193[0] = &v185;
  (*(v118 + 16))(v112, v117, v115);
  v193[1] = v112;
  sub_10000BEB8(&v194, &v202, &qword_1002230E8, &unk_1001B6E80);
  v184[0] = sub_1000024C4(&qword_1002230E8, &unk_1001B6E80);
  v184[1] = v115;
  v182 = sub_100055558();
  v183 = v116;
  sub_1000E76FC(v193, 2uLL, v184);
  sub_1000050C4(&v194, &qword_1002230E8, &unk_1001B6E80);
  v119(v117, v115);
  v119(v112, v115);
  v206 = v189;
  v207 = v190;
  v208 = v191;
  v209 = v192;
  v202 = v185;
  v203 = v186;
  v204 = v187;
  v205 = v188;
  return sub_1000050C4(&v202, &qword_1002230E8, &unk_1001B6E80);
}

uint64_t sub_10012EB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v9 = a3;
  v34 = a3;
  type metadata accessor for FeaturedVideoPlayer(255, a2, a3, v10);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v43 = v11;
  v44 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v14 = swift_getWitnessTable();
  v15 = *(v9 + 8);
  v43 = v8;
  v44 = a2;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  type metadata accessor for ForEach();
  v43 = v11;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v33 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = swift_getWitnessTable();
  v43 = v16;
  v44 = v19;
  v31 = v19;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = __chkstk_darwin(OpaqueTypeMetadata2);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v30 - v25;
  v38 = a2;
  v39 = v34;
  v40 = v36;
  static VerticalAlignment.center.getter();
  sub_100130E10();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v27 = v31;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v18, v16);
  v43 = v16;
  v44 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v28 = *(v21 + 8);
  v28(v24, OpaqueTypeMetadata2);
  sub_1000EE87C();
  return (v28)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_10012EFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a5;
  v8 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v45 = *(v9 + 64);
  __chkstk_darwin(v8);
  v44 = v37 - v10;
  v11 = type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer(255, a2, a3, v12);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v39 = v13;
  WitnessTable = swift_getWitnessTable();
  v52 = v13;
  v53 = WitnessTable;
  v37[2] = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v38 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for Optional();
  v37[1] = v15;
  v42 = v11;
  v16 = swift_getWitnessTable();
  v40 = *(a3 + 8);
  v41 = v16;
  v52 = v11;
  v53 = a2;
  v54 = v15;
  v55 = v16;
  v56 = v40;
  v17 = type metadata accessor for ForEach();
  v43 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v37 - v21;
  v23 = v8;
  sub_10012C764(v8, v24, v25, v26);
  v27 = sub_10006A4B0();

  v51 = v27;
  v47 = a2;
  v48 = a3;
  v37[0] = swift_getKeyPath();
  v28 = v9;
  v29 = *(v9 + 16);
  v30 = v44;
  v29(v44, a1, v23);
  v31 = v28;
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  (*(v31 + 32))(v33 + v32, v30, v23);
  v52 = v39;
  v53 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v49 = v36;
  swift_getWitnessTable();
  sub_1000EE87C();
  v34 = *(v43 + 8);
  v34(v20, v17);
  sub_1000EE87C();
  return (v34)(v22, v17);
}

uint64_t sub_10012F488@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a1;
  v143 = a3;
  v138 = a2;
  v141 = a5;
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin(v7);
  v119 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000024C4(&qword_100222958, &unk_1001B6FA0);
  v9 = __chkstk_darwin(v133);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v109 - v11;
  v12 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  v13 = __chkstk_darwin(v12 - 8);
  v118 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v123 = &v109 - v16;
  v17 = __chkstk_darwin(v15);
  v120 = (&v109 - v18);
  v19 = __chkstk_darwin(v17);
  v122 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = &v109 - v22;
  __chkstk_darwin(v21);
  v136 = (&v109 - v23);
  type metadata accessor for FeaturedVideoPlayer(255, a3, a4, v24);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  v25 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v125 = v25;
  v124 = WitnessTable;
  v27 = type metadata accessor for VStack();
  v129 = *(v27 - 8);
  __chkstk_darwin(v27);
  v137 = &v109 - v28;
  v29 = swift_getWitnessTable();
  v147 = v27;
  v148 = v29;
  v140 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  v31 = __chkstk_darwin(OpaqueTypeMetadata2);
  v128 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v134 = &v109 - v34;
  __chkstk_darwin(v33);
  v130 = &v109 - v35;
  v36 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v36 - 8);
  v38 = &v109 - v37;
  v39 = type metadata accessor for URL();
  v144 = *(v39 - 8);
  v145 = v39;
  __chkstk_darwin(v39);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Optional();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v109 - v47;
  v49 = *(a4 + 48);
  v126 = a4;
  v49(v143);
  v112 = v46;
  v114 = v43;
  v117 = OpaqueTypeMetadata2;
  v113 = v48;
  v116 = v27;
  v115 = v42;
  v50 = v144;
  v51 = v145;
  (*(v144 + 56))(v38, 0, 1, v145);
  (*(v50 + 32))(v41, v38, v51);
  v52 = static HorizontalAlignment.leading.getter();
  __chkstk_darwin(v52);
  v53 = v143;
  v54 = v126;
  *(&v109 - 6) = v143;
  *(&v109 - 5) = v54;
  *(&v109 - 4) = v142;
  *(&v109 - 3) = v41;
  v142 = v41;
  *(&v109 - 2) = v138;
  VStack.init(alignment:spacing:content:)();
  LODWORD(v125) = static Axis.Set.horizontal.getter();
  v143 = type metadata accessor for FeaturedVideosView(0, v53, v54, v55);
  v56 = v136;
  sub_100039F08(v136);
  v57 = v131;
  v58 = v132;
  v59 = v135;
  v111 = *(v131 + 104);
  v111(v135, enum case for UserInterfaceSizeClass.regular(_:), v132);
  v60 = *(v57 + 56);
  v124 = v57 + 56;
  v110 = v60;
  v60(v59, 0, 1, v58);
  v61 = *(v133 + 48);
  v62 = v127;
  sub_10000BEB8(v56, v127, &qword_100221730, qword_1001B6530);
  sub_10000BEB8(v59, v62 + v61, &qword_100221730, qword_1001B6530);
  v63 = *(v57 + 48);
  v64 = v63(v62, 1, v58);
  v126 = v63;
  if (v64 == 1)
  {
    sub_1000050C4(v135, &qword_100221730, qword_1001B6530);
    sub_1000050C4(v136, &qword_100221730, qword_1001B6530);
    v65 = v62;
    v66 = v62 + v61;
    v67 = v58;
    v68 = v63(v66, 1, v58);
    v69 = v134;
    if (v68 == 1)
    {
      v70 = v117;
LABEL_9:
      v80 = v130;
      sub_1000050C4(v65, &qword_100221730, qword_1001B6530);
LABEL_16:
      sub_10012C764(v143, v81, v82, v83);
      sub_10006A034();

      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v71 = v122;
  sub_10000BEB8(v62, v122, &qword_100221730, qword_1001B6530);
  v72 = v63(v62 + v61, 1, v58);
  v69 = v134;
  if (v72 == 1)
  {
    v65 = v62;
    sub_1000050C4(v135, &qword_100221730, qword_1001B6530);
    sub_1000050C4(v136, &qword_100221730, qword_1001B6530);
    v67 = v132;
    (*(v57 + 8))(v71);
LABEL_6:
    sub_1000050C4(v65, &qword_100222958, &unk_1001B6FA0);
    goto LABEL_7;
  }

  v85 = v62 + v61;
  v86 = v119;
  v87 = v132;
  (*(v57 + 32))(v119, v85, v132);
  sub_100131F50(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  v89 = *(v57 + 8);
  v89(v86, v87);
  sub_1000050C4(v135, &qword_100221730, qword_1001B6530);
  sub_1000050C4(v136, &qword_100221730, qword_1001B6530);
  v90 = v62;
  v67 = v87;
  v89(v122, v87);
  sub_1000050C4(v90, &qword_100221730, qword_1001B6530);
  v70 = v117;
  v80 = v130;
  if (v88)
  {
    goto LABEL_16;
  }

LABEL_7:
  v73 = v120;
  sub_100039F08(v120);
  v74 = v123;
  v111(v123, enum case for UserInterfaceSizeClass.compact(_:), v67);
  v75 = v67;
  v110(v74, 0, 1, v67);
  v76 = *(v133 + 48);
  v65 = v121;
  sub_10000BEB8(v73, v121, &qword_100221730, qword_1001B6530);
  sub_10000BEB8(v74, v65 + v76, &qword_100221730, qword_1001B6530);
  v77 = v67;
  v78 = v126;
  if (v126(v65, 1, v77) == 1)
  {
    sub_1000050C4(v74, &qword_100221730, qword_1001B6530);
    sub_1000050C4(v73, &qword_100221730, qword_1001B6530);
    v79 = v78(v65 + v76, 1, v75);
    v70 = v117;
    v69 = v134;
    if (v79 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v84 = v118;
  sub_10000BEB8(v65, v118, &qword_100221730, qword_1001B6530);
  if (v78(v65 + v76, 1, v75) == 1)
  {
    sub_1000050C4(v123, &qword_100221730, qword_1001B6530);
    sub_1000050C4(v73, &qword_100221730, qword_1001B6530);
    (*(v131 + 8))(v84, v75);
    v70 = v117;
    v69 = v134;
LABEL_12:
    sub_1000050C4(v65, &qword_100222958, &unk_1001B6FA0);
    v80 = v130;
    goto LABEL_17;
  }

  v91 = v131;
  v92 = v73;
  v93 = v119;
  (*(v131 + 32))(v119, v65 + v76, v75);
  sub_100131F50(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v95 = *(v91 + 8);
  v95(v93, v75);
  sub_1000050C4(v123, &qword_100221730, qword_1001B6530);
  sub_1000050C4(v92, &qword_100221730, qword_1001B6530);
  v95(v84, v75);
  sub_1000050C4(v65, &qword_100221730, qword_1001B6530);
  v70 = v117;
  v80 = v130;
  v69 = v134;
  if (v94)
  {
    goto LABEL_16;
  }

LABEL_17:
  static Alignment.center.getter();
  v96 = v116;
  v97 = v140;
  v98 = v137;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v129 + 8))(v98, v96);
  v147 = v96;
  v148 = v97;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v99 = v69;
  v100 = v80;
  v101 = v139;
  v102 = *(v139 + 8);
  v102(v99, v70);
  v103 = v128;
  sub_1000EE87C();
  v102(v100, v70);
  v104 = v112;
  (*(v101 + 32))(v112, v103, v70);
  (*(v101 + 56))(v104, 0, 1, v70);
  v105 = v113;
  sub_1000E7690(v104, v113);
  v106 = *(v114 + 8);
  v107 = v115;
  v106(v104, v115);
  (*(v144 + 8))(v142, v145);
  v147 = v96;
  v148 = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1000EE87C();
  return (v106)(v105, v107);
}

uint64_t sub_100130518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a3;
  v77 = a2;
  v86 = a1;
  v82 = a6;
  v80 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v80);
  v81 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  __chkstk_darwin(v9 - 8);
  v74 = &v71 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v18;
  v19 = a5;
  v21 = type metadata accessor for FeaturedVideoPlayer(0, a4, a5, v20);
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v71 - v24;
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  v84 = type metadata accessor for ModifiedContent();
  v87 = *(v84 - 8);
  v25 = __chkstk_darwin(v84);
  v83 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v85 = &v71 - v27;
  (*(v16 + 16))(v18, v86, a4);
  v28 = v15;
  (*(v12 + 16))(v15, v77, v11);
  v29 = a4;
  v30 = a4;
  v31 = v19;
  v33 = type metadata accessor for FeaturedVideosView(0, v29, v19, v32);
  sub_10012C764(v33, v34, v35, v36);
  LOBYTE(v16) = sub_100069E20();

  v37 = v74;
  sub_10012CE10();
  v38 = v16 & 1;
  v39 = v30;
  sub_1000FBA34(v72, v28, v38, v37, v30, v19, v23);
  WitnessTable = swift_getWitnessTable();
  v41 = v73;
  View.aspectRatio(_:contentMode:)();
  (*(v75 + 8))(v23, v21);
  if (static Solarium.isEnabled.getter())
  {
    v42 = 16.0;
  }

  else
  {
    v42 = 8.0;
  }

  v43 = *(v80 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = v81;
  (*(*(v45 - 8) + 104))(v81 + v43, v44, v45);
  *v46 = v42;
  v46[1] = v42;
  v47 = v46;
  v98[5] = WitnessTable;
  v98[6] = &protocol witness table for _AspectRatioLayout;
  v48 = v76;
  v49 = swift_getWitnessTable();
  sub_100131F50(&qword_100228C80, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v50 = v83;
  View.clipShape<A>(_:style:)();
  sub_100039768(v47);
  (*(v79 + 8))(v41, v48);
  v51 = sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
  v98[3] = v49;
  v98[4] = v51;
  v52 = v84;
  v80 = swift_getWitnessTable();
  sub_1000EE87C();
  v81 = *(v87 + 8);
  (v81)(v50, v52);
  v91 = (*(v31 + 56))(v39, v31);
  v92 = v53;
  sub_10001877C(v91, v53, v54);
  v55 = Text.init<A>(_:)();
  v57 = v56;
  LOBYTE(v50) = v58;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v59 = Text.font(_:)();
  v61 = v60;
  LOBYTE(v52) = v62;
  v64 = v63;

  sub_100017398(v55, v57, v50 & 1);

  KeyPath = swift_getKeyPath();
  v66 = v83;
  v67 = v85;
  v68 = v84;
  (*(v87 + 16))(v83, v85, v84);
  v91 = v59;
  v92 = v61;
  LOBYTE(v52) = v52 & 1;
  v93 = v52;
  v94 = v64;
  v95 = KeyPath;
  v96 = 1;
  v97 = 0;
  v98[0] = v66;
  v98[1] = &v91;
  sub_1000187D8(v59, v61, v52);

  v90[0] = v68;
  v90[1] = sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  v88 = v80;
  v89 = sub_10001B3F8();
  sub_1000E76FC(v98, 2uLL, v90);
  sub_100017398(v59, v61, v52);

  v69 = v81;
  (v81)(v67, v68);
  sub_100017398(v91, v92, v93);

  return (v69)(v66, v68);
}

uint64_t sub_100130E10()
{
  type metadata accessor for PinnedScrollableViews();
  sub_100131F50(&qword_1002259D0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

void sub_100130E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  sub_10012C764(v5, v6, v7, v8);
  v9 = [objc_opt_self() defaultCenter];
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_100239100 object:0 userInfo:0];

  sub_10012C764(v5, v10, v11, v12);
  if (*(a1 + *(v5 + 44)))
  {

    sub_10006A16C(v13);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100131F50(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100130FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v18 = type metadata accessor for FeaturedVideosView(0, a2, a3, v17);
  v32 = a1;
  sub_100120540(v18, &Binding.wrappedValue.getter);
  v19 = *(v6 + 48);
  LODWORD(a3) = v19(v16, 1, a2);
  v31 = *(v9 + 8);
  result = v31(v16, v8);
  if (a3 == 1)
  {
    v28 = v6;
    sub_10012C764(v18, v21, v22, v23);
    v24 = sub_10006A4B0();

    v33 = v24;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v19(v14, 1, a2) == 1)
    {
      v31(v14, v8);
    }

    else
    {
      v25 = v28;
      v26 = v30;
      (*(v28 + 32))(v30, v14, a2);

      v27 = v29;
      (*(v25 + 16))(v29, v26, a2);
      (*(v25 + 56))(v27, 0, 1, a2);
      sub_100131A14(v27, v18);
      v31(v27, v8);
      return (*(v25 + 8))(v26, a2);
    }
  }

  return result;
}

uint64_t sub_100131354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001313F0, v7, v6);
}

uint64_t sub_1001313F0()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for FeaturedVideosView(0, v2, v1, v3);
  sub_10012C764(v4, v5, v6, v7);
  sub_10008C108();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100131490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for FeaturedVideosView(0, v5, v6, a4);
  v23 = *(*(v7 - 1) + 80);
  swift_unknownObjectRelease();
  v8 = v4 + ((v23 + 48) & ~v23);
  type metadata accessor for FeaturedVideosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = v8 + v7[9];

  type metadata accessor for Optional();
  v12 = *(type metadata accessor for Binding() + 32);
  v13 = *(v5 - 8);
  v14 = *(v13 + 48);
  if (!v14(v11 + v12, 1, v5))
  {
    (*(v13 + 8))(v11 + v12, v5);
  }

  v15 = v8 + v7[10];
  if (!v14(v15, 1, v5))
  {
    (*(v13 + 8))(v15, v5);
  }

  type metadata accessor for State();

  v16 = v7[12];
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v8 + v16, 1, v17))
    {
      (*(v18 + 8))(v8 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v7[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100131834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for FeaturedVideosView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000BD00;

  return sub_100131354(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_10013197C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FeaturedVideosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_100131A14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100131B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for FeaturedVideosView(0, v5, v6, a4);
  v23 = *(*(v7 - 1) + 80);
  v8 = v4 + ((v23 + 32) & ~v23);
  type metadata accessor for FeaturedVideosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = v8 + v7[9];

  type metadata accessor for Optional();
  v12 = *(type metadata accessor for Binding() + 32);
  v13 = *(v5 - 8);
  v14 = *(v13 + 48);
  if (!v14(v11 + v12, 1, v5))
  {
    (*(v13 + 8))(v11 + v12, v5);
  }

  v15 = v8 + v7[10];
  if (!v14(v15, 1, v5))
  {
    (*(v13 + 8))(v15, v5);
  }

  type metadata accessor for State();

  v16 = v7[12];
  sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v8 + v16, 1, v17))
    {
      (*(v18 + 8))(v8 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v7[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100131EA4@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FeaturedVideosView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10012F488(a1, v9, v6, v7, a3);
}

uint64_t sub_100131F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100131F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000460C(&qword_1002230E8, &unk_1001B6E80);
  type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer(255, v1, v2, v3);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221B38, &unk_1001B4FA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

Swift::Int sub_1001324F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132560(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1001325B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132614(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1001326BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228C88;
  if (!qword_100228C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C88);
  }

  return result;
}

unint64_t sub_100132710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100132740(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_100132794(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100132740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228C90;
  if (!qword_100228C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C90);
  }

  return result;
}

unint64_t sub_100132794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228C98;
  if (!qword_100228C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C98);
  }

  return result;
}

uint64_t sub_1001327F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  result = ResourceID.init(_:)();
  qword_100239120 = result;
  *algn_100239128 = v5;
  return result;
}

Swift::Int sub_1001328E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100132938()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100132980(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1001329B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228CA0;
  if (!qword_100228CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CA0);
  }

  return result;
}

unint64_t sub_100132A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100132A38(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_100132A8C(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100132A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228CA8;
  if (!qword_100228CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CA8);
  }

  return result;
}

unint64_t sub_100132A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228CB0;
  if (!qword_100228CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228CB0);
  }

  return result;
}

uint64_t sub_100132AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100132C38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ErrorView(uint64_t a1)
{
  result = qword_100228D50;
  if (!qword_100228D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100132DA4(uint64_t a1)
{
  sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_100017044(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100132E94()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100228CB8 = result;
  unk_100228CC0 = v1;
  byte_100228CC8 = v2 & 1;
  qword_100228CD0 = v3;
  return result;
}

uint64_t sub_100132EDC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100228CD8 = result;
  unk_100228CE0 = v1;
  byte_100228CE8 = v2 & 1;
  qword_100228CF0 = v3;
  return result;
}

uint64_t sub_100132F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a1;
  v27[1] = a2;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_1000024C4(&qword_100228DC0, &unk_1001BFF20);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  v13 = sub_1000024C4(&qword_100228DB0, &qword_1001BFF18);
  __chkstk_darwin(v13 - 8);
  v15 = v27 - v14;
  v16 = sub_1000024C4(&qword_100228D98, &unk_1001BFF08);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  ContentUnavailableView.init(label:description:actions:)();
  sub_10000BFFC(&qword_100228DB8, &qword_100228DC0, &unk_1001BFF20, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  View.accessibilityIdentifier(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for ErrorView(0);
  sub_100039EE0(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  LOBYTE(v10) = static ColorScheme.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v10)
  {
    if (qword_100220B90 != -1)
    {
      swift_once();
    }

    v20 = qword_1002390B0;
  }

  else
  {
    v20 = static Color.black.getter();
  }

  v21 = static Edge.Set.all.getter();
  v22 = sub_100134128(v15, v18);
  v23 = &v18[*(v16 + 36)];
  *v23 = v20;
  v23[8] = v21;
  __chkstk_darwin(v22);
  sub_1000024C4(&qword_100226950, &qword_1001BC8D0);
  sub_100133F88();
  v24 = sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  v25 = sub_1000ED768();
  v27[2] = v24;
  v27[3] = v25;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1001341A0(v18);
}

uint64_t sub_1001333D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100220C08 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100017398(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100133554@<X0>(uint64_t a1@<X8>)
{
  if (qword_100220C10 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_100017398(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10013368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000024C4(&qword_1002245E8, &unk_1001B90B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v30 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v28 - v9;
  v31 = sub_1000024C4(&qword_1002245F8, &unk_1001B90C0);
  v11 = __chkstk_darwin(v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = *(type metadata accessor for ErrorView(0) + 24);
  v29 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v33 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
        v34 = v30;
        v35 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v33;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000EDDE4(v13);
LABEL_8:
        sub_1000ED768();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000EDDE4(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v22 = v30;
    v23 = __chkstk_darwin(v21);
    *(&v28 - 2) = v29;
    sub_10008B1A4(v23, v24, v25);
    ToolbarItem<>.init(placement:content:)();
    v26 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v34 = v22;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    v20 = v33;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100133B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_100134210(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_1000172FC;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_100133E64()
{
  sub_1000024C4(&qword_100228D90, &qword_1001BFF00);
  sub_10000460C(&qword_100228D98, &unk_1001BFF08);
  sub_10000460C(&qword_100226950, &qword_1001BC8D0);
  sub_100133F88();
  sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  sub_1000ED768();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100133F88()
{
  result = qword_100228DA0;
  if (!qword_100228DA0)
  {
    sub_10000460C(&qword_100228D98, &unk_1001BFF08);
    sub_100134040();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228DA0);
  }

  return result;
}

unint64_t sub_100134040()
{
  result = qword_100228DA8;
  if (!qword_100228DA8)
  {
    sub_10000460C(&qword_100228DB0, &qword_1001BFF18);
    sub_10000BFFC(&qword_100228DB8, &qword_100228DC0, &unk_1001BFF20, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228DA8);
  }

  return result;
}

uint64_t sub_100134128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228DB0, &qword_1001BFF18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001341A0(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100228D98, &unk_1001BFF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100134210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100134280()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void *sub_100134424()
{
  v0 = type metadata accessor for Song();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100228EE0, &qword_1001C0000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EE8, &qword_1001C0008);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228EF0, &qword_1001C0010);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.topSongs.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228EF0, &qword_1001C0010);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228EF8, &qword_100228EE0, &qword_1001C0000, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100228F00, &qword_100228EE0, &qword_1001C0000, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10018963C(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_10018963C((v23 > 1), v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EE8, &qword_1001C0008);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_1001348EC()
{
  v0 = type metadata accessor for Playlist();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100224D88, &qword_1001B9F60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EC8, &qword_1001BFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228ED0, &qword_1001BFFF8);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredPlaylists.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228ED0, &qword_1001BFFF8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228ED8, &qword_100224D88, &qword_1001B9F60, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100224DC0, &qword_100224D88, &qword_1001B9F60, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001899A8(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_1001899A8((v23 > 1), v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EC8, &qword_1001BFFF0);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100134DB4()
{
  v0 = type metadata accessor for Album();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_1000024C4(&qword_100228EA0, &qword_1001BFFD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100228EA8, &qword_1001BFFD8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000024C4(&qword_100228EB0, &unk_1001BFFE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredAlbums.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000050C4(v14, &qword_100228EB0, &unk_1001BFFE0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000BFFC(&qword_100228EB8, &qword_100228EA0, &qword_1001BFFD0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000BFFC(&qword_100228EC0, &qword_100228EA0, &qword_1001BFFD0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = _swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001899D0(0, v15[2] + 1, 1, v15);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_1001899D0((v23 > 1), v24 + 1, 1, v15);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_1000050C4(v11, &qword_100228EA8, &qword_1001BFFD8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

uint64_t sub_10013528C(uint64_t a1)
{
  result = sub_1001354E8(&qword_100228E40, &type metadata accessor for Artist, &unk_1001BFF5C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10013532C()
{
  Artist.id.getter();

  return ResourceID.init(_:)();
}

double sub_100135358()
{
  sub_1000024C4(&qword_100228E98, &qword_1001BFFC8);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  return result;
}

uint64_t sub_100135464(uint64_t a1)
{
  *(a1 + 8) = sub_1001354E8(&qword_100228E88, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  result = sub_1001354E8(&qword_100228E90, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001354E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000024C4(&qword_100228F08, &qword_1001C00B8);
  __chkstk_darwin(v10);
  v12 = &v40[-v11];
  *v12 = static Alignment.center.getter();
  v12[1] = v13;
  v14 = sub_1000024C4(&qword_100228F10, &qword_1001C00C0);
  sub_1001358DC(a1, a2, a3, v12 + *(v14 + 44));
  v15 = v12 + *(sub_1000024C4(&qword_100228F18, &qword_1001C00C8) + 36);
  *v15 = 0x3FFC71C71C71C71CLL;
  *(v15 + 4) = 0;
  v16 = *(v7 + 28);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  __asm { FMOV            V0.2D, #24.0 }

  *v9 = _Q0;
  static Color.black.getter();
  v24 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v25 = v12 + *(sub_1000024C4(&qword_100228F20, &qword_1001C00D0) + 36);
  sub_100039704(v9, v25);
  v26 = v25 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v27 = v41;
  *v26 = *&v40[8];
  *(v26 + 16) = v27;
  *(v26 + 32) = v42;
  v28 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *(v25 + *(v28 + 52)) = v24;
  *(v25 + *(v28 + 56)) = 256;
  v29 = static Alignment.center.getter();
  v31 = v30;
  sub_100039768(v9);
  v32 = (v25 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = static Alignment.center.getter();
  v35 = v34;
  v36 = (v25 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
  *v36 = v33;
  v36[1] = v35;
  static Color.black.getter();
  v37 = Color.opacity(_:)();

  v38 = v12 + *(sub_1000024C4(&qword_100228F28, &qword_1001C00D8) + 36);
  *v38 = v37;
  *(v38 + 8) = xmmword_1001BDB40;
  *(v38 + 3) = 0x4024000000000000;
  *(v12 + *(v10 + 36)) = 1;
  sub_100136000();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v12, &qword_100228F08, &qword_1001C00B8);
}

uint64_t sub_1001358DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a1;
  v51 = a4;
  v47 = type metadata accessor for Image.ResizingMode();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_100228F60, &qword_1001C00E8);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v49 = sub_1000024C4(&qword_100228F68, &qword_1001C00F0) - 8;
  v10 = __chkstk_darwin(v49);
  v50 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v46 - v12;
  v14 = sub_1000024C4(&qword_100228F70, &qword_1001C00F8);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v48 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v46 - v18;
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #24.0 }

  *v19 = _Q0;

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v28 = &v19[*(v15 + 60)];
  v29 = v53;
  *v28 = v52;
  *(v28 + 1) = v29;
  *(v28 + 4) = v54;
  *&v19[*(v15 + 64)] = 256;

  Image.init(systemName:)();
  v30 = enum case for Image.TemplateRenderingMode.original(_:);
  v31 = type metadata accessor for Image.TemplateRenderingMode();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v9, v30, v31);
  (*(v32 + 56))(v9, 0, 1, v31);
  Image.renderingMode(_:)();

  sub_1000050C4(v9, &qword_100228F60, &qword_1001C00E8);
  v33 = v47;
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v47);
  v34 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v33);
  v55 = v34;
  LOWORD(v56) = 1;
  *(&v56 + 1) = 0x3FFC71C71C71C71CLL;
  LOWORD(v57) = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000024C4(&qword_100228F78, &qword_1001C0100);
  sub_100136288();
  View.containerRelativeFrame(_:alignment:_:)();

  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1001B3B50;
  static Color.white.getter();
  v36 = Color.opacity(_:)();

  *(v35 + 32) = v36;
  *(v35 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Color.white.getter();
  Color.opacity(_:)();

  v37 = &v13[*(sub_1000024C4(&qword_100228F88, &qword_1001C0108) + 36)];
  sub_1000024C4(&qword_100228F90, &qword_1001C0110);
  static ShadowStyle.inner(color:radius:x:y:)();

  v38 = v56;
  *v37 = v55;
  *(v37 + 1) = v38;
  *(v37 + 4) = v57;
  static Color.black.getter();
  Color.opacity(_:)();

  sub_1000024C4(&qword_100228F98, &qword_1001C0118);
  static ShadowStyle.inner(color:radius:x:y:)();

  static Color.black.getter();
  v39 = Color.opacity(_:)();

  v40 = v48;
  v41 = &v13[*(v49 + 44)];
  *v41 = v39;
  *(v41 + 8) = xmmword_1001BF170;
  *(v41 + 3) = 0x4010000000000000;
  sub_100136314(v19, v40);
  v42 = v50;
  sub_100136384(v13, v50);
  v43 = v51;
  sub_100136314(v40, v51);
  v44 = sub_1000024C4(&qword_100228FA0, &qword_1001C0120);
  sub_100136384(v42, v43 + *(v44 + 48));
  sub_1000050C4(v13, &qword_100228F68, &qword_1001C00F0);
  sub_1000050C4(v19, &qword_100228F70, &qword_1001C00F8);
  sub_1000050C4(v42, &qword_100228F68, &qword_1001C00F0);
  return sub_1000050C4(v40, &qword_100228F70, &qword_1001C00F8);
}

unint64_t sub_100136000()
{
  result = qword_100228F30;
  if (!qword_100228F30)
  {
    sub_10000460C(&qword_100228F08, &qword_1001C00B8);
    v3 = sub_10013608C();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F30);
  }

  return result;
}

unint64_t sub_10013608C()
{
  result = qword_100228F38;
  if (!qword_100228F38)
  {
    sub_10000460C(&qword_100228F28, &qword_1001C00D8);
    sub_100136118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F38);
  }

  return result;
}

unint64_t sub_100136118()
{
  result = qword_100228F40;
  if (!qword_100228F40)
  {
    sub_10000460C(&qword_100228F20, &qword_1001C00D0);
    sub_1001361D0();
    sub_10000BFFC(&qword_100227AF8, &qword_100224440, &qword_1001B9A40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F40);
  }

  return result;
}

unint64_t sub_1001361D0()
{
  result = qword_100228F48;
  if (!qword_100228F48)
  {
    sub_10000460C(&qword_100228F18, &qword_1001C00C8);
    sub_10000BFFC(&qword_100228F50, &qword_100228F58, &qword_1001C00E0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F48);
  }

  return result;
}

unint64_t sub_100136288()
{
  result = qword_100228F80;
  if (!qword_100228F80)
  {
    sub_10000460C(&qword_100228F78, &qword_1001C0100);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228F80);
  }

  return result;
}

uint64_t sub_100136314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228F70, &qword_1001C00F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100136384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100228F68, &qword_1001C00F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001363F8()
{
  result = qword_100228FA8;
  if (!qword_100228FA8)
  {
    sub_10000460C(&qword_100228FB0, &qword_1001C0128);
    sub_100136000();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228FA8);
  }

  return result;
}

uint64_t sub_100136484()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100136530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs);
}

double sub_1001365E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1001366B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v5 + v3, a1, &qword_1002224D8, &qword_1001B7440);
}

uint64_t sub_100136788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &qword_1002224D8, &qword_1001B7440);
}

uint64_t sub_100136860(uint64_t a1, uint64_t *a2)
{
  sub_10000BEB8(a1, v3, &qword_1002224D8, &qword_1001B7440);
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(v3, &qword_1002224D8, &qword_1001B7440);
}

uint64_t sub_100136968(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  sub_100139F14(a2, a1 + v4, &qword_1002224D8, &qword_1001B7440);
  return swift_endAccess();
}

uint64_t sub_1001369E4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000BEB8(v5 + v3, a1, &unk_100227380, &unk_1001B74B0);
}

uint64_t sub_100136ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &unk_100227380, &unk_1001B74B0);
}

uint64_t sub_100136B94(uint64_t a1, uint64_t *a2)
{
  sub_10000BEB8(a1, v3, &unk_100227380, &unk_1001B74B0);
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(v3, &unk_100227380, &unk_1001B74B0);
}

uint64_t sub_100136C9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_100139F14(a2, a1 + v4, &unk_100227380, &unk_1001B74B0);
  return swift_endAccess();
}

void *sub_100136D18()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  v2 = v1;
  return v1;
}

id sub_100136DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  *a2 = v4;

  return v4;
}

void sub_100136E88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  v5 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10006054C(0, &qword_100229100, AVPlayer_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100137020()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
}

void sub_1001370C8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
}

double sub_100137178(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100137288(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v5 = *(v3 + 16);
  }

  if ((*&v4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v4 & 0x7FF0000000000000) == 0 || v4 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  *a2 = v8;
}

double sub_100137364()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_100137404(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v4 - 8);
  v6 = (v46 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v47 = v10;
    v48 = v6;
    sub_10002FF80(a1 + 32, v52);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v46[-2] = v2;
    v46[-1] = a1;
    v50[0] = v2;
    v13 = sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v46[0] = 0;

    if (v11 != 1)
    {
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BE10(v14, qword_100239158);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Only playing first song in playlist.", v17, 2u);
      }
    }

    swift_getKeyPath();
    v50[0] = v2;
    v46[1] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
    swift_beginAccess();
    sub_10000BEB8(v2 + v18, v50, &qword_1002224D8, &qword_1001B7440);
    v19 = v51;
    if (v51)
    {
      v20 = sub_10001BED0(v50, v51);
      v21 = *(v19 - 8);
      __chkstk_darwin(v20);
      v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      sub_1000050C4(v50, &qword_1002224D8, &qword_1001B7440);
      v24 = dispatch thunk of MusicItem.id.getter();
      v26 = v25;
      (*(v21 + 8))(v23, v19);
    }

    else
    {
      sub_1000050C4(v50, &qword_1002224D8, &qword_1001B7440);
      v24 = 0;
      v26 = 0;
    }

    sub_10001BED0(v52, v53);
    v31 = dispatch thunk of MusicItem.id.getter();
    if (v26)
    {
      if (v24 == v31 && v26 == v32)
      {

LABEL_24:
        if (qword_100220C90 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000BE10(v34, qword_100239158);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_34;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Already playing same song.";
        goto LABEL_33;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v39 = v53;
    v40 = v54;
    sub_10001BED0(v52, v53);
    v41 = v48;
    (*(v40 + 104))(v39, v40);
    if ((*(v8 + 48))(v41, 1, v7) != 1)
    {
      v43 = v47;
      (*(v8 + 32))(v47, v41, v7);
      sub_100137D18();
      sub_10002FF80(v52, v50);
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      v46[-2] = v2;
      v46[-1] = v50;
      v49 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1000050C4(v50, &qword_1002224D8, &qword_1001B7440);
      if (*(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != 1)
      {
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v46[-2] = v2;
        LOBYTE(v46[-1]) = 1;
        v50[0] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10013800C(v43);
      sub_1001384F4();
      (*(v8 + 8))(v43, v7);
      goto LABEL_38;
    }

    sub_1000050C4(v41, &qword_1002214F8, &qword_1001B3D20);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000BE10(v42, qword_100239158);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_34:

LABEL_38:
      sub_100012A7C(v52);
      return;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Cannot play song. No preview asset URL.";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_34;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000BE10(v27, qword_100239158);
  v48 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v48, v28, "Cannot play empty playlist.", v29, 2u);
  }

  v30 = v48;
}

void sub_100137D18()
{
  v1 = v0;
  sub_100138EF0();
  swift_getKeyPath();
  *&v12 = v0;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  [*(v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) pause];
  swift_getKeyPath();
  *&v12 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10000BEB8(v12 + v3, &v10, &unk_100227380, &unk_1001B74B0);
  if (v11)
  {
    sub_10005888C(&v10, &v12);
    swift_getKeyPath();
    *&v10 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    if (v4)
    {
      sub_10001BED0(&v12, v13);
      v5 = v4;
      [v5 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    sub_100012A7C(&v12);
  }

  else
  {
    sub_1000050C4(&v10, &unk_100227380, &unk_1001B74B0);
  }

  swift_getKeyPath();
  *&v12 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + v2);
  if (v6 && (v7 = v6, v8 = String._bridgeToObjectiveC()(), [v7 removeObserver:v1 forKeyPath:v8], v7, v8, *(v1 + v2)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }
}

void sub_10013800C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(AVURLAsset);
  v41 = a1;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v12];
  sub_100136E88([objc_allocWithZone(AVPlayer) initWithPlayerItem:v13]);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer___observationRegistrar;
  aBlock = v2;
  v15 = sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (v16)
  {
    v17 = v16;
    v40 = v15;
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 addObserver:v2 forKeyPath:v19 options:1 context:0];

    v20 = [objc_opt_self() defaultCenter];
    v21 = String._bridgeToObjectiveC()();
    v39 = v13;
    v22 = v21;
    v23 = [v18 currentItem];
    v38 = v14;
    v24 = v23;
    [v20 addObserver:v2 selector:"playerDidFinishPlaying" name:v22 object:v23];

    v49 = CMTime.init(value:timescale:)(1, 5);
    LODWORD(v22) = v49.timescale;
    epoch = v49.epoch;
    value = v49.value;
    v36 = HIDWORD(*&v49.timescale);
    sub_10006054C(0, &qword_100225DD0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = *(v2 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v4);
    v27 = v4;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    (*(v5 + 32))(v29 + v28, v7, v27);
    v47 = sub_10013A614;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100138E84;
    v46 = &unk_1002185D0;
    v30 = _Block_copy(&aBlock);
    v31 = v18;

    aBlock = value;
    v44 = __PAIR64__(v36, v22);
    v45 = epoch;
    v32 = [v31 addPeriodicTimeObserverForInterval:&aBlock queue:v25 usingBlock:v30];
    _Block_release(v30);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v34 - 2) = v2;
    *(&v34 - 1) = &aBlock;
    v42 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000050C4(&aBlock, &unk_100227380, &unk_1001B74B0);
  }

  else
  {
  }
}

void sub_1001384F4()
{
  swift_getKeyPath();
  v16 = v0;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player;
  v2 = *&v0[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player];
  if (v2 && (v3 = [v2 error]) != 0)
  {

    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BE10(v4, qword_100239158);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v8 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *&v0[v1];
      if (v9 && (v9 = [v9 error]) != 0)
      {
        v10 = v9;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;

        v9 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v14 = sub_100139F7C(v9, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Playback initiated but player has error: %s", v8, 0xCu);
      sub_100012A7C(v15);
    }
  }

  else
  {
    swift_getKeyPath();
    v16 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&v0[v1] play];
  }
}

void sub_100138900(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (os_unfair_lock_trylock(a4 + 6))
  {
    sub_10013A6B8(&a4[4]);
    os_unfair_lock_unlock(a4 + 6);
  }
}

void sub_100138968(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 currentItem];
  if (!v12)
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000BE10(v20, qword_100239158);
    (*(v9 + 16))(v11, a3, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v23 = 136315138;
      sub_100139ECC(&qword_100223E18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_100139F7C(v24, v26, &v34);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid or missing duration for current item %s", v23, 0xCu);
      sub_100012A7C(v32);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v28 = *v33;
    v19 = (*(*v33 + 24) + 16);
    os_unfair_lock_lock(v19);
    if (*(v28 + 16) == 0.0)
    {
      *(v28 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v31 - 2) = v28;
      *(&v31 - 1) = 0;
      v34 = v28;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_16;
  }

  v13 = v12;
  [v12 duration];

  CMTime.seconds.getter();
  if (v14 > 0.0 && (*&v14 >> 52 < 0x7FFuLL || (*&v14 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v15 = v14;
    CMTime.seconds.getter();
    v17 = v16 / v15;
    v18 = *v33;
    v19 = (*(*v33 + 24) + 16);
    os_unfair_lock_lock(v19);
    if (*(v18 + 16) == v17)
    {
      *(v18 + 16) = v17;
    }

    else
    {
      v30 = swift_getKeyPath();
      __chkstk_darwin(v30);
      *(&v31 - 2) = v18;
      *(&v31 - 1) = v17;
      v34 = v18;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_16:
    os_unfair_lock_unlock(v19);
  }
}