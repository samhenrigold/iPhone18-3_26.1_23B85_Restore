unint64_t sub_100041960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DC50;
  if (!qword_10006DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DC50);
  }

  return result;
}

uint64_t sub_1000419B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000BBB8(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_100041A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100041800(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_100041B04()
{
  v0 = sub_100001E64(&qword_10006C6A8, &unk_100051FB0);
  __chkstk_darwin(v0 - 8);
  v33 = &v25 - v1;
  v34 = sub_10004BAFC();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_10004BC7C();
  v32 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v26 = sub_100001E64(&qword_10006DC80, &unk_100057550);
  sub_10004BC4C();
  v16 = *(v15 + 56);
  v30 = v15 + 56;
  v31 = v16;
  v16(v13, 1, 1, v14);
  v36 = 0;
  v17 = sub_10004B7DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v19;
  v20 = v19(v4);
  sub_100041210(v20, v21, v22);
  v26 = sub_10004B88C();
  sub_100001E64(&qword_10006C6C8, &qword_100051FD0);
  sub_10004BC4C();
  v31(v13, 1, 1, v32);
  v35 = 2;
  v23 = sub_10004C5DC();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v18(v10, 1, 1, v17);
  v28(v4, v29, v34);
  sub_10004B89C();
  return v26;
}

uint64_t sub_100041F88()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 safari_browserDefaults];
  v4 = SFShowTabBarDefaultsKey;
  [v3 setBool:v1 forKey:SFShowTabBarDefaultsKey];

  v5 = [objc_opt_self() defaultCenter];
  v6 = [v2 safari_notificationNameForUserDefaultsKey:v4];
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000420A8()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000421E8, 0, 0);
}

uint64_t sub_1000421E8()
{
  v0[8] = objc_opt_self();
  v0[9] = sub_10004C60C();
  v0[10] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_100042290, v2, v1);
}

uint64_t sub_100042290()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 currentDevice];

  return _swift_task_switch(sub_100042318, 0, 0);
}

uint64_t sub_100042318()
{
  *(v0 + 96) = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_1000423A4, v2, v1);
}

uint64_t sub_1000423A4()
{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 userInterfaceIdiom];

  return _swift_task_switch(sub_100042424, 0, 0);
}

uint64_t sub_100042424()
{
  if (v0[13] == 1)
  {
    sub_10004B6BC();
    sub_100042698();
    swift_allocError();
    sub_10004B6AC();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[4];
    v4 = v0[2];
    v5 = v0[3];
    sub_100001E64(&qword_10006DBA8, qword_100056EB0);
    sub_10004C4FC();
    sub_10004BD7C();
    (*(v5 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
    sub_10004BC9C();
    sub_1000020DC(&qword_10006DC70, &qword_10006DC78, &qword_100057540, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    v6 = sub_10004BC3C();

    v7 = v0[1];

    return v7(v6);
  }
}

unint64_t sub_100042698()
{
  result = qword_10006D058;
  if (!qword_10006D058)
  {
    sub_10004B6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006D058);
  }

  return result;
}

double sub_1000426F0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_100042728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BookmarkItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100042854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BookmarkItem(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001E64(&qword_10006CA08, &unk_1000514B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ReadingListWidgetCell(uint64_t a1)
{
  result = qword_10006DD00;
  if (!qword_10006DD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000429B8(uint64_t a1)
{
  type metadata accessor for BookmarkItem(319);
  if (v1 <= 0x3F)
  {
    sub_100042A54(319);
    if (v2 <= 0x3F)
    {
      sub_100042AAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100042A54(uint64_t a1)
{
  if (!qword_10006CA80)
  {
    sub_10004BE0C();
    v1 = sub_10004BE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_10006CA80);
    }
  }
}

void sub_100042AAC()
{
  if (!qword_10006DD10)
  {
    v0 = sub_10004BE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006DD10);
    }
  }
}

uint64_t sub_100042B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10004BFBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100001E64(&qword_10006DD60, &qword_100057628);
  return sub_100042B70(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_100042B70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = sub_100001E64(&qword_10006DD68, &qword_100057630);
  __chkstk_darwin(v55);
  v51 = (&v47 - v4);
  v5 = sub_100001E64(&qword_10006DD70, &qword_100057638);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v48 = sub_10004C28C();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100001E64(&qword_10006DD78, &qword_100057640);
  v11 = __chkstk_darwin(v49);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v53 = sub_100001E64(&qword_10006DD80, &qword_100057648);
  __chkstk_darwin(v53);
  v52 = (&v47 - v15);
  v16 = sub_100001E64(&qword_10006DD88, &unk_100057650);
  v17 = __chkstk_darwin(v16 - 8);
  v56 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v47 - v19;
  v57 = sub_10004BFFC();
  LOBYTE(v64) = 1;
  sub_1000433E4(a1, v20, v21, &v61);
  v73 = v62[5];
  v74 = v62[6];
  v75 = v62[7];
  v69 = v62[1];
  v70 = v62[2];
  v71 = v62[3];
  v72 = v62[4];
  v67 = v61;
  v68 = v62[0];
  v77[6] = v62[5];
  v77[7] = v62[6];
  v77[8] = v62[7];
  v77[2] = v62[1];
  v77[3] = v62[2];
  v77[4] = v62[3];
  v77[5] = v62[4];
  v76 = v62[8];
  v78 = v62[8];
  v77[0] = v61;
  v77[1] = v62[0];
  sub_10000A490(&v67, &v59, &qword_10006CB58, &qword_100051650);
  sub_1000022E8(v77, &qword_10006CB58, &qword_100051650);
  *(&v63[6] + 7) = v73;
  *(&v63[7] + 7) = v74;
  *(&v63[8] + 7) = v75;
  *(&v63[2] + 7) = v69;
  *(&v63[3] + 7) = v70;
  *(&v63[4] + 7) = v71;
  *(&v63[5] + 7) = v72;
  *(v63 + 7) = v67;
  *(&v63[9] + 7) = v76;
  *(&v63[1] + 7) = v68;
  v22 = a1;
  v54 = v64;
  if (*(a1 + *(type metadata accessor for BookmarkItem(0) + 28)))
  {
    v23 = v48;
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v48);

    sub_10004C2CC();
    (*(v8 + 8))(v10, v23);
    sub_10004C3AC();
    v24 = sub_10004C3BC();
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    sub_10004C2BC();

    sub_1000022E8(v7, &qword_10006DD70, &qword_100057638);
    sub_10004C33C();
    sub_10004BE5C();
    v25 = &v14[*(sub_100001E64(&qword_10006DDA0, &qword_100057670) + 36)];
    v26 = v65;
    *v25 = v64;
    *(v25 + 1) = v26;
    *(v25 + 2) = v66;
    *&v14[*(sub_100001E64(&qword_10006DDA8, &qword_100057678) + 36)] = 256;
    v27 = sub_10004C33C();
    v29 = v28;
    v30 = &v14[*(v49 + 36)];
    sub_1000436E4(v22, v30);
    v31 = (v30 + *(sub_100001E64(&qword_10006DDB0, &qword_100057680) + 36));
    *v31 = v27;
    v31[1] = v29;
    v32 = v50;
    sub_10000A490(v14, v50, &qword_10006DD78, &qword_100057640);
    v33 = v51;
    *v51 = 0;
    *(v33 + 8) = 1;
    v34 = sub_100001E64(&qword_10006DDB8, &qword_100057688);
    sub_10000A490(v32, v33 + *(v34 + 48), &qword_10006DD78, &qword_100057640);
    sub_1000022E8(v32, &qword_10006DD78, &qword_100057640);
    sub_10000A490(v33, v52, &qword_10006DD68, &qword_100057630);
    swift_storeEnumTagMultiPayload();
    sub_1000020DC(&qword_10006DD90, &qword_10006DD68, &qword_100057630, &protocol conformance descriptor for TupleView<A>);
    sub_10004C09C();

    sub_1000022E8(v33, &qword_10006DD68, &qword_100057630);
    sub_1000022E8(v14, &qword_10006DD78, &qword_100057640);
  }

  else
  {
    v35 = v52;
    *v52 = 0;
    *(v35 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1000020DC(&qword_10006DD90, &qword_10006DD68, &qword_100057630, &protocol conformance descriptor for TupleView<A>);
    sub_10004C09C();
  }

  v36 = v58;
  v37 = v56;
  sub_10000A490(v58, v56, &qword_10006DD88, &unk_100057650);
  v38 = v57;
  v59 = v57;
  v39 = v54;
  LOBYTE(v60[0]) = v54;
  *(&v60[7] + 1) = v63[7];
  *(&v60[6] + 1) = v63[6];
  *(&v60[8] + 1) = v63[8];
  *(&v60[8] + 12) = *(&v63[8] + 11);
  *(&v60[2] + 1) = v63[2];
  *(&v60[3] + 1) = v63[3];
  *(&v60[4] + 1) = v63[4];
  *(&v60[5] + 1) = v63[5];
  *(v60 + 1) = v63[0];
  *(&v60[1] + 1) = v63[1];
  v40 = v60[8];
  a2[8] = v60[7];
  a2[9] = v40;
  *(a2 + 156) = *(&v60[8] + 12);
  v41 = v60[4];
  a2[4] = v60[3];
  a2[5] = v41;
  v42 = v60[6];
  a2[6] = v60[5];
  a2[7] = v42;
  v43 = v60[0];
  *a2 = v59;
  a2[1] = v43;
  v44 = v60[2];
  a2[2] = v60[1];
  a2[3] = v44;
  v45 = sub_100001E64(&qword_10006DD98, &unk_100057660);
  sub_10000A490(v37, a2 + *(v45 + 48), &qword_10006DD88, &unk_100057650);
  sub_10000A490(&v59, &v61, &qword_10006CB60, &qword_100051658);
  sub_1000022E8(v36, &qword_10006DD88, &unk_100057650);
  sub_1000022E8(v37, &qword_10006DD88, &unk_100057650);
  *(&v62[6] + 1) = v63[6];
  *(&v62[7] + 1) = v63[7];
  *(&v62[8] + 1) = v63[8];
  *(&v62[8] + 12) = *(&v63[8] + 11);
  *(&v62[2] + 1) = v63[2];
  *(&v62[3] + 1) = v63[3];
  *(&v62[4] + 1) = v63[4];
  *(&v62[5] + 1) = v63[5];
  *(v62 + 1) = v63[0];
  v61 = v38;
  LOBYTE(v62[0]) = v39;
  *(&v62[1] + 1) = v63[1];
  return sub_1000022E8(&v61, &qword_10006CB60, &qword_100051658);
}

uint64_t sub_1000433E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v63 = *a1;
  v64 = v6;
  sub_100002214(a1, a2, a3);

  v7 = sub_10004C1AC();
  v39 = v8;
  v40 = v7;
  v10 = v9;
  v38 = v11;
  KeyPath = swift_getKeyPath();
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  sub_10004C13C();
  v36 = sub_10004C14C();
  v35 = swift_getKeyPath();
  v12 = v10 & 1;
  LOBYTE(v63) = v10 & 1;
  LOBYTE(v59) = 0;
  v13 = a1[3];
  v63 = a1[2];
  v64 = v13;

  v14 = sub_10004C1AC();
  v33 = v15;
  v34 = v14;
  v17 = v16;
  v32 = v18;
  v31 = swift_getKeyPath();
  if (qword_10006C1D8 != -1)
  {
    swift_once();
  }

  v19 = qword_10006E1C8;
  v20 = swift_getKeyPath();
  v21 = v17 & 1;

  v22 = sub_10004C0CC();
  *&v54 = v40;
  *(&v54 + 1) = v39;
  LOBYTE(v55) = v12;
  *(&v55 + 1) = v38;
  *&v56 = KeyPath;
  *(&v56 + 1) = 2;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = v35;
  v58 = v36;
  *v53 = v36;
  v51 = v56;
  v52 = v57;
  v49 = v54;
  v50 = v55;
  *&v59 = v34;
  *(&v59 + 1) = v33;
  LOBYTE(v60) = v21;
  *(&v60 + 1) = v32;
  *&v61 = v31;
  *(&v61 + 1) = 1;
  v62[0] = 0;
  *&v62[8] = v20;
  *&v62[16] = v19;
  *&v62[24] = v22;
  *&v53[8] = v59;
  *&v53[68] = *&v62[12];
  *&v53[56] = *v62;
  *&v53[40] = v61;
  *&v53[24] = v60;
  v23 = v55;
  *a4 = v54;
  *(a4 + 16) = v23;
  v24 = v51;
  v25 = v52;
  v26 = *&v53[16];
  *(a4 + 64) = *v53;
  *(a4 + 80) = v26;
  *(a4 + 32) = v24;
  *(a4 + 48) = v25;
  v27 = *&v53[32];
  v28 = *&v53[48];
  v29 = *&v53[64];
  *(a4 + 144) = *&v53[80];
  *(a4 + 112) = v28;
  *(a4 + 128) = v29;
  *(a4 + 96) = v27;
  v63 = v34;
  v64 = v33;
  v65 = v21;
  v66 = v32;
  v67 = v31;
  v68 = 1;
  v69 = 0;
  v70 = v20;
  v71 = v19;
  v72 = v22;
  sub_10000A490(&v54, v41, &qword_10006CB68, &unk_1000516C0);
  sub_10000A490(&v59, v41, &qword_10006CB70, &qword_100057700);
  sub_1000022E8(&v63, &qword_10006CB70, &qword_100057700);
  v41[0] = v40;
  v41[1] = v39;
  v42 = v12;
  v43 = v38;
  v44 = KeyPath;
  v45 = 2;
  v46 = 0;
  v47 = v35;
  v48 = v36;
  return sub_1000022E8(v41, &qword_10006CB68, &unk_1000516C0);
}

uint64_t sub_1000436E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = sub_10004BE0C();
  v4 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v37 - v8);
  v10 = sub_10004C35C();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004BF8C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006C1C8 != -1)
  {
    swift_once();
  }

  v39 = qword_10006E1B8;
  v16 = a1 + *(type metadata accessor for ReadingListWidgetCell(0) + 24);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v44 = *v16;
  }

  else
  {

    sub_10004C61C();
    v37 = v12;
    v18 = sub_10004C0FC();
    v38 = v9;
    v19 = v18;
    sub_10004BDDC();

    v9 = v38;
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(v17, 0);
    (*(v13 + 8))(v15, v37);
  }

  sub_10004BE2C();
  v20 = v45;
  v21 = v47;
  v38 = v48;
  v22 = v49;
  v23 = v39;

  v24 = sub_10004C33C();
  v26 = v25;
  sub_100011568(v9);
  v27 = v46;
  v28 = v43;
  (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v43);
  v29 = sub_10004BDFC();
  v30 = *(v4 + 8);
  v30(v7, v28);
  v30(v9, v28);
  v32 = v40;
  v31 = v41;
  v33 = &enum case for BlendMode.lighten(_:);
  if ((v29 & 1) == 0)
  {
    v33 = &enum case for BlendMode.darken(_:);
  }

  v34 = v42;
  (*(v41 + 104))(v40, *v33, v42);
  v35 = sub_100001E64(&qword_10006DDC0, &qword_100057690);
  result = (*(v31 + 32))(a2 + *(v35 + 36), v32, v34);
  *a2 = v20 * 0.5;
  *(a2 + 8) = v20;
  *(a2 + 16) = v27;
  *(a2 + 24) = v21;
  *(a2 + 32) = v38;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = 256;
  *(a2 + 64) = v24;
  *(a2 + 72) = v26;
  return result;
}

double sub_100043B48@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BD0C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for BookmarkItem(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 24), v3);
  v12 = v1;
  sub_100001E64(&qword_10006DD48, &qword_100057618);
  sub_1000020DC(&qword_10006DD50, &qword_10006DD48, &qword_100057618, &protocol conformance descriptor for HStack<A>);
  sub_10004C17C();
  sub_10004C33C();
  sub_10004BE5C();
  v8 = (a1 + *(sub_100001E64(&qword_10006DD58, &qword_100057620) + 36));
  v9 = v14;
  *v8 = v13;
  v8[1] = v9;
  result = *&v15;
  v8[2] = v15;
  return result;
}

unint64_t sub_100043D04()
{
  result = qword_10006DDC8;
  if (!qword_10006DDC8)
  {
    sub_100001FB0(&qword_10006DD58, &qword_100057620);
    sub_1000020DC(&qword_10006DDD0, &qword_10006DDD8, &qword_100057708, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDC8);
  }

  return result;
}

uint64_t sub_100043DC8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100043DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100043E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_100043E94(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10004BF8C();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10004BFEC();
  v48 = 0;
  v9 = sub_1000442E4(HIBYTE(a2) & 1);
  v11 = v10;
  v13 = v12;
  if (qword_10006C1E0 != -1)
  {
    swift_once();
  }

  sub_10004C13C();
  sub_10004C14C();
  v14 = sub_10004C18C();
  v40 = v15;
  v41 = v14;
  v17 = v16;
  v39 = v18;

  sub_100002348(v9, v11, v13 & 1);

  if (a2)
  {
    v19 = a1;
  }

  else
  {

    sub_10004C61C();
    v20 = sub_10004C0FC();
    sub_10004BDDC();

    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(a1, 0);
    (*(v42 + 8))(v8, v43);
    v19 = v46;
  }

  KeyPath = swift_getKeyPath();
  v22 = v17 & 1;
  v47 = v17 & 1;
  v23 = v48;
  v24 = sub_10004C0BC();
  v25 = sub_10004C10C();
  if ((a2 & 1) == 0)
  {

    sub_10004C61C();
    v29 = sub_10004C0FC();
    HIDWORD(v38) = v22;
    v30 = v25;
    v31 = v23;
    v32 = v24;
    v33 = KeyPath;
    v34 = v29;
    sub_10004BDDC();

    KeyPath = v33;
    v24 = v32;
    v23 = v31;
    v25 = v30;
    LOBYTE(v22) = BYTE4(v38);
    sub_10004BF7C();
    swift_getAtKeyPath();
    sub_10000A53C(a1, 0);
    (*(v42 + 8))(v8, v43);
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_10004BDEC();
    v27 = 0;
    *(&v26 + 1) = v35;
    *(&v28 + 1) = v36;
    goto LABEL_11;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v26 = 0uLL;
  v27 = 1;
  v28 = 0uLL;
LABEL_11:
  *a3 = v44;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = v23;
  v37 = v40;
  *(a3 + 24) = v41;
  *(a3 + 32) = v37;
  *(a3 + 40) = v22;
  *(a3 + 48) = v39;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v19 & 1;
  *(a3 + 68) = v24;
  *(a3 + 72) = v25;
  *(a3 + 80) = v26;
  *(a3 + 96) = v28;
  *(a3 + 112) = v27;
}

Swift::Int sub_100044204()
{
  v1 = *v0;
  sub_10004C74C();
  sub_10004C75C(v1);
  return sub_10004C76C();
}

Swift::Int sub_100044278(uint64_t a1)
{
  v2 = *v1;
  sub_10004C74C();
  sub_10004C75C(v2);
  return sub_10004C76C();
}

void sub_1000442BC(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_100043E94(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_1000442E4(char a1)
{
  v1 = sub_10004BDCC();
  __chkstk_darwin(v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v4 + 8);
  sub_10004BDBC();
  v6 = sub_10004BDAC();
  v8 = v7;
  v9 = (*v5)(v3, v1);
  v13[2] = v6;
  v13[3] = v8;
  sub_100002214(v9, v10, v11);
  return sub_10004C1AC();
}

uint64_t sub_100044430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004BEEC();
  *a1 = result;
  return result;
}

unint64_t sub_100044498()
{
  result = qword_10006DDE0;
  if (!qword_10006DDE0)
  {
    sub_100001FB0(&qword_10006DDE8, "2U");
    sub_100044524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDE0);
  }

  return result;
}

unint64_t sub_100044524()
{
  result = qword_10006DDF0;
  if (!qword_10006DDF0)
  {
    sub_100001FB0(&qword_10006DDF8, "jU");
    sub_1000020DC(&qword_10006DE00, &qword_10006DE08, qword_100057840, &protocol conformance descriptor for VStack<A>);
    sub_1000020DC(&qword_10006CBA8, &qword_10006CBB0, &qword_1000516F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DDF0);
  }

  return result;
}

unint64_t sub_10004460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DE10;
  if (!qword_10006DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DE10);
  }

  return result;
}

uint64_t sub_100044660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000446A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000446F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10004BD6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004476C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_10004C72C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_10004C72C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for BookmarkItem(0);
  if ((sub_10004BCCC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = *(a2 + v7);
  if (!*(a1 + v7))
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = sub_10004C29C();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v10 = *(v6 + 32);

  return static UUID.== infix(_:_:)(a1 + v10, a2 + v10);
}

uint64_t sub_100044874(uint64_t a1)
{
  v2 = sub_100001E64(&qword_10006CAC8, &qword_100051540);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for BookmarkItem(0);
  v20 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
LABEL_14:
    __break(1u);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    result = sub_100038510(0, a1, 0);
    v9 = 0;
    v10 = v21;
    v19[0] = 0x800000010004FC60;
    v19[1] = "Update Landscape Tab Bar";
    v11 = 1;
    v12 = a1;
    while (!v9)
    {
      sub_10004BCFC();
      v13 = sub_10004BD0C();
      v14 = *(v13 - 8);
      result = (*(v14 + 48))(v4, 1, v13);
      if (result == 1)
      {
        goto LABEL_16;
      }

      v15 = sub_10004C27C();
      sub_10004BD5C();
      *v8 = 0x1000000000000049;
      *(v8 + 1) = v19[0];
      *(v8 + 2) = 0x6F632E656C707061;
      *(v8 + 3) = 0xE90000000000006DLL;
      (*(v14 + 32))(&v8[*(v5 + 24)], v4, v13);
      *&v8[*(v5 + 28)] = v15;
      v21 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_100038510((v16 > 1), v17 + 1, 1);
        v10 = v21;
      }

      v10[2] = v17 + 1;
      result = sub_10000CB38(v8, v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17);
      v9 = v11 == a1;
      if (v11 == a1)
      {
        v11 = 0;
      }

      else if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }

      if (!--v12)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BookmarkItem(uint64_t a1)
{
  result = qword_10006DE70;
  if (!qword_10006DE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044BC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BD0C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004BD6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100044D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004BD0C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004BD6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100044E24(uint64_t a1)
{
  sub_10004BD0C();
  if (v1 <= 0x3F)
  {
    sub_100044ED0();
    if (v2 <= 0x3F)
    {
      sub_10004BD6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044ED0()
{
  if (!qword_10006DE80)
  {
    v0 = sub_10004C62C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006DE80);
    }
  }
}

unint64_t sub_100044F24()
{
  result = qword_10006DEC0;
  if (!qword_10006DEC0)
  {
    sub_10004BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DEC0);
  }

  return result;
}

uint64_t sub_100044F7C()
{
  type metadata accessor for ReadingListWidgetWebBookmarksDataSource();
  v1[0] = 0xD000000000000011;
  v1[1] = 0x800000010004FCB0;
  v1[2] = swift_initStaticObject();
  v2 = v1;
  sub_100044FF8(&v2);
}

uint64_t sub_100044FF8(uint64_t **a1)
{

  sub_100001E64(&qword_10006DED0, &qword_1000579E8);
  return sub_10004BE3C();
}

void sub_100045064()
{
  v0 = [objc_opt_self() safari_browserDefaults];
  [v0 safari_registerMobileSafariDefaults];
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100045100(*&argc, argv, envp);
  sub_10004BE4C();
  return 0;
}

unint64_t sub_100045100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DEC8;
  if (!qword_10006DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DEC8);
  }

  return result;
}

unint64_t sub_100045184()
{
  result = qword_10006DED8;
  if (!qword_10006DED8)
  {
    sub_100001FB0(&qword_10006DEE0, &unk_1000579F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DED8);
  }

  return result;
}

uint64_t sub_100045214@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10002909C(KeyPath, a1);
}

uint64_t sub_100045264()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, qword_10006E600);
  sub_1000090A4(v10, qword_10006E600);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t sub_100045550()
{
  v0 = sub_10004BC7C();
  sub_1000090DC(v0, qword_10006E618);
  sub_1000090A4(v0, qword_10006E618);
  return sub_10004BC4C();
}

uint64_t sub_1000455B4()
{
  v0 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  sub_1000090DC(v0, qword_10006E630);
  v1 = sub_1000090A4(v0, qword_10006E630);
  sub_10004B9DC();
  v2 = sub_10004B9EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100045674()
{
  result = swift_getKeyPath();
  qword_10006E648 = result;
  return result;
}

uint64_t sub_10004569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100001E64(&qword_10006C6E8, &unk_100050F80);
  v3[10] = swift_task_alloc();
  sub_100001E64(&qword_10006C6F0, &qword_100052010);
  v3[11] = swift_task_alloc();
  sub_100001E64(&qword_10006E040, &qword_100058438);
  v3[12] = swift_task_alloc();
  v4 = sub_10004B7DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100001E64(&qword_10006E048, &qword_100058440);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004587C, 0, 0);
}

uint64_t sub_10004587C()
{
  sub_10004B85C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v4 = sub_100047A50(v1, v2, v3);
  *v1 = v0;
  v1[1] = sub_10004594C;
  v5 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 16, sub_100049240, 0, &type metadata for TabLayoutEntity, v4);
}

uint64_t sub_10004594C()
{

  return _swift_task_switch(sub_100045A48, 0, 0);
}

uint64_t sub_100045A48()
{
  sub_10004B85C();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10004B85C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }

  v2 = qword_10006E648;
  *(v0 + 176) = qword_10006E648;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000020DC(&qword_10006E020, &qword_10006E028, &unk_100058410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100045BA8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for TabLayoutConfigurationType, v4);
}

uint64_t sub_100045BA8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100004690;
  }

  else
  {
    v2 = sub_100045CFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100045CFC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10004B85C();
  v0[6] = v0[5];
  v6 = sub_10004BBAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10004BBEC();
  v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v11 = sub_10003EEFC(v8, v9, v10);
  sub_100047B00(v11, v12, v13);
  sub_10004B7AC();
  (*(v2 + 16))(v16, v1, v3);
  sub_10004B7CC();
  sub_10004B7EC();
  (*(v18 + 8))(v17, v19);

  (*(v2 + 8))(v1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100045F68()
{
  v0 = sub_100001E64(&qword_10006E050, &qword_100058448);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }

  sub_10004BA5C();

  sub_100047B00(v4, v5, v6);
  sub_1000020DC(&qword_10006E058, &qword_10006E050, &qword_100058448, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10004BA4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1000460DC(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_100004980;
}

uint64_t (*sub_100046150(uint64_t *a1))()
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
  *(v2 + 32) = sub_10004B84C();
  return sub_10000950C;
}

double sub_1000461C4()
{
  if (qword_10006C3B8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100046258@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001E64(&qword_10006C718, &qword_100050FD0);
  v3 = sub_1000090A4(v2, qword_10006E630);

  return sub_100009450(v3, a1);
}

uint64_t sub_1000462DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000094C4;

  return sub_10004569C(a1, v5, v4);
}

uint64_t sub_100046388@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10004883C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000463EC()
{
  v1 = *(v0 + 16);
  v2 = SFEnableStandaloneTabBarKey;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 safari_browserDefaults];
  v6 = [v5 BOOLForKey:v4];

  *v1 = v6 ^ 1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000464DC()
{
  v1 = SFEnableStandaloneTabBarKey;
  if (*(v0 + 16) == 1)
  {
    v2 = sub_10004C72C();
  }

  else
  {
    v2 = 1;
  }

  v3 = v1;

  v4 = objc_opt_self();
  v5 = [v4 safari_browserDefaults];
  [v5 setBool:v2 & 1 forKey:v3];

  v6 = [objc_opt_self() defaultCenter];
  v7 = [v4 safari_notificationNameForUserDefaultsKey:v3];

  [v6 postNotificationName:v7 object:0 userInfo:0 deliverImmediately:1];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100046680(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000094F4;

  return sub_100048C3C();
}

uint64_t sub_100046724(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100047BE0(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_100005128;

  return _UniqueEntityQuery.allEntities()(a2, v7);
}

uint64_t sub_1000467D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100047BE0(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100009550;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v8);
}

uint64_t sub_100046888(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v7 = sub_100047BE0(v4, v5, v6);
  *v4 = v2;
  v4[1] = sub_1000094F4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v7);
}

uint64_t sub_100046938(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v8 = sub_100047948(v5, v6, v7);
  *v5 = v2;
  v5[1] = sub_100005810;

  return EntityQuery.results()(a1, a2, v8);
}

uint64_t sub_1000469EC()
{
  v0 = qword_10006DEE8;

  return v0;
}

uint64_t sub_100046A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_100029FF8(a1, a2, a3);
  result = sub_10004B80C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_100046A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100047A50(a1, a2, a3);

  return static AppEntity.defaultResolverSpecification.getter(a1, v4);
}

uint64_t sub_100046AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029FF8(a1, a2, a3);

  return _UniqueEntity.displayRepresentation.getter(a1, v4);
}

uint64_t sub_100046B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100047D9C(a1, a2, a3);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_100046B80()
{
  v0 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10004BC5C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004BD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004C54C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BC7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10004BBDC();
  sub_1000090DC(v10, static TabLayoutConfigurationType.typeDisplayRepresentation);
  sub_1000090A4(v10, static TabLayoutConfigurationType.typeDisplayRepresentation);
  sub_10004C4FC();
  sub_10004BD7C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10004BC9C();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10004BBCC();
}

uint64_t TabLayoutConfigurationType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10006C3C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10004BBDC();

  return sub_1000090A4(v0, static TabLayoutConfigurationType.typeDisplayRepresentation);
}

uint64_t static TabLayoutConfigurationType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006C3C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004BBDC();
  v3 = sub_1000090A4(v2, static TabLayoutConfigurationType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TabLayoutConfigurationType.id.getter(char a1)
{
  if (a1)
  {
    return 0x54746361706D6F63;
  }

  else
  {
    return 0x6574617261706573;
  }
}

uint64_t sub_100046FB8()
{
  v0 = sub_100001E64(&qword_10006D050, &qword_1000560B0);
  __chkstk_darwin(v0 - 8);
  v36 = &v24 - v1;
  v2 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v2 - 8);
  v35 = &v24 - v3;
  v30 = sub_10004BC5C();
  v40 = *(v30 - 8);
  __chkstk_darwin(v30);
  v37 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004BD8C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004C54C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004BC7C();
  v25 = v7;
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  sub_100001E64(&qword_10006E060, &qword_100058478);
  v8 = sub_100001E64(&qword_10006D0E0, &unk_100058480);
  v38 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v34 = v11;
  *(v11 + 16) = xmmword_100053280;
  v12 = v11 + v10;
  v32 = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_10004C4FC();
  v28 = "Use Contact Info in Autofill";
  sub_10004BD7C();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v13 = *(v40 + 104);
  v40 += 104;
  v31 = v13;
  v13(v37);
  sub_10004BC9C();
  v14 = *(v39 + 56);
  v39 += 56;
  v26 = v14;
  v15 = v35;
  v14(v35, 1, 1, v7);
  v16 = sub_10004BA7C();
  v17 = *(*(v16 - 8) + 56);
  v18 = v36;
  v17(v36, 1, 1, v16);
  v27 = v12;
  v19 = v15;
  v20 = v18;
  sub_10004BAAC();
  v21 = (v12 + v33);
  v33 = *(v38 + 48);
  *v21 = 1;
  sub_10004C4FC();
  sub_10004BD7C();
  v31(v37, v29, v30);
  sub_10004BC9C();
  v26(v19, 1, 1, v25);
  v17(v20, 1, 1, v16);
  sub_10004BAAC();
  v22 = sub_10001BE38(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static TabLayoutConfigurationType.caseDisplayRepresentations = v22;
  return result;
}

uint64_t *TabLayoutConfigurationType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  return &static TabLayoutConfigurationType.caseDisplayRepresentations;
}

uint64_t static TabLayoutConfigurationType.caseDisplayRepresentations.getter()
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TabLayoutConfigurationType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TabLayoutConfigurationType.caseDisplayRepresentations = a1;
}

uint64_t (*static TabLayoutConfigurationType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10006C3C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

SafariWidgetExtension::TabLayoutConfigurationType_optional __swiftcall TabLayoutConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10006A190;
  v6._object = object;
  v3 = sub_10004C71C(v2, v6);

  if (v3 == 1)
  {
    v4.value = SafariWidgetExtension_TabLayoutConfigurationType_compactTabBar;
  }

  else
  {
    v4.value = SafariWidgetExtension_TabLayoutConfigurationType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000477DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF08;
  if (!qword_10006DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF08);
  }

  return result;
}

unint64_t sub_100047834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF10;
  if (!qword_10006DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF10);
  }

  return result;
}

unint64_t sub_1000478EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF18;
  if (!qword_10006DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF18);
  }

  return result;
}

unint64_t sub_100047948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF20;
  if (!qword_10006DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF20);
  }

  return result;
}

unint64_t sub_1000479A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF28;
  if (!qword_10006DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF28);
  }

  return result;
}

unint64_t sub_1000479F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF30;
  if (!qword_10006DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF30);
  }

  return result;
}

unint64_t sub_100047A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF38;
  if (!qword_10006DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF38);
  }

  return result;
}

unint64_t sub_100047AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF40;
  if (!qword_10006DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF40);
  }

  return result;
}

unint64_t sub_100047B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF48;
  if (!qword_10006DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF48);
  }

  return result;
}

unint64_t sub_100047B58()
{
  result = qword_10006DF50;
  if (!qword_10006DF50)
  {
    v1 = sub_100001FB0(&qword_10006DF58, qword_100057D30);
    sub_100047B00(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF50);
  }

  return result;
}

unint64_t sub_100047BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF60;
  if (!qword_10006DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF60);
  }

  return result;
}

unint64_t sub_100047C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF68;
  if (!qword_10006DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF68);
  }

  return result;
}

unint64_t sub_100047C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF70;
  if (!qword_10006DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF70);
  }

  return result;
}

unint64_t sub_100047CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF78;
  if (!qword_10006DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF78);
  }

  return result;
}

unint64_t sub_100047D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF80;
  if (!qword_10006DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF80);
  }

  return result;
}

unint64_t sub_100047D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DF88;
  if (!qword_10006DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DF88);
  }

  return result;
}

unint64_t sub_100047E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFA0;
  if (!qword_10006DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFA0);
  }

  return result;
}

uint64_t sub_100047E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54746361706D6F63;
  }

  else
  {
    v3 = 0x6574617261706573;
  }

  if (v2)
  {
    v4 = 0xEE00726142626154;
  }

  else
  {
    v4 = 0xED00007261426261;
  }

  if (*a2)
  {
    v5 = 0x54746361706D6F63;
  }

  else
  {
    v5 = 0x6574617261706573;
  }

  if (*a2)
  {
    v6 = 0xED00007261426261;
  }

  else
  {
    v6 = 0xEE00726142626154;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C72C();
  }

  return v8 & 1;
}

uint64_t sub_100047F4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10006A190;
  v8._object = v3;
  v5 = sub_10004C71C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100047FAC(uint64_t *a1@<X8>)
{
  v2 = 0x6574617261706573;
  if (*v1)
  {
    v2 = 0x54746361706D6F63;
  }

  v3 = 0xEE00726142626154;
  if (*v1)
  {
    v3 = 0xED00007261426261;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100048008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFA8;
  if (!qword_10006DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFA8);
  }

  return result;
}

Swift::Int sub_10004805C()
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

uint64_t sub_1000480F8(uint64_t a1)
{
  sub_10004C59C();
}

Swift::Int sub_100048180(uint64_t a1)
{
  sub_10004C74C();
  sub_10004C59C();

  return sub_10004C76C();
}

unint64_t sub_10004821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFB0;
  if (!qword_10006DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFB0);
  }

  return result;
}

unint64_t sub_100048274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFB8;
  if (!qword_10006DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFB8);
  }

  return result;
}

unint64_t sub_1000482CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFC0;
  if (!qword_10006DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFC0);
  }

  return result;
}

unint64_t sub_100048324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFC8;
  if (!qword_10006DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFC8);
  }

  return result;
}

unint64_t sub_10004837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFD0;
  if (!qword_10006DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFD0);
  }

  return result;
}

unint64_t sub_1000483D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFD8;
  if (!qword_10006DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFD8);
  }

  return result;
}

uint64_t sub_100048464@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000090A4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100048580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100029F50(a1, a2, a3);

  return static AppEnum.defaultResolverSpecification.getter(a1, v4);
}

unint64_t sub_1000485D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFE0;
  if (!qword_10006DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFE0);
  }

  return result;
}

unint64_t sub_100048628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFE8;
  if (!qword_10006DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFE8);
  }

  return result;
}

unint64_t sub_100048680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006DFF0;
  if (!qword_10006DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006DFF0);
  }

  return result;
}

uint64_t sub_1000486D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000483D8(a1, a2, a3);

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v4);
}

uint64_t sub_10004883C()
{
  v33 = sub_10004BAFC();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100001E64(&qword_10006C6B0, &unk_100050F30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_100001E64(&qword_10006C6B8, &qword_100051FC0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_10004BC7C();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v28 = sub_100001E64(&qword_10006E030, &qword_100058420);
  sub_10004BC4C();
  v13 = *(v12 + 56);
  v29 = v12 + 56;
  v30 = v13;
  v13(v10, 1, 1, v11);
  v35 = 0;
  v14 = sub_10004B7DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v25[1] = v0 + 104;
  v26 = v16;
  v17 = v32;
  v18 = v16(v32);
  sub_100047A50(v18, v19, v20);
  v28 = sub_10004B88C();
  sub_100001E64(&qword_10006E038, &qword_100058428);
  sub_10004BC4C();
  v30(v10, 1, 1, v31);
  v34 = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = v26(v17, v27, v33);
  sub_100029F50(v21, v22, v23);
  sub_10004B87C();
  return v28;
}

uint64_t sub_100048C3C()
{
  v1 = sub_10004BC5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004BD8C();
  v0[5] = swift_task_alloc();
  sub_10004C54C();
  v0[6] = swift_task_alloc();
  sub_10004BC7C();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100048D7C, 0, 0);
}

uint64_t sub_100048D7C()
{
  v0[8] = objc_opt_self();
  v0[9] = sub_10004C60C();
  v0[10] = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_100048E24, v2, v1);
}

uint64_t sub_100048E24()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 currentDevice];

  return _swift_task_switch(sub_100048EAC, 0, 0);
}

uint64_t sub_100048EAC()
{
  *(v0 + 96) = sub_10004C5FC();
  v2 = sub_10004C5EC();

  return _swift_task_switch(sub_100048F38, v2, v1);
}

uint64_t sub_100048F38()
{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 userInterfaceIdiom];

  return _swift_task_switch(sub_100048FB8, 0, 0);
}

uint64_t sub_100048FB8()
{
  if (v0[13])
  {
    v1 = v0[4];
    v2 = v0[2];
    v3 = v0[3];
    sub_100001E64(&qword_10006DF00, qword_100057A90);
    sub_10004C4FC();
    sub_10004BD7C();
    (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    sub_10004BC9C();
    v4 = sub_1000020DC(&qword_10006E020, &qword_10006E028, &unk_100058410, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_100029F50(v4, v5, v6);
    v7 = sub_10004BC1C();

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_10004B6BC();
    sub_100042698();
    swift_allocError();
    sub_10004B6AC();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

double sub_100049234@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_10004927C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001E64(&qword_10006CBC0, &unk_100051700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000493CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001E64(&qword_10006CBC0, &unk_100051700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001E64(&qword_10006CA10, &unk_1000514C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeReadingListWidgetView(uint64_t a1)
{
  result = qword_10006E0C0;
  if (!qword_10006E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049554(uint64_t a1)
{
  sub_100049620(319, &qword_10006CC30, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100049620(319, &unk_10006CA88, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100049620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BE1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100049690@<X0>(void *a1@<X8>)
{
  v3 = sub_10004BF8C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001E64(&qword_10006CB28, &qword_100051620);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LargeReadingListWidgetView(0);
  sub_10000A490(v1 + *(v10 + 24), v9, &qword_10006CB28, &qword_100051620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004C39C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004C61C();
    v13 = sub_10004C0FC();
    sub_10004BDDC();

    sub_10004BF7C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100049898@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001E64(&qword_10006E118, &qword_100058510);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  *v9 = sub_10004BFEC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100001E64(&qword_10006E120, &qword_100058518);
  sub_100049A58(a1, &v9[*(v10 + 44)]);
  if (*(*(a1 + 1) + 16))
  {
    KeyPath = 0;
    v12 = 255;
  }

  else
  {
    v13 = *a1;
    KeyPath = swift_getKeyPath();
    if (v13)
    {
      v12 = 0;
    }

    else
    {
      v12 = 256;
    }
  }

  sub_10000A490(v9, v7, &qword_10006E118, &qword_100058510);
  sub_10000A490(v7, a2, &qword_10006E118, &qword_100058510);
  v14 = a2 + *(sub_100001E64(&qword_10006E128, &qword_100058520) + 48);
  sub_100010524(KeyPath, v12);
  sub_100010548(KeyPath, v12);
  *v14 = KeyPath;
  *(v14 + 8) = v12;
  sub_1000022E8(v9, &qword_10006E118, &qword_100058510);
  sub_100010548(KeyPath, v12);
  return sub_1000022E8(v7, &qword_10006E118, &qword_100058510);
}

uint64_t sub_100049A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_10004C3CC();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = __chkstk_darwin(v3);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = (&v61 - v6);
  v7 = sub_100001E64(&qword_10006E130, &qword_100058550);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = __chkstk_darwin(v7);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v61 - v10;
  v64 = type metadata accessor for LargeReadingListWidgetView(0);
  v67 = *(v64 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v64);
  v12 = sub_100001E64(&qword_10006E138, &qword_100058558);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = __chkstk_darwin(v12);
  v79 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v61 - v15;
  v16 = sub_10004C39C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v61 - v21;
  v23 = sub_100001E64(&qword_10006E140, &qword_100058560);
  v24 = __chkstk_darwin(v23 - 8);
  v78 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v61 - v26;
  *v27 = sub_10004BFAC();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_100049690(v22);
  sub_10004C38C();
  v28 = sub_10004C37C();
  v29 = *(v17 + 8);
  v29(v20, v16);
  v29(v22, v16);
  if (v28)
  {
    v30 = sub_10004C0AC();
  }

  else
  {
    v30 = sub_10004C0CC();
  }

  v31 = v30;
  sub_100001E64(&qword_10006E148, &qword_100058568);
  LODWORD(v82) = v31;
  sub_100001E64(&qword_10006CB90, &unk_100058570);
  sub_1000107DC();
  v77 = v27;
  sub_10004C1BC();
  v82 = *(a1 + 8);
  v32 = v82;
  sub_10004B49C(a1, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeReadingListWidgetView);
  v33 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v66 = v11;
  v34 = swift_allocObject();
  v63 = v33;
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(v67, v34 + v33, type metadata accessor for LargeReadingListWidgetView);
  v62 = v32;

  sub_100001E64(&qword_10006E150, &qword_100058580);
  sub_10004BD6C();
  sub_100001E64(&qword_10006E158, &unk_100058588);
  sub_1000020DC(&qword_10006E160, &qword_10006E150, &qword_100058580, &protocol conformance descriptor for [A]);
  sub_1000020DC(&qword_10006E168, &qword_10006E158, &unk_100058588, &protocol conformance descriptor for TupleView<A>);
  sub_10004B118();
  sub_10004C30C();
  v35 = v65;
  sub_100011790(v65);
  v37 = v68;
  v36 = v69;
  v38 = v35;
  v39 = v70;
  (*(v69 + 32))(v68, v38, v70);
  v40 = (*(v36 + 88))(v37, v39);
  if (v40 == enum case for WidgetFamily.systemSmall(_:))
  {
    v41 = 1;
    v42 = v67;
  }

  else
  {
    v42 = v67;
    if (v40 == enum case for WidgetFamily.systemMedium(_:))
    {
      v41 = 2;
    }

    else if (v40 == enum case for WidgetFamily.systemLarge(_:))
    {
      v41 = 5;
    }

    else
    {
      (*(v36 + 8))(v37, v39);
      v41 = 1;
    }
  }

  v43 = (v41 - *(v62 + 16)) & ~((v41 - *(v62 + 16)) >> 63);
  v82 = 0;
  v83 = v43;
  swift_getKeyPath();
  sub_10004B49C(a1, v42, type metadata accessor for LargeReadingListWidgetView);
  v44 = v63;
  v45 = swift_allocObject();
  sub_10004B564(v42, v45 + v44, type metadata accessor for LargeReadingListWidgetView);
  sub_100001E64(&qword_10006E178, &qword_1000585B0);
  sub_100001E64(&qword_10006E180, &qword_1000585B8);
  sub_10004B388();
  sub_1000020DC(&qword_10006E198, &qword_10006E180, &qword_1000585B8, &protocol conformance descriptor for TupleView<A>);
  v46 = v80;
  sub_10004C2FC();
  v47 = v78;
  sub_10000A490(v77, v78, &qword_10006E140, &qword_100058560);
  v49 = v71;
  v48 = v72;
  v70 = *(v71 + 16);
  v50 = v79;
  v70(v79, v81, v72);
  v51 = v73;
  v52 = v74;
  v69 = *(v74 + 16);
  v53 = v46;
  v54 = v75;
  (v69)(v73, v53, v75);
  v55 = v76;
  sub_10000A490(v47, v76, &qword_10006E140, &qword_100058560);
  v56 = sub_100001E64(&qword_10006E1A0, &qword_1000585C0);
  v57 = v55 + v56[12];
  *v57 = 0;
  *(v57 + 8) = 1;
  v70(v55 + v56[16], v50, v48);
  (v69)(v55 + v56[20], v51, v54);
  v58 = *(v52 + 8);
  v58(v80, v54);
  v59 = *(v49 + 8);
  v59(v81, v48);
  sub_1000022E8(v77, &qword_10006E140, &qword_100058560);
  v58(v51, v54);
  v59(v79, v48);
  return sub_1000022E8(v78, &qword_10006E140, &qword_100058560);
}

uint64_t sub_10004A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReadingListWidgetCell(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_10004B49C(a1, &v16 - v9, type metadata accessor for BookmarkItem);
  v11 = *(v5 + 28);
  *&v10[v11] = swift_getKeyPath();
  sub_100001E64(&qword_10006CC88, &qword_100051830);
  swift_storeEnumTagMultiPayload();
  v12 = &v10[*(v5 + 32)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = sub_10004A5A8(a1);
  sub_10004B49C(v10, v8, type metadata accessor for ReadingListWidgetCell);
  sub_10004B49C(v8, a2, type metadata accessor for ReadingListWidgetCell);
  v14 = a2 + *(sub_100001E64(&qword_10006E1A8, &qword_100058630) + 48);
  *v14 = 0;
  *(v14 + 8) = !v13;
  *(v14 + 9) = v13;
  sub_10004B504(v10, type metadata accessor for ReadingListWidgetCell);
  return sub_10004B504(v8, type metadata accessor for ReadingListWidgetCell);
}

BOOL sub_10004A5A8(uint64_t a1)
{
  v3 = sub_10004C3CC();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = __chkstk_darwin(v3);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = (&v39 - v6);
  v7 = type metadata accessor for BookmarkItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v45 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100001E64(&qword_10006E1B0, &qword_100058638);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = sub_100001E64(&qword_10006C940, &qword_1000515C0);
  v14 = __chkstk_darwin(v13 - 8);
  v46 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  sub_10004B49C(a1, &v39 - v19, type metadata accessor for BookmarkItem);
  v21 = *(v8 + 56);
  v22 = 1;
  v21(v20, 0, 1, v7);
  v41 = v1;
  v23 = *(v1 + 8);
  v24 = *(v23 + 16);
  if (v24)
  {
    sub_10004B49C(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v24 - 1), v18, type metadata accessor for BookmarkItem);
    v22 = 0;
  }

  v21(v18, v22, 1, v7);
  v25 = *(v10 + 48);
  sub_10000A490(v20, v12, &qword_10006C940, &qword_1000515C0);
  sub_10000A490(v18, &v12[v25], &qword_10006C940, &qword_1000515C0);
  v26 = *(v8 + 48);
  if (v26(v12, 1, v7) == 1)
  {
    sub_1000022E8(v18, &qword_10006C940, &qword_1000515C0);
    sub_1000022E8(v20, &qword_10006C940, &qword_1000515C0);
    if (v26(&v12[v25], 1, v7) == 1)
    {
      sub_1000022E8(v12, &qword_10006C940, &qword_1000515C0);
      goto LABEL_10;
    }

LABEL_8:
    sub_1000022E8(v12, &qword_10006E1B0, &qword_100058638);
    return 0;
  }

  v27 = v46;
  sub_10000A490(v12, v46, &qword_10006C940, &qword_1000515C0);
  if (v26(&v12[v25], 1, v7) == 1)
  {
    sub_1000022E8(v18, &qword_10006C940, &qword_1000515C0);
    sub_1000022E8(v20, &qword_10006C940, &qword_1000515C0);
    sub_10004B504(v27, type metadata accessor for BookmarkItem);
    goto LABEL_8;
  }

  v29 = &v12[v25];
  v30 = v45;
  sub_10004B564(v29, v45, type metadata accessor for BookmarkItem);
  v31 = sub_10004476C(v27, v30);
  sub_10004B504(v30, type metadata accessor for BookmarkItem);
  sub_1000022E8(v18, &qword_10006C940, &qword_1000515C0);
  sub_1000022E8(v20, &qword_10006C940, &qword_1000515C0);
  sub_10004B504(v27, type metadata accessor for BookmarkItem);
  sub_1000022E8(v12, &qword_10006C940, &qword_1000515C0);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v32 = *(v23 + 16);
  if (!v32)
  {
    return 1;
  }

  type metadata accessor for LargeReadingListWidgetView(0);
  v33 = v40;
  sub_100011790(v40);
  v35 = v42;
  v34 = v43;
  v36 = v44;
  (*(v43 + 32))(v42, v33, v44);
  v37 = (*(v34 + 88))(v35, v36);
  if (v37 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v37 == enum case for WidgetFamily.systemMedium(_:))
    {
      v38 = 2;
      return v32 >= v38;
    }

    if (v37 == enum case for WidgetFamily.systemLarge(_:))
    {
      v38 = 5;
      return v32 >= v38;
    }

    (*(v34 + 8))(v35, v36);
  }

  v38 = 1;
  return v32 >= v38;
}

BOOL sub_10004AB98@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_10004C23C();
  sub_10004C33C();
  sub_10004BE5C();
  result = sub_10004AC70(v3);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = !result;
  *(a2 + 65) = result;
  return result;
}

BOOL sub_10004AC70(uint64_t a1)
{
  v3 = sub_10004C3CC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v13 - v8);
  type metadata accessor for LargeReadingListWidgetView(0);
  sub_100011790(v9);
  (*(v4 + 32))(v7, v9, v3);
  v10 = (*(v4 + 88))(v7, v3);
  if (v10 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v10 == enum case for WidgetFamily.systemMedium(_:))
    {
      v11 = 2;
      return ((v11 - *(*(v1 + 8) + 16)) & ~((v11 - *(*(v1 + 8) + 16)) >> 63)) - 1 == a1;
    }

    if (v10 == enum case for WidgetFamily.systemLarge(_:))
    {
      v11 = 5;
      return ((v11 - *(*(v1 + 8) + 16)) & ~((v11 - *(*(v1 + 8) + 16)) >> 63)) - 1 == a1;
    }

    (*(v4 + 8))(v7, v3);
  }

  v11 = 1;
  return ((v11 - *(*(v1 + 8) + 16)) & ~((v11 - *(*(v1 + 8) + 16)) >> 63)) - 1 == a1;
}

double sub_10004AE24@<D0>(void *a1@<X8>)
{
  if (qword_10006C1D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10006E1C0;

  return result;
}

uint64_t sub_10004AE94()
{
  v1 = sub_10004C0EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001E64(&qword_10006E100, &qword_100058500);
  __chkstk_darwin(v5);
  v7 = (&v11 - v6);
  *v7 = sub_10004C33C();
  v7[1] = v8;
  v9 = sub_100001E64(&qword_10006E108, &qword_100058508);
  sub_100049898(v0, v7 + *(v9 + 44));
  sub_10004C0DC();
  sub_10004C33C();
  sub_1000020DC(&qword_10006E110, &qword_10006E100, &qword_100058500, &protocol conformance descriptor for ZStack<A>);
  sub_10004C21C();
  (*(v2 + 8))(v4, v1);
  return sub_1000022E8(v7, &qword_10006E100, &qword_100058500);
}

uint64_t sub_10004B098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LargeReadingListWidgetView(0);

  return sub_10004A3E8(a1, a2);
}

unint64_t sub_10004B118()
{
  result = qword_10006E170;
  if (!qword_10006E170)
  {
    type metadata accessor for BookmarkItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E170);
  }

  return result;
}

uint64_t sub_10004B170()
{
  v1 = type metadata accessor for LargeReadingListWidgetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_100001E64(&qword_10006C898, &unk_100051280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10004C3CC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  sub_100001E64(&qword_10006CB28, &qword_100051620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10004C39C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_10004B308@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LargeReadingListWidgetView(0);

  return sub_10004AB98(a1, a2);
}

unint64_t sub_10004B388()
{
  result = qword_10006E188;
  if (!qword_10006E188)
  {
    v1 = sub_100001FB0(&qword_10006E178, &qword_1000585B0);
    sub_10004B414(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E188);
  }

  return result;
}

unint64_t sub_10004B414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10006E190;
  if (!qword_10006E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E190);
  }

  return result;
}

uint64_t sub_10004B49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004B564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004B5CC()
{
  sub_100001FB0(&qword_10006E100, &qword_100058500);
  sub_1000020DC(&qword_10006E110, &qword_10006E100, &qword_100058500, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}