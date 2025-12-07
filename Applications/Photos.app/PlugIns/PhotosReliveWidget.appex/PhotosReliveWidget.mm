uint64_t sub_100001E58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_100032550();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v33 = sub_100031E80();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v32 - v9;
  v11 = sub_100031E80();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v32 - v12;
  v38 = v13;
  v40 = sub_100031E80();
  v39 = *(v40 - 8);
  v14 = __chkstk_darwin(v40);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v36 = &v32 - v16;
  v44 = v4;
  v45 = v5;
  v46 = v2;
  sub_100032540();
  sub_1000321E0();
  WitnessTable = swift_getWitnessTable();
  sub_100032450();
  (*(v41 + 8))(v8, v6);
  sub_100032200();
  v41 = a1;
  v51 = WitnessTable;
  v52 = &protocol witness table for _PaddingLayout;
  v18 = v33;
  v19 = swift_getWitnessTable();
  sub_100032450();
  (*(v34 + 8))(v10, v18);
  sub_10000D4FC(&qword_100044AD0, &qword_100033B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000334B0;
  LOBYTE(v5) = sub_1000321D0();
  *(inited + 32) = v5;
  v21 = sub_1000321C0();
  *(inited + 33) = v21;
  sub_1000321F0();
  sub_1000321F0();
  if (sub_1000321F0() != v5)
  {
    sub_1000321F0();
  }

  sub_1000321F0();
  if (sub_1000321F0() != v21)
  {
    sub_1000321F0();
  }

  v49 = v19;
  v50 = &protocol witness table for _PaddingLayout;
  v22 = v38;
  v23 = swift_getWitnessTable();
  v24 = v35;
  v25 = v43;
  sub_100032450();
  (*(v37 + 8))(v25, v22);
  v47 = v23;
  v48 = &protocol witness table for _PaddingLayout;
  v26 = v40;
  swift_getWitnessTable();
  v27 = v39;
  v28 = *(v39 + 16);
  v29 = v36;
  v28(v36, v24, v26);
  v30 = *(v27 + 8);
  v30(v24, v26);
  v28(v42, v29, v26);
  return (v30)(v29, v26);
}

uint64_t sub_100002404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_1000024FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(v1 + *(v5 + 28));
  sub_10000F52C(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10000F688(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v11 = (v2 + *(v5 + 32));
  LOBYTE(v2) = *v11;
  LOBYTE(v5) = v11[1];
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v12 = sub_10000D4FC(&qword_100044980, &qword_100033A40);
  v13 = (a1 + v12[11]);
  *v13 = sub_10000F6E4;
  v13[1] = v10;
  *(a1 + v12[9]) = v8;
  *(a1 + v12[10]) = 1;
  v14 = a1 + v12[12];
  *v14 = v2;
  v14[1] = v5;
}

uint64_t sub_1000026BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(v1 + *(v5 + 28));
  sub_10000F52C(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosReliveWidgetMemoryContent);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10000F688(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v11 = (v2 + *(v5 + 32));
  LOBYTE(v2) = *v11;
  LOBYTE(v5) = v11[1];
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v12 = sub_10000D4FC(&qword_100044980, &qword_100033A40);
  v13 = (a1 + v12[11]);
  *v13 = sub_10000E2A0;
  v13[1] = v10;
  *(a1 + v12[9]) = v8;
  *(a1 + v12[10]) = 1;
  v14 = a1 + v12[12];
  *v14 = v2;
  v14[1] = v5;
}

uint64_t sub_10000287C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10000D4FC(&qword_100044CC8, &qword_100033DB0);
  *(a3 + v6[9]) = a1;
  *(a3 + v6[10]) = 0;
  v7 = a3 + v6[12];
  *v7 = a2 & 1;
  v7[1] = HIBYTE(a2) & 1;
}

uint64_t sub_100002930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v4 + 32))(v7 + v6, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  v18 = v8;
  v19 = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  swift_getWitnessTable();
  v10 = sub_100032570();
  WitnessTable = swift_getWitnessTable();
  v18 = v10;
  v19 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v18 = v10;
  v19 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v16 = sub_100031E40();
  v17 = v12;
  v13 = sub_100031E50();
  swift_getWitnessTable();
  v14 = *(*(v13 - 8) + 16);
  v14(&v18, &v16, v13);

  v16 = v18;
  v17 = v19;
  v14(a2, &v16, v13);
}

uint64_t sub_100002C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a2;
  v33 = a1;
  v34 = a5;
  v7 = sub_10000D4FC(&qword_100044CD0, &qword_100033DB8);
  __chkstk_darwin(v7 - 8);
  v31 = v28 - v8;
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  v39 = a3;
  v40 = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  v28[1] = swift_getWitnessTable();
  v9 = sub_100032570();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  WitnessTable = swift_getWitnessTable();
  v39 = v9;
  v40 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v28 - v17;
  v35 = a3;
  v36 = a4;
  v19 = v32;
  v37 = v32;
  v38 = v33;
  sub_1000325F0();
  sub_100032560();
  v21 = *(v19 + *(type metadata accessor for PhotosReliveWidgetContentView(0, a3, a4, v20) + 36));
  v22 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  v23 = sub_100031B90();
  v24 = v31;
  (*(*(v23 - 8) + 16))(v31, v21 + v22, v23);
  sub_10000D904(v24, 0, 1, v23);
  sub_1000323C0();
  sub_1000114E0(v24, &qword_100044CD0);
  (*(v30 + 8))(v11, v9);
  v25 = *(v13 + 16);
  v25(v18, v16, OpaqueTypeMetadata2);
  v26 = *(v13 + 8);
  v26(v16, OpaqueTypeMetadata2);
  v25(v34, v18, OpaqueTypeMetadata2);
  return (v26)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_100003064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a5;
  v9 = sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  __dst[0] = a3;
  __dst[1] = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v11 = sub_100032610();
  v72 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v71 = &v64 - v13;
  v73 = OpaqueTypeMetadata2;
  v70 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(v12);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v64 - v16;
  v17 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v64 - v19;
  v74 = v9;
  v66 = *(v9 - 8);
  v21 = __chkstk_darwin(v18);
  v75 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v85 = &v64 - v23;
  v83 = v11;
  v82 = sub_100032B10();
  v79 = *(v82 - 8);
  v24 = __chkstk_darwin(v82);
  v77 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v81 = &v64 - v26;
  v27 = type metadata accessor for PhotosReliveWidgetPhotoView(0);
  v28 = __chkstk_darwin(v27);
  v80 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v64 - v30;
  v68 = a3;
  OpaqueTypeConformance2 = a4;
  v33 = type metadata accessor for PhotosReliveWidgetContentView(0, a3, a4, v32);
  v34 = *(a1 + v33[9]);
  v35 = (a1 + v33[12]);
  LOBYTE(v9) = *v35;
  LOBYTE(a4) = v35[1];
  v78 = v27;
  v36 = *(v27 + 36);
  v37 = sub_100031E30();
  v38 = *(*(v37 - 8) + 16);
  v65 = a2;
  v38(&v31[v36], a2, v37);
  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  *v31 = KeyPath;
  v31[8] = 0;
  *(v31 + 2) = v40;
  v31[24] = 0;
  *(v31 + 4) = v41;
  v31[40] = 0;
  *(v31 + 6) = v34;
  v31[56] = v9;
  v31[57] = a4;
  if (*(a1 + v33[10]) == 1)
  {

    sub_1000039A8(v89);
    memcpy(v88, v89, sizeof(v88));
    sub_100032720();
    v42 = sub_100032730();
    sub_10000D904(v20, 0, 1, v42);
    v65 = sub_10000D4FC(&qword_100044EE8, &qword_100034068);
    v64 = sub_1000107A0();
    sub_1000323B0();
    sub_1000114E0(v20, &qword_100044D88);
    memcpy(__dst, v88, 0xA0uLL);
    sub_1000114E0(__dst, &qword_100044EE8);
    sub_100032720();
    sub_10000D904(v20, 0, 1, v42);
    v44 = v67;
    v43 = v68;
    v45 = OpaqueTypeConformance2;
    sub_1000323B0();
    sub_1000114E0(v20, &qword_100044D88);
    v89[0] = v43;
    v89[1] = v45;
    v68 = &opaque type descriptor for <<opaque return type of View._widgetAccentedRenderingMode(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v70;
    v47 = *(v70 + 16);
    v48 = v73;
    v47(v76, v44, v73);
    v70 = *(v46 + 8);
    (v70)(v44, v48);
    v49 = v66;
    v51 = v74;
    v50 = v75;
    (*(v66 + 16))(v75, v85, v74);
    v89[0] = v50;
    v52 = v76;
    v47(v44, v76, v48);
    v89[1] = v44;
    v88[0] = v51;
    v88[1] = v48;
    v86 = v65;
    v87 = v64;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = OpaqueTypeConformance2;
    v53 = v71;
    sub_100003B8C(v89, 2, v88);
    v54 = v70;
    (v70)(v52, v48);
    v55 = *(v49 + 8);
    v55(v85, v51);
    v54(v44, v48);
    v55(v75, v51);
    v56 = v77;
    v57 = v83;
    (*(v72 + 32))(v77, v53, v83);
    sub_10000D904(v56, 0, 1, v57);
    swift_getWitnessTable();
    v58 = v81;
    sub_100003D08(v56, v81);
    v59 = v79;
    v60 = *(v79 + 8);
  }

  else
  {
    v56 = v77;
    sub_10000D904(v77, 1, 1, v83);
    swift_getWitnessTable();
    v58 = v81;
    sub_100003D08(v56, v81);
    v59 = v79;
    v60 = *(v79 + 8);
  }

  v61 = v82;
  v60(v56, v82);
  v62 = v80;
  sub_10000F52C(v31, v80, type metadata accessor for PhotosReliveWidgetPhotoView);
  __dst[0] = v62;
  (*(v59 + 16))(v56, v58, v61);
  __dst[1] = v56;
  v89[0] = v78;
  v89[1] = v61;
  v88[0] = sub_10000DD28(&qword_100044EE0, type metadata accessor for PhotosReliveWidgetPhotoView, &unk_100034104);
  __dst[20] = swift_getWitnessTable();
  v88[1] = swift_getWitnessTable();
  sub_100003B8C(__dst, 2, v89);
  v60(v58, v61);
  sub_100010744(v31);
  v60(v56, v61);
  return sub_100010744(v62);
}

double sub_1000039A8@<D0>(uint64_t a1@<X8>)
{
  sub_10000D4FC(&qword_100044F60, &qword_1000340A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000334B0;
  sub_100032490();
  sub_1000324C0();

  *(v2 + 32) = sub_100032580();
  *(v2 + 40) = v3;
  sub_100032490();
  sub_1000324C0();

  *(v2 + 48) = sub_100032580();
  *(v2 + 56) = v4;
  sub_100032590();
  sub_100032630();
  sub_100032640();
  sub_100031E60();
  sub_100031E20();
  v5 = sub_1000324A0();
  KeyPath = swift_getKeyPath();
  v7 = sub_1000321B0();
  v8 = sub_1000320C0();
  v9 = sub_100032050();
  sub_1000325F0();
  sub_100031E10();
  *a1 = KeyPath;
  *(a1 + 8) = v5;
  *(a1 + 16) = v11;
  *(a1 + 40) = v13;
  *(a1 + 24) = v12;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_100003D74;
  *(a1 + 80) = 0;
  *(a1 + 88) = v9;
  *(a1 + 96) = sub_100003D74;
  *(a1 + 104) = 0;
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  result = *&v16;
  *(a1 + 144) = v16;
  return result;
}

uint64_t sub_100003B8C(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_100032620();
}

uint64_t sub_100003D08@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_100032B10();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

double sub_100003D7C()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v7 = sub_100032A30();
  v8 = sub_100032190();
  sub_100031D30(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

  sub_100031FF0();
  swift_getAtKeyPath();
  sub_100011534(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

double sub_100003EC8()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v7 = sub_100032A30();
  v8 = sub_100032190();
  sub_100031D30(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

  sub_100031FF0();
  swift_getAtKeyPath();
  sub_100011534(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_100004014()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    v6 = sub_100032A30();
    v7 = sub_100032190();
    sub_100031D30(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100031FF0();
    swift_getAtKeyPath();
    sub_100011534(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_100004184@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_10000D4FC(&qword_100045028, &qword_100034158);
  v76 = *(v2 - 8);
  __chkstk_darwin(v2);
  v75 = &v57 - v3;
  v77 = sub_10000D4FC(&qword_100045030, &qword_100034160);
  __chkstk_darwin(v77);
  v78 = &v57 - v4;
  v5 = sub_10000D4FC(&qword_100045038, &qword_100034168);
  __chkstk_darwin(v5);
  v64 = &v57 - v6;
  v68 = sub_10000D4FC(&qword_100045040, &qword_100034170);
  __chkstk_darwin(v68);
  v70 = &v57 - v7;
  v69 = sub_10000D4FC(&qword_100045048, &qword_100034178);
  __chkstk_darwin(v69);
  v59 = &v57 - v8;
  v9 = sub_10000D4FC(&qword_100045050, &qword_100034180);
  __chkstk_darwin(v9);
  v72 = &v57 - v10;
  v11 = sub_1000324E0();
  v65 = *(v11 - 1);
  v66 = v11;
  __chkstk_darwin(v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000D4FC(&qword_100045058, &qword_100034188);
  v14 = __chkstk_darwin(v58);
  v57 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v57 - v16;
  v17 = *(v1 + 48);
  v18 = *(v17 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_layoutDescription);
  type metadata accessor for PhotosReliveWidgetPhotoView(0);
  v19 = v18;
  v67 = v1;
  sub_100031E20();
  if (v18)
  {
    v61 = v5;
    v62 = v9;
    v63 = v2;
    sub_100032080();
    v20 = objc_opt_self();

    v21 = [v20 mainBundle];
    v22 = sub_100032380();
    v74 = v23;
    v75 = v22;
    v73 = v24;
    v76 = v25;
    v26 = v19;

    if (*(v17 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
    {
      v27 = *(v17 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
      v28 = *(v17 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8);
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v83[0] = v27;
    v83[1] = v28;
    sub_10000EF70();

    sub_100032390();
    v60 = v26;
    sub_100032520();
    v37 = v65;
    v36 = v66;
    (*(v65 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v66);
    v38 = sub_100032510();

    (*(v37 + 8))(v13, v36);
    sub_1000325F0();
    sub_100031E10();
    *&v84[38] = v88;
    *&v84[22] = v87;
    *&v84[6] = v86;
    *(&v82[1] + 2) = *v84;
    v85 = 1;
    v82[0] = v38;
    LOWORD(v82[1]) = 257;
    *(&v82[2] + 2) = *&v84[16];
    *(&v82[3] + 2) = *&v84[32];
    *&v82[4] = *(&v88 + 1);
    sub_10000D4FC(&qword_1000450B0, &qword_1000341A0);
    sub_1000113D0();
    v39 = v71;
    sub_100032430();
    memcpy(v83, v82, sizeof(v83));
    sub_1000114E0(v83, &qword_1000450B0);
    v40 = v67;
    if ((sub_100004D18() & 1) != 0 && (v41 = *(v17 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_asset)) != 0)
    {
      sub_100011C34(v39, v57, &qword_100045058, &qword_100034188);
      sub_100011314();
      v66 = v41;
      v42 = v59;
      sub_100031D00();
      sub_1000325F0();
      sub_100031E10();
      v43 = (v42 + *(sub_10000D4FC(&qword_100045078, &qword_100034190) + 36));
      v44 = v82[1];
      *v43 = v82[0];
      v43[1] = v44;
      v43[2] = v82[2];
      v45 = *(v40 + 56);
      KeyPath = swift_getKeyPath();
      v47 = (v42 + *(v69 + 36));
      *v47 = KeyPath;
      sub_10000D4FC(&qword_100044978, &qword_100033A38);
      swift_storeEnumTagMultiPayload();
      *(v47 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) = v45;
      sub_100011C34(v42, v70, &qword_100045048, &qword_100034178);
      swift_storeEnumTagMultiPayload();
      sub_100011154(&qword_100045068, &qword_100045048, &qword_100034178, sub_100011204);
      sub_100011154(&qword_100045098, &qword_100045038, &qword_100034168, sub_100011314);
      v48 = v72;
      sub_100032150();

      v49 = v42;
      v50 = &qword_100045048;
    }

    else
    {
      v51 = *(v40 + 56);
      v52 = swift_getKeyPath();
      v53 = v64;
      v54 = &v64[*(v61 + 36)];
      *v54 = v52;
      sub_10000D4FC(&qword_100044978, &qword_100033A38);
      swift_storeEnumTagMultiPayload();
      *(v54 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) = v51;
      sub_100011C34(v39, v53, &qword_100045058, &qword_100034188);
      sub_100011C34(v53, v70, &qword_100045038, &qword_100034168);
      swift_storeEnumTagMultiPayload();
      sub_100011154(&qword_100045068, &qword_100045048, &qword_100034178, sub_100011204);
      sub_100011154(&qword_100045098, &qword_100045038, &qword_100034168, sub_100011314);
      v48 = v72;
      sub_100032150();
      v49 = v53;
      v50 = &qword_100045038;
    }

    sub_1000114E0(v49, v50);
    sub_100011C34(v48, v78, &qword_100045050, &qword_100034180);
    swift_storeEnumTagMultiPayload();
    sub_100011070();
    v55 = sub_10000D57C(&qword_100044F30, &qword_100034088);
    v56 = sub_1000109FC();
    v80 = v55;
    v81 = v56;
    swift_getOpaqueTypeConformance2();
    sub_100032150();
    sub_10000EFC4(v75, v74, v73 & 1);

    sub_1000114E0(v48, &qword_100045050);
    return sub_1000114E0(v39, &qword_100045058);
  }

  else
  {
    v29 = v2;
    v30 = sub_100032480();
    v83[0] = swift_getKeyPath();
    v83[1] = v30;
    v31 = sub_10000D4FC(&qword_100044F30, &qword_100034088);
    v32 = sub_1000109FC();
    v33 = v75;
    sub_1000323A0();

    v34 = v76;
    (*(v76 + 16))(v78, v33, v29);
    swift_storeEnumTagMultiPayload();
    sub_100011070();
    v83[0] = v31;
    v83[1] = v32;
    swift_getOpaqueTypeConformance2();
    sub_100032150();
    return (*(v34 + 8))(v33, v29);
  }
}

uint64_t sub_100004D18()
{
  if (*(*(v0 + 48) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_useSpatialEffect) != 1)
  {
    return 0;
  }

  if (sub_100004DD0())
  {
    v1 = sub_100032A40();
    if (qword_100044630 != -1)
    {
      v3 = v1;
      swift_once();
      v1 = v3;
    }

    sub_100031D30(v1, &_mh_execute_header, qword_100048348, "Not using spatial photo because in stand-by mode", 48, 2, &_swiftEmptyArrayStorage);
    return 0;
  }

  return 1;
}

BOOL sub_100004DD0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 || (sub_100004014() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100003EC8();
  return v3 != 1.0 / sub_100003D7C();
}

uint64_t sub_100004E64@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100032000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D4FC(&qword_100044978, &qword_100033A38);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100011C34(v2, &v15 - v9, &qword_100044978, &qword_100033A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100032700();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_100032A30();
    v14 = sub_100032190();
    sub_100031D30(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100031FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100005068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v48 = sub_10000D4FC(&qword_100045178, &qword_100034238);
  __chkstk_darwin(v48);
  v4 = v38 - v3;
  v47 = sub_10000D4FC(&qword_100045180, &qword_100034240);
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = v38 - v5;
  v43 = sub_10000D4FC(&qword_100045188, &qword_100034248);
  __chkstk_darwin(v43);
  v45 = v38 - v6;
  v7 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  __chkstk_darwin(v7 - 8);
  v9 = v38 - v8;
  v44 = sub_10000D4FC(&qword_100045190, &qword_100034250);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v38 - v10;
  v11 = sub_10000D4FC(&qword_100045198, &qword_100034258);
  __chkstk_darwin(v11);
  v46 = v38 - v12;
  v13 = sub_100032700();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v38 - v18;
  sub_100004E64((v38 - v18));
  sub_1000326F0();
  v20 = sub_1000326E0();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (v20)
  {
    v38[0] = v4;
    v38[1] = v11;
    if (*(v2 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) == 1)
    {
      sub_100032720();
      v22 = sub_100032730();
      sub_10000D904(v9, 0, 1, v22);
      v23 = sub_10000D4FC(&qword_1000451A0, &qword_100034260);
      v24 = sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
      v25 = v39;
      sub_1000323B0();
      sub_1000114E0(v9, &qword_100044D88);
      v26 = v40;
      v27 = v44;
      (*(v40 + 16))(v45, v25, v44);
      swift_storeEnumTagMultiPayload();
      v51 = v23;
      v52 = v24;
      swift_getOpaqueTypeConformance2();
      sub_100011924();
      v28 = v46;
      sub_100032150();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v31 = sub_1000325B0();
      v32 = __chkstk_darwin(v31);
      __chkstk_darwin(v32);
      sub_10000D4FC(&qword_1000451C8, &qword_100034268);
      v33 = sub_10000D57C(&qword_1000451A0, &qword_100034260);
      v34 = sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
      v51 = v33;
      v52 = v34;
      swift_getOpaqueTypeConformance2();
      sub_100011A2C();
      v35 = v41;
      sub_1000325C0();
      v36 = v42;
      v37 = v47;
      (*(v42 + 16))(v45, v35, v47);
      swift_storeEnumTagMultiPayload();
      sub_100011924();
      v28 = v46;
      sub_100032150();
      (*(v36 + 8))(v35, v37);
    }

    sub_100011C34(v28, v38[0], &qword_100045198, &qword_100034258);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_1000451A0, &qword_100034260);
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100032150();
    return sub_1000114E0(v28, &qword_100045198);
  }

  else
  {
    v29 = sub_10000D4FC(&qword_1000451A0, &qword_100034260);
    (*(*(v29 - 8) + 16))(v4, v49, v29);
    swift_storeEnumTagMultiPayload();
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_100032150();
  }
}

uint64_t sub_100005880()
{
  v0 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  sub_100032710();
  v3 = sub_100032730();
  sub_10000D904(v2, 0, 1, v3);
  sub_10000D4FC(&qword_1000451A0, &qword_100034260);
  sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000323B0();
  return sub_1000114E0(v2, &qword_100044D88);
}

uint64_t sub_1000059A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  sub_100032720();
  v5 = sub_100032730();
  sub_10000D904(v4, 0, 1, v5);
  sub_10000D4FC(&qword_1000451A0, &qword_100034260);
  sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000323B0();
  sub_1000114E0(v4, &qword_100044D88);
  *(a1 + *(sub_10000D4FC(&qword_1000451D8, &qword_100034270) + 36)) = 0x3F847AE147AE147BLL;
  v6 = sub_1000325F0();
  v8 = v7;
  v9 = a1 + *(sub_10000D4FC(&qword_1000451C8, &qword_100034268) + 36);
  v15[1] = sub_100032490();
  sub_1000323A0();

  *(v9 + *(sub_10000D4FC(&qword_1000451F0, &qword_100034280) + 36)) = 0x3FD0000000000000;
  v10 = *(sub_10000D4FC(&qword_1000451F8, &qword_100034288) + 36);
  v11 = enum case for BlendMode.multiply(_:);
  v12 = sub_100032600();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  result = sub_10000D4FC(&qword_1000451E8, &qword_100034278);
  v14 = (v9 + *(result + 36));
  *v14 = v6;
  v14[1] = v8;
  return result;
}

void sub_100005C1C()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v5 = sub_100032270();
  sub_100011D60();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100011DAC();
  sub_100012088();
  v9 = sub_100032750();
  sub_100011D60();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100011DAC();
  v15 = v14 - v13;
  v2(0);
  sub_100012068();
  (*(v11 + 16))(v15, v16 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v9);
  v17 = (v7 + 104);
  v18 = (v7 + 8);
  if ((*(v11 + 88))(v15, v9) == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032210();
    (*v17)(v0, enum case for Font.Leading.tight(_:), v5);
    sub_100012028();
    sub_100032290();

    (*v18)(v0, v5);
  }

  else
  {
    sub_100032250();
    (*v17)(v0, enum case for Font.Leading.tight(_:), v5);
    sub_100032290();

    (*v18)(v0, v5);
    (*(v11 + 8))(v15, v9);
  }

  if (v4 <= 1u)
  {
    sub_100032230();
    sub_100032260();
  }

  sub_100011EF4();
}

uint64_t sub_100005E8C()
{
  sub_100031A80();
  sub_100011D60();
  __chkstk_darwin(v0);
  sub_100011DAC();
  type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  sub_100012068();
  if (*(v1 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
  {

    v2 = sub_100032900();

    sub_100031A70();
    isa = sub_100031A60().super.isa;
    v4 = sub_100011F7C();
    v5(v4);
    v6 = [v2 px_stringByDeletingCharactersInSet:isa];

    sub_100032910();
  }

  return sub_100011EDC();
}

uint64_t sub_100005FDC()
{
  type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  sub_100012068();
  if (!*(v0 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8))
  {
    return 0;
  }

  sub_10000EF70();
  return sub_100032B20();
}

uint64_t sub_100006054()
{
  sub_100005E8C();
  sub_10000EF70();
  v0 = sub_100032390();
  v2 = v1;
  v4 = v3;
  sub_100005E8C();
  sub_100005C1C();

  v5 = sub_100032360();
  v7 = v6;
  v9 = v8;

  sub_10000EFC4(v0, v2, v4 & 1);

  sub_1000324B0();
  v10 = sub_100032350();

  sub_10000EFC4(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_1000061A0()
{
  type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  sub_10000EF70();

  v0 = sub_100032390();
  v2 = v1;
  v4 = v3;

  sub_100005C1C();

  v5 = sub_100032360();
  v7 = v6;
  v9 = v8;

  sub_10000EFC4(v0, v2, v4 & 1);

  sub_1000324B0();
  v10 = sub_100032350();

  sub_10000EFC4(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_100006350@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_10000D4FC(&qword_100044B50, &qword_100033C88);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v26 = v1;
  v33 = sub_100005FDC();
  v34 = v6;
  sub_10000EF70();
  v7 = sub_100032390();
  v9 = v8;
  v11 = v10;
  sub_100005FDC();

  sub_1000322A0();
  sub_100032240();
  sub_100032260();

  v12 = sub_100032360();
  v14 = v13;
  v16 = v15;

  sub_10000EFC4(v7, v9, v11 & 1);

  sub_1000324B0();
  v17 = sub_100032350();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10000EFC4(v12, v14, v16 & 1);

  v33 = v17;
  v34 = v19;
  v35 = v21 & 1;
  v36 = v23;
  sub_1000325B0();
  sub_100032090();
  v30 = v26;
  sub_10000D4FC(&qword_100044B58, &qword_100033C90);
  v31 = &type metadata for Solarium;
  v32 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10000EBF8();
  v24 = v27;
  sub_100032470();
  (*(v28 + 8))(v5, v24);
  sub_10000EFC4(v17, v19, v21 & 1);
}

uint64_t sub_10000660C@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = sub_10000D4FC(&qword_100044B50, &qword_100033C88);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = v29 - v3;
  v5 = *(type metadata accessor for PhotosReliveWidgetPlaceholderContent(0) + 20);
  v29[0] = v1;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v34 = v7;
  v35 = v8;
  sub_10000EF70();

  v9 = sub_100032390();
  v11 = v10;
  v13 = v12;

  sub_1000322A0();
  sub_100032240();
  sub_100032260();

  v14 = sub_100032360();
  v16 = v15;
  v18 = v17;

  sub_10000EFC4(v9, v11, v13 & 1);

  sub_1000324B0();
  v19 = sub_100032350();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10000EFC4(v14, v16, v18 & 1);

  v34 = v19;
  v35 = v21;
  v36 = v23 & 1;
  v37 = v25;
  sub_1000325B0();
  v26 = sub_100032090();
  __chkstk_darwin(v26);
  sub_10000D4FC(&qword_100044B58, &qword_100033C90);
  v32 = &type metadata for Solarium;
  v33 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10000EBF8();
  v27 = v31;
  sub_100032470();
  (*(v30 + 8))(v4, v27);
  sub_10000EFC4(v19, v21, v23 & 1);
}

void sub_100006944(uint64_t a1)
{
  sub_100011F0C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  HIDWORD(v22) = v8;
  v10 = v9;
  v12 = v11;
  v23 = v13;
  sub_10000D4FC(&qword_100044BC8, &qword_100033CE8);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v14);
  sub_100011ECC();
  v15 = sub_10000D4FC(&qword_100044BD0, &qword_100033CF0);
  sub_100011D60();
  v17 = v16;
  sub_100011DBC();
  __chkstk_darwin(v18);
  v20 = &v22 - v19;
  if (*(v5 + *(v3(0) + 24)))
  {
    *v1 = v12;
    *(v1 + 8) = v10;
    v21 = BYTE4(v22) & 1;
    *(v1 + 16) = BYTE4(v22) & 1;
    *(v1 + 24) = v7;
    sub_100012008();
    swift_storeEnumTagMultiPayload();
    sub_10000F058(v12, v10, v21);

    v24 = &type metadata for Text;
    v25 = &protocol witness table for Text;
    sub_100011E80();
    sub_100011F88();
    sub_100032150();
  }

  else
  {
    v24 = v12;
    v25 = v10;
    v26 = BYTE4(v22) & 1;
    v27 = v7;
    sub_1000323A0();
    (*(v17 + 16))(v1, v20, v15);
    sub_100012008();
    swift_storeEnumTagMultiPayload();
    v24 = &type metadata for Text;
    v25 = &protocol witness table for Text;
    sub_100011E80();
    sub_100011F88();
    sub_100032150();
    (*(v17 + 8))(v20, v15);
  }

  sub_100011EF4();
}

void sub_100006B50(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_10000D4FC(&qword_100044CB8, &qword_100033DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v79[-v8];
  v93 = sub_100032310();
  v10 = *(v93 - 8);
  __chkstk_darwin(v93);
  v12 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000D4FC(&qword_100044CC0, &qword_100033DA8);
  __chkstk_darwin(v13 - 8);
  v94 = &v79[-v14];
  v15 = sub_100031CF0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v3 + *(type metadata accessor for PhotosReliveWidgetMemoryContent(0) + 20));
  v20 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v21 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1);
  v22 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 8);
  v23 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 16);
  v24 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24);
  LODWORD(v25) = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 25);
  v26 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 32);
  v27 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
  if (!*(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1))
  {
    goto LABEL_23;
  }

  if (v21 != 1)
  {
    if (!*(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
    {
      LOBYTE(v21) = 2;
      goto LABEL_23;
    }

    LODWORD(v88) = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
    v89 = v20;
    v90 = v24;
    v91 = v26;
    v92 = a1;
    v39 = objc_opt_self();

    v40 = [v39 defaultSpecs];
    v41 = sub_100032900();

    [v40 maximumWidthForTitle:v41 containerSize:{a2, a3}];
    v43 = v42;

    if (v43 <= 0.0 || (LODWORD(v87) = v25, v44 = sub_100006054(), v46 = v45, v48 = v47, v84 = sub_1000322D0(), v85 = v40, sub_10000D904(v94, 1, 1, v84), v83 = sub_100032370(), sub_10000D904(v9, 1, 1, v83), v40 = v85, sub_100032300(), v86 = sub_1000322F0(), sub_10000EFC4(v44, v46, v48 & 1), , v51 = *(v10 + 8), v49 = v10 + 8, v50 = v51, v51(v12, v93), v52 = [v40 maximumNumberOfLinesForTitle], (v52 & 0x8000000000000000) != 0))
    {

      v26 = 0;
      LOBYTE(v25) = 0;
      v22 = 0.0;
      LOBYTE(v21) = 0;
      LOBYTE(v24) = 2;
      LOBYTE(v27) = 1;
      LOBYTE(v23) = 1;
      LOBYTE(v20) = 2;
      a1 = v92;
      goto LABEL_23;
    }

    a1 = v92;
    if (v52 < v86)
    {

      v26 = 0;
      LOBYTE(v25) = 0;
      v22 = 0.0;
      LOBYTE(v21) = 0;
      LOBYTE(v24) = 2;
      LOBYTE(v27) = 1;
      LOBYTE(v23) = 1;
      LOBYTE(v20) = 2;
      goto LABEL_23;
    }

    if (v87)
    {
      if (v87 != 1)
      {
        v86 = *&v43;
        v54 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8);
        v82 = v49;
        if (v54)
        {

          v55 = sub_100032900();
        }

        else
        {
          v55 = 0;
        }

        [v85 maximumWidthForSubtitle:v55 titleWidth:v43];
        v57 = v56;

        v91 = v57;
        v95 = sub_100005FDC();
        v96 = v58;
        sub_10000EF70();
        v87 = sub_100032390();
        v88 = v59;
        v61 = v60;
        v63 = v62;
        sub_100005FDC();

        sub_1000322A0();
        v64 = sub_100032360();
        v66 = v65;
        v80 = v67;

        sub_10000EFC4(v87, v61, v63 & 1);

        sub_1000324B0();
        v68 = v80;
        v81 = sub_100032350();
        v87 = v70;
        v88 = v69;
        v72 = v71;

        sub_10000EFC4(v64, v66, v68 & 1);

        sub_10000D904(v94, 1, 1, v84);
        sub_10000D904(v9, 1, 1, v83);
        sub_100032300();
        v73 = v81;
        v74 = v88;
        v75 = sub_1000322F0();
        sub_10000EFC4(v73, v74, v72 & 1);

        v50(v12, v93);
        v76 = v85;
        v77 = [v85 maximumNumberOfLinesForSubtitle];

        v26 = v91;
        a1 = v92;
        LOBYTE(v27) = 0;
        LOBYTE(v23) = 0;
        v78 = v77 < v75 || v77 < 0;
        LOBYTE(v21) = 2;
        if (v78)
        {
          LOBYTE(v25) = 0;
        }

        else
        {
          LOBYTE(v25) = 2;
        }

        LOBYTE(v20) = v89;
        LOBYTE(v24) = v90;
        v22 = *&v86;
        goto LABEL_23;
      }

      v22 = v43;
      LOBYTE(v23) = 0;
      LOBYTE(v21) = 2;
      LOBYTE(v25) = 1;
    }

    else
    {

      v22 = v43;
      LOBYTE(v25) = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v21) = 2;
    }

    LOBYTE(v20) = v89;
    LOBYTE(v24) = v90;
    v26 = v91;
    LOBYTE(v27) = v88;
    goto LABEL_23;
  }

  v89 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v90 = v24;
  v91 = v26;
  v86 = *&v22;
  LODWORD(v88) = v27;
  LODWORD(v93) = v23;
  sub_100031CE0();
  v28 = sub_100006054();
  v30 = v29;
  v32 = v31;
  v92 = a1;
  LODWORD(v87) = v25;
  v25 = v94;
  sub_1000322C0();
  v33 = sub_1000322D0();
  sub_10000D904(v25, 0, 1, v33);
  v34 = sub_1000322E0();
  sub_10000EFC4(v28, v30, v32 & 1);
  a1 = v92;

  v35 = v25;
  LOBYTE(v25) = v87;
  sub_1000114E0(v35, &qword_100044CC0);
  v36 = sub_100031CD0();
  v38 = v36 < 0 || v36 < v34;
  (*(v16 + 8))(v18, v15);
  v22 = *&v86;
  LOBYTE(v20) = v89;
  LOBYTE(v24) = v90;
  v26 = v91;
  if (v38)
  {
    v26 = 0;
  }

  LOBYTE(v27) = v38 | v88;
  if (v38)
  {
    LOBYTE(v25) = 0;
    LOBYTE(v24) = 2;
    v22 = 0.0;
  }

  LOBYTE(v23) = v38 | v93;
  LOBYTE(v21) = !v38;
  if (v38)
  {
    LOBYTE(v20) = 2;
  }

LABEL_23:
  LOBYTE(v95) = v23 & 1;
  v53 = v27 & 1;
  v97 = v53;
  *a1 = v20;
  *(a1 + 1) = v21;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v24;
  *(a1 + 25) = v25;
  *(a1 + 32) = v26;
  *(a1 + 40) = v53;
}

void sub_100007360(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_10000D4FC(&qword_100044CB8, &qword_100033DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v86[-v8];
  v101 = sub_100032310();
  v10 = *(v101 - 8);
  __chkstk_darwin(v101);
  v12 = &v86[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000D4FC(&qword_100044CC0, &qword_100033DA8);
  __chkstk_darwin(v13 - 8);
  v102 = &v86[-v14];
  v15 = sub_100031CF0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v86[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v3 + *(type metadata accessor for PhotosReliveWidgetPlaceholderContent(0) + 20));
  v20 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v21 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1);
  v22 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 8);
  v23 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 16);
  v24 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24);
  LODWORD(v25) = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 25);
  v26 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 32);
  v27 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
  if (!*(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1))
  {
    goto LABEL_25;
  }

  if (v21 != 1)
  {
    if (!*(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
    {
      LOBYTE(v21) = 2;
      goto LABEL_25;
    }

    LODWORD(v96) = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
    v97 = v20;
    v98 = v24;
    v99 = v26;
    v100 = a1;
    v39 = objc_opt_self();

    v40 = [v39 defaultSpecs];
    v41 = sub_100032900();

    [v40 maximumWidthForTitle:v41 containerSize:{a2, a3}];
    v43 = v42;

    if (v43 <= 0.0)
    {
    }

    else
    {
      LODWORD(v95) = v25;
      v44 = sub_1000061A0();
      v46 = v45;
      v93 = v40;
      v48 = v47;
      v92 = sub_1000322D0();
      sub_10000D904(v102, 1, 1, v92);
      v91 = sub_100032370();
      sub_10000D904(v9, 1, 1, v91);
      sub_100032300();
      v49 = sub_1000322F0();
      v50 = v48 & 1;
      v51 = v93;
      sub_10000EFC4(v44, v46, v50);

      v54 = *(v10 + 8);
      v52 = v10 + 8;
      v53 = v54;
      v54(v12, v101);
      v55 = [v51 maximumNumberOfLinesForTitle];
      if ((v55 & 0x8000000000000000) == 0)
      {
        a1 = v100;
        if (v55 < v49)
        {

          v26 = 0;
          LOBYTE(v25) = 0;
          v22 = 0.0;
          LOBYTE(v21) = 0;
          LOBYTE(v24) = 2;
          LOBYTE(v27) = 1;
          LOBYTE(v23) = 1;
          LOBYTE(v20) = 2;
          goto LABEL_25;
        }

        if (v95)
        {
          if (v95 != 1)
          {
            v96 = v52;
            v94 = v43;
            v57 = (v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
            if (*(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8))
            {

              v51 = v93;
              v58 = sub_100032900();
            }

            else
            {
              v58 = 0;
            }

            [v51 maximumWidthForSubtitle:v58 titleWidth:v43];
            v60 = v59;

            v61 = v57[1];
            v99 = v60;
            if (v61)
            {
              v62 = *v57;
              v63 = v61;
            }

            else
            {
              v62 = 0;
              v63 = 0xE000000000000000;
            }

            v103 = v62;
            v104 = v63;
            sub_10000EF70();

            v64 = sub_100032390();
            v66 = v65;
            v68 = v67;
            v95 = v69;

            sub_1000322A0();
            v70 = sub_100032360();
            v72 = v71;
            v87 = v73;
            v88 = v74;

            sub_10000EFC4(v64, v66, v68 & 1);

            sub_1000324B0();
            v75 = v87;
            v89 = sub_100032350();
            v95 = v76;
            v78 = v77;
            v90 = v79;

            sub_10000EFC4(v70, v72, v75 & 1);

            sub_10000D904(v102, 1, 1, v92);
            sub_10000D904(v9, 1, 1, v91);
            sub_100032300();
            v80 = v89;
            v81 = v95;
            v82 = sub_1000322F0();
            sub_10000EFC4(v80, v81, v78 & 1);

            v53(v12, v101);
            v83 = v93;
            v84 = [v93 maximumNumberOfLinesForSubtitle];

            LOBYTE(v27) = 0;
            LOBYTE(v23) = 0;
            v85 = v84 < v82 || v84 < 0;
            LOBYTE(v21) = 2;
            if (v85)
            {
              LOBYTE(v25) = 0;
            }

            else
            {
              LOBYTE(v25) = 2;
            }

            v26 = v99;
            a1 = v100;
            LOBYTE(v20) = v97;
            LOBYTE(v24) = v98;
            v22 = v94;
            goto LABEL_25;
          }

          v22 = v43;
          LOBYTE(v23) = 0;
          LOBYTE(v21) = 2;
          LOBYTE(v25) = 1;
        }

        else
        {

          v22 = v43;
          LOBYTE(v25) = 0;
          LOBYTE(v23) = 0;
          LOBYTE(v21) = 2;
        }

        LOBYTE(v20) = v97;
        LOBYTE(v24) = v98;
        v26 = v99;
        LOBYTE(v27) = v96;
        goto LABEL_25;
      }
    }

    v26 = 0;
    LOBYTE(v25) = 0;
    v22 = 0.0;
    LOBYTE(v21) = 0;
    LOBYTE(v24) = 2;
    LOBYTE(v27) = 1;
    LOBYTE(v23) = 1;
    LOBYTE(v20) = 2;
    a1 = v100;
    goto LABEL_25;
  }

  v97 = *(v19 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v98 = v24;
  v99 = v26;
  v94 = v22;
  LODWORD(v96) = v27;
  LODWORD(v101) = v23;
  sub_100031CE0();
  v28 = sub_1000061A0();
  v30 = v29;
  v32 = v31;
  v100 = a1;
  LODWORD(v95) = v25;
  v25 = v102;
  sub_1000322C0();
  v33 = sub_1000322D0();
  sub_10000D904(v25, 0, 1, v33);
  v34 = sub_1000322E0();
  sub_10000EFC4(v28, v30, v32 & 1);
  a1 = v100;

  v35 = v25;
  LOBYTE(v25) = v95;
  sub_1000114E0(v35, &qword_100044CC0);
  v36 = sub_100031CD0();
  v38 = v36 < 0 || v36 < v34;
  (*(v16 + 8))(v18, v15);
  v22 = v94;
  LOBYTE(v20) = v97;
  LOBYTE(v24) = v98;
  v26 = v99;
  if (v38)
  {
    v26 = 0;
  }

  LOBYTE(v27) = v38 | v96;
  if (v38)
  {
    LOBYTE(v25) = 0;
    LOBYTE(v24) = 2;
    v22 = 0.0;
  }

  LOBYTE(v23) = v38 | v101;
  LOBYTE(v21) = !v38;
  if (v38)
  {
    LOBYTE(v20) = 2;
  }

LABEL_25:
  LOBYTE(v103) = v23 & 1;
  v56 = v27 & 1;
  v105 = v56;
  *a1 = v20;
  *(a1 + 1) = v21;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v24;
  *(a1 + 25) = v25;
  *(a1 + 32) = v26;
  *(a1 + 40) = v56;
}

void sub_100007BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011F0C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000D4FC(&qword_100044988, &qword_100033A48);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v29);
  sub_100011ECC();
  sub_10000D4FC(&qword_100044990, &qword_100033A50);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v30);
  v32 = (&a9 - v31);
  *v32 = sub_1000325F0();
  v32[1] = v33;
  sub_10000D4FC(&qword_100044998, &qword_100033A58);
  v24(v26, v28);
  v34 = enum case for DynamicTypeSize.xxLarge(_:);
  v35 = sub_100031E70();
  sub_100011D74();
  (*(v36 + 104))(v20, v34, v35);
  sub_100011E08();
  sub_10000DD28(v37, v38, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_100032890())
  {
    sub_100011F70();
    sub_100011BE0(v39, v40, v41, v42);
    sub_100011D84();
    sub_100011BE0(v43, &qword_100044988, &qword_100033A48, v44);
    sub_100032420();
    sub_1000114E0(v20, &qword_100044988);
    sub_100011F70();
    sub_1000114E0(v45, v46);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100007DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v104 = a3;
  v4 = sub_10000D4FC(&qword_1000449B8, &qword_100033A60);
  __chkstk_darwin(v4 - 8);
  v100 = &v87[-v5];
  v101 = sub_10000D4FC(&qword_1000449C0, &qword_100033A68);
  __chkstk_darwin(v101);
  v99 = &v87[-v6];
  v7 = sub_10000D4FC(&qword_1000449C8, &qword_100033A70);
  v8 = __chkstk_darwin(v7 - 8);
  v103 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v102 = &v87[-v10];
  v91 = sub_10000D4FC(&qword_1000449D0, &qword_100033A78);
  v11 = __chkstk_darwin(v91);
  v94 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v93 = &v87[-v13];
  v96 = sub_10000D4FC(&qword_1000449D8, &qword_100033A80);
  __chkstk_darwin(v96);
  v92 = &v87[-v14];
  v15 = sub_10000D4FC(&qword_1000449E0, &qword_100033A88);
  v16 = __chkstk_darwin(v15 - 8);
  v98 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v106 = &v87[-v18];
  v19 = sub_10000D4FC(&qword_1000449E8, &qword_100033A90);
  v20 = __chkstk_darwin(v19);
  v22 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v87[-v23];
  v25 = sub_10000D4FC(&qword_1000449F0, &qword_100033A98);
  v26 = __chkstk_darwin(v25 - 8);
  v97 = &v87[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v105 = &v87[-v28];
  v29 = sub_100032750();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = 1;
  sub_1000093D8(1, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v35 = v34;
  sub_1000093D8(0, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v37 = v36;
  v38 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v30 + 16))(v32, *(a1 + *(v38 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v29);
  v39 = 12.0;
  if ((*(v30 + 88))(v32, v29) != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v30 + 8))(v32, v29);
    v39 = 18.0;
  }

  sub_100031E20();
  v41 = v40 - (v35 + v37);
  sub_100031E20();
  sub_100006B50(&v107, v41, v42 - (v39 + v39));
  v43 = v107;
  v89 = v110;
  v95 = v111;
  v90 = v112;
  v44 = sub_100025AAC(v107, v108, v109, v110, v111, v112);
  v45 = sub_100032070();
  v46 = v105;
  *v105 = v45;
  v46[1] = 0;
  *(v46 + 16) = 1;
  v47 = sub_100009DF4(v43);
  v49 = v48;
  sub_1000320D0();
  v50 = sub_1000320A0();
  v51 = &v24[v19[11]];
  v52 = &v24[v19[12]];
  v53 = &v24[v19[13]];
  *v51 = v35;
  *(v51 + 8) = 0;
  *v52 = v37;
  *(v52 + 8) = 0;
  *v53 = v39;
  *(v53 + 8) = 0;
  *&v24[v19[9]] = v47;
  *&v24[v19[10]] = v49;
  sub_100009E84(v49);
  sub_1000320C0();
  v54 = sub_1000320A0();
  v55 = v46 + *(sub_10000D4FC(&qword_1000449F8, &qword_100033AA0) + 44);
  sub_100011C34(v24, v22, &qword_1000449E8, &qword_100033A90);
  *v55 = 0;
  v55[8] = 0;
  v55[9] = (v50 & 1) == 0;
  v56 = sub_10000D4FC(&qword_100044A00, &qword_100033AA8);
  sub_100011C34(v22, &v55[*(v56 + 48)], &qword_1000449E8, &qword_100033A90);
  v57 = &v55[*(v56 + 64)];
  *v57 = 0;
  v57[8] = 0;
  v57[9] = (v54 & 1) == 0;
  sub_1000114E0(v24, &qword_1000449E8);
  sub_1000114E0(v22, &qword_1000449E8);
  if (!v44)
  {
    v58 = sub_100032070();
    v59 = v92;
    *v92 = v58;
    *(v59 + 8) = 0;
    *(v59 + 16) = 1;
    sub_100009DF4(v89);
    v61 = v60;
    sub_1000320D0();
    v88 = sub_1000320A0();
    v62 = sub_1000320B0();
    v63 = sub_100032060();
    v64 = v91;
    v65 = v93;
    v66 = &v93[v91[11]];
    v67 = &v93[v91[12]];
    v68 = &v93[v91[13]];
    *v66 = v35;
    *(v66 + 8) = 0;
    *v67 = v37;
    *(v67 + 8) = 0;
    *v68 = v39;
    *(v68 + 8) = 0;
    *(v65 + v64[9]) = v62;
    *(v65 + v64[10]) = v63;
    sub_10000B534(v61);
    sub_1000320C0();
    v69 = sub_1000320A0();
    v70 = v59 + *(sub_10000D4FC(&qword_100044A08, &qword_100033AB0) + 44);
    v71 = v94;
    sub_100011C34(v65, v94, &qword_1000449D0, &qword_100033A78);
    *v70 = 0;
    *(v70 + 8) = 0;
    *(v70 + 9) = (v88 & 1) == 0;
    v72 = sub_10000D4FC(&qword_100044A10, &qword_100033AB8);
    sub_100011C34(v71, v70 + *(v72 + 48), &qword_1000449D0, &qword_100033A78);
    v73 = v70 + *(v72 + 64);
    *v73 = 0;
    *(v73 + 8) = 0;
    v74 = v106;
    *(v73 + 9) = (v69 & 1) == 0;
    sub_1000114E0(v65, &qword_1000449D0);
    sub_1000114E0(v71, &qword_1000449D0);
    sub_10000E2CC(v59, v74, &qword_1000449D8, &qword_100033A80);
    v33 = 0;
  }

  sub_10000D904(v106, v33, 1, v96);
  v75 = v100;
  sub_1000096FC(v100);
  if (sub_100009D98())
  {
    sub_1000325D0();
  }

  else
  {
    sub_1000325E0();
  }

  sub_100031EB0(__src);
  v76 = v99;
  sub_10000E2CC(v75, v99, &qword_1000449B8, &qword_100033A60);
  v77 = v101;
  memcpy(&v76[*(v101 + 36)], __src, 0x70uLL);
  v78 = v102;
  sub_10000E2CC(v76, v102, &qword_1000449C0, &qword_100033A68);
  sub_10000D904(v78, 0, 1, v77);
  v79 = v105;
  v80 = v97;
  sub_100011C34(v105, v97, &qword_1000449F0, &qword_100033A98);
  v81 = v106;
  v82 = v98;
  sub_100011C34(v106, v98, &qword_1000449E0, &qword_100033A88);
  v83 = v103;
  sub_100011C34(v78, v103, &qword_1000449C8, &qword_100033A70);
  v84 = v104;
  sub_100011C34(v80, v104, &qword_1000449F0, &qword_100033A98);
  v85 = sub_10000D4FC(&qword_100044A18, &qword_100033AC0);
  sub_100011C34(v82, v84 + *(v85 + 48), &qword_1000449E0, &qword_100033A88);
  sub_100011C34(v83, v84 + *(v85 + 64), &qword_1000449C8, &qword_100033A70);
  sub_1000114E0(v78, &qword_1000449C8);
  sub_1000114E0(v81, &qword_1000449E0);
  sub_1000114E0(v79, &qword_1000449F0);
  sub_1000114E0(v83, &qword_1000449C8);
  sub_1000114E0(v82, &qword_1000449E0);
  return sub_1000114E0(v80, &qword_1000449F0);
}

uint64_t sub_1000089C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v92 = a3;
  v4 = sub_10000D4FC(&qword_1000449C8, &qword_100033A70);
  v5 = __chkstk_darwin(v4 - 8);
  v93 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = v82 - v7;
  v83 = sub_10000D4FC(&qword_1000449D0, &qword_100033A78);
  v8 = __chkstk_darwin(v83);
  v86 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = v82 - v10;
  v88 = sub_10000D4FC(&qword_1000449D8, &qword_100033A80);
  __chkstk_darwin(v88);
  v84 = (v82 - v11);
  v12 = sub_10000D4FC(&qword_1000449E0, &qword_100033A88);
  v13 = __chkstk_darwin(v12 - 8);
  v90 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = v82 - v15;
  v16 = sub_10000D4FC(&qword_1000449E8, &qword_100033A90);
  v17 = __chkstk_darwin(v16);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v82 - v20;
  v22 = sub_10000D4FC(&qword_1000449F0, &qword_100033A98);
  v23 = __chkstk_darwin(v22 - 8);
  v89 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v95 = (v82 - v25);
  v26 = sub_100032750();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 1;
  sub_1000093D8(1, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v32 = v31;
  sub_1000093D8(0, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v34 = v33;
  v35 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  (*(v27 + 16))(v29, *(a1 + *(v35 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v26);
  v36 = 12.0;
  if ((*(v27 + 88))(v29, v26) != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v27 + 8))(v29, v26);
    v36 = 18.0;
  }

  sub_100031E20();
  v38 = v37 - (v32 + v34);
  sub_100031E20();
  sub_100007360(&v96, v38, v39 - (v36 + v36));
  v40 = v96;
  v82[0] = v99;
  v87 = v100;
  v82[1] = v101;
  v41 = sub_100025AAC(v96, v97, v98, v99, v100, v101);
  v42 = sub_100032070();
  v43 = v95;
  *v95 = v42;
  v43[1] = 0;
  *(v43 + 16) = 1;
  v44 = sub_100009DF4(v40);
  v46 = v45;
  sub_1000320D0();
  v47 = sub_1000320A0();
  v48 = &v21[v16[11]];
  v49 = &v21[v16[12]];
  v50 = &v21[v16[13]];
  *v48 = v32;
  v48[8] = 0;
  *v49 = v34;
  v49[8] = 0;
  *v50 = v36;
  v50[8] = 0;
  *&v21[v16[9]] = v44;
  *&v21[v16[10]] = v46;
  sub_100009E84(v46);
  sub_1000320C0();
  v51 = sub_1000320A0();
  v52 = v43 + *(sub_10000D4FC(&qword_1000449F8, &qword_100033AA0) + 44);
  sub_100011C34(v21, v19, &qword_1000449E8, &qword_100033A90);
  *v52 = 0;
  v52[8] = 0;
  v52[9] = (v47 & 1) == 0;
  v53 = sub_10000D4FC(&qword_100044A00, &qword_100033AA8);
  sub_100011C34(v19, &v52[*(v53 + 48)], &qword_1000449E8, &qword_100033A90);
  v54 = &v52[*(v53 + 64)];
  *v54 = 0;
  v54[8] = 0;
  v54[9] = (v51 & 1) == 0;
  sub_1000114E0(v21, &qword_1000449E8);
  sub_1000114E0(v19, &qword_1000449E8);
  if (!v41)
  {
    v55 = sub_100032070();
    v56 = v84;
    *v84 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 1;
    sub_100009DF4(v82[0]);
    v58 = v57;
    sub_1000320D0();
    v59 = sub_1000320A0();
    v60 = sub_1000320B0();
    v61 = sub_100032060();
    v62 = v83;
    v63 = v85;
    v64 = &v85[v83[11]];
    v65 = &v85[v83[12]];
    v66 = &v85[v83[13]];
    *v64 = v32;
    v64[8] = 0;
    *v65 = v34;
    v65[8] = 0;
    *v66 = v36;
    v66[8] = 0;
    *(v63 + v62[9]) = v60;
    *(v63 + v62[10]) = v61;
    sub_10000B534(v58);
    sub_1000320C0();
    v67 = sub_1000320A0();
    v68 = v56 + *(sub_10000D4FC(&qword_100044A08, &qword_100033AB0) + 44);
    v69 = v86;
    sub_100011C34(v63, v86, &qword_1000449D0, &qword_100033A78);
    *v68 = 0;
    *(v68 + 8) = 0;
    *(v68 + 9) = (v59 & 1) == 0;
    v70 = sub_10000D4FC(&qword_100044A10, &qword_100033AB8);
    sub_100011C34(v69, v68 + *(v70 + 48), &qword_1000449D0, &qword_100033A78);
    v71 = v68 + *(v70 + 64);
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 9) = (v67 & 1) == 0;
    sub_1000114E0(v63, &qword_1000449D0);
    sub_1000114E0(v69, &qword_1000449D0);
    sub_10000E2CC(v56, v94, &qword_1000449D8, &qword_100033A80);
    v30 = 0;
  }

  v72 = v94;
  sub_10000D904(v94, v30, 1, v88);
  v73 = sub_10000D4FC(&qword_1000449C0, &qword_100033A68);
  v74 = v91;
  sub_10000D904(v91, 1, 1, v73);
  v75 = v95;
  v76 = v89;
  sub_100011C34(v95, v89, &qword_1000449F0, &qword_100033A98);
  v77 = v90;
  sub_100011C34(v72, v90, &qword_1000449E0, &qword_100033A88);
  v78 = v93;
  sub_100011C34(v74, v93, &qword_1000449C8, &qword_100033A70);
  v79 = v92;
  sub_100011C34(v76, v92, &qword_1000449F0, &qword_100033A98);
  v80 = sub_10000D4FC(&qword_100044A18, &qword_100033AC0);
  sub_100011C34(v77, v79 + *(v80 + 48), &qword_1000449E0, &qword_100033A88);
  sub_100011C34(v78, v79 + *(v80 + 64), &qword_1000449C8, &qword_100033A70);
  sub_1000114E0(v74, &qword_1000449C8);
  sub_1000114E0(v72, &qword_1000449E0);
  sub_1000114E0(v75, &qword_1000449F0);
  sub_1000114E0(v78, &qword_1000449C8);
  sub_1000114E0(v77, &qword_1000449E0);
  return sub_1000114E0(v76, &qword_1000449F0);
}

uint64_t sub_1000093D8(char a1, uint64_t (*a2)(void))
{
  v5 = sub_100032750();
  sub_100011D60();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100011D9C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v36 = &v35 - v13;
  sub_100011FAC();
  v15 = __chkstk_darwin(v14);
  v17 = &v35 - v16;
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = *(v2 + *(a2(0) + 20));
  if ((*(v20 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout) | 2) == 3 || (v30 = *(v20 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24), v30 == 3))
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v30 != 1) == (a1 & 1))
  {
LABEL_12:
    (*(v7 + 16))(v11, v20 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v5);
    v31 = sub_100011F7C();
    result = v32(v31);
    if (result != enum case for WidgetFamily.systemSmall(_:))
    {
      v33 = sub_100011F7C();
      return v34(v33);
    }

    return result;
  }

  v21 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v35 = *(v7 + 16);
  v35(v19, v20 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v5);
  v22 = *(v7 + 88);
  v23 = v22(v19, v5);
  v24 = enum case for WidgetFamily.systemSmall(_:);
  if (v23 != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v7 + 8))(v19, v5);
  }

  v25 = v35;
  v35(v17, v20 + v21, v5);
  if (v22(v17, v5) != v24)
  {
    (*(v7 + 8))(v17, v5);
  }

  v25(v36, v20 + v21, v5);
  v26 = sub_100011F64();
  result = (v22)(v26);
  if (result != v24)
  {
    v28 = sub_100011F64();
    return v29(v28);
  }

  return result;
}

uint64_t sub_1000096FC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_10000D4FC(&qword_100044A20, &qword_100033AC8);
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v52 - v3;
  v4 = sub_100031B90();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v52 - v7;
  v8 = sub_100032750();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = *(type metadata accessor for PhotosReliveWidgetMemoryContent(0) + 20);
  v56 = v1;
  v18 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v19 = *(v9 + 16);
  v54 = *(v1 + v17);
  v19(v16, v54 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v8);
  v20 = *(v9 + 88);
  v21 = v20(v16, v8);
  v22 = enum case for WidgetFamily.systemSmall(_:);
  v23 = 28.0;
  if (v21 != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v9 + 8))(v16, v8);
    v23 = 44.0;
  }

  if (44.0 - v23 <= 0.0)
  {
    v24 = v54;
    v27 = v54 + v18;
    v28 = v53;
    v19(v53, v27, v8);
    v29 = v20(v28, v8);
    v25 = v60;
    v26 = v58;
    if (v29 != v22)
    {
      (*(v9 + 8))(v28, v8);
    }
  }

  else
  {
    v24 = v54;
    v19(v14, v54 + v18, v8);
    if (v20(v14, v8) != v22)
    {
      (*(v9 + 8))(v14, v8, 14.0);
    }

    v25 = v60;
    v26 = v58;
  }

  v30 = *(v26 + 16);
  v31 = v55;
  v32 = v59;
  v30(v55, v24 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination, v59);
  sub_10000D4FC(&qword_100044A28, &qword_100033AD0);
  sub_100031AA0();
  *(swift_allocObject() + 16) = xmmword_1000334C0;
  sub_100031A90();
  v33 = v57;
  sub_100031B80();

  v34 = *(v26 + 8);
  v34(v31, v32);
  v35 = (v30)(v31, v33, v32);
  __chkstk_darwin(v35);
  *(&v52 - 4) = v56;
  *(&v52 - 3) = v23;
  *(&v52 - 2) = 0x4046000000000000;
  sub_10000D4FC(&qword_100044A30, &qword_100033AD8);
  sub_10000E324();
  sub_1000322B0();
  sub_10000D4FC(&qword_100044AD0, &qword_100033B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000334B0;
  if (sub_100009D98())
  {
    v37 = sub_1000321E0();
  }

  else
  {
    v37 = sub_100032200();
  }

  v38 = v37;
  *(inited + 32) = v37;
  v39 = sub_1000321D0();
  *(inited + 33) = v39;
  v40 = sub_1000321F0();
  sub_1000321F0();
  if (sub_1000321F0() != v38)
  {
    v40 = sub_1000321F0();
  }

  sub_1000321F0();
  if (sub_1000321F0() != v39)
  {
    v40 = sub_1000321F0();
  }

  sub_100031D90();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v34(v33, v32);
  v49 = v63;
  (*(v61 + 32))(v63, v25, v62);
  result = sub_10000D4FC(&qword_1000449B8, &qword_100033A60);
  v51 = v49 + *(result + 36);
  *v51 = v40;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_100009DF4(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = sub_1000320D0();
      goto LABEL_8;
    case 2:
      v2 = sub_1000320C0();
      goto LABEL_6;
    case 3:
      v2 = sub_1000320D0();
      goto LABEL_6;
    case 4:
      v2 = sub_1000320B0();
LABEL_6:
      v3 = v2;
      sub_100032060();
      break;
    default:
      v1 = sub_1000320C0();
LABEL_8:
      v3 = v1;
      sub_100032050();
      break;
  }

  return v3;
}

void sub_100009E84(uint64_t a1)
{
  sub_100011F0C();
  v178 = v1;
  v157 = v2;
  KeyPath = v3;
  v172 = v4;
  v173 = v5;
  v193 = v7;
  v194 = v6;
  v9 = v8;
  v192 = v10;
  sub_100032030();
  sub_100011D60();
  v161 = v12;
  v162 = v11;
  __chkstk_darwin(v11);
  sub_100011DAC();
  v158 = v14 - v13;
  v167 = sub_10000D4FC(&qword_100044BD8, &qword_100033CF8);
  sub_100011D60();
  v165 = v15;
  sub_100011DBC();
  __chkstk_darwin(v16);
  sub_100011DFC();
  v176 = v17;
  v191 = sub_10000D4FC(&qword_100044BE0, &qword_100033D00);
  sub_100011D74();
  __chkstk_darwin(v18);
  sub_100011D9C();
  v163 = v19 - v20;
  sub_100011FAC();
  __chkstk_darwin(v21);
  sub_1000120A0();
  v168 = v22;
  v183 = sub_10000D4FC(&qword_100044BE8, &qword_100033D08);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v23);
  sub_100011DFC();
  v171 = v24;
  v159 = sub_10000D4FC(&qword_100044AF0, &qword_100033BD8);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v25);
  sub_100011DFC();
  v160 = v26;
  sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
  sub_100011D60();
  v169 = v28;
  v170 = v27;
  sub_100011DBC();
  __chkstk_darwin(v29);
  sub_100011DFC();
  v177 = v30;
  v174 = sub_1000322D0();
  sub_100011D60();
  v156 = v31;
  __chkstk_darwin(v32);
  sub_100011DAC();
  v35 = v34 - v33;
  v166 = sub_10000D4FC(&qword_100044BF8, &qword_100033D18);
  sub_100011D60();
  v164 = v36;
  sub_100011DBC();
  __chkstk_darwin(v37);
  sub_100011DFC();
  v175 = v38;
  v187 = sub_10000D4FC(&qword_100044C00, &qword_100033D20);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v39);
  sub_100011DFC();
  v190 = v40;
  v179 = sub_10000D4FC(&qword_100044C08, &qword_100033D28);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v41);
  sub_100011DFC();
  v181 = v42;
  v186 = sub_10000D4FC(&qword_100044C10, &qword_100033D30);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v43);
  sub_100011DFC();
  v182 = v44;
  v180 = sub_10000D4FC(&qword_100044C18, &qword_100033D38);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v45);
  v47 = &v156 - v46;
  v48 = sub_10000D4FC(&qword_100044B20, &qword_100033C08);
  sub_100011D74();
  __chkstk_darwin(v49);
  sub_100011D9C();
  v52 = v50 - v51;
  __chkstk_darwin(v53);
  v55 = &v156 - v54;
  v56 = sub_100032750();
  sub_100011D60();
  v58 = v57;
  __chkstk_darwin(v59);
  sub_100011DAC();
  v62 = v61 - v60;
  v63 = sub_10000D4FC(&qword_100044C20, &qword_100033D40);
  v64 = sub_100011EE8(v63);
  __chkstk_darwin(v64);
  sub_100011D9C();
  v189 = v65 - v66;
  sub_100011FAC();
  __chkstk_darwin(v67);
  sub_1000120A0();
  v188 = v68;
  sub_100032060();
  v185 = sub_100032040();
  v69 = *(v9 + 1);
  v202 = *(v9 + 16);
  if (!v69)
  {
    v174 = v48;
    v175 = v55;
    v176 = v52;
    v177 = v47;
    v95 = KeyPath(0);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    KeyPath = swift_getKeyPath();
    LODWORD(v173) = sub_1000321D0();
    v157(0);
    sub_100012068();
    (*(v58 + 16))(v62, v102 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v56);
    if ((*(v58 + 88))(v62, v56) != enum case for WidgetFamily.systemSmall(_:))
    {
      (*(v58 + 8))(v62, v56, 2.0);
    }

    sub_100031D90();
    v200 = v99 & 1;
    v197[96] = 0;
    v196[0] = v95;
    v196[1] = v97;
    LOBYTE(v196[2]) = v99 & 1;
    *(&v196[2] + 1) = *v199;
    HIDWORD(v196[2]) = *&v199[3];
    v196[3] = v101;
    v196[4] = KeyPath;
    v196[5] = 0x3FEA3D70A3D70A3DLL;
    LOBYTE(v196[6]) = v173;
    HIDWORD(v196[6]) = *&v198[3];
    *(&v196[6] + 1) = *v198;
    v196[7] = v103;
    v196[8] = v104;
    v196[9] = v105;
    v196[10] = v106;
    LOBYTE(v196[11]) = 0;
    v107 = v175;
    v178(0);
    v108 = swift_getKeyPath();
    v109 = v107 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
    *v109 = v108;
    *(v109 + 8) = 1;
    *(v109 + 16) = 0;
    v110 = swift_getKeyPath();
    v111 = (v107 + *(sub_10000D4FC(&qword_100044B98, &qword_100033CA0) + 36));
    *v111 = v110;
    v111[1] = 0x3FEA3D70A3D70A3DLL;
    v112 = (v107 + *(v174 + 36));
    v113 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
    v114 = enum case for Text.TruncationMode.tail(_:);
    sub_100032340();
    sub_100011D74();
    (*(v115 + 104))(v112 + v113, v114);
    *v112 = swift_getKeyPath();
    memcpy(v195, v196, sizeof(v195));
    v116 = v176;
    sub_100011F24();
    sub_100011C34(v117, v118, v119, &qword_100033C08);
    memcpy(v197, v195, 0x59uLL);
    v120 = v177;
    memcpy(v177, v195, 0x59uLL);
    v121 = sub_10000D4FC(&qword_100044C68, &qword_100033D60);
    sub_100011C34(v116, v120 + *(v121 + 48), &qword_100044B20, &qword_100033C08);
    sub_100011C34(v196, v201, &qword_100044C70, &qword_100033D68);
    sub_100011C34(v197, v201, &qword_100044C70, &qword_100033D68);
    sub_1000114E0(v116, &qword_100044B20);
    memcpy(v201, v195, 0x59uLL);
    sub_1000114E0(v201, &qword_100044C70);
    sub_100011F24();
    sub_100011C34(v122, v123, v124, &qword_100033D38);
    swift_storeEnumTagMultiPayload();
    sub_100011E38();
    sub_100011BE0(v125, &qword_100044C18, &qword_100033D38, v126);
    sub_100011E20();
    sub_100011BE0(v127, v128, v129, v130);
    v131 = v182;
    sub_100032150();
    sub_100011C34(v131, v190, &qword_100044C10, &qword_100033D30);
    swift_storeEnumTagMultiPayload();
    sub_10000F120();
    sub_10000F204();
    sub_100011F30();
    sub_100032150();
    sub_1000114E0(v196, &qword_100044C70);
    sub_1000114E0(v131, &qword_100044C10);
    sub_1000114E0(v120, &qword_100044C18);
    v132 = v107;
    v133 = &qword_100044B20;
    goto LABEL_8;
  }

  if (v69 != 1)
  {
    v134 = v193;
    KeyPath(2);
    sub_100012074();
    v135 = swift_getKeyPath();
    v201[0] = v55;
    v201[1] = v62;
    LOBYTE(v201[2]) = v134 & 1;
    v201[3] = v58;
    v201[4] = v135;
    v201[5] = 2;
    LOBYTE(v201[6]) = 0;
    v56 = v158;
    sub_100032020();
    sub_10000D4FC(&qword_100044C28, &qword_100033D48);
    sub_10000F068();
    sub_100032400();
    (*(v161 + 8))(v56, v162);
    v136 = sub_100012008();
    sub_10000EFC4(v136, v137, v134 & 1);

    sub_1000325F0();
    sub_100011F4C();
    sub_100031EB0(v138);
    v139 = v163;
    (*(v165 + 32))(v163, v176, v167);
    memcpy((v139 + *(v191 + 36)), v201, 0x70uLL);
    sub_100011F40();
    sub_10000E2CC(v140, v141, v142, v143);
    sub_100011F40();
    sub_100011C34(v144, v145, v146, v147);
    swift_storeEnumTagMultiPayload();
    sub_10000F120();
    sub_10000F204();
    sub_100011F30();
    sub_100032150();
    sub_100011F24();
LABEL_8:
    sub_1000114E0(v132, v133);
    v94 = v192;
    goto LABEL_9;
  }

  v70 = KeyPath(1);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = swift_getKeyPath();
  v201[0] = v70;
  v201[1] = v72;
  v56 = v74 & 1;
  LOBYTE(v201[2]) = v74 & 1;
  v201[3] = v76;
  v201[4] = v77;
  v201[5] = 1;
  LOBYTE(v201[6]) = 0;
  sub_1000322C0();
  sub_10000D4FC(&qword_100044C28, &qword_100033D48);
  sub_10000F068();
  sub_1000323F0();
  KeyPath = *(v156 + 8);
  (KeyPath)(v35, v174);
  sub_10000EFC4(v70, v72, v74 & 1);

  v78 = v160;
  v178(1);
  v79 = swift_getKeyPath();
  v80 = v78 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
  *v80 = v79;
  *(v80 + 8) = 1;
  *(v80 + 16) = 0;
  v81 = (v78 + *(v159 + 36));
  v82 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
  v83 = enum case for Text.TruncationMode.tail(_:);
  sub_100032340();
  sub_100011D74();
  (*(v84 + 104))(v81 + v82, v83);
  *v81 = swift_getKeyPath();
  sub_1000322C0();
  sub_10000E9DC();
  sub_100012048();
  sub_1000323F0();
  (KeyPath)(v35, v174);
  sub_1000114E0(v78, &qword_100044AF0);
  v85 = v171;
  *v171 = v194;
  *(v85 + 8) = 0;
  *(v85 + 16) = 1;
  sub_10000D4FC(&qword_100044C60, &qword_100033D58);
  v86 = v175;
  sub_10000AF18(v173);
  sub_100011C34(v85, v181, &qword_100044BE8, &qword_100033D08);
  swift_storeEnumTagMultiPayload();
  sub_100011E38();
  sub_100011BE0(v87, v88, v89, v90);
  sub_100011E20();
  sub_100011BE0(v91, &qword_100044BE8, &qword_100033D08, v92);
  v93 = v182;
  sub_100032150();
  sub_100011C34(v93, v190, &qword_100044C10, &qword_100033D30);
  swift_storeEnumTagMultiPayload();
  sub_10000F120();
  sub_10000F204();
  sub_100011F30();
  sub_100032150();
  sub_1000114E0(v93, &qword_100044C10);
  sub_1000114E0(v85, &qword_100044BE8);
  (*(v169 + 8))(v177, v170);
  (*(v164 + 8))(v86, v166);
  v94 = v192;
LABEL_9:
  v148 = v189;
  sub_100032050();
  v149 = sub_100032040();
  sub_100011C34(v56, v148, &qword_100044C20, &qword_100033D40);
  *v94 = 0;
  *(v94 + 8) = 0;
  *(v94 + 9) = (v185 & 1) == 0;
  v150 = sub_10000D4FC(&qword_100044C58, &qword_100033D50);
  sub_100011C34(v148, v94 + *(v150 + 48), &qword_100044C20, &qword_100033D40);
  v151 = v94 + *(v150 + 64);
  *v151 = 0;
  *(v151 + 8) = 0;
  *(v151 + 9) = (v149 & 1) == 0;
  sub_100011FDC();
  sub_1000114E0(v152, v153);
  sub_100011FDC();
  sub_1000114E0(v154, v155);
  sub_100011EF4();
}

void sub_10000AF18(uint64_t a1)
{
  sub_100011F0C();
  v66 = v2;
  v67 = v1;
  v68 = v3;
  v5 = v4;
  v73 = v6;
  v72 = sub_10000D4FC(&qword_100044C78, &qword_100033D70);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v7);
  v9 = &v66 - v8;
  v69 = sub_10000D4FC(&qword_100044C80, &qword_100033D78);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v10);
  sub_100011DFC();
  v71 = v11;
  v70 = sub_10000D4FC(&qword_100044C88, &qword_100033D80);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v12);
  v14 = &v66 - v13;
  v15 = sub_10000D4FC(&qword_100044C90, &qword_100033D88);
  v16 = sub_100011EE8(v15);
  __chkstk_darwin(v16);
  sub_100011D9C();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v66 - v22;
  __chkstk_darwin(v21);
  v25 = &v66 - v24;
  v26 = sub_10000D4FC(&qword_100044BF8, &qword_100033D18);
  sub_100011D60();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100011D9C();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v66 - v34;
  sub_1000320C0();
  if (sub_1000320A0())
  {
    v36 = v5;
    v37 = *(v28 + 16);
    (v37)(v35, v36, v26);
    v38 = sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
    v39 = v38;
    if (v68)
    {
      (*(*(v38 - 8) + 16))(v25, v66, v38);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    sub_10000D904(v25, v40, 1, v39);
    (v37)(v32, v35, v26);
    sub_100011C34(v25, v19, &qword_100044C90, &qword_100033D88);
    sub_1000120AC();
    v37();
    v44 = sub_10000D4FC(&qword_100044CB0, &qword_100033D98);
    sub_100011C34(v19, &v14[*(v44 + 48)], &qword_100044C90, &qword_100033D88);
    sub_100011FDC();
    sub_1000114E0(v45, v46);
    v47 = *(v28 + 8);
    v47(v32, v26);
    sub_100011C34(v14, v71, &qword_100044C88, &qword_100033D80);
    swift_storeEnumTagMultiPayload();
    sub_100011E50();
    sub_100011BE0(v48, &qword_100044C88, &qword_100033D80, v49);
    sub_100011BE0(&qword_100044CA8, &qword_100044C78, &qword_100033D70, v19);
    sub_100032150();
    sub_1000114E0(v14, &qword_100044C88);
    sub_1000114E0(v25, &qword_100044C90);
    v47(v35, v26);
  }

  else
  {
    v67 = v9;
    v41 = sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
    v42 = v41;
    if (v68)
    {
      (*(*(v41 - 8) + 16))(v23, v66, v41);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    sub_10000D904(v23, v43, 1, v42);
    sub_100011C34(v23, v19, &qword_100044C90, &qword_100033D88);
    v50 = *(v28 + 16);
    (v50)(v32, v5, v26);
    v51 = v67;
    sub_100011FFC();
    sub_100011C34(v52, v53, v54, &qword_100033D88);
    sub_10000D4FC(&qword_100044C98, &qword_100033D90);
    sub_1000120AC();
    v50();
    (*(v28 + 8))(v32, v26);
    sub_1000114E0(v19, &qword_100044C90);
    sub_100011C34(v51, v71, &qword_100044C78, &qword_100033D70);
    swift_storeEnumTagMultiPayload();
    sub_100011E50();
    sub_100011BE0(v55, v56, v57, v58);
    sub_1000120AC();
    sub_100011BE0(v59, v60, v61, v19);
    sub_100032150();
    sub_1000120AC();
    sub_1000114E0(v62, v63);
    v64 = sub_100011F7C();
    sub_1000114E0(v64, v65);
  }

  sub_100011EF4();
}

void sub_10000B534(uint64_t a1)
{
  sub_100011F0C();
  v102 = v3;
  v101 = v4;
  v99 = v5;
  v100 = v6;
  v8 = v7;
  v110 = v9;
  v11 = v10;
  v93 = sub_100032030();
  sub_100011D60();
  v92 = v12;
  __chkstk_darwin(v13);
  sub_100011DAC();
  sub_100012088();
  v91 = sub_10000D4FC(&qword_100044AF0, &qword_100033BD8);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  v97 = sub_10000D4FC(&qword_100044AF8, &qword_100033BE0);
  sub_100011D60();
  v96 = v17;
  sub_100011DBC();
  __chkstk_darwin(v18);
  sub_100011DFC();
  v95 = v19;
  v108 = sub_10000D4FC(&qword_100044B00, &qword_100033BE8);
  sub_100011D74();
  __chkstk_darwin(v20);
  sub_100011D9C();
  v94 = v21 - v22;
  sub_100011FAC();
  __chkstk_darwin(v23);
  sub_1000120A0();
  v98 = v24;
  v105 = sub_10000D4FC(&qword_100044B08, &qword_100033BF0);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v25);
  sub_10000D4FC(&qword_100044B10, &qword_100033BF8);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v26);
  v104 = sub_10000D4FC(&qword_100044B18, &qword_100033C00);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v30 = sub_10000D4FC(&qword_100044B20, &qword_100033C08);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v31);
  sub_100011ECC();
  v32 = sub_10000D4FC(&qword_100044B28, &qword_100033C10);
  v33 = sub_100011EE8(v32);
  __chkstk_darwin(v33);
  sub_100011D9C();
  v107 = v34 - v35;
  sub_100011FAC();
  __chkstk_darwin(v36);
  sub_1000120A0();
  v106 = v37;
  sub_100032060();
  v109 = v8;
  v103 = sub_100032040();
  if (v11)
  {
    if (v11 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_10000ED38();
      sub_100032150();
      v38 = &qword_100044B18;
      sub_100011FFC();
      sub_100011C34(v39, v40, v41, &qword_100033C00);
      swift_storeEnumTagMultiPayload();
      sub_10000ECAC();
      sub_10000EEA8();
      sub_100011DE4();
      sub_100032150();
      v42 = v29;
    }

    else
    {
      sub_100012034();
      v60();
      KeyPath = swift_getKeyPath();
      v62 = &v16[*(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36)];
      *v62 = KeyPath;
      *(v62 + 1) = 1;
      v62[16] = 0;
      v63 = &v16[*(v91 + 36)];
      v64 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
      v65 = enum case for Text.TruncationMode.tail(_:);
      sub_100032340();
      sub_100011D74();
      (*(v66 + 104))(v63 + v64, v65);
      *v63 = swift_getKeyPath();
      sub_100032020();
      sub_10000E9DC();
      v67 = v95;
      sub_100032400();
      (*(v92 + 8))(v1, v93);
      sub_1000114E0(v16, &qword_100044AF0);
      sub_1000325F0();
      sub_100011F4C();
      sub_100031EB0(v68);
      v69 = v94;
      (*(v96 + 32))(v94, v67, v97);
      memcpy((v69 + *(v108 + 36)), v111, 0x70uLL);
      v38 = &qword_100044B00;
      v70 = v98;
      sub_10000E2CC(v69, v98, &qword_100044B00, &qword_100033BE8);
      sub_100011FFC();
      sub_100011C34(v71, v72, v73, &qword_100033BE8);
      swift_storeEnumTagMultiPayload();
      sub_10000ECAC();
      sub_10000EEA8();
      sub_100011DE4();
      sub_100032150();
      v42 = v70;
    }

    v59 = v38;
  }

  else
  {
    sub_100012034();
    v43();
    v44 = swift_getKeyPath();
    v45 = v2 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
    *v45 = v44;
    *(v45 + 8) = 1;
    *(v45 + 16) = 0;
    v46 = swift_getKeyPath();
    v47 = (v2 + *(sub_10000D4FC(&qword_100044B98, &qword_100033CA0) + 36));
    *v47 = v46;
    v47[1] = 0x3FEA3D70A3D70A3DLL;
    v48 = (v2 + *(v30 + 36));
    v49 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
    v50 = enum case for Text.TruncationMode.tail(_:);
    sub_100032340();
    sub_100011D74();
    (*(v51 + 104))(v48 + v49, v50);
    *v48 = swift_getKeyPath();
    sub_100011F7C();
    sub_100011F40();
    sub_100011C34(v52, v53, v54, v55);
    swift_storeEnumTagMultiPayload();
    sub_10000ED38();
    sub_100032150();
    sub_100011FFC();
    sub_100011C34(v56, v57, v58, &qword_100033C00);
    swift_storeEnumTagMultiPayload();
    sub_10000ECAC();
    sub_10000EEA8();
    sub_100011DE4();
    sub_100032150();
    sub_1000114E0(v29, &qword_100044B18);
    sub_100011F24();
  }

  sub_1000114E0(v42, v59);
  v74 = v110;
  sub_100032050();
  v75 = sub_100032040();
  sub_100011F40();
  sub_100011C34(v76, v77, v78, v79);
  *v74 = 0;
  *(v74 + 8) = 0;
  *(v74 + 9) = (v103 & 1) == 0;
  v80 = sub_10000D4FC(&qword_100044BB8, &qword_100033CB0);
  sub_100011F40();
  sub_100011C34(v81, v82, v83, v84);
  v85 = v74 + *(v80 + 64);
  *v85 = 0;
  *(v85 + 8) = 0;
  *(v85 + 9) = (v75 & 1) == 0;
  sub_100011F24();
  sub_1000114E0(v86, v87);
  sub_100011F24();
  sub_1000114E0(v88, v89);
  sub_100011EF4();
}

uint64_t sub_10000BE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100032750();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v4 + 16))(v6, *(v1 + *(v7 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v3);
  v8 = (*(v4 + 88))(v6, v3);
  v9 = enum case for WidgetFamily.systemSmall(_:);
  v10 = sub_1000324F0();
  v11 = *(*(v10 - 8) + 104);
  if (v8 == v9)
  {
    return v11(a1, enum case for Image.Scale.small(_:), v10);
  }

  v11(a1, enum case for Image.Scale.medium(_:), v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000BFF4()
{
  v1 = sub_100032750();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v2 + 16))(v4, *(v0 + *(v5 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v1);
  if ((*(v2 + 88))(v4, v1) == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032210();
    sub_100032240();
    v6 = sub_100032260();
  }

  else
  {
    sub_100032220();
    sub_100032240();
    v6 = sub_100032260();

    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

double sub_10000C168@<D0>(uint64_t *a1@<X8>)
{
  v4 = sub_1000324D0();
  v5 = sub_10000BFF4();
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(sub_10000D4FC(&qword_100044A78, &qword_100033AF8) + 36));
  v8 = sub_10000D4FC(&qword_100044AA8, &qword_100033B10);
  sub_10000BE5C(v7 + *(v8 + 28));
  *v7 = swift_getKeyPath();
  *a1 = v4;
  a1[1] = KeyPath;
  a1[2] = v5;
  sub_1000325F0();
  sub_100031E10();
  v9 = (a1 + *(sub_10000D4FC(&qword_100044A68, &qword_100033AF0) + 36));
  *v9 = v23;
  v9[1] = v24;
  v9[2] = v25;
  v10 = sub_1000324B0();
  *(a1 + *(sub_10000D4FC(&qword_100044A58, &qword_100033AE8) + 36)) = v10;
  v11 = sub_1000325F0();
  v13 = v12;
  v14 = a1 + *(sub_10000D4FC(&qword_100044A48, &qword_100033AE0) + 36);
  sub_1000325A0();
  *&v14[*(sub_10000D4FC(&qword_100044AD8, &qword_100033B90) + 56)] = 256;
  v15 = swift_getKeyPath();
  v16 = &v14[*(sub_10000D4FC(&qword_100044AE0, &qword_100033BC8) + 36)];
  v17 = *(sub_10000D4FC(&qword_100044AE8, &qword_100033BD0) + 28);
  v18 = enum case for ColorScheme.light(_:);
  v19 = sub_100031DA0();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  v20 = &v14[*(sub_10000D4FC(&qword_100044AC8, &qword_100033B20) + 36)];
  *v20 = v11;
  v20[1] = v13;
  sub_1000325F0();
  sub_100031E10();
  v21 = (a1 + *(sub_10000D4FC(&qword_100044A30, &qword_100033AD8) + 36));
  *v21 = v26;
  v21[1] = v27;
  result = *&v28;
  v21[2] = v28;
  return result;
}

uint64_t sub_10000C464@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10000287C(*v1, v2 | *(v1 + 8), a1);
}

void sub_10000C484(uint64_t a1)
{
  sub_100011F0C();
  v3 = v2;
  LODWORD(v60) = v4;
  v59 = v5;
  v6 = sub_10000D4FC(&qword_100044CD0, &qword_100033DB8);
  sub_100011EE8(v6);
  sub_100011DBC();
  __chkstk_darwin(v7);
  sub_100011DFC();
  v58 = v8;
  v55 = sub_10000D4FC(&qword_100044988, &qword_100033A48);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v9);
  sub_100012088();
  v10 = sub_10000D4FC(&qword_100044CD8, &qword_100033DC0);
  v11 = sub_100011EE8(v10);
  __chkstk_darwin(v11);
  sub_100011D9C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = sub_10000D4FC(&qword_100044CE0, &qword_100033DC8);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  sub_10000D4FC(&qword_100044CE8, &qword_100033DD0);
  sub_100011D60();
  v56 = v23;
  v57 = v22;
  sub_100011DBC();
  __chkstk_darwin(v24);
  sub_100011DFC();
  v54 = v25;
  *v21 = sub_1000320B0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v26 = &v21[*(sub_10000D4FC(&qword_100044CF0, &qword_100033DD8) + 44)];
  *v17 = sub_1000321A0();
  v27 = &v17[*(sub_10000D4FC(&qword_100044CF8, &qword_100033DE0) + 44)];
  v28 = v60 & 0x101;
  v60 = v3;
  sub_10000C94C(v28, v3, v27);
  sub_100011C34(v17, v14, &qword_100044CD8, &qword_100033DC0);
  *v26 = 0;
  v26[8] = 1;
  v29 = sub_10000D4FC(&qword_100044D00, &qword_100033DE8);
  sub_100011C34(v14, &v26[*(v29 + 48)], &qword_100044CD8, &qword_100033DC0);
  v30 = &v26[*(v29 + 64)];
  *v30 = 0;
  v30[8] = 1;
  sub_1000114E0(v17, &qword_100044CD8);
  sub_1000114E0(v14, &qword_100044CD8);
  v31 = sub_1000321B0();
  v32 = v18;
  v33 = &v21[*(v18 + 36)];
  *v33 = v31;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  v34 = enum case for DynamicTypeSize.xxxLarge(_:);
  v35 = sub_100031E70();
  sub_100011D74();
  (*(v36 + 104))(v1, v34, v35);
  sub_100011E08();
  sub_10000DD28(v37, v38, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_100032890())
  {
    v39 = sub_10000F2CC();
    sub_100011D84();
    v42 = sub_100011BE0(v40, &qword_100044988, &qword_100033A48, v41);
    v44 = v54;
    v43 = v55;
    sub_100032420();
    v45 = sub_100012028();
    sub_1000114E0(v45, v46);
    sub_1000114E0(v21, &qword_100044CE0);
    v47 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
    v48 = sub_100031B90();
    sub_100011D74();
    v50 = v60 + v47;
    v51 = v58;
    (*(v49 + 16))(v58, v50, v48);
    sub_10000D904(v51, 0, 1, v48);
    v61 = v32;
    v62 = v43;
    v63 = v39;
    v64 = v42;
    swift_getOpaqueTypeConformance2();
    v52 = v57;
    sub_1000323C0();
    sub_1000114E0(v51, &qword_100044CD0);
    (*(v56 + 8))(v44, v52);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C94C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_10000D4FC(&qword_100044D20, &qword_100033DF8);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_10000D4FC(&qword_100044D28, &qword_100033E00);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  *v17 = sub_1000320B0();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v18 = sub_10000D4FC(&qword_100044D30, &qword_100033E08);
  sub_10000CBB4(a1 & 0x101, a2, &v17[*(v18 + 44)]);
  sub_10000D0B8();
  KeyPath = swift_getKeyPath();
  v20 = &v11[*(v6 + 44)];
  *v20 = KeyPath;
  v20[1] = 0x3FE999999999999ALL;
  sub_100011C34(v17, v15, &qword_100044D28, &qword_100033E00);
  sub_100011C34(v11, v9, &qword_100044D20, &qword_100033DF8);
  v21 = v25;
  sub_100011C34(v15, v25, &qword_100044D28, &qword_100033E00);
  v22 = sub_10000D4FC(&qword_100044D38, &qword_100033E10);
  sub_100011C34(v9, v21 + *(v22 + 48), &qword_100044D20, &qword_100033DF8);
  sub_1000114E0(v11, &qword_100044D20);
  sub_1000114E0(v17, &qword_100044D28);
  sub_1000114E0(v9, &qword_100044D20);
  return sub_1000114E0(v15, &qword_100044D28);
}

uint64_t sub_10000CBB4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v34 = a1;
  v37 = a3;
  v33 = sub_10000D4FC(&qword_100044D80, &qword_100033E68);
  v3 = __chkstk_darwin(v33);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1000324E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100031D20();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000D4FC(&qword_100044D90, &qword_100033E78);
  v18 = __chkstk_darwin(v32);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v32 - v21;
  if (qword_100044680 != -1)
  {
    swift_once();
  }

  v23 = sub_10000F4F4(v14, qword_100048420);
  (*(v15 + 16))(v17, v23, v14);
  sub_100032530();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  sub_100032510();

  (*(v11 + 8))(v13, v10);
  sub_100032710();
  v24 = sub_100032730();
  sub_10000D904(v9, 0, 1, v24);
  sub_100032500();

  sub_1000114E0(v9, &qword_100044D88);
  v25 = &v22[*(sub_10000D4FC(&qword_100044D98, &qword_100033E80) + 36)];
  *v25 = 0;
  *(v25 + 4) = 1;
  sub_1000325F0();
  sub_100031E10();
  v26 = &v22[*(v32 + 36)];
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  *(v26 + 2) = v40;
  sub_10000D0B8();
  *&v6[*(v33 + 36)] = 256;
  sub_100011C34(v22, v20, &qword_100044D90, &qword_100033E78);
  v28 = v36;
  sub_100011C34(v6, v36, &qword_100044D80, &qword_100033E68);
  v29 = v37;
  sub_100011C34(v20, v37, &qword_100044D90, &qword_100033E78);
  v30 = sub_10000D4FC(&qword_100044DA0, &qword_100033E88);
  sub_100011C34(v28, v29 + *(v30 + 48), &qword_100044D80, &qword_100033E68);
  sub_1000114E0(v6, &qword_100044D80);
  sub_1000114E0(v22, &qword_100044D90);
  sub_1000114E0(v28, &qword_100044D80);
  return sub_1000114E0(v20, &qword_100044D90);
}

void sub_10000D0B8()
{
  sub_100011F0C();
  v2 = v1;
  v3 = sub_100032270();
  sub_100011D60();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100011DAC();
  sub_100012088();
  sub_10000EF70();

  v7 = sub_100032390();
  sub_10000D2CC(v7, v2);
  (*(v5 + 104))(v0, enum case for Font.Leading.tight(_:), v3);
  sub_100012028();
  sub_100032290();

  (*(v5 + 8))(v0, v3);
  sub_100011F70();
  sub_100032360();
  sub_100012074();

  v8 = sub_100012048();
  sub_10000EFC4(v8, v9, v10);

  swift_getKeyPath();
  sub_100032160();
  sub_10000D4FC(&qword_100044D40, &qword_100033E48);
  sub_10000F384();
  sub_1000323A0();
  v11 = sub_100012008();
  sub_10000EFC4(v11, v12, v3 & 1);

  sub_100011EF4();
}

uint64_t sub_10000D2CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100032750();
  sub_100011D60();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100011DAC();
  (*(v5 + 16))(v8 - v7, a2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v3);
  v9 = sub_100011F64();
  v11 = v10(v9);
  if (v11 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032280();
LABEL_12:

    goto LABEL_13;
  }

  if (v11 == enum case for WidgetFamily.systemMedium(_:) || v11 == enum case for WidgetFamily.systemLarge(_:) || v11 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_100032210();
    goto LABEL_12;
  }

  sub_100032280();
  v14 = *(v5 + 8);

  v15 = sub_100011F64();
  v14(v15);
LABEL_13:
  sub_100032240();
  v16 = sub_100032260();

  return v16;
}

void sub_10000D448()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  sub_10000C484(v1 | *v0);
}

uint64_t variable initialization expression of PhotosReliveWidgetView._widgetFamily@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044688, qword_100033510);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000D4FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000D57C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000D5DC(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1000120B8())
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000D654(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (sub_1000120B8())
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosReliveWidgetViewOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000D84CLL);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 sub_10000D94C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D958(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D9E4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000D9F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DA38(uint64_t result, int a2, int a3)
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

uint64_t sub_10000DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100032330();
  sub_100011FD0();
  if (*(v7 + 84) != a2)
  {
    return sub_100011FE8(*(a1 + *(a3 + 20)));
  }

  return sub_10000D8C4(a1, a2, v6);
}

void sub_10000DB4C()
{
  sub_100012054();
  sub_100032330();
  sub_100011FD0();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100012014();

    sub_10000D904(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_10000DBFC(uint64_t a1)
{
  result = sub_100032330();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhotosReliveWidgetViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000DCD0(uint64_t a1)
{
  result = sub_10000DD28(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent, &unk_1000339B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DD28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DD70(uint64_t a1)
{
  result = sub_10000DD28(&qword_1000448A8, type metadata accessor for PhotosReliveWidgetMemoryContent, &unk_1000337E0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000DDE4(uint64_t a1)
{
  result = sub_10000DE0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000DE0C()
{
  result = qword_100044900;
  if (!qword_100044900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044900);
  }

  return result;
}

uint64_t sub_10000DEA8(uint64_t a1)
{
  result = sub_10000DD28(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent, &unk_1000338C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DF00(uint64_t a1)
{
  result = sub_10000DD28(&qword_100044968, type metadata accessor for PhotosReliveWidgetPlaceholderContent, &unk_100033854);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DFD4()
{
  sub_100031FA0();
  sub_10000DD28(&qword_100044F68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100032010();
  return v1;
}

uint64_t sub_10000E050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000DFD4();
  *a1 = result & 1;
  return result;
}

void sub_10000E080(uint64_t a2@<X8>)
{
  sub_10000E0B4();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

unint64_t sub_10000E19C()
{
  result = qword_100044970;
  if (!qword_100044970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044970);
  }

  return result;
}

uint64_t sub_10000E2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100011EAC(a1, a2, a3, a4);
  sub_100011D74();
  v5 = sub_100011EDC();
  v6(v5);
  return v4;
}

unint64_t sub_10000E324()
{
  result = qword_100044A38;
  if (!qword_100044A38)
  {
    sub_10000D57C(&qword_100044A30, &qword_100033AD8);
    sub_10000E3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A38);
  }

  return result;
}

unint64_t sub_10000E3B0()
{
  result = qword_100044A40;
  if (!qword_100044A40)
  {
    sub_10000D57C(&qword_100044A48, &qword_100033AE0);
    sub_10000E468();
    sub_100011BE0(&qword_100044AC0, &qword_100044AC8, &qword_100033B20, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A40);
  }

  return result;
}

unint64_t sub_10000E468()
{
  result = qword_100044A50;
  if (!qword_100044A50)
  {
    sub_10000D57C(&qword_100044A58, &qword_100033AE8);
    sub_10000E520();
    sub_100011BE0(&qword_100044AB0, &unk_100044AB8, &unk_100033B18, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A50);
  }

  return result;
}

unint64_t sub_10000E520()
{
  result = qword_100044A60;
  if (!qword_100044A60)
  {
    sub_10000D57C(&qword_100044A68, &qword_100033AF0);
    sub_10000E5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A60);
  }

  return result;
}

unint64_t sub_10000E5AC()
{
  result = qword_100044A70;
  if (!qword_100044A70)
  {
    sub_10000D57C(&qword_100044A78, &qword_100033AF8);
    sub_10000E664();
    sub_100011BE0(&qword_100044AA0, &qword_100044AA8, &qword_100033B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A70);
  }

  return result;
}

unint64_t sub_10000E664()
{
  result = qword_100044A80;
  if (!qword_100044A80)
  {
    sub_10000D57C(&qword_100044A88, &qword_100033B00);
    sub_100011BE0(&qword_100044A90, &unk_100044A98, &unk_100033B08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A80);
  }

  return result;
}

uint64_t sub_10000E71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100031F20();
  *a1 = result;
  return result;
}

uint64_t sub_10000E7C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100031FD0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E87C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100031F80();
  *a1 = result;
  return result;
}

uint64_t sub_10000E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v9);
  sub_100011ECC();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_10000E9DC()
{
  result = qword_100044B40;
  if (!qword_100044B40)
  {
    sub_10000D57C(&qword_100044AF0, &qword_100033BD8);
    sub_10000EA94();
    sub_100011BE0(&qword_100044B78, &unk_100044B38, &unk_100033C50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B40);
  }

  return result;
}

unint64_t sub_10000EA94()
{
  result = qword_100044B48;
  if (!qword_100044B48)
  {
    sub_10000D57C(&qword_100044B30, &qword_100033C48);
    sub_10000D57C(&qword_100044B50, &qword_100033C88);
    sub_10000D57C(&qword_100044B58, &qword_100033C90);
    swift_getOpaqueTypeConformance2();
    sub_10000EBF8();
    swift_getOpaqueTypeConformance2();
    sub_100011BE0(&qword_100044B68, &unk_100044B70, &unk_100033C98, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B48);
  }

  return result;
}

unint64_t sub_10000EBF8()
{
  result = qword_100044B60;
  if (!qword_100044B60)
  {
    sub_10000D57C(&qword_100044B58, &qword_100033C90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B60);
  }

  return result;
}

unint64_t sub_10000ECAC()
{
  result = qword_100044B80;
  if (!qword_100044B80)
  {
    sub_10000D57C(&qword_100044B18, &qword_100033C00);
    sub_10000ED38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B80);
  }

  return result;
}

unint64_t sub_10000ED38()
{
  result = qword_100044B88;
  if (!qword_100044B88)
  {
    sub_10000D57C(&qword_100044B20, &qword_100033C08);
    sub_10000EDF0();
    sub_100011BE0(&qword_100044B78, &qword_100044B38, &qword_100033C50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B88);
  }

  return result;
}

unint64_t sub_10000EDF0()
{
  result = qword_100044B90;
  if (!qword_100044B90)
  {
    sub_10000D57C(&qword_100044B98, &qword_100033CA0);
    sub_10000EA94();
    sub_100011BE0(&qword_100044BA0, &unk_100044BA8, &unk_100033CA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B90);
  }

  return result;
}

unint64_t sub_10000EEA8()
{
  result = qword_100044BB0;
  if (!qword_100044BB0)
  {
    sub_10000D57C(&qword_100044B00, &qword_100033BE8);
    sub_10000D57C(&qword_100044AF0, &qword_100033BD8);
    sub_10000E9DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044BB0);
  }

  return result;
}

unint64_t sub_10000EF70()
{
  result = qword_100044BC0;
  if (!qword_100044BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044BC0);
  }

  return result;
}

double sub_10000EFC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_10000EFD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100031F60();
  *a1 = result;
  return result;
}

uint64_t sub_10000F058(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000F068()
{
  result = qword_100044C30;
  if (!qword_100044C30)
  {
    sub_10000D57C(&qword_100044C28, &qword_100033D48);
    sub_100011BE0(&qword_100044B68, &unk_100044B70, &unk_100033C98, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C30);
  }

  return result;
}

unint64_t sub_10000F120()
{
  result = qword_100044C38;
  if (!qword_100044C38)
  {
    sub_10000D57C(&qword_100044C10, &qword_100033D30);
    sub_100011BE0(&qword_100044C40, &unk_100044C18, &unk_100033D38, &protocol conformance descriptor for TupleView<A>);
    sub_100011BE0(&qword_100044C48, &unk_100044BE8, &unk_100033D08, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C38);
  }

  return result;
}

unint64_t sub_10000F204()
{
  result = qword_100044C50;
  if (!qword_100044C50)
  {
    sub_10000D57C(&qword_100044BE0, &qword_100033D00);
    sub_10000D57C(&qword_100044C28, &qword_100033D48);
    sub_10000F068();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C50);
  }

  return result;
}

unint64_t sub_10000F2CC()
{
  result = qword_100044D08;
  if (!qword_100044D08)
  {
    sub_10000D57C(&qword_100044CE0, &qword_100033DC8);
    sub_100011BE0(&qword_100044D10, &unk_100044D18, &unk_100033DF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D08);
  }

  return result;
}

unint64_t sub_10000F384()
{
  result = qword_100044D48;
  if (!qword_100044D48)
  {
    sub_10000D57C(&qword_100044D40, &qword_100033E48);
    sub_10000F43C();
    sub_100011BE0(&qword_100044D70, &unk_100044D78, &unk_100033E60, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D48);
  }

  return result;
}

unint64_t sub_10000F43C()
{
  result = qword_100044D50;
  if (!qword_100044D50)
  {
    sub_10000D57C(&qword_100044D58, &qword_100033E50);
    sub_100011BE0(&qword_100044D60, &unk_100044D68, &unk_100033E58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D50);
  }

  return result;
}

uint64_t sub_10000F4F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F52C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100011D74();
  v4 = sub_100011EDC();
  v5(v4);
  return a2;
}

uint64_t sub_10000F5A0(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  sub_100032330();
  sub_100011D74();
  (*(v6 + 8))(v1 + v4);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_10000F688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_100011D74();
  v4 = sub_100011EDC();
  v5(v4);
  return a2;
}

__n128 sub_10000F7F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F800(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F820(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_10000F87C(uint64_t a1)
{
  sub_10000FE14(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotosReliveWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000F92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_100032700() - 8) + 64);
  v7 = 8;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_25;
  }

  v14 = v13 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12) + 2;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      v20 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {

        return sub_10000D8C4((v20 + v12 + 9) & ~v12, v10, v8);
      }

      else
      {
        v21 = *v20;
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_10000FB40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_100032700() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v11 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 17) & ~v14) + 2;
  v16 = 8 * v15;
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        return;
      case 2:
        *&a1[v15] = v19;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v15] = v19;
        return;
      default:
        return;
    }
  }

  switch(v17)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x10000FDD4);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        v23 = (&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {

          sub_10000D904((v23 + v14 + 9) & ~v14, a2, v12, v10);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
  }
}

void sub_10000FE14(uint64_t a1)
{
  if (!qword_100044E30[0])
  {
    sub_100032700();
    v1 = sub_100031DB0();
    if (!v2)
    {
      atomic_store(v1, qword_100044E30);
    }
  }
}

void sub_10000FE6C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100010D94(319, &qword_100044EB8, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000FF38(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = a1[v6];
        if (!a1[v6])
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      case 2:
        v11 = *&a1[v6];
        if (*&a1[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        JUMPOUT(0x100010064);
      case 4:
        v11 = *&a1[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *a1;
        }

        else
        {
          v12 = 0;
          v13 = *a1;
        }

        return v5 + (v13 | v12) + 1;
      default:
LABEL_22:
        if (v5)
        {
          return sub_10000D8C4(a1, v5, v4);
        }

        return 0;
    }
  }

  return sub_10000D8C4(a1, v5, v4);
}

void sub_100010078(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    case 3:
LABEL_35:
      __break(1u);
      JUMPOUT(0x100010238);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_27;
    default:
LABEL_27:
      if (a2)
      {
LABEL_28:

        sub_10000D904(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_100010278(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100010298(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000102E8()
{
  sub_10000D57C(&qword_100044CE8, &qword_100033DD0);
  v0 = sub_10000D57C(&qword_100044CE0, &qword_100033DC8);
  v1 = sub_100012028();
  sub_10000D57C(v1, v2);
  sub_10000F2CC();
  sub_100011D84();
  sub_100011FDC();
  v24 = sub_100011BE0(v3, v4, v5, v6);
  sub_100011DC8(v24, v7, v8, v9, v10, v11, v12, v13, v0);
  sub_100011E68();
  return sub_100011DC8(v14, v15, v16, v17, v18, v19, v20, v21, v23);
}

uint64_t sub_1000103A8(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100011F64();
  swift_getAssociatedConformanceWitness();
  v2 = sub_100011FA0();
  type metadata accessor for PhotosReliveWidgetContentView(v2, AssociatedTypeWitness, v3, v4);

  return swift_getWitnessTable();
}

uint64_t sub_10001051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PhotosReliveWidgetContentView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100032700();
    sub_100011D74();
    (*(v10 + 8))(v4 + v8);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 44), v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_100010678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = type metadata accessor for PhotosReliveWidgetContentView(0, v6, v7, a2);
  sub_100011EE8(v8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100002C44(a1, v10, v6, v7, a3);
}

uint64_t sub_100010744(uint64_t a1)
{
  v2 = type metadata accessor for PhotosReliveWidgetPhotoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000107A0()
{
  result = qword_100044EF0;
  if (!qword_100044EF0)
  {
    sub_10000D57C(&qword_100044EE8, &qword_100034068);
    sub_10001082C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044EF0);
  }

  return result;
}

unint64_t sub_10001082C()
{
  result = qword_100044EF8;
  if (!qword_100044EF8)
  {
    sub_10000D57C(&qword_100044F00, &qword_100034070);
    sub_1000108B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044EF8);
  }

  return result;
}

unint64_t sub_1000108B8()
{
  result = qword_100044F08;
  if (!qword_100044F08)
  {
    sub_10000D57C(&qword_100044F10, &qword_100034078);
    sub_100010944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F08);
  }

  return result;
}

unint64_t sub_100010944()
{
  result = qword_100044F18;
  if (!qword_100044F18)
  {
    sub_10000D57C(&qword_100044F20, &qword_100034080);
    sub_1000109FC();
    sub_100011BE0(&qword_100044F50, &unk_100044F58, &unk_100034098, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F18);
  }

  return result;
}

unint64_t sub_1000109FC()
{
  result = qword_100044F28;
  if (!qword_100044F28)
  {
    sub_10000D57C(&qword_100044F30, &qword_100034088);
    sub_100010AB4();
    sub_100011BE0(&qword_100044F40, &unk_100044F48, &unk_100034090, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F28);
  }

  return result;
}

unint64_t sub_100010AB4()
{
  result = qword_100044F38;
  if (!qword_100044F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F38);
  }

  return result;
}

uint64_t sub_100010B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100011FE8(*(a1 + 48));
  }

  v7 = sub_100031E30();
  v8 = a1 + *(a3 + 36);

  return sub_10000D8C4(v8, a2, v7);
}

uint64_t sub_100010BE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_100031E30();
    v8 = v5 + *(a4 + 36);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

void sub_100010C68(uint64_t a1)
{
  sub_100010D94(319, &qword_100044FD8, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100010D94(319, &unk_100044FE0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PhotosReliveWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_100031E30();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100010D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100010DE4(__int128 *a1)
{
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  swift_getOpaqueTypeMetadata2();
  sub_100011FA0();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  sub_100011FA0();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  swift_getWitnessTable();
  sub_100011FA0();
  sub_100032570();
  swift_getWitnessTable();
  sub_100011E68();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100011FA0();
  sub_100031E50();
  return swift_getWitnessTable();
}

uint64_t sub_100010F5C(void *a1)
{
  sub_100032550();
  sub_100031E80();
  sub_100031E80();
  sub_100031E80();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100011EDC();
  return swift_getWitnessTable();
}

unint64_t sub_100011070()
{
  result = qword_100045060;
  if (!qword_100045060)
  {
    sub_10000D57C(&qword_100045050, &qword_100034180);
    sub_100011154(&qword_100045068, &unk_100045048, &unk_100034178, sub_100011204);
    sub_100011154(&qword_100045098, &unk_100045038, &unk_100034168, sub_100011314);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045060);
  }

  return result;
}

uint64_t sub_100011154(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100012094(0, a2);
    sub_10000D57C(v7, v8);
    a4();
    sub_10000DD28(&qword_100045090, type metadata accessor for AccentDesaturateModifier, &unk_1000341E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011204()
{
  result = qword_100045070;
  if (!qword_100045070)
  {
    sub_10000D57C(&qword_100045078, &qword_100034190);
    sub_100011BE0(&qword_100045080, &unk_100045088, &unk_100034198, &protocol conformance descriptor for SpatialPhotoView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045070);
  }

  return result;
}

uint64_t sub_1000112DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011314()
{
  result = qword_1000450A0;
  if (!qword_1000450A0)
  {
    sub_10000D57C(&qword_100045058, &qword_100034188);
    sub_1000113D0();
    sub_10000DD28(&qword_1000450C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450A0);
  }

  return result;
}

unint64_t sub_1000113D0()
{
  result = qword_1000450A8;
  if (!qword_1000450A8)
  {
    sub_10000D57C(&qword_1000450B0, &qword_1000341A0);
    sub_10001145C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450A8);
  }

  return result;
}

unint64_t sub_10001145C()
{
  result = qword_1000450B8;
  if (!qword_1000450B8)
  {
    sub_10000D57C(&qword_1000450C0, &qword_1000341A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450B8);
  }

  return result;
}

uint64_t sub_1000114E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012094(a1, a2);
  sub_10000D4FC(v3, v4);
  sub_100011D74();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100011534(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_100011554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000D4FC(&qword_1000450D0, &unk_1000341B0);
  sub_100011FD0();
  if (*(v7 + 84) == a2)
  {

    return sub_10000D8C4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10001162C()
{
  sub_100012054();
  sub_10000D4FC(&qword_1000450D0, &unk_1000341B0);
  sub_100011FD0();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_100012014();

    sub_10000D904(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void sub_1000116C4(uint64_t a1)
{
  sub_10000FE14(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10001173C()
{
  result = qword_100045168;
  if (!qword_100045168)
  {
    sub_10000D57C(&qword_100045170, &qword_1000341E0);
    sub_100011070();
    sub_10000D57C(&qword_100044F30, &qword_100034088);
    sub_1000109FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045168);
  }

  return result;
}

unint64_t sub_100011828()
{
  result = qword_1000451A8;
  if (!qword_1000451A8)
  {
    sub_10000D57C(&qword_100045198, &qword_100034258);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_100011924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451A8);
  }

  return result;
}

unint64_t sub_100011924()
{
  result = qword_1000451B8;
  if (!qword_1000451B8)
  {
    sub_10000D57C(&qword_100045180, &qword_100034240);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_100011A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451B8);
  }

  return result;
}

unint64_t sub_100011A2C()
{
  result = qword_1000451C0;
  if (!qword_1000451C0)
  {
    sub_10000D57C(&qword_1000451C8, &qword_100034268);
    sub_100011AE4();
    sub_100011BE0(&qword_1000451E0, &unk_1000451E8, &unk_100034278, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451C0);
  }

  return result;
}

unint64_t sub_100011AE4()
{
  result = qword_1000451D0;
  if (!qword_1000451D0)
  {
    sub_10000D57C(&qword_1000451D8, &qword_100034270);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451D0);
  }

  return result;
}

uint64_t sub_100011BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_100012094(0, a2);
    sub_10000D57C(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100011EAC(a1, a2, a3, a4);
  sub_100011D74();
  v5 = sub_100011EDC();
  v6(v5);
  return v4;
}

unint64_t sub_100011C84()
{
  result = qword_100045200;
  if (!qword_100045200)
  {
    sub_10000D57C(&qword_100045208, &unk_100034290);
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0, &qword_100034260, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045200);
  }

  return result;
}

uint64_t sub_100011DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011E80()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10000D4FC(a3, a4);
}

uint64_t sub_100011FE8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000120B8()
{

  return sub_1000311E8(2, 17, 0, 0);
}

uint64_t sub_1000120D8@<X0>(void *a1@<X8>)
{
  v3 = sub_100032000();
  sub_100011D60();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100044688, qword_100033510);
  sub_100011D74();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for PhotosReliveWidgetView(0);
  sub_100013C14(v1 + *(v12 + 32), v11, &qword_100044688, qword_100033510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100032750();
    sub_100011D74();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    v15 = sub_100032A30();
    v16 = sub_100032190();
    sub_100031D30(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100031FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

BOOL sub_1000122C4()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
  return !swift_dynamicCastClass() && *(v0 + 32) == 0;
}

uint64_t PhotosReliveWidgetView.body.getter()
{
  v1 = sub_100032180();
  sub_100011D60();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045210, &qword_1000342A0);
  sub_100011D74();
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_1000124CC(v0, &v11 - v8);
  sub_100032170();
  sub_1000325F0();
  sub_1000131D0();
  sub_100032440();
  (*(v3 + 8))(v6, v1);
  return sub_100013B00(v9, &qword_100045210, &qword_1000342A0);
}

uint64_t sub_1000124CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_100031EA0();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  v5 = __chkstk_darwin(v79);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v63 - v7;
  v80 = sub_10000D4FC(&qword_100045338, &qword_100034348);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v69 = &v63 - v8;
  v76 = sub_10000D4FC(&qword_100045340, &qword_100034350);
  __chkstk_darwin(v76);
  v78 = (&v63 - v9);
  v10 = sub_100032750();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = __chkstk_darwin(v10);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v73 = (&v63 - v16);
  v84 = sub_10000D4FC(&qword_100045268, &qword_1000342C8);
  __chkstk_darwin(v84);
  v77 = &v63 - v17;
  v82 = sub_10000D4FC(&qword_100045348, &qword_100034358);
  __chkstk_darwin(v82);
  v83 = &v63 - v18;
  v63 = sub_10000D4FC(&qword_100045350, &qword_100034360);
  __chkstk_darwin(v63);
  v20 = &v63 - v19;
  v21 = sub_10000D4FC(&qword_100045358, &qword_100034368);
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  v64 = sub_10000D4FC(&qword_100045248, &qword_1000342B8);
  __chkstk_darwin(v64);
  v25 = &v63 - v24;
  v26 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  __chkstk_darwin(v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10000D4FC(&qword_100045238, &qword_1000342B0);
  __chkstk_darwin(v81);
  v30 = &v63 - v29;
  v31 = *(a1 + 24);
  if (!v31 || !sub_1000122C4())
  {
    v35 = *a1;
    if (*a1 && (*(a1 + 32) | 2) == 3)
    {

      v36 = v35;
      v37 = v73;
      sub_1000120D8(v73);
      type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
      v39 = v74;
      v38 = v75;
      (*(v74 + 16))(v15, v37, v75);
      sub_100025AE8();
      v41 = v40;
      (*(v39 + 8))(v37, v38);
      v42 = v78;
      *v78 = 0;
      *(v42 + 1) = v41;
      swift_storeEnumTagMultiPayload();
      sub_100013598();
      v43 = sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent, &unk_1000338C4);
      v86 = v79;
      v87 = v43;
      swift_getOpaqueTypeConformance2();
      v44 = v77;
      sub_100032150();
LABEL_16:
      sub_100013A98(v44, v83);
      swift_storeEnumTagMultiPayload();
      sub_1000132E0();
      sub_1000134A4();
      sub_100032150();
      return sub_100013B00(v44, &qword_100045268, &qword_1000342C8);
    }

    v45 = v75;
    if (v31)
    {
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      v46 = swift_dynamicCastClass();
      v47 = v66;
      v48 = v74;
      v49 = v65;
      if (v46)
      {
      }

      v50 = v79;
      if (!v35)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v46 = 0;
      v50 = v79;
      v47 = v66;
      v48 = v74;
      v49 = v65;
      if (!v35)
      {
        goto LABEL_13;
      }
    }

    [v35 contentType];
LABEL_13:

    sub_1000120D8(v49);
    sub_100032320();
    *(v47 + *(v50 + 24)) = 0;
    v51 = v46;
    if (!v46)
    {
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      (*(v48 + 16))(v73, v49, v45);
      sub_100025760();
      v51 = v52;
    }

    (*(v48 + 8))(v49, v45);
    *(v47 + *(v50 + 20)) = v51;
    v53 = v67;
    sub_100013A34(v47, v67);
    v54 = v68;
    sub_100031E90();
    v55 = sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent, &unk_1000338C4);
    v56 = v69;
    sub_100032460();
    (*(v70 + 8))(v54, v71);
    sub_100013BBC(v53, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
    v57 = v72;
    v58 = v80;
    (*(v72 + 16))(v78, v56, v80);
    swift_storeEnumTagMultiPayload();
    sub_100013598();
    v86 = v50;
    v87 = v55;
    swift_getOpaqueTypeConformance2();
    v44 = v77;
    sub_100032150();

    (*(v57 + 8))(v56, v58);
    goto LABEL_16;
  }

  v32 = *(v31 + 16);
  if ((v32 - 1) < 2)
  {
    v33 = *(a1 + 33);
    v34 = *(a1 + 34);
    *v23 = v31;
    v23[8] = v33;
    v23[9] = v34;
    swift_storeEnumTagMultiPayload();
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent, &unk_1000339B4);
    sub_10000DE0C();
    swift_retain_n();
    sub_100032150();
    sub_100013C14(v25, v20, &qword_100045248, &qword_1000342B8);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_100045258, &qword_1000342C0);
    sub_10001336C();
    sub_100013428();
    sub_100032150();
    sub_100013B00(v25, &qword_100045248, &qword_1000342B8);
LABEL_21:
    sub_100013C14(v30, v83, &qword_100045238, &qword_1000342B0);
    swift_storeEnumTagMultiPayload();
    sub_1000132E0();
    sub_1000134A4();
    sub_100032150();

    return sub_100013B00(v30, &qword_100045238, &qword_1000342B0);
  }

  if (!v32)
  {
    v60 = *(a1 + 33);
    v61 = *(a1 + 34);
    swift_retain_n();
    sub_100032320();
    *&v28[*(v26 + 20)] = v31;
    v62 = &v28[*(v26 + 24)];
    *v62 = v60;
    v62[1] = v61;
    sub_100013B58(v28, v23);
    swift_storeEnumTagMultiPayload();
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent, &unk_1000339B4);
    sub_10000DE0C();
    sub_100032150();
    sub_100013C14(v25, v20, &qword_100045248, &qword_1000342B8);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_100045258, &qword_1000342C0);
    sub_10001336C();
    sub_100013428();
    sub_100032150();
    sub_100013B00(v25, &qword_100045248, &qword_1000342B8);
    sub_100013BBC(v28, type metadata accessor for PhotosReliveWidgetMemoryContent);
    goto LABEL_21;
  }

  result = sub_100032C10();
  __break(1u);
  return result;
}

uint64_t sub_1000131A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000324A0();
  *a1 = result;
  return result;
}

unint64_t sub_1000131D0()
{
  result = qword_100045218;
  if (!qword_100045218)
  {
    sub_10000D57C(&qword_100045210, &qword_1000342A0);
    sub_100013254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045218);
  }

  return result;
}

unint64_t sub_100013254()
{
  result = qword_100045220;
  if (!qword_100045220)
  {
    sub_10000D57C(&qword_100045228, &qword_1000342A8);
    sub_1000132E0();
    sub_1000134A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045220);
  }

  return result;
}

unint64_t sub_1000132E0()
{
  result = qword_100045230;
  if (!qword_100045230)
  {
    sub_10000D57C(&qword_100045238, &qword_1000342B0);
    sub_10001336C();
    sub_100013428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045230);
  }

  return result;
}

unint64_t sub_10001336C()
{
  result = qword_100045240;
  if (!qword_100045240)
  {
    sub_10000D57C(&qword_100045248, &qword_1000342B8);
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent, &unk_1000339B4);
    sub_10000DE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045240);
  }

  return result;
}

unint64_t sub_100013428()
{
  result = qword_100045250;
  if (!qword_100045250)
  {
    sub_10000D57C(&qword_100045258, &qword_1000342C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045250);
  }

  return result;
}

unint64_t sub_1000134A4()
{
  result = qword_100045260;
  if (!qword_100045260)
  {
    sub_10000D57C(&qword_100045268, &qword_1000342C8);
    sub_100013598();
    type metadata accessor for PhotosReliveWidgetPlaceholderContent(255);
    sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent, &unk_1000338C4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045260);
  }

  return result;
}

unint64_t sub_100013598()
{
  result = qword_100045270;
  if (!qword_100045270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045270);
  }

  return result;
}

uint64_t sub_1000135EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013668(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000D4FC(&qword_100045278, &qword_100034328);
    v10 = a1 + *(a3 + 32);

    return sub_10000D8C4(v10, a2, v9);
  }
}

void *sub_10001371C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10000D4FC(&qword_100045278, &qword_100034328);
    v8 = v5 + *(a4 + 32);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotosReliveWidgetView(uint64_t a1)
{
  result = qword_1000452D8;
  if (!qword_1000452D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000137F4(uint64_t a1)
{
  sub_100013908();
  if (v1 <= 0x3F)
  {
    sub_100013958(319, &qword_1000452F0, type metadata accessor for PhotosReliveWidgetViewModel, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100013958(319, &unk_1000452F8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013908()
{
  if (!qword_1000452E8)
  {
    v0 = sub_100032B10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000452E8);
    }
  }
}

void sub_100013958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000139BC()
{
  sub_10000D57C(&qword_100045210, &qword_1000342A0);
  sub_1000131D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100013A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013A98(uint64_t a1, uint64_t a2)
{
  sub_10000D4FC(&qword_100045268, &qword_1000342C8);
  sub_100011D74();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100013B00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000D4FC(a2, a3);
  sub_100011D74();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100013B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013BBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100011D74();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100013C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000D4FC(a3, a4);
  sub_100011D74();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100013C84()
{
  sub_100032750();
  sub_100011D60();
  __chkstk_darwin(v0);
  sub_100011DAC();
  v1 = sub_1000240A0();
  v2(v1);
  v3 = sub_100011F64();
  v5 = v4(v3);
  result = 0;
  if (v5 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v5 == enum case for WidgetFamily.systemMedium(_:))
    {
      return 1;
    }

    else if (v5 == enum case for WidgetFamily.systemLarge(_:))
    {
      return 2;
    }

    else if (v5 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 3;
    }

    else
    {
      v7 = sub_100011F64();
      v8(v7);
      return 0;
    }
  }

  return result;
}

void *sub_100013E20(uint64_t a1)
{
  result = sub_1000230F8(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_100023138(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_100013EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_100031870();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000D904(a2, v7, 1, v6);
}

uint64_t sub_100013F90()
{
  sub_100032BC0(45);
  v1._object = 0x8000000100035F00;
  v1._countAndFlagsBits = 0xD000000000000011;
  sub_100032950(v1);

  sub_10000D4FC(&qword_100045418, &qword_1000348D0);
  v2._countAndFlagsBits = sub_100032920();
  sub_100032950(v2);

  v3._countAndFlagsBits = 0x3A79616C656420;
  v3._object = 0xE700000000000000;
  sub_100032950(v3);
  sub_100032A00();
  v4._countAndFlagsBits = 0x6C75646568637320;
  v4._object = 0xEF20657461446465;
  sub_100032950(v4);
  type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  sub_100031C40();
  sub_10002283C(&qword_100045420, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v5._countAndFlagsBits = sub_100032CB0();
  sub_100032950(v5);

  return 0;
}

uint64_t sub_100014110()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100045360 = result;
  return result;
}

uint64_t sub_100014188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100032750();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v42 = &v38[-v6];
  v7 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v38[-v11];
  sub_1000148F0();
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_100032900();

  v15 = [v13 dataForKey:v14];

  if (v15)
  {
    v44 = a2;
    v16 = sub_100031BB0();
    v18 = v17;

    sub_100031AD0();
    swift_allocObject();
    sub_100031AC0();
    sub_10002283C(&qword_100045448, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration, &unk_100034A18);
    v43 = v18;
    sub_100031AB0();
    v19 = v7;

    v21 = sub_100032A10();
    v22 = v21;
    if (qword_100044618 != -1)
    {
      swift_once();
    }

    v23 = qword_100045360;
    sub_100022B60(v12, v10);
    v24 = v45;
    v25 = v46;
    v26 = v42;
    (*(v45 + 16))(v42, a1, v46);
    if (os_log_type_enabled(v23, v22))
    {
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v27 = 136315394;
      v39 = v22;
      v28 = v24;
      v29 = sub_100013F90();
      v41 = v19;
      v31 = v30;
      sub_100022A1C(v10, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
      v32 = sub_100021264(v29, v31, v47);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v33 = sub_100032CB0();
      v35 = v34;
      (*(v28 + 8))(v26, v25);
      v36 = sub_100021264(v33, v35, v47);
      v19 = v41;

      *(v27 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v23, v39, "decoded saved scheduled reload config %s for widget family %s", v27, 0x16u);
      swift_arrayDestroy();

      sub_100022A74(v16, v43);
    }

    else
    {
      sub_100022A74(v16, v43);
      (*(v24 + 8))(v26, v25);
      sub_100022A1C(v10, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    }

    v37 = v44;
    sub_100022904(v12, v44);
    return sub_10000D904(v37, 0, 1, v19);
  }

  else
  {

    return sub_10000D904(a2, 1, 1, v7);
  }
}

unint64_t sub_1000148F0()
{
  sub_100032BC0(18);

  sub_100032740();
  v1._countAndFlagsBits = sub_100032CB0();
  sub_100032950(v1);

  return 0xD000000000000010;
}

uint64_t sub_10001498C(uint64_t a1, void *a2)
{
  v4 = sub_100032750();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D4FC(&qword_1000453E0, &qword_1000348B0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v48 - v13;
  v14 = sub_100031D80();
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() standardUserDefaults];
  v51 = a2;
  sub_1000148F0();
  if (qword_100044618 != -1)
  {
    swift_once();
  }

  v18 = qword_100045360;
  sub_100031D60();
  sub_100013C14(a1, v8, &qword_1000453E0, &qword_1000348B0);
  if (sub_10000D8C4(v8, 1, v9) == 1)
  {
    sub_100013B00(v8, &qword_1000453E0, &qword_1000348B0);
    v19 = sub_100032900();
    v20 = [v17 objectForKey:v19];

    if (!v20)
    {
      (*(v55 + 8))(v16, v56);

      memset(v58, 0, sizeof(v58));
      return sub_100013B00(v58, &qword_1000453F8, &qword_1000348C0);
    }

    sub_100032B50();
    swift_unknownObjectRelease();
    sub_100013B00(v58, &qword_1000453F8, &qword_1000348C0);
    sub_100032AD0();
    sub_100031D50();
    v21 = sub_100032A10();
    sub_100031D30(v21, &_mh_execute_header, v18, "deleted saved scheduled reload configuration", 44, 2, &_swiftEmptyArrayStorage);
    v22 = sub_100032900();

    [v17 removeObjectForKey:v22];

    if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
    {
      v23 = sub_100032A20();
      sub_100031D30(v23, &_mh_execute_header, v18, "Failed to synchronize defaults for scheduled reload config", 58, 2, &_swiftEmptyArrayStorage);
    }

    sub_100032AC0();
    sub_100031D50();
  }

  else
  {
    sub_100022904(v8, v57);
    sub_100032AD0();
    sub_100031D50();
    sub_100031B00();
    swift_allocObject();
    sub_100031AF0();
    sub_100022968();
    v24 = sub_100031AE0();
    v25 = v17;
    v28 = v27;
    v29 = v24;

    v50 = v29;
    isa = sub_100031BA0().super.isa;
    v31 = sub_100032900();

    [v17 setObject:isa forKey:v31];

    if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
    {
      v33 = sub_100032A20();
      sub_100031D30(v33, &_mh_execute_header, v18, "Failed to synchronize defaults for scheduled reload config", 58, 2, &_swiftEmptyArrayStorage);
    }

    v34 = sub_100032A10();
    sub_100022B60(v57, v12);
    v36 = v52;
    v35 = v53;
    v37 = v54;
    (*(v53 + 16))(v52, v51, v54);
    if (os_log_type_enabled(v18, v34))
    {
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v58[0] = v48;
      *v38 = 136315394;
      v51 = v25;
      v39 = v35;
      v40 = sub_100013F90();
      v49 = v28;
      v42 = v41;
      sub_100022A1C(v12, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
      v43 = sub_100021264(v40, v42, v58);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v44 = sub_100032CB0();
      v46 = v45;
      (*(v39 + 8))(v36, v37);
      v25 = v51;
      v47 = sub_100021264(v44, v46, v58);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v18, v34, "saved scheduled reload configuration %s for widget family %s", v38, 0x16u);
      swift_arrayDestroy();

      sub_100022A74(v50, v49);
    }

    else
    {
      sub_100022A74(v50, v28);
      (*(v35 + 8))(v36, v37);
      sub_100022A1C(v12, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    }

    sub_100032AC0();
    sub_100031D50();

    sub_100022A1C(v57, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  }

  return (*(v55 + 8))(v16, v56);
}

uint64_t sub_1000152AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497972746E65 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_100032CD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C6564 && a2 == 0xE500000000000000;
    if (v6 || (sub_100032CD0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C756465686373 && a2 == 0xED00006574614464)
    {

      return 2;
    }

    else
    {
      v8 = sub_100032CD0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_1000153D0(unsigned __int8 a1)
{
  sub_100032D00();
  sub_100032D10(a1);
  return sub_100032D20();
}

uint64_t sub_100015424(char a1)
{
  if (!a1)
  {
    return 0x6564497972746E65;
  }

  if (a1 == 1)
  {
    return 0x79616C6564;
  }

  return 0x656C756465686373;
}

Swift::Int sub_1000154B8(uint64_t a1)
{
  v2 = *v1;
  sub_100032D00();
  sub_100032D10(v2);
  return sub_100032D20();
}

uint64_t sub_100015504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000152AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001554C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000153C8();
  *a1 = result;
  return result;
}

uint64_t sub_100015574(uint64_t a1)
{
  v2 = sub_100023A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000155B0(uint64_t a1)
{
  v2 = sub_100023A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000155EC(void *a1)
{
  v3 = sub_10000D4FC(&qword_100045628, &qword_100034A68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000239F0(a1, a1[3]);
  sub_100023A34();
  sub_100032D40();
  v8[15] = 0;
  sub_100032C80();
  if (!v1)
  {
    v8[14] = 1;
    sub_100032C90();
    type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
    v8[13] = 2;
    sub_100031C40();
    sub_10002283C(&qword_100045638, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100032CA0();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1000157CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_100031C40();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D4FC(&qword_100045640, &qword_100034A70);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  __chkstk_darwin(v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000239F0(a1, a1[3]);
  sub_100023A34();
  v12 = v23;
  sub_100032D30();
  if (v12)
  {
    sub_100022C1C(a1);
  }

  else
  {
    v23 = v9;
    v13 = v11;
    v26 = 0;
    v14 = v22;
    *v13 = sub_100032C50();
    v13[1] = v15;
    v25 = 1;
    sub_100032C60();
    v18 = v13;
    v13[2] = v16;
    v24 = 2;
    sub_10002283C(&qword_100045648, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100032C70();
    (*(v21 + 8))(v8, v14);
    v17 = v18;
    (*(v19 + 32))(v18 + *(v23 + 24), v5, v3);
    sub_100022B60(v17, v20);
    sub_100022C1C(a1);
    sub_100022A1C(v17, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  }
}

id sub_100015B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_100032900();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 fallbackEntryForContentType:a1 sourceIdentifier:v4 size:sub_100013C84()];

  return v6;
}

uint64_t sub_100015C10(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) == 0)
  {
    return 0;
  }

  v8[7] = v2;
  v8[8] = v3;
  v6 = sub_100031C80();
  v8[3] = v6;
  v8[4] = sub_10002283C(&qword_100045460, &type metadata accessor for PhotosFeatureFlags, &protocol conformance descriptor for PhotosFeatureFlags);
  v7 = sub_100022BBC(v8);
  (*(*(v6 - 8) + 104))(v7, enum case for PhotosFeatureFlags.GyroWidget(_:), v6);
  LOBYTE(v6) = sub_100031C70();
  sub_100022C1C(v8);
  return v6 & (a1 == 1);
}

uint64_t PhotosReliveWidgetEntry.shouldReload.getter(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3 || a2)
  {
    return 0;
  }

  if (*(a3 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image))
  {
    return *(a3 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded);
  }

  return 1;
}

uint64_t PhotosReliveWidgetEntry.date.getter(void *a1)
{
  v3 = sub_100031C40();
  sub_100011D60();
  __chkstk_darwin(v4);
  sub_100011DAC();
  v5 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011EE8(v5);
  sub_100011DBC();
  __chkstk_darwin(v6);
  sub_1000240B0();
  v7 = [a1 startTime];
  if (v7)
  {
    v8 = v7;
    sub_100031C20();

    v9 = sub_1000241B8();
    (v8)(v9);
    sub_100024244(v1, 0);
    v10 = sub_1000240A0();
    return (v8)(v10);
  }

  else
  {
    v12 = sub_1000241AC();
    sub_100024244(v12, v13);
    sub_100031C30();
    v14 = sub_1000241AC();
    result = sub_10000D8C4(v14, v15, v3);
    if (result != 1)
    {
      return sub_100013B00(v1, &qword_100045368, &unk_1000343F0);
    }
  }

  return result;
}

uint64_t PhotosReliveWidgetEntry.endDate.getter(void *a1)
{
  v3 = sub_100031C40();
  sub_100011D60();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100011DAC();
  v9 = v8 - v7;
  v10 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011EE8(v10);
  sub_100011DBC();
  __chkstk_darwin(v11);
  sub_1000240B0();
  v12 = [a1 endTime];
  if (v12)
  {
    v13 = v12;
    sub_100031C20();

    v14 = sub_1000241B8();
    (v13)(v14);
    sub_100024244(v1, 0);
    v15 = sub_1000240A0();
    return (v13)(v15);
  }

  else
  {
    v17 = sub_1000241AC();
    sub_100024244(v17, v18);
    sub_100031C30();
    sub_100031BF0();
    (*(v5 + 8))(v9, v3);
    v19 = sub_1000241AC();
    result = sub_10000D8C4(v19, v20, v3);
    if (result != 1)
    {
      return sub_100013B00(v1, &qword_100045368, &unk_1000343F0);
    }
  }

  return result;
}

void PhotosReliveWidgetEntry.description.getter()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011D74();
  sub_100011DBC();
  __chkstk_darwin(v7);
  sub_100024220();
  switch(v4)
  {
    case 1:
    case 3:
      goto LABEL_11;
    default:
      sub_100032BC0(59);
      v20._countAndFlagsBits = 0xD000000000000012;
      v20._object = 0x8000000100035D30;
      sub_100032950(v20);
      v8 = [v6 localIdentifier];
      v9 = sub_100032910();
      v11 = v10;

      v21._countAndFlagsBits = v9;
      v21._object = v11;
      sub_100032950(v21);

      v22._countAndFlagsBits = 0x746E65746E6F6320;
      v22._object = 0xEE00203A65707954;
      sub_100032950(v22);
      [v6 contentType];
      v23._countAndFlagsBits = PXTimelineContentType.description.getter();
      sub_100032950(v23);

      v24._countAndFlagsBits = 0x20746573736120;
      v24._object = 0xE700000000000000;
      sub_100032950(v24);
      v12 = [v6 assetLocalIdentifier];
      v13 = sub_100032910();
      v15 = v14;

      v25._countAndFlagsBits = v13;
      v25._object = v15;
      sub_100032950(v25);

      v26._countAndFlagsBits = 0x6954747261747320;
      v26._object = 0xEC000000203A656DLL;
      sub_100032950(v26);
      v16 = [v6 startTime];
      if (v16)
      {
        v17 = v16;
        sub_100031C20();

        v18 = sub_100031C40();
        v19 = 0;
      }

      else
      {
        v18 = sub_100031C40();
        v19 = 1;
      }

      sub_10000D904(v0, v19, 1, v18);
      v27._countAndFlagsBits = sub_100032920();
      sub_100032950(v27);

      if (v4 == 2)
      {
        goto LABEL_8;
      }

      if (!v2)
      {
        goto LABEL_11;
      }

      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      if (!swift_dynamicCastClass())
      {
        goto LABEL_9;
      }

LABEL_8:
      v28._countAndFlagsBits = 0xD000000000000016;
      v28._object = 0x8000000100035D50;
      sub_100032950(v28);
      if (v2)
      {
LABEL_9:
        if (*(v2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) == 1)
        {

          v29._countAndFlagsBits = 0x642D6567616D4920;
          v29._object = 0xEF64656461726765;
          sub_100032950(v29);
        }
      }

LABEL_11:
      sub_100011EF4();
      return;
  }
}

uint64_t sub_1000163DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7)
{
  v85 = a6;
  *&v86 = a4;
  v87 = a5;
  v81 = type metadata accessor for PhotosReliveWidgetSize(0);
  __chkstk_darwin(v81);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000D4FC(&qword_1000454A8, &qword_100034920);
  __chkstk_darwin(v9 - 8);
  v11 = &v80 - v10;
  v12 = sub_10000D4FC(&qword_1000454B0, &qword_100034928);
  __chkstk_darwin(v12 - 8);
  v14 = &v80 - v13;
  v15 = sub_100031A10();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100031D80();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v89 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100044620 == -1)
  {
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000334C0;
    *(v54 + 32) = [objc_opt_self() privacyDisclosureEntryForContentType:2];
    *(v54 + 40) = 3;
    *(v54 + 42) = 0;
    *(v54 + 48) = 0;
    return v54;
  }

  swift_once();
  if (!a7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v83 = v20;
  v22 = v19;
  v23 = qword_100048338;
  v88 = a7;
  v24 = v23;
  sub_100031D60();
  sub_100032AD0();
  v84 = v24;
  sub_100031D50();
  sub_100031800();
  v25 = sub_10000D8C4(v14, 1, v15);
  v82 = v22;
  if (v25 == 1)
  {
    sub_100013B00(v14, &qword_1000454B0, &qword_100034928);
    sub_100031800();
    if (v90)
    {
      v26 = v91;
      v27 = v92;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v33 = v87;
    sub_100031800();
    v32 = v83;
    if (v90)
    {
      sub_1000317D0();

      v31 = v91;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v28 = sub_100031A00();
    sub_100013EB4(v28, v11);

    v29 = sub_100031870();
    if (sub_10000D8C4(v11, 1, v29) == 1)
    {
      (*(v16 + 8))(v18, v15);
      sub_100013B00(v11, &qword_1000454A8, &qword_100034920);
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v26 = sub_100031860();
      v27 = v30;
      (*(v16 + 8))(v18, v15);
      (*(*(v29 - 8) + 8))(v11, v29);
    }

    v31 = v27;
    v32 = v83;
    v33 = v87;
  }

  v34 = sub_100016DE0(v26, v27, v88);
  v36 = v35;

  if (!v36)
  {

    goto LABEL_18;
  }

  if (!v31)
  {
LABEL_18:
    v43 = &_swiftEmptyArrayStorage;
    v41 = v88;
    goto LABEL_19;
  }

  v38 = objc_opt_self();

  v39 = sub_100032900();

  v40 = sub_100032900();

  v41 = v88;
  v42 = [v38 timelineFromLibrary:v88 albumIdentifier:v39 widgetIdentifier:v40 widgetSize:{*(v33 + *(v81 + 20)), *(v33 + *(v81 + 20) + 8)}];

  sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);
  v43 = sub_1000329A0();

LABEL_19:
  v44 = sub_1000174C4(v85, v43, v37);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = sub_100031800();
  __chkstk_darwin(v51);
  *(&v80 - 4) = v33;
  *(&v80 - 24) = v52;
  *(&v80 - 23) = 0;
  *(&v80 - 2) = v41;
  sub_10001760C(sub_100023050, (&v80 - 6), v44, v46, v48, v50);
  v54 = v53;
  sub_100032AC0();
  v55 = v84;
  v56 = v89;
  sub_100031D50();
  if (*(v54 + 16))
  {
    swift_unknownObjectRelease();

LABEL_25:
    (*(v32 + 8))(v56, v82);
    return v54;
  }

  if (!v36)
  {
LABEL_24:
    v64 = sub_100032A40();
    sub_100031D30(v64, &_mh_execute_header, v55, "timeline request returned no entries; using fallback no-content state", 69, 2, &_swiftEmptyArrayStorage);
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000334C0;
    v65 = sub_100015B7C(2, v34, v36);
    v67 = v66;
    v69 = v68;

    *(v54 + 32) = v65;
    *(v54 + 40) = v67;
    *(v54 + 41) = BYTE1(v67) & 1;
    *(v54 + 42) = BYTE2(v67) & 1;
    *(v54 + 48) = v69;

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v57 = objc_opt_self();
  sub_10000D4FC(&qword_1000454B8, &unk_100034930);
  v58 = swift_allocObject();
  v86 = xmmword_1000334C0;
  *(v58 + 16) = xmmword_1000334C0;
  *(v58 + 32) = v34;
  *(v58 + 40) = v36;
  swift_bridgeObjectRetain_n();
  isa = sub_100032990().super.isa;

  v60 = v88;
  v61 = [v88 librarySpecificFetchOptions];
  v62 = [v57 fetchAssetCollectionsWithLocalIdentifiers:isa options:v61];

  v63 = [v62 firstObject];
  if (v63)
  {

    v56 = v89;
    v55 = v84;
    goto LABEL_24;
  }

  v70 = sub_100032A40();
  sub_100031D30(v70, &_mh_execute_header, v84, "timeline request returned no entries because album was deleted", 62, 2, &_swiftEmptyArrayStorage);
  v71 = objc_opt_self();
  v72 = v87;
  v73 = sub_100013C84();
  v74 = sub_100021EB4(v34, v36, v73, v71);
  v75 = v80;
  sub_100022B60(v72, v80);
  v76 = v74;
  v77 = v60;
  v78 = v76;
  [v78 contentType];
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025CA8();

  sub_100022A1C(v75, type metadata accessor for PhotosReliveWidgetSize);

  sub_10000D4FC(&qword_100045450, &qword_1000348E0);
  v54 = swift_allocObject();
  *(v54 + 16) = v86;
  *(v54 + 32) = v78;
  *(v54 + 40) = 1;
  *(v54 + 42) = 0;
  *(v54 + 48) = 0;

  swift_unknownObjectRelease();
  (*(v32 + 8))(v89, v82);
  return v54;
}

uint64_t sub_100016DE0(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return a1;
  }

  v6 = qword_100044620;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_100048338;
  if (sub_100032910() == a1 && v8 == a2)
  {
    goto LABEL_19;
  }

  v10 = sub_100032CD0();

  if (v10)
  {
    goto LABEL_20;
  }

  if (sub_100032910() == a1 && v11 == a2)
  {
LABEL_19:
  }

  else
  {
    v13 = sub_100032CD0();

    if ((v13 & 1) == 0)
    {
      v14 = objc_opt_self();
      if ((sub_100021E6C(a1, a2, v14) & 1) == 0)
      {
        v47 = sub_100032A40();
        if (os_log_type_enabled(v7, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v52 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_100021264(a1, a2, &v52);
          _os_log_impl(&_mh_execute_header, v7, v47, "using local identifier %s which will not support ICPL sync", v48, 0xCu);
          sub_100022C1C(v49);
        }

        return a1;
      }

      sub_10000D4FC(&qword_1000454C0, &qword_100035320);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000343D0;
      sub_1000230A4(0, &qword_1000454C8, PHCloudIdentifier_ptr);

      *(v15 + 32) = sub_1000177BC(a1, a2);
      v16 = sub_100032A60();

      v17 = sub_100013E20(v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if (v17)
      {

        if ((v23 & 1) == 0)
        {

          return v19;
        }

        v24 = sub_100032A20();
        if (os_log_type_enabled(v7, v24))
        {
          v25 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v25 = 136315394;
          v26 = sub_100021264(a1, a2, &v52);

          *(v25 + 4) = v26;
          *(v25 + 12) = 2080;
          swift_getErrorValue();
          v27 = sub_100032CF0();
          v29 = sub_100021264(v27, v28, &v52);

          *(v25 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v7, v24, "could not get local identifier for cloud identifier %s with error %s", v25, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_1000230E4(v19, v21, 1, &_swift_errorRelease);
        return 0;
      }

      v39 = sub_100032A20();
      if (os_log_type_enabled(v7, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v41;
        *v40 = 136315138;
        v50 = sub_100021264(a1, a2, &v52);

        *(v40 + 4) = v50;
        v43 = "could not get local identifier for cloud identifier %s";
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

LABEL_20:
  if (sub_100032910() == a1 && v30 == a2)
  {
    v33 = 203;
LABEL_27:

    goto LABEL_28;
  }

  v32 = sub_100032CD0();

  if (v32)
  {
    v33 = 203;
    goto LABEL_28;
  }

  if (sub_100032910() == a1 && v44 == a2)
  {
    v33 = 212;
    goto LABEL_27;
  }

  v46 = sub_100032CD0();

  if (v46)
  {
    v33 = 212;
LABEL_28:
    v34 = objc_opt_self();
    v35 = [a3 librarySpecificFetchOptions];
    v36 = [v34 fetchAssetCollectionsWithType:2 subtype:v33 options:v35];

    v37 = [v36 firstObject];
    if (v37)
    {

      v38 = [v37 localIdentifier];
      a1 = sub_100032910();

      return a1;
    }

    v39 = sub_100032A20();
    if (os_log_type_enabled(v7, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315138;
      v42 = sub_100021264(a1, a2, &v52);

      *(v40 + 4) = v42;
      v43 = "could not find smart album type %s";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v7, v39, v43, v40, 0xCu);
      sub_100022C1C(v41);

      return 0;
    }

LABEL_45:

    return 0;
  }

  result = sub_100032C10();
  __break(1u);
  return result;
}

unint64_t sub_1000174C4(uint64_t a1, unint64_t a2, __n128 a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v11 = sub_100032C30();

    return v11;
  }

  v5 = sub_100021144(a2);
  v6 = sub_100022C68(0, a1, v5);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v8 < 0)
  {
    goto LABEL_16;
  }

  sub_100022CB4(0, a2);
  sub_100022CB4(v8, a2);
  if ((a2 & 0xC000000000000001) != 0 && v8)
  {
    sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      sub_100032BD0(v9);
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_10001760C(void (*a1)(unint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v28 = a6 >> 1;
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v6;
  if (!v8)
  {
    return;
  }

  v7 = a4;
  v36 = &_swiftEmptyArrayStorage;
  sub_1000217D4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v36;
    v26 = &v7[8 * a5];
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((a5 + v10) >= v28 || v10 >= v8)
      {
        goto LABEL_16;
      }

      v30 = *&v26[8 * v10];
      v7 = v30;
      a1(&v31, &v30);
      if (v9)
      {
        goto LABEL_19;
      }

      v9 = 0;

      v14 = v31;
      v15 = v32;
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v36 = v11;
      v20 = v11[2];
      v19 = v11[3];
      v7 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        v25 = v31;
        v22 = v32;
        v24 = v34;
        v23 = v35;
        sub_1000217D4((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v24;
        v15 = v22;
        v14 = v25;
        v11 = v36;
      }

      v11[2] = v7;
      v21 = &v11[3 * v20];
      v21[4] = v14;
      *(v21 + 40) = v15;
      *(v21 + 41) = v16;
      *(v21 + 42) = v17;
      v21[6] = v18;
      ++v10;
      if (v12 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  __break(1u);
}

id sub_1000177BC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_100032900();

  v4 = [v2 initWithStringValue:v3];

  return v4;
}

uint64_t sub_100017830()
{
  sub_100023EC8();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  v6 = sub_100032800();
  v0[10] = v6;
  sub_100023E68(v6);
  v0[11] = v7;
  v0[12] = sub_1000240D0();
  v8 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[13] = v8;
  sub_100023E68(v8);
  v0[14] = v9;
  v0[15] = sub_1000240D0();
  v10 = sub_100023E90();

  return _swift_task_switch(v10);
}

uint64_t sub_100017934()
{
  sub_10002422C();
  v1 = *(v0 + 120);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v2 = sub_1000241F4();
  v3(v2);
  sub_100024014();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_100017A54;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)(v6);
}

uint64_t sub_100017A54()
{
  sub_100023EC8();
  sub_100024068();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  v3 = sub_100023E90();

  return _swift_task_switch(v3);
}

uint64_t sub_100017B54()
{
  sub_10002422C();
  v0 = sub_100023F8C();
  v1(v0);

  v2 = sub_100024118();

  return v3(v2);
}

uint64_t sub_100017C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v35 = a6;
  v37 = a4;
  v38 = a5;
  v32 = a3;
  v33 = a1;
  v41 = sub_100032670();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000326A0();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v30 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v31 = &v29 - v12;
  v14 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v36 = sub_100032A90();
  (*(v15 + 16))(v18, v35, v14);
  (*(v11 + 16))(v13, v33, v10);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = (v16 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = a3;
  v22 = v38;
  *(v21 + 4) = v37;
  *(v21 + 5) = v22;
  (*(v15 + 32))(&v21[v19], v18, v14);
  (*(v11 + 32))(&v21[v20], v31, v30);
  aBlock[4] = sub_10002344C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_1000429B0;
  v23 = _Block_copy(aBlock);

  v24 = v39;
  sub_100032680();
  v45 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908, &protocol conformance descriptor for [A]);
  v26 = v40;
  v25 = v41;
  sub_100032B60();
  v27 = v36;
  sub_100032AA0();
  _Block_release(v23);

  (*(v44 + 8))(v26, v25);
  (*(v42 + 8))(v24, v43);
}

uint64_t sub_1000180E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v8 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = sub_100032800();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v9 + 16))(v11, a6, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v11, v8);
  sub_100018AB8(a1, v20, v21, v22, v15, sub_1000235DC, v17);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100018300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t *, __n128), uint64_t a7)
{
  v94 = a7;
  v77 = a6;
  v91 = a3;
  v92 = a4;
  v89 = a1;
  v90 = a2;
  v8 = sub_1000327C0();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PhotosReliveWidgetSize(0);
  __chkstk_darwin(v88);
  v95 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100032800();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v73 - v15;
  v16 = sub_100032750();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v73 - v21;
  v93 = sub_10001A5E8();
  v23 = a5;
  sub_1000327E0();
  v24 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    swift_once();
  }

  v25 = qword_100048338;
  v26 = *(v17 + 16);
  v78 = v22;
  v26(v20, v22, v16);
  v27 = *(v12 + 16);
  v83 = v23;
  v81 = v27;
  v27(v96, v23, v11);
  v28 = os_log_type_enabled(v25, v24);
  v80 = v16;
  v79 = v17;
  v76 = v25;
  v87 = v12;
  if (v28)
  {
    v29 = v17;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v74 = v11;
    v32 = v31;
    v97 = v31;
    *v30 = 136446466;
    sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v33 = v25;
    v34 = sub_100032CB0();
    v35 = v16;
    v37 = v36;
    v75 = *(v29 + 8);
    v75(v20, v35);
    v38 = sub_100021264(v34, v37, &v97);

    *(v30 + 4) = v38;
    *(v30 + 12) = 1026;
    v39 = v96;
    LODWORD(v38) = sub_1000327F0() & 1;
    v40 = *(v12 + 8);
    v40(v39, v74);
    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v33, v24, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v30, 0x12u);
    sub_100022C1C(v32);
    v11 = v74;
  }

  else
  {
    v40 = *(v12 + 8);
    v40(v96, v11);
    v75 = *(v17 + 8);
    v75(v20, v16);
  }

  v41 = v82;
  v81(v82, v83, v11);
  v42 = v84;
  sub_1000327D0();
  swift_getKeyPath();
  v43 = sub_1000327B0();

  (*(v85 + 8))(v42, v86);
  if (v43)
  {
    v44 = *(v43 + 16);
    v45 = v44 == 0;
    if (v44)
    {
      v46 = *(v43 + 32);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v45 = 1;
  }

  v47 = v95;
  sub_1000327E0();
  sub_1000327A0();
  v49 = v48;
  v51 = v50;
  v40(v41, v11);
  v53 = v88;
  v52 = v89;
  v54 = &v47[*(v88 + 20)];
  *v54 = v49;
  *(v54 + 1) = v51;
  v55 = &v47[*(v53 + 24)];
  *v55 = v46;
  v55[8] = v45;
  v56 = v93;
  result = sub_1000163DC(v52, v90, v91, v92, v47, 1, v93);
  if (*(result + 16))
  {
    v58 = *(result + 32);
    v59 = *(result + 40);
    v60 = *(result + 41);
    v61 = *(result + 42);
    v62 = *(result + 48);

    v63 = v58;

    v97 = v63;
    v98 = v59;
    v99 = v60;
    v100 = v61;
    v101 = v62;
    (v77)(&v97);
    v64 = sub_100032A40();
    v65 = v76;
    if (os_log_type_enabled(v76, v64))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v97 = v67;
      *v66 = 136446210;
      v63 = v63;

      PhotosReliveWidgetEntry.description.getter();
      v69 = v68;
      v71 = v70;

      v72 = sub_100021264(v69, v71, &v97);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v64, "snapshot request completed with entry %{public}s", v66, 0xCu);
      sub_100022C1C(v67);
    }

    sub_100022A1C(v95, type metadata accessor for PhotosReliveWidgetSize);
    v75(v78, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100018AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100023FC4();
  v86 = v8;
  v87 = v9;
  v11 = v10;
  v100 = v12;
  v101 = v13;
  v98 = v14;
  v99 = v15;
  sub_1000327C0();
  sub_100011D60();
  v94 = v17;
  v95 = v16;
  __chkstk_darwin(v16);
  sub_100011DAC();
  v93 = v19 - v18;
  v20 = sub_100023ED4();
  v97 = type metadata accessor for PhotosReliveWidgetSize(v20);
  sub_100011D74();
  __chkstk_darwin(v21);
  sub_100011DAC();
  v103 = (v23 - v22);
  sub_100023ED4();
  v24 = sub_100032800();
  sub_100011D60();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100023E54();
  v90 = v28;
  __chkstk_darwin(v29);
  sub_1000240C0();
  v104 = sub_100032750();
  sub_100011D60();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100011D9C();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v38 = &v83 - v37;
  v102 = sub_10001A5E8();
  sub_1000327E0();
  v39 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    sub_100023F50(&qword_100044620);
  }

  v40 = qword_100048338;
  v41 = *(v31 + 16);
  v88 = v38;
  v41(v35, v38, v104);
  v91 = *(v26 + 16);
  v92 = v11;
  v91(v7, v11, v24);
  v42 = os_log_type_enabled(v40, v39);
  v43 = v24;
  v89 = v31;
  v85 = v40;
  v96 = v26;
  if (v42)
  {
    v44 = swift_slowAlloc();
    HIDWORD(v83) = v39;
    v45 = v44;
    v46 = sub_100024188();
    v105 = v46;
    *v45 = 136446466;
    sub_100023DAC();
    sub_10002283C(v47, v48, &protocol conformance descriptor for WidgetFamily);
    v49 = v40;
    v50 = sub_100032CB0();
    v84 = *(v31 + 8);
    v84(v35, v104);
    v51 = sub_100011F64();
    sub_100021264(v51, v52, v53);
    sub_100024214();

    *(v45 + 4) = v50;
    *(v45 + 12) = 1026;
    v54 = sub_1000327F0() & 1;
    v55 = *(v26 + 8);
    v55(v7, v24);
    *(v45 + 14) = v54;
    v56 = v49;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v56, BYTE4(v83), "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v45, 0x12u);
    sub_100022C1C(v46);
    sub_100023FAC(v46);
    sub_100023FAC(v45);
  }

  else
  {
    v57 = *(v26 + 8);
    v57(v7, v24);
    v58 = v35;
    v55 = v57;
    v84 = *(v31 + 8);
    v84(v58, v104);
  }

  v59 = v90;
  v91(v90, v92, v43);
  v60 = v93;
  sub_1000327D0();
  KeyPath = swift_getKeyPath();
  sub_1000327B0();
  sub_100024214();

  v62 = sub_100024030();
  v63(v62);
  v64 = v102;
  if (v60)
  {
    sub_100023EE0();
    if (v65)
    {
      v66 = *(v60 + 32);
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
    KeyPath = 1;
  }

  v67 = v103;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  v55(v59, v43);
  sub_1000240F4();
  *v68 = v66;
  *(v68 + 8) = KeyPath;
  v70 = sub_1000163DC(v69, v99, v100, v101, v67, 1, v64);
  if (*(v70 + 16))
  {
    sub_10002403C(v70);
    v71 = KeyPath;

    v72 = sub_100023F70();
    v87(v72);
    v73 = sub_100032A40();
    v74 = v85;
    if (os_log_type_enabled(v85, v73))
    {
      v75 = sub_10002425C();
      v76 = sub_100024188();
      v105 = v76;
      *v75 = 136446210;
      v71 = v71;

      sub_100023F70();
      PhotosReliveWidgetEntry.description.getter();
      v78 = v77;
      v80 = v79;

      v81 = sub_100021264(v78, v80, &v105);

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v73, "snapshot request completed with entry %{public}s", v75, 0xCu);
      sub_100022C1C(v76);
      sub_100023FAC(v76);
      sub_100023FAC(v75);
    }

    sub_100023D94();
    sub_100022A1C(v103, v82);
    v84(v88, v104);
    sub_100023FE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100019100(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100019144()
{
  sub_100023EC8();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_100032800();
  v0[8] = v7;
  sub_100023E68(v7);
  v0[9] = v8;
  v0[10] = sub_1000240D0();
  v9 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[11] = v9;
  sub_100023E68(v9);
  v0[12] = v10;
  v0[13] = sub_1000240D0();
  v11 = sub_100023E90();

  return _swift_task_switch(v11);
}

uint64_t sub_100019248()
{
  sub_10002422C();
  v1 = *(v0 + 104);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = sub_1000241F4();
  v3(v2);
  sub_100024014();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  *v5 = v0;
  v5[1] = sub_100019378;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)(v6);
}

uint64_t sub_100019378()
{
  sub_100023EC8();
  sub_100024068();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  v3 = sub_100023E90();

  return _swift_task_switch(v3);
}

uint64_t sub_100019478()
{
  sub_100023EC8();
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_100024238();

  return v1();
}

uint64_t sub_1000194F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v35 = a6;
  v37 = a4;
  v38 = a5;
  v32 = a3;
  v33 = a1;
  v41 = sub_100032670();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000326A0();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v30 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v31 = &v29 - v12;
  v14 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v36 = sub_100032A90();
  (*(v15 + 16))(v18, v35, v14);
  (*(v11 + 16))(v13, v33, v10);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = (v16 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = a3;
  v22 = v38;
  *(v21 + 4) = v37;
  *(v21 + 5) = v22;
  (*(v15 + 32))(&v21[v19], v18, v14);
  (*(v11 + 32))(&v21[v20], v31, v30);
  aBlock[4] = sub_100023218;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_100042938;
  v23 = _Block_copy(aBlock);

  v24 = v39;
  sub_100032680();
  v45 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908, &protocol conformance descriptor for [A]);
  v26 = v40;
  v25 = v41;
  sub_100032B60();
  v27 = v36;
  sub_100032AA0();
  _Block_release(v23);

  (*(v44 + 8))(v26, v25);
  (*(v42 + 8))(v24, v43);
}

uint64_t sub_1000199D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v8 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = sub_100032800();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v9 + 16))(v11, a6, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v11, v8);
  sub_100019BF4(a1, v20, v21, v22, v15, sub_100023240, v17);

  return (*(v13 + 8))(v15, v12);
}

void sub_100019BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100023FC4();
  v127 = v12;
  v128 = v11;
  v14 = v13;
  v120 = v15;
  v130 = v16;
  v131 = v17;
  v129 = v18;
  v126 = sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  sub_100011D60();
  v137 = v19;
  __chkstk_darwin(v20);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v21);
  sub_1000240C0();
  v118 = sub_10000D4FC(&qword_1000453D8, &qword_100034878);
  sub_100011D74();
  __chkstk_darwin(v22);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v23);
  v138 = &v108[-v24];
  sub_100023ED4();
  v25 = sub_1000327C0();
  sub_100011D60();
  v111 = v26;
  __chkstk_darwin(v27);
  sub_100011DAC();
  v110 = v29 - v28;
  sub_100023ED4();
  v116 = sub_100032800();
  sub_100011D60();
  v115 = v30;
  __chkstk_darwin(v31);
  sub_100011DAC();
  v34 = v33 - v32;
  v114 = type metadata accessor for PhotosReliveWidgetSize(0);
  sub_100011D74();
  __chkstk_darwin(v35);
  sub_100011DAC();
  v136 = (v37 - v36);
  sub_100023ED4();
  v38 = sub_100032750();
  sub_100011D60();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v42);
  sub_100024090();
  __chkstk_darwin(v43);
  v45 = &v108[-v44];
  v135 = sub_10001A5E8();
  v117 = v14;
  sub_1000327E0();
  v46 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    sub_100023F50(&qword_100044620);
  }

  v47 = qword_100048338;
  v48 = *(v40 + 16);
  v134 = v45;
  v113 = v40 + 16;
  v112 = v48;
  v48(v7, v45, v38);
  v49 = os_log_type_enabled(v47, v46);
  v125 = v8;
  v123 = v38;
  v122 = v40;
  v132 = v47;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v109 = v46;
    v51 = v50;
    v52 = swift_slowAlloc();
    v139 = v52;
    *v51 = 136446466;
    sub_100023DAC();
    sub_10002283C(v53, v54, &protocol conformance descriptor for WidgetFamily);
    v55 = sub_100032CB0();
    v56 = v38;
    v58 = v57;
    v133 = *(v40 + 8);
    v133(v7, v56);
    v59 = sub_100021264(v55, v58, &v139);

    *(v51 + 4) = v59;
    *(v51 + 12) = 2080;
    v140 = v129;
    v141 = v130;
    v60 = v120;
    v142 = v131;
    v143 = v120;

    v61 = sub_100032920();
    v63 = sub_100021264(v61, v62, &v139);

    *(v51 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v109, "timeline requested for size %{public}s intent: %s", v51, 0x16u);
    swift_arrayDestroy();
    v64 = v52;
    v8 = v125;
    sub_100023FAC(v64);
    sub_100023FAC(v51);
    v65 = v124;
  }

  else
  {
    v133 = *(v40 + 8);
    v133(v7, v38);
    v65 = v124;
    v60 = v120;
  }

  v66 = v115;
  v67 = v116;
  (*(v115 + 16))(v34, v117, v116);
  v68 = v110;
  sub_1000327D0();
  swift_getKeyPath();
  v69 = sub_1000327B0();

  (*(v111 + 8))(v68, v25);
  if (v69)
  {
    sub_100023EE0();
    if (v70)
    {
      v71 = *(v69 + 32);
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
    LOBYTE(v25) = 1;
  }

  v72 = v136;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v66 + 8))(v34, v67);
  v73 = v114;
  v74 = &v72[*(v114 + 20)];
  *v74 = v9;
  *(v74 + 1) = v10;
  v75 = &v72[*(v73 + 24)];
  *v75 = v71;
  v75[8] = v25;
  v76 = v135;
  v77 = sub_1000163DC(v129, v130, v131, v60, v72, 2, v135);
  v78 = v118;
  v79 = *(v118 + 48);
  v80 = v138;
  v81 = v134;
  sub_10001A790(v138, &v138[v79], v77, v134);
  v82 = v119;
  sub_100013C14(v80, v119, &qword_1000453D8, &qword_100034878);
  v83 = *(v78 + 48);
  sub_1000226C4();
  v84 = v81;
  sub_100032840();
  sub_100013B00(v82 + v83, &qword_1000453E0, &qword_1000348B0);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025F70();
  [v76 setWidgetTimelineGeneratedForDisplaySize:{*&v140, *&v141}];
  sub_10001498C(&v80[v79], v81);
  v85 = sub_100032A40();
  v86 = v121;
  v87 = v123;
  v112(v121, v81, v123);
  v88 = v126;
  (*(v137 + 16))(v65, v8, v126);
  if (os_log_type_enabled(v132, v85))
  {
    v89 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v140 = v131;
    *v89 = 136446466;
    sub_100023DAC();
    sub_10002283C(v90, v91, &protocol conformance descriptor for WidgetFamily);
    sub_100032CB0();
    v92 = v137;
    LODWORD(v130) = v85;
    v133(v86, v87);
    v93 = sub_10002413C();

    *(v89 + 4) = v93;
    *(v89 + 12) = 2082;
    sub_100032850();
    v94 = sub_1000329B0();
    v95 = v65;
    v97 = v96;

    v98 = v87;
    v99 = *(v92 + 8);
    v100 = v95;
    v84 = v134;
    v99(v100, v88);
    v101 = v98;
    v102 = v94;
    v8 = v125;
    v103 = sub_100021264(v102, v97, &v140);

    *(v89 + 14) = v103;
    _os_log_impl(&_mh_execute_header, v132, v130, "timeline request completed for size %{public}s with entries %{public}s", v89, 0x16u);
    v104 = v131;
    swift_arrayDestroy();
    sub_100023FAC(v104);
    v105 = v89;
    v106 = v133;
    sub_100023FAC(v105);
  }

  else
  {
    v101 = v87;
    v99 = *(v137 + 8);
    v99(v65, v88);
    v106 = v133;
    v133(v86, v101);
  }

  v128(v8);

  v99(v8, v88);
  sub_100013B00(v138, &qword_1000453D8, &qword_100034878);
  sub_100023D94();
  sub_100022A1C(v136, v107);
  v106(v84, v101);
  sub_100023FE0();
}

id sub_10001A5E8()
{
  if (sub_10001F0C4())
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedPhotoLibrary];
  v10 = 0;
  v1 = [v0 openAndWaitWithUpgrade:0 error:&v10];
  v2 = v10;
  if (!v1)
  {
    v4 = v2;
    sub_100031B10();

    swift_willThrow();
    v5 = sub_100032A20();
    if (qword_100044630 != -1)
    {
      sub_100023F30(&qword_100044630);
    }

    v6 = qword_100048348;
    if (os_log_type_enabled(qword_100048348, v5))
    {
      v7 = sub_10002425C();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v6, v5, "Cannot open photo library %@", v7, 0xCu);
      sub_100013B00(v8, &qword_100045468, &qword_1000348E8);
      sub_100023FAC(v8);
      sub_100023FAC(v7);
    }

    exit(0);
  }

  return v0;
}

void *sub_10001A790(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v120 = a1;
  v7 = sub_100032750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v117 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  __chkstk_darwin(v10 - 8);
  v119 = &v105 - v11;
  v12 = sub_100031C40();
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = __chkstk_darwin(&v105 - v15);
  v18 = &v105 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = (&v105 - v20);
  v22 = __chkstk_darwin(v19);
  v27 = &v105 - v26;
  v28 = *(a3 + 16);
  v29 = (a3 + 48);
  if (v28)
  {
    while (1)
    {
      v30 = *v29;
      if (*v29)
      {
        if (!*(v29 - 8) && (!*(v30 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image) || *(v30 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) == 1))
        {
          break;
        }
      }

      v29 += 3;
      if (!--v28)
      {
        goto LABEL_7;
      }
    }

    v108 = v25;
    v109 = v22;
    v110 = v24;
    v105 = v8;
    v106 = v7;
    v107 = a3;
    v112 = v23;
    v115 = a2;
    v37 = *(v29 - 2);

    v38 = a4;
    v39 = v37;
    v40 = [v39 localIdentifier];
    v41 = v27;
    v42 = sub_100032910();
    v44 = v43;

    v111 = v42;
    v45 = v42;
    v46 = v41;
    v116 = v44;
    v113 = v38;
    v47 = sub_10001F99C(v45, v44, v38, 300.0);
    sub_100031C10();
    v114 = v39;
    v48 = [v39 endTime];
    v118 = v21;
    if (v48)
    {
      v49 = v48;
      sub_100031C20();

      v50 = v112;
      v51 = v12;
      v52 = v41;
      isa = v112[4].isa;
      v54 = v119;
      (isa)(v119, v18, v51);
      sub_10000D904(v54, 0, 1, v51);
      v55 = v51;
      (isa)(v118, v54, v51);
      v46 = v52;
    }

    else
    {
      v56 = v119;
      sub_10000D904(v119, 1, 1, v12);
      sub_100031BD0();
      v55 = v12;
      v57 = sub_10000D8C4(v56, 1, v12);
      v50 = v112;
      if (v57 != 1)
      {
        sub_100013B00(v56, &qword_100045368, &unk_1000343F0);
      }
    }

    sub_100031BE0();
    v58 = v116;
    if (v59 <= 300.0)
    {
      v80 = sub_100032A10();
      if (qword_100044618 != -1)
      {
        swift_once();
      }

      v81 = qword_100045360;
      v82 = v50[2].isa;
      v119 = v46;
      v82(v109, v46, v55);
      v83 = v108;
      v82(v108, v118, v55);
      v117 = v81;
      if (os_log_type_enabled(v81, v80))
      {
        v84 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v121[0] = v112;
        *v84 = 136446722;
        v85 = sub_100021264(v111, v58, v121);

        *(v84 + 4) = v85;
        *(v84 + 12) = 2082;
        sub_10002283C(&qword_100045420, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LODWORD(v116) = v80;
        v86 = v109;
        v87 = sub_100032CB0();
        v89 = v88;
        v90 = v50[1].isa;
        v90(v86, v55);
        v91 = sub_100021264(v87, v89, v121);

        *(v84 + 14) = v91;
        *(v84 + 22) = 2082;
        v92 = v108;
        v93 = sub_100032CB0();
        v95 = v94;
        v90(v92, v55);
        v96 = sub_100021264(v93, v95, v121);

        *(v84 + 24) = v96;
        _os_log_impl(&_mh_execute_header, v117, v116, "not enough time to schedule reload for entry id %{public}s at %{public}s for entry ending at %{public}s", v84, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v90 = v50[1].isa;
        v90(v83, v55);
        v90(v109, v55);
      }

      v99 = v115;
      v100 = sub_10001F348(v107);
      v102 = v101;
      v104 = v103;
      sub_10001F3D8(v120, v99, v100, v101, v103, v113);
      sub_100022ACC(v100, v102, v104);

      v90(v118, v55);
      return (v90)(v119, v55);
    }

    else
    {
      LODWORD(v119) = sub_100032A40();
      if (qword_100044618 != -1)
      {
        swift_once();
      }

      v60 = qword_100045360;
      v62 = v105;
      v61 = v106;
      v63 = v117;
      (*(v105 + 16))(v117, v113, v106);
      v64 = v55;
      v113 = v50[2].isa;
      v113(v110, v46, v55);
      v112 = v60;
      if (os_log_type_enabled(v60, v119))
      {
        v65 = swift_slowAlloc();
        v109 = v50 + 2;
        v66 = v65;
        v108 = swift_slowAlloc();
        v121[0] = v108;
        *v66 = 136446722;
        sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
        v67 = v63;
        v68 = sub_100032CB0();
        v70 = v69;
        (*(v62 + 8))(v67, v61);
        v71 = sub_100021264(v68, v70, v121);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2082;
        *(v66 + 14) = sub_100021264(v111, v116, v121);
        *(v66 + 22) = 2082;
        sub_10002283C(&qword_100045420, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v72 = v110;
        v73 = sub_100032CB0();
        v75 = v74;
        v76 = v50[1].isa;
        v76(v72, v64);
        v77 = sub_100021264(v73, v75, v121);

        *(v66 + 24) = v77;
        _os_log_impl(&_mh_execute_header, v112, v119, "scheduling reload for widget family %{public}s entry id %{public}s at %{public}s", v66, 0x20u);
        swift_arrayDestroy();

        v78 = v111;

        v79 = v116;
      }

      else
      {
        v76 = v50[1].isa;
        v76(v110, v55);
        (*(v62 + 8))(v63, v61);
        v79 = v116;
        v78 = v111;
      }

      v97 = v115;
      *v115 = v78;
      *(v97 + 8) = v79;
      *(v97 + 16) = v47;
      v98 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
      v113(v97 + *(v98 + 24), v46, v64);
      sub_100032770();

      v76(v118, v64);
      v76(v46, v64);
      return sub_10000D904(v97, 0, 1, v98);
    }
  }

  else
  {
LABEL_7:
    v31 = sub_10001F348(a3);
    v33 = v32;
    v35 = v34;
    sub_10001F3D8(v120, a2, v31, v32, v34, a4);

    return sub_100022ACC(v31, v33, v35);
  }
}

uint64_t sub_10001B270(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001B330;

  return sub_100017830();
}

uint64_t sub_10001B330(uint64_t a1, int a2, uint64_t a3)
{
  sub_100024068();
  v8 = *(v7 + 16);
  v9 = *v3;
  sub_100023EA0();
  *v10 = v9;

  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 9) = BYTE1(a2) & 1;
  *(v8 + 10) = BYTE2(a2) & 1;
  *(v8 + 16) = a3;
  sub_100024238();

  return v11();
}

uint64_t sub_10001B458()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100023D64;

  return sub_100019144();
}

uint64_t sub_10001B520(uint64_t *a1, uint64_t a2, double (*a3)(uint64_t *, __n128), uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];

  return sub_100018300(v7, v8, v9, v10, a2, a3, a4);
}

uint64_t sub_10001B5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001B66C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10001B66C()
{
  sub_100023EC8();
  sub_100024068();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  sub_100024238();

  return v3();
}

uint64_t sub_10001B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100023D64;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

id sub_10001B80C(uint64_t a1, void *a2)
{
  if (qword_100044630 != -1)
  {
    sub_100023F30(&qword_100044630);
  }

  v3 = qword_100048348;
  *a2 = qword_100048348;

  return v3;
}

uint64_t sub_10001B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100031D80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100044628 != -1)
  {
    swift_once();
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000334C0;
    *(v26 + 32) = [objc_opt_self() privacyDisclosureEntryForContentType:1];
    *(v26 + 40) = 3;
    *(v26 + 42) = 0;
    *(v26 + 48) = 0;
    return v26;
  }

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v31 = v8;
  v12 = qword_100048340;
  v13 = a5;
  v14 = v12;
  sub_100031D60();
  sub_100032AD0();
  sub_100031D50();
  sub_100031800();
  v15 = v33;
  sub_100031800();
  LOBYTE(v12) = v32;
  v16 = objc_opt_self();
  v17 = (a3 + *(type metadata accessor for PhotosReliveWidgetSize(0) + 20));
  v18 = [v16 timelineFromLibrary:v13 forWidgetSize:sub_100013C84() timelineSize:{*v17, v17[1]}];
  sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);
  v19 = sub_1000329A0();

  v21 = sub_1000174C4(a4, v19, v20);
  __chkstk_darwin(v21);
  *(&v30 - 4) = a3;
  *(&v30 - 24) = v15;
  *(&v30 - 23) = v12;
  *(&v30 - 2) = v13;
  sub_10001760C(sub_100023D44, (&v30 - 6), v21, v22, v23, v24);
  v26 = v25;
  sub_100032AC0();
  sub_100031D50();
  if (!*(v26 + 16))
  {

    v27 = sub_100032A40();
    sub_100031D30(v27, &_mh_execute_header, v14, "timeline request returned no entries; using fallback no-content state", 69, 2, &_swiftEmptyArrayStorage);
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000334C0;
    v28 = objc_opt_self();
    *(v26 + 32) = [v28 fallbackEntryForContentType:1 sourceIdentifier:0 size:sub_100013C84()];
    *(v26 + 40) = 1;
    *(v26 + 42) = 0;
    *(v26 + 48) = 0;
  }

  swift_unknownObjectRelease();

  (*(v9 + 8))(v11, v31);
  return v26;
}

uint64_t sub_10001BC5C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PhotosReliveWidgetSize(0);
  v11 = sub_100011EE8(v10);
  __chkstk_darwin(v11);
  sub_100011DAC();
  sub_100024220();
  v12 = *a1;
  sub_100022B60(a2, v5);
  v13 = v12;
  sub_100015C10([v13 contentType], a3 & 0x101);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025CA8();
  v15 = v14;
  sub_100023D94();
  result = sub_100022A1C(v5, v16);
  *a5 = v13;
  *(a5 + 8) = 0;
  *(a5 + 9) = a3 & 1;
  *(a5 + 10) = HIBYTE(a3) & 1;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_10001BDA0()
{
  sub_100023EC8();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = sub_100032800();
  v0[8] = v4;
  sub_100023E68(v4);
  v0[9] = v5;
  v0[10] = sub_1000240D0();
  v6 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[11] = v6;
  sub_100023E68(v6);
  v0[12] = v7;
  v0[13] = sub_1000240D0();
  v8 = sub_100023E90();

  return _swift_task_switch(v8);
}

uint64_t sub_10001BEA0(uint64_t a1)
{
  v2 = *(v1 + 104);
  v9 = *(v1 + 40);
  v3 = sub_1000241F4();
  v4(v3);
  sub_100024014();
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  *(v1 + 120) = v6;
  *v6 = v1;
  v6[1] = sub_10001BFC0;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_10001BFC0()
{
  sub_100023EC8();
  sub_100024068();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  v3 = sub_100023E90();

  return _swift_task_switch(v3);
}

uint64_t sub_10001C0C0()
{
  sub_10002422C();
  v0 = sub_100023F8C();
  v1(v0);

  v2 = sub_100024118();

  return v3(v2);
}

uint64_t sub_10001C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v31 = a3;
  v34 = sub_100032670();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000326A0();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v27 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v30 = sub_100032A90();
  (*(v13 + 16))(v16, v29, v12);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v28;
  *(v19 + 24) = v20;
  (*(v13 + 32))(v19 + v17, v16, v12);
  (*(v9 + 32))(v19 + v18, v11, v27);
  aBlock[4] = sub_100022F2C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_1000428C0;
  v21 = _Block_copy(aBlock);

  v22 = v32;
  sub_100032680();
  v38 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908, &protocol conformance descriptor for [A]);
  v24 = v33;
  v23 = v34;
  sub_100032B60();
  v25 = v30;
  sub_100032AA0();
  _Block_release(v21);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v22, v36);
}

uint64_t sub_10001C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v6 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_100032800();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v7 + 16))(v9, a4, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  sub_10001D050(a1, v21, v13, sub_100023D40, v15, v16, v17, v18);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10001C840(void *a1, int a2, uint64_t a3)
{

  v4 = a1;
  sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  return sub_1000329F0();
}

uint64_t sub_10001C8A4(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t *, __n128), uint64_t a5)
{
  v80 = a5;
  v76 = a4;
  v88 = a1;
  v89 = a2;
  v6 = sub_1000327C0();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PhotosReliveWidgetSize(0);
  __chkstk_darwin(v87);
  v91 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100032800();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v81 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v71 - v13;
  v14 = sub_100032750();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v71 - v19;
  v21 = a3;
  sub_1000327E0();
  v90 = sub_10001A5E8();
  v22 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    swift_once();
  }

  v23 = qword_100048340;
  v24 = *(v15 + 16);
  v77 = v20;
  v24(v18, v20, v14);
  v25 = v21;
  v26 = *(v10 + 16);
  v82 = v25;
  v26(v92);
  v27 = os_log_type_enabled(v23, v22);
  v78 = v15;
  v79 = v14;
  v75 = v23;
  v86 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v73 = v22;
    v29 = v15;
    v30 = v28;
    v72 = swift_slowAlloc();
    v93 = v72;
    *v30 = 136446466;
    sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v31 = v23;
    v32 = sub_100032CB0();
    v33 = v14;
    v35 = v34;
    v74 = *(v29 + 8);
    v74(v18, v33);
    v36 = sub_100021264(v32, v35, &v93);

    *(v30 + 4) = v36;
    *(v30 + 12) = 1026;
    v37 = v92;
    LODWORD(v36) = sub_1000327F0() & 1;
    v38 = *(v10 + 8);
    v38(v37, v9);
    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v31, v73, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v30, 0x12u);
    sub_100022C1C(v72);
    v39 = v91;

    v40 = v9;
    v41 = v81;
  }

  else
  {
    v38 = *(v10 + 8);
    v38(v92, v9);
    v74 = *(v15 + 8);
    v74(v18, v14);
    v40 = v9;
    v41 = v81;
    v39 = v91;
  }

  (v26)(v41, v82, v40);
  v42 = v83;
  sub_1000327D0();
  swift_getKeyPath();
  v43 = sub_1000327B0();

  (*(v84 + 8))(v42, v85);
  if (v43)
  {
    v44 = *(v43 + 16);
    v45 = v44 == 0;
    if (v44)
    {
      v46 = *(v43 + 32);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v45 = 1;
  }

  sub_1000327E0();
  sub_1000327A0();
  v48 = v47;
  v50 = v49;
  v38(v41, v40);
  v52 = v87;
  v51 = v88;
  v53 = (v39 + *(v87 + 20));
  *v53 = v48;
  v53[1] = v50;
  v54 = v39 + *(v52 + 24);
  *v54 = v46;
  *(v54 + 8) = v45;
  result = sub_10001B868(v51, v89, v39, 1, v90);
  if (*(result + 16))
  {
    v56 = *(result + 32);
    v57 = *(result + 40);
    v58 = *(result + 41);
    v59 = *(result + 42);
    v60 = *(result + 48);

    v61 = v56;

    v93 = v61;
    v94 = v57;
    v95 = v58;
    v96 = v59;
    v97 = v60;
    (v76)(&v93);
    v62 = sub_100032A40();
    v63 = v75;
    if (os_log_type_enabled(v75, v62))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v93 = v65;
      *v64 = 136446210;
      v61 = v61;

      PhotosReliveWidgetEntry.description.getter();
      v67 = v66;
      v69 = v68;

      v70 = sub_100021264(v67, v69, &v93);

      *(v64 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v62, "snapshot request completed with entry %{public}s", v64, 0xCu);
      sub_100022C1C(v65);
    }

    sub_100022A1C(v91, type metadata accessor for PhotosReliveWidgetSize);
    v74(v77, v79);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100023FC4();
  v90 = v13;
  v91 = v12;
  v15 = v14;
  v101 = v16;
  v102 = v17;
  sub_1000327C0();
  sub_100011D60();
  v97 = v19;
  v98 = v18;
  __chkstk_darwin(v18);
  sub_100011DAC();
  v96 = v21 - v20;
  v22 = sub_100023ED4();
  v100 = type metadata accessor for PhotosReliveWidgetSize(v22);
  sub_100011D74();
  __chkstk_darwin(v23);
  sub_100011DAC();
  v104 = v25 - v24;
  sub_100023ED4();
  v105 = sub_100032800();
  sub_100011D60();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100011D9C();
  sub_100024090();
  __chkstk_darwin(v29);
  sub_1000240C0();
  v30 = sub_100032750();
  sub_100011D60();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100011D9C();
  v36 = v34 - v35;
  __chkstk_darwin(v37);
  v39 = &v84 - v38;
  sub_1000327E0();
  v103 = sub_10001A5E8();
  v40 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    sub_100023F00(&qword_100044628);
  }

  v41 = qword_100048340;
  v42 = *(v32 + 16);
  v92 = v39;
  v42(v36, v39, v30);
  v94 = *(v27 + 16);
  v95 = v15;
  v94(v9, v15, v105);
  v43 = os_log_type_enabled(v41, v40);
  v93 = v32;
  v88 = v41;
  v89 = v30;
  v99 = v27;
  if (v43)
  {
    v44 = v40;
    v45 = swift_slowAlloc();
    v86 = sub_100024188();
    v106 = v86;
    *v45 = 136446466;
    sub_100023DAC();
    sub_10002283C(v46, v47, &protocol conformance descriptor for WidgetFamily);
    v85 = v44;
    v48 = sub_100032CB0();
    v87 = *(v32 + 8);
    v87(v36, v30);
    v49 = sub_100011F64();
    sub_100021264(v49, v50, v51);
    sub_100024214();

    *(v45 + 4) = v48;
    *(v45 + 12) = 1026;
    v52 = sub_1000327F0() & 1;
    v53 = *(v27 + 8);
    v54 = v105;
    v53(v9, v105);
    *(v45 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v41, v85, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v45, 0x12u);
    v55 = v86;
    sub_100022C1C(v86);
    sub_100023FAC(v55);
    sub_100023FAC(v45);
  }

  else
  {
    v56 = v32;
    v53 = *(v27 + 8);
    v57 = v9;
    v58 = v105;
    v53(v57, v105);
    v87 = *(v56 + 8);
    v87(v36, v30);
    v54 = v58;
  }

  v94(v8, v95, v54);
  v59 = v96;
  sub_1000327D0();
  KeyPath = swift_getKeyPath();
  sub_1000327B0();
  sub_100024214();

  v61 = sub_100024030();
  v62(v61);
  if (v59)
  {
    sub_100023EE0();
    if (v63)
    {
      v64 = *(v59 + 32);
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = 0;
    KeyPath = 1;
  }

  v65 = v104;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  v53(v8, v54);
  v67 = v100;
  v66 = v101;
  v68 = (v65 + *(v100 + 20));
  *v68 = v10;
  v68[1] = v11;
  v69 = v65 + *(v67 + 24);
  *v69 = v64;
  *(v69 + 8) = KeyPath;
  v70 = v103;
  v71 = sub_10001B868(v66, v102, v65, 1, v103);
  if (*(v71 + 16))
  {
    sub_10002403C(v71);
    v72 = KeyPath;

    v73 = sub_100023F70();
    v91(v73);
    v74 = sub_100032A40();
    v75 = v88;
    if (os_log_type_enabled(v88, v74))
    {
      v76 = sub_10002425C();
      v77 = sub_100024188();
      v106 = v77;
      *v76 = 136446210;
      v72 = v72;

      sub_100023F70();
      PhotosReliveWidgetEntry.description.getter();
      v79 = v78;
      v81 = v80;

      v82 = sub_100021264(v79, v81, &v106);

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v74, "snapshot request completed with entry %{public}s", v76, 0xCu);
      sub_100022C1C(v77);
      sub_100023FAC(v77);
      sub_100023FAC(v76);
    }

    sub_100023D94();
    sub_100022A1C(v104, v83);
    v87(v92, v89);
    sub_100023FE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001D680()
{
  sub_100023EC8();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_100032800();
  v0[6] = v5;
  sub_100023E68(v5);
  v0[7] = v6;
  v0[8] = sub_1000240D0();
  v7 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[9] = v7;
  sub_100023E68(v7);
  v0[10] = v8;
  v0[11] = sub_1000240D0();
  v9 = sub_100023E90();

  return _swift_task_switch(v9);
}

uint64_t sub_10001D780(uint64_t a1)
{
  v2 = *(v1 + 88);
  v9 = *(v1 + 24);
  v3 = sub_1000241F4();
  v4(v3);
  sub_100024014();
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  *v6 = v1;
  v6[1] = sub_10001D8B0;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)(v7);
}

uint64_t sub_10001D8B0()
{
  sub_100023EC8();
  sub_100024068();
  v1 = *v0;
  sub_100023EA0();
  *v2 = v1;

  v3 = sub_100023E90();

  return _swift_task_switch(v3);
}

uint64_t sub_10001D9B0()
{
  sub_100023EC8();
  (*(v0[10] + 8))(v0[11], v0[9]);

  sub_100024238();

  return v1();
}

uint64_t sub_10001DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v31 = a3;
  v34 = sub_100032670();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000326A0();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v27 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v30 = sub_100032A90();
  (*(v13 + 16))(v16, v29, v12);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v28;
  *(v19 + 24) = v20;
  (*(v13 + 32))(v19 + v17, v16, v12);
  (*(v9 + 32))(v19 + v18, v11, v27);
  aBlock[4] = sub_100022D2C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_100042848;
  v21 = _Block_copy(aBlock);

  v22 = v32;
  sub_100032680();
  v38 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908, &protocol conformance descriptor for [A]);
  v24 = v33;
  v23 = v34;
  sub_100032B60();
  v25 = v30;
  sub_100032AA0();
  _Block_release(v21);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v22, v36);
}

uint64_t sub_10001DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v6 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_100032800();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v7 + 16))(v9, a4, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  sub_10001E1CC(a1, v21, v13, sub_100023D80, v15, v16, v17, v18);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10001E100()
{
  sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  sub_100011D60();
  sub_100011DBC();
  __chkstk_darwin(v0);
  sub_1000240B0();
  v1 = sub_1000240E8();
  v2(v1);
  sub_10000D4FC(&qword_100045480, &qword_100034900);
  return sub_1000329F0();
}

void sub_10001E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100023FC4();
  v121 = v10;
  v122 = v9;
  v12 = v11;
  v14 = v13;
  v117 = v15;
  v132 = sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  sub_100011D60();
  v127 = v16;
  __chkstk_darwin(v17);
  sub_100023E54();
  v123 = v18;
  __chkstk_darwin(v19);
  v131 = &v105 - v20;
  v115 = sub_10000D4FC(&qword_1000453D8, &qword_100034878);
  sub_100011D74();
  __chkstk_darwin(v21);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v22);
  v126 = &v105 - v23;
  sub_100023ED4();
  v110 = sub_1000327C0();
  sub_100011D60();
  v109 = v24;
  __chkstk_darwin(v25);
  sub_100011DAC();
  sub_100024220();
  v114 = sub_100032800();
  sub_100011D60();
  v129 = v26;
  __chkstk_darwin(v27);
  sub_100011DAC();
  v128 = v29 - v28;
  v30 = sub_100023ED4();
  v111 = type metadata accessor for PhotosReliveWidgetSize(v30);
  sub_100011D74();
  __chkstk_darwin(v31);
  sub_100011DAC();
  v34 = v33 - v32;
  v35 = sub_100032750();
  sub_100011D60();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_100023E54();
  v119 = v39;
  __chkstk_darwin(v40);
  sub_100024090();
  __chkstk_darwin(v41);
  v43 = (&v105 - v42);
  sub_1000327E0();
  v125 = sub_10001A5E8();
  v44 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    sub_100023F00(&qword_100044628);
  }

  v45 = qword_100048340;
  v46 = *(v37 + 16);
  v113 = v37 + 16;
  v112 = v46;
  v46(v8, v43, v35);
  v47 = os_log_type_enabled(v45, v44);
  v130 = v43;
  v120 = v37;
  v118 = v45;
  if (v47)
  {
    v48 = sub_10002425C();
    v107 = v12;
    v49 = v48;
    v106 = sub_100024188();
    v133[0] = v106;
    *v49 = 136446210;
    sub_100023DAC();
    sub_10002283C(v50, v51, &protocol conformance descriptor for WidgetFamily);
    v108 = v14;
    v52 = v45;
    sub_100032CB0();
    v53 = sub_1000241CC();
    v54(v53);
    v55 = sub_10002413C();

    *(v49 + 4) = v55;
    v56 = v52;
    v14 = v108;
    _os_log_impl(&_mh_execute_header, v56, v44, "timeline requested for size %{public}s", v49, 0xCu);
    v57 = v106;
    sub_100022C1C(v106);
    sub_100023FAC(v57);
    v58 = v49;
    v12 = v107;
    sub_100023FAC(v58);
  }

  else
  {
    v59 = sub_1000241CC();
    v60(v59);
  }

  v61 = v12;
  v62 = v114;
  (*(v129 + 16))(v128, v61, v114);
  sub_1000327D0();
  swift_getKeyPath();
  v63 = sub_1000327B0();

  v64 = sub_100024030();
  v65(v64, v110);
  if (v63)
  {
    v66 = *(v63 + 16);
    v67 = v66 == 0;
    if (v66)
    {
      v68 = *(v63 + 32);
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
    v67 = 1;
  }

  v69 = v128;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v129 + 8))(v69, v62);
  sub_1000240F4();
  *v70 = v68;
  *(v70 + 8) = v67;
  v71 = v14;
  v72 = v125;
  v73 = sub_10001B868(v117, v71, v34, 2, v125);
  v74 = v115;
  v75 = *(v115 + 48);
  v76 = v126;
  v77 = v130;
  sub_10001A790(v126, (v126 + v75), v73, v130);
  v78 = v116;
  sub_100013C14(v76, v116, &qword_1000453D8, &qword_100034878);
  v79 = *(v74 + 48);
  sub_1000226C4();
  v80 = v131;
  sub_100032840();
  sub_100013B00(v78 + v79, &qword_1000453E0, &qword_1000348B0);
  v122(v80);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025F70();
  [v72 setWidgetTimelineGeneratedForDisplaySize:{*v133, *&v133[1]}];
  sub_10001498C(v76 + v75, v77);
  v81 = sub_100032A40();
  v82 = v119;
  v112(v119, v77, v35);
  v83 = v123;
  (*(v127 + 16))(v123, v80, v132);
  v84 = v118;
  if (os_log_type_enabled(v118, v81))
  {
    v85 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v133[0] = v122;
    *v85 = 136446466;
    sub_100023DAC();
    sub_10002283C(v86, v87, &protocol conformance descriptor for WidgetFamily);
    v129 = v34;
    v88 = v83;
    sub_100032CB0();
    v89 = v127;
    v128 = v120 + 8;
    v124(v82, v35);
    v90 = sub_10002413C();

    *(v85 + 4) = v90;
    *(v85 + 12) = 2082;
    v91 = v81;
    v92 = v132;
    sub_100032850();
    v93 = sub_1000329B0();
    v121 = v35;
    v95 = v94;

    v96 = *(v89 + 8);
    v96(v88, v92);
    v97 = sub_100021264(v93, v95, v133);

    *(v85 + 14) = v97;
    _os_log_impl(&_mh_execute_header, v84, v91, "timeline request completed for size %{public}s with entries %{public}s", v85, 0x16u);
    v98 = v122;
    swift_arrayDestroy();
    sub_100023FAC(v98);
    sub_100023FAC(v85);

    v96(v131, v92);
    sub_100013B00(v126, &qword_1000453D8, &qword_100034878);
    sub_100023D94();
    sub_100022A1C(v129, v99);
    v124(v130, v121);
  }

  else
  {

    v100 = *(v127 + 8);
    v101 = v132;
    v100(v83, v132);
    v102 = v82;
    v103 = v124;
    v124(v102, v35);
    v100(v131, v101);
    sub_100013B00(v126, &qword_1000453D8, &qword_100034878);
    sub_100023D94();
    sub_100022A1C(v34, v104);
    v103(v130, v35);
  }

  sub_100023FE0();
}