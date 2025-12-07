uint64_t sub_100219688(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v87 = a1;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v84 = v67 - v3;
  v86 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v67 - v4;
  v77 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = v67 - v5;
  v95 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v89 = *(v95 - 8);
  v6 = __chkstk_darwin(v95);
  v94 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = v67 - v8;
  v100 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v106 = *(v100 - 8);
  __chkstk_darwin(v100);
  v90 = v67 - v9;
  v10 = type metadata accessor for JoinType();
  v102 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Table();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v91 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = v67 - v18;
  v19 = __chkstk_darwin(v17);
  v74 = v67 - v20;
  v21 = __chkstk_darwin(v19);
  v78 = v67 - v22;
  v23 = __chkstk_darwin(v21);
  v79 = v67 - v24;
  __chkstk_darwin(v23);
  v80 = v67 - v25;
  v26 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  v81 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160, &protocol conformance descriptor for Expression<A>);
  v99 = v28;
  v82 = v26;
  ExpressionType.init(_:)();
  v29 = v101;
  v30 = *(v102 + 104);
  v92 = v12;
  v72 = enum case for JoinType.leftOuter(_:);
  v88 = v10;
  v71 = v30;
  v70 = v102 + 104;
  v30(v12);
  v31 = (v29 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation);
  v104 = v13;
  v105 = &protocol witness table for Table;
  v32 = sub_1000280DC(&v103);
  v73 = v14;
  v33 = *(v14 + 16);
  v69 = v31;
  v97 = v33;
  v98 = v14 + 16;
  v33(v32, v31, v13);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v34 = v95;
  v35 = sub_1000076D4(v95, qword_10177C770);
  v36 = v93;
  v67[1] = v35;
  QueryType.subscript.getter();
  v37 = v94;
  QueryType.subscript.getter();
  v38 = v90;
  == infix<A>(_:_:)();
  v39 = *(v89 + 8);
  v69 = v39;
  v39(v37, v34);
  v39(v36, v34);
  v40 = v92;
  QueryType.join(_:_:on:)();
  v89 = *(v106 + 8);
  v106 += 8;
  (v89)(v38, v100);
  v41 = *(v102 + 8);
  v102 += 8;
  v68 = v41;
  v42 = v88;
  v41(v40, v88);
  sub_100007BAC(&v103);
  v71(v40, v72, v42);
  v43 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v104 = v13;
  v105 = &protocol witness table for Table;
  v44 = sub_1000280DC(&v103);
  v97(v44, v101 + v43, v13);
  v45 = v93;
  QueryType.subscript.getter();
  v46 = v94;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v47 = v95;
  v48 = v69;
  v69(v46, v95);
  v48(v45, v47);
  v49 = v91;
  v50 = v92;
  QueryType.join(_:_:on:)();
  (v89)(v38, v100);
  v68(v50, v88);
  v51 = *(v73 + 8);
  v51(v49, v13);
  sub_100007BAC(&v103);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v52 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v52, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v53 = v75;
  ExpressionType<>.length.getter();
  v103 = 28;
  v54 = v90;
  == infix<A>(_:_:)();
  (*(v76 + 8))(v53, v77);
  v55 = v74;
  v56 = v96;
  QueryType.filter(_:)();
  (v89)(v54, v100);
  v51(v56, v13);
  v57 = type metadata accessor for UUID();
  v58 = v84;
  (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
  v59 = v83;
  == infix<A>(_:_:)();
  sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
  v60 = v78;
  QueryType.filter(_:)();
  (*(v85 + 8))(v59, v86);
  v51(v55, v13);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v61 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v61, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.asc.getter();
  v62 = v79;
  QueryType.order(_:)();

  v51(v60, v13);
  v63 = v80;
  QueryType.limit(_:)();
  v51(v62, v13);
  v104 = v13;
  v105 = &protocol witness table for Table;
  v64 = sub_1000280DC(&v103);
  v97(v64, v63, v13);
  v65 = sub_100215044(&v103, v101);
  v51(v63, v13);
  (*(v81 + 8))(v99, v82);
  sub_100007BAC(&v103);
  return v65;
}

uint64_t sub_10021A3F4(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v3 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v3 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for Row();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v69 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v78 = *(v69 - 8);
  __chkstk_darwin(v69);
  v77 = &v57 - v15;
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v67 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v68 = &v57 - v21;
  v22 = __chkstk_darwin(v20);
  v70 = &v57 - v23;
  v24 = __chkstk_darwin(v22);
  v71 = &v57 - v25;
  __chkstk_darwin(v24);
  v75 = &v57 - v26;
  if (sub_100028E90())
  {
    v62 = v10;
    v58 = v7;
    v59 = v5;
    v60 = v6;
    v76 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v27 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v80 = v16;
    v81 = &protocol witness table for Table;
    v28 = sub_1000280DC(v79);
    v65 = v17;
    v63 = *(v17 + 16);
    v64 = v17 + 16;
    v63(v28, a2 + v27, v16);
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v9, qword_10177C770);
    QueryType.subscript.getter();
    v29 = v66;
    QueryType.subscript.getter();
    v30 = v77;
    == infix<A>(_:_:)();
    v31 = *(v62 + 8);
    v31(v29, v9);
    v31(v14, v9);
    v32 = v67;
    QueryType.join(_:on:)();
    v33 = *(v78 + 8);
    v34 = v69;
    v78 += 8;
    v76 = v33;
    v33(v30, v69);
    sub_100007BAC(v79);
    v35 = v70;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    v36 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    v37 = sub_1000076D4(v36, qword_10177C8C0);
    v80 = v36;
    v81 = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
    v38 = sub_1000280DC(v79);
    v39 = *(*(v36 - 8) + 16);
    v66 = v37;
    v39(v38, v37, v36);
    v40 = v68;
    SchemaType.select(_:_:)();
    v41 = *(v65 + 8);
    v41(v32, v16);
    sub_100007BAC(v79);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v42 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v42, qword_10177C788);
    type metadata accessor for BeaconIdentifier(0);
    type metadata accessor for UUID();
    v43 = v77;
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    v76(v43, v34);
    v41(v40, v16);
    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v44 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v44, qword_10177C938);
    sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
    ExpressionType.desc.getter();
    v45 = v71;
    QueryType.order(_:)();

    v41(v35, v16);
    v46 = v75;
    QueryType.limit(_:)();
    v41(v45, v16);
    v80 = v16;
    v81 = &protocol witness table for Table;
    v47 = sub_1000280DC(v79);
    v63(v47, v46, v16);
    v48 = v73;
    Connection.prepare(_:)();
    if (v48)
    {
      v41(v46, v16);

      return sub_100007BAC(v79);
    }

    else
    {
      sub_100007BAC(v79);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v51 = v59;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v52 = v58;
      v53 = v60;
      v54 = (*(v58 + 48))(v51, 1, v60);
      if (v54 == 1)
      {
        v41(v75, v16);

        sub_10000B3A8(v51, &qword_101699D68, &unk_1013B6450);
        v55 = 0;
      }

      else
      {
        v56 = v61;
        (*(v52 + 32))(v61, v51, v53);
        sub_100028088();
        Row.subscript.getter();

        (*(v52 + 8))(v56, v53);
        v41(v75, v16);
        v55 = LOBYTE(v79[0]);
      }

      return v55 | ((v54 == 1) << 8);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v50 = 2;
    *(v50 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10021AE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v62[0] = a3;
  v4 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v72 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v70 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v62 - v7;
  v84 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v92 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = v62 - v8;
  v9 = type metadata accessor for JoinType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Table();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v80 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v83 = v62 - v18;
  v19 = __chkstk_darwin(v17);
  v73 = v62 - v20;
  v21 = __chkstk_darwin(v19);
  v74 = v62 - v22;
  __chkstk_darwin(v21);
  v76 = v62 - v23;
  v24 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v88 = v10;
  v25 = *(v10 + 104);
  v81 = v12;
  v26 = v12;
  v28 = v27;
  v68 = enum case for JoinType.leftOuter(_:);
  v82 = v9;
  v67 = v25;
  v66 = v10 + 104;
  v25(v26);
  v87 = a2;
  v29 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v90 = v28;
  v91 = &protocol witness table for Table;
  v30 = sub_1000280DC(v89);
  v71 = v14;
  v85 = *(v14 + 16);
  v86 = v14 + 16;
  v85(v30, v29, v28);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v31 = sub_1000076D4(v4, qword_10177C770);
  v78 = v4;
  v32 = v69;
  v64 = v31;
  v62[1] = v24;
  QueryType.subscript.getter();
  v33 = v70;
  QueryType.subscript.getter();
  v34 = v79;
  == infix<A>(_:_:)();
  v35 = *(v72 + 1);
  v72 = v35;
  v36 = v78;
  v35(v33, v78);
  v35(v32, v36);
  v37 = v81;
  QueryType.join(_:_:on:)();
  v63 = *(v92 + 8);
  v92 += 8;
  v63(v34, v84);
  v38 = *(v88 + 8);
  v88 += 8;
  v65 = v38;
  v39 = v82;
  v38(v37, v82);
  sub_100007BAC(v89);
  v67(v37, v68, v39);
  v40 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v90 = v28;
  v91 = &protocol witness table for Table;
  v41 = sub_1000280DC(v89);
  v85(v41, v87 + v40, v28);
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v42 = v79;
  == infix<A>(_:_:)();
  v43 = v78;
  v44 = v72;
  v72(v33, v78);
  v45 = v32;
  v46 = v63;
  v44(v45, v43);
  v47 = v80;
  v48 = v81;
  QueryType.join(_:_:on:)();
  v49 = v42;
  v50 = v42;
  v51 = v84;
  v46(v49, v84);
  v65(v48, v82);
  v52 = *(v71 + 8);
  v52(v47, v28);
  sub_100007BAC(v89);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v53, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v54 = v73;
  v55 = v83;
  QueryType.filter(_:)();
  v46(v50, v51);
  v52(v55, v28);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v56 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v56, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v57 = v74;
  QueryType.order(_:)();

  v52(v54, v28);
  v58 = v76;
  QueryType.limit(_:)();
  v52(v57, v28);
  v90 = v28;
  v91 = &protocol witness table for Table;
  v59 = sub_1000280DC(v89);
  v85(v59, v58, v28);
  v60 = v77;
  sub_100215044(v89, v87);
  if (v60)
  {
    v52(v58, v28);
    return sub_100007BAC(v89);
  }

  else
  {
    sub_100007BAC(v89);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v52)(v58, v28);
  }
}

uint64_t sub_10021B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v63[0] = a4;
  v6 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v81 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v73 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = v63 - v9;
  v86 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v95 = *(v86 - 8);
  __chkstk_darwin(v86);
  v69 = v63 - v10;
  v11 = type metadata accessor for JoinType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Table();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v83 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v71 = v63 - v20;
  v21 = __chkstk_darwin(v19);
  v75 = v63 - v22;
  v23 = __chkstk_darwin(v21);
  v77 = v63 - v24;
  v25 = __chkstk_darwin(v23);
  v78 = v63 - v26;
  __chkstk_darwin(v25);
  v80 = v63 - v27;
  v28 = v91;
  v74 = sub_100206EA0(a2);
  v79 = v28;
  v82 = a3 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v90 = v12;
  v29 = *(v12 + 104);
  v84 = v14;
  v70 = enum case for JoinType.leftOuter(_:);
  v85 = v11;
  v68 = v29;
  v67 = v12 + 104;
  v29(v14);
  v89 = a3;
  v30 = a3 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v93 = v15;
  v94 = &protocol witness table for Table;
  v31 = sub_1000280DC(v92);
  v91 = v16;
  v87 = *(v16 + 16);
  v88 = v16 + 16;
  v87(v31, v30, v15);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v6, qword_10177C770);
  v33 = v72;
  v63[1] = v32;
  QueryType.subscript.getter();
  v34 = v73;
  QueryType.subscript.getter();
  v35 = v69;
  == infix<A>(_:_:)();
  v36 = *(v81 + 8);
  v65 = v36;
  v66 = v6;
  v36(v34, v6);
  v36(v33, v6);
  v37 = v84;
  QueryType.join(_:_:on:)();
  v81 = *(v95 + 8);
  v95 += 8;
  (v81)(v35, v86);
  v38 = *(v90 + 8);
  v90 += 8;
  v64 = v38;
  v39 = v85;
  v38(v37, v85);
  sub_100007BAC(v92);
  v68(v37, v70, v39);
  v40 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v93 = v15;
  v94 = &protocol witness table for Table;
  v41 = sub_1000280DC(v92);
  v87(v41, v89 + v40, v15);
  v42 = v15;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v43 = v66;
  v44 = v65;
  v65(v34, v66);
  v44(v33, v43);
  v45 = v81;
  v46 = v71;
  v47 = v83;
  v48 = v84;
  QueryType.join(_:_:on:)();
  v49 = v86;
  v45(v35, v86);
  v64(v48, v85);
  v90 = *(v91 + 8);
  v91 += 8;
  (v90)(v47, v42);
  sub_100007BAC(v92);
  v50 = v42;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v51, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v52 = v75;
  QueryType.filter(_:)();
  v45(v35, v49);
  (v90)(v46, v42);
  v92[0] = v74;
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v53, qword_10177C8D8);
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for [A]);
  sub_100028088();
  Collection<>.contains(_:)();

  v54 = v77;
  QueryType.filter(_:)();
  (v81)(v35, v49);
  v55 = v52;
  v56 = v90;
  (v90)(v55, v42);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v57 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v57, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v58 = v78;
  QueryType.order(_:)();

  v56(v54, v42);
  v59 = v80;
  QueryType.limit(_:)();
  v56(v58, v50);
  v93 = v50;
  v94 = &protocol witness table for Table;
  v60 = sub_1000280DC(v92);
  v87(v60, v59, v50);
  v61 = v79;
  sub_100215044(v92, v89);
  if (v61)
  {
    v56(v59, v50);
    return sub_100007BAC(v92);
  }

  else
  {
    sub_100007BAC(v92);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v56)(v59, v50);
  }
}

uint64_t sub_10021C328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v45[1] = a3;
  v4 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v62 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = v45 - v7;
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = v45 - v9;
  v10 = type metadata accessor for JoinType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v48 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v57 = v45 - v19;
  v20 = __chkstk_darwin(v18);
  v59 = v45 - v21;
  __chkstk_darwin(v20);
  v60 = v45 - v22;
  v23 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v49 = v13;
  v50 = v11;
  v24 = *(v11 + 104);
  v51 = v10;
  v24(v13, enum case for JoinType.leftOuter(_:), v10);
  v25 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v64 = v14;
  v65 = &protocol witness table for Table;
  v26 = sub_1000280DC(v63);
  v61 = v15;
  v55 = *(v15 + 16);
  v56 = v15 + 16;
  v55(v26, a2 + v25, v14);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C770);
  v27 = a2;
  v45[2] = v23;
  v28 = v46;
  QueryType.subscript.getter();
  v29 = v47;
  QueryType.subscript.getter();
  v30 = v52;
  == infix<A>(_:_:)();
  v31 = *(v62 + 8);
  v31(v29, v4);
  v31(v28, v4);
  v62 = v27;
  v33 = v48;
  v32 = v49;
  QueryType.join(_:_:on:)();
  v34 = v54;
  v35 = *(v53 + 8);
  v35(v30, v54);
  (*(v50 + 8))(v32, v51);
  sub_100007BAC(v63);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v36, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v37 = v57;
  QueryType.filter(_:)();
  v35(v30, v34);
  v38 = *(v61 + 8);
  v38(v33, v14);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v39 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v39, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v40 = v59;
  QueryType.order(_:)();

  v38(v37, v14);
  v41 = v60;
  QueryType.limit(_:)();
  v38(v40, v14);
  v64 = v14;
  v65 = &protocol witness table for Table;
  v42 = sub_1000280DC(v63);
  v55(v42, v41, v14);
  v43 = v66;
  sub_100215044(v63, v62);
  if (v43)
  {
    v38(v41, v14);
    return sub_100007BAC(v63);
  }

  else
  {
    sub_100007BAC(v63);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v38)(v41, v14);
  }
}

void *sub_10021CAC0(uint64_t a1, double a2)
{
  v38 = a1;
  v2 = type metadata accessor for Date();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = v29 - v5;
  v7 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = type metadata accessor for Table();
  v36 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v37 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v31 = v29 - v14;
  __chkstk_darwin(v13);
  v35 = v29 - v15;
  v29[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v16, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  ExpressionType<>.length.getter();
  v40[0] = 28;
  == infix<A>(_:_:)();
  (*(v4 + 8))(v6, v30);
  QueryType.filter(_:)();
  v17 = *(v39 + 8);
  v39 += 8;
  v17(v9, v7);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v18, qword_10177C938);
  v19 = v32;
  Date.init(timeIntervalSinceNow:)();
  v20 = v34;
  >= infix<A>(_:_:)();
  (*(v33 + 8))(v19, v20);
  v21 = v31;
  v22 = v37;
  QueryType.filter(_:)();
  v17(v9, v7);
  v23 = v36;
  v24 = *(v36 + 8);
  v24(v22, v10);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v25 = v35;
  QueryType.order(_:)();

  v24(v21, v10);
  v40[3] = v10;
  v40[4] = &protocol witness table for Table;
  v26 = sub_1000280DC(v40);
  (*(v23 + 16))(v26, v25, v10);
  v27 = sub_10021D0A0(v40);
  v24(v25, v10);
  sub_100007BAC(v40);
  return v27;
}

void *sub_10021D0A0(void *a1)
{
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = v30 - v7;
  v8 = type metadata accessor for Row();
  v38 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v30 - v12;
  v14 = sub_100028E90();
  if (!v14)
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
    return a1;
  }

  v15 = v14;
  v16 = Connection.prepare(_:)();
  if (v1)
  {

    return a1;
  }

  v30[2] = v15;
  v19 = v16;

  v20 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();
  v30[1] = v19;

  v36 = *(v20 + 16);
  if (!v36)
  {
    a1 = _swiftEmptyArrayStorage;
LABEL_18:

    return a1;
  }

  v35 = v11;
  v21 = 0;
  v33 = (v38 + 8);
  v34 = v38 + 16;
  a1 = _swiftEmptyArrayStorage;
  v31 = v6;
  v32 = v20;
  while (v21 < *(v20 + 16))
  {
    v22 = *(v38 + 16);
    v22(v13, v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v21, v8);
    v23 = v35;
    v22(v35, v13, v8);
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v24 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v24, qword_10177C770);
    Row.subscript.getter();
    (*v33)(v13, v8);
    v25 = v39;
    sub_1002132AC(v23, v40, v39);
    sub_10001BA68(v25, v6, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_100A5C3FC(0, a1[2] + 1, 1, a1);
    }

    v28 = a1[2];
    v27 = a1[3];
    if (v28 >= v27 >> 1)
    {
      a1 = sub_100A5C3FC((v27 > 1), v28 + 1, 1, a1);
    }

    ++v21;
    sub_100034434(v39, type metadata accessor for ObservedAdvertisement);
    a1[2] = v28 + 1;
    v29 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28;
    v6 = v31;
    result = sub_1000345B4(v31, v29, type metadata accessor for ObservedAdvertisement);
    if (v36 == v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021D518(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v65 - v4;
  v96 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v91 = *(v96 - 8);
  v6 = __chkstk_darwin(v96);
  v86 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = v65 - v8;
  v93 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v99 = *(v93 - 8);
  __chkstk_darwin(v93);
  v97 = v65 - v9;
  v95 = type metadata accessor for JoinType();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v88 = v65 - v13;
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v92 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v87 = v65 - v19;
  __chkstk_darwin(v18);
  v21 = v65 - v20;
  v22 = sub_100028E90();
  if (v22)
  {
    v79 = v22;
    v80 = v12;
    v81 = v11;
    v82 = v5;
    v83 = v3;
    v84 = v2;
    v23 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v24 = a1;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v25 = v96;
    v26 = sub_1000076D4(v96, qword_10177C770);
    v101 = v25;
    v102 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC(v100);
    QueryType.subscript.getter();
    SchemaType.select(_:_:)();
    sub_100007BAC(v100);
    v90 = v21;
    v27 = Expressible.asSQL()();
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
    v74 = v23;
    v28 = *(v15 + 8);
    v75 = v15 + 8;
    v76 = v28;
    v28(v21, v14);
    v65[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v73 = enum case for JoinType.leftOuter(_:);
    v29 = *(v98 + 104);
    v71 = v98 + 104;
    v72 = v29;
    v29(v94);
    v30 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
    v101 = v14;
    v102 = &protocol witness table for Table;
    v31 = sub_1000280DC(v100);
    v32 = *(v15 + 16);
    v69 = v15 + 16;
    v70 = v32;
    v32(v31, v24 + v30, v14);
    v33 = v85;
    v68 = v26;
    QueryType.subscript.getter();
    v34 = v86;
    QueryType.subscript.getter();
    == infix<A>(_:_:)();
    v35 = *(v91 + 1);
    v67 = v35;
    v36 = v96;
    v35(v34, v96);
    v35(v33, v36);
    v37 = v94;
    v38 = v97;
    QueryType.join(_:_:on:)();
    v39 = *(v99 + 8);
    v99 += 8;
    v91 = v39;
    v39(v38, v93);
    v40 = *(v98 + 8);
    v98 += 8;
    v66 = v40;
    v41 = v95;
    v40(v37, v95);
    sub_100007BAC(v100);
    v72(v37, v73, v41);
    v101 = v14;
    v102 = &protocol witness table for Table;
    v42 = sub_1000280DC(v100);
    v70(v42, v74, v14);
    QueryType.subscript.getter();
    QueryType.subscript.getter();
    v43 = v97;
    == infix<A>(_:_:)();
    v44 = v96;
    v45 = v67;
    v67(v34, v96);
    v45(v33, v44);
    v46 = v87;
    v47 = v94;
    v48 = v92;
    QueryType.join(_:_:on:)();
    v49 = v93;
    v91(v43, v93);
    v66(v47, v95);
    v50 = v76;
    v76(v48, v14);
    sub_100007BAC(v100);
    v100[0] = 0;
    v100[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    v51._object = 0x800000010134D460;
    v51._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v51);
    v103 = 28;
    v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v52);

    v53._countAndFlagsBits = 0xD00000000000002DLL;
    v53._object = 0x800000010134D480;
    String.append(_:)(v53);
    v54._countAndFlagsBits = countAndFlagsBits;
    v54._object = object;
    String.append(_:)(v54);

    v55._countAndFlagsBits = 41;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v56 = v43;
    v57 = v50;
    v91(v56, v49);
    v50(v46, v14);
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v58 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v58, qword_10177C8A8);
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
    v59 = v82;
    ExpressionType<>.count.getter();
    v60 = v88;
    v61 = v90;
    SchemaType.select<A>(_:)();
    (*(v83 + 8))(v59, v84);
    v57(v61, v14);
    v62 = v89;
    Connection.scalar<A>(_:)();
    (*(v80 + 8))(v60, v81);

    if (!v62)
    {
      return v100[0];
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v64 = 2;
    *(v64 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10021E0D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[6] = a3;
  v38 = a2;
  v37[0] = a4;
  v37[1] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v37 - v10;
  __chkstk_darwin(v9);
  v13 = v37 - v12;
  v14 = type metadata accessor for Table();
  v39 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v37 - v19;
  __chkstk_darwin(v18);
  v40 = v37 - v21;
  v37[2] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v22, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v23, qword_10177C9E0);
  LOBYTE(v42[0]) = v38;
  sub_100028088();
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v11, v4);
  QueryType.filter(_:)();
  v24(v13, v4);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v25, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  QueryType.order(_:)();

  v26 = v39;
  v27 = *(v39 + 8);
  v27(v17, v14);
  v28 = v40;
  QueryType.limit(_:)();
  v27(v20, v14);
  v42[3] = v14;
  v42[4] = &protocol witness table for Table;
  v29 = sub_1000280DC(v42);
  (*(v26 + 16))(v29, v28, v14);
  v30 = v41;
  sub_10021E704(v42);
  if (v30)
  {
    v27(v28, v14);
    return sub_100007BAC(v42);
  }

  else
  {
    sub_100007BAC(v42);
    v32 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    if (*(v32 + 16))
    {
      v33 = type metadata accessor for KeySyncMetadata(0);
      v34 = *(v33 - 8);
      v35 = v37[0];
      sub_10001BA68(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v37[0], type metadata accessor for KeySyncMetadata);

      v27(v28, v14);
      return (*(v34 + 56))(v35, 0, 1, v33);
    }

    else
    {

      v27(v28, v14);
      v36 = type metadata accessor for KeySyncMetadata(0);
      return (*(*(v36 - 8) + 56))(v37[0], 1, 1, v36);
    }
  }
}

uint64_t sub_10021E704(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadata(0);
  v58 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v59 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v49 = v48 - v5;
  v6 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = v48 - v10;
  v11 = type metadata accessor for Row();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v56 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v51 = v48 - v16;
  __chkstk_darwin(v15);
  v52 = v48 - v17;
  v18 = sub_100028E90();
  if (!v18)
  {
    sub_10020223C();
    swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }

  v19 = v18;
  v20 = Connection.prepare(_:)();
  if (v1)
  {
  }

  v23 = v20;

  v24 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_101123CD8(0, v24 & ~(v24 >> 63), 0);
  v25 = v60;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v57 = result;
  if (v24 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v48[1] = v23;
  v48[2] = v19;
  v50 = v12;
  if (v24)
  {
    v26 = (v12 + 16);
    v54 = (v12 + 8);
    v55 = (v12 + 48);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v55)(v9, 1, v11);
      if (result == 1)
      {
        goto LABEL_20;
      }

      v27 = v56;
      (*v26)(v56, v9, v11);
      sub_100229584(v27, v59);
      v28 = v11;
      (*v54)(v9, v11);
      v60 = v25;
      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        sub_101123CD8((v29 > 1), v30 + 1, 1);
        v25 = v60;
      }

      v25[2] = v30 + 1;
      sub_1000345B4(v59, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30, type metadata accessor for KeySyncMetadata);
      --v24;
      v11 = v28;
    }

    while (v24);
  }

  v31 = v53;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v32 = v31;
  v33 = v50;
  v59 = *(v50 + 48);
  v34 = v59(v31, 1, v11);
  v35 = v52;
  if (v34 != 1)
  {
    v37 = *(v33 + 32);
    v36 = v33 + 32;
    v56 = v37;
    v38 = (v36 - 16);
    v50 = v36;
    v39 = (v36 - 24);
    v40 = v49;
    do
    {
      (v56)(v35, v32, v11);
      v41 = v51;
      (*v38)(v51, v35, v11);
      sub_100229584(v41, v40);
      v42 = v40;
      (*v39)(v35, v11);
      v60 = v25;
      v43 = v11;
      v45 = v25[2];
      v44 = v25[3];
      if (v45 >= v44 >> 1)
      {
        sub_101123CD8((v44 > 1), v45 + 1, 1);
        v42 = v49;
        v25 = v60;
      }

      v25[2] = v45 + 1;
      sub_1000345B4(v42, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45, type metadata accessor for KeySyncMetadata);
      v46 = v53;
      v40 = v42;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v32 = v46;
      v47 = v59(v46, 1, v43);
      v11 = v43;
      v35 = v52;
    }

    while (v47 != 1);
  }

  sub_10000B3A8(v32, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699E28, &qword_101393140);
  result = swift_allocObject();
  *(result + 16) = v25;
  return result;
}

uint64_t sub_10021ED74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for KeySyncMetadata(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  sub_10021E0D8(a1, *(a1 + *(v5 + 20)), a2, v12);
  if (v2)
  {
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A5C0);
    sub_10001BA68(a1, v8, type metadata accessor for KeySyncMetadata);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = v6;
      v19 = v18;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      type metadata accessor for UUID();
      v31 = v5;
      sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_100034434(v8, type metadata accessor for KeySyncMetadata);
      v23 = sub_1000136BC(v20, v22, &v32);
      v5 = v31;

      *(v19 + 14) = v23;
      *(v19 + 22) = 2114;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v24;
      v25 = v28;
      *v28 = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Last key sync value could not be read for beacon %{private,mask.hash}s, %{public}@", v19, 0x20u);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v29);

      v6 = v30;
    }

    else
    {

      sub_100034434(v8, type metadata accessor for KeySyncMetadata);
    }

    (*(v6 + 56))(v14, 1, 1, v5);
  }

  else
  {
    sub_1000D2AD8(v12, v14, &unk_1016C8FF0, &qword_101393148);
  }

  v26 = sub_1010BDA5C(a1, v14);
  sub_10000B3A8(v14, &unk_1016C8FF0, &qword_101393148);
  return v26 & 1;
}

uint64_t sub_10021F1B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for KeySyncMetadata(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v68 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v67 = &v61 - v12;
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = type metadata accessor for Connection.TransactionMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100027FA4();
  if (v19)
  {
    v65 = v5;
    v66 = v8;
    v20 = __chkstk_darwin(v19);
    *(&v61 - 4) = a2;
    *(&v61 - 3) = a1;
    *(&v61 - 2) = v20;
    (*(v16 + 104))(v18, enum case for Connection.TransactionMode.deferred(_:), v15);
    Connection.transaction(_:block:)();
    if (v2)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      (*(v16 + 8))(v18, v15);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177A5C0);
      sub_10001BA68(a1, v14, type metadata accessor for KeySyncMetadata);
      v24 = v67;
      sub_10001BA68(a1, v67, type metadata accessor for KeySyncMetadata);
      v25 = v68;
      sub_10001BA68(a1, v68, type metadata accessor for KeySyncMetadata);
      v26 = v66;
      sub_10001BA68(a1, v66, type metadata accessor for KeySyncMetadata);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v63 = v28;
        v64 = v27;
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69 = v62;
        *v29 = 141559043;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        sub_100034434(v14, type metadata accessor for KeySyncMetadata);
        v33 = sub_1000136BC(v30, v32, &v69);

        *(v29 + 14) = v33;
        *(v29 + 22) = 2082;
        v34 = *(v24 + *(v65 + 20));
        if (v34 <= 3)
        {
          v43 = 0xE800000000000000;
          v44 = 0x6E776F6E6B6E752ELL;
          v45 = 0xEF64657461726170;
          v46 = 0x6553686374616C2ELL;
          if (v34 != 2)
          {
            v46 = 0xD00000000000001CLL;
            v45 = 0x800000010134B930;
          }

          if (*(v24 + *(v65 + 20)))
          {
            v44 = 0x6E774F7261656E2ELL;
            v43 = 0xEA00000000007265;
          }

          if (*(v24 + *(v65 + 20)) <= 1u)
          {
            v41 = v44;
          }

          else
          {
            v41 = v46;
          }

          if (*(v24 + *(v65 + 20)) <= 1u)
          {
            v42 = v43;
          }

          else
          {
            v42 = v45;
          }
        }

        else
        {
          v35 = 0xEE00797261646E6FLL;
          v36 = 0x636553646C69772ELL;
          v37 = 0x736142746E69682ELL;
          v38 = 0xEA00000000006465;
          if (v34 != 7)
          {
            v37 = 0x67696C4179656B2ELL;
            v38 = 0xED0000746E656D6ELL;
          }

          if (v34 != 6)
          {
            v36 = v37;
            v35 = v38;
          }

          v39 = 0xD000000000000018;
          v40 = 0x800000010134B910;
          if (v34 != 4)
          {
            v39 = 0x697250646C69772ELL;
            v40 = 0xEC0000007972616DLL;
          }

          if (*(v24 + *(v65 + 20)) <= 5u)
          {
            v41 = v39;
          }

          else
          {
            v41 = v36;
          }

          if (*(v24 + *(v65 + 20)) <= 5u)
          {
            v42 = v40;
          }

          else
          {
            v42 = v35;
          }
        }

        sub_100034434(v24, type metadata accessor for KeySyncMetadata);
        v47 = sub_1000136BC(v41, v42, &v69);

        *(v29 + 24) = v47;
        *(v29 + 32) = 2082;
        v48 = (v25 + *(v65 + 24));
        v49 = v48[3];
        v50 = v48[4];
        sub_1000035D0(v48, v49);
        v51 = sub_1010B7ABC(v49, v50);
        v53 = v52;
        sub_100034434(v25, type metadata accessor for KeySyncMetadata);
        v54 = sub_1000136BC(v51, v53, &v69);

        *(v29 + 34) = v54;
        *(v29 + 42) = 2082;
        type metadata accessor for Date();
        sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v55 = v66;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        sub_100034434(v55, type metadata accessor for KeySyncMetadata);
        v59 = sub_1000136BC(v56, v58, &v69);

        *(v29 + 44) = v59;
        v60 = v64;
        _os_log_impl(&_mh_execute_header, v64, v63, "Updated key sync metadata for %{private,mask.hash}s, type: %{public}s, %{public}s, %{public}s.", v29, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100034434(v26, type metadata accessor for KeySyncMetadata);
        sub_100034434(v24, type metadata accessor for KeySyncMetadata);
        sub_100034434(v14, type metadata accessor for KeySyncMetadata);
        return sub_100034434(v25, type metadata accessor for KeySyncMetadata);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10021F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v107 = a3;
  v108 = type metadata accessor for KeySyncMetadata(0);
  v4 = __chkstk_darwin(v108);
  v106 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v105 = (&v91 - v7);
  __chkstk_darwin(v6);
  v104 = &v91 - v8;
  v9 = type metadata accessor for OnConflict();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Insert();
  v99 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  v17 = type metadata accessor for Table();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v91 - v22;
  v24 = v109;
  result = sub_10021ED74(a2, v110);
  if (!v24)
  {
    v94 = v21;
    v95 = v18;
    v96 = v14;
    v98 = v23;
    v92 = v13;
    v97 = v17;
    v93 = v11;
    v109 = a2;
    if (result)
    {
      v106 = 0;
      if (qword_1016952A0 != -1)
      {
        swift_once();
      }

      v26 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      v27 = sub_1000076D4(v26, qword_10177C788);
      v28 = type metadata accessor for UUID();
      == infix<A>(_:_:)();
      v29 = v94;
      v30 = v97;
      QueryType.filter(_:)();
      (*(v103 + 8))(v16, v96);
      v31 = v98;
      QueryType.limit(_:)();
      v32 = v95;
      v33 = *(v95 + 8);
      v34 = v95 + 8;
      v33(v29, v30);
      v111[3] = v30;
      v111[4] = &protocol witness table for Table;
      v35 = sub_1000280DC(v111);
      (*(v32 + 16))(v35, v31, v30);
      v36 = v106;
      Connection.prepare(_:)();
      v106 = v36;
      if (v36)
      {
        v33(v31, v30);
        return sub_100007BAC(v111);
      }

      else
      {
        v103 = v28;
        v104 = v27;
        v105 = v33;
        sub_100007BAC(v111);
        v58 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

        v59 = *(v58 + 16);

        if (v59)
        {
          v95 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
          (*(v101 + 104))(v100, enum case for OnConflict.replace(_:), v102);
          sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
          v60 = *(type metadata accessor for Setter() - 8);
          v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1013917A0;
          v94 = v62;
          v63 = v62 + v61;
          v64 = v109;
          <- infix<A>(_:_:)();
          if (qword_101695368 != -1)
          {
            swift_once();
          }

          v104 = v34;
          v65 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
          sub_1000076D4(v65, qword_10177C9E0);
          v66 = v108;
          LOBYTE(v111[0]) = *(v64 + *(v108 + 20));
          sub_100028088();
          <- infix<A>(_:_:)();
          v103 = v63;
          v67 = v96;
          if (qword_1016952B0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v65, qword_10177C7B8);
          v68 = (v64 + *(v66 + 24));
          v69 = v68[3];
          v70 = v68[4];
          sub_1000035D0(v68, v69);
          LOBYTE(v111[0]) = sub_10002BD40(v69, v70) & 1;
          <- infix<A>(_:_:)();
          if (qword_1016952B8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v67, qword_10177C7D0);
          v71 = v68[3];
          sub_1000035D0(v68, v71);
          LOBYTE(v111[0]) = sub_100992468(v71) & 1;
          <- infix<A>(_:_:)();
          if (qword_1016952A8 != -1)
          {
            swift_once();
          }

          v72 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
          sub_1000076D4(v72, qword_10177C7A0);
          sub_1000035D0(v68, v68[3]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v111[7] = v111[0];
          sub_100029580();
          <- infix<A>(_:_:)();
          if (qword_101695360 != -1)
          {
            swift_once();
          }

          v73 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
          sub_1000076D4(v73, qword_10177C9C8);
          type metadata accessor for Date();
          <- infix<A>(_:_:)();
          v74 = v92;
          v75 = v100;
          v76 = v97;
          QueryType.insert(or:_:)();

          (*(v101 + 8))(v75, v102);
          Connection.run(_:)();
          v77 = v105;
          (*(v99 + 8))(v74, v93);
          return v77(v98, v76);
        }

        else
        {
          sub_10022A42C();
          swift_allocError();
          swift_willThrow();
          return (v105)(v98, v30);
        }
      }
    }

    else
    {
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177A5C0);
      v38 = v109;
      v39 = v104;
      sub_10001BA68(v109, v104, type metadata accessor for KeySyncMetadata);
      v40 = v105;
      sub_10001BA68(v38, v105, type metadata accessor for KeySyncMetadata);
      v41 = v106;
      sub_10001BA68(v38, v106, type metadata accessor for KeySyncMetadata);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v44 = 141558787;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        sub_100034434(v39, type metadata accessor for KeySyncMetadata);
        v48 = sub_1000136BC(v45, v47, v111);

        *(v44 + 14) = v48;
        *(v44 + 22) = 2082;
        v49 = *(v40 + *(v108 + 20));
        if (v49 <= 3)
        {
          v78 = 0xE800000000000000;
          v79 = 0x6E776F6E6B6E752ELL;
          v80 = 0xEF64657461726170;
          v81 = 0x6553686374616C2ELL;
          if (v49 != 2)
          {
            v81 = 0xD00000000000001CLL;
            v80 = 0x800000010134B930;
          }

          if (*(v40 + *(v108 + 20)))
          {
            v79 = 0x6E774F7261656E2ELL;
            v78 = 0xEA00000000007265;
          }

          if (*(v40 + *(v108 + 20)) <= 1u)
          {
            v56 = v79;
          }

          else
          {
            v56 = v81;
          }

          if (*(v40 + *(v108 + 20)) <= 1u)
          {
            v57 = v78;
          }

          else
          {
            v57 = v80;
          }
        }

        else
        {
          v50 = 0xEE00797261646E6FLL;
          v51 = 0x636553646C69772ELL;
          v52 = 0x736142746E69682ELL;
          v53 = 0xEA00000000006465;
          if (v49 != 7)
          {
            v52 = 0x67696C4179656B2ELL;
            v53 = 0xED0000746E656D6ELL;
          }

          if (v49 != 6)
          {
            v51 = v52;
            v50 = v53;
          }

          v54 = 0xD000000000000018;
          v55 = 0x800000010134B910;
          if (v49 != 4)
          {
            v54 = 0x697250646C69772ELL;
            v55 = 0xEC0000007972616DLL;
          }

          if (*(v40 + *(v108 + 20)) <= 5u)
          {
            v56 = v54;
          }

          else
          {
            v56 = v51;
          }

          if (*(v40 + *(v108 + 20)) <= 5u)
          {
            v57 = v55;
          }

          else
          {
            v57 = v50;
          }
        }

        sub_100034434(v40, type metadata accessor for KeySyncMetadata);
        v82 = sub_1000136BC(v56, v57, v111);

        *(v44 + 24) = v82;
        *(v44 + 32) = 2082;
        v83 = (v41 + *(v108 + 24));
        v84 = v83[3];
        v85 = v83[4];
        sub_1000035D0(v83, v84);
        v86 = sub_1010B7ABC(v84, v85);
        v88 = v87;
        sub_100034434(v41, type metadata accessor for KeySyncMetadata);
        v89 = sub_1000136BC(v86, v88, v111);

        *(v44 + 34) = v89;
        _os_log_impl(&_mh_execute_header, v42, v43, "Skipping to update key sync metadata for %{private,mask.hash}s, type: %{public}s, %{public}s.", v44, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100034434(v40, type metadata accessor for KeySyncMetadata);
        sub_100034434(v39, type metadata accessor for KeySyncMetadata);
        sub_100034434(v41, type metadata accessor for KeySyncMetadata);
      }

      sub_10022A59C();
      swift_allocError();
      *v90 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1002207D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100027FA4();
  if (v9)
  {
    v13[1] = v13;
    v10 = __chkstk_darwin(v9);
    v13[-4] = a2;
    v13[-3] = a1;
    v13[-2] = v10;
    (*(v6 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100220984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v17 = a2;
  v18 = a1;
  v19 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Delete();
  v10 = *(v16 - 8);
  __chkstk_darwin(v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v5, v19);
  QueryType.delete()();
  (*(v7 + 8))(v9, v6);
  Connection.run(_:)();
  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_100220C64()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v32 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v20 - v5;
  v6 = type metadata accessor for Table();
  v26 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  if (sub_100027FA4())
  {
    v21 = v4;
    v22 = v1;
    v23 = v3;
    v24 = v0;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v12, qword_10177C788);
    v30 = v12;
    v31 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC(&v28);
    type metadata accessor for UUID();
    QueryType.subscript.getter();
    SchemaType.select(_:_:)();
    sub_100007BAC(&v28);
    v13 = Expressible.asSQL()();
    v26 = *(v26 + 8);
    (v26)(v11, v6);
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v28 = 0xD00000000000002DLL;
    v29 = 0x800000010134D410;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
    v15 = v27;
    v16 = v23;
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v17 = v32;
    QueryType.delete()();
    Connection.run(_:)();

    (*(v22 + 8))(v17, v24);
    (v26)(v9, v6);
    return (*(v21 + 8))(v15, v16);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100221138@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a3;
  v118 = a2;
  v108 = a1;
  v7 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v7 - 8);
  v95 = &v91 - v8;
  v9 = type metadata accessor for Row();
  v96 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v91 - v12;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v109 = &v91 - v15;
  v16 = type metadata accessor for UUID();
  v110 = *(v16 - 8);
  __chkstk_darwin(v16);
  v105 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v107 = *(v119 - 8);
  v18 = __chkstk_darwin(v119);
  v120 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = &v91 - v20;
  v21 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v132 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  v124 = type metadata accessor for JoinType();
  v128 = *(v124 - 1);
  __chkstk_darwin(v124);
  v123 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Table();
  v127 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v125 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v121 = &v91 - v29;
  __chkstk_darwin(v28);
  v114 = &v91 - v30;

  if (sub_100028E90())
  {
    v122 = v23;
    v126 = v21;
    v104 = v16;
    v91 = v13;
    v92 = v9;
    v93 = a5;
    v31 = a4 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
    v32 = *(v128 + 104);
    v103 = enum case for JoinType.leftOuter(_:);
    v102 = v32;
    v101 = v128 + 104;
    v32(v123);
    v33 = (a4 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation);
    v130 = v25;
    v131 = &protocol witness table for Table;
    v34 = sub_1000280DC(&v129);
    v35 = *(v127 + 16);
    v100 = v33;
    v115 = v35;
    v116 = v127 + 16;
    v35(v34, v33, v25);
    v117 = a4;
    if (qword_101695380 != -1)
    {
      swift_once();
    }

    v36 = v119;
    v37 = sub_1000076D4(v119, qword_10177CA28);
    v38 = v106;
    v99 = v37;
    QueryType.subscript.getter();
    v97 = v31;
    v39 = v120;
    QueryType.subscript.getter();
    v40 = v122;
    == infix<A>(_:_:)();
    v41 = *(v107 + 1);
    v107 = v41;
    v41(v39, v36);
    v42 = v38;
    v41(v38, v36);
    v43 = v123;
    QueryType.join(_:_:on:)();
    v98 = *(v132 + 8);
    v132 += 8;
    v98(v40, v126);
    v44 = *(v128 + 8);
    v128 += 8;
    v100 = v44;
    v45 = v124;
    v44(v43, v124);
    sub_100007BAC(&v129);
    v102(v43, v103, v45);
    v46 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
    v130 = v25;
    v131 = &protocol witness table for Table;
    v47 = sub_1000280DC(&v129);
    v115(v47, v117 + v46, v25);
    QueryType.subscript.getter();
    v48 = v122;
    v49 = v120;
    QueryType.subscript.getter();
    v50 = v42;
    == infix<A>(_:_:)();
    v51 = v49;
    v52 = v98;
    v53 = v119;
    v54 = v107;
    v107(v51, v119);
    v54(v50, v53);
    v55 = v121;
    v56 = v123;
    v57 = v125;
    QueryType.join(_:_:on:)();
    v52(v48, v126);
    v100(v56, v124);
    v58 = v127 + 8;
    v59 = *(v127 + 8);
    v59(v57, v25);
    sub_100007BAC(&v129);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v123 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v123, qword_10177C788);
    type metadata accessor for BeaconIdentifier(0);
    v60 = v104;
    == infix<A>(_:_:)();
    v61 = v114;
    QueryType.filter(_:)();
    v52(v48, v126);
    v62 = v52;
    v63 = v55;
    v128 = v58;
    v124 = v59;
    v59(v55, v25);
    v64 = v110;
    v65 = v62;
    if (v118 != 8)
    {
      if (qword_101695370 != -1)
      {
        swift_once();
      }

      v66 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
      sub_1000076D4(v66, qword_10177C9F8);
      LODWORD(v129) = v118;
      sub_10022A60C();
      v67 = v122;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v62(v67, v126);
      (v124)(v61, v25);
      (*(v127 + 32))(v61, v63, v25);
    }

    v68 = v109;
    sub_1000D2A70(v111, v109, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v64 + 48))(v68, 1, v60) == 1)
    {
      sub_10000B3A8(v68, &qword_1016980D0, &unk_10138F3B0);
      v69 = v127;
    }

    else
    {
      v72 = v105;
      (*(v64 + 32))(v105, v68, v60);
      v73 = v60;
      if (qword_101695388 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v123, qword_10177CA40);
      v74 = v122;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v65(v74, v126);
      (*(v64 + 8))(v72, v73);
      (v124)(v61, v25);
      v69 = v127;
      (*(v127 + 32))(v61, v63, v25);
    }

    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    v75 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v75, qword_10177C9C8);
    sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
    ExpressionType.desc.getter();
    v76 = v125;
    QueryType.order(_:)();

    v77 = v121;
    QueryType.limit(_:)();
    v78 = v124;
    (v124)(v76, v25);
    v78(v61, v25);
    (*(v69 + 32))(v61, v77, v25);
    v130 = v25;
    v131 = &protocol witness table for Table;
    v79 = sub_1000280DC(&v129);
    v115(v79, v61, v25);
    v80 = v112;
    Connection.prepare(_:)();
    if (v80)
    {

      v78(v61, v25);
      return sub_100007BAC(&v129);
    }

    else
    {
      sub_100007BAC(&v129);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v81 = v95;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v82 = v96;
      v83 = v92;
      v84 = (*(v96 + 48))(v81, 1, v92);
      v85 = v117;
      if (v84 == 1)
      {

        (v124)(v114, v25);
        sub_10000B3A8(v81, &qword_101699D68, &unk_1013B6450);
        v86 = 1;
        v87 = v93;
      }

      else
      {
        v88 = v91;
        (*(v82 + 32))(v91, v81, v83);
        v89 = v94;
        (*(v82 + 16))(v94, v88, v83);
        v87 = v93;
        sub_1002221C0(v89, v85, v93);

        (*(v82 + 8))(v88, v83);
        (v124)(v114, v25);
        v86 = 0;
      }

      v90 = type metadata accessor for DeviceEvent(0);
      return (*(*(v90 - 8) + 56))(v87, v86, 1, v90);
    }
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v70 = 2;
    *(v70 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1002221C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v77 = a2;
  Error = type metadata accessor for QueryError();
  v65 = *(Error - 8);
  v5 = __chkstk_darwin(Error);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v69 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v60 - v9;
  v10 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v61 = &v60 - v11;
  v12 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v13 = __chkstk_darwin(v12 - 8);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v60 - v15;
  v16 = type metadata accessor for Row();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v60 - v21;
  v23 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  v73 = v17;
  v29 = *(v17 + 16);
  v75 = v16;
  v76 = a1;
  v30 = a1;
  v31 = v77;
  v66 = v29;
  v29(v22, v30, v16);

  v32 = v72;
  sub_100229A10(v22, v26);
  if (!v32)
  {
    v36 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v36 - 8) + 56))(v26, 0, 1, v36);
    sub_1000D2AD8(v26, v28, &qword_101699E50, &qword_1013D97C0);
    goto LABEL_7;
  }

  v78 = v32;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    swift_willThrow();

    return (*(v73 + 8))(v76, v75);
  }

  v33 = v65;
  v34 = v65[11](v8, Error);
  if (v34 != enum case for QueryError.noSuchColumn(_:) && v34 != enum case for QueryError.unexpectedNullValue(_:))
  {
    v33[1](v8, Error);
    goto LABEL_24;
  }

  v33[1](v8, Error);
  v35 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v35 - 8) + 56))(v28, 1, 1, v35);

LABEL_7:
  v66(v20, v76, v75);

  v37 = v67;
  sub_100229E9C(v20, v31, v67);
  v38 = v70;
  sub_1000D2AD8(v37, v70, &unk_1016AA510, &unk_101393150);
  v39 = v76;
  v40 = v71;
  v41 = type metadata accessor for DeviceEvent(0);
  sub_1000D2A70(v38, v40 + *(v41 + 32), &unk_1016AA510, &unk_101393150);
  v42 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v66 = 0;
  v43 = v63;
  sub_1000076D4(v63, qword_10177CA28);
  v44 = type metadata accessor for Table();
  v76 = v42;
  v45 = v61;
  v72 = v44;
  QueryType.subscript.getter();
  Row.subscript.getter();
  (*(v62 + 8))(v45, v43);
  *v40 = v78;
  *(v40 + 8) = 0;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v46, qword_10177C818);
  v47 = v41;
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v67 = v28;
  sub_1000076D4(v46, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  Row.subscript.getter();
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v48 = v69;
  sub_1000076D4(v69, qword_10177C9C8);
  type metadata accessor for Date();
  v49 = v68;
  QueryType.subscript.getter();
  v50 = v71;
  Row.subscript.getter();
  v51 = v39;
  v52 = *(v74 + 8);
  v74 += 8;
  v65 = v52;
  (v52)(v49, v48);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v53, qword_10177C9F8);
  sub_10022A60C();
  Row.subscript.getter();
  v54 = sub_100513050(v78);
  if (v54 == 8)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  *(v50 + 9) = v55;
  v56 = v67;
  sub_1000D2A70(v67, v50 + *(v47 + 28), &qword_101699E50, &qword_1013D97C0);
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  v57 = v69;
  sub_1000076D4(v69, qword_10177CA10);
  v58 = v68;
  QueryType.subscript.getter();
  Row.subscript.getter();

  (*(v73 + 8))(v51, v75);
  (v65)(v58, v57);
  sub_10000B3A8(v70, &unk_1016AA510, &unk_101393150);
  return sub_10000B3A8(v56, &qword_101699E50, &qword_1013D97C0);
}

uint64_t sub_100222D9C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v60 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v57 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v50 - v5;
  v65 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v75 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = v50 - v7;
  v8 = type metadata accessor for JoinType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Table();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v64 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = v50 - v17;
  __chkstk_darwin(v16);
  v61 = v50 - v18;
  v62 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v71 = v9;
  v19 = *(v9 + 104);
  v63 = v11;
  v56 = enum case for JoinType.leftOuter(_:);
  v66 = v8;
  v55 = v19;
  v54 = v9 + 104;
  v19(v11);
  v70 = a1;
  v20 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
  v73 = v12;
  v74 = &protocol witness table for Table;
  v21 = sub_1000280DC(v72);
  v59 = v13;
  v67 = *(v13 + 16);
  v68 = v13 + 16;
  v67(v21, v20, v12);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v22 = sub_1000076D4(v2, qword_10177CA28);
  v50[0] = v6;
  v50[1] = v22;
  QueryType.subscript.getter();
  v23 = v57;
  QueryType.subscript.getter();
  v24 = v58;
  == infix<A>(_:_:)();
  v25 = *(v60 + 1);
  v51 = v25;
  v52 = v2;
  v25(v23, v2);
  v25(v6, v2);
  v26 = v63;
  QueryType.join(_:_:on:)();
  v27 = *(v75 + 8);
  v75 += 8;
  v60 = v27;
  v27(v24, v65);
  v28 = *(v71 + 8);
  v71 += 8;
  v53 = v28;
  v29 = v66;
  v28(v26, v66);
  sub_100007BAC(v72);
  v55(v26, v56, v29);
  v30 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
  v73 = v12;
  v74 = &protocol witness table for Table;
  v31 = sub_1000280DC(v72);
  v67(v31, v70 + v30, v12);
  v32 = v50[0];
  v33 = v12;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v34 = v23;
  v35 = v52;
  v36 = v51;
  v51(v34, v52);
  v36(v32, v35);
  v37 = v63;
  v38 = v64;
  QueryType.join(_:_:on:)();
  v60(v24, v65);
  v53(v37, v66);
  v39 = *(v59 + 8);
  v39(v38, v33);
  sub_100007BAC(v72);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10138BBE0;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v42 = sub_1000076D4(v41, qword_10177C788);
  *(v40 + 56) = v41;
  *(v40 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v43 = sub_1000280DC((v40 + 32));
  (*(*(v41 - 8) + 16))(v43, v42, v41);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v44, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v45 = v61;
  v46 = v69;
  QueryType.order(_:)();

  v39(v46, v33);
  v73 = v33;
  v74 = &protocol witness table for Table;
  v47 = sub_1000280DC(v72);
  v67(v47, v45, v33);
  v48 = sub_100223654(v72, v70);
  v39(v45, v33);
  sub_100007BAC(v72);
  return v48;
}

uint64_t sub_100223654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEvent(0);
  v63 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v65 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v54 = v53 - v7;
  v8 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = v53 - v12;
  v13 = type metadata accessor for Row();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v61 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v56 = v53 - v18;
  __chkstk_darwin(v17);
  v57 = v53 - v19;
  v64 = a2;
  v20 = sub_100028E90();
  if (!v20)
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v25 = v22;

  v26 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v66 = _swiftEmptyArrayStorage;
  sub_101124678(0, v26 & ~(v26 >> 63), 0);
  v27 = v66;
  v53[1] = v25;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v62 = result;
  if (v26 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v53[0] = v21;
  v55 = v14;
  if (v26)
  {
    v28 = (v14 + 48);
    v29 = v14;
    v30 = (v14 + 16);
    v59 = (v29 + 8);
    v60 = v28;
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v60)(v11, 1, v13);
      if (result == 1)
      {
        goto LABEL_20;
      }

      v31 = v61;
      (*v30)(v61, v11, v13);
      v32 = v64;

      sub_1002221C0(v31, v32, v65);
      v33 = v13;
      (*v59)(v11, v13);
      v66 = v27;
      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        sub_101124678((v34 > 1), v35 + 1, 1);
        v27 = v66;
      }

      v27[2] = v35 + 1;
      sub_1000345B4(v65, v27 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v35, type metadata accessor for DeviceEvent);
      --v26;
      v13 = v33;
    }

    while (v26);
  }

  v36 = v58;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v37 = v36;
  v38 = v55;
  v65 = *(v55 + 48);
  if (v65(v36, 1, v13) != 1)
  {
    v40 = *(v38 + 32);
    v39 = v38 + 32;
    v61 = v40;
    v41 = (v39 - 16);
    v55 = v39;
    v42 = (v39 - 24);
    v43 = v54;
    do
    {
      v44 = v57;
      (v61)(v57, v37, v13);
      v45 = v56;
      (*v41)(v56, v44, v13);
      v46 = v64;

      sub_1002221C0(v45, v46, v43);
      v47 = v43;
      (*v42)(v44, v13);
      v66 = v27;
      v48 = v13;
      v50 = v27[2];
      v49 = v27[3];
      if (v50 >= v49 >> 1)
      {
        sub_101124678((v49 > 1), v50 + 1, 1);
        v47 = v54;
        v27 = v66;
      }

      v27[2] = v50 + 1;
      sub_1000345B4(v47, v27 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, type metadata accessor for DeviceEvent);
      v51 = v58;
      v43 = v47;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v37 = v51;
      v52 = v65(v51, 1, v48);
      v13 = v48;
    }

    while (v52 != 1);
  }

  sub_10000B3A8(v37, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699F08, &unk_1013931E0);
  result = swift_allocObject();
  *(result + 16) = v27;
  return result;
}

uint64_t sub_100223CF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v226 = a2;
  v228 = a3;
  v223 = a4;
  v5 = sub_1000BC4D4(&qword_101699ED0, &qword_101393188);
  __chkstk_darwin(v5 - 8);
  v211 = v178 - v6;
  v214 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v207 = *(v214 - 8);
  __chkstk_darwin(v214);
  v210 = v178 - v7;
  v206 = sub_1000BC4D4(&qword_101699ED8, &qword_101393198);
  v192 = *(v206 - 8);
  v8 = __chkstk_darwin(v206);
  v205 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v213 = v178 - v11;
  __chkstk_darwin(v10);
  v212 = v178 - v12;
  v13 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v14 = *(v13 - 8);
  v224 = v13;
  v225 = v14;
  __chkstk_darwin(v13);
  v191 = v178 - v15;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v195 = v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v202 = v178 - v20;
  v21 = __chkstk_darwin(v19);
  v208 = v178 - v22;
  v23 = __chkstk_darwin(v21);
  v215 = v178 - v24;
  v25 = __chkstk_darwin(v23);
  v216 = v178 - v26;
  __chkstk_darwin(v25);
  v218 = v178 - v27;
  v28 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v29 = __chkstk_darwin(v28 - 8);
  v204 = v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v222 = (v178 - v31);
  v32 = type metadata accessor for UUID();
  v220 = *(v32 - 8);
  v221 = v32;
  v33 = __chkstk_darwin(v32);
  v194 = v178 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v217 = v178 - v36;
  __chkstk_darwin(v35);
  v219 = v178 - v37;
  v38 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v39 = __chkstk_darwin(v38 - 8);
  v196 = v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v197 = v178 - v42;
  v43 = __chkstk_darwin(v41);
  v198 = v178 - v44;
  v45 = __chkstk_darwin(v43);
  v199 = v178 - v46;
  v47 = __chkstk_darwin(v45);
  v200 = v178 - v48;
  v49 = __chkstk_darwin(v47);
  v193 = v178 - v50;
  v51 = __chkstk_darwin(v49);
  v201 = v178 - v52;
  v53 = __chkstk_darwin(v51);
  v203 = v178 - v54;
  v55 = __chkstk_darwin(v53);
  v209 = v178 - v56;
  v57 = __chkstk_darwin(v55);
  v59 = v178 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = v178 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = v178 - v64;
  __chkstk_darwin(v63);
  v67 = v178 - v66;
  v68 = type metadata accessor for DeviceEvent(0);
  v69 = *(v68 - 8);
  v70 = __chkstk_darwin(v68);
  v72 = v178 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v74 = v178 - v73;
  v75 = v227;
  result = sub_100221138(a1, 8, v226, v228, v67);
  if (!v75)
  {
    v190 = a1;
    v186 = v72;
    v187 = v59;
    v188 = v62;
    v189 = v65;
    v226 = v74;
    v227 = 0;
    v79 = *(v69 + 48);
    v78 = v69 + 48;
    v77 = v79;
    if (v79(v67, 1, v68) == 1)
    {
      sub_10000B3A8(v67, &unk_1016AA500, &unk_1013B3600);
      v80 = v224;
      v81 = *(v225 + 56);
      v82 = v223;
      v83 = 1;
      return v81(v82, v83, 1, v80);
    }

    v84 = v67;
    v85 = v226;
    sub_1000345B4(v84, v226, type metadata accessor for DeviceEvent);
    v86 = v222;
    sub_1000D2A70(v85 + *(v68 + 32), v222, &unk_1016AA510, &unk_101393150);
    v87 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v88 = *(v87 - 8);
    v89 = *(v88 + 48);
    v90 = v88 + 48;
    v91 = v89(v86, 1, v87);
    v92 = v225;
    if (v91 == 1)
    {
      sub_100034434(v85, type metadata accessor for DeviceEvent);
      sub_10000B3A8(v86, &unk_1016AA510, &unk_101393150);
      return (*(v92 + 56))(v223, 1, 1, v224);
    }

    else
    {
      v180 = v90;
      v181 = v89;
      v182 = v87;
      v183 = v77;
      v184 = v78;
      v93 = v220;
      v94 = v221;
      v96 = (v220 + 16);
      v95 = *(v220 + 16);
      v97 = v217;
      (v95)(v217, v86, v221);
      sub_100034434(v86, type metadata accessor for DeviceEvent.AttachmentInfo);
      v98 = *(v93 + 32);
      v99 = v219;
      v98(v219, v97, v94);
      v100 = v218;
      v222 = v96;
      v217 = v95;
      (v95)(v218, v99, v94);
      v101 = (v93 + 56);
      v185 = *(v93 + 56);
      v185(v100, 0, 1, v94);
      v102 = v227;
      sub_100221138(v190, 3, v100, v228, v189);
      v227 = v102;
      if (v102)
      {
        sub_10000B3A8(v100, &qword_1016980D0, &unk_10138F3B0);
        (*(v93 + 8))(v99, v94);
      }

      else
      {
        v178[0] = v98;
        v178[1] = v93 + 32;
        v179 = v68;
        sub_10000B3A8(v100, &qword_1016980D0, &unk_10138F3B0);
        v103 = v216;
        (v217)(v216, v99, v94);
        v104 = v185;
        v185(v103, 0, 1, v94);
        v105 = v227;
        sub_100221138(v190, 4, v103, v228, v188);
        v106 = v94;
        v107 = v99;
        if (v105)
        {
          sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v189, &unk_1016AA500, &unk_1013B3600);
          (*(v93 + 8))(v99, v94);
        }

        else
        {
          v108 = v104;
          sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
          v109 = v215;
          (v217)(v215, v107, v106);
          v104(v109, 0, 1, v106);
          v110 = v190;
          v111 = v228;
          sub_100221138(v190, 1, v109, v228, v187);
          sub_10000B3A8(v109, &qword_1016980D0, &unk_10138F3B0);
          v112 = v208;
          v113 = v221;
          (v217)(v208, v107, v221);
          v108(v112, 0, 1, v113);
          sub_100221138(v110, 2, v112, v111, v209);
          v114 = v101;
          v115 = v111;
          v116 = v110;
          v117 = v108;
          sub_10000B3A8(v112, &qword_1016980D0, &unk_10138F3B0);
          v118 = v202;
          v119 = v114;
          v120 = v221;
          (v217)(v202, v107, v221);
          v216 = v119;
          v117(v118, 0, 1, v120);
          sub_100221138(v116, 5, v118, v115, v203);
          v227 = 0;
          sub_10000B3A8(v118, &qword_1016980D0, &unk_10138F3B0);
          v121 = v195;
          v122 = v221;
          (v217)(v195, v107, v221);
          v117(v121, 0, 1, v122);
          v123 = v201;
          v124 = v227;
          sub_100221138(v116, 6, v121, v115, v201);
          v227 = v124;
          if (!v124)
          {
            sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
            v125 = v193;
            sub_1000D2A70(v189, v193, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v188, v200, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v187, v199, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v209, v198, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v203, v197, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v123, v196, &unk_1016AA500, &unk_1013B3600);
            static SystemInfo.bootSessionUUID.getter();
            sub_1000BC4D4(&qword_101699EE0, &qword_1013931B0);
            v126 = *(v192 + 72);
            v127 = (*(v192 + 80) + 32) & ~*(v192 + 80);
            v128 = 6;
            v215 = swift_allocObject();
            v129 = &v215[v127];
            v130 = v206;
            v131 = &v215[v127 + *(v206 + 48)];
            sub_1000D2A70(v125, &v215[v127], &unk_1016AA500, &unk_1013B3600);
            v132 = sub_1000BC4D4(&qword_101699EE8, &qword_1013931B8);
            *(v131 + 3) = v132;
            *(v131 + 4) = &off_10161D298;
            *v131 = 0;
            v133 = &v129[v126 + *(v130 + 48)];
            sub_1000D2A70(v200, &v129[v126], &unk_1016AA500, &unk_1013B3600);
            *(v133 + 3) = v132;
            *(v133 + 4) = &off_10161D298;
            *v133 = 1;
            v134 = &v129[2 * v126];
            v135 = v134 + *(v130 + 48);
            sub_1000D2A70(v199, v134, &unk_1016AA500, &unk_1013B3600);
            v136 = sub_1000BC4D4(&qword_101699EF0, &qword_1013931C0);
            *(v135 + 24) = v136;
            *(v135 + 32) = &off_10161D270;
            *v135 = 0;
            v137 = &v129[3 * v126];
            v138 = v137 + *(v130 + 48);
            sub_1000D2A70(v198, v137, &unk_1016AA500, &unk_1013B3600);
            *(v138 + 24) = v136;
            *(v138 + 32) = &off_10161D270;
            *v138 = 1;
            v139 = &v129[4 * v126];
            v140 = v139 + *(v130 + 48);
            sub_1000D2A70(v197, v139, &unk_1016AA500, &unk_1013B3600);
            v141 = sub_1000BC4D4(&qword_101699EF8, &qword_1013931C8);
            *(v140 + 24) = v141;
            *(v140 + 32) = &off_10161D248;
            *v140 = 0;
            v142 = v130;
            v218 = v126;
            v143 = &v129[5 * v126];
            v144 = v143 + *(v130 + 48);
            sub_1000D2A70(v196, v143, &unk_1016AA500, &unk_1013B3600);
            v222 = _swiftEmptyArrayStorage;
            *(v144 + 24) = v141;
            *(v144 + 32) = &off_10161D248;
            *v144 = 1;
            v217 = (v207 + 56);
            v208 = v129;
            v145 = v129;
            v146 = &qword_101699ED8;
            v147 = v224;
            v148 = v212;
            v149 = v213;
            v150 = v183;
            do
            {
              v228 = v128;
              sub_1000D2A70(v145, v148, v146, &qword_101393198);
              sub_1000D2A70(v148, v149, v146, &qword_101393198);
              v153 = *(v142 + 48);
              v154 = v146;
              v155 = v179;
              if (v150(v149, 1, v179) == 1)
              {
                sub_10000B3A8(v148, v154, &qword_101393198);
                sub_100007BAC((v149 + v153));
                sub_10000B3A8(v149, &unk_1016AA500, &unk_1013B3600);
                v151 = v211;
                (*v217)(v211, 1, 1, v214);
                sub_10000B3A8(v151, &qword_101699ED0, &qword_101393188);
                v146 = v154;
                v152 = v228;
              }

              else
              {
                v156 = v186;
                sub_1000345B4(v149, v186, type metadata accessor for DeviceEvent);
                sub_100007BAC((v149 + v153));
                v157 = v211;
                sub_10001BA68(v156, v211, type metadata accessor for DeviceEvent);
                v158 = v214;
                v159 = *(v214 + 36);
                v160 = *(v155 + 24);
                v161 = type metadata accessor for Date();
                (*(*(v161 - 8) + 16))(v157 + v159, v156 + v160, v161);
                v162 = v205;
                sub_1000D2AD8(v148, v205, v154, &qword_101393198);
                v163 = *(v158 + 44);
                v164 = v204;
                sub_1000D2A70(v156 + *(v155 + 32), v204, &unk_1016AA510, &unk_101393150);
                sub_100034434(v156, type metadata accessor for DeviceEvent);
                v165 = v182;
                if (v181(v164, 1, v182) == 1)
                {
                  sub_10000B3A8(v164, &unk_1016AA510, &unk_101393150);
                  v185(v157 + v163, 1, 1, v221);
                }

                else
                {
                  sub_1000D2A70(v164 + *(v165 + 20), v157 + v163, &qword_1016980D0, &unk_10138F3B0);
                  sub_100034434(v164, type metadata accessor for DeviceEvent.AttachmentInfo);
                }

                v142 = v206;
                v152 = v228;
                v166 = v214;
                sub_10000A748((v162 + *(v206 + 48)), v157 + *(v214 + 40));
                sub_10000B3A8(v162, &unk_1016AA500, &unk_1013B3600);
                (*v217)(v157, 0, 1, v166);
                sub_1000D2AD8(v157, v210, &qword_101697DE0, &qword_101393190);
                v167 = v222;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v169 = v207;
                v150 = v183;
                v146 = &qword_101699ED8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v167 = sub_100A5C45C(0, v167[2] + 1, 1, v167);
                }

                v171 = v167[2];
                v170 = v167[3];
                if (v171 >= v170 >> 1)
                {
                  v167 = sub_100A5C45C((v170 > 1), v171 + 1, 1, v167);
                }

                v167[2] = v171 + 1;
                v172 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v222 = v167;
                sub_1000D2AD8(v210, v167 + v172 + *(v169 + 72) * v171, &qword_101697DE0, &qword_101393190);
                v147 = v224;
              }

              v145 += v218;
              v128 = v152 - 1;
              v148 = v212;
              v149 = v213;
            }

            while (v128);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v173 = v222;
            v174 = v223;
            v175 = v221;
            if (v222[2])
            {
              sub_10000B3A8(v196, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v197, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v199, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v200, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v193, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v201, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v203, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v209, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v187, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v188, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v189, &unk_1016AA500, &unk_1013B3600);
              (*(v220 + 8))(v219, v175);
              sub_100034434(v226, type metadata accessor for DeviceEvent);
              v176 = v191;
              (v178[0])(&v191[*(v147 + 36)], v194, v175);
              *v176 = v173;
              sub_1000D2AD8(v176, v174, &qword_1016998D0, &unk_1013931A0);
              v81 = *(v225 + 56);
              v82 = v174;
              v83 = 0;
            }

            else
            {

              v177 = *(v220 + 8);
              v177(v194, v175);
              sub_10000B3A8(v196, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v197, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v199, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v200, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v193, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v201, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v203, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v209, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v187, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v188, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v189, &unk_1016AA500, &unk_1013B3600);
              v177(v219, v175);
              sub_100034434(v226, type metadata accessor for DeviceEvent);
              v81 = *(v225 + 56);
              v82 = v174;
              v83 = 1;
            }

            v80 = v147;
            return v81(v82, v83, 1, v80);
          }

          sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v203, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v209, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v187, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v188, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v189, &unk_1016AA500, &unk_1013B3600);
          (*(v220 + 8))(v107, v221);
        }
      }

      return sub_100034434(v226, type metadata accessor for DeviceEvent);
    }
  }

  return result;
}

uint64_t sub_1002256D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100027FA4();
  if (v8)
  {
    __chkstk_darwin(v8);
    v11[-2] = a2;
    v11[-1] = a1;
    (*(v5 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    return swift_willThrow();
  }
}

char *sub_100225880(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DeviceEvent.Location(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100225A68(a2, a1);
  if (!v2)
  {
    v13 = result;
    v14 = type metadata accessor for DeviceEvent(0);
    sub_1000D2A70(a2 + *(v14 + 28), v7, &qword_101699E50, &qword_1013D97C0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_10000B3A8(v7, &qword_101699E50, &qword_1013D97C0);
    }

    else
    {
      sub_1000345B4(v7, v11, type metadata accessor for DeviceEvent.Location);
      sub_1002274AC(v11, v13, a1);
      return sub_100034434(v11, type metadata accessor for DeviceEvent.Location);
    }
  }

  return result;
}

char *sub_100225A68(uint64_t a1, uint64_t a2)
{
  v192 = a1;
  v3 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v3 - 8);
  v5 = &v143 - v4;
  v158 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Date();
  v162 = *(v186 - 8);
  __chkstk_darwin(v186);
  v161 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for OnConflict();
  v163 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Insert();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v166 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for DeviceEvent(0);
  v10 = __chkstk_darwin(v185);
  v159 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v156 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v167 = &v143 - v15;
  v16 = __chkstk_darwin(v14);
  v169 = &v143 - v17;
  v18 = __chkstk_darwin(v16);
  v168 = &v143 - v19;
  __chkstk_darwin(v18);
  v160 = &v143 - v20;
  v21 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v21 - 8);
  v170 = &v143 - v22;
  v23 = type metadata accessor for Row();
  v24 = *(v23 - 8);
  v176 = v23;
  v177 = v24;
  __chkstk_darwin(v23);
  v173 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v143 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v143 - v35;
  v37 = __chkstk_darwin(v34);
  v181 = &v143 - v38;
  __chkstk_darwin(v37);
  v40 = &v143 - v39;
  v41 = type metadata accessor for Table();
  v183 = *(v41 - 8);
  v42 = __chkstk_darwin(v41);
  v182 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v188 = &v143 - v44;
  if (!sub_100027FA4())
  {
    sub_10020223C();
    swift_allocError();
    *v72 = 2;
    *(v72 + 4) = 1;
    swift_willThrow();
    return v33;
  }

  v178 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v175 = v40;
  v143 = v5;
  v179 = a2;
  v180 = v41;
  v45 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  v46 = sub_1000076D4(v45, qword_10177C9F8);
  v47 = v192;
  v151 = *(v192 + 9);
  LODWORD(v189) = v151;
  v48 = sub_10022A60C();
  v153 = v46;
  v152 = v48;
  == infix<A>(_:_:)();
  v49 = v185;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v154 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v50 = sub_1000076D4(v154, qword_10177C9C8);
  v149 = *(v49 + 24);
  v150 = v50;
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v51 = *(v27 + 8);
  v51(v30, v26);
  v51(v33, v26);
  v52 = v49;
  v53 = v36;
  v54 = v26;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v174 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v55 = sub_1000076D4(v174, qword_10177C788);
  v56 = v47 + *(v52 + 36);
  v144 = type metadata accessor for BeaconIdentifier(0);
  v57 = *(v144 + 20);
  v58 = type metadata accessor for UUID();
  v146 = v57;
  v147 = v55;
  == infix<A>(_:_:)();
  v59 = v181;
  && infix(_:_:)();
  v51(v33, v54);
  v51(v53, v54);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v145 = sub_1000076D4(v174, qword_10177C818);
  v148 = v56;
  v174 = v58;
  == infix<A>(_:_:)();
  v60 = v175;
  && infix(_:_:)();
  v51(v53, v54);
  v51(v59, v54);
  v61 = v182;
  v33 = v180;
  QueryType.filter(_:)();
  v51(v60, v54);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v62 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v63 = sub_1000076D4(v62, qword_10177CA28);
  v190 = v62;
  v191 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
  v64 = sub_1000280DC(&v189);
  (*(*(v62 - 8) + 16))(v64, v63, v62);
  v65 = v188;
  SchemaType.select(_:_:)();
  v66 = v183;
  v67 = v61;
  v68 = v183 + 8;
  v69 = *(v183 + 1);
  v69(v67, v33);
  sub_100007BAC(&v189);
  v190 = v33;
  v191 = &protocol witness table for Table;
  v70 = sub_1000280DC(&v189);
  v66[2](v70, v65, v33);
  v71 = v184;
  Connection.prepare(_:)();
  if (v71)
  {
    v69(v65, v33);

    sub_100007BAC(&v189);
    return v33;
  }

  v182 = v68;
  v183 = v69;
  v184 = 0;
  v74 = v33;
  sub_100007BAC(&v189);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v75 = v170;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v77 = v176;
  v76 = v177;
  if ((*(v177 + 48))(v75, 1, v176) != 1)
  {
    (*(v76 + 32))(v173, v75, v77);
    Row.subscript.getter();
    v181 = v189;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_1000076D4(v88, qword_10177A5C0);
    v89 = v192;
    v90 = v160;
    sub_10001BA68(v192, v160, type metadata accessor for DeviceEvent);
    v91 = v168;
    sub_10001BA68(v89, v168, type metadata accessor for DeviceEvent);
    v92 = v89;
    v93 = v169;
    sub_10001BA68(v92, v169, type metadata accessor for DeviceEvent);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v94, v95))
    {

      sub_100034434(v93, type metadata accessor for DeviceEvent);
      sub_100034434(v91, type metadata accessor for DeviceEvent);
      sub_100034434(v90, type metadata accessor for DeviceEvent);
      (*(v177 + 8))(v173, v77);
      v183(v65, v74);
      return v181;
    }

    v96 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *v96 = 136447235;
    v97 = *(v90 + 9);
    v98 = v90;
    v99 = v95;
    if (v97 > 3)
    {
      if (v97 > 5)
      {
        if (v97 == 6)
        {
          v100 = 0x657070617369642ELL;
          v101 = 0xEC00000064657261;
        }

        else
        {
          v101 = 0xE500000000000000;
          v100 = 0x726961702ELL;
        }

        goto LABEL_52;
      }

      if (v97 != 4)
      {
        v100 = 0x657463657465642ELL;
        v101 = 0xEF79627261654E64;
        goto LABEL_52;
      }

      v101 = 0xE700000000000000;
      v117 = 1952801838;
    }

    else
    {
      if (v97 <= 1)
      {
        if (v97)
        {
          v101 = 0xE800000000000000;
          v100 = 0x7463656E6E6F632ELL;
        }

        else
        {
          v100 = 0x6E776F6E6B6E752ELL;
          v101 = 0xE800000000000000;
        }

        goto LABEL_52;
      }

      if (v97 == 2)
      {
        v100 = 0x6E6E6F637369642ELL;
        v101 = 0xEB00000000746365;
LABEL_52:
        sub_100034434(v98, type metadata accessor for DeviceEvent);
        v120 = sub_1000136BC(v100, v101, &v189);

        *(v96 + 4) = v120;
        *(v96 + 12) = 2082;
        sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v121 = v168;
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        sub_100034434(v121, type metadata accessor for DeviceEvent);
        v125 = sub_1000136BC(v122, v124, &v189);

        *(v96 + 14) = v125;
        *(v96 + 22) = 2160;
        *(v96 + 24) = 1752392040;
        *(v96 + 32) = 2081;
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v126 = v169;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        v129 = v128;
        sub_100034434(v126, type metadata accessor for DeviceEvent);
        v130 = sub_1000136BC(v127, v129, &v189);

        *(v96 + 34) = v130;
        *(v96 + 42) = 2048;
        v33 = v181;
        *(v96 + 44) = v181;
        _os_log_impl(&_mh_execute_header, v94, v99, "Device event for %{public}s/%{public}s/%{private,mask.hash}s already exists (eventId=%lld).", v96, 0x34u);
        swift_arrayDestroy();

        (*(v177 + 8))(v173, v176);
        v183(v188, v180);
        return v33;
      }

      v101 = 0xE700000000000000;
      v117 = 1953784110;
    }

    v100 = v117 | 0x68636100000000;
    goto LABEL_52;
  }

  sub_10000B3A8(v75, &qword_101699D68, &unk_1013B6450);
  v78 = v163;
  (*(v163 + 104))(v171, enum case for OnConflict.ignore(_:), v172);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v181 = (4 * *(*(type metadata accessor for Setter() - 8) + 72));
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  LODWORD(v189) = v151;
  <- infix<A>(_:_:)();
  v33 = v186;
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v154, qword_10177CA10);
  v79 = v161;
  static Date.trustedNow.getter(v161);
  <- infix<A>(_:_:)();
  (*(v162 + 8))(v79, v33);
  v80 = v166;
  v81 = v171;
  v82 = v180;
  QueryType.insert(or:_:)();

  (*(v78 + 8))(v81, v172);
  v83 = v184;
  v84 = Connection.run(_:)();
  v85 = v188;
  v184 = v83;
  v86 = v183;
  v87 = v167;
  if (v83)
  {

    (*(v164 + 8))(v80, v165);
    v86(v85, v82);
    return v33;
  }

  v181 = v84;
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_1000076D4(v102, qword_10177A5C0);
  v103 = v192;
  sub_10001BA68(v192, v87, type metadata accessor for DeviceEvent);
  v104 = v156;
  sub_10001BA68(v103, v156, type metadata accessor for DeviceEvent);
  v105 = v159;
  sub_10001BA68(v103, v159, type metadata accessor for DeviceEvent);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v106, v107))
  {

    sub_100034434(v105, type metadata accessor for DeviceEvent);
    sub_100034434(v104, type metadata accessor for DeviceEvent);
    sub_100034434(v167, type metadata accessor for DeviceEvent);
    v118 = v185;
    v33 = v181;
    goto LABEL_63;
  }

  v108 = swift_slowAlloc();
  v178 = swift_slowAlloc();
  v189 = v178;
  *v108 = 141559043;
  *(v108 + 4) = 1752392040;
  *(v108 + 12) = 2081;
  sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v109 = v167;
  v110 = dispatch thunk of CustomStringConvertible.description.getter();
  v112 = v111;
  sub_100034434(v109, type metadata accessor for DeviceEvent);
  v113 = sub_1000136BC(v110, v112, &v189);

  *(v108 + 14) = v113;
  *(v108 + 22) = 2082;
  v114 = *(v104 + 9);
  if (v114 > 3)
  {
    if (*(v104 + 9) > 5u)
    {
      if (v114 == 6)
      {
        v115 = 0x657070617369642ELL;
        v116 = 0xEC00000064657261;
      }

      else
      {
        v116 = 0xE500000000000000;
        v115 = 0x726961702ELL;
      }

      goto LABEL_62;
    }

    if (v114 != 4)
    {
      v115 = 0x657463657465642ELL;
      v116 = 0xEF79627261654E64;
      goto LABEL_62;
    }

    v116 = 0xE700000000000000;
    v119 = 1952801838;
LABEL_60:
    v115 = v119 | 0x68636100000000;
    goto LABEL_62;
  }

  if (*(v104 + 9) <= 1u)
  {
    if (*(v104 + 9))
    {
      v116 = 0xE800000000000000;
      v115 = 0x7463656E6E6F632ELL;
    }

    else
    {
      v115 = 0x6E776F6E6B6E752ELL;
      v116 = 0xE800000000000000;
    }

    goto LABEL_62;
  }

  if (v114 != 2)
  {
    v116 = 0xE700000000000000;
    v119 = 1953784110;
    goto LABEL_60;
  }

  v115 = 0x6E6E6F637369642ELL;
  v116 = 0xEB00000000746365;
LABEL_62:
  sub_100034434(v104, type metadata accessor for DeviceEvent);
  v131 = sub_1000136BC(v115, v116, &v189);

  *(v108 + 24) = v131;
  *(v108 + 32) = 2082;
  v132 = v185;
  sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v133 = v159;
  v134 = dispatch thunk of CustomStringConvertible.description.getter();
  v136 = v135;
  sub_100034434(v133, type metadata accessor for DeviceEvent);
  v137 = sub_1000136BC(v134, v136, &v189);

  *(v108 + 34) = v137;
  v118 = v132;
  *(v108 + 42) = 2048;
  v33 = v181;
  *(v108 + 44) = v181;
  _os_log_impl(&_mh_execute_header, v106, v107, "Stored new device event for beacon: %{private,mask.hash}s,\nevent: %{public}s, ts: %{public}s (eventId=%lld).", v108, 0x34u);
  swift_arrayDestroy();

  v82 = v180;
  v85 = v188;
  v80 = v166;
LABEL_63:
  v138 = v143;
  sub_1000D2A70(v192 + *(v118 + 32), v143, &unk_1016AA510, &unk_101393150);
  v139 = (*(v157 + 48))(v138, 1, v158);
  v140 = v183;
  if (v139 == 1)
  {

    (*(v164 + 8))(v80, v165);
    v140(v85, v82);
    sub_10000B3A8(v138, &unk_1016AA510, &unk_101393150);
  }

  else
  {
    v141 = v138;
    v142 = v155;
    sub_1000345B4(v141, v155, type metadata accessor for DeviceEvent.AttachmentInfo);
    sub_100229030(v142, v33, v179);

    sub_100034434(v142, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v164 + 8))(v80, v165);
    v140(v85, v82);
  }

  return v33;
}

uint64_t sub_1002274AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v95 = a2;
  v85 = a1;
  v84 = type metadata accessor for DeviceEvent.Location(0);
  __chkstk_darwin(v84);
  v79 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Date();
  v81 = *(v86 - 8);
  __chkstk_darwin(v86);
  v80 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Update();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnConflict();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Insert();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v87 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v13 = *(v93 - 8);
  __chkstk_darwin(v93);
  v15 = &v61 - v14;
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v20 - 8);
  v91 = &v61 - v21;
  v94 = a3;
  if (!sub_100027FA4())
  {
    sub_10020223C();
    swift_allocError();
    *v34 = 2;
    *(v34 + 4) = 1;
    return swift_willThrow();
  }

  v73 = v7;
  v22 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v75 = v9;
  v74 = v6;
  v23 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v24 = sub_1000076D4(v23, qword_10177CA28);
  v96[0] = v95;
  v78 = v24;
  == infix<A>(_:_:)();
  v77 = v22;
  QueryType.filter(_:)();
  v25 = *(v13 + 8);
  v76 = v15;
  v72 = v13 + 8;
  v71 = v25;
  v25(v15, v93);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v27 = sub_1000076D4(v26, qword_10177C9C8);
  v96[3] = v26;
  v96[4] = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  v28 = sub_1000280DC(v96);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  v97[3] = v16;
  v97[4] = &protocol witness table for Table;
  sub_1000280DC(v97);
  SchemaType.select(_:_:)();
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v29 = v31;
  v31(v19, v16);
  sub_100007BAC(v96);
  v32 = v92;
  Connection.prepare(_:)();
  if (v32)
  {

    return sub_100007BAC(v97);
  }

  v70 = v27;
  v68 = v29;
  v69 = v30;
  v92 = 0;
  sub_100007BAC(v97);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v35 = v91;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v36 = type metadata accessor for Row();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    (*(v89 + 104))(v88, enum case for OnConflict.replace(_:), v90);
    v37 = sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v38 = *(type metadata accessor for Setter() - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v64 = *(v38 + 80);
    v65 = v37;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10138C0D0;
    v66 = v39;
    v67 = v40;
    v97[0] = v95;
    <- infix<A>(_:_:)();
    if (qword_101695348 != -1)
    {
      swift_once();
    }

    v41 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
    sub_1000076D4(v41, qword_10177C980);
    v42 = v85;
    v97[0] = *v85;
    <- infix<A>(_:_:)();
    v63 = v26;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    v62 = v19;
    sub_1000076D4(v41, qword_10177C998);
    v97[0] = v42[1];
    <- infix<A>(_:_:)();
    v43 = v76;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v41, qword_10177C9B0);
    v97[0] = v42[2];
    <- infix<A>(_:_:)();
    <- infix<A>(_:_:)();
    v45 = v87;
    v44 = v88;
    QueryType.insert(or:_:)();

    (*(v89 + 8))(v44, v90);
    v46 = v92;
    Connection.run(_:)();
    if (v46)
    {
      (*(v82 + 8))(v45, v83);

      return sub_10000B3A8(v91, &qword_101699D68, &unk_1013B6450);
    }

    v97[0] = v95;
    == infix<A>(_:_:)();
    v47 = v62;
    QueryType.filter(_:)();
    v71(v43, v93);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695378 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v63, qword_10177CA10);
    v48 = v80;
    static Date.trustedNow.getter(v80);
    v49 = v86;
    <- infix<A>(_:_:)();
    (*(v81 + 8))(v48, v49);
    QueryType.update(_:)();

    v68(v47, v16);
    Connection.run(_:)();
    v50 = v85;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177A5C0);
    v52 = v79;
    sub_10001BA68(v50, v79, type metadata accessor for DeviceEvent.Location);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v97[0] = v56;
      *v55 = 136446466;
      sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_100034434(v52, type metadata accessor for DeviceEvent.Location);
      v60 = sub_1000136BC(v57, v59, v97);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2048;
      *(v55 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v53, v54, "Updated location for device event ts: %{public}s (eventId=%lld).", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100034434(v52, type metadata accessor for DeviceEvent.Location);
    }

    (*(v73 + 8))(v75, v74);
    (*(v82 + 8))(v87, v83);
  }

  else
  {
  }

  return sub_10000B3A8(v91, &qword_101699D68, &unk_1013B6450);
}

uint64_t sub_1002283A4(uint64_t a1, uint64_t a2)
{
  v21[6] = a2;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v20 = &v19 - v11;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v5, v2);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v13, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v14 = v20;
  QueryType.order(_:)();

  v15 = *(v7 + 8);
  v15(v10, v6);
  v21[3] = v6;
  v21[4] = &protocol witness table for Table;
  v16 = sub_1000280DC(v21);
  (*(v7 + 16))(v16, v14, v6);
  v17 = sub_10021E704(v21);
  v15(v14, v6);
  sub_100007BAC(v21);
  return v17;
}

uint64_t sub_100228740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v41 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v41 - 8);
  v6 = __chkstk_darwin(v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v39 = &v37 - v10;
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  v12 = type metadata accessor for Table();
  v43 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v37 - v15;
  v16 = *(a2 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v37 = a1;
    v38 = v8;
    v46[0] = _swiftEmptyArrayStorage;
    sub_101123D1C(0, v16, 0);
    v17 = v46[0];
    v18 = (a2 + 32);
    v19 = *(v46[0] + 16);
    do
    {
      v21 = *v18++;
      v20 = v21;
      v46[0] = v17;
      v22 = v17[3];
      if (v19 >= v22 >> 1)
      {
        sub_101123D1C((v22 > 1), v19 + 1, 1);
        v17 = v46[0];
      }

      v17[2] = v19 + 1;
      *(v17 + v19++ + 32) = v20;
      --v16;
    }

    while (v16);
    v8 = v38;
  }

  v38 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177C788);
  type metadata accessor for UUID();
  v24 = v39;
  == infix<A>(_:_:)();
  v46[0] = v17;
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v25, qword_10177C9E0);
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for [A]);
  sub_100028088();
  Collection<>.contains(_:)();

  v26 = v40;
  && infix(_:_:)();
  v27 = *(v5 + 8);
  v28 = v41;
  v27(v8, v41);
  v27(v24, v28);
  v29 = v42;
  QueryType.filter(_:)();
  v27(v26, v28);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v30, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v31 = v44;
  QueryType.order(_:)();

  v32 = v43;
  v33 = *(v43 + 8);
  v33(v29, v12);
  v46[3] = v12;
  v46[4] = &protocol witness table for Table;
  v34 = sub_1000280DC(v46);
  (*(v32 + 16))(v34, v31, v12);
  v35 = sub_10021E704(v46);
  v33(v31, v12);
  sub_100007BAC(v46);
  return v35;
}

uint64_t sub_100228CEC(uint64_t a1)
{
  v16 = a1;
  v1 = type metadata accessor for Delete();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = type metadata accessor for Table();
  v17 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100027FA4())
  {
    v15 = v1;
    v14[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v11, qword_10177C788);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v7, v4);
    QueryType.delete()();
    Connection.run(_:)();

    (*(v18 + 8))(v3, v15);
    return (*(v17 + 8))(v10, v8);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100229030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v6 = type metadata accessor for OnConflict();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Insert();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  v14 = sub_100027FA4();
  if (v14)
  {
    v32 = v3;
    v33 = v11;
    v34 = v10;
    v35 = v14;
    v30 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
    (*(v7 + 104))(v9, enum case for OnConflict.ignore(_:), v6);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = xmmword_10138B360;
    if (qword_101695380 != -1)
    {
      swift_once();
    }

    v31 = v13;
    v15 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v15, qword_10177CA28);
    v29 = a2;
    v38 = a2;
    <- infix<A>(_:_:)();
    if (qword_101695388 != -1)
    {
      swift_once();
    }

    v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v16, qword_10177CA40);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_101695390 != -1)
    {
      swift_once();
    }

    v17 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v17, qword_10177CA58);
    type metadata accessor for DeviceEvent.AttachmentInfo(0);
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v18 = v31;
    QueryType.insert(or:_:)();

    (*(v7 + 8))(v9, v6);
    v19 = v32;
    Connection.run(_:)();
    if (v19)
    {
      (*(v33 + 8))(v18, v34);
    }

    else
    {
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177A5C0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v29;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v23, v24, "Stored attachment info for device event (eventId=%lld).", v27, 0xCu);
      }

      return (*(v33 + 8))(v18, v34);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100229584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v4, qword_10177C788);
  v5 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v6 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v6, qword_10177C9E0);
  sub_100028088();
  Row.subscript.getter();
  v7 = sub_1009939B8(v26);
  if (v7 == 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = type metadata accessor for KeySyncMetadata(0);
  *(a2 + v9[5]) = v8;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v10, qword_10177C9C8);
  v11 = v9[7];
  v12 = type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177C7B8);
  Row.get<A>(_:)();
  if (v22)
  {
    goto LABEL_13;
  }

  if (v25 == 1)
  {
    v15 = 1;
  }

  else
  {
    if (v25)
    {
      sub_10022A480();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
LABEL_13:
      v13 = type metadata accessor for Row();
      (*(*(v13 - 8) + 8))(a1, v13);
      (*(*(v5 - 8) + 8))(a2, v5);
      return (*(*(v12 - 8) + 8))(a2 + v11, v12);
    }

    v15 = 0;
  }

  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v16, qword_10177C7A0);
  sub_100029580();
  Row.subscript.getter();
  if (qword_1016952B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v17, qword_10177C7D0);
  Row.subscript.getter();
  v18 = (a2 + v9[6]);
  if (v15)
  {
    v18[3] = &type metadata for SecondaryIndex;
    v19 = sub_10022A4D4();
  }

  else if (v24)
  {
    v18[3] = &type metadata for PrimaryWildIndex;
    v19 = sub_10022A528();
  }

  else
  {
    v18[3] = &type metadata for PrimaryIndex;
    v19 = sub_10002A2B8();
  }

  v18[4] = v19;
  *v18 = v23;
  v21 = type metadata accessor for Row();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t sub_100229A10@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  v19 = a3;
  v5 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Date();
  v17 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_1000076D4(v11, qword_10177C980);
  Row.get<A>(_:)();
  if (v3)
  {
    v12 = type metadata accessor for Row();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  else
  {
    *v19 = v20;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177C998);
    Row.get<A>(_:)();
    *(v19 + 1) = v20;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177C9B0);
    Row.get<A>(_:)();
    *(v19 + 2) = v20;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v5, qword_10177C9C8);
    type metadata accessor for Table();
    QueryType.subscript.getter();
    Row.get<A>(_:)();

    v14 = type metadata accessor for Row();
    (*(*(v14 - 8) + 8))(a1, v14);
    (*(v18 + 8))(v7, v5);
    v15 = type metadata accessor for DeviceEvent.Location(0);
    return (*(v17 + 32))(&v19[*(v15 + 28)], v10, v8);
  }
}

uint64_t sub_100229E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a2;
  v23 = a3;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695388 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177CA40);
  Row.get<A>(_:)();
  if (v3)
  {
    v17 = type metadata accessor for Row();
    (*(*(v17 - 8) + 8))(a1, v17);

    return (*(v13 + 56))(v23, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v15, v11, v8);
    if (qword_101695390 != -1)
    {
      swift_once();
    }

    v18 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v18, qword_10177CA58);
    Row.get<A>(_:)();
    v20 = type metadata accessor for Row();
    (*(*(v20 - 8) + 8))(a1, v20);

    sub_1000D2AD8(v7, &v15[*(v12 + 20)], &qword_1016980D0, &unk_10138F3B0);
    v21 = v23;
    sub_10001BA68(v15, v23, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v13 + 56))(v21, 0, 1, v12);
    return sub_100034434(v15, type metadata accessor for DeviceEvent.AttachmentInfo);
  }
}

void *sub_10022A2C0()
{
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v1, qword_10177C788);
  type metadata accessor for UUID();
  return Row.subscript.getter();
}

void *sub_10022A388@<X0>(void *a1@<X8>)
{
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v2, qword_10177C770);
  result = Row.subscript.getter();
  *a1 = v4;
  return result;
}

unint64_t sub_10022A42C()
{
  result = qword_101699DF8;
  if (!qword_101699DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DF8);
  }

  return result;
}

unint64_t sub_10022A480()
{
  result = qword_101699E18;
  if (!qword_101699E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E18);
  }

  return result;
}

unint64_t sub_10022A4D4()
{
  result = qword_101699E30;
  if (!qword_101699E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E30);
  }

  return result;
}

unint64_t sub_10022A528()
{
  result = qword_101699E40;
  if (!qword_101699E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E40);
  }

  return result;
}

unint64_t sub_10022A59C()
{
  result = qword_101699E48;
  if (!qword_101699E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E48);
  }

  return result;
}

unint64_t sub_10022A60C()
{
  result = qword_101699E68;
  if (!qword_101699E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E68);
  }

  return result;
}

unint64_t sub_10022A7B0()
{
  result = qword_101699F10;
  if (!qword_101699F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699F10);
  }

  return result;
}

unint64_t sub_10022A808()
{
  result = qword_101699F18;
  if (!qword_101699F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699F18);
  }

  return result;
}

uint64_t sub_10022A85C()
{
  v0 = sub_1000BC4D4(&qword_101699F20, &qword_101393398);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_1000BC4D4(&qword_101699F28, &unk_1013933A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for UTHardwareColor();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);

  UTType.init(_deviceModelCode:enclosureColor:)();
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    static UTType._computer.getter();
    if (v14(v5, 1, v6) != 1)
    {
      sub_10022AD10(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
  }

  static UTType._iPhone.getter();
  v15 = UTType.conforms(to:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  if (v15 & 1) != 0 || (static UTType._iPad.getter(), v17 = UTType.conforms(to:)(), v16(v10, v6), (v17) || (static UTType._iPodTouch.getter(), v18 = UTType.conforms(to:)(), v16(v10, v6), (v18))
  {
    v16(v12, v6);
    return 1;
  }

  else
  {
    static UTType._appleWatch.getter();
    v20 = UTType.conforms(to:)();
    v16(v10, v6);
    if (v20)
    {
      v16(v12, v6);
      return 2;
    }

    else
    {
      static UTType._appleTV.getter();
      v21 = UTType.conforms(to:)();
      v16(v10, v6);
      if (v21 & 1) != 0 || (static UTType._appleTV.getter(), v22 = UTType.conforms(to:)(), v16(v10, v6), (v22))
      {
        v16(v12, v6);
        return 3;
      }

      else
      {
        static UTType._mac.getter();
        v23 = UTType.conforms(to:)();
        v16(v10, v6);
        v16(v12, v6);
        if (v23)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

BOOL sub_10022AC4C()
{
  v1 = sub_10022A85C();
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      v2 = *(v0 + 64);
      v3 = *(v0 + 72);

      v4 = sub_10098E9DC(v2, v3);
      return (v4 & &_mh_execute_header) == 0 && v4 > 0xBu;
    }

LABEL_9:
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    v9 = sub_10098E9DC(v7, v8);
    return (v9 & &_mh_execute_header) == 0 && v9 > 0xEu;
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 72);

  v12 = sub_10098E9DC(v10, v11);
  return (v12 & 0xFFF8) != 0 && (v12 & &_mh_execute_header) == 0;
}

uint64_t sub_10022AD10(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699F28, &unk_1013933A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022AD78()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5D8);
  v1 = sub_1000076D4(v0, qword_10177A5D8);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022AE40()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_1008CE048(0, 0, v4, &unk_1013933E0, v6);

  return sub_10022D788(v4);
}

uint64_t sub_10022AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  v5 = type metadata accessor for UUID();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v4[41] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169A070, &qword_1013933F8);
  v4[42] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v4[43] = v7;
  v4[44] = *(v7 - 8);
  v4[45] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v4[46] = v8;
  v4[47] = *(v8 - 8);
  v4[48] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[49] = v9;
  *v9 = v4;
  v9[1] = sub_10022B25C;

  return daemon.getter();
}

uint64_t sub_10022B25C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 400) = a1;

  v3 = swift_task_alloc();
  *(v2 + 408) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100019390(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019390(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_10022B438;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10022B438(uint64_t a1)
{
  *(*v2 + 416) = a1;

  if (v1)
  {

    v4 = sub_10022B590;
    v5 = 0;
  }

  else
  {

    v4 = sub_10022B710;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10022B590()
{
  if (qword_1016944D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing PencilPairingService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10022B710()
{
  sub_100D7BE70();

  return _swift_task_switch(sub_10022B77C, 0, 0);
}

uint64_t sub_10022B77C()
{
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_10022B82C;
  v2 = v0[42];
  v3 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_10022B82C()
{

  return _swift_task_switch(sub_10022B928, 0, 0);
}

uint64_t sub_10022B928()
{
  v1 = v0[42];
  v2 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[47];
    v3 = v0[48];
    v6 = v0[45];
    v5 = v0[46];
    v7 = v0[43];
    v8 = v0[44];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[41];
    v0[54] = *v1;
    sub_10022D7F0(v1 + *(v2 + 48), v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v0[73] = *v0[41];
      v12 = swift_task_alloc();
      v0[74] = v12;
      v13 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      *v12 = v0;
      v12[1] = sub_10022CE0C;
      v14 = v0[29];
      v15 = sub_10022D860;
      v16 = v0 + 17;
    }

    else
    {
      v18 = v0[38];
      v17 = v0[39];
      v19 = v0[34];
      sub_10022D8CC(v0[41], v17);
      sub_10022D930(v17, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v21 = *(v19 + 32);
      v22 = v0[38];
      v23 = v0[32];
      v24 = v0[30];
      v25 = (v0[31] + 8);
      if (EnumCaseMultiPayload == 1)
      {
        v21(v0[35], v22, v0[33]);
        v26 = [objc_allocWithZone(SPDiscoveredAccessory) init];
        v0[64] = v26;
        Identifier.id.getter();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v25)(v23, v24);
        [v26 setIdentifier:isa];

        v28 = swift_task_alloc();
        v0[65] = v28;
        v13 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
        *v28 = v0;
        v28[1] = sub_10022C5F4;
        v14 = v0[29];
        v15 = sub_10022D9F0;
        v16 = v0 + 21;
      }

      else
      {
        v21(v0[36], v22, v0[33]);
        v29 = [objc_allocWithZone(SPDiscoveredAccessory) init];
        v0[55] = v29;
        Identifier.id.getter();
        v30 = UUID._bridgeToObjectiveC()().super.isa;
        (*v25)(v23, v24);
        [v29 setIdentifier:v30];

        v31 = swift_task_alloc();
        v0[56] = v31;
        v13 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
        *v31 = v0;
        v31[1] = sub_10022BDFC;
        v14 = v0[29];
        v15 = sub_10022D9F0;
        v16 = v0 + 25;
      }
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v16, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, v15, v14, v13);
  }
}

uint64_t sub_10022BDFC()
{

  return _swift_task_switch(sub_10022BEF8, 0, 0);
}

uint64_t sub_10022BEF8(void *a1, void (*a2)(), uint64_t a3)
{
  v4 = *(v3 + 200);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v10 = -1;
    v11 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v4 + 56);
    *(v3 + 464) = v5;
    *(v3 + 472) = ~v11;
    *(v3 + 456) = v4;
    v9 = 63 - v11;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  v8 = *(v3 + 128);
  *(v3 + 464) = v5;
  *(v3 + 472) = v6;
  *(v3 + 456) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v6 + 64;
LABEL_7:
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      v14 = v9 >> 6;
      v15 = v7;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v13);
        ++v15;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_12:
    v16 = (v12 - 1) & v12;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    goto LABEL_13;
  }

  v19 = __CocoaSet.Iterator.next()();
  if (!v19)
  {
    goto LABEL_19;
  }

  *(v3 + 224) = v19;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v17 = *(v3 + 216);
  v13 = v7;
  v16 = v8;
LABEL_13:
  *(v3 + 488) = v13;
  *(v3 + 496) = v16;
  *(v3 + 480) = v17;
  if (v17)
  {
    v18 = swift_task_alloc();
    *(v3 + 504) = v18;
    *v18 = v3;
    v18[1] = sub_10022C228;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = (v3 + 208);
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_19:
  v20 = *(v3 + 456);
  v28 = *(v3 + 312);
  v21 = *(v3 + 288);
  v23 = *(v3 + 264);
  v22 = *(v3 + 272);

  sub_1000128F8(v20);
  (*(v22 + 8))(v21, v23);
  sub_10022D994(v28);
  v24 = swift_task_alloc();
  *(v3 + 424) = v24;
  *v24 = v3;
  v24[1] = sub_10022B82C;
  v25 = *(v3 + 336);
  v26 = *(v3 + 344);

  return AsyncStream.Iterator.next(isolation:)(v25, 0, 0, v26);
}

uint64_t sub_10022C228()
{

  return _swift_task_switch(sub_10022C324, 0, 0);
}

uint64_t sub_10022C324()
{
  if (*(v0 + 208))
  {
    [*(v0 + 208) discoveredAccessory:*(v0 + 440)];

    v1 = swift_unknownObjectRelease();
  }

  else
  {
  }

  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 456);
  if (v6 < 0)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
      goto LABEL_17;
    }

    *(v0 + 224) = v12;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v11 = *(v0 + 216);
    v8 = v5;
    v10 = v4;
  }

  else
  {
    v7 = *(v0 + 496);
    v8 = *(v0 + 488);
    if (!v4)
    {
      v9 = *(v0 + 488);
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((*(v0 + 472) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v7 = *(*(v0 + 464) + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v1, v2, v3);
    }

LABEL_10:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  *(v0 + 488) = v8;
  *(v0 + 496) = v10;
  *(v0 + 480) = v11;
  if (v11)
  {
    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = sub_10022C228;
    v2 = SharingCircleWildAdvertisementKey.init(key:);
    v1 = v0 + 208;
    v3 = 0;

    return XPCSession.proxy(errorHandler:)(v1, v2, v3);
  }

LABEL_17:
  v14 = *(v0 + 456);
  v22 = *(v0 + 312);
  v15 = *(v0 + 288);
  v17 = *(v0 + 264);
  v16 = *(v0 + 272);

  sub_1000128F8(v14);
  (*(v16 + 8))(v15, v17);
  sub_10022D994(v22);
  v18 = swift_task_alloc();
  *(v0 + 424) = v18;
  *v18 = v0;
  v18[1] = sub_10022B82C;
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);

  return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v20);
}

uint64_t sub_10022C5F4()
{

  return _swift_task_switch(sub_10022C6F0, 0, 0);
}

uint64_t sub_10022C6F0(void *a1, void (*a2)(), uint64_t a3)
{
  v4 = v3[21];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v10 = -1;
    v11 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v4 + 56);
    v3[68] = ~v11;
    v3[67] = v5;
    v3[66] = v4;
    v9 = 63 - v11;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = v3[11];
  v3[68] = v6;
  v3[67] = v5;
  v3[66] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v6 + 64;
LABEL_7:
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      v14 = v9 >> 6;
      v15 = v7;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v13);
        ++v15;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_12:
    v16 = (v12 - 1) & v12;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    goto LABEL_13;
  }

  v19 = __CocoaSet.Iterator.next()();
  if (!v19)
  {
    goto LABEL_19;
  }

  v3[24] = v19;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v17 = v3[23];
  v13 = v7;
  v16 = v8;
LABEL_13:
  v3[71] = v16;
  v3[70] = v13;
  v3[69] = v17;
  if (v17)
  {
    v18 = swift_task_alloc();
    v3[72] = v18;
    *v18 = v3;
    v18[1] = sub_10022CA30;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = v3 + 22;
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_19:
  v20 = v3[66];
  v21 = v3[64];
  v29 = v3[39];
  v22 = v3[34];
  v23 = v3[35];
  v24 = v3[33];

  sub_1000128F8(v20);
  (*(v22 + 8))(v23, v24);
  sub_10022D994(v29);
  v25 = swift_task_alloc();
  v3[53] = v25;
  *v25 = v3;
  v25[1] = sub_10022B82C;
  v26 = v3[42];
  v27 = v3[43];

  return AsyncStream.Iterator.next(isolation:)(v26, 0, 0, v27);
}

uint64_t sub_10022CA30()
{

  return _swift_task_switch(sub_10022CB2C, 0, 0);
}

uint64_t sub_10022CB2C()
{
  if (*(v0 + 176))
  {
    [*(v0 + 176) lostAccessory:*(v0 + 512)];

    v1 = swift_unknownObjectRelease();
  }

  else
  {
  }

  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 528);
  if (v6 < 0)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
      goto LABEL_17;
    }

    *(v0 + 192) = v12;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v11 = *(v0 + 184);
    v8 = v5;
    v10 = v4;
  }

  else
  {
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    if (!v4)
    {
      v9 = *(v0 + 560);
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((*(v0 + 544) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v7 = *(*(v0 + 536) + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v1, v2, v3);
    }

LABEL_10:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  *(v0 + 568) = v10;
  *(v0 + 560) = v8;
  *(v0 + 552) = v11;
  if (v11)
  {
    v13 = swift_task_alloc();
    *(v0 + 576) = v13;
    *v13 = v0;
    v13[1] = sub_10022CA30;
    v2 = SharingCircleWildAdvertisementKey.init(key:);
    v1 = v0 + 176;
    v3 = 0;

    return XPCSession.proxy(errorHandler:)(v1, v2, v3);
  }

LABEL_17:
  v14 = *(v0 + 528);
  v15 = *(v0 + 512);
  v23 = *(v0 + 312);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v18 = *(v0 + 264);

  sub_1000128F8(v14);
  (*(v16 + 8))(v17, v18);
  sub_10022D994(v23);
  v19 = swift_task_alloc();
  *(v0 + 424) = v19;
  *v19 = v0;
  v19[1] = sub_10022B82C;
  v20 = *(v0 + 336);
  v21 = *(v0 + 344);

  return AsyncStream.Iterator.next(isolation:)(v20, 0, 0, v21);
}

uint64_t sub_10022CE0C()
{

  return _swift_task_switch(sub_10022CF08, 0, 0);
}

uint64_t sub_10022CF08(void *a1, void (*a2)(), uint64_t a3)
{
  v4 = v3[17];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v10 = -1;
    v11 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v4 + 56);
    v3[77] = ~v11;
    v3[76] = v5;
    v3[75] = v4;
    v9 = 63 - v11;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v3[77] = v6;
  v3[76] = v5;
  v3[75] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v6 + 64;
LABEL_7:
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      v14 = v9 >> 6;
      v15 = v7;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v13);
        ++v15;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_12:
    v16 = (v12 - 1) & v12;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    goto LABEL_13;
  }

  v19 = __CocoaSet.Iterator.next()();
  if (!v19)
  {
    goto LABEL_19;
  }

  v3[20] = v19;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v17 = v3[19];
  v13 = v7;
  v16 = v8;
LABEL_13:
  v3[80] = v16;
  v3[79] = v13;
  v3[78] = v17;
  if (v17)
  {
    v18 = swift_task_alloc();
    v3[81] = v18;
    *v18 = v3;
    v18[1] = sub_10022D1F8;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = v3 + 18;
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_19:
  sub_1000128F8(v3[75]);

  v20 = swift_task_alloc();
  v3[53] = v20;
  *v20 = v3;
  v20[1] = sub_10022B82C;
  v21 = v3[42];
  v22 = v3[43];

  return AsyncStream.Iterator.next(isolation:)(v21, 0, 0, v22);
}

uint64_t sub_10022D1F8()
{

  return _swift_task_switch(sub_10022D2F4, 0, 0);
}

uint64_t sub_10022D2F4()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = _convertErrorToNSError(_:)();
    [v1 accessoryDiscoveryError:v2];

    v3 = swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[75];
  if (v8 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_17;
    }

    v0[20] = v14;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v13 = v0[19];
    v10 = v7;
    v12 = v6;
  }

  else
  {
    v9 = v0[80];
    v10 = v0[79];
    if (!v6)
    {
      v11 = v0[79];
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= ((v0[77] + 64) >> 6))
        {
          goto LABEL_17;
        }

        v9 = *(v0[76] + 8 * v10);
        ++v11;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v3, v4, v5);
    }

LABEL_10:
    v12 = (v9 - 1) & v9;
    v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
  }

  v0[80] = v12;
  v0[79] = v10;
  v0[78] = v13;
  if (v13)
  {
    v15 = swift_task_alloc();
    v0[81] = v15;
    *v15 = v0;
    v15[1] = sub_10022D1F8;
    v4 = SharingCircleWildAdvertisementKey.init(key:);
    v3 = (v0 + 18);
    v5 = 0;

    return XPCSession.proxy(errorHandler:)(v3, v4, v5);
  }

LABEL_17:
  sub_1000128F8(v0[75]);

  v16 = swift_task_alloc();
  v0[53] = v16;
  *v16 = v0;
  v16[1] = sub_10022B82C;
  v17 = v0[42];
  v18 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v17, 0, 0, v18);
}

uint64_t type metadata accessor for LocalFindableAccessoryDiscoverySession(uint64_t a1)
{
  result = qword_101699F58;
  if (!qword_101699F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022D5E0()
{
  if (qword_1016944D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177A5D8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TRACE: stopScanning()", v2, 2u);
  }
}

uint64_t sub_10022D6C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_10022AF78(a1, v4, v5, v6);
}

uint64_t sub_10022D788(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022D7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10022D868()
{
  result = qword_10169A0B0;
  if (!qword_10169A0B0)
  {
    sub_1000BC580(&unk_1016A6020, &unk_101393420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A0B0);
  }

  return result;
}

uint64_t sub_10022D8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022D930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022D994(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10022DA4C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10022DC18(319);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A138, &type metadata for VersionNumber);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169A140, &type metadata for LocalFindableAccessoryFirmwareVersionNumber);
          if (v5 <= 0x3F)
          {
            sub_1002359B8(319, &qword_10169A148, &type metadata for UInt64);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &qword_10169A150, &type metadata for AccessoryCapabilities);
              if (v7 <= 0x3F)
              {
                sub_1002359B8(319, &qword_10169A158, &type metadata for AccessoryBatteryType);
                if (v8 <= 0x3F)
                {
                  sub_1002359B8(319, &unk_10169A160, &type metadata for AccessoryBatteryLevel);
                  if (v9 <= 0x3F)
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
}

void sub_10022DC18(uint64_t a1)
{
  if (!qword_10169A130)
  {
    type metadata accessor for AirTagVersionNumber();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10169A130);
    }
  }
}

unsigned __int8 *sub_10022DC80@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10022DD48()
{
  v1 = *v0;
  v2 = 1819047270;
  v3 = 7827308;
  v4 = 0x6C61636974697263;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10022DDE0()
{
  result = qword_10169A1C0;
  if (!qword_10169A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A1C0);
  }

  return result;
}

unint64_t sub_10022DE34(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x44746375646F7270;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 4:
      result = 0x6465767265736572;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x657261776D726966;
      break;
    case 8:
      result = 0x6C6F636F746F7270;
      break;
    case 9:
      result = 0x6556794D646E6966;
      break;
    case 10:
      result = 0x496B726F7774656ELL;
      break;
    case 11:
      result = 0x5479726574746162;
      break;
    case 12:
      result = 0x4C79726574746162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022DFE4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169A3C0, &qword_101393B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100235B54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v37) = 0;
  type metadata accessor for UUID();
  sub_100231364(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for RawAccessoryMetadata(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v37 = *v10;
    v38 = v11;
    v36 = 1;
    sub_10002E98C(v37, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v12 = (v3 + v9[6]);
    v13 = v12[1];
    v37 = *v12;
    v38 = v13;
    v36 = 2;
    sub_10002E98C(v37, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v14 = (v3 + v9[7]);
    v15 = v14[1];
    v37 = *v14;
    v38 = v15;
    v36 = 3;
    sub_10002E98C(v37, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v16 = (v3 + v9[8]);
    v17 = v16[1];
    v37 = *v16;
    v38 = v17;
    v36 = 4;
    sub_10002E98C(v37, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v18 = (v3 + v9[9]);
    v19 = v18[1];
    v37 = *v18;
    v38 = v19;
    v36 = 5;
    sub_10002E98C(v37, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v20 = (v3 + v9[10]);
    v21 = v20[1];
    v37 = *v20;
    v38 = v21;
    v36 = 6;
    sub_10002E98C(v37, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v22 = (v3 + v9[11]);
    v23 = v22[1];
    v37 = *v22;
    v38 = v23;
    v36 = 7;
    sub_10002E98C(v37, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v24 = (v3 + v9[12]);
    v25 = v24[1];
    v37 = *v24;
    v38 = v25;
    v36 = 8;
    sub_10002E98C(v37, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v26 = (v3 + v9[13]);
    v27 = v26[1];
    v37 = *v26;
    v38 = v27;
    v36 = 9;
    sub_10002E98C(v37, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v29 = (v3 + v9[14]);
    v30 = v29[1];
    v37 = *v29;
    v38 = v30;
    v36 = 10;
    sub_10002E98C(v37, v30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v31 = (v3 + v9[15]);
    v32 = v31[1];
    v37 = *v31;
    v38 = v32;
    v36 = 11;
    sub_10002E98C(v37, v32);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
    v33 = (v3 + v9[16]);
    v34 = v33[1];
    v37 = *v33;
    v38 = v34;
    v36 = 12;
    sub_10002E98C(v37, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, v38);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10022E540(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100231364(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for RawAccessoryMetadata(0);
  if (*(v1 + v2[5] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[6] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[7] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[8] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[9] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[10] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[11] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[12] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[13] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[14] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[15] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[16] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

uint64_t sub_10022E94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169A3B0, &qword_101393B18);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for RawAccessoryMetadata(0);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100235B54();
  v27 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v23;
  v20 = v9;
  v21 = v11;
  LOBYTE(v28) = 0;
  sub_100231364(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v21;
  v15 = *(v22 + 32);
  v24 = v4;
  v15(v21, v13);
  v29 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v20;
  *&v14[v20[5]] = v28;
  v29 = 2;
  v19[1] = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19[0] = a1;
  *&v14[v16[6]] = v28;
  v29 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[7]] = v28;
  v29 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[8]] = v28;
  v29 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[9]] = v28;
  v29 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[10]] = v28;
  v29 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[11]] = v28;
  v29 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[12]] = v28;
  v29 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[13]] = v28;
  v29 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[14]] = v28;
  v29 = 11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[15]] = v28;
  v29 = 12;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v25 + 8))(v27, v26);
  v17 = v21;
  *&v21[v20[16]] = v28;
  sub_100235BA8(v17, v12, type metadata accessor for RawAccessoryMetadata);
  sub_100007BAC(a1);
  return sub_10023533C(v17, type metadata accessor for RawAccessoryMetadata);
}

unsigned __int8 *sub_10022F470@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10022F538()
{
  v1 = 0x64657265776F70;
  v2 = 0x6167726168636572;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x61686365526E6F6ELL;
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

uint64_t sub_10022F5D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100234744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10022F5F8(uint64_t a1)
{
  v2 = sub_100235B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022F634(uint64_t a1)
{
  v2 = sub_100235B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10022F6D8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x44746375646F7270;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 4:
      result = 0x657261776D726966;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6C6F636F746F7270;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5479726574746162;
      break;
    case 11:
      result = 0x5379726574746162;
      break;
    case 12:
      result = 0x6E6F6973726576;
      break;
    case 13:
      result = 0x6556794D646E6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022F89C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169A260, &qword_101393830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100235080();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for UUID();
  sub_100231364(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AccessoryMetadata(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    *&v21 = *v10;
    *(&v21 + 1) = v11;
    v23 = 1;
    sub_100017D5C(v21, v11);
    sub_10023539C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v21, *(&v21 + 1));
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LODWORD(v21) = *(v3 + v9[8]);
    v23 = 4;
    sub_1002353F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21) = 5;
    type metadata accessor for AirTagVersionNumber();
    sub_100231364(&qword_10169A278, &type metadata accessor for AirTagVersionNumber, &protocol conformance descriptor for AirTagVersionNumber);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v9[10]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    LODWORD(v21) = v13;
    BYTE4(v21) = v12;
    v23 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v3 + v9[11]);
    v15 = *(v14 + 16);
    v21 = *v14;
    v22 = v15;
    v23 = 7;
    sub_100235444();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + v9[13]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 4);
    LODWORD(v21) = v17;
    BYTE4(v21) = v16;
    v23 = 9;
    sub_100235498();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + v9[14]);
    v23 = 10;
    sub_1002354EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + v9[15]);
    v23 = 11;
    sub_100235540();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v9[17]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 4);
    LODWORD(v21) = v19;
    BYTE4(v21) = v18;
    v23 = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10022FDD4(uint64_t a1)
{
  v2 = type metadata accessor for AirTagVersionNumber();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  type metadata accessor for UUID();
  sub_100231364(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for AccessoryMetadata(0);
  Data.hash(into:)();
  if (*(v1 + v9[6] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v9[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = v1 + v9[8];
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  Hasher._combine(_:)(*v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  sub_100235594(v1 + v9[9], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_100231364(&qword_10169A2A0, &type metadata accessor for AirTagVersionNumber, &protocol conformance descriptor for AirTagVersionNumber);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v13 = (v1 + v9[10]);
  if (v13[1])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v15 = *v13;
    v14 = HIBYTE(*v13);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(BYTE2(v15));
  }

  Hasher._combine(_:)(v14);
  v16 = v1 + v9[11];
  if (*(v16 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 12);
    v20 = *v16;
    v19 = *(v16 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v17);
  }

  v21 = v1 + v9[12];
  if (*(v21 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *v21;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22);
  }

  v23 = v1 + v9[13];
  if (*(v23 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v24);
  }

  v25 = *(v1 + v9[14]);
  if (v25 == 4)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v25);
  v26 = *(v1 + v9[15]);
  if (v26 == 5)
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v26);
  String.hash(into:)();
  v27 = (v1 + v9[17]);
  if (v27[1])
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v29 = *v27;
    v28 = HIBYTE(*v27);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v29);
    Hasher._combine(_:)(BYTE2(v29));
  }

  Hasher._combine(_:)(v28);
}

uint64_t sub_1002302AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = type metadata accessor for UUID();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169A218, &qword_101393828);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = type metadata accessor for AccessoryMetadata(0);
  v12 = __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 36);
  v16 = type metadata accessor for AirTagVersionNumber();
  v17 = *(*(v16 - 8) + 56);
  v55 = v15;
  v56 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v54 = a1;
  sub_1000035D0(a1, v18);
  sub_100235080();
  v19 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v21 = v56;
    sub_100007BAC(v54);
    sub_10000B3A8(&v21[v55], &qword_10169A0C0, &unk_10139DBB0);
  }

  else
  {
    v47 = v5;
    v53 = v11;
    LOBYTE(v57) = 0;
    sub_100231364(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v56;
    (*(v49 + 32))(v56, v20, v6);
    v59 = 1;
    sub_1002350D4();
    v50 = v10;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46[3] = v6;
    v23 = v53;
    *&v22[v53[5]] = v57;
    LOBYTE(v57) = 2;
    v46[2] = 0;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = &v22[v23[6]];
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v57) = 3;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = &v22[v23[7]];
    *v28 = v27;
    v28[1] = v29;
    v59 = 4;
    v46[1] = sub_100235128();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v22[v23[8]] = v57;
    LOBYTE(v57) = 5;
    sub_100231364(&qword_10169A238, &type metadata accessor for AirTagVersionNumber, &protocol conformance descriptor for AirTagVersionNumber);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023517C(v47, &v22[v55]);
    v59 = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = BYTE4(v57);
    v31 = &v22[v23[10]];
    *v31 = v57;
    v31[4] = v30;
    v59 = 7;
    sub_1002351EC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = &v22[v23[11]];
    v33 = v58;
    *v32 = v57;
    v32[16] = v33;
    LOBYTE(v57) = 8;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = &v22[v23[12]];
    *v35 = v34;
    v35[8] = v36 & 1;
    v59 = 9;
    sub_100235240();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = BYTE4(v57);
    v38 = &v56[v53[13]];
    *v38 = v57;
    v38[4] = v37;
    v59 = 10;
    sub_100235294();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56[v53[14]] = v57;
    v59 = 11;
    sub_1002352E8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56[v53[15]] = v57;
    LOBYTE(v57) = 12;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = &v56[v53[16]];
    *v40 = v39;
    v40[1] = v41;
    v59 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v51 + 8))(v50, v52);
    v42 = BYTE4(v57);
    v43 = v56;
    v44 = &v56[v53[17]];
    *v44 = v57;
    v44[4] = v42;
    sub_100235BA8(v43, v48, type metadata accessor for AccessoryMetadata);
    sub_100007BAC(v54);
    return sub_10023533C(v43, type metadata accessor for AccessoryMetadata);
  }
}

uint64_t sub_100230BF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100234BA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100230C2C(uint64_t a1)
{
  v2 = sub_100235080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230C68(uint64_t a1)
{
  v2 = sub_100235080();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100230CEC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100230D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_100230DE0()
{
  result = qword_10169A1D0;
  if (!qword_10169A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A1D0);
  }

  return result;
}

uint64_t sub_100230E34()
{
  _StringGuts.grow(_:)(214);
  v1._countAndFlagsBits = 0x5B203A64697BLL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100231364(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010134D520;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4 = type metadata accessor for AccessoryMetadata(0);
  sub_1002313AC();
  v5._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x800000010134D540;
  String.append(_:)(v6);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x4E6C65646F6D205DLL;
  v7._object = 0xEE005B203A656D61;
  String.append(_:)(v7);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000010134D560;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_10098E010();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x800000010134D580;
  String.append(_:)(v10);
  sub_1000BC4D4(&qword_10169A1D8, &qword_101393800);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x800000010134D5A0;
  String.append(_:)(v11);
  sub_1000BC4D4(&qword_10169A1E0, &qword_101393808);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  v12._object = 0x800000010134D5C0;
  String.append(_:)(v12);
  sub_1000BC4D4(&qword_10169A1E8, &qword_101393810);
  _print_unlocked<A, B>(_:_:)();
  v13._object = 0x800000010134D5E0;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  sub_1000BC4D4(&qword_10169A1F0, &qword_101393818);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0x800000010134D600;
  String.append(_:)(v14);
  sub_1000BC4D4(&qword_10169A1F8, &qword_101393820);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0x6F6973726576205DLL;
  v15._object = 0xEC0000005B203A6ELL;
  String.append(_:)(v15);
  String.append(_:)(*(v0 + *(v4 + 64)));
  v16._countAndFlagsBits = 32093;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  result = 0;
  v18 = v0 + *(v4 + 44);
  if ((*(v18 + 16) & 1) == 0)
  {
    v20 = *v18;
    v19 = *(v18 + 8);
    _StringGuts.grow(_:)(42);

    sub_100233814();
    v25._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    v25._object = v21;
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_100B67D6C(v20, v19);
    String.append(_:)(v23);

    String.append(_:)(v25);

    v24._countAndFlagsBits = 0xD000000000000028;
    v24._object = 0x800000010134D620;
    String.append(_:)(v24);

    return 0;
  }

  return result;
}

uint64_t sub_100231364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002313AC()
{
  result = qword_1016C7E50;
  if (!qword_1016C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7E50);
  }

  return result;
}

id sub_100231400()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v3 = type metadata accessor for AccessoryMetadata(0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 setProductData:isa];

  v5 = String._bridgeToObjectiveC()();

  [v2 setManufacturerName:v5];

  v6 = String._bridgeToObjectiveC()();

  [v2 setModelName:v6];

  v7 = (v1 + v3[12]);
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  [v2 setAccessoryCategory:v8];
  v9 = (v1 + v3[13]);
  v10 = *v9;
  v11 = *(v9 + 4);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  [v2 setAccessoryCapabilities:v12];
  sub_10098E010();
  v13 = String._bridgeToObjectiveC()();

  [v2 setFirmwareVersion:v13];

  v14 = v1 + v3[11];
  if ((*(v14 + 16) & 1) == 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
    v26 = *v14;
    v27 = v15;
    sub_100233814();
    v28 = CustomStringConvertible.typeDescription.getter();
    v29 = v17;
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_100B67D6C(v16, v15);
    String.append(_:)(v19);

    v20 = String._bridgeToObjectiveC()();

    [v2 setFirmwareVersion:{v20, v26, v27, v28, v29}];
  }

  if ((*(v1 + v3[10] + 4) & 1) == 0)
  {
    sub_10098E010();
  }

  v21 = String._bridgeToObjectiveC()();

  [v2 setProtocolVersion:v21];

  if (*(v1 + v3[14]) == 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v1 + v3[14]);
  }

  [v2 setBatteryType:v22];
  if (*(v1 + v3[15]) == 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v1 + v3[15]);
  }

  [v2 setBatteryState:v23];
  if (v11)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1010D73CC(v10);
  }

  [v2 setCapabilities:v24];
  return v2;
}

uint64_t sub_100231730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 36);
  v10 = type metadata accessor for AirTagVersionNumber();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = &v8[v4[16]];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = [a1 discoveredMetadata];
  v13 = [v12 productData];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_100314594(v14, v16);
  if (v18 >> 60 == 15)
  {

LABEL_8:
    sub_10000B3A8(&v8[v9], &qword_10169A0C0, &unk_10139DBB0);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v19 = v17;
  v20 = v18;
  v69 = v9;
  v70 = a2;
  v21 = [v12 protocolVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_10098E9DC(v22, v24);
  if ((v25 & 0x100000000) != 0)
  {

    sub_100006654(v19, v20);
    goto LABEL_7;
  }

  v26 = v25;
  v68 = &v8[v4[11]];
  v27 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = &v8[v4[5]];
  *v28 = v19;
  v28[1] = v20;
  v67 = v28;
  v29 = [v12 manufacturerName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v8[v4[6]];
  *v33 = v30;
  v33[1] = v32;
  v66[1] = v32;
  v34 = [v12 modelName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = &v8[v4[7]];
  *v38 = v35;
  v38[1] = v37;
  v39 = [v12 firmwareVersion];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_10098E9DC(v40, v42);
  if ((v43 & 0x100000000) != 0)
  {
    *&v8[v4[8]] = 0;
    v47 = [v12 firmwareVersion];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = sub_100B68688(v48, v50);
    if ((v53 & 1) == 0)
    {
      v45 = v68;
      *v68 = v51;
      *(v45 + 1) = v52;
      goto LABEL_13;
    }

    v54 = type metadata accessor for UUID();
    (*(*(v54 - 8) + 8))(v8, v54);
    sub_100016590(*v67, v67[1]);

LABEL_7:
    v9 = v69;
    a2 = v70;
    goto LABEL_8;
  }

  v44 = &v8[v4[8]];
  *v44 = v43;
  v44[2] = BYTE2(v43);
  v44[3] = BYTE3(v43);
  v45 = v68;
  *v68 = 0;
  *(v45 + 1) = 0;
LABEL_13:
  v45[16] = 0;
  v55 = v70;
  v56 = &v8[v4[10]];
  *v56 = v26;
  v56[4] = 0;
  v57 = [v12 accessoryCategory];
  v58 = &v8[v4[12]];
  *v58 = v57;
  v58[8] = 0;
  v59 = [v12 accessoryCapabilities];
  v60 = &v8[v4[13]];
  *v60 = v59;
  v60[4] = 0;
  v61 = [v12 batteryType];
  if (v61 >= 3)
  {
    v62 = 3;
  }

  else
  {
    v62 = v61;
  }

  v8[v4[14]] = v62;
  v63 = [v12 batteryState];

  if (v63 >= 4)
  {
    v64 = 4;
  }

  else
  {
    v64 = v63;
  }

  v8[v4[15]] = v64;
  v65 = &v8[v4[17]];
  *v65 = 0;
  v65[4] = 1;
  sub_100235BA8(v8, v55, type metadata accessor for AccessoryMetadata);
  (*(v5 + 56))(v55, 0, 1, v4);
  return sub_10023533C(v8, type metadata accessor for AccessoryMetadata);
}

uint64_t sub_100231C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v28 = HIWORD(a4);
  v12 = HIBYTE(a4);
  v13 = type metadata accessor for AccessoryMetadata(0);
  v14 = v13[9];
  v15 = type metadata accessor for AirTagVersionNumber();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = a6 + v13[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = (a6 + v13[16]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = type metadata accessor for UUID();
  result = (*(*(v18 - 8) + 32))(a6, a1, v18);
  v20 = (a6 + v13[5]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a6 + v13[8];
  *v21 = v7;
  *(v21 + 2) = v28;
  *(v21 + 3) = v12;
  v22 = (a6 + v13[7]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a6 + v13[6]);
  *v23 = 0;
  v23[1] = 0;
  v24 = a6 + v13[10];
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = a6 + v13[12];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = a6 + v13[13];
  *v26 = a5;
  *(v26 + 4) = BYTE4(a5) & 1;
  *(a6 + v13[14]) = 4;
  *(a6 + v13[15]) = 5;
  v27 = a6 + v13[17];
  *v27 = 0;
  *(v27 + 4) = 1;
  return result;
}

uint64_t sub_100231DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = v5[9];
  v7 = type metadata accessor for AirTagVersionNumber();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = (a2 + v5[16]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = type metadata accessor for RawAccessoryMetadata(0);
  v10 = a1 + *(v9 + 20);
  v11 = *(v10 + 8);
  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v12 = v9;
  v13 = *v10;
  sub_100017D5C(*v10, *(v10 + 8));
  sub_100017D5C(v13, v11);
  v14 = sub_100314594(v13, v11);
  if (v15 >> 60 == 15)
  {
    sub_100006654(v13, v11);
LABEL_4:
    sub_100233888();
    swift_allocError();
    *v16 = xmmword_101393440;
    *(v16 + 16) = 1;
    swift_willThrow();
LABEL_5:
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    return sub_10000B3A8(a2 + v6, &qword_10169A0C0, &unk_10139DBB0);
  }

  v35 = v14;
  v36 = v15;
  v18 = a1 + *(v12 + 44);
  v19 = *(v18 + 8);
  if (v19 >> 60 == 15)
  {
    sub_100233888();
    swift_allocError();
    *v20 = xmmword_101393430;
    *(v20 + 16) = 1;
    swift_willThrow();
    sub_100006654(v35, v36);
    sub_100006654(v13, v11);
    goto LABEL_5;
  }

  v21 = *v18;
  sub_10002E98C(*v18, *(v18 + 8));
  sub_100B68B98(v21, v19);
  if (v2)
  {
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    sub_100006654(v35, v36);
    sub_100006654(v13, v11);
    return sub_10000B3A8(a2 + v6, &qword_10169A0C0, &unk_10139DBB0);
  }

  v24 = v22;
  v25 = v23;
  sub_100006654(v13, v11);
  v26 = a2 + v5[11];
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(a2, a1, v27);
  result = sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
  v28 = (a2 + v5[5]);
  *v28 = v35;
  v28[1] = v36;
  *(a2 + v5[8]) = 0;
  *v26 = v24;
  *(v26 + 8) = v25;
  *(v26 + 16) = 0;
  v29 = (a2 + v5[7]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (a2 + v5[6]);
  *v30 = 0;
  v30[1] = 0;
  v31 = a2 + v5[10];
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = a2 + v5[12];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = a2 + v5[13];
  *v33 = 0;
  *(v33 + 4) = 1;
  *(a2 + v5[14]) = 4;
  *(a2 + v5[15]) = 5;
  v34 = a2 + v5[17];
  *v34 = 0;
  *(v34 + 4) = 1;
  return result;
}

uint64_t sub_100232154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = v5[9];
  v7 = type metadata accessor for AirTagVersionNumber();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + v5[11];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a2 + v5[16]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = type metadata accessor for RawAccessoryMetadata(0);
  v11 = (a1 + *(v10 + 20));
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v13 = v10;
  v107 = a1;
  v14 = *v11;
  sub_100017D5C(*v11, v12);
  sub_100017D5C(v14, v12);
  v15 = sub_100314594(v14, v12);
  if (v16 >> 60 == 15)
  {
    sub_100006654(v14, v12);
    a1 = v107;
LABEL_4:
    sub_100233888();
    swift_allocError();
    *v17 = xmmword_101393440;
    *(v17 + 16) = 1;
    swift_willThrow();
LABEL_24:
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    return sub_10000B3A8(a2 + v6, &qword_10169A0C0, &unk_10139DBB0);
  }

  v102 = v16;
  v103 = v6;
  v101 = v15;
  v18 = (v107 + v13[11]);
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v20 = *v18;
  sub_100017D5C(*v18, v18[1]);
  v21 = sub_10098E844(v20, v19);
  if ((v21 & 0x100000000) != 0)
  {
    sub_100006654(v20, v19);
LABEL_12:
    sub_100233888();
    swift_allocError();
    *v29 = xmmword_101393430;
    *(v29 + 16) = 1;
    swift_willThrow();
    sub_100006654(v101, v102);
    v30 = v14;
LABEL_13:
    sub_100006654(v30, v12);
    a1 = v107;
    v6 = v103;
    goto LABEL_24;
  }

  v99 = v19;
  v100 = v20;
  v22 = (v107 + v13[7]);
  v23 = v22[1];
  v6 = v103;
  if (v23 >> 60 == 15)
  {
LABEL_15:
    sub_100233888();
    swift_allocError();
    *v31 = xmmword_101393480;
    *(v31 + 16) = 1;
    swift_willThrow();
LABEL_16:
    sub_100006654(v101, v102);
    sub_100006654(v100, v99);
    v32 = v14;
LABEL_23:
    sub_100006654(v32, v12);
    a1 = v107;
    goto LABEL_24;
  }

  v94 = v21;
  v97 = v22[1];
  v98 = v14;
  v24 = *v22;
  sub_100017D5C(*v22, v23);
  sub_1000E0A3C();
  v25 = DataProtocol.nullTerminatedUTF8String.getter();
  if (!v26)
  {
    sub_100006654(v24, v97);
    goto LABEL_15;
  }

  v95 = v24;
  v27 = (v107 + v13[6]);
  v28 = v27[1];
  if (v28 >> 60 == 15)
  {

LABEL_21:
    sub_100233888();
    swift_allocError();
    *v37 = 0xD000000000000010;
    *(v37 + 8) = 0x800000010134D650;
    *(v37 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    v38 = v101;
    v39 = v102;
LABEL_22:
    sub_100006654(v38, v39);
    sub_100006654(v100, v99);
    v32 = v98;
    goto LABEL_23;
  }

  v91 = v25;
  v92 = v26;
  v105 = *v27;
  v106 = v27[1];
  v93 = *v27;
  sub_100017D5C(*v27, v28);
  v33 = DataProtocol.nullTerminatedUTF8String.getter();
  if (!v34)
  {

    sub_100006654(v93, v28);
    goto LABEL_21;
  }

  v96 = v28;
  v35 = (v107 + v13[13]);
  v36 = v35[1];
  if (v36 >> 60 == 15)
  {

LABEL_32:
    v14 = v98;
    sub_100233888();
    swift_allocError();
    *v49 = xmmword_101393470;
    *(v49 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    goto LABEL_16;
  }

  v89 = v33;
  v90 = v34;
  v41 = *v35;
  sub_100017D5C(*v35, v36);
  v42 = sub_10098E844(v41, v36);
  if ((v42 & 0x100000000) != 0)
  {

    sub_100006654(v41, v36);
    goto LABEL_32;
  }

  v87 = v41;
  v88 = v36;
  v43 = (v107 + v13[9]);
  v44 = v43[1];
  if (v44 >> 60 == 15)
  {
    goto LABEL_29;
  }

  v85 = v42;
  v45 = *v43;
  sub_100017D5C(*v43, v44);
  sub_100017D5C(v45, v44);
  static Endianness.current.getter();
  sub_100235658();
  v86 = v44;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v106 == 1)
  {
    sub_100006654(v45, v44);
LABEL_29:

    sub_100233888();
    swift_allocError();
    *v46 = 0xD000000000000011;
    *(v46 + 8) = 0x800000010134D670;
    *(v46 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    v47 = v101;
    v48 = v102;
LABEL_30:
    sub_100006654(v47, v48);
    v38 = v87;
    v39 = v88;
    goto LABEL_22;
  }

  v84 = v45;
  v50 = (v107 + v13[10]);
  v51 = v50[1];
  if (v51 >> 60 == 15)
  {
LABEL_36:

    sub_100233888();
    swift_allocError();
    *v53 = 0xD000000000000015;
    *(v53 + 8) = 0x800000010134D690;
    *(v53 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    sub_100006654(v101, v102);
    v47 = v84;
    v48 = v86;
    goto LABEL_30;
  }

  v52 = *v50;
  sub_100017D5C(*v50, v51);
  sub_100017D5C(v52, v51);
  static Endianness.current.getter();
  sub_100101824();
  v83 = v52;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v105) == 1)
  {
    sub_100006654(v52, v51);
    goto LABEL_36;
  }

  v82 = v51;
  v54 = (v107 + v13[15]);
  v55 = v54[1];
  if (v55 >> 60 == 15)
  {
    goto LABEL_40;
  }

  v56 = *v54;
  sub_100017D5C(*v54, v55);
  sub_100017D5C(v56, v55);
  static Endianness.current.getter();
  sub_1000198E8();
  v81 = v55;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v105) == 1)
  {
    sub_100006654(v56, v55);
LABEL_40:

    sub_100233888();
    swift_allocError();
    *v57 = xmmword_101393460;
    *(v57 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    v58 = v101;
    v59 = v102;
LABEL_41:
    sub_100006654(v58, v59);
    sub_100006654(v83, v51);
    sub_100006654(v84, v86);
    sub_100006654(v87, v88);
    sub_100006654(v100, v99);
    v30 = v98;
    goto LABEL_13;
  }

  v60 = v105;
  if (v105 >= 3u)
  {
    v60 = 3;
  }

  v79 = v60;
  v61 = (v107 + v13[16]);
  v80 = v61[1];
  if (v80 >> 60 == 15)
  {
LABEL_47:

    sub_100233888();
    swift_allocError();
    *v63 = xmmword_101393450;
    *(v63 + 16) = 1;
    swift_willThrow();
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    sub_100006654(v101, v102);
    v58 = v56;
    v59 = v81;
    goto LABEL_41;
  }

  v62 = *v61;
  sub_100017D5C(*v61, v80);
  sub_100017D5C(v62, v80);
  static Endianness.current.getter();
  v78 = v62;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v105) == 1)
  {
    sub_100006654(v62, v80);
    goto LABEL_47;
  }

  if (v105 >= 4u)
  {
    v64 = 4;
  }

  else
  {
    v64 = v105;
  }

  v65 = type metadata accessor for UUID();
  (*(*(v65 - 8) + 16))(a2, v107, v65);
  v66 = (a2 + v5[5]);
  *v66 = v101;
  v66[1] = v102;
  *(a2 + v5[8]) = v94;
  v67 = (a2 + v5[7]);
  *v67 = v91;
  v67[1] = v92;
  v68 = (a2 + v5[6]);
  *v68 = v89;
  v68[1] = v90;
  v69 = a2 + v5[12];
  *v69 = v105;
  *(v69 + 8) = 0;
  v70 = a2 + v5[13];
  *v70 = v105;
  *(v70 + 4) = 0;
  *(a2 + v5[14]) = v79;
  *(a2 + v5[15]) = v64;
  v71 = a2 + v5[17];
  *v71 = v85;
  *(v71 + 4) = 0;
  v72 = (v107 + v13[12]);
  v73 = v72[1];
  if (v73 >> 60 == 15)
  {
    sub_10023533C(v107, type metadata accessor for RawAccessoryMetadata);
    sub_100006654(v98, v12);
    sub_100006654(v100, v99);
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    sub_100006654(v87, v88);
    sub_100006654(v84, v86);
    sub_100006654(v83, v82);
    sub_100006654(v56, v81);
    result = sub_100006654(v62, v80);
    v74 = 0;
    LOBYTE(v104) = 1;
  }

  else
  {
    v75 = *v72;
    sub_100017D5C(*v72, v72[1]);
    v76 = sub_10098E844(v75, v73);
    v74 = v76;
    v104 = HIDWORD(v76) & 1;
    sub_100006654(v75, v73);
    sub_100006654(v95, v97);
    sub_100006654(v93, v96);
    sub_100006654(v78, v80);
    sub_100006654(v56, v81);
    sub_100006654(v83, v82);
    sub_100006654(v84, v86);
    sub_100006654(v87, v88);
    sub_100006654(v100, v99);
    sub_100006654(v98, v12);
    result = sub_10023533C(v107, type metadata accessor for RawAccessoryMetadata);
  }

  v77 = a2 + v5[10];
  *v77 = v74;
  *(v77 + 4) = v104;
  return result;
}

id sub_100232DEC()
{
  v1 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v2 = type metadata accessor for RawAccessoryMetadata(0);
  isa = 0;
  if (*(v0 + v2[5] + 8) >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProductData:isa];

  if (*(v0 + v2[6] + 8) >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setManufacturerName:v4];

  if (*(v0 + v2[7] + 8) >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setModelName:v5];

  if (*(v0 + v2[8] + 8) >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setReserved:v6];

  if (*(v0 + v2[9] + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCategory:v7];

  if (*(v0 + v2[10] + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCapabilities:v8];

  if (*(v0 + v2[11] + 8) >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFirmwareVersion:v9];

  if (*(v0 + v2[12] + 8) >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProtocolVersion:v10];

  if (*(v0 + v2[13] + 8) >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFindMyVersion:v11];

  if (*(v0 + v2[14] + 8) >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setNetworkId:v12];

  if (*(v0 + v2[15] + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryType:v13];

  if (*(v0 + v2[16] + 8) >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryLevel:v14];

  return v1;
}

unint64_t sub_100233168()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v3 = type metadata accessor for RawAccessoryMetadata(0);
  v4 = (v0 + v3[5]);
  v5 = v4[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v4[1];
  }

  sub_10002E98C(*v4, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v6, v7);
  [v2 setProductData:isa];

  v9 = (v1 + v3[6]);
  if (v9[1] >> 60 == 15 || (v42 = *v9, v46 = v9[1], sub_1000E0A3C(), DataProtocol.nullTerminatedUTF8String.getter(), !v10))
  {
  }

  v11 = String._bridgeToObjectiveC()();

  [v2 setManufacturerName:v11];

  v12 = (v1 + v3[7]);
  if (v12[1] >> 60 == 15 || (v42 = *v12, v46 = v12[1], sub_1000E0A3C(), DataProtocol.nullTerminatedUTF8String.getter(), !v13))
  {
  }

  v14 = String._bridgeToObjectiveC()();

  [v2 setModelName:v14];

  v15 = (v1 + v3[9]);
  if (v15[1] >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v42 = *v15;
    v46 = v15[1];
    sub_1000E0A3C();
    result = DataProtocol.intValue.getter();
    v16 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  [v2 setAccessoryCategory:{v16, v42, v46}];
  v18 = (v1 + v3[10]);
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v43 = *v18;
  v47 = v18[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v20 = result;
  if (HIDWORD(result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_20:
  [v2 setAccessoryCapabilities:{v20, v43, v47}];
  v21 = (v1 + v3[11]);
  v22 = v21[1];
  if (v22 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = *v21;
  }

  if (v22 >> 60 == 15)
  {
    v24 = 0xC000000000000000;
  }

  else
  {
    v24 = v21[1];
  }

  sub_10002E98C(*v21, v22);
  v25 = sub_10098E844(v23, v24);
  sub_100016590(v23, v24);
  if ((v25 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v26 = String._bridgeToObjectiveC()();

  [v2 setFirmwareVersion:v26];

  v27 = (v1 + v3[13]);
  v28 = v27[1];
  if (v28 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v27;
  }

  if (v28 >> 60 == 15)
  {
    v30 = 0xC000000000000000;
  }

  else
  {
    v30 = v27[1];
  }

  sub_10002E98C(*v27, v28);
  v31 = sub_10098E844(v29, v30);
  sub_100016590(v29, v30);
  if ((v31 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v32 = String._bridgeToObjectiveC()();

  [v2 setFindMyVersion:v32];

  v33 = (v1 + v3[12]);
  v34 = v33[1];
  if (v34 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = *v33;
  }

  if (v34 >> 60 == 15)
  {
    v36 = 0xC000000000000000;
  }

  else
  {
    v36 = v33[1];
  }

  sub_10002E98C(*v33, v34);
  v37 = sub_10098E844(v35, v36);
  sub_100016590(v35, v36);
  if ((v37 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v38 = String._bridgeToObjectiveC()();

  [v2 setProtocolVersion:v38];

  v39 = (v1 + v3[15]);
  if (v39[1] >> 60 == 15)
  {
    LOBYTE(result) = 0;
    goto LABEL_48;
  }

  v44 = *v39;
  v48 = v39[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (result > 0xFF)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_48:
  [v2 setBatteryType:{result, v44, v48}];
  v40 = (v1 + v3[16]);
  if (v40[1] >> 60 == 15)
  {
    LOBYTE(result) = 0;
    goto LABEL_52;
  }

  v45 = *v40;
  v49 = v40[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (result > 0xFF)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_52:
  [v2 setBatteryState:{result, v45, v49}];
  if (v19 >> 60 == 15)
  {
    LODWORD(result) = 0;
LABEL_56:
    [v2 setCapabilities:sub_1010D92E0(result)];
    v41 = sub_100232DEC();
    [v2 setRawMetadata:v41];

    return v2;
  }

  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (!HIDWORD(result))
  {
    goto LABEL_56;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1002336DC(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(21);

    v8 = 0xD000000000000013;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v6);

    return v8;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(17);

    v8 = 0x726F43617461642ELL;
    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    return v8;
  }

  return 0x6E776F6E6B6E752ELL;
}

unint64_t sub_100233814()
{
  result = qword_10169A200;
  if (!qword_10169A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A200);
  }

  return result;
}

unint64_t sub_100233888()
{
  result = qword_10169A208;
  if (!qword_10169A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A208);
  }

  return result;
}

BOOL sub_1002338DC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawAccessoryMetadata(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v14 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v7 = *(a1 + v18);
  v6 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v10 = *v19;
  v9 = v19[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v20 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v20)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v7 = *(a1 + v21);
  v6 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v10 = *v22;
  v9 = v22[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v23 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v23)
    {
      return 0;
    }
  }

  v24 = v4[10];
  v7 = *(a1 + v24);
  v6 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v10 = *v25;
  v9 = v25[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v26 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v26)
    {
      return 0;
    }
  }

  v27 = v4[11];
  v7 = *(a1 + v27);
  v6 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v10 = *v28;
  v9 = v28[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v29 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v29)
    {
      return 0;
    }
  }

  v30 = v4[12];
  v7 = *(a1 + v30);
  v6 = *(a1 + v30 + 8);
  v31 = (a2 + v30);
  v10 = *v31;
  v9 = v31[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v32)
    {
      return 0;
    }
  }

  v33 = v4[13];
  v7 = *(a1 + v33);
  v6 = *(a1 + v33 + 8);
  v34 = (a2 + v33);
  v10 = *v34;
  v9 = v34[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v35)
    {
      return 0;
    }
  }

  v36 = v4[14];
  v7 = *(a1 + v36);
  v6 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v10 = *v37;
  v9 = v37[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v38 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (v38)
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_56;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_52:
  v39 = v4[15];
  v7 = *(a1 + v39);
  v6 = *(a1 + v39 + 8);
  v40 = (a2 + v39);
  v10 = *v40;
  v9 = v40[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      goto LABEL_60;
    }

LABEL_56:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    v41 = v10;
    v42 = v9;
LABEL_57:
    sub_100006654(v41, v42);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_56;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v44 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  if (!v44)
  {
    return 0;
  }

LABEL_60:
  v45 = v4[16];
  v47 = *(a1 + v45);
  v46 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v50 = *v48;
  v49 = v48[1];
  if (v46 >> 60 == 15)
  {
    if (v49 >> 60 == 15)
    {
      sub_10002E98C(v47, v46);
      sub_10002E98C(v50, v49);
      sub_100006654(v47, v46);
      return 1;
    }

    goto LABEL_64;
  }

  if (v49 >> 60 == 15)
  {
LABEL_64:
    sub_10002E98C(v47, v46);
    sub_10002E98C(v50, v49);
    sub_100006654(v47, v46);
    v41 = v50;
    v42 = v49;
    goto LABEL_57;
  }

  sub_10002E98C(v47, v46);
  sub_10002E98C(v50, v49);
  v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v47, v46, v50, v49);
  sub_100006654(v50, v49);
  sub_100006654(v47, v46);
  return v51;
}

uint64_t sub_100234190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirTagVersionNumber();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_1000BC4D4(&qword_10169A2A8, &qword_101393838);
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for AccessoryMetadata(0);
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v14[5]), *(a1 + v14[5] + 8), *(a2 + v14[5]), *(a2 + v14[5] + 8)))
  {
    return 0;
  }

  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19 || (*v16 != *v18 || v17 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = v14[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  result = 0;
  v26 = v14[8];
  v27 = a1 + v26;
  v28 = *(a1 + v26);
  v29 = (a2 + v26);
  if (v28 != *v29 || *(v27 + 2) != *(v29 + 2) || *(v27 + 3) != *(v29 + 3))
  {
    return result;
  }

  v30 = v14[9];
  v31 = *(v11 + 48);
  sub_100235594(a1 + v30, v13);
  v70 = v31;
  sub_100235594(a2 + v30, &v13[v31]);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_100235594(v13, v10);
    if (v32(&v13[v70], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v70], v4);
      sub_100231364(&qword_10169A2B0, &type metadata accessor for AirTagVersionNumber, &protocol conformance descriptor for AirTagVersionNumber);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v5 + 8);
      v34(v7, v4);
      v34(v10, v4);
      sub_10000B3A8(v13, &qword_10169A0C0, &unk_10139DBB0);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v5 + 8))(v10, v4);
LABEL_25:
    sub_10000B3A8(v13, &qword_10169A2A8, &qword_101393838);
    return 0;
  }

  if (v32(&v13[v70], 1, v4) != 1)
  {
    goto LABEL_25;
  }

  sub_10000B3A8(v13, &qword_10169A0C0, &unk_10139DBB0);
LABEL_29:
  v35 = v14[10];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v14[11];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 16);
  v43 = a2 + v40;
  if (v42)
  {
    if ((*(v43 + 16) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (*(v43 + 16))
  {
    return 0;
  }

  result = 0;
  if (*v41 == *v43 && v41[1] == *(v43 + 8))
  {
LABEL_41:
    v44 = v14[12];
    v45 = (a1 + v44);
    v46 = *(a1 + v44 + 8);
    v47 = (a2 + v44);
    v48 = *(a2 + v44 + 8);
    if (v46)
    {
      if (!v48)
      {
        return 0;
      }
    }

    else
    {
      if (*v45 != *v47)
      {
        LOBYTE(v48) = 1;
      }

      if (v48)
      {
        return 0;
      }
    }

    v49 = v14[13];
    v50 = (a1 + v49);
    v51 = *(a1 + v49 + 4);
    v52 = (a2 + v49);
    v53 = *(a2 + v49 + 4);
    if (v51)
    {
      if (!v53)
      {
        return 0;
      }
    }

    else
    {
      if (*v50 != *v52)
      {
        LOBYTE(v53) = 1;
      }

      if (v53)
      {
        return 0;
      }
    }

    v54 = v14[14];
    v55 = *(a1 + v54);
    v56 = *(a2 + v54);
    if (v55 == 4)
    {
      if (v56 != 4)
      {
        return 0;
      }
    }

    else if (v55 != v56)
    {
      return 0;
    }

    v57 = v14[15];
    v58 = *(a1 + v57);
    v59 = *(a2 + v57);
    if (v58 == 5)
    {
      if (v59 != 5)
      {
        return 0;
      }
    }

    else if (v58 != v59)
    {
      return 0;
    }

    v60 = v14[16];
    v61 = *(a1 + v60);
    v62 = *(a1 + v60 + 8);
    v63 = (a2 + v60);
    if (v61 == *v63 && v62 == v63[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v64 = v14[17];
      v65 = (a1 + v64);
      v66 = *(a1 + v64 + 4);
      v67 = (a2 + v64);
      v68 = *(a2 + v64 + 4);
      if (v66)
      {
        if (v68)
        {
          return 1;
        }
      }

      else
      {
        if (*v65 != *v67)
        {
          v68 = 1;
        }

        if ((v68 & 1) == 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100234744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_100234BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D6B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000025 && 0x800000010134D6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5379726574746162 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_10023502C()
{
  result = qword_10169A210;
  if (!qword_10169A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A210);
  }

  return result;
}

unint64_t sub_100235080()
{
  result = qword_10169A220;
  if (!qword_10169A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A220);
  }

  return result;
}

unint64_t sub_1002350D4()
{
  result = qword_10169A228;
  if (!qword_10169A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A228);
  }

  return result;
}

unint64_t sub_100235128()
{
  result = qword_10169A230;
  if (!qword_10169A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A230);
  }

  return result;
}

uint64_t sub_10023517C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002351EC()
{
  result = qword_10169A240;
  if (!qword_10169A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A240);
  }

  return result;
}

unint64_t sub_100235240()
{
  result = qword_10169A248;
  if (!qword_10169A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A248);
  }

  return result;
}

unint64_t sub_100235294()
{
  result = qword_10169A250;
  if (!qword_10169A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A250);
  }

  return result;
}

unint64_t sub_1002352E8()
{
  result = qword_10169A258;
  if (!qword_10169A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A258);
  }

  return result;
}

uint64_t sub_10023533C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10023539C()
{
  result = qword_10169A268;
  if (!qword_10169A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A268);
  }

  return result;
}

unint64_t sub_1002353F0()
{
  result = qword_10169A270;
  if (!qword_10169A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A270);
  }

  return result;
}

unint64_t sub_100235444()
{
  result = qword_10169A280;
  if (!qword_10169A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A280);
  }

  return result;
}

unint64_t sub_100235498()
{
  result = qword_10169A288;
  if (!qword_10169A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A288);
  }

  return result;
}

unint64_t sub_1002354EC()
{
  result = qword_10169A290;
  if (!qword_10169A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A290);
  }

  return result;
}

unint64_t sub_100235540()
{
  result = qword_10169A298;
  if (!qword_10169A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A298);
  }

  return result;
}

uint64_t sub_100235594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100235604()
{
  result = qword_10169A2B8;
  if (!qword_10169A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A2B8);
  }

  return result;
}

unint64_t sub_100235658()
{
  result = qword_10169A2C0;
  if (!qword_10169A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A2C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeaconSharingMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconSharingMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002357FC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100235818(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10023582C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}