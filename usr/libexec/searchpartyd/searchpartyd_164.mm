uint64_t sub_1011C4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v3)
  {
  }

  sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  *(v5 + 16) = 4;
  *(v5 + 24) = 2 * v6 - 64;
  *(v5 + 32) = 50462976;
  v7 = swift_allocObject();
  v8 = j__malloc_size(v7);
  *(v7 + 16) = 4;
  *(v7 + 24) = 2 * v8 - 64;
  *(v7 + 32) = 185207048;
  v9 = sub_10039B818(v7);
  __chkstk_darwin(v9);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();

  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v12 = sub_1000076D4(v11, qword_10177C890);
  *(v10 + 56) = v11;
  v19 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  *(v10 + 64) = v19;
  v13 = sub_1000280DC((v10 + 32));
  v14 = *(*(v11 - 8) + 16);
  v14(v13, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
  v18 = v14;

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v11, qword_10177C8A8);
  *(v15 + 56) = v11;
  *(v15 + 64) = v19;
  v17 = sub_1000280DC((v15 + 32));
  v18(v17, v16, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1011C4490(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v108 = a1;
  v2 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin(v2);
  v96 = v78 - v3;
  v4 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v92 = v78 - v5;
  v101 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v101 - 8);
  v7 = __chkstk_darwin(v101);
  v91 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v90 = v78 - v10;
  __chkstk_darwin(v9);
  v95 = v78 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v12 - 8);
  v86 = v78 - v13;
  v14 = sub_1000BC4D4(&qword_1016CAA18, &qword_10140B858);
  __chkstk_darwin(v14 - 8);
  v84 = v78 - v15;
  v16 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v16 - 8);
  v85 = v78 - v17;
  v18 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v18 - 8);
  v20 = v78 - v19;
  v21 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v78 - v25;
  v27 = type metadata accessor for PrimaryKey();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v31, qword_10177C770);
  (*(v28 + 104))(v30, enum case for PrimaryKey.autoincrement(_:), v27);
  v107 = v6;
  v32 = *(v6 + 56);
  v33 = v101;
  v32(v26, 1, 1, v101);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  (*(v28 + 8))(v30, v27);
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v87 = v24;
  v34 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v35 = sub_1000076D4(v34, qword_10177C800);
  v32(v26, 1, 1, v33);
  v89 = *(v34 - 8);
  v36 = *(v89 + 56);
  v106 = v34;
  v80 = v89 + 56;
  v79 = v36;
  v36(v20, 1, 1, v34);
  v37 = sub_100028088();
  v105 = v35;
  v103 = v37;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  v38 = v32;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v39 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v40 = sub_1000076D4(v39, qword_10177C890);
  v38(v26, 1, 1, v33);
  v41 = *(v39 - 8);
  v100 = v38;
  v88 = v41;
  v42 = *(v41 + 56);
  v43 = v85;
  v42(v85, 1, 1, v39);
  v82 = v40;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v44 = sub_1000076D4(v39, qword_10177C8A8);
  v100(v26, 1, 1, v33);
  v104 = v39;
  v42(v43, 1, 1, v39);
  v102 = v44;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695308 != -1)
  {
    swift_once();
  }

  v45 = v106;
  v46 = sub_1000076D4(v106, qword_10177C8C0);
  v47 = v33;
  v48 = v100;
  v100(v26, 1, 1, v33);
  v49 = v79;
  v79(v20, 1, 1, v45);
  v83 = v46;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v50 = sub_1000076D4(v45, qword_10177C8D8);
  v48(v26, 1, 1, v47);
  v49(v20, 1, 1, v45);
  v85 = v50;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695320 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  v52 = sub_1000076D4(v51, qword_10177C908);
  v48(v26, 1, 1, v47);
  v49(v20, 1, 1, v45);
  v81 = v52;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695318 != -1)
  {
    swift_once();
  }

  v53 = sub_1000076D4(v45, qword_10177C8F0);
  v48(v26, 1, 1, v47);
  v49(v20, 1, 1, v45);
  v78[1] = v53;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695328 != -1)
  {
    swift_once();
  }

  v54 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_1000076D4(v54, qword_10177C920);
  v48(v26, 1, 1, v47);
  v55 = v84;
  (*(*(v54 - 8) + 56))(v84, 1, 1, v54);
  sub_100027F50();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v55, &qword_1016CAA18, &qword_10140B858);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  v56 = v87;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v57 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v58 = sub_1000076D4(v57, qword_10177C938);
  v48(v26, 1, 1, v47);
  v79 = *(v57 - 8);
  v59 = *(v79 + 7);
  v60 = v86;
  v84 = v57;
  v59(v86, 1, 1, v57);
  type metadata accessor for Date();
  v80 = v58;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v60, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695340 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v47, qword_10177C968);
  v48(v26, 1, 1, v47);
  v48(v56, 1, 1, v47);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v56, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  if (qword_101695338 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v47, qword_10177C950);
  v48(v26, 1, 1, v47);
  v48(v56, 1, 1, v47);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v56, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v26, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v61 = v92;
  ExpressionType<>.length.getter();
  v109 = static MACAddress.length.getter();
  v62 = v95;
  == infix<A>(_:_:)();
  v63 = v94;
  v93 = *(v93 + 8);
  (v93)(v61, v94);
  TableBuilder.check(_:)();
  v100 = *(v107 + 8);
  v107 += 8;
  (v100)(v62, v47);
  ExpressionType<>.length.getter();
  v109 = 6;
  v64 = v90;
  == infix<A>(_:_:)();
  v65 = v93;
  (v93)(v61, v63);
  ExpressionType<>.length.getter();
  v109 = 28;
  v66 = v91;
  == infix<A>(_:_:)();
  v65(v61, v63);
  || infix(_:_:)();
  v68 = v100;
  v67 = v101;
  (v100)(v66, v101);
  v68(v64, v67);
  TableBuilder.check(_:)();
  v68(v62, v67);
  LOWORD(v109) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v68(v62, v67);
  LOWORD(v109) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v68(v62, v67);
  LOWORD(v109) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v68(v62, v67);
  LOWORD(v109) = -256;
  v69 = v96;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  (*(v97 + 8))(v69, v98);
  v109 = v99;
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for [A]);
  Collection<>.contains(_:)();
  TableBuilder.check(_:)();
  v68(v62, v67);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10138B360;
  v71 = v106;
  *(v70 + 56) = v106;
  *(v70 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v72 = sub_1000280DC((v70 + 32));
  (*(v89 + 16))(v72, v105, v71);
  v73 = v104;
  *(v70 + 96) = v104;
  *(v70 + 104) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v74 = sub_1000280DC((v70 + 72));
  (*(v88 + 16))(v74, v102, v73);
  v75 = v84;
  *(v70 + 136) = v84;
  *(v70 + 144) = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  v76 = sub_1000280DC((v70 + 112));
  (*(v79 + 2))(v76, v80, v75);
  TableBuilder.unique(_:)(v70);
}

uint64_t sub_1011C59FC()
{
  v0 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v0 - 8);
  v22 = v21 - v1;
  v2 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v2 - 8);
  v21[0] = v21 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v11 = sub_1000076D4(v10, qword_10177C818);
  v12 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v23 = v13 + 56;
  v14(v9, 1, 1, v12);
  v15 = *(*(v10 - 8) + 56);
  v15(v6, 1, 1, v10);
  type metadata accessor for UUID();
  v21[1] = v11;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v10, qword_10177C788);
  v14(v9, 1, 1, v12);
  v15(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v16, qword_10177C830);
  v14(v9, 1, 1, v12);
  v17 = v21[0];
  (*(*(v16 - 8) + 56))(v21[0], 1, 1, v16);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v18, qword_10177C878);
  v14(v9, 1, 1, v12);
  v19 = v22;
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v9, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C5FC4()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v36 = v33 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v3 - 8);
  v35 = v33 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v5 - 8);
  v34 = v33 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v14 = __chkstk_darwin(v13 - 8);
  v33[0] = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v33 - v16;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v19 = sub_1000076D4(v18, qword_10177C788);
  v37 = v1;
  v21 = v1 + 56;
  v20 = *(v1 + 56);
  v20(v17, 1, 1, v0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v33[2] = type metadata accessor for UUID();
  v33[3] = v19;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v23 = sub_1000076D4(v22, qword_10177C9E0);
  v20(v17, 1, 1, v0);
  v24 = *(*(v22 - 8) + 56);
  v38 = v21;
  v24(v9, 1, 1, v22);
  sub_100028088();
  v33[1] = v23;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v22, qword_10177C7B8);
  v20(v17, 1, 1, v0);
  v24(v9, 1, 1, v22);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0, qword_10177C7D0);
  v20(v17, 1, 1, v0);
  v25 = v33[0];
  v20(v33[0], 1, 1, v0);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  v26 = v0;
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v27, qword_10177C7A0);
  v20(v17, 1, 1, v0);
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v28, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v29, qword_10177C9C8);
  v20(v17, 1, 1, v26);
  v30 = v35;
  (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v30, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  TableBuilder.primaryKey<A, B>(_:_:)();
  v39 = -256;
  v31 = v36;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (*(v37 + 8))(v31, v26);
}

uint64_t sub_1011C689C()
{
  v1 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (qword_101695390 != -1)
  {
    swift_once();
  }

  v7 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v7, qword_10177CA58);
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v6, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_1011C6B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v4)
  {
  }
}

uint64_t sub_1011C6B90()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v45 = &v39 - v1;
  v2 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = __chkstk_darwin(v10 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v15, qword_10177CA70);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v14, 1, 1, v16);
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v21 = *(v20 - 8);
  v42 = *(v21 + 56);
  v39 = v21 + 56;
  v42(v9, 1, 1, v20);
  v22 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v47 = v22;
  v23 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v24 = sub_1000076D4(v23, qword_10177CA88);
  v18(v14, 1, 1, v16);
  v25 = *(v23 - 8);
  v49 = *(v25 + 56);
  v50 = v25 + 56;
  v49(v6, 1, 1, v23);
  v43 = v24;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v41 = v23;
  sub_1000076D4(v20, qword_10177CAA0);
  v18(v14, 1, 1, v16);
  v48 = v19;
  v46 = v18;
  v26 = v42;
  v42(v9, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v20, qword_10177C818);
  v46(v14, 1, 1, v16);
  v26(v9, 1, 1, v20);
  v42 = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v28 = v41;
  sub_1000076D4(v41, qword_10177CAB8);
  v29 = v46;
  v46(v14, 1, 1, v16);
  v30 = v49;
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CAD0);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v39 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v39, qword_10177CAE8);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB00);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB18);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB48);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v31, qword_10177CB60);
  v29(v14, 1, 1, v16);
  v32 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v33 = v40;
  (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v39, qword_10177CB78);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CB90);
  v29(v14, 1, 1, v16);
  v34 = v44;
  v29(v44, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBA8);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBC0);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CBD8);
  v29(v14, 1, 1, v16);
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBF0);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v35, qword_10177CC08);
  v29(v14, 1, 1, v16);
  v36 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v37 = v45;
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CC50);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CC68);
  v29(v14, 1, 1, v16);
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C7F74()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v45 = &v39 - v1;
  v2 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = __chkstk_darwin(v10 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v15, qword_10177CA70);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v14, 1, 1, v16);
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v21 = *(v20 - 8);
  v42 = *(v21 + 56);
  v39 = v21 + 56;
  v42(v9, 1, 1, v20);
  v22 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v47 = v22;
  v23 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v24 = sub_1000076D4(v23, qword_10177CA88);
  v18(v14, 1, 1, v16);
  v25 = *(v23 - 8);
  v49 = *(v25 + 56);
  v50 = v25 + 56;
  v49(v6, 1, 1, v23);
  v43 = v24;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v41 = v23;
  sub_1000076D4(v20, qword_10177CAA0);
  v18(v14, 1, 1, v16);
  v48 = v19;
  v46 = v18;
  v26 = v42;
  v42(v9, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v20, qword_10177C818);
  v46(v14, 1, 1, v16);
  v26(v9, 1, 1, v20);
  v42 = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v28 = v41;
  sub_1000076D4(v41, qword_10177CAB8);
  v29 = v46;
  v46(v14, 1, 1, v16);
  v30 = v49;
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CAD0);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v39 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v39, qword_10177CAE8);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB00);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB18);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB30);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB48);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v31, qword_10177CB60);
  v29(v14, 1, 1, v16);
  v32 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v33 = v40;
  (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v39, qword_10177CB78);
  v29(v14, 1, 1, v16);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CB90);
  v29(v14, 1, 1, v16);
  v34 = v44;
  v29(v44, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBA8);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBC0);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CBD8);
  v29(v14, 1, 1, v16);
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBF0);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v35, qword_10177CC08);
  v29(v14, 1, 1, v16);
  v36 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v37 = v45;
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CC50);
  v29(v14, 1, 1, v16);
  v29(v34, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CC68);
  v29(v14, 1, 1, v16);
  v49(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011C9428()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v47 = v46 - v1;
  v2 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v2 - 8);
  v49 = v46 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v4 - 8);
  v6 = v46 - v5;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = __chkstk_darwin(v10 - 8);
  v53 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v15, qword_10177CA70);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v14, 1, 1, v16);
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v21 = *(v20 - 8);
  v48 = *(v21 + 56);
  v46[0] = v21 + 56;
  v48(v9, 1, 1, v20);
  v52 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v23 = sub_1000076D4(v22, qword_10177CA88);
  v18(v14, 1, 1, v16);
  v24 = *(v22 - 8);
  v25 = *(v24 + 56);
  v51 = v22;
  v54 = v24 + 56;
  v55 = v25;
  v25(v6, 1, 1, v22);
  v46[1] = v23;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CAA0);
  v18(v14, 1, 1, v16);
  v56 = v19;
  v26 = v48;
  v50 = v16;
  v48(v9, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v20, qword_10177C818);
  v18(v14, 1, 1, v50);
  v26(v9, 1, 1, v20);
  v46[0] = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v28 = v51;
  sub_1000076D4(v51, qword_10177CAB8);
  v29 = v50;
  v18(v14, 1, 1, v50);
  v30 = v55;
  v55(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CAD0);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v48, qword_10177CAE8);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB00);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB18);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB30);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CB48);
  v18(v14, 1, 1, v29);
  v30(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v31, qword_10177CB60);
  v18(v14, 1, 1, v29);
  v32 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v33 = v49;
  (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v33, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v48, qword_10177CB78);
  v18(v14, 1, 1, v29);
  v55(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB90);
  v18(v14, 1, 1, v29);
  v34 = v53;
  v18(v53, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v35 = v18;
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CBA8);
  v18(v14, 1, 1, v29);
  v18(v34, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CBC0);
  v18(v14, 1, 1, v29);
  v18(v34, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177CBD8);
  v18(v14, 1, 1, v29);
  v55(v6, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v6, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  v48 = v6;
  sub_1000076D4(v29, qword_10177CBF0);
  v18(v14, 1, 1, v29);
  v18(v34, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v36 = v18;
  sub_10000B3A8(v34, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v49 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v49, qword_10177CC08);
  v18(v14, 1, 1, v29);
  v37 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v38 = v29;
  v39 = *(*(v37 - 8) + 56);
  v40 = v47;
  v39(v47, 1, 1, v37);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v49, qword_10177CC20);
  v35(v14, 1, 1, v38);
  v39(v40, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v49, qword_10177CC38);
  v35(v14, 1, 1, v38);
  v39(v40, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v38, qword_10177CC50);
  v35(v14, 1, 1, v38);
  v41 = v53;
  v35(v53, 1, 1, v38);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v42 = v48;
  v43 = v55;
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  v44 = v51;
  sub_1000076D4(v51, qword_10177CC68);
  v36(v14, 1, 1, v38);
  v43(v42, 1, 1, v44);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011CAAC4()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v46 - v1;
  v3 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v3 - 8);
  v50 = &v46 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v5 - 8);
  v54 = &v46 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v55 = v13;
  v48 = v2;
  v16 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v16, qword_10177CA70);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v46 = v20 + 56;
  v47 = v21;
  v21(v9, 1, 1, v19);
  v52 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v23 = sub_1000076D4(v22, qword_10177CA88);
  v18(v15, 1, 1, v17);
  v24 = *(v22 - 8);
  v25 = *(v24 + 56);
  v26 = v54;
  v51 = v22;
  v53 = v25;
  v56 = v24 + 56;
  v25(v54, 1, 1, v22);
  v49 = v23;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177CAA0);
  v18(v15, 1, 1, v17);
  v57 = v18;
  v27 = v47;
  v47(v9, 1, 1, v19);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000076D4(v19, qword_10177C818);
  v57(v15, 1, 1, v17);
  v27(v9, 1, 1, v19);
  v47 = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  v29 = v51;
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CAB8);
  v57(v15, 1, 1, v17);
  v30 = v53;
  v31 = v54;
  v53(v54, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CAD0);
  v32 = v57;
  v57(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v46, qword_10177CAE8);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB00);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB18);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB30);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB48);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v33, qword_10177CB60);
  v32(v15, 1, 1, v17);
  v34 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v35 = v50;
  (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v46, qword_10177CB78);
  v32(v15, 1, 1, v17);
  v30(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CB90);
  v32(v15, 1, 1, v17);
  v36 = v55;
  v32(v55, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CBA8);
  v32(v15, 1, 1, v17);
  v32(v36, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CBC0);
  v32(v15, 1, 1, v17);
  v32(v36, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CBD8);
  v32(v15, 1, 1, v17);
  v53(v31, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CBF0);
  v32(v15, 1, 1, v17);
  v37 = v55;
  v32(v55, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v38, qword_10177CC08);
  v32(v15, 1, 1, v17);
  v39 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v40 = v48;
  v50 = *(*(v39 - 8) + 56);
  (v50)(v48, 1, 1, v39);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v38, qword_10177CC20);
  v57(v15, 1, 1, v17);
  (v50)(v40, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v38, qword_10177CC38);
  v57(v15, 1, 1, v17);
  (v50)(v40, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  v41 = v54;
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CC50);
  v42 = v57;
  v57(v15, 1, 1, v17);
  v43 = v55;
  v42(v55, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  v44 = v51;
  sub_1000076D4(v51, qword_10177CC68);
  v42(v15, 1, 1, v17);
  v53(v41, 1, 1, v44);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CC80);
  v42(v15, 1, 1, v17);
  v42(v43, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CC98);
  v42(v15, 1, 1, v17);
  v42(v43, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101695458 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177CCB0);
  v42(v15, 1, 1, v17);
  v42(v43, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011CC3C4()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v47 - v1;
  v3 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v3 - 8);
  v52 = &v47 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v5 - 8);
  v56 = &v47 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v11 = __chkstk_darwin(v10 - 8);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v48 = v2;
  v15 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v15, qword_10177CA70);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v14, 1, 1, v16);
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v21 = *(v20 - 8);
  v53 = *(v21 + 56);
  v49 = v21 + 56;
  v53(v9, 1, 1, v20);
  v22 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v54 = v22;
  v23 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v24 = sub_1000076D4(v23, qword_10177CA88);
  v18(v14, 1, 1, v16);
  v25 = *(v23 - 8);
  v26 = v56;
  v57 = *(v25 + 56);
  v58 = v23;
  v59 = v25 + 56;
  v57(v56, 1, 1, v23);
  v50 = v24;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CAA0);
  v18(v14, 1, 1, v16);
  v27 = v53;
  v51 = v16;
  v53(v9, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v60 = v19;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000076D4(v20, qword_10177C818);
  v18(v14, 1, 1, v51);
  v27(v9, 1, 1, v20);
  v49 = v28;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v29 = v58;
  sub_1000076D4(v58, qword_10177CAB8);
  v30 = v51;
  v18(v14, 1, 1, v51);
  v31 = v57;
  v57(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CAD0);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v53, qword_10177CAE8);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB00);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB18);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB30);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v29, qword_10177CB48);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v32, qword_10177CB60);
  v18(v14, 1, 1, v30);
  v33 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v34, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CB78);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v35 = v55;
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CB90);
  v18(v14, 1, 1, v30);
  v18(v35, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CBA8);
  v18(v14, 1, 1, v30);
  v18(v35, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CBC0);
  v18(v14, 1, 1, v30);
  v18(v35, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  v36 = v58;
  sub_1000076D4(v58, qword_10177CBD8);
  v18(v14, 1, 1, v30);
  v31(v26, 1, 1, v36);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CBF0);
  v18(v14, 1, 1, v30);
  v18(v35, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v37 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v37, qword_10177CC08);
  v18(v14, 1, 1, v30);
  v38 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v52 = v18;
  v39 = v38;
  v40 = *(*(v38 - 8) + 56);
  v41 = v48;
  v40(v48, 1, 1, v38);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177CC20);
  (v52)(v14, 1, 1, v30);
  v40(v41, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177CC38);
  v42 = v52;
  (v52)(v14, 1, 1, v30);
  v40(v41, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CC50);
  (v42)(v14, 1, 1, v30);
  v43 = v55;
  (v42)(v55, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v44 = v56;
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  v45 = v58;
  sub_1000076D4(v58, qword_10177CC68);
  (v42)(v14, 1, 1, v30);
  v57(v44, 1, 1, v45);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CC80);
  (v42)(v14, 1, 1, v30);
  (v42)(v43, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CC98);
  (v42)(v14, 1, 1, v30);
  (v42)(v43, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695458 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177CCB0);
  (v42)(v14, 1, 1, v30);
  (v42)(v43, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CCC8);
  (v42)(v14, 1, 1, v30);
  v57(v44, 1, 1, v58);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011CDD94(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v88 = v70 - v4;
  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v85 = v70 - v6;
  v98 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v98 - 8);
  v8 = __chkstk_darwin(v98);
  v84 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v83 = v70 - v11;
  __chkstk_darwin(v10);
  v81 = v70 - v12;
  v13 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v13 - 8);
  v79 = v70 - v14;
  v15 = sub_1000BC4D4(&qword_1016CAA18, &qword_10140B858);
  __chkstk_darwin(v15 - 8);
  v78 = (v70 - v16);
  v17 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v17 - 8);
  v19 = v70 - v18;
  v20 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v20 - 8);
  v22 = v70 - v21;
  v23 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v23 - 8);
  v25 = v70 - v24;
  v26 = type metadata accessor for PrimaryKey();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v30, qword_10177C770);
  (*(v27 + 104))(v29, enum case for PrimaryKey.autoincrement(_:), v26);
  v89 = v7;
  v31 = *(v7 + 56);
  v31(v25, 1, 1, v98);
  TableBuilder.column<A>(_:primaryKey:check:)();
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  (*(v27 + 8))(v29, v26);
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v33 = sub_1000076D4(v32, qword_10177C800);
  v31(v25, 1, 1, v98);
  v82 = *(v32 - 8);
  v34 = *(v82 + 56);
  v97 = v32;
  v73 = v82 + 56;
  v72 = v34;
  v34(v22, 1, 1, v32);
  v35 = sub_100028088();
  v96 = v33;
  v94 = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  v36 = a1;
  if (qword_1016952F8 != -1)
  {
    swift_once();
  }

  v37 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v38 = sub_1000076D4(v37, qword_10177C890);
  v31(v25, 1, 1, v98);
  v80 = *(v37 - 8);
  v39 = *(v80 + 56);
  v39(v19, 1, 1, v37);
  v75 = v38;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v40 = sub_1000076D4(v37, qword_10177C8A8);
  v31(v25, 1, 1, v98);
  v95 = v37;
  v39(v19, 1, 1, v37);
  v93 = v40;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v19, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695308 != -1)
  {
    swift_once();
  }

  v41 = v97;
  v42 = sub_1000076D4(v97, qword_10177C8C0);
  v31(v25, 1, 1, v98);
  v43 = v72;
  v72(v22, 1, 1, v41);
  v76 = v42;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v44 = sub_1000076D4(v41, qword_10177C8D8);
  v31(v25, 1, 1, v98);
  v43(v22, 1, 1, v41);
  v77 = v44;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695320 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
  v46 = sub_1000076D4(v45, qword_10177C908);
  v31(v25, 1, 1, v98);
  v43(v22, 1, 1, v41);
  v74 = v46;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695318 != -1)
  {
    swift_once();
  }

  v47 = sub_1000076D4(v41, qword_10177C8F0);
  v31(v25, 1, 1, v98);
  v43(v22, 1, 1, v41);
  v73 = v47;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695328 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
  sub_1000076D4(v48, qword_10177C920);
  v31(v25, 1, 1, v98);
  v49 = v78;
  (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
  sub_100027F50();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v49, &qword_1016CAA18, &qword_10140B858);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v50 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v72 = sub_1000076D4(v50, qword_10177C938);
  v51 = v98;
  v31(v25, 1, 1, v98);
  v71 = v50;
  v78 = *(v50 - 8);
  v52 = v79;
  v78[7](v79, 1, 1, v50);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v52, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v53 = v85;
  ExpressionType<>.length.getter();
  v99 = static MACAddress.length.getter();
  v54 = v81;
  == infix<A>(_:_:)();
  v70[1] = v36;
  v55 = v87;
  v56 = *(v86 + 8);
  v56(v53, v87);
  TableBuilder.check(_:)();
  v89 = *(v89 + 8);
  (v89)(v54, v51);
  ExpressionType<>.length.getter();
  v99 = 6;
  v57 = v83;
  == infix<A>(_:_:)();
  v56(v53, v55);
  ExpressionType<>.length.getter();
  v99 = 28;
  v58 = v84;
  == infix<A>(_:_:)();
  v56(v53, v55);
  || infix(_:_:)();
  v59 = v98;
  v60 = v89;
  (v89)(v58, v98);
  v60(v57, v59);
  TableBuilder.check(_:)();
  v60(v54, v59);
  LOWORD(v99) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v60(v54, v59);
  LOWORD(v99) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v60(v54, v59);
  LOWORD(v99) = -256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v60(v54, v59);
  LOWORD(v99) = -256;
  v61 = v88;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  (*(v90 + 8))(v61, v91);
  v99 = v92;
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0, &protocol conformance descriptor for [A]);
  Collection<>.contains(_:)();
  TableBuilder.check(_:)();
  v60(v54, v59);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10138B360;
  v63 = v97;
  *(v62 + 56) = v97;
  *(v62 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v64 = sub_1000280DC((v62 + 32));
  (*(v82 + 16))(v64, v96, v63);
  v65 = v95;
  *(v62 + 96) = v95;
  *(v62 + 104) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v66 = sub_1000280DC((v62 + 72));
  (*(v80 + 16))(v66, v93, v65);
  v67 = v71;
  *(v62 + 136) = v71;
  *(v62 + 144) = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  v68 = sub_1000280DC((v62 + 112));
  (v78[2])(v68, v72, v67);
  TableBuilder.unique(_:)(v62);
}

uint64_t sub_1011CF0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v4)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1011CF1F8()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v51 = &v50 - v1;
  v2 = sub_1000BC4D4(&qword_1016CAA10, &qword_10140B850);
  __chkstk_darwin(v2 - 8);
  v57 = &v50 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v4 - 8);
  v59 = &v50 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v60 = v12;
  v15 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v15, qword_10177CA70);
  v16 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = (v17 + 56);
  v18(v14, 1, 1, v16);
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v21 = *(v20 - 8);
  v53 = *(v21 + 56);
  v50 = v21 + 56;
  v53(v8, 1, 1, v20);
  v22 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v56 = v22;
  v23 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v24 = sub_1000076D4(v23, qword_10177CA88);
  v18(v14, 1, 1, v16);
  v25 = *(v23 - 8);
  v26 = *(v25 + 56);
  v27 = v59;
  v55 = v23;
  v58 = v26;
  v61 = v25 + 56;
  v26(v59, 1, 1, v23);
  v52 = v24;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CAA0);
  v18(v14, 1, 1, v16);
  v28 = v53;
  v54 = v18;
  v53(v8, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v29 = v19;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000076D4(v20, qword_10177C818);
  v54(v14, 1, 1, v16);
  v28(v8, 1, 1, v20);
  v50 = v30;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v31 = v59;
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  v32 = v55;
  sub_1000076D4(v55, qword_10177CAB8);
  v33 = v54;
  v54(v14, 1, 1, v16);
  v34 = v58;
  v58(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CAD0);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v53, qword_10177CAE8);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CB00);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CB18);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CB30);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CB48);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v35, qword_10177CB60);
  v33(v14, 1, 1, v16);
  v36 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  v37 = v57;
  (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_1016CAA10, &qword_10140B850);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CB78);
  v33(v14, 1, 1, v16);
  v34(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CB90);
  v33(v14, 1, 1, v16);
  v38 = v60;
  v33(v60, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBA8);
  v33(v14, 1, 1, v16);
  v33(v38, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBC0);
  v33(v14, 1, 1, v16);
  v33(v38, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v38, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177CBD8);
  v33(v14, 1, 1, v16);
  v58(v31, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v31, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CBF0);
  v33(v14, 1, 1, v16);
  v39 = v60;
  v33(v60, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v39, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v53, qword_10177CC08);
  v33(v14, 1, 1, v16);
  v40 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v41 = *(v40 - 8);
  v57 = v29;
  v42 = v33;
  v43 = *(v41 + 56);
  v44 = v51;
  v43(v51, 1, 1, v40);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CC20);
  v42(v14, 1, 1, v16);
  v43(v44, 1, 1, v40);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v53, qword_10177CC38);
  v42(v14, 1, 1, v16);
  v43(v44, 1, 1, v40);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CC50);
  v42(v14, 1, 1, v16);
  v45 = v60;
  v42(v60, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  v46 = v42;
  v47 = v55;
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v47, qword_10177CC68);
  v42(v14, 1, 1, v16);
  v48 = v59;
  v58(v59, 1, 1, v47);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v48, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CC80);
  v46(v14, 1, 1, v16);
  v46(v45, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177CC98);
  v46(v14, 1, 1, v16);
  v46(v45, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE30, &unk_10139D190);
  sub_10000B3A8(v14, &qword_10169DE30, &unk_10139D190);
  return TableBuilder.primaryKey<A, B>(_:_:)();
}

uint64_t sub_1011D0A34()
{

  v1 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v2 = type metadata accessor for Table();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationHint, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_findMyServiceDevices, v2);
  return v0;
}

uint64_t sub_1011D0BE8()
{
  sub_1011D0A34();

  return swift_deallocClassInstance();
}

uint64_t sub_1011D0C48(uint64_t a1)
{
  result = type metadata accessor for Table();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1011D0D2C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t sub_1011D0D64()
{
  sub_1000BC4D4(&qword_10169DD90, &unk_10139D100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  v2 = *(v0 + 24);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  *(v1 + 32) = v3;
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_1011D0ECC()
{
  v2 = v0;
  v3 = *v0;
  if (qword_101695290 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1000076D4(v4, qword_1016CA850);
  v6 = *(v2 + 56);
  v7 = sub_1011D1A0C(&qword_101699D28, type metadata accessor for ObservationDatabase, &unk_10140B820);
  result = static Database.establishConnection(logger:temporary:)(v5, v6, v3, v7);
  if (!v1)
  {
    __chkstk_darwin(result);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  return result;
}

uint64_t sub_1011D1034()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1011D10DC(uint64_t a1)
{
  result = sub_1011D1A0C(&qword_1016B97C8, type metadata accessor for ObservationDatabase, &unk_10140B7F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011D1134()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1011D1170()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177CCE0);
  sub_1000076D4(v0, qword_10177CCE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1011D120C()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v6 >> 60 == 15)
  {
    v7 = static Data.random(bytes:)();
    v9 = v8;
    v11[0] = v7;
    v11[1] = v8;
    (*(v2 + 104))(v4, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v12 = v7;
    sub_100017D5C(v7, v9);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_100016590(v12, v9);
    return v10;
  }

  return result;
}

uint64_t sub_1011D1A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011D1A58(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1011D1B60(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011D1C68(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v2);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  v6 = swift_dynamicCast();
  v7 = v9;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1011D1D74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v5);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  sub_1000BC4D4(a2, a3);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1011D1E94(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v5 ^ 1u) << 32);
}

uint64_t sub_1011D1FA8(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1011D20B4(v1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v5 ^ 1u) << 8);
}

unint64_t sub_1011D20B4(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 5:
    case 9:
    case 32:
    case 64:
    case 94:
    case 115:
    case -92:
    case -87:
      result = 0xD000000000000015;
      break;
    case 3:
    case 15:
    case 22:
    case 95:
    case 101:
    case -121:
    case -99:
    case -93:
    case -90:
      result = 0xD000000000000018;
      break;
    case 6:
    case 8:
    case 104:
    case -128:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x74736F486E736361;
      break;
    case 10:
    case 29:
    case 37:
    case 49:
    case 50:
    case 55:
    case 60:
    case 61:
    case 70:
    case 71:
    case 86:
    case 97:
    case -126:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 17:
    case 69:
    case 127:
    case -111:
      result = 0xD000000000000014;
      break;
    case 12:
    case 16:
    case 57:
    case -88:
      result = 0xD000000000000013;
      break;
    case 13:
    case 103:
    case 111:
    case -120:
      result = 0xD00000000000002BLL;
      break;
    case 14:
      result = 0x6941656C65487369;
      break;
    case 19:
    case 31:
    case 33:
    case 85:
    case 100:
    case 120:
    case -105:
      result = 0xD00000000000001FLL;
      break;
    case 20:
    case 35:
    case 43:
    case 46:
    case 65:
    case 75:
    case 78:
    case -112:
      result = 0xD000000000000021;
      break;
    case 21:
    case 39:
      result = 0xD00000000000002ALL;
      break;
    case 23:
    case 59:
    case 62:
    case 63:
    case -115:
    case -108:
    case -106:
    case -101:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 93:
    case 126:
      result = 0xD000000000000016;
      break;
    case 25:
    case 45:
    case 52:
    case 66:
    case 87:
    case -110:
      result = 0xD000000000000017;
      break;
    case 26:
    case 77:
    case -122:
      result = 0xD000000000000024;
      break;
    case 27:
      result = 0xD00000000000003ALL;
      break;
    case 28:
      result = 0xD000000000000043;
      break;
    case 30:
    case 73:
    case 110:
      result = 0xD000000000000028;
      break;
    case 34:
    case 36:
    case 38:
    case 48:
    case 76:
    case 83:
    case 92:
    case -124:
    case -123:
    case -117:
    case -98:
      result = 0xD000000000000023;
      break;
    case 40:
    case 47:
    case 72:
    case 84:
    case -89:
      result = 0xD000000000000025;
      break;
    case 41:
      result = 0xD00000000000002CLL;
      break;
    case 42:
      result = 0xD00000000000001DLL;
      break;
    case 44:
      result = 0xD00000000000001DLL;
      break;
    case 51:
      result = 0xD000000000000026;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
    case 80:
    case 89:
    case 96:
    case 99:
    case -127:
    case -107:
    case -104:
      result = 0xD00000000000001ALL;
      break;
    case 56:
    case -96:
      result = 0xD000000000000011;
      break;
    case 58:
      result = 0xD00000000000001DLL;
      break;
    case 67:
    case 74:
    case 90:
    case 119:
    case -116:
    case -109:
      result = 0xD000000000000020;
      break;
    case 68:
      result = 0x724473776F6C6C61;
      break;
    case 79:
      result = 0xD00000000000001DLL;
      break;
    case 81:
      result = 0xD00000000000001DLL;
      break;
    case 82:
    case 91:
    case 102:
    case 121:
      result = 0xD000000000000019;
      break;
    case 88:
      result = 0xD00000000000001DLL;
      break;
    case 98:
    case 105:
    case 117:
    case -125:
    case -102:
    case -91:
      result = 0xD000000000000022;
      break;
    case 106:
    case 108:
    case 114:
      result = 0xD000000000000032;
      break;
    case 107:
    case 109:
      result = 0xD000000000000031;
      break;
    case 112:
      result = 0xD00000000000001DLL;
      break;
    case 113:
      result = 0xD00000000000001DLL;
      break;
    case 116:
      result = 0xD00000000000001DLL;
      break;
    case 118:
      result = 0xD00000000000001DLL;
      break;
    case 124:
    case 125:
      result = 0x657261685378616DLL;
      break;
    case -119:
    case -103:
      result = 0xD00000000000002DLL;
      break;
    case -118:
      result = 0xD00000000000001DLL;
      break;
    case -114:
      result = 0xD00000000000001DLL;
      break;
    case -100:
      result = 0xD00000000000001DLL;
      break;
    case -97:
      result = 0xD000000000000029;
      break;
    case -95:
      result = 0xD00000000000001DLL;
      break;
    case -94:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1011D2C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = COERCE_DOUBLE(sub_1011D1C68(a3, &type metadata for Int));
  if (v4)
  {
    *&result = 0.0;
  }

  else if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    *&result = (60 * result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1011D4264()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v8[0] = sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_1011D4D80(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1011D44D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016AF248, &unk_10140B900);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v9 = *(v2 + 24);
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1011D4CE4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10166A380;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1011D4774(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1011D4998(a1);
  }

  return result;
}

uint64_t sub_1011D47F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5E3C0(0, v8[2] + 1, 1, v8);
    *(a1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100A5E3C0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_1011D4998(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1011D4CB0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10166A2E0;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1011D4BD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1011D4C58(uint64_t a1, uint64_t a2)
{
  result = sub_1011D4D80(&qword_1016CAB08, a2, type metadata accessor for UserDefaultsConfigurationProvider, &unk_10140B894);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011D4CFC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1011D4D80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1011D4DD8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001E6224(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1011D4F58()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1011D5010;

  return sub_1011D5210();
}

uint64_t sub_1011D5010()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1011D514C, v1, v0);
}

uint64_t sub_1011D5184()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BBA4C;

  return sub_1009B7A64();
}

uint64_t sub_1011D5210()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v0[4] = type metadata accessor for Daemon();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1011D5314;

  return Daemon.__allocating_init(identifier:profile:services:)(0xD00000000000001DLL, 0x800000010134ACD0, 0x6170686372616573, 0xEC00000064797472, &unk_10140B950, 0);
}

uint64_t sub_1011D5314(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1011D5684, v6, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[8] = v7;
    v8 = sub_1011D59CC();
    *v7 = v4;
    v7[1] = sub_1011D54BC;
    v9 = v3[4];

    return ActorServiceDaemon.run()(v9, v8);
  }
}

uint64_t sub_1011D54BC()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1011D5824;
  }

  else
  {
    v4 = sub_1011D5618;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1011D5618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011D5684()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C348);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error creating Daemon instance: %@", v3, 0xCu);
    sub_100288C6C(v4);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1011D5824()
{

  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C348);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error creating Daemon instance: %@", v3, 0xCu);
    sub_100288C6C(v4);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

unint64_t sub_1011D59CC()
{
  result = qword_1016AA400;
  if (!qword_1016AA400)
  {
    type metadata accessor for Daemon();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA400);
  }

  return result;
}

void sub_1011D5A24(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1011D5B88();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1011D5BD8(319, &qword_1016B1C20, &type metadata accessor for UUID);
        if (v4 <= 0x3F)
        {
          sub_1011D5BD8(319, &unk_1016CAB78, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1011D5B88()
{
  if (!qword_1016BB000)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BB000);
    }
  }
}

void sub_1011D5BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1011D5C74(uint64_t a1)
{
  sub_1011D5BD8(319, &qword_1016B1C20, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1011D5D0C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v6 = __chkstk_darwin(v5 - 8);
  v138 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v144 = &v120 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v9 - 8);
  v142 = &v120 - v10;
  v11 = type metadata accessor for Date();
  v148 = *(v11 - 8);
  v149 = v11;
  __chkstk_darwin(v11);
  v147 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v139 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v120 - v16;
  v18 = type metadata accessor for UUID();
  v153 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v146 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v150 = &v120 - v21;
  v143 = type metadata accessor for SharedBeaconRecord(0);
  v22 = v143[20];
  v145 = a2;
  v23 = &a2[v22];
  v24 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v140 = v25 + 56;
  v141 = v26;
  v26(v23, 1, 1, v24);
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x800000010140B940 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_1011DB0CC();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();

      return sub_10000B3A8(v23, &unk_1016AF890, &qword_1013926D0);
    }
  }

  v151 = v23;
  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = v18;

  UUID.init(uuidString:)();
  v31 = v152;

  v32 = v153;
  v137 = *(v153 + 48);
  if (v137(v17, 1, v31) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    sub_1011DB0CC();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

LABEL_28:
    v23 = v151;
    return sub_10000B3A8(v23, &unk_1016AF890, &qword_1013926D0);
  }

  v34 = v32 + 32;
  v35 = *(v32 + 32);
  v36 = v150;
  v135 = v35;
  v136 = v34;
  v35(v150, v17, v31);
  v37 = [a1 encryptedValues];
  v38 = String._bridgeToObjectiveC()();
  v39 = v37;
  v40 = [v37 objectForKeyedSubscript:v38];

  if (!v40 || (v156 = v40, v41 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0) || (v42 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0(), !v44))
  {
    sub_1011DB0CC();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v153 + 8))(v36, v152);
    goto LABEL_28;
  }

  v131 = v43;
  v132 = v42;
  v134 = v44;
  v133 = v41;
  v45 = String._bridgeToObjectiveC()();
  v46 = [v39 objectForKeyedSubscript:v45];

  if (!v46 || (v156 = v46, (swift_dynamicCast() & 1) == 0))
  {
LABEL_36:

    v69 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_101385D80;
    *(v70 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v70 + 64) = sub_10013A2D8();
    *(v70 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v71 = a1;
    v72 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v72, "Invalid SharedBeaconRecord CKRecord - %@", 40, 2, v70);

    sub_1011DB0CC();
    swift_allocError();
    *v73 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v153 + 8))(v150, v152);
    goto LABEL_28;
  }

  v47 = v155;
  v129 = v154;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v39 objectForKeyedSubscript:v48];

  if (!v49 || (v130 = v47, v156 = v49, (swift_dynamicCast() & 1) == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v50 = v155;
  v128 = v154;
  v51 = String._bridgeToObjectiveC()();
  v52 = [v39 objectForKeyedSubscript:v51];

  if (!v52 || (v156 = v52, (swift_dynamicCast() & 1) == 0))
  {
LABEL_33:

    goto LABEL_35;
  }

  v127 = v50;
  v53 = v155;
  v125 = v154;
  v54 = String._bridgeToObjectiveC()();
  v55 = [v39 objectForKeyedSubscript:v54];

  if (!v55 || (v126 = v53, v154 = v55, (swift_dynamicCast() & 1) == 0) || (v124 = v156, v56 = String._bridgeToObjectiveC()(), v57 = [v39 objectForKeyedSubscript:v56], v56, !v57) || (v154 = v57, (swift_dynamicCast() & 1) == 0) || (v123 = v156, v58 = String._bridgeToObjectiveC()(), v59 = objc_msgSend(v39, "objectForKeyedSubscript:", v58), v58, !v59) || (v154 = v59, (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_33;
  }

  v60 = v156;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v39 objectForKeyedSubscript:v61];

  if (!v62 || (v154 = v62, (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_35;
  }

  v122 = v156;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v39 objectForKeyedSubscript:v63];

  if (v64 && (v154 = v64, swift_dynamicCast()))
  {
    v65 = v156;
  }

  else
  {
    v65 = 1;
  }

  v74 = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v65);
  if (v74 == 6)
  {
    v75 = 1;
  }

  else
  {
    v75 = v74;
  }

  v121 = v75;
  v76 = String._bridgeToObjectiveC()();
  v77 = [v39 objectForKeyedSubscript:v76];

  if (v77 && (v154 = v77, swift_dynamicCast()))
  {
    v78 = v156;
  }

  else
  {
    v78 = 1;
  }

  v120 = v78;
  v79 = String._bridgeToObjectiveC()();
  v80 = [v39 objectForKeyedSubscript:v79];

  if (v80)
  {
    v154 = v80;
    v81 = v142;
    v82 = v149;
    v83 = swift_dynamicCast();
    v84 = v148;
    (*(v148 + 56))(v81, v83 ^ 1u, 1, v82);
    if ((*(v84 + 48))(v81, 1, v82) != 1)
    {
      (*(v148 + 32))(v147, v142, v149);
      goto LABEL_51;
    }
  }

  else
  {
    (*(v148 + 56))(v142, 1, 1, v149);
  }

  static Date.distantPast.getter();
  if ((*(v148 + 48))(v142, 1, v149) != 1)
  {
    sub_10000B3A8(v142, &unk_101696900, &unk_10138B1E0);
  }

LABEL_51:
  v85 = String._bridgeToObjectiveC()();
  v86 = [v39 objectForKeyedSubscript:v85];

  if (v86)
  {
    v156 = v86;
    if (swift_dynamicCast())
    {
      v87 = v139;
      UUID.init(uuidString:)();

      if (v137(v87, 1, v152) != 1)
      {
        v135(v146, v139, v152);
        goto LABEL_56;
      }

      sub_10000B3A8(v139, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  UUID.init()();
LABEL_56:
  v88 = String._bridgeToObjectiveC()();
  v89 = [v39 objectForKeyedSubscript:v88];

  if (v89 && (v156 = v89, (swift_dynamicCast() & 1) != 0))
  {
    v91 = v154;
    v90 = v155;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1011DA578(&unk_1016CACB0, type metadata accessor for SharedBeaconRecord.PropertyListContent, &unk_10140BA24);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100016590(v91, v90);

      swift_unknownObjectRelease();

      v92 = v152;
      v93 = *(v153 + 8);
      v93(v146, v152);
      (*(v148 + 8))(v147, v149);
      v93(v150, v92);
      goto LABEL_28;
    }

    sub_100016590(v91, v90);

    v119 = v138;
    v141(v138, 0, 1, v24);
    sub_1000D2AD8(v119, v144, &unk_1016AF890, &qword_1013926D0);
  }

  else
  {
    v141(v144, 1, 1, v24);
  }

  v94 = v143;
  v142 = v143[15];
  v95 = objc_autoreleasePoolPush();
  v96 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v96];
  [v96 finishEncoding];
  v97 = [v96 encodedData];
  v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  objc_autoreleasePoolPop(v95);
  v100 = v145;
  *v145 = v141;
  *(v100 + 1) = v99;
  v101 = v152;
  v102 = *(v153 + 16);
  v102(&v100[v94[5]], v150, v152);
  v102(&v100[v94[6]], v146, v101);
  v103 = &v100[v94[7]];
  *v103 = v132;
  v104 = v134;
  *(v103 + 1) = v131;
  *(v103 + 2) = v104;
  v105 = &v100[v94[8]];
  v106 = v127;
  *v105 = v128;
  *(v105 + 1) = v106;
  v107 = &v100[v94[9]];
  v108 = v130;
  *v107 = v129;
  *(v107 + 1) = v108;
  v109 = &v100[v94[10]];
  v110 = v126;
  *v109 = v125;
  *(v109 + 1) = v110;
  *&v100[v94[11]] = v124;
  *&v100[v94[12]] = v123;
  *&v100[v142] = v60;
  v100[v94[13]] = v122;
  v100[v94[16]] = v121;
  *&v100[v94[17]] = v120;
  (*(v148 + 16))(&v100[v94[18]], v147, v149);
  sub_1011DBEDC(v144, v151);
  v111 = String._bridgeToObjectiveC()();
  v112 = [v39 objectForKeyedSubscript:v111];

  if (v112 && (v156 = v112, (swift_dynamicCast() & 1) != 0))
  {
    UUID.init(uuidString:)();
  }

  else
  {
    (*(v153 + 56))(&v145[v143[19]], 1, 1, v152);
  }

  v113 = v143[14];
  v114 = String._bridgeToObjectiveC()();
  v115 = [v39 objectForKeyedSubscript:v114];

  swift_unknownObjectRelease();
  sub_10000B3A8(v144, &unk_1016AF890, &qword_1013926D0);
  v116 = v152;
  v117 = *(v153 + 8);
  v117(v146, v152);
  (*(v148 + 8))(v147, v149);
  result = (v117)(v150, v116);
  if (v115 && (v154 = v115, result = swift_dynamicCast(), (result & 1) != 0))
  {
    v118 = v156;
    if (v156 >= 3)
    {
      v118 = 3;
    }
  }

  else
  {
    v118 = 3;
  }

  v145[v113] = v118;
  return result;
}

BOOL sub_1011D7100()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  result = 0;
  if (*(v0 + *(v1 + 44)) == 76)
  {
    v2 = *(v0 + *(v1 + 48));
    if (!HIDWORD(v2) && (v2 == 22034 || v2 == 21760))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1011D7168@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedBeaconRecord(0);
  result = __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(result + 64)) == 1)
  {
    v7 = *(v1 + *(result + 68));
    if (v7)
    {
      v8 = v7 - 1;
      if (is_mul_ok(v8, 0xFuLL))
      {
        if (is_mul_ok(15 * v8, 0x3CuLL))
        {
          return Date.addingTimeInterval(_:)();
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
      v9 = result;
      v10 = static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_101385D80;
      sub_10039496C(v1, v6);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_100008C00();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v15 = v1;
      v16 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v16, "SharedBeaconRecord unexpectedly has advertisedIndex of 0: %@", 60, 2, v11);

      v17 = *(v9 + 72);
      v18 = type metadata accessor for Date();
      return (*(*(v18 - 8) + 16))(a1, v15 + v17, v18);
    }
  }

  else
  {

    return static Date.distantPast.getter();
  }

  return result;
}

uint64_t sub_1011D73A0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177CD50);
  sub_1000076D4(v0, qword_10177CD50);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1011D7504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v24 = &v19 - v5;
  v6 = sub_1000BC4D4(&qword_1016CACF0, &qword_10140BB70);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  __chkstk_darwin(v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_1011DC1A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v11;
    v21 = a1;
    v12 = v23;
    v13 = v24;
    v26 = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for UUID();
    v25 = 1;
    sub_1011DA578(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v14 <= 1)
    {
      (*(v12 + 8))(v8, v6);
      v18 = v20;
      *v20 = v14;
      sub_1000D2AD8(v13, v18 + *(v9 + 20), &qword_1016980D0, &unk_10138F3B0);
      sub_1011DBFE0(v18, v22);
      v16 = v21;
      return sub_100007BAC(v16);
    }

    sub_1011DB0CC();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    (*(v12 + 8))(v8, v6);
    a1 = v21;
  }

  v16 = a1;
  return sub_100007BAC(v16);
}

uint64_t sub_1011D7850(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CAD00, &qword_10140BB78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1011DC1A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v8[14] = 1;
    type metadata accessor for UUID();
    sub_1011DA578(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_1011D7A08()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v8 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  sub_1000D2A70(v0 + *(v8 + 20), v7, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_1011DA578(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_1011D7C10()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1011D7C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101358790 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1011D7D34(uint64_t a1)
{
  v2 = sub_1011DC1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011D7D70(uint64_t a1)
{
  v2 = sub_1011DC1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1011D7DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v11 - v9;
  Hasher._combine(_:)(*v2);
  sub_1000D2A70(v2 + *(a2 + 20), v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_1011DA578(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int sub_1011D7FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  sub_1000D2A70(v2 + *(a2 + 20), v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_1011DA578(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

void sub_1011D8230(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for UUID();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v30 - v13;
  Data.hash(into:)();
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v15 = sub_1011DA578(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v33 = v15;
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v14[7]));
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v14[11]));
  Hasher._combine(_:)(*(v1 + v14[12]));
  Hasher._combine(_:)(*(v1 + v14[13]));
  v16 = *(v1 + v14[14]);
  if (v16 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16);
  }

  Hasher._combine(_:)(*(v1 + v14[15]));
  Hasher._combine(_:)(*(v1 + v14[16]));
  Hasher._combine(_:)(*(v1 + v14[17]));
  type metadata accessor for Date();
  sub_1011DA578(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v17 = v35;
  sub_1000D2A70(v1 + v14[19], v35, &qword_1016980D0, &unk_10138F3B0);
  v18 = v37;
  v19 = *(v37 + 48);
  if (v19(v17, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v17;
    v21 = v7;
    v22 = v3;
    v23 = v34;
    (*(v18 + 32))(v34, v20, v8);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v24 = v23;
    v3 = v22;
    v7 = v21;
    (*(v37 + 8))(v24, v8);
  }

  sub_1000D2A70(v2 + v14[20], v7, &unk_1016AF890, &qword_1013926D0);
  v25 = v36;
  if ((*(v3 + 48))(v7, 1, v36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v26 = v32;
    sub_1011DBFE0(v7, v32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*v26);
    v27 = v31;
    sub_1000D2A70(v26 + *(v25 + 20), v31, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v27, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v28 = v37;
      v29 = v34;
      (*(v37 + 32))(v34, v27, v8);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v28 + 8))(v29, v8);
    }

    sub_1011DC044(v26);
  }
}

uint64_t sub_1011D8800(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_1011D8838(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1011D8940()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = v1;
  v3 = *(v0 + *(v1 + 44));
  if (v3 != 76)
  {
LABEL_10:
    My = type metadata accessor for Feature.FindMy();
    v13 = My;
    v14 = sub_1011DA578(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v10 = sub_1000280DC(v12);
    (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v12);
    if ((My & 1) == 0)
    {
      v8 = sub_100E0EA64(v3, *(v0 + *(v2 + 48)));
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v4 = *(v0 + *(v1 + 48));
  if (HIDWORD(v4))
  {
LABEL_11:
    v8 = 1;
    return v8 & 1;
  }

  if (v4 != 22034 && v4 != 21760)
  {
    if (v4 == 8233)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = type metadata accessor for Feature.FindMy();
  v13 = v6;
  v14 = sub_1011DA578(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v7 = sub_1000280DC(v12);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.FindMy.spPlaySoundAll(_:), v6);
  v8 = isFeatureEnabled(_:)();
  sub_100007BAC(v12);
  return v8 & 1;
}

uint64_t sub_1011D8B18(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 44));
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(v1 + *(a1 + 48));
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return sub_100314604(v3, v4);
  }
}

id sub_1011D8B64()
{
  v0 = sub_1011DBF4C();

  return v0;
}

Swift::Int sub_1011D8BC4()
{
  Hasher.init(_seed:)();
  sub_1011D8230(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1011D8C08(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1011D8230(v2);
  return Hasher._finalize()();
}

uint64_t sub_1011D8C44(id *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v4 - 8);
  v53 = &v50 - v5;
  v54 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v51 = &v50 - v8;
  [*a1 encryptedValues];
  swift_getObjectType();
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = UUID.uuidString.getter();
  *(&v56 + 1) = &type metadata for String;
  v57 = &protocol witness table for String;
  *&v55 = v10;
  *(&v55 + 1) = v11;
  CKRecordKeyValueSetting.subscript.setter();
  v12 = v2 + v9[7];
  v14 = *(v12 + 8);
  v13 = *(v12 + 16);
  *(&v56 + 1) = &type metadata for String;
  v57 = &protocol witness table for String;
  *&v55 = v14;
  *(&v55 + 1) = v13;

  CKRecordKeyValueSetting.subscript.setter();
  v15 = (v2 + v9[8]);
  v17 = *v15;
  v16 = v15[1];
  *(&v56 + 1) = &type metadata for String;
  v57 = &protocol witness table for String;
  *&v55 = v17;
  *(&v55 + 1) = v16;

  CKRecordKeyValueSetting.subscript.setter();
  v18 = (v2 + v9[9]);
  v20 = *v18;
  v19 = v18[1];
  *(&v56 + 1) = &type metadata for String;
  v57 = &protocol witness table for String;
  *&v55 = v20;
  *(&v55 + 1) = v19;

  CKRecordKeyValueSetting.subscript.setter();
  v21 = (v2 + v9[10]);
  v23 = *v21;
  v22 = v21[1];
  *(&v56 + 1) = &type metadata for String;
  v57 = &protocol witness table for String;
  *&v55 = v23;
  *(&v55 + 1) = v22;

  CKRecordKeyValueSetting.subscript.setter();
  v24 = *(v2 + v9[11]);
  *(&v56 + 1) = &type metadata for Int;
  v57 = &protocol witness table for Int;
  *&v55 = v24;
  CKRecordKeyValueSetting.subscript.setter();
  v25 = *(v2 + v9[12]);
  *(&v56 + 1) = &type metadata for Int;
  v57 = &protocol witness table for Int;
  *&v55 = v25;
  CKRecordKeyValueSetting.subscript.setter();
  v26 = *(v2 + v9[15]);
  *(&v56 + 1) = &type metadata for Int;
  v57 = &protocol witness table for Int;
  *&v55 = v26;
  CKRecordKeyValueSetting.subscript.setter();
  v27 = *(v2 + v9[13]);
  *(&v56 + 1) = &type metadata for Bool;
  v57 = &protocol witness table for Bool;
  LOBYTE(v55) = v27;
  CKRecordKeyValueSetting.subscript.setter();
  *(&v56 + 1) = &type metadata for Bool;
  v57 = &protocol witness table for Bool;
  LOBYTE(v55) = v27;
  CKRecordKeyValueSetting.subscript.setter();
  v28 = *(v2 + v9[16]);
  v57 = &protocol witness table for Int;
  *(&v56 + 1) = &type metadata for Int;
  *&v55 = v28;
  CKRecordKeyValueSetting.subscript.setter();
  v29 = *(v2 + v9[14]);
  if (v29 == 3)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    *(&v55 + 1) = 0;
    *&v56 = 0;
  }

  else
  {
    v31 = &protocol witness table for Int;
    v30 = &type metadata for Int;
  }

  *&v55 = v29;
  *(&v56 + 1) = v30;
  v57 = v31;
  CKRecordKeyValueSetting.subscript.setter();
  v32 = *(v2 + v9[17]);
  *(&v56 + 1) = &type metadata for UInt64;
  v57 = &protocol witness table for UInt64;
  *&v55 = v32;
  CKRecordKeyValueSetting.subscript.setter();
  v33 = v9[18];
  v34 = type metadata accessor for Date();
  *(&v56 + 1) = v34;
  v57 = &protocol witness table for Date;
  v35 = sub_1000280DC(&v55);
  (*(*(v34 - 8) + 16))(v35, v2 + v33, v34);
  CKRecordKeyValueSetting.subscript.setter();
  v36 = v51;
  sub_1000D2A70(v2 + v9[19], v51, &qword_1016980D0, &unk_10138F3B0);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v40 = v54;
  if (v39 == 1)
  {
    sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
  }

  else
  {
    v41 = UUID.uuidString.getter();
    *(&v56 + 1) = &type metadata for String;
    v57 = &protocol witness table for String;
    *&v55 = v41;
    *(&v55 + 1) = v42;
    (*(v38 + 8))(v36, v37);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v43 = v53;
  sub_1000D2A70(v2 + v9[20], v53, &unk_1016AF890, &qword_1013926D0);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_10000B3A8(v43, &unk_1016AF890, &qword_1013926D0);
    *(&v56 + 1) = &type metadata for String;
    v57 = &protocol witness table for String;
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  else
  {
    v45 = v43;
    v46 = v50;
    sub_1011DBFE0(v45, v50);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1011DA578(&qword_1016BA510, type metadata accessor for SharedBeaconRecord.PropertyListContent, &unk_10140B9FC);
    v47 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v49 = v48;

    *(&v56 + 1) = &type metadata for Data;
    v57 = &protocol witness table for Data;
    *&v55 = v47;
    *(&v55 + 1) = v49;
    sub_100017D5C(v47, v49);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    sub_100016590(v47, v49);
    return sub_1011DC044(v46);
  }
}

uint64_t sub_1011D94C0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v87 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v89 = (&v69 - v7);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v69 - v9;
  v11 = type metadata accessor for Date();
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11);
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v14 = __chkstk_darwin(v13 - 8);
  v86 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v69 - v17;
  __chkstk_darwin(v16);
  v93 = &v69 - v19;
  v98 = type metadata accessor for UUID();
  v94 = *(v98 - 8);
  v20 = __chkstk_darwin(v98);
  v88 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v97 = &v69 - v22;
  v23 = sub_1000BC4D4(&qword_1016CACC8, &unk_10140BB58);
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  sub_1000035D0(a1, a1[3]);
  v26 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for CodingUserInfoKey();
  v28 = sub_1000076D4(v27, static CodingUserInfoKey.messagingCoder);
  v29 = *(v26 + 16);
  v96 = v23;
  if (v29 && (v30 = sub_100771F94(v28), (v31 & 1) != 0))
  {
    sub_100013894(*(v26 + 56) + 32 * v30, &v99);

    if (swift_dynamicCast())
    {
      v32 = v103;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v32 = 0;
LABEL_9:
  sub_1000035D0(a1, a1[3]);
  sub_1011DC0A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v82 = v10;
    if (v32)
    {
      v83 = 0;
      v84 = 0xC000000000000000;
    }

    else
    {
      v103 = 0;
      sub_1000E307C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v83 = v99;
      v84 = v100;
    }

    LOBYTE(v99) = 1;
    v33 = sub_1011DA578(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v81 = v33;
    v103 = 3;
    sub_100157E1C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v99;
    v36 = v100;
    v35 = v101;
    LOBYTE(v99) = 4;
    v77 = KeyedDecodingContainer.decode(_:forKey:)();
    v102 = v34;
    v78 = v36;
    v79 = v37;
    v80 = v35;
    v38 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    LOBYTE(v99) = 6;
    sub_1011DA578(&unk_1016CACB0, type metadata accessor for SharedBeaconRecord.PropertyListContent, &unk_10140BA24);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v18, 0, 1, v38);
    sub_1000D2AD8(v18, v93, &unk_1016AF890, &qword_1013926D0);
    LOBYTE(v99) = 5;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v41;
    v75 = v40;
    v76 = v39;
    LOBYTE(v99) = 7;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v44;
    v74 = v43;
    LOBYTE(v99) = 8;
    v73 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v99) = 9;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v99) = 11;
    v72 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v99) = 10;
    v71 = KeyedDecodingContainer.decode(_:forKey:)();
    v103 = 12;
    sub_100157E70();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v99;
    if (v99 == 6)
    {
      v48 = 1;
    }

    v70 = v48;
    LOBYTE(v99) = 13;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    v69 = v51;
    LOBYTE(v99) = 14;
    sub_1011DA578(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = *(v91 + 48);
    if (v52(v82, 1, v92) == 1)
    {
      static Date.distantPast.getter();
      if (v52(v82, 1, v92) != 1)
      {
        sub_10000B3A8(v82, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      (*(v91 + 32))(v90, v82, v92);
    }

    LOBYTE(v99) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = *(v94 + 48);
    if (v53(v89, 1, v98) == 1)
    {
      UUID.init()();
      if (v53(v89, 1, v98) != 1)
      {
        sub_10000B3A8(v89, &qword_1016980D0, &unk_10138F3B0);
      }
    }

    else
    {
      (*(v94 + 32))(v88, v89, v98);
    }

    LOBYTE(v99) = 15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v89 = type metadata accessor for SharedBeaconRecord(0);
    v54 = v89[5];
    v82 = *(v94 + 16);
    v55 = v85;
    (v82)(&v85[v54], v97, v98);
    (v82)(&v55[v89[6]], v88, v98);
    v56 = v89;
    (*(v91 + 16))(&v55[v89[18]], v90, v92);
    v57 = &v55[v56[19]];
    v58 = v87;
    sub_1000D2A70(v87, v57, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v93, v86, &unk_1016AF890, &qword_1013926D0);
    v59 = v89[15];
    v82 = v89[14];
    v81 = v59;
    sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
    v94 = *(v94 + 8);
    (v94)(v88, v98);
    (*(v91 + 8))(v90, v92);
    sub_10000B3A8(v93, &unk_1016AF890, &qword_1013926D0);
    (v94)(v97, v98);
    (*(v95 + 8))(v25, v96);
    v60 = v89;
    v61 = v89[20];
    (*(v76 + 56))(&v55[v61], 1, 1, v38);
    v62 = v84;
    *v55 = v83;
    *(v55 + 1) = v62;
    v63 = &v55[v60[7]];
    *v63 = v102;
    v64 = v80;
    *(v63 + 1) = v78;
    *(v63 + 2) = v64;
    v65 = &v55[v60[8]];
    v66 = v79;
    *v65 = v77;
    v65[1] = v66;
    v67 = &v55[v60[9]];
    *v67 = v75;
    v67[1] = v42;
    v68 = &v55[v60[10]];
    *v68 = v74;
    v68[1] = v45;
    *&v55[v60[11]] = v73;
    *&v55[v60[12]] = v47;
    v55[v60[13]] = v71 & 1;
    v55[v82] = 3;
    *&v55[v81] = v72;
    v55[v60[16]] = v70;
    *&v55[v60[17]] = v69;
    sub_10108FB0C(v86, &v55[v61]);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_1011DA4F4(uint64_t a1)
{
  *(a1 + 8) = sub_1011DA578(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord, &unk_10140BA74);
  result = sub_1011DA578(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1011DA578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011DA5C0(uint64_t a1)
{
  result = sub_1011DA578(&unk_1016B15B0, type metadata accessor for SharedBeaconRecord, &unk_10140BA9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011DA660(uint64_t a1)
{
  result = sub_1011DA578(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord, &unk_10140BAE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011DA6B8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v30 = &v26 - v6;
  v29 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016CACD8, &qword_10140BB68);
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  sub_1000035D0(a1, a1[3]);
  v11 = dispatch thunk of Encoder.userInfo.getter();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = sub_1000076D4(v12, static CodingUserInfoKey.messagingCoder);
  if (!*(v11 + 16) || (v14 = sub_100771F94(v13), (v15 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_100013894(*(v11 + 56) + 32 * v14, &v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1000035D0(a1, a1[3]);
    sub_1011DC0A0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
LABEL_11:
    v17 = v3[1];
    *&v32 = *v3;
    *(&v32 + 1) = v17;
    v34 = 0;
    sub_100017D5C(v32, v17);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v32, *(&v32 + 1));
    if (v2)
    {
      return (*(v31 + 8))(v10, v8);
    }

    goto LABEL_12;
  }

  v16 = v34;
  sub_1000035D0(a1, a1[3]);
  sub_1011DC0A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = xmmword_10138C660;
  v34 = 0;
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v32, *(&v32 + 1));
    return (*(v31 + 8))(v10, v8);
  }

  sub_100016590(v32, *(&v32 + 1));
LABEL_12:
  v18 = type metadata accessor for SharedBeaconRecord(0);
  LOBYTE(v32) = 1;
  type metadata accessor for UUID();
  sub_1011DA578(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v32) = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19 = v3 + v18[7];
  v20 = *v19;
  v22 = *(v19 + 1);
  v21 = *(v19 + 2);
  LOBYTE(v32) = v20;
  *(&v32 + 1) = v22;
  v33 = v21;
  v34 = 3;
  sub_100157F84();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v32) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = *(v3 + v18[16]);
  v34 = 12;
  sub_100157FD8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v32) = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v32) = 14;
  type metadata accessor for Date();
  sub_1011DA578(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v32) = 15;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  sub_1011DC0F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v23 = v30;
  sub_1000D2A70(v3 + v18[20], v30, &unk_1016AF890, &qword_1013926D0);
  if ((*(v27 + 48))(v23, 1, v29) == 1)
  {
    sub_10000B3A8(v30, &unk_1016AF890, &qword_1013926D0);
    LOBYTE(v32) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v24 = v28;
    sub_1011DBFE0(v30, v28);
    LOBYTE(v32) = 6;
    sub_1011DA578(&qword_1016BA510, type metadata accessor for SharedBeaconRecord.PropertyListContent, &unk_10140B9FC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1011DC044(v24);
  }

  return (*(v31 + 8))(v10, v8);
}

uint64_t sub_1011DAEFC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 0x496572616873;
      goto LABEL_11;
    case 3:
      result = 0x6E614872656E776FLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6C65646F6DLL;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65566D6574737973;
      break;
    case 8:
      result = 0x6449726F646E6576;
      break;
    case 9:
      result = 0x49746375646F7270;
      break;
    case 10:
      result = 0x6465747065636361;
      break;
    case 11:
      result = 1701605234;
      break;
    case 12:
      result = 0x7079546572616873;
      break;
    case 13:
      result = 0x7369747265766461;
      break;
    case 14:
      result = 0x7461446572616873;
      break;
    case 15:
      v3 = 0x4970756F7267;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1011DB0CC()
{
  result = qword_1016CACA0;
  if (!qword_1016CACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACA0);
  }

  return result;
}

uint64_t sub_1011DB120(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1011DAEFC(*a1);
  v5 = v4;
  if (v3 == sub_1011DAEFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1011DB1A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011DAEFC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011DB20C(uint64_t a1)
{
  sub_1011DAEFC(*v1);
  String.hash(into:)();
}

Swift::Int sub_1011DB260(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1011DAEFC(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011DB2C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011DC494(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011DB2F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1011DAEFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1011DB338@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011DC494(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011DB360(uint64_t a1)
{
  v2 = sub_1011DC0A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DB39C(uint64_t a1)
{
  v2 = sub_1011DC0A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1011DB3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v57 - v7);
  v9 = sub_1000BC4D4(&qword_1016CACC0, &qword_1013E4BE0);
  __chkstk_darwin(v9);
  v63 = &v57 - v10;
  v11 = type metadata accessor for UUID();
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v60 = v4;
  v20 = type metadata accessor for SharedBeaconRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v20[7];
  v22 = a1 + v21;
  v23 = *(a1 + v21);
  v24 = (a2 + v21);
  if (v23 != *v24)
  {
    return 0;
  }

  if ((*(v22 + 8) != *(v24 + 1) || *(v22 + 16) != *(v24 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v25 = v20[8];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v29 = v20[9];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v33 = v20[10];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  if ((v34 != *v36 || v35 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v20[11]) != *(a2 + v20[11]) || *(a1 + v20[12]) != *(a2 + v20[12]) || *(a1 + v20[13]) != *(a2 + v20[13]))
  {
    return 0;
  }

  v38 = v20[14];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 3)
  {
    if (v40 != 3)
    {
      return 0;
    }
  }

  else if (v39 != v40)
  {
    return 0;
  }

  if (*(a1 + v20[15]) != *(a2 + v20[15]) || *(a1 + v20[16]) != *(a2 + v20[16]) || *(a1 + v20[17]) != *(a2 + v20[17]) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v59 = v20[19];
  v41 = *(v17 + 48);
  sub_1000D2A70(a1 + v59, v19, &qword_1016980D0, &unk_10138F3B0);
  v42 = a2 + v59;
  v59 = v41;
  sub_1000D2A70(v42, &v19[v41], &qword_1016980D0, &unk_10138F3B0);
  v58 = *(v64 + 48);
  if (v58(v19, 1, v11) == 1)
  {
    if (v58(&v19[v59], 1, v11) == 1)
    {
      sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_36;
    }

LABEL_34:
    v43 = &qword_1016AF880;
    v44 = &unk_10138CE20;
    v45 = v19;
LABEL_42:
    sub_10000B3A8(v45, v43, v44);
    return 0;
  }

  sub_1000D2A70(v19, v16, &qword_1016980D0, &unk_10138F3B0);
  if (v58(&v19[v59], 1, v11) == 1)
  {
    (*(v64 + 8))(v16, v11);
    goto LABEL_34;
  }

  v46 = v64;
  (*(v64 + 32))(v13, &v19[v59], v11);
  sub_1011DA578(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v46 + 8);
  v47(v13, v11);
  v47(v16, v11);
  sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v48 = v20[20];
  v49 = *(v9 + 48);
  v50 = a1 + v48;
  v51 = v63;
  sub_1000D2A70(v50, v63, &unk_1016AF890, &qword_1013926D0);
  sub_1000D2A70(a2 + v48, v51 + v49, &unk_1016AF890, &qword_1013926D0);
  v52 = *(v62 + 48);
  if (v52(v51, 1, v60) != 1)
  {
    v53 = v63;
    sub_1000D2A70(v63, v8, &unk_1016AF890, &qword_1013926D0);
    if (v52(v53 + v49, 1, v60) == 1)
    {
      sub_1011DC044(v8);
      goto LABEL_41;
    }

    v54 = v63;
    v55 = v61;
    sub_1011DBFE0(v63 + v49, v61);
    v56 = sub_1011DBB88(v8, v55);
    sub_1011DC044(v55);
    sub_1011DC044(v8);
    sub_10000B3A8(v54, &unk_1016AF890, &qword_1013926D0);
    return v56;
  }

  if (v52(v63 + v49, 1, v60) != 1)
  {
LABEL_41:
    v43 = &qword_1016CACC0;
    v44 = &qword_1013E4BE0;
    v45 = v63;
    goto LABEL_42;
  }

  sub_10000B3A8(v63, &unk_1016AF890, &qword_1013926D0);
  return 1;
}

BOOL sub_1011DBB88(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for SharedBeaconRecord.PropertyListContent(0) + 20);
  v15 = *(v11 + 48);
  sub_1000D2A70(a1 + v14, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(a2 + v14, &v13[v15], &qword_1016980D0, &unk_10138F3B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000D2A70(v13, v10, &qword_1016980D0, &unk_10138F3B0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_1011DA578(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  return (v19 & 1) != 0;
}

uint64_t sub_1011DBEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011DBF4C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(v0 + *(v1 + 44));
  if (v2 == -1)
  {
    if (*(v0 + *(v1 + 48)) == -1)
    {
      v5 = &SPBeaconTypeSelfBeaconing;
      return *v5;
    }

    goto LABEL_11;
  }

  if (v2 != 76 || (v3 = *(v0 + *(v1 + 48)), HIDWORD(v3)))
  {
LABEL_11:
    v5 = &SPBeaconTypeAccessory;
    return *v5;
  }

  v4 = v3 == 22034 || v3 == 21760;
  v5 = &SPBeaconTypeAccessory;
  if (v4)
  {
    v5 = &SPBeaconTypeDurian;
  }

  return *v5;
}

uint64_t sub_1011DBFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011DC044(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1011DC0A0()
{
  result = qword_1016CACD0;
  if (!qword_1016CACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACD0);
  }

  return result;
}

unint64_t sub_1011DC0F4()
{
  result = qword_1016CACE8;
  if (!qword_1016CACE8)
  {
    sub_1000BC580(&qword_1016980D0, &unk_10138F3B0);
    sub_1011DA578(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACE8);
  }

  return result;
}

unint64_t sub_1011DC1A8()
{
  result = qword_1016CACF8;
  if (!qword_1016CACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACF8);
  }

  return result;
}

unint64_t sub_1011DC230()
{
  result = qword_1016CAD08;
  if (!qword_1016CAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD08);
  }

  return result;
}

unint64_t sub_1011DC288()
{
  result = qword_1016CAD10;
  if (!qword_1016CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD10);
  }

  return result;
}

unint64_t sub_1011DC2E0()
{
  result = qword_1016CAD18;
  if (!qword_1016CAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD18);
  }

  return result;
}

unint64_t sub_1011DC338()
{
  result = qword_1016CAD20;
  if (!qword_1016CAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD20);
  }

  return result;
}

unint64_t sub_1011DC390()
{
  result = qword_1016CAD28;
  if (!qword_1016CAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD28);
  }

  return result;
}

unint64_t sub_1011DC3E8()
{
  result = qword_1016CAD30;
  if (!qword_1016CAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD30);
  }

  return result;
}

unint64_t sub_1011DC440()
{
  result = qword_1016CAD38;
  if (!qword_1016CAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD38);
  }

  return result;
}

unint64_t sub_1011DC494(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AF58, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1011DC4E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 200;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1011DC530()
{
  if (*v0)
  {
    v1 = 200;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1011DC568(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 200;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_1011DC5B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 200)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1011DC5D4(uint64_t *a1@<X8>)
{
  v2 = 200;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

Swift::Int sub_1011DC65C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1011DC6D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1011DC724@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C398, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1011DC7B4@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160D448, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1011DC80C(uint64_t a1)
{
  v2 = sub_1011DCA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DC848(uint64_t a1)
{
  v2 = sub_1011DCA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1011DC884@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1011DC8B4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_1011DC8B4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CAD40, &qword_10140BF30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1011DCA10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v8 == 200;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1011DCA10()
{
  result = qword_1016CAD48;
  if (!qword_1016CAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD48);
  }

  return result;
}

unint64_t sub_1011DCA88()
{
  result = qword_1016CAD50;
  if (!qword_1016CAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD50);
  }

  return result;
}

unint64_t sub_1011DCAE0()
{
  result = qword_1016CAD58;
  if (!qword_1016CAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD58);
  }

  return result;
}

unint64_t sub_1011DCB38()
{
  result = qword_1016CAD60;
  if (!qword_1016CAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD60);
  }

  return result;
}

unint64_t sub_1011DCB90()
{
  result = qword_1016CAD68;
  if (!qword_1016CAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD68);
  }

  return result;
}

unint64_t sub_1011DCBE4()
{
  result = qword_1016CAD70;
  if (!qword_1016CAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAD70);
  }

  return result;
}

uint64_t sub_1011DCC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016CB028, &qword_10140C400);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  __chkstk_darwin(v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  sub_1000035D0(a1, v13);
  sub_1011DFDB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v26);
  }

  v14 = v12;
  v15 = v23;
  v30 = 0;
  sub_1011DFD64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v28;
  *v14 = v27;
  *(v14 + 1) = v16;
  v21[1] = v16;
  LOBYTE(v27) = 1;
  sub_1011DF028(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(&v14[*(v10 + 20)], v6, v4);
  v30 = 2;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v9, v25);
  v17 = v28;
  v18 = v29;
  v19 = &v14[*(v10 + 24)];
  *v19 = v27;
  *(v19 + 1) = v17;
  *(v19 + 2) = v18;
  sub_1011DFE0C(v14, v22, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
  sub_100007BAC(v26);
  return sub_1011DF070(v14, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
}

uint64_t sub_1011DD034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for MessagingMessageContext(0);
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016CB038, &unk_10140C408);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  __chkstk_darwin(v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_1011DFE74();
  v28 = v8;
  v12 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100007BAC(a1);
  }

  v24 = v9;
  v29 = v5;
  v13 = v26;
  v32 = 0;
  sub_1011DFD64();
  v14 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *&v30[8];
  v16 = v11;
  *v11 = *v30;
  v11[1] = v15;
  v23[1] = v15;
  v32 = 1;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v13;
  v18 = *&v30[8];
  v19 = *&v30[16];
  *(v16 + 16) = v30[0];
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;
  sub_1000BC4D4(&qword_1016C6990, &qword_101401F00);
  v32 = 2;
  sub_1011DFEC8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v31;
  *(v16 + 40) = v30[0];
  *(v16 + 48) = *&v30[8];
  *(v16 + 64) = v20;
  v32 = 3;
  sub_1011DFF2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + 72) = *v30;
  v30[0] = 4;
  sub_1011DF028(&qword_1016CB058, type metadata accessor for MessagingMessageContext, &protocol conformance descriptor for MessagingMessageContext);
  v21 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v28, v14);
  sub_1011DF0D0(v21, v16 + *(v24 + 32), type metadata accessor for MessagingMessageContext);
  sub_1011DFE0C(v16, v25, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
  sub_100007BAC(a1);
  return sub_1011DF070(v16, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
}

uint64_t sub_1011DD520()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x44496D6F7266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_1011DD57C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011DF610(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011DD5A4(uint64_t a1)
{
  v2 = sub_1011DFDB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DD5E0(uint64_t a1)
{
  v2 = sub_1011DFDB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DD634()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6567617373656DLL;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616E6974736564;
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

uint64_t sub_1011DD6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011DF72C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011DD700(uint64_t a1)
{
  v2 = sub_1011DFE74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DD73C(uint64_t a1)
{
  v2 = sub_1011DFE74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1011DD830(uint64_t a1)
{
  v2 = sub_1011DFC94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DD86C(uint64_t a1)
{
  v2 = sub_1011DFC94();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1011DD8A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1011DF8E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1011DD8D4(uint64_t a1)
{
  v2 = sub_1011DFC40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DD910(uint64_t a1)
{
  v2 = sub_1011DFC40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1011DD94C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1011DFA90(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1011DD978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = sub_1000BC4D4(&qword_1016CAF80, &qword_10140C3B0);
  v63 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v52 - v3;
  v4 = sub_1000BC4D4(&qword_1016CAF88, &qword_10140C3B8);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v65 = &v52 - v5;
  v6 = sub_1000BC4D4(&qword_1016CAF90, &qword_10140C3C0);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v68 = &v52 - v7;
  v58 = sub_1000BC4D4(&qword_1016CAF98, &qword_10140C3C8);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v64 = &v52 - v8;
  v67 = sub_1000BC4D4(&qword_1016CAFA0, &unk_10140C3D0);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = &v52 - v9;
  v66 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v11 = __chkstk_darwin(v66);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = a1[3];
  v74 = a1;
  sub_1000035D0(a1, v25);
  sub_1011DF3C4();
  v26 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v55 = v22;
    v53 = v16;
    v56 = v19;
    v54 = v13;
    v27 = v68;
    v28 = v69;
    v73 = v24;
    v29 = v70;
    v30 = v71;
    v31 = v67;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = (2 * *(v32 + 16)) | 1;
    v75 = v32;
    v76 = v32 + 32;
    v77 = 0;
    v78 = v33;
    v34 = sub_1002E2848();
    if (v34 == 4 || v77 != v78 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      sub_1000BC4D4(&qword_10169C868, &qword_101398420);
      *v41 = v66;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v72 + 8))(v10, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 1u)
      {
        if (v34 == 2)
        {
          LOBYTE(v79) = 2;
          sub_1011DF4C0();
          v43 = v65;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1011DF514();
          v44 = v62;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v45 = v72;
          (*(v61 + 8))(v43, v44);
          (*(v45 + 8))(v10, v31);
          swift_unknownObjectRelease();
          v50 = v53;
          *v53 = v79;
        }

        else
        {
          LOBYTE(v79) = 3;
          sub_1011DF418();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1011DF46C();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v49 = v72;
          (*(v63 + 8))(v28, v29);
          (*(v49 + 8))(v10, v31);
          swift_unknownObjectRelease();
          v50 = v54;
          *v54 = v79;
        }

        swift_storeEnumTagMultiPayload();
        v38 = v50;
      }

      else if (v34)
      {
        LOBYTE(v79) = 1;
        sub_1011DF568();
        v46 = v27;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
        sub_1011DF028(&qword_1016CAFD8, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived, &unk_10140C2E4);
        v47 = v56;
        v48 = v60;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v59 + 8))(v46, v48);
        (*(v72 + 8))(v10, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v47;
      }

      else
      {
        LOBYTE(v79) = 0;
        sub_1011DF5BC();
        v35 = v64;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
        sub_1011DF028(&qword_1016CAFE8, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered, &unk_10140C30C);
        v36 = v55;
        v37 = v58;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v57 + 8))(v35, v37);
        (*(v72 + 8))(v10, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v36;
      }

      v51 = v73;
      sub_1011DF0D0(v38, v73, type metadata accessor for SecureLocationsRelayedMessage);
      sub_1011DF0D0(v51, v30, type metadata accessor for SecureLocationsRelayedMessage);
    }
  }

  return sub_100007BAC(v74);
}

uint64_t sub_1011DE380(uint64_t a1)
{
  v2 = sub_1011E00F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE3BC(uint64_t a1)
{
  v2 = sub_1011E00F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1011DE3F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1011DFF80(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1011DE424(uint64_t a1)
{
  v2 = sub_1011DF4C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE460(uint64_t a1)
{
  v2 = sub_1011DF4C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1011DE49C()
{
  v1 = 0x526567617373656DLL;
  v2 = 0x73746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x4373656369766564;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1011DE540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1011E0C38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1011DE568(uint64_t a1)
{
  v2 = sub_1011DF3C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE5A4(uint64_t a1)
{
  v2 = sub_1011DF3C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DE5E0(uint64_t a1)
{
  v2 = sub_1011DF418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE61C(uint64_t a1)
{
  v2 = sub_1011DF418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DE658(uint64_t a1)
{
  v2 = sub_1011DF5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE694(uint64_t a1)
{
  v2 = sub_1011DF5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DE6D0(uint64_t a1)
{
  v2 = sub_1011DF568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011DE70C(uint64_t a1)
{
  v2 = sub_1011DF568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011DE760()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CAD78);
  v1 = sub_1000076D4(v0, qword_1016CAD78);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BFF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1011DE828(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v66 = a3;
  v67 = a4;
  v4 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v16 = PropertyListDecoder.init()();
  sub_1011DF028(&qword_1016CAD90, type metadata accessor for SecureLocationsRelayedMessage, &unk_10140C384);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v64 = v6;
  v65 = v16;
  v25 = v66;
  sub_1011DFE0C(v15, v13, type metadata accessor for SecureLocationsRelayedMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = *v13;
      v38 = v25[11];
      if (v38)
      {
        v39 = v25[12];

        v38(v37);
LABEL_20:
        sub_1000BB27C(v38, v39);
      }
    }

    else
    {
      v45 = sub_1010A4F08(*v13);

      v38 = v25[13];
      if (v38)
      {
        v39 = v25[14];

        v38(v45);
        goto LABEL_20;
      }
    }

    (*(v67 + 16))(v67, 0);

    v46 = type metadata accessor for SecureLocationsRelayedMessage;
    v47 = v15;
LABEL_28:
    sub_1011DF070(v47, v46);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1011DF0D0(v13, v9, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    v27 = v25[7];
    if (v27)
    {
      v28 = v25[8];
      v29 = *v9;
      v30 = *(v9 + 1);
      v31 = *(v7 + 20);
      v32 = &v9[*(v7 + 24)];
      v33 = *(v32 + 1);
      v34 = *(v32 + 2);
      v35 = *v32;

      v27(v29, v30, &v9[v31], v35, v33, v34);
      sub_1000BB27C(v27, v28);
    }

    (*(v67 + 16))(v67, 0);

    sub_1011DF070(v15, type metadata accessor for SecureLocationsRelayedMessage);
    v36 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered;
LABEL_27:
    v46 = v36;
    v47 = v9;
    goto LABEL_28;
  }

  v9 = v64;
  sub_1011DF0D0(v13, v64, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
  v40 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v69[0] = 0;
  v42 = [v40 JSONObjectWithData:isa options:0 error:v69];

  if (v42)
  {
    v43 = v69[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016CAD98, &unk_10140C190);
    if (swift_dynamicCast())
    {
      v44 = v68;
    }

    else
    {
      v44 = sub_100908F24(_swiftEmptyArrayStorage);
    }

    v49 = v25[9];
    if (v49)
    {
      v50 = v25[10];
      v51 = *v9;
      v60 = *(v9 + 1);
      v61 = v51;
      v52 = *(v9 + 3);
      v62 = *(v9 + 4);
      v63 = v52;
      v53 = *(v9 + 6);
      v66 = *(v9 + 7);
      v54 = *(v9 + 8);
      v55 = &v9[*(v4 + 32)];
      v56 = v9[40];
      v57 = v64[16];

      v58 = v57;
      v9 = v64;
      v49(v61, v60, v58, v63, v62, v56, v53, v66, v54, v44, v55);
      sub_1000BB27C(v49, v50);
    }

    (*(v67 + 16))(v67, 0);

    sub_1011DF070(v15, type metadata accessor for SecureLocationsRelayedMessage);
    v36 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived;
    goto LABEL_27;
  }

  v48 = v69[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_1011DF070(v15, type metadata accessor for SecureLocationsRelayedMessage);
  sub_1011DF070(v9, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
  if (qword_101695478 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_1016CAD78);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "processRelayedIDSServiceMessage failed %@", v20, 0xCu);
    sub_100288C6C(v21);
  }

  type metadata accessor for SecureLocationsError(0);
  v68 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1011DF028(&unk_1016B0E20, type metadata accessor for SecureLocationsError, &unk_101389C40);
  _BridgedStoredNSError.init(_:userInfo:)();
  v23 = v69[0];
  v24 = _convertErrorToNSError(_:)();
  (*(v67 + 16))(v67, v24);
}

uint64_t sub_1011DF028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011DF070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011DF0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011DF138(uint64_t a1)
{
  result = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1011DF208(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1011DF2B4(uint64_t a1)
{
  sub_1011DF358(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessagingMessageContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1011DF358(uint64_t a1)
{
  if (!qword_1016C6590)
  {
    v2 = sub_10108ACCC();
    v4 = type metadata accessor for Message(a1, &type metadata for BeaconSharingMessageType, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1016C6590);
    }
  }
}

unint64_t sub_1011DF3C4()
{
  result = qword_1016CAFA8;
  if (!qword_1016CAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFA8);
  }

  return result;
}

unint64_t sub_1011DF418()
{
  result = qword_1016CAFB0;
  if (!qword_1016CAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFB0);
  }

  return result;
}

unint64_t sub_1011DF46C()
{
  result = qword_1016CAFB8;
  if (!qword_1016CAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFB8);
  }

  return result;
}

unint64_t sub_1011DF4C0()
{
  result = qword_1016CAFC0;
  if (!qword_1016CAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFC0);
  }

  return result;
}

unint64_t sub_1011DF514()
{
  result = qword_1016CAFC8;
  if (!qword_1016CAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFC8);
  }

  return result;
}

unint64_t sub_1011DF568()
{
  result = qword_1016CAFD0;
  if (!qword_1016CAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFD0);
  }

  return result;
}

unint64_t sub_1011DF5BC()
{
  result = qword_1016CAFE0;
  if (!qword_1016CAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFE0);
  }

  return result;
}

uint64_t sub_1011DF610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1011DF72C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_1011DF8E0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CB000, &qword_10140C3F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1011DFC94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016CB010, &qword_10140C3F8);
    sub_1011DFCE8(&qword_1016CB018, &qword_1016CB010, &qword_10140C3F8, sub_1011DFD64);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

void *sub_1011DFA90(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CAFF0, &unk_10140C3E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1011DFC40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016C6918, &qword_101401EE0);
    sub_1011DFCE8(&qword_1016C6920, &qword_1016C6918, &qword_101401EE0, sub_1010AC6CC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1011DFC40()
{
  result = qword_1016CAFF8;
  if (!qword_1016CAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CAFF8);
  }

  return result;
}

unint64_t sub_1011DFC94()
{
  result = qword_1016CB008;
  if (!qword_1016CB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB008);
  }

  return result;
}

uint64_t sub_1011DFCE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1011DFD64()
{
  result = qword_1016CB020;
  if (!qword_1016CB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB020);
  }

  return result;
}

unint64_t sub_1011DFDB8()
{
  result = qword_1016CB030;
  if (!qword_1016CB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB030);
  }

  return result;
}

uint64_t sub_1011DFE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011DFE74()
{
  result = qword_1016CB040;
  if (!qword_1016CB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB040);
  }

  return result;
}

unint64_t sub_1011DFEC8()
{
  result = qword_1016CB048;
  if (!qword_1016CB048)
  {
    sub_1000BC580(&qword_1016C6990, &qword_101401F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB048);
  }

  return result;
}

unint64_t sub_1011DFF2C()
{
  result = qword_1016CB050;
  if (!qword_1016CB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB050);
  }

  return result;
}

void *sub_1011DFF80(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016CB060, &qword_10140C418);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1011E00F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1011E00F4()
{
  result = qword_1016CB068;
  if (!qword_1016CB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB068);
  }

  return result;
}

unint64_t sub_1011E01EC()
{
  result = qword_1016CB070;
  if (!qword_1016CB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB070);
  }

  return result;
}

unint64_t sub_1011E0244()
{
  result = qword_1016CB078;
  if (!qword_1016CB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB078);
  }

  return result;
}

unint64_t sub_1011E029C()
{
  result = qword_1016CB080;
  if (!qword_1016CB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB080);
  }

  return result;
}

unint64_t sub_1011E02F4()
{
  result = qword_1016CB088;
  if (!qword_1016CB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB088);
  }

  return result;
}

unint64_t sub_1011E034C()
{
  result = qword_1016CB090;
  if (!qword_1016CB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB090);
  }

  return result;
}

unint64_t sub_1011E03A4()
{
  result = qword_1016CB098;
  if (!qword_1016CB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB098);
  }

  return result;
}

unint64_t sub_1011E03FC()
{
  result = qword_1016CB0A0;
  if (!qword_1016CB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0A0);
  }

  return result;
}

unint64_t sub_1011E0454()
{
  result = qword_1016CB0A8;
  if (!qword_1016CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0A8);
  }

  return result;
}

unint64_t sub_1011E04AC()
{
  result = qword_1016CB0B0;
  if (!qword_1016CB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0B0);
  }

  return result;
}

unint64_t sub_1011E0504()
{
  result = qword_1016CB0B8;
  if (!qword_1016CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0B8);
  }

  return result;
}

unint64_t sub_1011E055C()
{
  result = qword_1016CB0C0;
  if (!qword_1016CB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0C0);
  }

  return result;
}

unint64_t sub_1011E05B4()
{
  result = qword_1016CB0C8;
  if (!qword_1016CB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0C8);
  }

  return result;
}

unint64_t sub_1011E060C()
{
  result = qword_1016CB0D0;
  if (!qword_1016CB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0D0);
  }

  return result;
}

unint64_t sub_1011E0664()
{
  result = qword_1016CB0D8;
  if (!qword_1016CB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0D8);
  }

  return result;
}

unint64_t sub_1011E06BC()
{
  result = qword_1016CB0E0;
  if (!qword_1016CB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0E0);
  }

  return result;
}

unint64_t sub_1011E0714()
{
  result = qword_1016CB0E8;
  if (!qword_1016CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0E8);
  }

  return result;
}

unint64_t sub_1011E076C()
{
  result = qword_1016CB0F0;
  if (!qword_1016CB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0F0);
  }

  return result;
}

unint64_t sub_1011E07C4()
{
  result = qword_1016CB0F8;
  if (!qword_1016CB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB0F8);
  }

  return result;
}

unint64_t sub_1011E081C()
{
  result = qword_1016CB100;
  if (!qword_1016CB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB100);
  }

  return result;
}

unint64_t sub_1011E0874()
{
  result = qword_1016CB108;
  if (!qword_1016CB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB108);
  }

  return result;
}

unint64_t sub_1011E08CC()
{
  result = qword_1016CB110;
  if (!qword_1016CB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB110);
  }

  return result;
}

unint64_t sub_1011E0924()
{
  result = qword_1016CB118;
  if (!qword_1016CB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB118);
  }

  return result;
}

unint64_t sub_1011E097C()
{
  result = qword_1016CB120;
  if (!qword_1016CB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB120);
  }

  return result;
}

unint64_t sub_1011E09D4()
{
  result = qword_1016CB128;
  if (!qword_1016CB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB128);
  }

  return result;
}

unint64_t sub_1011E0A2C()
{
  result = qword_1016CB130;
  if (!qword_1016CB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB130);
  }

  return result;
}

unint64_t sub_1011E0A84()
{
  result = qword_1016CB138;
  if (!qword_1016CB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB138);
  }

  return result;
}

unint64_t sub_1011E0ADC()
{
  result = qword_1016CB140;
  if (!qword_1016CB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB140);
  }

  return result;
}

unint64_t sub_1011E0B34()
{
  result = qword_1016CB148;
  if (!qword_1016CB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB148);
  }

  return result;
}

unint64_t sub_1011E0B8C()
{
  result = qword_1016CB150;
  if (!qword_1016CB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB150);
  }

  return result;
}

unint64_t sub_1011E0BE4()
{
  result = qword_1016CB158;
  if (!qword_1016CB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB158);
  }

  return result;
}

uint64_t sub_1011E0C38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010137DBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526567617373656DLL && a2 == 0xEF64657669656365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xEF6465676E616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4373656369766564 && a2 == 0xEE006465676E6168)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1011E0DC4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177CD68);
  sub_1000076D4(v0, qword_10177CD68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1011E0E48()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CB160);
  v1 = sub_1000076D4(v0, qword_1016CB160);
  if (qword_101695480 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CD68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1011E0F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1011E0F30, a4, 0);
}

uint64_t sub_1011E0F30()
{
  sub_1000035D0((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1011E0FD0;

  return sub_100F87B58();
}

uint64_t sub_1011E0FD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100B9E678, v8, 0);
  }
}

uint64_t sub_1011E111C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_1011E11D8;

  return daemon.getter();
}

uint64_t sub_1011E11D8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100019858(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019858(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_1011E13B4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1011E13B4(uint64_t a1)
{
  v4 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = sub_1011E1A38;
  }

  else
  {

    v6 = sub_1011E14EC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011E14EC()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1011E1580;

  return sub_100031364();
}

uint64_t sub_1011E1580(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1011E196C;
  }

  else
  {
    v6 = sub_1011E16B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011E16B4()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = &unk_10140CF88;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  v5 = sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
  v6 = sub_1000BC4D4(&qword_10169F028, &qword_10139FE10);
  v7 = sub_1011E6BD0();
  *v4 = v0;
  v4[1] = sub_1011E1804;

  return Sequence.asyncCompactMap<A>(_:)(&unk_10140CF98, v3, v5, v6, v7);
}

uint64_t sub_1011E1804(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 32);

    *(v4 + 136) = a1;

    return _swift_task_switch(sub_1011E19D0, v6, 0);
  }
}

uint64_t sub_1011E196C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011E19D0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_1011E1A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011E1A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEvent(0);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1011E1C94, 0, 0);
}

uint64_t sub_1011E1C94()
{
  (*(v0[8] + 16))(v0[9], v0[2], v0[7]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1011E1D68;
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[4];

  return sub_1011E26E0(v2, v3, v4);
}

uint64_t sub_1011E1D68()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1011E1EC0, 0, 0);
}

uint64_t sub_1011E1EC0()
{
  v19 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
    if (qword_101695488 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = v0[2];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016CB160);
    sub_1011E97F8(v3, v2, type metadata accessor for LocalFindableAccessoryRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_1011E9860(v7, type metadata accessor for LocalFindableAccessoryRecord);
      v13 = sub_1000136BC(v10, v12, &v18);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "No locations to publish for %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {
      v15 = v0[5];

      sub_1011E9860(v15, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v16 = v0[1];

    return v16(0, 0, 0, 0);
  }

  else
  {
    v14 = v0[3];
    sub_1011E98C0(v1, v0[16], type metadata accessor for DeviceEvent);

    return _swift_task_switch(sub_1011E2200, v14, 0);
  }
}

uint64_t sub_1011E2200()
{
  v1 = sub_1011E7078(*(v0 + 128), *(v0 + 16));
  *(v0 + 144) = 0;
  *(v0 + 176) = v2;
  *(v0 + 152) = v4;
  *(v0 + 160) = v3;
  *(v0 + 168) = v1;

  return _swift_task_switch(sub_1011E229C, 0, 0);
}

uint64_t sub_1011E229C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 176);
  sub_1011E9860(*(v0 + 128), type metadata accessor for DeviceEvent);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5(v3, v4, v2, v1);
}

uint64_t sub_1011E2388()
{
  v22 = v0;
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016CB160);
  sub_1011E97F8(v2, v1, type metadata accessor for LocalFindableAccessoryRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v7;
    v14 = v13;
    sub_1011E9860(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Can't create payload for accessory %{private,mask.hash}s!\nError: %{public}@.", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);

    v17 = v20;
  }

  else
  {

    sub_1011E9860(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v17 = v7;
  }

  sub_1011E9860(v17, type metadata accessor for DeviceEvent);

  v18 = v0[1];

  return v18(0, 0, 0, 0);
}

uint64_t sub_1011E26E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v4[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for BeaconIdentifier(0);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for DeviceEvent(0);
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[38] = v9;
  *v9 = v4;
  v9[1] = sub_1011E2A74;

  return daemon.getter();
}

uint64_t sub_1011E2A74(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[39] = a1;

  v3 = swift_task_alloc();
  v2[40] = v3;
  v4 = type metadata accessor for Daemon();
  v2[41] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019858(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[42] = v6;
  v7 = sub_100019858(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1011E2C54;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1011E2C54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_1011E33C0;
  }

  else
  {

    *(v4 + 352) = a1;
    v6 = sub_1011E2D90;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011E2D90()
{

  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_1011E2E7C;
  v3 = *(v0 + 352);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}

uint64_t sub_1011E2E7C()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_1011E2F94, v1, 0);
}

uint64_t sub_1011E2F94()
{
  v1 = v0[6];

  v0[46] = v0[2];

  return _swift_task_switch(sub_1011E3008, v1, 0);
}

uint64_t sub_1011E3008()
{
  v1 = v0[46];
  if (*(v1 + 16))
  {
    v3 = v0[25];
    v2 = v0[26];
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[21];
    v7 = v0[19];
    v8 = *(v0[20] + 80);
    sub_1011E97F8(v1 + ((v8 + 32) & ~v8), v6, type metadata accessor for OwnedBeaconRecord);

    v9 = *(v7 + 20);
    v10 = *(v4 + 16);
    v0[47] = v10;
    v0[48] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v3, v6 + v9, v5);
    sub_1011E9860(v6, type metadata accessor for OwnedBeaconRecord);
    (*(v4 + 32))(v2, v3, v5);
    v11 = getuid();
    sub_1000294F0(v11);
    Identifier.id.getter();
    v12 = swift_task_alloc();
    v0[49] = v12;
    *v12 = v0;
    v12[1] = sub_1011E3804;

    return daemon.getter();
  }

  else
  {

    if (qword_101695488 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016CB160);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No beaconing record for this device, cannot select events to publish.", v16, 2u);
    }

    (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1011E33C0()
{
  v31 = v0;

  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016CB160);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = v0[24];
    log = v6;
    v10 = v0[22];
    v28 = v7;
    v12 = v0[8];
    v11 = v0[9];
    v25 = v0[7];
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 138543875;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v14;
    *v26 = v14;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v15 = v11;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v8 + 8))(v9, v10);
    (*(v12 + 8))(v15, v25);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v13 + 24) = v19;
    _os_log_impl(&_mh_execute_header, log, v28, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v13, 0x20u);
    sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];

    (*(v21 + 8))(v20, v22);
  }

  (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1011E3804(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[50] = a1;

  v4 = swift_task_alloc();
  v2[51] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v2[52] = v5;
  v6 = sub_100019858(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  v2[53] = v6;
  *v4 = v3;
  v4[1] = sub_1011E39C0;
  v7 = v2[42];
  v8 = v2[41];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1011E39C0(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_1011E3DC0;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_1011E3AE8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011E3AE8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 112);
  (*(v0 + 376))(v3, *(v0 + 208), v1);
  v4 = *(v2 + 56);
  *(v0 + 448) = v4;
  *(v0 + 456) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v3, 0, 1, v1);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_1011E3BD8;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);

  return sub_1010CEAB4(v7, v6, v8);
}

uint64_t sub_1011E3BD8()
{
  v2 = *v1;
  v3 = *v1;
  v2[59] = v0;

  v4 = v2[14];
  if (v0)
  {
    v5 = v2[6];
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);

    return _swift_task_switch(sub_1011E5CB8, v5, 0);
  }

  else
  {
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);

    v6 = swift_task_alloc();
    v2[60] = v6;
    *v6 = v3;
    v6[1] = sub_1011E4244;

    return daemon.getter();
  }
}

uint64_t sub_1011E3DC0()
{
  v35 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[18];

  sub_1011E9860(v4, type metadata accessor for BeaconIdentifier);
  (*(v3 + 8))(v1, v2);
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016CB160);
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[23];
    v13 = v0[24];
    log = v10;
    v14 = v0[22];
    v32 = v11;
    v16 = v0[8];
    v15 = v0[9];
    v29 = v0[7];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v17 = 138543875;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v18;
    *v30 = v18;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    v19 = v15;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v12 + 8))(v13, v14);
    (*(v16 + 8))(v19, v29);
    v23 = sub_1000136BC(v20, v22, &v34);

    *(v17 + 24) = v23;
    _os_log_impl(&_mh_execute_header, log, v32, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v17, 0x20u);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v33);
  }

  else
  {
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1011E4244(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[61] = a1;

  v4 = swift_task_alloc();
  v2[62] = v4;
  *v4 = v3;
  v4[1] = sub_1011E43D0;
  v5 = v2[53];
  v6 = v2[52];
  v7 = v2[42];
  v8 = v2[41];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1011E43D0(uint64_t a1)
{
  v3 = *v2;
  v3[63] = a1;
  v3[64] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_1011E4748;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_1011E44F8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011E44F8()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 176);
  v3 = *(v0 + 104);
  (*(v0 + 376))(v3, *(v0 + 208), v2);
  v1(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 520) = v4;
  *v4 = v0;
  v4[1] = sub_1011E45D4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

  return sub_1010CE7E4(v6, v5, 8, v7);
}

uint64_t sub_1011E45D4()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 48);
  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v5 = sub_1011E6130;
  }

  else
  {
    v5 = sub_1011E4BE8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011E4748()
{
  v36 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[16];

  sub_10000B3A8(v5, &qword_1016AA4E0, &unk_1013BD0E0);
  sub_1011E9860(v4, type metadata accessor for BeaconIdentifier);
  (*(v3 + 8))(v1, v2);
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  v9 = v0[4];
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016CB160);
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[23];
    v14 = v0[24];
    log = v11;
    v15 = v0[22];
    v33 = v12;
    v17 = v0[8];
    v16 = v0[9];
    v30 = v0[7];
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v18 = 138543875;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v19;
    *v31 = v19;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    v20 = v16;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v13 + 8))(v14, v15);
    (*(v17 + 8))(v20, v30);
    v24 = sub_1000136BC(v21, v23, &v35);

    *(v18 + 24) = v24;
    _os_log_impl(&_mh_execute_header, log, v33, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v18, 0x20u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v34);
  }

  else
  {
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1011E4BE8()
{
  v144 = v0;
  v1 = v0[12];
  if ((*(v0[28] + 48))(v1, 1, v0[27]) == 1)
  {
    v2 = v0[26];
    v3 = v0[22];
    v4 = v0[23];
    v5 = v0[18];
    sub_10000B3A8(v0[16], &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1011E9860(v5, type metadata accessor for BeaconIdentifier);
    (*(v4 + 8))(v2, v3);
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
LABEL_3:
    v6 = 1;
    goto LABEL_4;
  }

  v10 = v0[15];
  v9 = v0[16];
  sub_1011E98C0(v1, v0[36], type metadata accessor for DeviceEvent);
  sub_1000D2A70(v9, v10, &qword_1016AA4E0, &unk_1013BD0E0);
  v11 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = v0[35];
    v13 = v0[36];
    v14 = v0[26];
    v15 = v0[22];
    v16 = v0[23];
    v17 = v0[18];
    v18 = v0[15];
    sub_10000B3A8(v0[16], &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1011E9860(v17, type metadata accessor for BeaconIdentifier);
    v141 = *(v16 + 8);
    v141(v14, v15);
    sub_10000B3A8(v18, &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1011E98C0(v13, v12, type metadata accessor for DeviceEvent);
  }

  else
  {
    v19 = v0[66];
    sub_100A870CC(v0[32]);
    v20 = v0[36];
    if (v19)
    {
      v21 = v0[26];
      v22 = v0[22];
      v23 = v0[23];
      v24 = v0[18];
      v26 = v0[15];
      v25 = v0[16];
      sub_1011E9860(v0[36], type metadata accessor for DeviceEvent);
      sub_10000B3A8(v25, &qword_1016AA4E0, &unk_1013BD0E0);
      sub_1011E9860(v24, type metadata accessor for BeaconIdentifier);
      (*(v23 + 8))(v21, v22);
      sub_10000B3A8(v26, &qword_1016998D0, &unk_1013931A0);
      if (qword_101695488 != -1)
      {
        swift_once();
      }

      v28 = v0[8];
      v27 = v0[9];
      v29 = v0[7];
      v30 = v0[4];
      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_1016CB160);
      (*(v28 + 16))(v27, v30, v29);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[23];
        v35 = v0[24];
        log = v32;
        v36 = v0[22];
        v138 = v33;
        v38 = v0[8];
        v37 = v0[9];
        v132 = v0[7];
        v39 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v143[0] = v142;
        *v39 = 138543875;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v40;
        *v133 = v40;
        *(v39 + 12) = 2160;
        *(v39 + 14) = 1752392040;
        *(v39 + 22) = 2081;
        v41 = v37;
        Identifier.id.getter();
        sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        (*(v34 + 8))(v35, v36);
        (*(v38 + 8))(v41, v132);
        v45 = sub_1000136BC(v42, v44, v143);

        *(v39 + 24) = v45;
        _os_log_impl(&_mh_execute_header, log, v138, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v39, 0x20u);
        sub_10000B3A8(v133, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v142);
      }

      else
      {
        v126 = v0[8];
        v125 = v0[9];
        v127 = v0[7];

        (*(v126 + 8))(v125, v127);
      }

      goto LABEL_3;
    }

    v46 = v0[34];
    v47 = v0[35];
    v48 = v0[33];
    v50 = v0[26];
    v49 = v0[27];
    v51 = v0[22];
    v52 = v0[23];
    v53 = v0[18];
    loga = v0[15];
    v139 = v0[32];
    sub_10000B3A8(v0[16], &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1011E9860(v53, type metadata accessor for BeaconIdentifier);
    v141 = *(v52 + 8);
    v141(v50, v51);
    sub_10000B3A8(loga, &qword_1016998D0, &unk_1013931A0);
    sub_1011E98C0(v139, v48, type metadata accessor for DeviceEvent);
    sub_1011E98C0(v48, v46, type metadata accessor for DeviceEvent);
    LOBYTE(v48) = *(v46 + 9);
    sub_1011E9860(v46, type metadata accessor for DeviceEvent);
    v54 = v49[6];
    v55 = type metadata accessor for Date();
    v56 = *(*(v55 - 8) + 32);
    v56(v47 + v54, v20 + v54, v55);
    sub_1000D2AD8(v20 + v49[7], v47 + v49[7], &qword_101699E50, &qword_1013D97C0);
    sub_1000D2AD8(v20 + v49[8], v47 + v49[8], &unk_1016AA510, &unk_101393150);
    sub_1011E98C0(v20 + v49[9], v47 + v49[9], type metadata accessor for BeaconIdentifier);
    v56(v47 + v49[10], v20 + v49[10], v55);
    *v47 = 0;
    *(v47 + 8) = 1;
    *(v47 + 9) = v48;
  }

  sub_1011E98C0(v0[35], v0[37], type metadata accessor for DeviceEvent);
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v57 = v0[11];
  v58 = v0[7];
  v59 = v0[8];
  v60 = v0[4];
  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_1016CB160);
  v62 = *(v59 + 16);
  (v62)(v57, v60, v58);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v0[24];
    v130 = v0[22];
    v66 = v0[8];
    v128 = v0[11];
    v129 = v0[7];
    v67 = swift_slowAlloc();
    logb = v62;
    v68 = swift_slowAlloc();
    v143[0] = v68;
    *v67 = 141558275;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v141(v65, v130);
    v72 = *(v66 + 8);
    (v72)(v128, v129);
    v73 = sub_1000136BC(v69, v71, v143);

    *(v67 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "Got device event for %{private,mask.hash}s.", v67, 0x16u);
    sub_100007BAC(v68);
    v62 = logb;
  }

  else
  {
    v74 = v0[11];
    v75 = v0[7];
    v76 = v0[8];

    v72 = *(v76 + 8);
    (v72)(v74, v75);
  }

  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    (v62)(v0[10], v0[4], v0[7]);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.info.getter();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v0[37];
    if (v110)
    {
      logc = v72;
      v112 = v0[24];
      v113 = v0[22];
      v114 = v0[10];
      v131 = v0[7];
      v140 = v0[37];
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v143[0] = v116;
      *v115 = 141558275;
      *(v115 + 4) = 1752392040;
      *(v115 + 12) = 2081;
      Identifier.id.getter();
      sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      v141(v112, v113);
      (logc)(v114, v131);
      v120 = sub_1000136BC(v117, v119, v143);

      *(v115 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v108, v109, "Stored device event older than lastPublishDate: %{private,mask.hash}s.", v115, 0x16u);
      sub_100007BAC(v116);

      sub_1011E9860(v140, type metadata accessor for DeviceEvent);
    }

    else
    {
      v123 = v0[10];
      v124 = v0[7];

      (v72)(v123, v124);
      sub_1011E9860(v111, type metadata accessor for DeviceEvent);
    }

    goto LABEL_3;
  }

  v77 = v0[37];
  v78 = v0[30];
  v79 = v0[29];
  sub_1011E97F8(v77, v0[31], type metadata accessor for DeviceEvent);
  sub_1011E97F8(v77, v78, type metadata accessor for DeviceEvent);
  sub_1011E97F8(v77, v79, type metadata accessor for DeviceEvent);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v0[31];
  if (v82)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 136446979;
    v86 = 0xE800000000000000;
    v87 = 0x6E776F6E6B6E752ELL;
    v88 = *(v83 + 9);
    v89 = 0xEC00000064657261;
    v90 = 0x657070617369642ELL;
    v143[0] = v85;
    if (v88 != 6)
    {
      v90 = 0x726961702ELL;
      v89 = 0xE500000000000000;
    }

    v91 = 0xE700000000000000;
    v92 = 0x6863617465642ELL;
    if (v88 != 4)
    {
      v92 = 0x657463657465642ELL;
      v91 = 0xEF79627261654E64;
    }

    if (v88 <= 5)
    {
      v90 = v92;
      v89 = v91;
    }

    v93 = 0xEB00000000746365;
    v94 = 0x6E6E6F637369642ELL;
    if (v88 != 2)
    {
      v94 = 0x6863617474612ELL;
      v93 = 0xE700000000000000;
    }

    if (v88)
    {
      v87 = 0x7463656E6E6F632ELL;
      v86 = 0xE800000000000000;
    }

    if (v88 > 1)
    {
      v87 = v94;
      v86 = v93;
    }

    if (v88 <= 3)
    {
      v95 = v87;
    }

    else
    {
      v95 = v90;
    }

    if (v88 <= 3)
    {
      v96 = v86;
    }

    else
    {
      v96 = v89;
    }

    v97 = v0[30];
    v98 = v0[29];
    sub_1011E9860(v0[31], type metadata accessor for DeviceEvent);
    v99 = sub_1000136BC(v95, v96, v143);

    *(v84 + 4) = v99;
    *(v84 + 12) = 2082;
    type metadata accessor for Date();
    sub_100019858(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    sub_1011E9860(v97, type metadata accessor for DeviceEvent);
    v103 = sub_1000136BC(v100, v102, v143);

    *(v84 + 14) = v103;
    *(v84 + 22) = 2160;
    *(v84 + 24) = 1752392040;
    *(v84 + 32) = 2081;
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    sub_1011E9860(v98, type metadata accessor for DeviceEvent);
    v107 = sub_1000136BC(v104, v106, v143);

    *(v84 + 34) = v107;
    _os_log_impl(&_mh_execute_header, v80, v81, "Unpublished payload for device event: source: %{public}s event timestamp: %{public}s, %{private,mask.hash}s.", v84, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v122 = v0[29];
    v121 = v0[30];

    sub_1011E9860(v122, type metadata accessor for DeviceEvent);
    sub_1011E9860(v121, type metadata accessor for DeviceEvent);
    sub_1011E9860(v83, type metadata accessor for DeviceEvent);
  }

  sub_1011E98C0(v0[37], v0[3], type metadata accessor for DeviceEvent);
  v6 = 0;
LABEL_4:
  (*(v0[28] + 56))(v0[3], v6, 1, v0[27]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1011E5CB8()
{
  v34 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  sub_1011E9860(v0[18], type metadata accessor for BeaconIdentifier);
  (*(v3 + 8))(v1, v2);
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[4];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_1016CB160);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[23];
    v12 = v0[24];
    log = v9;
    v13 = v0[22];
    v31 = v10;
    v15 = v0[8];
    v14 = v0[9];
    v28 = v0[7];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v16 = 138543875;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v17;
    *v29 = v17;
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    v18 = v14;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v11 + 8))(v12, v13);
    (*(v15 + 8))(v18, v28);
    v22 = sub_1000136BC(v19, v21, &v33);

    *(v16 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v31, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v16, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v32);
  }

  else
  {
    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[7];

    (*(v24 + 8))(v23, v25);
  }

  (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1011E6130()
{
  v35 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[18];
  sub_10000B3A8(v0[16], &qword_1016AA4E0, &unk_1013BD0E0);
  sub_1011E9860(v4, type metadata accessor for BeaconIdentifier);
  (*(v3 + 8))(v1, v2);
  if (qword_101695488 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016CB160);
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[23];
    v13 = v0[24];
    log = v10;
    v14 = v0[22];
    v32 = v11;
    v16 = v0[8];
    v15 = v0[9];
    v29 = v0[7];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v17 = 138543875;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v18;
    *v30 = v18;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    v19 = v15;
    Identifier.id.getter();
    sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v12 + 8))(v13, v14);
    (*(v16 + 8))(v19, v29);
    v23 = sub_1000136BC(v20, v22, &v34);

    *(v17 + 24) = v23;
    _os_log_impl(&_mh_execute_header, log, v32, "Error getting device event to publish: %{public}@ for beacon %{private,mask.hash}s.", v17, 0x20u);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v33);
  }

  else
  {
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  (*(v0[28] + 56))(v0[3], 1, 1, v0[27]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1011E65C4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 56) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v3;
  v5[1] = sub_1011E66BC;

  return v7(a2);
}

uint64_t sub_1011E66BC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *v4;

  if (a4)
  {
    v11 = *(v9 + 56);
    *(v9 + 40) = &type metadata for DeviceEventEncodedPayload;
    *(v9 + 48) = sub_1011E6C34();
    v12 = swift_allocObject();
    *(v9 + 16) = v12;
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    sub_10000A748((v9 + 16), v11);
  }

  else
  {
    v13 = *(v9 + 56);
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1011E6848()
{
  sub_100007BAC((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1011E68A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1011E111C(a1);
}

uint64_t sub_1011E693C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1011E69EC;

  return sub_1011E1A9C(a1, v4, v5);
}

uint64_t sub_1011E69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1011E6B08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_1011E65C4(a1, a2, v6);
}

unint64_t sub_1011E6BD0()
{
  result = qword_1016CB268;
  if (!qword_1016CB268)
  {
    sub_1000BC580(&qword_1016ACED8, &unk_10140CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB268);
  }

  return result;
}

unint64_t sub_1011E6C34()
{
  result = qword_1016CB270;
  if (!qword_1016CB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB270);
  }

  return result;
}

uint64_t sub_1011E6C88(uint64_t a1)
{
  *(v1 + 96) = a1;
  type metadata accessor for PencilLocationsPublisher();
  *(v1 + 104) = swift_allocObject();

  return _swift_task_switch(sub_1011E6D00, 0, 0);
}

uint64_t sub_1011E6D00()
{
  v1 = *(v0 + 96);
  swift_defaultActor_initialize();
  sub_1000D2A70(v1, v0 + 56, &qword_1016B80F0, &unk_1013DE208);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 104);
    sub_10000A748((v0 + 56), v0 + 16);
    sub_10001F280(v0 + 16, v2 + 112);

    return _swift_task_switch(sub_1011E6E58, v2, 0);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016B80F0, &unk_1013DE208);
    *(v0 + 112) = type metadata accessor for OneShotLocationWrapper();
    swift_allocObject();
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_1011E6ED4;

    return sub_100F876D8(*&kCLLocationAccuracyHundredMeters, 0);
  }
}

uint64_t sub_1011E6E58()
{
  sub_10000B3A8(v0[12], &qword_1016B80F0, &unk_1013DE208);
  sub_100007BAC(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_1011E6ED4(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1011E6FD4, 0, 0);
}

uint64_t sub_1011E6FD4()
{
  v1 = v0[16];
  v2 = v0[13];
  v2[17] = v0[14];
  v2[18] = &off_10165CCE0;
  v2[14] = v1;
  return _swift_task_switch(sub_1011E7004, v2, 0);
}

uint64_t sub_1011E7004()
{
  sub_10000B3A8(v0[12], &qword_1016B80F0, &unk_1013DE208);
  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_1011E7078(_BYTE *a1, uint64_t a2)
{
  v240 = a2;
  v256 = a1;
  v213 = type metadata accessor for HashAlgorithm();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v210 = &v197 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for DeviceEventEncodedInfo(0);
  v209 = *(v208 - 8);
  __chkstk_darwin(v208);
  v211 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for DeviceEvent(0);
  v4 = __chkstk_darwin(v255);
  v223 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v222 = &v197 - v7;
  v8 = __chkstk_darwin(v6);
  v220 = &v197 - v9;
  __chkstk_darwin(v8);
  v200 = &v197 - v10;
  v207 = type metadata accessor for Calendar.Component();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Calendar();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v201 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = __chkstk_darwin(v13 - 8);
  v202 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v219 = &v197 - v16;
  v250 = type metadata accessor for Date();
  v253 = *(v250 - 8);
  v17 = __chkstk_darwin(v250);
  v221 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v226 = &v197 - v19;
  v225 = type metadata accessor for P256.Signing.ECDSASignature();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v227 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for P256.Signing.PrivateKey();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v233 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for AES.GCM.Nonce();
  v242 = *(v238 - 8);
  __chkstk_darwin(v238);
  v232 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8);
  __chkstk_darwin(v23 - 8);
  v235 = &v197 - v24;
  v237 = type metadata accessor for SymmetricKey();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for AES.GCM.SealedBox();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v241 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for DeviceEventFormat(0);
  __chkstk_darwin(v248);
  v252 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v29 = (&v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v30 - 8);
  v32 = &v197 - v31;
  v243 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v33 = *(v243 - 8);
  __chkstk_darwin(v243);
  v239 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v36 = __chkstk_darwin(v35 - 8);
  v245 = &v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v254 = &v197 - v38;
  v39 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v40 = __chkstk_darwin(v39 - 8);
  v218 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v197 - v42;
  v44 = type metadata accessor for DeviceEvent.Location(0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v197 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v49 = __chkstk_darwin(v48 - 8);
  v244 = (&v197 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v49);
  v52 = &v197 - v51;
  v214 = v255[7];
  sub_1000D2A70(&v256[v214], v43, &qword_101699E50, &qword_1013D97C0);
  v53 = *(v45 + 48);
  v216 = v45 + 48;
  v215 = v53;
  v54 = v53(v43, 1, v44);
  v217 = v44;
  if (v54 == 1)
  {
    v55 = v250;
    sub_10000B3A8(v43, &qword_101699E50, &qword_1013D97C0);
    v56 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
    (*(*(v56 - 8) + 56))(v52, 1, 1, v56);
  }

  else
  {
    sub_1011E98C0(v43, v47, type metadata accessor for DeviceEvent.Location);
    v199 = *v47;
    v57 = *(v47 + 2);
    v58 = *(v44 + 28);
    v59 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
    v55 = v250;
    (*(v253 + 32))(&v52[*(v59 + 28)], &v47[v58]);
    *v52 = v199;
    *(v52 + 2) = v57;
    (*(*(v59 - 8) + 56))(v52, 0, 1, v59);
  }

  sub_1000D2A70(&v256[v255[8]], v32, &unk_1016AA510, &unk_101393150);
  v60 = (*(v33 + 48))(v32, 1, v243);
  v61 = v252;
  if (v60 == 1)
  {
    sub_10000B3A8(v32, &unk_1016AA510, &unk_101393150);
    v62 = 1;
    v63 = v254;
  }

  else
  {
    v64 = v239;
    sub_1011E98C0(v32, v239, type metadata accessor for DeviceEvent.AttachmentInfo);
    v65 = type metadata accessor for UUID();
    v63 = v254;
    (*(*(v65 - 8) + 16))(v254, v64, v65);
    sub_1011E9860(v64, type metadata accessor for DeviceEvent.AttachmentInfo);
    v62 = 0;
  }

  v66 = type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  (*(*(v66 - 8) + 56))(v63, v62, 1, v66);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v67 = v63;
  v68 = JSONEncoder.init()();
  *v29 = sub_100281AE0;
  v29[1] = 0;
  (*(v246 + 104))(v29, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v247);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v69 = v244;
  sub_1000D2A70(v52, v244, &qword_1016A3B60, &qword_1013AEE08);
  v70 = v245;
  sub_1000D2A70(v67, v245, &qword_1016A3B68, &unk_1013AEE10);
  v251 = v52;
  v71 = v256[9];
  v72 = v248;
  v74 = v253 + 16;
  v73 = *(v253 + 16);
  v75 = v61 + *(v248 + 28);
  v247 = v255[6];
  (v73)(v75, &v256[v247], v55);
  sub_1000D2AD8(v69, v61, &qword_1016A3B60, &qword_1013AEE08);
  v76 = v70;
  v77 = v68;
  sub_1000D2AD8(v76, v61 + *(v72 + 20), &qword_1016A3B68, &unk_1013AEE10);
  *(v61 + *(v72 + 24)) = v71;
  sub_100019858(&qword_1016CB278, type metadata accessor for DeviceEventFormat, &unk_1013AF1D0);
  v78 = v249;
  v79 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v81 = v254;
  if (!v78)
  {
    v244 = v73;
    v245 = v74;
    v248 = v79;
    *&v263 = v79;
    *(&v263 + 1) = v80;
    v249 = v80;
    v246 = type metadata accessor for LocalFindableAccessoryRecord(0);
    type metadata accessor for SymmetricKey256();
    sub_100019858(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
    *&v257 = KeyRepresenting.rawValue.getter();
    *(&v257 + 1) = v83;
    v84 = v234;
    SymmetricKey.init<A>(data:)();
    v85 = v242;
    v86 = v235;
    v87 = v238;
    (*(v242 + 56))(v235, 1, 1, v238);
    v88 = sub_1000E0A3C();
    static AES.GCM.seal<A>(_:using:nonce:)();
    v239 = v88;
    v243 = v77;
    sub_10000B3A8(v86, &qword_1016AF958, &qword_1013CADF8);
    (*(v236 + 8))(v84, v237);
    v90 = v232;
    AES.GCM.SealedBox.nonce.getter();
    *(&v264 + 1) = v87;
    v91 = sub_100019858(&qword_1016B9B00, &type metadata accessor for AES.GCM.Nonce, &protocol conformance descriptor for AES.GCM.Nonce);
    *&v265 = v91;
    v92 = sub_1000280DC(&v263);
    v93 = *(v85 + 16);
    v236 = v85 + 16;
    v235 = v93;
    (v93)(v92, v90, v87);
    sub_1000035D0(&v263, *(&v264 + 1));
    v237 = v91;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v94 = *(v85 + 8);
    v242 = v85 + 8;
    v234 = v94;
    (v94)(v90, v87);
    v95 = v257;
    sub_100007BAC(&v263);
    v96 = AES.GCM.SealedBox.ciphertext.getter();
    v98 = v97;
    v267 = v95;
    *(&v264 + 1) = &type metadata for Data;
    *&v265 = &protocol witness table for Data;
    *&v263 = v96;
    *(&v263 + 1) = v97;
    v99 = sub_1000035D0(&v263, &type metadata for Data);
    v100 = *v99;
    v101 = v99[1];
    sub_100017D5C(v95, *(&v95 + 1));
    sub_100017D5C(v96, v98);
    sub_100017DB0(v100, v101, &v267);
    sub_100016590(v96, v98);
    sub_100016590(v95, *(&v95 + 1));
    sub_100007BAC(&v263);
    v103 = *(&v267 + 1);
    v102 = v267;
    v104 = AES.GCM.SealedBox.tag.getter();
    v106 = v105;
    v257 = __PAIR128__(v103, v102);
    *(&v264 + 1) = &type metadata for Data;
    *&v265 = &protocol witness table for Data;
    *&v263 = v104;
    *(&v263 + 1) = v105;
    v107 = sub_1000035D0(&v263, &type metadata for Data);
    v108 = *v107;
    v109 = v107[1];
    sub_100017D5C(v102, v103);
    sub_100017D5C(v104, v106);
    sub_100017DB0(v108, v109, &v257);
    sub_100016590(v104, v106);
    sub_100016590(v102, v103);
    sub_100007BAC(&v263);
    v110 = v257;
    type metadata accessor for P256PrivateKey();
    sub_100019858(&qword_1016982E0, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
    *&v263 = KeyRepresenting.rawValue.getter();
    *(&v263 + 1) = v111;
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v112 = v237;
    v267 = v110;
    v113 = v227;
    P256.Signing.PrivateKey.signature<A>(for:)();
    v246 = *(&v110 + 1);
    v239 = v110;
    *&v199 = P256.Signing.ECDSASignature.rawRepresentation.getter();
    v198 = v114;
    (*(v224 + 8))(v113, v225);
    v227 = AES.GCM.SealedBox.ciphertext.getter();
    v225 = v115;
    v116 = AES.GCM.SealedBox.tag.getter();
    v118 = v117;
    v119 = v232;
    AES.GCM.SealedBox.nonce.getter();
    v120 = v238;
    *(&v258 + 1) = v238;
    *&v259 = v112;
    v121 = sub_1000280DC(&v257);
    (v235)(v121, v119, v120);
    sub_1000035D0(&v257, *(&v258 + 1));
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (v234)(v119, v120);
    v122 = v261;
    v123 = v262;
    sub_100007BAC(&v257);
    *&v263 = v199;
    *(&v263 + 1) = v198;
    *&v264 = v227;
    *(&v264 + 1) = v225;
    *&v265 = v116;
    *(&v265 + 1) = v118;
    *&v266 = v122;
    *(&v266 + 1) = v123;
    v257 = v263;
    v258 = v264;
    v259 = v265;
    v260 = v266;
    sub_100D12AA0();
    v238 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v242 = v124;
    v125 = v256;
    v126 = v218;
    sub_1000D2A70(&v256[v214], v218, &qword_101699E50, &qword_1013D97C0);
    v127 = v217;
    if (v215(v126, 1, v217) == 1)
    {
      sub_10000B3A8(v126, &qword_101699E50, &qword_1013D97C0);
      v128 = v219;
      v129 = v250;
      (*(v253 + 56))(v219, 1, 1, v250);
      sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
      (v244)(v226, &v125[v247], v129);
      v130 = v220;
    }

    else
    {
      v131 = v126 + *(v127 + 28);
      v132 = v219;
      v129 = v250;
      (v244)(v219, v131, v250);
      sub_1011E9860(v126, type metadata accessor for DeviceEvent.Location);
      v133 = v253;
      (*(v253 + 56))(v132, 0, 1, v129);
      sub_10000B3A8(v132, &unk_101696900, &unk_10138B1E0);
      v134 = v201;
      static Calendar.current.getter();
      v135 = v206;
      v136 = v204;
      v137 = v207;
      (*(v206 + 104))(v204, enum case for Calendar.Component.second(_:), v207);
      v138 = v202;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v135 + 8))(v136, v137);
      (*(v203 + 8))(v134, v205);
      v139 = (*(v133 + 48))(v138, 1, v129);
      v130 = v220;
      if (v139 == 1)
      {
        sub_10000B3A8(v138, &unk_101696900, &unk_10138B1E0);
        if (qword_101695488 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_1000076D4(v140, qword_1016CB160);
        v141 = v200;
        sub_1011E97F8(v256, v200, type metadata accessor for DeviceEvent);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        v144 = os_log_type_enabled(v142, v143);
        v145 = v239;
        if (v144)
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *&v257 = v147;
          *v146 = 141558275;
          *(v146 + 4) = 1752392040;
          *(v146 + 12) = 2081;
          type metadata accessor for BeaconIdentifier(0);
          type metadata accessor for UUID();
          sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v150 = v149;
          sub_1011E9860(v141, type metadata accessor for DeviceEvent);
          v151 = sub_1000136BC(v148, v150, &v257);
          v152 = v251;

          *(v146 + 14) = v151;
          _os_log_impl(&_mh_execute_header, v142, v143, "Cannot increase timestamp for event: %{private,mask.hash}s.", v146, 0x16u);
          sub_100007BAC(v147);

          v81 = v233;
          v153 = v241;
        }

        else
        {

          sub_1011E9860(v141, type metadata accessor for DeviceEvent);
          v81 = v233;
          v153 = v241;
          v152 = v251;
        }

        sub_1011E97A4();
        swift_allocError();
        *v167 = 6;
        swift_willThrow();
        sub_1000D2840(&v263);
        sub_100016590(v145, v246);
        sub_100016590(v248, v249);

        sub_100016590(v238, v242);
        (*(v228 + 8))(v81, v229);
        (*(v230 + 8))(v153, v231);
        sub_1011E9860(v252, type metadata accessor for DeviceEventFormat);
        sub_10000B3A8(v254, &qword_1016A3B68, &unk_1013AEE10);
        v82 = v152;
        goto LABEL_9;
      }

      (*(v133 + 32))(v226, v138, v129);
    }

    v154 = v223;
    v155 = v222;
    v156 = v221;
    if (qword_101695488 != -1)
    {
      swift_once();
    }

    v157 = type metadata accessor for Logger();
    sub_1000076D4(v157, qword_1016CB160);
    v158 = v256;
    sub_1011E97F8(v256, v130, type metadata accessor for DeviceEvent);
    sub_1011E97F8(v158, v155, type metadata accessor for DeviceEvent);
    (v244)(v156, v226, v129);
    sub_1011E97F8(v158, v154, type metadata accessor for DeviceEvent);
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v159, v160))
    {

      sub_1011E9860(v154, type metadata accessor for DeviceEvent);
      v165 = *(v253 + 8);
      v253 = (v253 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v256 = v165;
      (v165)(v156, v129);
      sub_1011E9860(v155, type metadata accessor for DeviceEvent);
      sub_1011E9860(v130, type metadata accessor for DeviceEvent);
LABEL_43:
      v186 = v211;
      (v244)(&v211[*(v208 + 20)], v226, v129);
      v187 = v238;
      v188 = v242;
      *v186 = v238;
      v186[1] = v188;
      sub_100017D5C(v187, v188);
      v189 = UUID.data.getter();
      v191 = v190;
      v192 = v212;
      v193 = v210;
      v194 = v213;
      (*(v212 + 104))(v210, enum case for HashAlgorithm.sha256(_:), v213);
      v81 = Data.hash(algorithm:)();
      sub_100016590(v189, v191);
      (*(v192 + 8))(v193, v194);
      sub_1000BC4D4(&qword_1016CB280, &qword_10140CFC0);
      v195 = (*(v209 + 80) + 32) & ~*(v209 + 80);
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_101385D80;
      sub_1011E98C0(v186, v196 + v195, type metadata accessor for DeviceEventEncodedInfo);
      sub_1000D2840(&v263);
      sub_100016590(v239, v246);
      sub_100016590(v248, v249);

      sub_100016590(v238, v242);
      (v256)(v226, v250);
      (*(v228 + 8))(v233, v229);
      (*(v230 + 8))(v241, v231);
      sub_1011E9860(v252, type metadata accessor for DeviceEventFormat);
      sub_10000B3A8(v254, &qword_1016A3B68, &unk_1013AEE10);
      sub_10000B3A8(v251, &qword_1016A3B60, &qword_1013AEE08);
      return v81;
    }

    v161 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    *&v257 = v237;
    *v161 = 136447235;
    v162 = *(v130 + 9);
    v247 = v159;
    LODWORD(v236) = v160;
    if (v162 > 3)
    {
      if (v162 > 5)
      {
        if (v162 == 6)
        {
          v163 = 0xEC00000064657261;
          v164 = 0x657070617369642ELL;
        }

        else
        {
          v163 = 0xE500000000000000;
          v164 = 0x726961702ELL;
        }

        goto LABEL_42;
      }

      if (v162 != 4)
      {
        v163 = 0xEF79627261654E64;
        v164 = 0x657463657465642ELL;
        goto LABEL_42;
      }

      v163 = 0xE700000000000000;
      v166 = 1952801838;
    }

    else
    {
      if (v162 <= 1)
      {
        v163 = 0xE800000000000000;
        if (v162)
        {
          v164 = 0x7463656E6E6F632ELL;
        }

        else
        {
          v164 = 0x6E776F6E6B6E752ELL;
        }

        goto LABEL_42;
      }

      if (v162 == 2)
      {
        v163 = 0xEB00000000746365;
        v164 = 0x6E6E6F637369642ELL;
LABEL_42:
        sub_1011E9860(v130, type metadata accessor for DeviceEvent);
        v168 = sub_1000136BC(v164, v163, &v257);

        *(v161 + 4) = v168;
        *(v161 + 12) = 2082;
        sub_100019858(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v169 = v222;
        v129 = v250;
        v170 = dispatch thunk of CustomStringConvertible.description.getter();
        v172 = v171;
        sub_1011E9860(v169, type metadata accessor for DeviceEvent);
        v173 = sub_1000136BC(v170, v172, &v257);

        *(v161 + 14) = v173;
        *(v161 + 22) = 2082;
        v174 = v221;
        v175 = dispatch thunk of CustomStringConvertible.description.getter();
        v177 = v176;
        v178 = *(v253 + 8);
        v253 = (v253 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v256 = v178;
        (v178)(v174, v129);
        v179 = sub_1000136BC(v175, v177, &v257);

        *(v161 + 24) = v179;
        *(v161 + 32) = 2160;
        *(v161 + 34) = 1752392040;
        *(v161 + 42) = 2081;
        type metadata accessor for BeaconIdentifier(0);
        type metadata accessor for UUID();
        sub_100019858(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v180 = v223;
        v181 = dispatch thunk of CustomStringConvertible.description.getter();
        v183 = v182;
        sub_1011E9860(v180, type metadata accessor for DeviceEvent);
        v184 = sub_1000136BC(v181, v183, &v257);

        *(v161 + 44) = v184;
        v185 = v247;
        _os_log_impl(&_mh_execute_header, v247, v236, "Prepared payload for device event: source: %{public}s event timestamp: %{public}s, locationTs: %{public}s, %{private,mask.hash}s.", v161, 0x34u);
        swift_arrayDestroy();

        goto LABEL_43;
      }

      v163 = 0xE700000000000000;
      v166 = 1953784110;
    }

    v164 = v166 | 0x68636100000000;
    goto LABEL_42;
  }

  sub_1011E9860(v61, type metadata accessor for DeviceEventFormat);
  sub_10000B3A8(v81, &qword_1016A3B68, &unk_1013AEE10);
  v82 = v251;
LABEL_9:
  sub_10000B3A8(v82, &qword_1016A3B60, &qword_1013AEE08);
  return v81;
}