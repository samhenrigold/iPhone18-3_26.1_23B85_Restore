uint64_t sub_21CA24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v72 = sub_6620C(&qword_3C0C18, &qword_2EA808);
  __chkstk_darwin(v72);
  v73 = (&v57 - v5);
  v6 = type metadata accessor for Page(0);
  __chkstk_darwin(v6 - 8);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2C2A38();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v8;
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for PageView(0);
  v61 = *(v78 - 8);
  __chkstk_darwin(v78);
  v60 = v9;
  v71 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2C30F8();
  v58 = *(v77 - 1);
  __chkstk_darwin(v77);
  v57 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C7248, &qword_2F61C8);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_6620C(&qword_3C7250, &qword_2F61D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v66 = sub_6620C(&qword_3C7258, &qword_2F61D8);
  __chkstk_darwin(v66);
  v19 = &v57 - v18;
  v20 = sub_6620C(&qword_3C7260, &qword_2F61E0);
  v69 = *(v20 - 8);
  v70 = v20;
  __chkstk_darwin(v20);
  v67 = &v57 - v21;
  sub_21D490(v13);
  v76 = a1;
  sub_219D28(a1, v17);
  sub_69198(v13, &qword_3C7248, &qword_2F61C8);
  v79 = a2;
  sub_6620C(&qword_3C7268, &qword_2F61E8);
  v22 = sub_718D4(&qword_3C7270, &qword_2F61F0);
  v23 = sub_718D4(&qword_3C7278, &qword_2F61F8);
  v24 = sub_2263D0();
  v80 = v11;
  v81 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v23;
  v81 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v80 = v22;
  v81 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  sub_118844(v27, v28, v29);
  sub_2267B0();
  v59 = v19;
  sub_2C4128();
  (*(v15 + 8))(v17, v14);
  v30 = *a2;
  LOBYTE(v22) = *(a2 + 8);

  if ((v22 & 1) == 0)
  {
    sub_2C5DD8();
    v31 = sub_2C3718();
    sub_2C0058();

    v32 = v57;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v58 + 8))(v32, v77);
    v30 = v80;
  }

  v80 = *(v30 + 16);

  sub_6620C(&qword_3BCE08, &qword_2F6080);
  sub_72B74(&qword_3BCE10, &qword_3BCE08, &qword_2F6080, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v33 = sub_2C2408();

  v77 = type metadata accessor for PageView;
  v75 = a2;
  v34 = v71;
  sub_226300(a2, v71, type metadata accessor for PageView);
  v35 = v64;
  v36 = v63;
  v37 = v65;
  (*(v64 + 16))(v63, v76, v65);
  v38 = *(v61 + 80);
  v39 = (v38 + 16) & ~v38;
  v76 = v39 + v60;
  v40 = (v39 + v60 + *(v35 + 80)) & ~*(v35 + 80);
  v61 = v38 | 7;
  v41 = swift_allocObject();
  v58 = v39;
  v62 = type metadata accessor for PageView;
  sub_227474(v34, v41 + v39, type metadata accessor for PageView);
  (*(v35 + 32))(v41 + v40, v36, v37);
  v42 = v66;
  v43 = v59;
  *&v59[*(v66 + 52)] = v33;
  v44 = (v43 + *(v42 + 56));
  *v44 = sub_22709C;
  v44[1] = v41;
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  v45 = v75;
  v46 = v68;
  sub_2C44C8();
  Page.shelfGridIDToLoadMore.getter(&v80);
  sub_226368(v46, type metadata accessor for Page);
  sub_226300(v45, v34, v77);
  v47 = swift_allocObject();
  sub_227474(v34, v47 + v39, type metadata accessor for PageView);
  v48 = sub_6620C(&qword_3BE008, &unk_2E5630);
  v49 = sub_72B74(&qword_3C7300, &qword_3C7258, &qword_2F61D8, &protocol conformance descriptor for SubscriptionView<A, B>);
  v50 = sub_2284A8(&qword_3C7308, &qword_3BE008, &unk_2E5630, &protocol witness table for AnyHashable);
  v51 = v67;
  sub_2C4108();

  sub_69198(&v80, &qword_3BE008, &unk_2E5630);
  sub_69198(v43, &qword_3C7258, &qword_2F61D8);
  v52 = v75;
  v53 = v73;
  sub_29B3C4(v73);
  sub_226300(v52, v34, v77);
  v54 = swift_allocObject();
  sub_227474(v34, v54 + v58, v62);
  v80 = v42;
  v81 = v48;
  v82 = v49;
  v83 = v50;
  swift_getOpaqueTypeConformance2();
  sub_227208();
  v55 = v70;
  sub_2C40F8();

  sub_69198(v53, &qword_3C0C18, &qword_2EA808);
  return (*(v69 + 8))(v51, v55);
}

uint64_t sub_21D490@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v46 = sub_6620C(&qword_3C7330, &qword_2F6270);
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v2 = &v39 - v1;
  v3 = sub_6620C(&qword_3C7338, &qword_2F6278);
  __chkstk_darwin(v3);
  v43 = &v39 - v4;
  v44 = sub_6620C(&qword_3C7340, &qword_2F6280);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v39 - v5;
  v6 = sub_2C1318();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Page(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  LODWORD(v14) = v16[*(v14 + 64)];
  sub_226368(v16, type metadata accessor for Page);
  if (v14 == 1 && (sub_2C1338(), sub_2C1308(), sub_2285DC(&qword_3C1B80, &type metadata accessor for ListItemViewModel.PerfHacks, &protocol conformance descriptor for ListItemViewModel.PerfHacks), v17 = sub_2C6138(), v18 = *(v7 + 8), v18(v9, v6), v18(v12, v6), (v17 & 1) == 0))
  {
    v29 = v40;
    sub_21DAB4(v40);
    v30 = v41;
    v31 = v44;
    (*(v41 + 16))(v43, v29, v44);
    swift_storeEnumTagMultiPayload();
    v32 = sub_718D4(&qword_3C7298, &qword_2F6208);
    v33 = sub_2C4E28();
    v34 = sub_2265C0();
    v47 = v32;
    v48 = v33;
    v49 = v34;
    swift_getOpaqueTypeConformance2();
    v35 = sub_718D4(&qword_3C72B8, &qword_2F6218);
    v36 = sub_718D4(&qword_3C72C0, &qword_2F6220);
    v37 = sub_2266A4();
    v47 = v36;
    v48 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v35;
    v48 = &type metadata for Bool;
    v49 = OpaqueTypeConformance2;
    v50 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    sub_21E518(v2);
    v19 = v42;
    v20 = v46;
    (*(v42 + 16))(v43, v2, v46);
    swift_storeEnumTagMultiPayload();
    v21 = sub_718D4(&qword_3C7298, &qword_2F6208);
    v22 = sub_2C4E28();
    v23 = sub_2265C0();
    v47 = v21;
    v48 = v22;
    v49 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = sub_718D4(&qword_3C72B8, &qword_2F6218);
    v25 = sub_718D4(&qword_3C72C0, &qword_2F6220);
    v26 = sub_2266A4();
    v47 = v25;
    v48 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v47 = v24;
    v48 = &type metadata for Bool;
    v49 = v27;
    v50 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    return (*(v19 + 8))(v2, v20);
  }
}

void sub_21DAB4(uint64_t a1@<X8>)
{
  v72 = a1;
  v3 = sub_2C1FA8();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2C5258();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2C28A8();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_6620C(&qword_3C7348, &qword_2F6288);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = &v49 - v7;
  v55 = sub_6620C(&qword_3C7350, &qword_2F6290);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v49 - v9;
  v60 = sub_6620C(&qword_3C7358, &qword_2F6298);
  __chkstk_darwin(v60);
  v11 = &v49 - v10;
  v12 = sub_6620C(&qword_3C7360, &qword_2F62A0);
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v61 = &v49 - v13;
  v67 = sub_6620C(&qword_3C7298, &qword_2F6208);
  __chkstk_darwin(v67);
  v65 = &v49 - v14;
  v15 = type metadata accessor for Page(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Shelf(0);
  v19 = *(v59 - 8);
  __chkstk_darwin(v59);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v49 - v23);
  v57 = type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  v25 = v2;
  sub_2C44C8();
  v26 = *&v18[*(v16 + 68)];

  sub_226368(v18, type metadata accessor for Page);
  if (*(v26 + 16))
  {
    sub_226300(v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v21, type metadata accessor for Shelf);

    v27 = sub_227474(v21, v24, type metadata accessor for Shelf);
    __chkstk_darwin(v27);
    v49 = v25;
    *(&v49 - 2) = v25;
    sub_6620C(&qword_3C7368, &qword_2F62A8);
    sub_2274E4();
    sub_2C3948();
    v28 = v53;
    sub_2C2898();
    v29 = sub_72B74(&qword_3C7390, &qword_3C7348, &qword_2F6288, &protocol conformance descriptor for List<A, B>);
    v30 = v50;
    v31 = v54;
    v32 = v58;
    sub_2C4158();
    (*(v56 + 8))(v28, v32);
    (*(v51 + 8))(v8, v31);
    v75[0] = v31;
    v75[1] = v32;
    v75[2] = v29;
    v75[3] = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v33 = v55;
    sub_2C4018();
    (*(v52 + 8))(v30, v33);
    v34 = v60;
    v35 = &v11[*(v60 + 36)];
    *v35 = 0xD000000000000019;
    *(v35 + 1) = 0x80000000003072C0;
    v36 = v64;
    sub_2C5248();
    v37 = v59;
    v38 = sub_227650();
    v39 = v61;
    sub_2C3A98();
    (*(v66 + 8))(v36, v68);
    sub_69198(v11, &qword_3C7358, &qword_2F6298);
    v40 = v24[1];
    v73 = *v24;
    v74 = v40;

    sub_2C61A8();
    v41 = v69;
    sub_2C1BF8();
    v73 = v34;
    v74 = v38;
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
    v42 = v65;
    v43 = v63;
    v44 = v71;
    sub_2C3BD8();
    (*(v70 + 8))(v41, v44);
    sub_69198(v75, &qword_3BE008, &unk_2E5630);
    (*(v62 + 8))(v39, v43);
    v45 = *(v37 + 40);
    v46 = sub_6620C(&qword_3C72B0, &qword_2F6210);
    sub_68D34(v24 + v45, v42 + *(v46 + 52));
    KeyPath = swift_getKeyPath();
    v48 = v42 + *(v67 + 36);
    *v48 = KeyPath;
    *(v48 + 8) = 1;
    __chkstk_darwin(KeyPath);
    *(&v49 - 2) = v24;
    sub_2C4DB8();
    if (LOBYTE(v75[0]) == 1)
    {
    }

    else
    {
      sub_2C4E58();
      sub_2C4DC8();
    }

    sub_2C4E28();
    sub_2265C0();
    sub_2C3AD8();

    sub_69198(v42, &qword_3C7298, &qword_2F6208);
    sub_226368(v24, type metadata accessor for Shelf);
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_21E518@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for PageView(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Page(0) - 8;
  v57 = v7;
  __chkstk_darwin(v7);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v60 = sub_6620C(&qword_3C72D8, &qword_2F6228);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v53 - v12;
  v66 = sub_6620C(&qword_3C72C0, &qword_2F6220);
  __chkstk_darwin(v66);
  v59 = &v53 - v13;
  v14 = sub_6620C(&qword_3C72B8, &qword_2F6218);
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  v56 = v3[12];
  v72 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v55 = v1;
  sub_2C44C8();
  v16 = *&v11[*(v7 + 68)];

  v71 = type metadata accessor for Page;
  sub_226368(v11, type metadata accessor for Page);
  *&v78 = v16;
  v65 = type metadata accessor for PageView;
  sub_226300(v1, v6, type metadata accessor for PageView);
  v17 = *(v4 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  v54 = type metadata accessor for PageView;
  sub_227474(v6, v19 + v18, type metadata accessor for PageView);
  v64 = sub_2BFEA8();
  v63 = sub_6620C(&qword_3C3B78, &qword_2EFEF0);
  v53 = sub_6620C(&qword_3C73C8, &qword_2F63E0);
  sub_72B74(&qword_3C73B8, &qword_3C3B78, &qword_2EFEF0, &protocol conformance descriptor for [A]);
  v20 = sub_718D4(&qword_3C73D0, &qword_2F63E8);
  v21 = sub_72B74(&qword_3C73D8, &qword_3C73D0, &qword_2F63E8, &protocol conformance descriptor for VStack<A>);
  v74 = v20;
  v75 = v21;
  swift_getOpaqueTypeConformance2();
  sub_2285DC(&qword_3C6798, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v22 = v58;
  sub_2BFF98();
  v23 = v55;
  sub_226300(v55, v6, v65);
  v65 = v17;
  v24 = swift_allocObject();
  v63 = v18;
  v64 = v6;
  sub_227474(v6, v24 + v18, v54);
  v25 = v59;
  v26 = v60;
  sub_2BFF88();

  (*(v61 + 8))(v22, v26);
  sub_2C44C8();
  LOBYTE(v16) = v11[*(v57 + 60)];
  sub_226368(v11, v71);
  v27 = v23 + v3[17];
  v28 = v23;
  v29 = *v27;
  v30 = *(v27 + 8);
  LOBYTE(v78) = v29;
  *(&v78 + 1) = v30;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4398();
  v31 = v74;
  v32 = v75;
  LOBYTE(v23) = v76;
  v33 = v28 + v3[16];
  v34 = *(v33 + 16);
  v78 = *v33;
  v79 = v34;
  sub_6620C(&qword_3C7128, &unk_2F5FA0);
  sub_2C4398();
  v36 = v74;
  v35 = v75;
  v37 = v76;
  v38 = v77;
  LOBYTE(v78) = 0;
  sub_2C4368();
  v39 = v74;
  v40 = v75;
  v41 = v66;
  v42 = v25 + *(v66 + 36);
  *v42 = v16;
  *(v42 + 8) = v31;
  *(v42 + 16) = v32;
  v43 = v62;
  *(v42 + 24) = v23;
  v44 = v41;
  *(v42 + 32) = v36;
  *(v42 + 40) = v35;
  *(v42 + 48) = v37;
  *(v42 + 56) = v38;
  *(v42 + 64) = v39;
  *(v42 + 72) = v40;
  v45 = sub_2266A4();
  sub_2C4018();
  sub_69198(v25, &qword_3C72C0, &qword_2F6220);
  v46 = v67;
  sub_2C44C8();
  Page.intentToLoadMore.getter(&v74);
  sub_226368(v46, v71);
  v47 = v77;
  if (v77)
  {
    sub_68CD0(&v74);
  }

  LOBYTE(v78) = v47 != 0;
  v48 = v64;
  sub_226300(v28, v64, type metadata accessor for PageView);
  v49 = v63;
  v50 = swift_allocObject();
  sub_227474(v48, v50 + v49, type metadata accessor for PageView);
  v74 = v44;
  v75 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v69;
  sub_2C4108();

  return (*(v68 + 8))(v43, v51);
}

uint64_t sub_21ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Page(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v8 = sub_2BB374();
  v10 = v9;
  sub_226368(v6, type metadata accessor for Page);
  v11 = sub_6620C(&qword_3C7250, &qword_2F61D0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_6620C(&qword_3C7268, &qword_2F61E8);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v8;
  v13[2] = v10;
  return result;
}

double sub_21EE90@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_227310(a2, a3, a4);
  sub_2C3108();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_21EEE0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_227310(a1, a2, a3);

  return sub_2C3118();
}

uint64_t sub_21EF40(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v57 = a2;
  v4 = type metadata accessor for Shelf(0);
  v51 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v52 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Page(0);
  __chkstk_darwin(v56);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C10A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  __chkstk_darwin(v20);
  v22 = (&v50 - v21);
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  sub_226300(a1, v12, type metadata accessor for HostProxy.Event);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_226368(v12, type metadata accessor for HostProxy.Event);
  }

  (*(v14 + 32))(v25, v12, v13);
  v26 = *(v14 + 16);
  v55 = v25;
  v26(v22);
  if ((*(v14 + 88))(v22, v13) == enum case for PageScrollAction.Location.shelf(_:))
  {
    (*(v14 + 96))(v22, v13);
    v27 = *v22;
    type metadata accessor for PageView(0);
    sub_6620C(&qword_3C0C50, &qword_2EA860);
    sub_2C44C8();
    v28 = v56;
    v29 = *&v9[*(v56 + 60)];

    sub_226368(v9, type metadata accessor for Page);
    v30 = *(v29 + 16);

    if ((v27 & 0x8000000000000000) != 0)
    {
      return (*(v14 + 8))(v55, v13);
    }

    else
    {
      v31 = v27 < v30;
      v32 = v55;
      if (!v31)
      {
        return (*(v14 + 8))(v32, v13);
      }

      v33 = v54;
      sub_2C44C8();
      v34 = *(v33 + *(v28 + 60));

      result = sub_226368(v33, type metadata accessor for Page);
      if (v27 < *(v34 + 16))
      {
        v36 = v34 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27;
        v37 = v52;
        sub_226300(v36, v52, type metadata accessor for Shelf);

        v38 = *v37;
        v39 = v37[1];

        sub_226368(v37, type metadata accessor for Shelf);
        v58[0] = v38;
        v58[1] = v39;
        sub_2C47C8();
        sub_2C2A28();

        return (*(v14 + 8))(v32, v13);
      }

      __break(1u);
    }
  }

  else
  {
    if (qword_3BB808 != -1)
    {
      swift_once();
    }

    v40 = sub_2C00B8();
    sub_57AD8(v40, qword_3C30C8);
    v41 = v55;
    (v26)(v19, v55, v13);
    v42 = sub_2C0098();
    v43 = sub_2C5DC8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v44 = 136315138;
      (v26)(v16, v19, v13);
      v56 = sub_2C5918();
      v46 = v45;
      v47 = *(v14 + 8);
      v47(v19, v13);
      v48 = sub_5CCF4(v56, v46, v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "Unknown scroll location: %s", v44, 0xCu);
      sub_68CD0(v57);

      v49 = v55;
    }

    else
    {

      v47 = *(v14 + 8);
      v47(v19, v13);
      v49 = v41;
    }

    v47(v49, v13);
    return (v47)(v22, v13);
  }

  return result;
}

uint64_t sub_21F5D8(uint64_t a1)
{
  v2 = sub_2C1448();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C7320, &qword_2F6240);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_6620C(&qword_3C0C18, &qword_2EA808);
  __chkstk_darwin(v9 - 8);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v16 = (&v24 - v15);
  v27 = *(a1 + *(type metadata accessor for PageView(0) + 64));
  sub_29B3C4(v16);
  (*(v3 + 104))(v13, enum case for IntentDispatchState.loading(_:), v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_6932C(v16, v8, &qword_3C0C18, &qword_2EA808);
  sub_6932C(v13, &v8[v17], &qword_3C0C18, &qword_2EA808);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_6932C(v8, v26, &qword_3C0C18, &qword_2EA808);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = v25;
      (*(v3 + 32))(v25, &v8[v17], v2);
      sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState, &protocol conformance descriptor for IntentDispatchState);
      v21 = v26;
      v19 = sub_2C5878();
      v22 = *(v3 + 8);
      v22(v20, v2);
      sub_69198(v13, &qword_3C0C18, &qword_2EA808);
      sub_69198(v16, &qword_3C0C18, &qword_2EA808);
      v22(v21, v2);
      sub_69198(v8, &qword_3C0C18, &qword_2EA808);
      return sub_1C2D94(v19 & 1);
    }

    sub_69198(v13, &qword_3C0C18, &qword_2EA808);
    sub_69198(v16, &qword_3C0C18, &qword_2EA808);
    (*(v3 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_69198(v13, &qword_3C0C18, &qword_2EA808);
  sub_69198(v16, &qword_3C0C18, &qword_2EA808);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_69198(v8, &qword_3C7320, &qword_2F6240);
    v19 = 0;
    return sub_1C2D94(v19 & 1);
  }

  sub_69198(v8, &qword_3C0C18, &qword_2EA808);
  v19 = 1;
  return sub_1C2D94(v19 & 1);
}

void sub_21FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = sub_2C1448();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C7320, &qword_2F6240);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_6620C(&qword_3C0C18, &qword_2EA808);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v24 - v17;
  (*(v5 + 104))(&v24 - v17, enum case for IntentDispatchState.loading(_:), v4, v16);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v9 + 56);
  sub_6932C(a2, v11, &qword_3C0C18, &qword_2EA808);
  sub_6932C(v18, &v11[v19], &qword_3C0C18, &qword_2EA808);
  v20 = *(v5 + 48);
  if (v20(v11, 1, v4) == 1)
  {
    sub_69198(v18, &qword_3C0C18, &qword_2EA808);
    if (v20(&v11[v19], 1, v4) == 1)
    {
      sub_69198(v11, &qword_3C0C18, &qword_2EA808);
      return;
    }

    goto LABEL_6;
  }

  sub_6932C(v11, v14, &qword_3C0C18, &qword_2EA808);
  if (v20(&v11[v19], 1, v4) == 1)
  {
    sub_69198(v18, &qword_3C0C18, &qword_2EA808);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_69198(v11, &qword_3C7320, &qword_2F6240);
LABEL_7:
    v21 = type metadata accessor for PageView(0);
    sub_1C2A4C(*(v25 + *(v21 + 68)));
    return;
  }

  (*(v5 + 32))(v7, &v11[v19], v4);
  sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState, &protocol conformance descriptor for IntentDispatchState);
  v22 = sub_2C5878();
  v23 = *(v5 + 8);
  v23(v7, v4);
  sub_69198(v18, &qword_3C0C18, &qword_2EA808);
  v23(v14, v4);
  sub_69198(v11, &qword_3C0C18, &qword_2EA808);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_21FE30()
{
  v33 = type metadata accessor for Page(0);
  __chkstk_darwin(v33);
  v31 = v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v3 = v27 - v2;
  v4 = sub_2C0D48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (v27 - v9);
  v11 = type metadata accessor for PageView(0);
  v12 = *(v11 + 36);
  sub_29A87C(v10);
  v32 = sub_2C0CD8();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = *(v11 + 40);
  v29 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v30 = v14;
  sub_2C44C8();
  v15 = *&v3[*(v33 + 96) + 8];

  sub_226368(v3, type metadata accessor for Page);
  v27[2] = v12;
  v28 = v13;
  v27[1] = v5 + 8;
  if (v15)
  {
    sub_29A87C(v7);
    v16 = sub_2C0D58();

    v13(v7, v4);
    v17 = v4;
    if (v16)
    {

      v32 = v16;
    }
  }

  else
  {
    v17 = v4;
  }

  v18 = v31;
  sub_2C44C8();
  v19 = (v18 + *(v33 + 100));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = v19[4];
  sub_1825C8(*v19, v21, v22, v23, v24);
  sub_226368(v18, type metadata accessor for Page);
  if (!v21)
  {
    return v32;
  }

  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  sub_29A87C(v10);
  v25 = sub_147DBC();
  v28(v10, v17);
  sub_18260C(v20, v21, v22, v23, v24);
  if (!v25)
  {
    return v32;
  }

  return v25;
}

uint64_t sub_220174@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v2 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v2 - 8);
  v61 = &v61 - v3;
  v4 = sub_6620C(&qword_3C1598, &unk_2EB570);
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - v5;
  v7 = type metadata accessor for Page(0);
  __chkstk_darwin(v7);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v65 = &v61 - v13;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  v20 = sub_2C15F8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v63 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PageView(0);
  v24 = *(v23 + 40);
  v25 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v68 = v1;
  v69 = v24;
  v64 = v25;
  sub_2C44C8();
  v67 = v7;
  sub_6932C(&v19[*(v7 + 40)], v6, &qword_3C1598, &unk_2EB570);
  sub_226368(v19, type metadata accessor for Page);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    v63 = v16;
    v27 = v65;
    v26 = v66;
    sub_69198(v6, &qword_3C1598, &unk_2EB570);
    sub_2C44C8();
    v28 = v61;
    sub_6932C(&v11[*(v67 + 20)], v61, &qword_3BEF80, &qword_2E8D50);
    sub_226368(v11, type metadata accessor for Page);
    v29 = sub_2BFDD8();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v28, 1, v29) == 1)
    {
      v32 = v26;
      sub_2BFDC8();
      if (v31(v28, 1, v29) != 1)
      {
        sub_69198(v28, &qword_3BEF80, &qword_2E8D50);
      }
    }

    else
    {
      v32 = v26;
      (*(v30 + 32))(v26, v28, v29);
    }

    v50 = sub_6620C(&qword_3C7230, &qword_2F61A8);
    v51 = v50[16];
    v64 = v50[12];
    v65 = v51;
    v66 = v50[20];
    v52 = v63;
    sub_2C44C8();
    v53 = v67;
    v54 = *(v52 + *(v67 + 44));

    sub_226368(v52, type metadata accessor for Page);
    *(v32 + v64) = v54;
    sub_2C44C8();
    v55 = *(v27 + *(v53 + 48));

    sub_226368(v27, type metadata accessor for Page);
    *&v65[v32] = v55;
    v56 = v62;
    sub_2C44C8();
    v57 = *(v53 + 28);
    v58 = sub_2C1A28();
    (*(*(v58 - 8) + 16))(v66 + v32, v56 + v57, v58);
    sub_226368(v56, type metadata accessor for Page);
    v59 = enum case for NavigationStyle.plain(_:);
    v60 = sub_2C0F68();
    return (*(*(v60 - 8) + 104))(v32, v59, v60);
  }

  else
  {
    v33 = v63;
    (*(v21 + 32))(v63, v6, v20);
    v34 = sub_6620C(&qword_3C7238, &qword_2F61B0);
    v35 = v34[12];
    v36 = v34[20];
    v61 = v34[16];
    v62 = v36;
    v37 = (v68 + *(v23 + 48));
    v38 = *v37;
    v39 = v37[1];
    v73 = v38;
    v74 = v39;
    sub_6620C(&qword_3C7240, &qword_2F61B8);
    sub_2C4398();
    v40 = v71;
    v41 = v72;
    v42 = v66;
    *v66 = v70;
    *(v42 + 1) = v40;
    *(v42 + 2) = v41;
    (*(v21 + 16))(&v42[v35], v33, v20);
    sub_2C44C8();
    v43 = v67;
    v44 = *&v16[*(v67 + 44)];

    sub_226368(v16, type metadata accessor for Page);
    *&v42[v61] = v44;
    v45 = v65;
    sub_2C44C8();
    (*(v21 + 8))(v63, v20);
    v46 = *(v45 + *(v43 + 48));

    sub_226368(v45, type metadata accessor for Page);
    *&v62[v42] = v46;
    v47 = enum case for NavigationStyle.uber(_:);
    v48 = sub_2C0F68();
    return (*(*(v48 - 8) + 104))(v42, v47, v48);
  }
}

uint64_t sub_220890@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = type metadata accessor for Page(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetActionImplementation(0);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v15 = *(v2 + 76);
  v16 = sub_2BEF78();
  (*(*(v16 - 8) + 16))(v7, &v4[v15], v16);
  sub_226368(v4, type metadata accessor for Page);
  v22[0] = sub_2C4E28();
  sub_2C4F38();
  v17 = *(v9 + 16);
  v17(v14, v11, v8);
  sub_2285DC(&unk_3BFEA0, type metadata accessor for AssetActionImplementation, &protocol conformance descriptor for AssetActionImplementation);
  sub_2C4EF8();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_226368(v7, type metadata accessor for AssetActionImplementation);
  sub_6620C(&qword_3BD520, &qword_2E40B0);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v17((v20 + v19), v14, v8);
  sub_2C4F38();
  v17(v11, (v20 + v19), v8);
  swift_setDeallocating();
  v18((v20 + v19), v8);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v18(v11, v8);
  return (v18)(v14, v8);
}

uint64_t sub_220C24(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v58 = a1;
  v2 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v46 - v3;
  v48 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - v4;
  v5 = sub_6620C(&qword_3C7228, &unk_2F6198);
  __chkstk_darwin(v5 - 8);
  v7 = (&v46 - v6);
  v8 = sub_2C1CB8();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Shelf(0);
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Page(0);
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_2C1FD8();
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v52 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v22);
  v24 = (&v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226300(v58, v24, type metadata accessor for HostProxy.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v41 = type metadata accessor for PageView(0);
    sub_6620C(&qword_3C0C50, &qword_2EA860);
    v42 = v57;
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v59);
    result = sub_226368(v16, type metadata accessor for Page);
    if (v60)
    {
      sub_68D1C(&v59, v61);
      sub_1C0C88(v61, *(v42 + *(v41 + 68)));
      return sub_68CD0(v61);
    }

    return result;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return sub_226368(v24, type metadata accessor for HostProxy.Event);
  }

  v26 = *v24;
  v58 = type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v27 = *&v19[*(v14 + 60)];

  result = sub_226368(v19, type metadata accessor for Page);
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v26 >= *(v27 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_226300(v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v26, v13, type metadata accessor for Shelf);

  v29 = *(v11 + 60);
  v30 = v54;
  (*(v54 + 16))(v10, &v13[v29], v8);
  sub_226368(v13, type metadata accessor for Shelf);
  sub_2C1C88();
  (*(v30 + 8))(v10, v8);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  v31 = v56;
  v32 = swift_dynamicCast();
  v33 = v55;
  v34 = *(v55 + 56);
  if (v32)
  {
    v34(v7, 0, 1, v31);
    v35 = v52;
    (*(v33 + 32))();
    sub_2C1FC8();
    if (v60)
    {
      sub_68D1C(&v59, v61);
      v36 = v46;
      v37 = v48;
      sub_2C4DB8();
      v39 = v49;
      v38 = v50;
      v40 = v51;
      (*(v50 + 104))(v49, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v51);
      sub_2C4F28();

      (*(v38 + 8))(v39, v40);
      (*(v47 + 8))(v36, v37);
      sub_68CD0(v61);
      return (*(v33 + 8))(v35, v31);
    }

    (*(v33 + 8))(v35, v31);
    v43 = &unk_3BDC90;
    v44 = &unk_2E5620;
    v45 = &v59;
  }

  else
  {
    v34(v7, 1, 1, v31);
    v43 = &qword_3C7228;
    v44 = &unk_2F6198;
    v45 = v7;
  }

  return sub_69198(v45, v43, v44);
}

uint64_t sub_2213C8(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v2 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - v4;
  v6 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - v8;
  type metadata accessor for PageView(0);
  sub_2C4DB8();
  v10 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v14[3] = v10;
  v14[4] = sub_72B74(&qword_3BD480, &qword_3BD478, &unk_2E4090, &protocol conformance descriptor for PageUpdateAction<A, B>);
  v11 = sub_720C8(v14);
  (*(*(v10 - 8) + 16))(v11, v13, v10);
  (*(v3 + 104))(v5, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);
  sub_2C4F28();

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return sub_68CD0(v14);
}

uint64_t sub_221638()
{
  v0 = sub_6620C(&qword_3BDCF8, &unk_2EE780);
  __chkstk_darwin(v0 - 8);
  v2 = &v19[-v1 - 8];
  v3 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4 - 8];
  v6 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for ListItemComponentModel(0);
  sub_2C1328();
  v21[0] = xmmword_2ECB90;
  memset(&v21[1], 0, 32);
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  sub_691F8(v22, v20);
  sub_C04C8(v21, v19);
  sub_CC804(v20, v19, &v8[v6[5]]);
  sub_72084(v22, v22[3]);
  v9 = sub_2BF3B8();
  v11 = v10;
  sub_C12F8(v21);
  v12 = &v8[v6[6]];
  *v12 = v9;
  v12[1] = v11;
  v8[v6[7]] = 0;
  sub_68CD0(v22);
  sub_2C12F8();
  v13 = sub_2C2338();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    sub_69198(v2, &qword_3BDCF8, &unk_2EE780);
    v15 = 1;
  }

  else
  {
    sub_2C2308();
    (*(v14 + 8))(v2, v13);
    v15 = 0;
  }

  v16 = sub_2BE5C8();
  (*(*(v16 - 8) + 56))(v5, v15, 1, v16);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  sub_2C3BB8();
  sub_69198(v5, &qword_3BCE00, &unk_2E3D30);
  return sub_226368(v8, type metadata accessor for ContextActionMenuView);
}

uint64_t sub_221994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_2BE7E8();
  __chkstk_darwin(v3 - 8);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v47 - v6;
  v7 = sub_6620C(&qword_3BDCF8, &unk_2EE780);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6620C(&qword_3C71C8, &qword_2F6090);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - v16;
  v48 = sub_6620C(&qword_3C7200, &qword_2F60A8);
  __chkstk_darwin(v48);
  v18 = &v47 - v17;
  v50 = sub_6620C(&qword_3C71F0, &qword_2F60A0);
  __chkstk_darwin(v50);
  v53 = &v47 - v19;
  v20 = type metadata accessor for RecommendationItemComponentModel(0);
  sub_2C1328();
  v57[0] = xmmword_2ECB90;
  memset(&v57[1], 0, 32);
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  sub_691F8(v60, v59);
  sub_C04C8(v57, v58);
  sub_CC804(v59, v58, &v15[v13[5]]);
  sub_72084(v60, v60[3]);
  v21 = sub_2BF3B8();
  v23 = v22;
  sub_C12F8(v57);
  v24 = &v15[v13[6]];
  *v24 = v21;
  v24[1] = v23;
  v15[v13[7]] = 0;
  sub_68CD0(v60);
  v54 = a1;
  sub_2C12F8();
  v25 = sub_2C2338();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) == 1)
  {
    sub_69198(v9, &qword_3BDCF8, &unk_2EE780);
    v27 = 1;
  }

  else
  {
    sub_2C2308();
    (*(v26 + 8))(v9, v25);
    v27 = 0;
  }

  v28 = sub_2BE5C8();
  (*(*(v28 - 8) + 56))(v12, v27, 1, v28);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  v29 = v49;
  sub_2C3BB8();
  sub_69198(v12, &qword_3BCE00, &unk_2E3D30);
  sub_226368(v15, type metadata accessor for ContextActionMenuView);
  KeyPath = swift_getKeyPath();
  v31 = *(v20 + 32);
  v32 = v54;
  sub_6932C(v54 + v31, v57, &qword_3C0850, &qword_2F8FA0);
  v33 = *(&v57[0] + 1) != 0;
  sub_69198(v57, &qword_3C0850, &qword_2F8FA0);
  (*(v51 + 32))(v18, v29, v52);
  v34 = &v18[*(v48 + 36)];
  *v34 = KeyPath;
  v34[8] = v33;
  v35 = swift_getKeyPath();
  sub_6932C(v32 + v31, v57, &qword_3C0850, &qword_2F8FA0);
  LOBYTE(KeyPath) = *(&v57[0] + 1) != 0;
  sub_69198(v57, &qword_3C0850, &qword_2F8FA0);
  v36 = v53;
  sub_69130(v18, v53, &qword_3C7200, &qword_2F60A8);
  v37 = v36 + *(v50 + 36);
  *v37 = v35;
  *(v37 + 8) = KeyPath;
  v38 = swift_getKeyPath();
  sub_6932C(v32 + v31, v57, &qword_3C0850, &qword_2F8FA0);
  if (*(&v57[0] + 1))
  {
    v39 = v47;
    sub_F03F4(v47);
    sub_F3EA0(v57);
    v40 = v55;
    sub_227474(v39, v55, &type metadata accessor for ContextAssetInfoAnalytics);
  }

  else
  {
    sub_69198(v57, &qword_3C0850, &qword_2F8FA0);
    v41 = sub_2BEC68();
    v40 = v55;
    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
  }

  v42 = sub_6620C(&qword_3C71D8, &qword_2F6098);
  v43 = v56;
  v44 = (v56 + *(v42 + 36));
  v45 = sub_6620C(&qword_3C7210, &unk_2F60B0);
  sub_227474(v40, v44 + *(v45 + 28), &type metadata accessor for ContextAssetInfoAnalytics);
  *v44 = v38;
  return sub_69130(v36, v43, &qword_3C71F0, &qword_2F60A0);
}

uint64_t sub_222144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = sub_6620C(&qword_3BDCF8, &unk_2EE780);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v5 - 8);
  v29 = &v28 - v6;
  v7 = sub_2C1348();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartSwooshItemComponentModel(0);
  sub_2C1628();
  sub_2C1328();
  v17 = *(v8 + 8);
  v17(v13, v7);
  v33[0] = xmmword_2ECB90;
  memset(&v33[1], 0, 32);
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  sub_691F8(v34, v32);
  sub_C04C8(v33, v31);
  sub_CC804(v32, v31, &v16[v14[5]]);
  sub_72084(v34, v34[3]);
  v18 = sub_2BF3B8();
  v20 = v19;
  sub_C12F8(v33);
  v21 = &v16[v14[6]];
  *v21 = v18;
  v21[1] = v20;
  v16[v14[7]] = 0;
  sub_68CD0(v34);
  sub_2C1628();
  sub_2C12F8();
  v17(v10, v7);
  v22 = sub_2C2338();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v4, 1, v22) == 1)
  {
    sub_69198(v4, &qword_3BDCF8, &unk_2EE780);
    v24 = 1;
    v25 = v29;
  }

  else
  {
    v25 = v29;
    sub_2C2308();
    (*(v23 + 8))(v4, v22);
    v24 = 0;
  }

  v26 = sub_2BE5C8();
  (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  sub_2C3BB8();
  sub_69198(v25, &qword_3BCE00, &unk_2E3D30);
  return sub_226368(v16, type metadata accessor for ContextActionMenuView);
}

uint64_t sub_2225AC(uint64_t a1)
{
  v2 = type metadata accessor for PageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_6620C(&qword_3C73B0, &unk_2F6300);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for Page(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v10 = *&v9[*(v7 + 68)];

  sub_226368(v9, type metadata accessor for Page);
  v15[1] = v10;
  sub_6620C(&qword_3C3B78, &qword_2EFEF0);
  sub_72B74(&qword_3C73B8, &qword_3C3B78, &qword_2EFEF0, &protocol conformance descriptor for [A]);
  sub_2BFF38();
  swift_getKeyPath();
  sub_226300(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_227474(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PageView);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_227834;
  *(v13 + 24) = v12;
  sub_6620C(&qword_3C7380, &unk_2F62B0);
  sub_72B74(&qword_3C73C0, &qword_3C73B0, &unk_2F6300, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_227568();
  return sub_2C4558();
}

double sub_2228EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2BE9B8();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44F8();
  v5 = type metadata accessor for ListShelfView(0);
  v6 = a2 + v5[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v5[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v5[9];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  sub_2BE998();
  sub_2BE818();
  v10 = a2 + v5[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  *(a2 + v5[5]) = a1;
  v11 = a2 + *(sub_6620C(&qword_3C7380, &unk_2F62B0) + 36);
  *(v11 + 32) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  return result;
}

uint64_t sub_222A94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6620C(&qword_3C1930, &qword_2EBCC0);
  __chkstk_darwin(v2 - 8);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v47 - v5;
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v24 = Shelf.cardSetData.getter();
  if (v24)
  {
    v25 = v24;
    v50 = v23;
    v51 = a1;
    v52 = sub_2C4E28();
    sub_2C4F38();
    v56 = v25;
    v47 = *(v13 + 16);
    v26 = v47(v20, v17, v12);
    sub_9EA8C(v26, v27, v28);
    sub_2C4EF8();
    v29 = v17;
    v30 = *(v13 + 8);
    v30(v29, v12);

    sub_6620C(&qword_3BD520, &qword_2E40B0);
    v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v32 = swift_allocObject();
    v49 = v20;
    v33 = v20;
    v34 = v47;
    v47((v32 + v31), v33, v12);
    v35 = v54;
    sub_2C4F38();
    v34(v29, v32 + v31, v12);
    swift_setDeallocating();
    v30((v32 + v31), v12);
    swift_deallocClassInstance();
    sub_2C4EE8();
    v48 = v29;
    v30(v29, v12);
    v36 = v55;
    v34(v55, v35, v12);
    (*(v13 + 56))(v36, 0, 1, v12);
    v37 = v53;
    sub_6932C(v36, v53, &qword_3C1930, &qword_2EBCC0);
    v38 = *(v13 + 48);
    if (v38(v37, 1, v12) != 1)
    {
      sub_69198(v55, &qword_3C1930, &qword_2EBCC0);
      v30(v54, v12);
      v30(v49, v12);
      v23 = v50;
      (*(v13 + 32))(v50, v37, v12);
      v17 = v48;
      goto LABEL_11;
    }

    v23 = v50;
    sub_2C4F38();
    sub_69198(v55, &qword_3C1930, &qword_2EBCC0);
    v30(v54, v12);
    v30(v49, v12);
    v39 = v38(v37, 1, v12);
    v17 = v48;
    if (v39 != 1)
    {
      v40 = v37;
LABEL_8:
      sub_69198(v40, &qword_3C1930, &qword_2EBCC0);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_6932C(v11, v8, &qword_3C1930, &qword_2EBCC0);
    v41 = *(v13 + 48);
    if (v41(v8, 1, v12) != 1)
    {
      sub_69198(v11, &qword_3C1930, &qword_2EBCC0);
      (*(v13 + 32))(v23, v8, v12);
      goto LABEL_11;
    }

    sub_2C4E28();
    sub_2C4F38();
    sub_69198(v11, &qword_3C1930, &qword_2EBCC0);
    if (v41(v8, 1, v12) != 1)
    {
      v40 = v8;
      goto LABEL_8;
    }
  }

LABEL_11:
  sub_6620C(&qword_3BD520, &qword_2E40B0);
  v42 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v43 = swift_allocObject();
  v44 = *(v13 + 16);
  v44(v43 + v42, v23, v12);
  sub_2C4E28();
  sub_2C4F38();
  v44(v17, (v43 + v42), v12);
  swift_setDeallocating();
  v45 = *(v13 + 8);
  v45(v43 + v42, v12);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v45(v17, v12);
  return (v45)(v23, v12);
}

uint64_t sub_223154@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = sub_2C2548();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Page(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3C73D0, &qword_2F63E8);
  __chkstk_darwin(v20);
  v12 = &v19 - v11;
  sub_6620C(&qword_3C73E8, &qword_2F63F0);
  sub_2BFE78();
  v13 = v24;
  *v12 = sub_2C3328();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v14 = &v12[*(sub_6620C(&qword_3C73F0, &unk_2F63F8) + 44)];
  v21 = a1;
  sub_223450(a1, v13, v14);
  type metadata accessor for Shelf(0);
  type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v15 = *&v10[*(v8 + 68)];

  sub_226368(v10, type metadata accessor for Page);
  sub_29B324(v6);
  _s7BooksUI24ShelfBackgroundViewModelV09BookStoreB0E21allowDefaultGradients2in11colorSchemeSaySbGSayAD0C0VG_05SwiftB005ColorN0OtFZ_0(v15, v6);
  v17 = v16;

  result = (*(v4 + 8))(v6, v23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v17 + 16))
  {

    sub_72B74(&qword_3C73D8, &qword_3C73D0, &qword_2F63E8, &protocol conformance descriptor for VStack<A>);
    sub_2C3C48();
    return sub_69198(v12, &qword_3C73D0, &qword_2F63E8);
  }

  __break(1u);
  return result;
}

uint64_t sub_223450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Shelf(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226300(a1, v15, type metadata accessor for Shelf);
  sub_21A280(a2);
  v17 = v16;
  sub_6932C(a1 + *(v13 + 88), v8, &qword_3BDE70, &qword_2E52F0);
  v18 = sub_2BEA28();
  result = (*(*(v18 - 8) + 48))(v8, 1, v18);
  if (result)
  {
    goto LABEL_5;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    sub_2BE9D8();
LABEL_5:
    sub_1E7F5C(v8, v11);
    return sub_113C90(v15, v11, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22362C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Page(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BFEF8();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for PageView(0);
  v12 = (a2 + v11[14]);
  v13 = *(v12 + 2);
  v25 = *v12;
  v26 = v13;
  *&v23 = v8;
  *(&v23 + 1) = v10;
  sub_6620C(&qword_3C7128, &unk_2F5FA0);
  sub_2C4388();
  sub_223814(a1);
  sub_2BFED8();
  v15 = v14;
  sub_2BFEE8();
  v17 = v15 - v16;
  sub_2BFEF8();
  if (v17 + -700.0 <= v18)
  {
    sub_6620C(&qword_3C0C50, &qword_2EA860);
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v23);
    sub_226368(v6, type metadata accessor for Page);
    if (v24)
    {
      sub_68D1C(&v23, &v25);
      sub_1C0C88(&v25, *(a2 + v11[17]));
      return sub_68CD0(&v25);
    }

    else
    {
      v21 = *(a2 + v11[16]);
      result = swift_beginAccess();
      *(v21 + 16) = 1;
    }
  }

  else
  {
    v19 = *(a2 + v11[16]);
    result = swift_beginAccess();
    *(v19 + 16) = 0;
  }

  return result;
}

void *sub_223814(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_6620C(&qword_3C0C68, &unk_2EAD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_2C1EC8();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C30F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Page(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PageView(0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v18 = v16[*(v14 + 44)];
  sub_226368(v16, type metadata accessor for Page);
  v19 = 1.0;
  if (v18 != 1)
  {
    goto LABEL_11;
  }

  v20 = v2 + *(v17 + 28);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_2BFEF8();
    v26 = v25;
    sub_2BFF08();
    if (v26 <= v27)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    goto LABEL_11;
  }

  sub_2C5DD8();
  v24 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  sub_71AF4(v21, 0);
  (*(v10 + 8))(v12, v9);
  if (v46)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_6620C(&qword_3C6FC0, &unk_2F5DF8);
  sub_2C4378();
  v23 = v41;
  v22 = v42;
  if ((*(v41 + 48))(v5, 1, v42) == 1)
  {
    sub_69198(v5, &qword_3C0C68, &unk_2EAD50);
    v19 = 0.0;
  }

  else
  {
    (*(v23 + 32))(v8, v5, v22);
    sub_2C1EA8();
    v29 = v28;
    sub_2C1EB8();
    v31 = v30;
    v32 = sub_2BFEF8();
    v44 = (v33 - v29) / (v31 - v29);
    v46 = xmmword_2F5DD0;
    sub_228230(v32, v34, v35);
    sub_2C5858();
    (*(v23 + 8))(v8, v22);
    v19 = v45;
  }

LABEL_11:
  v36 = (v2 + *(v17 + 48));
  v37 = *v36;
  v38 = v36[1];
  *&v46 = *v36;
  *(&v46 + 1) = v38;
  sub_6620C(&qword_3C7240, &qword_2F61B8);
  result = sub_2C4378();
  if (v45 != v19)
  {
    v45 = v19;
    *&v46 = v37;
    *(&v46 + 1) = v38;
    return sub_2C4388();
  }

  return result;
}

uint64_t sub_223C74(uint64_t a1)
{
  v2 = type metadata accessor for Page(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageView(0);
  v6 = *(a1 + *(v5 + 64));
  result = swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    sub_6620C(&qword_3C0C50, &qword_2EA860);
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v9);
    result = sub_226368(v4, type metadata accessor for Page);
    if (v10)
    {
      sub_68D1C(&v9, v11);
      sub_1C0C88(v11, *(a1 + *(v5 + 68)));
      return sub_68CD0(v11);
    }
  }

  return result;
}

void sub_223DA8(_BYTE *a1@<X1>, char *a2@<X8>)
{
  if (*a1)
  {
    sub_2C28C8();
    v4 = v3;
    sub_2C28B8();
    v6 = v4 + v5 > 0.0;
  }

  else
  {
    v6 = 2;
  }

  *a2 = v6;
}

uint64_t sub_223E00(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_2C48B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C48D8();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C48F8();
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = *a2;
  if (v20 == 2)
  {
    v35 = *(a3 + 8);
    v36 = *(a3 + 24);
    LOBYTE(aBlock[0]) = 0;
  }

  else
  {
    v32 = v17;
    v33 = v6;
    if ((v20 & 1) == 0)
    {
      v21 = v16;
      v35 = *(a3 + 64);
      sub_6620C(&qword_3C7418, &qword_2F64E8);
      sub_2C4378();
      if ((sub_2C25B8() & 1) == 0)
      {
        sub_183EBC();
        v30 = sub_2C5E88();
        sub_2C48E8();
        sub_2C4918();
        v23 = *(v32 + 1);
        v31 = v21;
        v32 = v23;
        v23(v14, v21);
        v24 = swift_allocObject();
        v25 = *(a3 + 48);
        v24[3] = *(a3 + 32);
        v24[4] = v25;
        v24[5] = *(a3 + 64);
        v26 = *(a3 + 16);
        v24[1] = *a3;
        v24[2] = v26;
        aBlock[4] = sub_2285BC;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_750DC;
        aBlock[3] = &unk_392BE8;
        v29 = _Block_copy(aBlock);
        sub_228470(a3, &v35);

        sub_2C48C8();
        *&v35 = _swiftEmptyArrayStorage;
        sub_2285DC(&qword_3C2BC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_6620C(&qword_3C2BC8, &unk_2EE890);
        sub_72B74(&qword_3C2BD0, &qword_3C2BC8, &unk_2EE890, &protocol conformance descriptor for [A]);
        sub_2C6158();
        v27 = v29;
        v28 = v30;
        sub_2C5E68();
        _Block_release(v27);

        (*(v33 + 8))(v8, v5);
        (*(v34 + 8))(v11, v9);
        return v32(v19, v31);
      }
    }

    v35 = *(a3 + 8);
    v36 = *(a3 + 24);
    LOBYTE(aBlock[0]) = v20 & 1;
  }

  sub_6620C(&qword_3C27A8, &qword_2EDC50);
  return sub_2C44D8();
}

uint64_t sub_2242AC(uint64_t a1)
{
  sub_6620C(&qword_3C7420, &unk_2F64F0);
  sub_2C44C8();
  sub_6620C(&qword_3C27A8, &qword_2EDC50);
  return sub_2C44D8();
}

uint64_t sub_224340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v3 = sub_6620C(&qword_3C73F8, &unk_2F64D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - v5;
  v7 = v2[3];
  v27 = v2[2];
  v28 = v7;
  v29 = v2[4];
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v9 = sub_6620C(&qword_3C08B0, &unk_2EA270);
  v10 = swift_allocObject();
  v11 = v2[3];
  v10[3] = v2[2];
  v10[4] = v11;
  v10[5] = v2[4];
  v12 = v2[1];
  v10[1] = *v2;
  v10[2] = v12;
  v13 = swift_allocObject();
  v14 = v2[3];
  v13[3] = v2[2];
  v13[4] = v14;
  v13[5] = v2[4];
  v15 = v2[1];
  v13[1] = *v2;
  v13[2] = v15;
  sub_228470(&v25, v24);
  sub_228470(&v25, v24);
  v16 = sub_6620C(&qword_3C7400, &qword_2F64E0);
  v17 = sub_72B74(&qword_3C7408, &qword_3C7400, &qword_2F64E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v22 = sub_2284A8(&qword_3C7410, &qword_3C08B0, &unk_2EA270, &protocol witness table for Bool);
  sub_2C4008();

  v18 = swift_allocObject();
  v19 = v28;
  v18[3] = v27;
  v18[4] = v19;
  v18[5] = v29;
  v20 = v26;
  v18[1] = v25;
  v18[2] = v20;
  sub_228470(&v25, v24);
  v24[0] = v16;
  v24[1] = v9;
  v24[2] = v17;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_2C3F98();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22464C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v26 = a4;
  v27 = a6;
  v24 = a3;
  v25 = a5;
  v9 = sub_6620C(&qword_3C3AB0, &qword_2EFE98);
  __chkstk_darwin(v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v23 - v13);
  v15 = sub_2C2548();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for ColorScheme.dark(_:), v15, v17);
  v20 = sub_2C2538();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    sub_6932C(a1, v14, &qword_3C3AB0, &qword_2EFE98);
    v21 = v26 | (*v14 != v24);
  }

  else
  {
    sub_6932C(a1, v11, &qword_3C3AB0, &qword_2EFE98);
    v21 = v27 | (*v11 != v25);
    v14 = v11;
  }

  result = sub_226368(v14 + *(v9 + 48), type metadata accessor for Shelf);
  *a7 = v21 & 1;
  return result;
}

uint64_t sub_224874()
{
  v0 = sub_2C2978();
  sub_68DE4(v0, qword_3E88F0);
  v1 = sub_57AD8(v0, qword_3E88F0);
  sub_2C61A8();
  return (*(*(v0 - 8) + 104))(v1, enum case for CoordinateSpace.named(_:), v0);
}

void _s7BooksUI24ShelfBackgroundViewModelV09BookStoreB0E21allowDefaultGradients2in11colorSchemeSaySbGSayAD0C0VG_05SwiftB005ColorN0OtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  if (v9)
  {
    v18[0] = a2;
    v11 = 0;
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    while (1)
    {
      sub_226300(v12, v8, type metadata accessor for Shelf);
      v14 = sub_2C1B48();
      v6 = sub_226368(v8, type metadata accessor for Shelf);
      if ((v14 & 1) == 0)
      {
        break;
      }

      ++v11;
      v12 += v13;
      v10 = v9 == v11;
      if (v9 == v11)
      {
        v11 = 0;
        a2 = v18[0];
        goto LABEL_8;
      }
    }

    a2 = v18[0];
  }

  else
  {
    v11 = 0;
  }

  do
  {
LABEL_8:
    v15 = v9;
    if (!v9)
    {
      break;
    }

    --v9;
    sub_226300(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v15 - 1), v8, type metadata accessor for Shelf);
    v16 = sub_2C1B48();
    v6 = sub_226368(v8, type metadata accessor for Shelf);
  }

  while ((v16 & 1) != 0);
  __chkstk_darwin(v6);
  v18[-6] = a2;
  v18[-5] = v11;
  LOBYTE(v18[-4]) = v10;
  v18[-3] = v9;
  LOBYTE(v18[-2]) = v17;
  sub_286F7C(sub_228284, &v18[-8], a1);
}

uint64_t sub_224B8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C5E98, &unk_2F40D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_13:
    v15 = *(v8 + 48);

    return v15(a1 + v9, a2, v7);
  }

  v10 = sub_6620C(&qword_3C6FB8, &unk_2F5DE8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_13;
  }

  v11 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_13;
  }

  v12 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3C0C70, &qword_2F2510);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[11];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3C6FC0, &unk_2F5DF8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[13];
    goto LABEL_13;
  }

  v17 = *(a1 + a3[16]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_224E10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3C5E98, &unk_2F40D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_6620C(&qword_3C6FB8, &unk_2F5DE8);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[9];
      }

      else
      {
        v14 = sub_6620C(&qword_3C0C50, &qword_2EA860);
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[10];
        }

        else
        {
          v15 = sub_6620C(&qword_3C0C70, &qword_2F2510);
          if (*(*(v15 - 8) + 84) == a3)
          {
            v9 = v15;
            v10 = *(v15 - 8);
            v11 = a4[11];
          }

          else
          {
            result = sub_6620C(&qword_3C6FC0, &unk_2F5DF8);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[16]) = (a2 - 1);
              return result;
            }

            v9 = result;
            v10 = *(result - 8);
            v11 = a4[13];
          }
        }
      }
    }
  }

  v17 = *(v10 + 56);

  return v17(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for PageView(uint64_t a1)
{
  result = qword_3C7020;
  if (!qword_3C7020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250C8(uint64_t a1)
{
  sub_2254E0(319, &unk_3C0BB8, type metadata accessor for HostProxy, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2254E0(319, &unk_3C5F08, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_22547C(319, &qword_3C7030, &qword_3C0C18, &qword_2EA808, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_225544(319, &qword_3C7038, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_22547C(319, &qword_3BDD98, &qword_3BDDA0, &qword_2E5200, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_2254E0(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_2254E0(319, &qword_3C1F68, type metadata accessor for Page, &type metadata accessor for Binding);
              if (v7 <= 0x3F)
              {
                sub_2254E0(319, &unk_3C5278, type metadata accessor for PageAlert, &type metadata accessor for Binding);
                if (v8 <= 0x3F)
                {
                  sub_225544(319, &qword_3C7040, &type metadata for CGFloat, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_22547C(319, &qword_3C7048, &qword_3C0C68, &unk_2EAD50, &type metadata accessor for State);
                    if (v10 <= 0x3F)
                    {
                      sub_2254E0(319, &unk_3C7050, type metadata accessor for CGPoint, &type metadata accessor for State);
                      if (v11 <= 0x3F)
                      {
                        sub_225544(319, &qword_3BFBE8, &type metadata for Bool, &type metadata accessor for State);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for PaginationController();
                          if (v13 <= 0x3F)
                          {
                            sub_2C4E28();
                            if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_22547C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2254E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_225544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2255B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21CA24(a1, v6, a2);
}

unint64_t sub_22566C()
{
  result = qword_3C7130;
  if (!qword_3C7130)
  {
    sub_718D4(&qword_3C70B8, &qword_2F5E80);
    sub_225724();
    sub_72B74(&qword_3C7180, &qword_3C7188, &qword_2F5FD8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7130);
  }

  return result;
}

unint64_t sub_225724()
{
  result = qword_3C7138;
  if (!qword_3C7138)
  {
    sub_718D4(&qword_3C7120, &unk_2F5F60);
    sub_2257DC();
    sub_72B74(&qword_3BDFD0, &qword_3BDFA8, &qword_2E55C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7138);
  }

  return result;
}

unint64_t sub_2257DC()
{
  result = qword_3C7140;
  if (!qword_3C7140)
  {
    sub_718D4(&qword_3C7148, &qword_2F5FB0);
    sub_225894();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7140);
  }

  return result;
}

unint64_t sub_225894()
{
  result = qword_3C7150;
  if (!qword_3C7150)
  {
    sub_718D4(&qword_3C7158, &qword_2F5FB8);
    sub_72B74(&qword_3C7160, &qword_3C7168, &qword_2F5FC0, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_72B74(&qword_3C7170, &qword_3C7178, &unk_2F5FC8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7150);
  }

  return result;
}

unint64_t sub_225990()
{
  result = qword_3C71A0;
  if (!qword_3C71A0)
  {
    sub_718D4(&qword_3C70C8, &qword_2F5E90);
    sub_225A4C();
    sub_2285DC(&qword_3C3400, type metadata accessor for PageViewEventViewModifier, "1c\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71A0);
  }

  return result;
}

unint64_t sub_225A4C()
{
  result = qword_3C71A8;
  if (!qword_3C71A8)
  {
    sub_718D4(&qword_3C7198, &qword_2F5FE0);
    sub_718D4(&qword_3C70C0, &qword_2F5E88);
    type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor(255);
    sub_718D4(&qword_3C70B8, &qword_2F5E80);
    sub_22566C();
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3C7190, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor, &unk_2F2788);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3C52C8, type metadata accessor for PageAlertViewModifier, &protocol conformance descriptor for PageAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71A8);
  }

  return result;
}

unint64_t sub_225C28()
{
  result = qword_3C71E0;
  if (!qword_3C71E0)
  {
    sub_718D4(&qword_3C71D8, &qword_2F6098);
    sub_225CE0();
    sub_72B74(&qword_3C7208, &qword_3C7210, &unk_2F60B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71E0);
  }

  return result;
}

unint64_t sub_225CE0()
{
  result = qword_3C71E8;
  if (!qword_3C71E8)
  {
    sub_718D4(&qword_3C71F0, &qword_2F60A0);
    sub_225D98();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71E8);
  }

  return result;
}

unint64_t sub_225D98()
{
  result = qword_3C71F8;
  if (!qword_3C71F8)
  {
    sub_718D4(&qword_3C7200, &qword_2F60A8);
    type metadata accessor for ContextActionMenuView(255);
    sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71F8);
  }

  return result;
}

unint64_t sub_225EB0()
{
  result = qword_3C7218;
  if (!qword_3C7218)
  {
    sub_718D4(&qword_3C7108, &qword_2F5ED0);
    sub_225F6C();
    sub_2285DC(&qword_3BE8E0, type metadata accessor for PageLifeCycleViewModifier, &unk_2E9198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7218);
  }

  return result;
}

unint64_t sub_225F6C()
{
  result = qword_3C7220;
  if (!qword_3C7220)
  {
    sub_718D4(&qword_3C7100, &qword_2F5EC8);
    sub_718D4(&qword_3C70F0, &qword_2F5EB8);
    sub_718D4(&qword_3C71C8, &qword_2F6090);
    type metadata accessor for ChartSwooshItemComponentModel(255);
    sub_718D4(&qword_3C70E8, &qword_2F5EB0);
    sub_718D4(&qword_3C71D8, &qword_2F6098);
    type metadata accessor for RecommendationItemComponentModel(255);
    sub_718D4(&qword_3C70E0, &qword_2F5EA8);
    type metadata accessor for ListItemComponentModel(255);
    sub_72B74(&qword_3C71D0, &qword_3C70E0, &qword_2F5EA8, &protocol conformance descriptor for SubscriptionView<A, B>);
    type metadata accessor for ContextActionMenuView(255);
    sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BD3F8, type metadata accessor for ListItemComponentModel, &protocol conformance descriptor for ListItemComponentModel);
    swift_getOpaqueTypeConformance2();
    sub_225C28();
    sub_2285DC(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel, &unk_2EA5FC);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel, &unk_2EFA80);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7220);
  }

  return result;
}

uint64_t sub_2262A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2263D0()
{
  result = qword_3C7280;
  if (!qword_3C7280)
  {
    sub_718D4(&qword_3C7248, &qword_2F61C8);
    sub_226454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7280);
  }

  return result;
}

unint64_t sub_226454()
{
  result = qword_3C7288;
  if (!qword_3C7288)
  {
    sub_718D4(&qword_3C7290, &qword_2F6200);
    sub_718D4(&qword_3C7298, &qword_2F6208);
    sub_2C4E28();
    sub_2265C0();
    swift_getOpaqueTypeConformance2();
    sub_718D4(&qword_3C72B8, &qword_2F6218);
    sub_718D4(&qword_3C72C0, &qword_2F6220);
    sub_2266A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7288);
  }

  return result;
}

unint64_t sub_2265C0()
{
  result = qword_3C72A0;
  if (!qword_3C72A0)
  {
    sub_718D4(&qword_3C7298, &qword_2F6208);
    sub_72B74(&qword_3C72A8, &qword_3C72B0, &qword_2F6210, &protocol conformance descriptor for IDView<A, B>);
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72A0);
  }

  return result;
}

unint64_t sub_2266A4()
{
  result = qword_3C72C8;
  if (!qword_3C72C8)
  {
    sub_718D4(&qword_3C72C0, &qword_2F6220);
    v3 = sub_72B74(&qword_3C72D0, &qword_3C72D8, &qword_2F6228, &protocol conformance descriptor for ShelfPage<A, B>);
    sub_22675C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72C8);
  }

  return result;
}

unint64_t sub_22675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C72E0;
  if (!qword_3C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72E0);
  }

  return result;
}

unint64_t sub_2267B0()
{
  result = qword_3C72E8;
  if (!qword_3C72E8)
  {
    sub_718D4(&qword_3C7268, &qword_2F61E8);
    sub_718D4(&qword_3C7270, &qword_2F61F0);
    sub_718D4(&qword_3C7278, &qword_2F61F8);
    sub_718D4(&qword_3C7248, &qword_2F61C8);
    sub_2263D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C72F0, &qword_3C72F8, &unk_2F6230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72E8);
  }

  return result;
}

uint64_t sub_226908()
{
  v1 = type metadata accessor for PageView(0);
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v44 = sub_2C2A38();
  v2 = *(v44 - 8);
  v39 = *(v2 + 80);
  v43 = *(v2 + 64);
  v45 = v0;
  v41 = (v42 + 16) & ~v42;
  v3 = v0 + v41;

  v4 = v1[5];
  sub_6620C(&qword_3C0C78, &qword_2F3F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C2548();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_6620C(&qword_3C0C80, &unk_2F5EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C1448();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_71AF4(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_9E94C(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  v9 = v1[9];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];

  v12 = v11 + *(sub_6620C(&qword_3C0C50, &qword_2EA860) + 32);

  v13 = type metadata accessor for Page(0);
  v14 = v13[5];
  v15 = sub_2BFDD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v18 = v13[6];
  if (!v17(v12 + v18, 1, v15))
  {
    (*(v16 + 8))(v12 + v18, v15);
  }

  v19 = v13[7];
  v20 = sub_2C1A28();
  (*(*(v20 - 8) + 8))(v12 + v19, v20);
  v21 = v13[8];
  v22 = sub_2C1A68();
  (*(*(v22 - 8) + 8))(v12 + v21, v22);
  v23 = v13[10];
  v24 = sub_2C15F8();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v12 + v23, 1, v24))
  {
    (*(v25 + 8))(v12 + v23, v24);
  }

  v26 = v13[17];
  v27 = sub_2BEF78();
  (*(*(v27 - 8) + 8))(v12 + v26, v27);

  v28 = v13[19];
  v29 = sub_2C4BB8();
  (*(*(v29 - 8) + 8))(v12 + v28, v29);

  if (*(v12 + v13[25] + 8))
  {
  }

  v30 = v3 + v1[11];

  v31 = *(sub_6620C(&qword_3C0C70, &qword_2F2510) + 32);
  v32 = sub_2C0368();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v30 + v31, 1, v32))
  {
    (*(v33 + 8))(v30 + v31, v32);
  }

  v34 = v3 + v1[13];
  v35 = sub_2C1EC8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  v37 = (v41 + v40 + v39) & ~v39;
  sub_6620C(&qword_3C6FC0, &unk_2F5DF8);

  (*(v2 + 8))(v45 + v37, v44);

  return _swift_deallocObject(v45, v37 + v43, v42 | v39 | 7);
}

uint64_t sub_22709C(uint64_t a1)
{
  v3 = *(type metadata accessor for PageView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2C2A38() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21EF40(a1, (v1 + v4), v7);
}

void sub_227188(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21FA40(a1, a2, v6);
}

unint64_t sub_227208()
{
  result = qword_3C7310;
  if (!qword_3C7310)
  {
    sub_718D4(&qword_3C0C18, &qword_2EA808);
    sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState, &protocol conformance descriptor for IntentDispatchState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7310);
  }

  return result;
}

double sub_2272BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>)
{
  sub_227310(a1, a2, a4);
  sub_2C3108();
  result = *&v6;
  *a3 = v6;
  return result;
}

unint64_t sub_227310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7328;
  if (!qword_3C7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7328);
  }

  return result;
}

uint64_t sub_2273C0(__n128 a1)
{
  v2 = sub_2C2A38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_227474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2274E4()
{
  result = qword_3C7370;
  if (!qword_3C7370)
  {
    sub_718D4(&qword_3C7368, &qword_2F62A8);
    sub_227568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7370);
  }

  return result;
}

unint64_t sub_227568()
{
  result = qword_3C7378;
  if (!qword_3C7378)
  {
    sub_718D4(&qword_3C7380, &unk_2F62B0);
    sub_2285DC(&qword_3C7388, type metadata accessor for ListShelfView, &protocol conformance descriptor for ListShelfView);
    sub_72B74(&qword_3C1BE0, &qword_3C1BE8, &qword_2EBF08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7378);
  }

  return result;
}

unint64_t sub_227650()
{
  result = qword_3C7398;
  if (!qword_3C7398)
  {
    sub_718D4(&qword_3C7358, &qword_2F6298);
    sub_718D4(&qword_3C7350, &qword_2F6290);
    sub_718D4(&qword_3C7348, &qword_2F6288);
    sub_2C28A8();
    sub_72B74(&qword_3C7390, &qword_3C7348, &qword_2F6288, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C73A0, &qword_3C73A8, &qword_2F62C0, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7398);
  }

  return result;
}

uint64_t sub_2277D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E18();
  *a1 = result & 1;
  return result;
}

double sub_227834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PageView(0);

  return sub_2228EC(a1, a2);
}

uint64_t sub_2278BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2278F4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_6620C(&qword_3C3AB0, &qword_2EFE98);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_22796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PageView(0);

  return sub_223154(a1, a2);
}

uint64_t sub_227A20(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_227AA8()
{
  v1 = type metadata accessor for PageView(0);
  v2 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v39 = (v2 + 16) & ~v2;
  v40 = v0;
  v3 = v0 + v39;

  v4 = v1[5];
  sub_6620C(&qword_3C0C78, &qword_2F3F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C2548();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_6620C(&qword_3C0C80, &unk_2F5EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C1448();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_71AF4(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_9E94C(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  v9 = v1[9];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];

  v12 = v11 + *(sub_6620C(&qword_3C0C50, &qword_2EA860) + 32);

  v13 = type metadata accessor for Page(0);
  v14 = v13[5];
  v15 = sub_2BFDD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v18 = v13[6];
  if (!v17(v12 + v18, 1, v15))
  {
    (*(v16 + 8))(v12 + v18, v15);
  }

  v19 = v13[7];
  v20 = sub_2C1A28();
  (*(*(v20 - 8) + 8))(v12 + v19, v20);
  v21 = v13[8];
  v22 = sub_2C1A68();
  (*(*(v22 - 8) + 8))(v12 + v21, v22);
  v23 = v13[10];
  v24 = sub_2C15F8();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v12 + v23, 1, v24))
  {
    (*(v25 + 8))(v12 + v23, v24);
  }

  v26 = v13[17];
  v27 = sub_2BEF78();
  (*(*(v27 - 8) + 8))(v12 + v26, v27);

  v28 = v13[19];
  v29 = sub_2C4BB8();
  (*(*(v29 - 8) + 8))(v12 + v28, v29);

  if (*(v12 + v13[25] + 8))
  {
  }

  v30 = v3 + v1[11];

  v31 = *(sub_6620C(&qword_3C0C70, &qword_2F2510) + 32);
  v32 = sub_2C0368();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v30 + v31, 1, v32))
  {
    (*(v33 + 8))(v30 + v31, v32);
  }

  v34 = v3 + v1[13];
  v35 = sub_2C1EC8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  sub_6620C(&qword_3C6FC0, &unk_2F5DF8);

  return _swift_deallocObject(v40, v39 + v38, v2 | 7);
}

uint64_t sub_2281BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_228230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C73E0;
  if (!qword_3C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C73E0);
  }

  return result;
}

uint64_t sub_2282B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2282F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22835C()
{
  sub_718D4(&qword_3C7118, &unk_2F5EE0);
  sub_718D4(&qword_3C7110, &qword_2F5ED8);
  sub_718D4(&qword_3C7108, &qword_2F5ED0);
  sub_225EB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2284A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228564()
{

  return _swift_deallocObject(v0, 96, 7);
}

double sub_2285C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2285DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228624()
{
  sub_718D4(&qword_3C73F8, &unk_2F64D0);
  sub_718D4(&qword_3C7400, &qword_2F64E0);
  sub_718D4(&qword_3C08B0, &unk_2EA270);
  sub_72B74(&qword_3C7408, &qword_3C7400, &qword_2F64E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_2284A8(&qword_3C7410, &qword_3C08B0, &unk_2EA270, &protocol witness table for Bool);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static NavigationBarStyle.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = (a1 == a3) & ~a4;
  if (a2)
  {
    v4 = a4;
  }

  return v4 & 1;
}

uint64_t sub_2287A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationBarStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationBarStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22881C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228838(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2288C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C8640;
  if (!qword_3C8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8640);
  }

  return result;
}

uint64_t sub_22891C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_6620C(&qword_3C7430, &qword_2F6610);
  __chkstk_darwin(v34);
  v33 = &v28 - v3;
  v4 = sub_2BE9B8();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C2940, &qword_2EE218);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_6620C(&unk_3C29B8, &qword_2EE240);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_2C0FE8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2C0EB8();
  v16 = *(v29 - 8);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BrickComponentModel(0);
  (*(v13 + 16))(v15, a1 + *(v19 + 32), v12);
  sub_2C0EA8();
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2E3F30;
  sub_228FD8(a1 + *(v19 + 28), v8);
  sub_229048(v8, v11);
  v21 = sub_2BF038();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_2290B8(v11);
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
  }

  else
  {
    *(v20 + 56) = v21;
    *(v20 + 64) = sub_2292BC(&qword_3C7450, &type metadata accessor for BrickData, &protocol conformance descriptor for BrickData);
    *(v20 + 72) = sub_2292BC(&qword_3C7458, &type metadata accessor for BrickData, &protocol conformance descriptor for BrickData);
    v23 = sub_720C8((v20 + 32));
    (*(v22 + 32))(v23, v11, v21);
  }

  sub_2BEC88();
  sub_2292BC(&qword_3BD390, type metadata accessor for BrickComponentModel, &unk_2EE2F8);
  v24 = v30;
  sub_2C4CE8();
  sub_2292BC(&qword_3C7438, &type metadata accessor for BrickLockupView, &protocol conformance descriptor for BrickLockupView);
  sub_2292BC(&qword_3C7440, &type metadata accessor for BrickExposureEvent, &protocol conformance descriptor for BrickExposureEvent);
  v25 = v33;
  v26 = v29;
  sub_2C3D98();
  sub_229120();
  sub_2C3D88();

  sub_229254(v25);
  (*(v31 + 8))(v24, v32);
  return (*(v16 + 8))(v18, v26);
}

uint64_t sub_228E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2288C8(a1, a2, a3);

  return sub_2BFD18();
}

unint64_t sub_228ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7428;
  if (!qword_3C7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7428);
  }

  return result;
}

uint64_t sub_228FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2940, &qword_2EE218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229048(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3C29B8, &qword_2EE240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2290B8(uint64_t a1)
{
  v2 = sub_6620C(&unk_3C29B8, &qword_2EE240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_229120()
{
  result = qword_3C7448;
  if (!qword_3C7448)
  {
    sub_718D4(&qword_3C7430, &qword_2F6610);
    sub_2C0EB8();
    sub_2BEC88();
    sub_2292BC(&qword_3C7438, &type metadata accessor for BrickLockupView, &protocol conformance descriptor for BrickLockupView);
    sub_2292BC(&qword_3C7440, &type metadata accessor for BrickExposureEvent, &protocol conformance descriptor for BrickExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7448);
  }

  return result;
}

uint64_t sub_229254(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C7430, &qword_2F6610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2292BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229304()
{
  sub_718D4(&qword_3C7430, &qword_2F6610);
  sub_229120();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_229368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2C28();
  *a1 = result;
  return result;
}

uint64_t sub_229428(uint64_t a1)
{
  v2 = sub_2BF0B8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2EE8();
}

uint64_t sub_2294F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2BD8();
  *a1 = result;
  return result;
}

uint64_t ListShelfView.init(page:shelfIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BE9B8();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ListShelfView(0);
  v8 = a3 + v7[6];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v7[7];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v7[8];
  *(a3 + v10) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v7[9];
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  sub_2BE998();
  sub_2BE818();
  v12 = a3 + v7[11];
  *v12 = swift_getKeyPath();
  *(v12 + 40) = 0;
  result = sub_69130(a1, a3, &qword_3C0C50, &qword_2EA860);
  *(a3 + v7[5]) = a2;
  return result;
}

uint64_t type metadata accessor for ListShelfView(uint64_t a1)
{
  result = qword_3C7500;
  if (!qword_3C7500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2BD8();
  *a1 = result;
  return result;
}

uint64_t sub_22975C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Page(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shelf(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v11 = *&v6[*(v4 + 68)];

  sub_230E1C(v6, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView(0);
  v13 = *(v1 + *(result + 20));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_22FFF8(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, type metadata accessor for Shelf);

  sub_6932C(&v10[*(v7 + 80)], a1, &qword_3BDE70, &qword_2E52F0);
  v14 = sub_2BEA28();
  result = (*(*(v14 - 8) + 48))(a1, 1, v14);
  if (result)
  {
    return sub_230E1C(v10, type metadata accessor for Shelf);
  }

  if (!(v13 >> 31))
  {
    sub_2BE9D8();
    return sub_230E1C(v10, type metadata accessor for Shelf);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_229998()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ListShelfView(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_229AE8()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ListShelfView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_229C48@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDD08, &qword_2E5190);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ListShelfView(0);
  sub_6932C(v1 + *(v10 + 32), v9, &qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BF0B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_229E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListShelfView(0);
  result = sub_6932C(v1 + *(v7 + 36), v11, &qword_3C1C88, &qword_2EC1A0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_229FCC@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListShelfView(0);
  sub_6932C(v1 + *(v7 + 44), v10, &qword_3BDFE0, &qword_2E55E0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ListShelfView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_2BE9B8();
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v78 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v5 - 8);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v64 - v8;
  v9 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  v83 = sub_6620C(&qword_3C7460, &qword_2F6718);
  v65 = *(v83 - 8);
  __chkstk_darwin(v83);
  v16 = &v64 - v15;
  v85 = sub_6620C(&qword_3C7468, &qword_2F6720);
  v66 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v64 - v17;
  v18 = sub_6620C(&qword_3C7470, &qword_2F6728);
  v74 = *(v18 - 8);
  v75 = v18;
  __chkstk_darwin(v18);
  v86 = &v64 - v19;
  v20 = sub_6620C(&qword_3C7478, &qword_2F6730);
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v71 = &v64 - v21;
  v70 = sub_6620C(&qword_3C7480, &qword_2F6738);
  __chkstk_darwin(v70);
  v69 = &v64 - v22;
  v68 = sub_6620C(&qword_3C7488, &qword_2F6740);
  __chkstk_darwin(v68);
  v67 = &v64 - v23;
  v24 = type metadata accessor for Page(0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Shelf(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v32 = *&v27[*(v25 + 68)];

  sub_230E1C(v27, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView(0);
  v34 = *(result + 20);
  v84 = v2;
  v35 = *(v2 + v34);
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v35 >= *(v32 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_22FFF8(v32 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35, v31, type metadata accessor for Shelf);

  __chkstk_darwin(v36);
  v37 = v84;
  *(&v64 - 2) = v31;
  *(&v64 - 1) = v37;
  sub_6620C(&qword_3C7490, &qword_2F6748);
  sub_72B74(&qword_3C7498, &qword_3C7490, &qword_2F6748, &protocol conformance descriptor for TupleView<A>);
  sub_2C45A8();
  sub_2C26A8();
  v38 = sub_22EB28();
  v39 = v83;
  sub_2C3FC8();
  (*(v65 + 8))(v16, v39);
  sub_6932C(v31 + *(v28 + 36), v11, &qword_3C1730, &unk_2EE740);
  v40 = sub_2C22F8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v11, 1, v40) == 1)
  {
    sub_2C22B8();
    v43 = v42(v11, 1, v40);
    v44 = v77;
    if (v43 != 1)
    {
      sub_69198(v11, &qword_3C1730, &unk_2EE740);
    }
  }

  else
  {
    (*(v41 + 32))(v14, v11, v40);
    v44 = v77;
  }

  (*(v41 + 56))(v14, 0, 1, v40);
  v87 = v83;
  v88 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v85;
  v47 = v82;
  sub_2C3C08();
  sub_69198(v14, &qword_3C1730, &unk_2EE740);
  (*(v66 + 8))(v47, v46);
  sub_22975C(v44);
  v49 = *v31;
  v48 = v31[1];
  swift_bridgeObjectRetain_n();
  v50 = v78;
  sub_2BE9A8();
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2E3F30;
  v52 = v76;
  sub_6932C(v44, v76, &qword_3BDE70, &qword_2E52F0);
  v53 = sub_2BEA28();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_69198(v52, &qword_3BDE70, &qword_2E52F0);
    *(v51 + 32) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
  }

  else
  {
    *(v51 + 56) = v53;
    v84 = OpaqueTypeConformance2;
    *(v51 + 64) = sub_230064(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    *(v51 + 72) = sub_230064(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v55 = sub_720C8((v51 + 32));
    OpaqueTypeConformance2 = v84;
    (*(v54 + 32))(v55, v52, v53);
  }

  v87 = v85;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v71;
  v57 = v75;
  v58 = v86;
  sub_2C3D88();

  (*(v79 + 8))(v50, v80);
  sub_69198(v44, &qword_3BDE70, &qword_2E52F0);
  (*(v74 + 8))(v58, v57);
  KeyPath = swift_getKeyPath();
  v60 = v69;
  (*(v72 + 32))(v69, v56, v73);
  v61 = (v60 + *(v70 + 36));
  *v61 = KeyPath;
  v61[1] = v49;
  v61[2] = v48;
  v62 = v67;
  sub_69130(v60, v67, &qword_3C7480, &qword_2F6738);
  v63 = (v62 + *(v68 + 52));
  *v63 = v49;
  v63[1] = v48;
  sub_69130(v62, v81, &qword_3C7488, &qword_2F6740);

  return sub_230E1C(v31, type metadata accessor for Shelf);
}

uint64_t sub_22AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v164 = a3;
  v5 = type metadata accessor for ListShelfView(0);
  v146 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v147 = v6;
  v148 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_6620C(&qword_3C1BF0, &qword_2EBF68);
  __chkstk_darwin(v149);
  v170 = &v129 - v7;
  v168 = sub_6620C(&qword_3C7558, &qword_2F67E8);
  v151 = *(v168 - 8);
  __chkstk_darwin(v168);
  v150 = &v129 - v8;
  v166 = sub_6620C(&qword_3C7560, &qword_2F67F0);
  __chkstk_darwin(v166);
  v167 = &v129 - v9;
  v10 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v10 - 8);
  v137 = &v129 - v11;
  v12 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v12 - 8);
  v136 = &v129 - v13;
  v138 = sub_2C5258();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v132 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v133 = *(v174 - 8);
  __chkstk_darwin(v174);
  v131 = &v129 - v15;
  v165 = sub_6620C(&qword_3C19D8, &qword_2EBDC8);
  v139 = *(v165 - 8);
  __chkstk_darwin(v165);
  v134 = &v129 - v16;
  v17 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  __chkstk_darwin(v17 - 8);
  v157 = &v129 - v18;
  v19 = type metadata accessor for ContentUnavailableComponentModel(0);
  v140 = *(v19 - 8);
  v141 = v19;
  __chkstk_darwin(v19);
  v130 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = &v129 - v22;
  v23 = sub_6620C(&qword_3C7568, &qword_2F67F8);
  __chkstk_darwin(v23 - 8);
  v163 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v177 = &v129 - v26;
  v172 = sub_6620C(&qword_3C1738, &qword_2EB810);
  v27 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v129 - v28;
  v29 = sub_6620C(&qword_3C7570, &qword_2F6800);
  v161 = *(v29 - 8);
  v162 = v29;
  __chkstk_darwin(v29);
  v160 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v173 = &v129 - v32;
  __chkstk_darwin(v33);
  v159 = &v129 - v34;
  __chkstk_darwin(v35);
  v176 = &v129 - v36;
  v37 = sub_2BF0B8();
  v154 = *(v37 - 8);
  v155 = v37;
  __chkstk_darwin(v37);
  v39 = (&v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for Shelf(0);
  v143 = *(v40 - 8);
  __chkstk_darwin(v40);
  v145 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v129 - v43;
  v144 = v45;
  __chkstk_darwin(v46);
  v153 = &v129 - v47;
  v48 = sub_229AE8();
  KeyPath = v39;
  sub_229C48(v39);
  sub_229E50(v199);
  v49 = sub_22C0F4();
  v152 = v44;
  sub_22FFF8(a1, v44, type metadata accessor for Shelf);
  v156 = v40;
  v50 = *(v40 + 68);
  v158 = a1;
  v51 = *(a1 + v50);
  v52 = *(v51 + 16);
  v169 = a2;
  if (!v52)
  {

    v56 = _swiftEmptyArrayStorage;
    v75 = v174;
LABEL_13:
    v76 = v156;
    v77 = *(v156 + 68);
    v78 = v152;

    *(v78 + v77) = v56;
    v79 = v153;
    sub_22FF90(v78, v153, type metadata accessor for Shelf);
    sub_69198(v199, &unk_3BDDB8, &qword_2E5208);
    (*(v154 + 8))(KeyPath, v155);
    v80 = *(v79 + *(v76 + 68));

    sub_230E1C(v79, type metadata accessor for Shelf);
    v81 = v171;
    sub_22C3F0(v171);
    sub_2C26A8();
    v82 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
    v191 = v75;
    *&v192 = v82;
    v180 = v82;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v172;
    sub_2C3F58();
    v85 = *(v27 + 8);
    v85(v81, v84);
    v86 = *(v80 + 16);
    v88 = v157;
    v87 = v158;
    v175 = v27 + 8;
    v181 = v85;
    v182 = OpaqueTypeConformance2;
    if (!v86)
    {
      sub_6932C(v158 + *(v76 + 64), v157, &qword_3C1A00, &unk_2EF540);
      v89 = v141;
      if ((*(v140 + 48))(v88, 1, v141) != 1)
      {

        v112 = v89;
        v113 = v142;
        sub_22FF90(v88, v142, type metadata accessor for ContentUnavailableComponentModel);
        v193 = v89;
        v194 = sub_230064(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel, &protocol conformance descriptor for ContentUnavailableComponentModel);
        v114 = sub_720C8(&v191);
        v115 = sub_22FFF8(v113, v114, type metadata accessor for ContentUnavailableComponentModel);
        sub_9F8B8(v115, v116, v117);
        v118 = v131;
        sub_2BFCA8();
        v119 = v113;
        v120 = v130;
        sub_22FFF8(v119, v130, type metadata accessor for ContentUnavailableComponentModel);
        v121 = v132;
        sub_2C5238();
        v122 = v137;
        sub_6932C(v120 + *(v112 + 44), v137, &qword_3BF898, &unk_2EA240);
        v123 = v136;
        sub_69130(v122, v136, &qword_3BDF58, &unk_2E5B70);
        v124 = v134;
        v125 = v174;
        v126 = v180;
        sub_2C3A98();
        sub_69198(v123, &qword_3BDF58, &unk_2E5B70);
        (*(v135 + 8))(v121, v138);
        sub_230E1C(v120, type metadata accessor for ContentUnavailableComponentModel);
        (*(v133 + 8))(v118, v125);
        v127 = v139;
        v128 = v165;
        (*(v139 + 16))(v167, v124, v165);
        swift_storeEnumTagMultiPayload();
        v191 = v125;
        *&v192 = v126;
        swift_getOpaqueTypeConformance2();
        sub_22FE70();
        sub_2C33C8();
        (*(v127 + 8))(v124, v128);
        sub_230E1C(v142, type metadata accessor for ContentUnavailableComponentModel);
        goto LABEL_17;
      }

      sub_69198(v88, &qword_3C1A00, &unk_2EF540);
    }

    v191 = v80;
    v178 = v80;

    sub_6620C(&qword_3C1938, &qword_2EBD28);
    sub_72B74(&qword_3C1BF8, &qword_3C1938, &qword_2EBD28, &protocol conformance descriptor for [A]);
    sub_2BFF38();
    KeyPath = swift_getKeyPath();
    v90 = v148;
    sub_22FFF8(v169, v148, type metadata accessor for ListShelfView);
    v91 = v145;
    sub_22FFF8(v87, v145, type metadata accessor for Shelf);
    v92 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v93 = (v147 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (*(v143 + 80) + v93 + 8) & ~*(v143 + 80);
    v95 = swift_allocObject();
    sub_22FF90(v90, v95 + v92, type metadata accessor for ListShelfView);
    *(v95 + v93) = v178;
    sub_22FF90(v91, v95 + v94, type metadata accessor for Shelf);
    v96 = swift_allocObject();
    *(v96 + 16) = sub_22FD3C;
    *(v96 + 24) = v95;
    sub_6620C(&qword_3C7578, &qword_2F6838);
    sub_72B74(&qword_3C1C00, &qword_3C1BF0, &qword_2EBF68, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
    sub_72B74(&qword_3C7580, &qword_3C7578, &qword_2F6838, &protocol conformance descriptor for VStack<A>);
    v97 = v150;
    sub_2C4558();
    v98 = v151;
    v99 = v168;
    (*(v151 + 16))(v167, v97, v168);
    swift_storeEnumTagMultiPayload();
    v191 = v174;
    *&v192 = v180;
    swift_getOpaqueTypeConformance2();
    sub_22FE70();
    sub_2C33C8();
    (*(v98 + 8))(v97, v99);
LABEL_17:
    v100 = v171;
    sub_22DF90(v171);
    sub_2C26A8();
    v101 = v159;
    v102 = v172;
    sub_2C3F58();
    v181(v100, v102);
    v104 = v161;
    v103 = v162;
    v105 = *(v161 + 16);
    v106 = v173;
    v105(v173, v176, v162);
    v107 = v163;
    sub_22FF20(v177, v163);
    v108 = v160;
    v105(v160, v101, v103);
    v109 = v164;
    v105(v164, v106, v103);
    v110 = sub_6620C(&qword_3C7590, &qword_2F6840);
    sub_22FF20(v107, &v109[*(v110 + 48)]);
    v105(&v109[*(v110 + 64)], v108, v103);
    v111 = *(v104 + 8);
    v111(v101, v103);
    sub_69198(v177, &qword_3C7568, &qword_2F67F8);
    v111(v176, v103);
    v111(v108, v103);
    sub_69198(v107, &qword_3C7568, &qword_2F67F8);
    return (v111)(v173, v103);
  }

  v178 = v49;
  v182 = v48;
  v175 = v27;
  v198 = _swiftEmptyArrayStorage;
  result = sub_64698(0, v52, 0);
  v54 = 0;
  v55 = v51 + 32;
  v56 = v198;
  v57 = *(v51 + 16);
  v180 = v52;
  v181 = v57;
  v58 = v51;
  while (1)
  {
    v59 = v182;
    if (v181 == v54)
    {
      break;
    }

    if (v54 >= *(v51 + 16))
    {
      goto LABEL_20;
    }

    sub_691F8(v55, &v192);
    v189 = v54;
    sub_68D1C(&v192, v190);
    sub_691F8(v190, &v195);
    sub_6620C(&qword_3BC278, &qword_2E2F50);
    sub_6620C(&qword_3BC1D8, &qword_2E2EB0);
    if (swift_dynamicCast())
    {
      sub_68D1C(&v183, v186);
      v197 = 0;
      v195 = 0u;
      v196 = 0u;
      v60 = v187;
      v61 = v188;
      sub_8C564(v186, v187);
      sub_25707C(v54, v59, &v195, KeyPath, v199, v178, v60, v61, &v183);
      sub_69198(&v195, &qword_3BE008, &unk_2E5630);
      v62 = *(&v184 + 1);
      v63 = v185;
      v64 = sub_72084(&v183, *(&v184 + 1));
      *(&v196 + 1) = v62;
      v197 = *(v63 + 8);
      v65 = sub_720C8(&v195);
      (*(*(v62 - 8) + 16))(v65, v64, v62);
      sub_68CD0(&v183);
      sub_68CD0(v186);
    }

    else
    {
      v185 = 0;
      v183 = 0u;
      v184 = 0u;
      sub_69198(&v183, &qword_3C1C78, &qword_2EC190);
      sub_691F8(v190, &v195);
    }

    sub_69198(&v189, &qword_3C1C80, &qword_2EC198);
    v198 = v56;
    v67 = v56[2];
    v66 = v56[3];
    if (v67 >= v66 >> 1)
    {
      sub_64698((v66 > 1), v67 + 1, 1);
    }

    ++v54;
    v68 = *(&v196 + 1);
    v69 = v197;
    v70 = sub_8C564(&v195, *(&v196 + 1));
    v71 = __chkstk_darwin(v70);
    v73 = &v129 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v74 + 16))(v73, v71);
    sub_24EE68(v67, v73, &v198, v68, v69);
    result = sub_68CD0(&v195);
    v56 = v198;
    v55 += 40;
    v51 = v58;
    if (v180 == v54)
    {

      v75 = v174;
      v27 = v175;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_22C0F4()
{
  v0 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_2BEA28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for ListShelfView(0);
  v10 = sub_2BE7F8();
  sub_22975C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_69198(v2, &qword_3BDE70, &qword_2E52F0);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = *(v4 + 16);
    v11(v6, v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_5BCAC(0, v10[2] + 1, 1, v10);
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_5BCAC((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = *(v4 + 8);
    v14(v9, v3);
    v18 = v3;
    v19 = sub_230064(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v20 = sub_230064(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v15 = sub_720C8(&v17);
    v11(v15, v6, v3);
    v10[2] = v13 + 1;
    sub_9FB74(&v17, &v10[6 * v13 + 4]);
    v14(v6, v3);
  }

  return v10;
}

uint64_t sub_22C3F0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_2C0E48();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_2C1D08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Page(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v18 = *&v13[*(v11 + 68)];

  sub_230E1C(v13, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView(0);
  v20 = *(v1 + *(result + 20));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 >= *(v18 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22FFF8(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v17, type metadata accessor for Shelf);

  (*(v7 + 16))(v9, &v17[*(v14 + 56)], v6);
  sub_230E1C(v17, type metadata accessor for Shelf);
  sub_2C1CD8();
  (*(v7 + 8))(v9, v6);
  v21 = sub_691F8(v36, v35);
  sub_9F8B8(v21, v22, v23);
  sub_2BFCA8();
  sub_691F8(v36, v35);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C68, &qword_2EC188);
  if (swift_dynamicCast())
  {
    sub_68CD0(v34);
  }

  v25 = v30;
  v24 = v31;
  v26 = v33;
  (*(v31 + 104))(v30, enum case for PageMarginType.padding(_:), v33);
  sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  v27 = v29;
  sub_2C3C28();
  (*(v24 + 8))(v25, v26);
  (*(v28 + 8))(v5, v27);
  return sub_68CD0(v36);
}

void sub_22C8D4(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_230064(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v2 = sub_2C2568();
  v4 = v3;

  v6 = sub_25AF0C(v5, 0, v2, v4 & 1, _swiftEmptyDictionarySingleton);

  *a1 = v6;
}

uint64_t sub_22C9B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v112 = a5;
  v100 = a4;
  v122 = a3;
  v116 = a6;
  v115 = sub_2C5118();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Page(0);
  __chkstk_darwin(v9 - 8);
  v111 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v11 - 8);
  v103 = &v84 - v12;
  v104 = sub_2C5258();
  v98 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ListShelfView(0);
  v96 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v95 = v15;
  v120 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2BE9B8();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C1A60, &qword_2EBE30);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = sub_6620C(&qword_3C1BC8, &qword_2EBEF8);
  v85 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v87 = sub_6620C(&qword_3C1BC0, &qword_2EBEF0);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v24 = &v84 - v23;
  v89 = sub_6620C(&qword_3C1BB8, &qword_2EBEE8);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v84 = &v84 - v25;
  v94 = sub_6620C(&qword_3C1C08, &qword_2EBFA0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v117 = &v84 - v26;
  v119 = sub_6620C(&qword_3C75A0, &qword_2F6898);
  __chkstk_darwin(v119);
  v121 = &v84 - v27;
  v110 = sub_6620C(&qword_3C75A8, &qword_2F68A0);
  v105 = *(v110 - 8);
  __chkstk_darwin(v110);
  v99 = &v84 - v28;
  v109 = sub_6620C(&qword_3C75B0, &qword_2F68A8);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v84 - v29;
  v108 = sub_6620C(&qword_3C75B8, &qword_2F68B0);
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v101 = &v84 - v30;
  v31 = sub_691F8(a2, &v127);
  sub_9F8B8(v31, v32, v33);
  sub_2BFCA8();
  KeyPath = swift_getKeyPath();
  v35 = &v19[*(v17 + 36)];
  *v35 = KeyPath;
  v35[1] = a1;
  v36 = a1;
  v118 = a2;
  sub_691F8(a2, v123);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C18, &qword_2EBFE0);
  if (swift_dynamicCast())
  {
    v37 = *(&v125 + 1);
    v38 = v126;
    v39 = sub_72084(&v124, *(&v125 + 1));
    *(&v128 + 1) = v37;
    v129 = *(v38 + 8);
    v40 = sub_720C8(&v127);
    (*(*(v37 - 8) + 16))(v40, v39, v37);
    sub_68CD0(&v124);
  }

  else
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    sub_69198(&v124, &qword_3C1C20, &qword_2EBFE8);
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
  }

  v41 = v122;
  sub_229FCC(&v124);
  v42 = sub_1239F0();
  sub_2C3CE8();
  sub_68CD0(&v124);
  sub_69198(v19, &qword_3C1A60, &qword_2EBE30);
  sub_69198(&v127, &qword_3BDFA0, &qword_2E5560);
  *&v127 = v17;
  *(&v127 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3D08();
  (*(v85 + 8))(v22, v20);
  *&v127 = v20;
  *(&v127 + 1) = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v84;
  v46 = v87;
  sub_2C3D78();
  (*(v86 + 8))(v24, v46);
  v47 = v118;
  sub_72084(v118, v118[3]);
  sub_2C4CF8();
  sub_72084(v47, v47[3]);
  v48 = v90;
  sub_2C4CE8();
  *&v127 = v46;
  *(&v127 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v49 = v89;
  sub_2C3D88();

  (*(v91 + 8))(v48, v92);
  (*(v88 + 8))(v45, v49);
  v92 = sub_2C46A8();
  v91 = v50;
  v51 = v120;
  v52 = &v121[*(v119 + 36)];
  sub_22FFF8(v41, v120, type metadata accessor for ListShelfView);
  v53 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v95 += v53;
  v54 = (v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v96 = v53;
  sub_22FF90(v51, v55 + v53, type metadata accessor for ListShelfView);
  *(v55 + v54) = v36;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v100;

  v56 = v97;
  sub_2C5238();
  *&v127 = sub_22DC2C;
  *(&v127 + 1) = 0;
  *&v128 = sub_2305E0;
  *(&v128 + 1) = v55;
  sub_72084(v47, v47[3]);
  v57 = v103;
  sub_2C57B8();
  sub_6620C(&qword_3C75C0, &qword_2F68E8);
  sub_230688();
  sub_2C3A98();
  sub_69198(v57, &qword_3BDF58, &unk_2E5B70);
  (*(v98 + 8))(v56, v104);

  v58 = &v52[*(sub_6620C(&qword_3C75E0, &qword_2F68F8) + 36)];
  v59 = v91;
  *v58 = v92;
  v58[1] = v59;
  (*(v93 + 32))(v121, v117, v94);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  v60 = v111;
  sub_2C44C8();
  Page.intentToLoadMore.getter(&v127);
  sub_230E1C(v60, type metadata accessor for Page);
  v61 = *(&v128 + 1);
  if (*(&v128 + 1))
  {
    sub_68CD0(&v127);
  }

  LOBYTE(v127) = v61 != 0;
  v62 = v120;
  sub_22FFF8(v122, v120, type metadata accessor for ListShelfView);
  v63 = swift_allocObject();
  sub_22FF90(v62, v63 + v96, type metadata accessor for ListShelfView);
  v64 = sub_230C58();
  v65 = v99;
  v66 = v119;
  v67 = v121;
  sub_2C4108();

  sub_69198(v67, &qword_3C75A0, &qword_2F6898);
  v68 = v118;
  sub_72084(v118, v118[3]);
  swift_getDynamicType();
  sub_2C67E8();
  sub_72084(v68, v68[3]);
  sub_2C4CB8();
  v69 = sub_2C6178();
  v71 = v70;
  sub_68D90(&v127);
  *(&v128 + 1) = &type metadata for String;
  *&v127 = v69;
  *(&v127 + 1) = v71;
  v73 = *v112;
  v72 = v112[1];
  *(&v125 + 1) = &type metadata for String;
  *&v124 = v73;
  *(&v124 + 1) = v72;

  v74 = v113;
  sub_2C5108();

  sub_69198(&v124, qword_3C0250, &unk_2E4630);
  sub_69198(&v127, qword_3C0250, &unk_2E4630);
  *&v127 = v66;
  *(&v127 + 1) = &type metadata for Bool;
  *&v128 = v64;
  *(&v128 + 1) = &protocol witness table for Bool;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v102;
  v77 = v110;
  sub_2C3B08();
  (*(v114 + 8))(v74, v115);
  (*(v105 + 8))(v65, v77);
  *&v127 = v77;
  *(&v127 + 1) = v75;
  swift_getOpaqueTypeConformance2();
  v78 = v101;
  v79 = v109;
  sub_2C3C78();
  (*(v107 + 8))(v76, v79);
  v80 = sub_2C3328();
  v81 = v116;
  *v116 = v80;
  v81[1] = 0;
  *(v81 + 16) = 1;
  v82 = sub_6620C(&qword_3C75F8, &qword_2F6900);
  return (*(v106 + 32))(v81 + *(v82 + 44), v78, v108);
}

void sub_22DA78(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_230064(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v3 = sub_2C2568();
  v5 = v4;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = sub_25AF0C(KeyPath, 0, v3, v5 & 1, _swiftEmptyDictionarySingleton);

  v10 = sub_25AC84(v6, 0, v7, 0, v9);

  v11 = sub_25B190(v8, 0, v10);

  *a1 = v11;
}

void sub_22DC2C(void *a1@<X8>)
{
  if (qword_3BB918 != -1)
  {
    swift_once();
  }

  v2 = sub_2C2978();
  sub_57AD8(v2, qword_3E88F0);
  sub_2C2738();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

double sub_22DCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Page(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229998();
  type metadata accessor for PaginationController();
  sub_2C4DB8();

  v9 = v14[0];
  if (*(a4 + 16) - 5 <= a3 && (sub_6620C(&qword_3C0C50, &qword_2EA860), sub_2C44C8(), Page.intentToLoadMore.getter(&v12), sub_230E1C(v8, type metadata accessor for Page), v13))
  {
    sub_68D1C(&v12, v14);
    v10 = sub_229998();
    sub_1C0C88(v14, v10);

    sub_68CD0(v14);
  }

  else
  {
    swift_beginAccess();
    *(v9 + 16) = 1;
  }

  return result;
}

void sub_22DE18()
{
  v0 = type metadata accessor for Page(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229998();
  type metadata accessor for PaginationController();
  sub_2C4DB8();

  v3 = v8[0];
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    sub_6620C(&qword_3C0C50, &qword_2EA860);
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v6);
    sub_230E1C(v2, type metadata accessor for Page);
    if (v7)
    {
      sub_68D1C(&v6, v8);
      v4 = sub_229998();
      sub_1C0C88(v8, v4);

      sub_68CD0(v8);
    }

    else
    {

      if (v7)
      {
        sub_68CD0(&v6);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_22DF90@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_2C0E48();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_2C1CB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Page(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50, &qword_2EA860);
  sub_2C44C8();
  v18 = *&v13[*(v11 + 68)];

  sub_230E1C(v13, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView(0);
  v20 = *(v1 + *(result + 20));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 >= *(v18 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22FFF8(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v17, type metadata accessor for Shelf);

  (*(v7 + 16))(v9, &v17[*(v14 + 60)], v6);
  sub_230E1C(v17, type metadata accessor for Shelf);
  sub_2C1C88();
  (*(v7 + 8))(v9, v6);
  v21 = sub_691F8(v36, v35);
  sub_9F8B8(v21, v22, v23);
  sub_2BFCA8();
  sub_691F8(v36, v35);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C68, &qword_2EC188);
  if (swift_dynamicCast())
  {
    sub_68CD0(v34);
  }

  v25 = v30;
  v24 = v31;
  v26 = v33;
  (*(v31 + 104))(v30, enum case for PageMarginType.padding(_:), v33);
  sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  v27 = v29;
  sub_2C3C28();
  (*(v24 + 8))(v25, v26);
  (*(v28 + 8))(v5, v27);
  return sub_68CD0(v36);
}

uint64_t sub_22E474@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v25 = sub_2C1D28();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SeriesRoomListHeaderComponent(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_2C0DD8();
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1E88();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E78();
  sub_2C0DC8();
  *v8 = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v16 = v8 + *(v6 + 28);
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_2C1D18();
  v17 = sub_25E314(v15, _swiftEmptyDictionarySingleton);
  v18 = sub_25D084(v11, v17);

  v19 = sub_25E1A8(v18);

  v20 = sub_25DD50(v8, v19);

  v21 = sub_25DB10(v4, v20);

  (*(v2 + 8))(v4, v25);
  sub_230E1C(v8, type metadata accessor for SeriesRoomListHeaderComponent);
  (*(v9 + 8))(v11, v24);
  result = (*(v13 + 8))(v15, v12);
  *v26 = v21;
  return result;
}

uint64_t sub_22E7B0@<X0>(uint64_t *a1@<X8>)
{
  v17 = a1;
  v16 = sub_2C1E48();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0DD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C1E68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E58();
  sub_2C0DC8();
  sub_2C1E38();
  v12 = sub_25E794(v11, _swiftEmptyDictionarySingleton);
  v13 = sub_25D084(v7, v12);

  v14 = sub_25E554(v3, v13);

  (*(v1 + 8))(v3, v16);
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v17 = v14;
  return result;
}

unint64_t sub_22EB28()
{
  result = qword_3C74A0;
  if (!qword_3C74A0)
  {
    sub_718D4(&qword_3C7460, &qword_2F6718);
    sub_72B74(&qword_3C7498, &qword_3C7490, &qword_2F6748, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C74A0);
  }

  return result;
}

uint64_t sub_22EC1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[8];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22EDB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_22EF44(uint64_t a1)
{
  sub_22F120(319, &qword_3C1F68, type metadata accessor for Page, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_22F120(319, &qword_3BDD88, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0, &qword_2E5200);
      if (v3 <= 0x3F)
      {
        sub_22F120(319, &qword_3BDDA8, &type metadata accessor for DataStack, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BDDB0, &unk_3BDDB8, &qword_2E5208);
          if (v5 <= 0x3F)
          {
            sub_2BE808();
            if (v6 <= 0x3F)
            {
              sub_CEAF8(319, &qword_3BDD90, &qword_3BD200, &qword_2FA030);
              if (v7 <= 0x3F)
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

void sub_22F120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22F1C8(void *a1@<X8>)
{
  type metadata accessor for PageHeightValue(0);
  sub_230064(&qword_3C7598, type metadata accessor for PageHeightValue, &unk_2F97E8);
  v2 = sub_2C3128();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_2BE6F8();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_22F300()
{
  v69 = type metadata accessor for ListShelfView(0);
  v72 = *(*(v69 - 1) + 80);
  v1 = (v72 + 16) & ~v72;
  v67 = *(*(v69 - 1) + 64);
  v2 = type metadata accessor for Shelf(0);
  v74 = *(*(v2 - 1) + 80);
  v71 = *(*(v2 - 1) + 64);
  v73 = v0;
  v3 = v0 + v1;

  v4 = v0 + v1 + *(sub_6620C(&qword_3C0C50, &qword_2EA860) + 32);

  v5 = type metadata accessor for Page(0);
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v66 = v8;
  v10 = v67 + v1;
  v11 = v5[6];
  v65 = v9;
  if (!v9(v4 + v11, 1, v7))
  {
    (*(v66 + 8))(v4 + v11, v7);
  }

  v68 = v7;
  v12 = v10 + 7;
  v13 = v5[7];
  v14 = sub_2C1A28();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[8];
  v16 = sub_2C1A68();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);
  v17 = v5[10];
  v18 = sub_2C15F8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v4 + v17, 1, v18))
  {
    (*(v19 + 8))(v4 + v17, v18);
  }

  v20 = v12 & 0xFFFFFFFFFFFFFFF8;

  v21 = v5[17];
  v22 = sub_2BEF78();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);

  v23 = v5[19];
  v24 = sub_2C4BB8();
  (*(*(v24 - 8) + 8))(v4 + v23, v24);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v69[7]), *(v3 + v69[7] + 8));
  v25 = v69[8];
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_2BF0B8();
    (*(*(v26 - 8) + 8))(v3 + v25, v26);
  }

  else
  {
  }

  v27 = v3 + v69[9];
  if (*(v27 + 40))
  {
    if (*(v27 + 24))
    {
      sub_68CD0(v27);
    }
  }

  else
  {
  }

  v28 = (v20 + v74 + 8) & ~v74;
  v29 = v69[10];
  v30 = sub_2BE808();
  (*(*(v30 - 8) + 8))(v3 + v29, v30);
  v31 = v3 + v69[11];
  if (*(v31 + 40))
  {
    sub_68CD0(v31);
  }

  else
  {
  }

  v32 = v73 + v28;

  v33 = v2[6];
  v34 = sub_2C0AF8();
  (*(*(v34 - 8) + 8))(v73 + v28 + v33, v34);
  v35 = v2[8];
  v36 = sub_2C5018();
  v37 = *(v36 - 8);
  v70 = *(v37 + 48);
  if (!v70(v73 + v28 + v35, 1, v36))
  {
    (*(v37 + 8))(v32 + v35, v36);
  }

  v38 = v2[9];
  v39 = sub_2C22F8();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v32 + v38, 1, v39))
  {
    (*(v40 + 8))(v32 + v38, v39);
  }

  sub_68CD0((v32 + v2[10]));
  v41 = v2[12];
  v42 = sub_2BFE68();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(v32 + v41, 1, v42))
  {
    (*(v43 + 8))(v32 + v41, v42);
  }

  v44 = v2[13];
  v45 = sub_2C1B98();
  (*(*(v45 - 8) + 8))(v32 + v44, v45);
  v46 = v2[14];
  v47 = sub_2C1D08();
  (*(*(v47 - 8) + 8))(v32 + v46, v47);
  v48 = v2[15];
  v49 = sub_2C1CB8();
  (*(*(v49 - 8) + 8))(v32 + v48, v49);
  v50 = v32 + v2[16];
  v51 = type metadata accessor for ContentUnavailableComponentModel(0);
  if (!(*(*(v51 - 1) + 48))(v50, 1, v51))
  {

    v52 = *(v66 + 8);
    v52(v50 + v51[5], v68);
    v53 = v51[6];
    if (!v65(v50 + v53, 1, v68))
    {
      v52(v50 + v53, v68);
    }

    v54 = v51[9];
    v55 = sub_2C1DC8();
    (*(*(v55 - 8) + 8))(v50 + v54, v55);
    sub_68CD0((v50 + v51[10]));
    v56 = v51[11];
    if (!v70(v50 + v56, 1, v36))
    {
      (*(v37 + 8))(v50 + v56, v36);
    }
  }

  v57 = v2[18];
  v58 = sub_2C0E58();
  v59 = *(v58 - 8);
  if (!(*(v59 + 48))(v32 + v57, 1, v58))
  {
    (*(v59 + 8))(v32 + v57, v58);
  }

  v60 = (v32 + v2[19]);
  if (v60[3])
  {
    sub_68CD0(v60);
  }

  v61 = v2[20];
  v62 = sub_2BEA28();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v32 + v61, 1, v62))
  {
    (*(v63 + 8))(v32 + v61, v62);
  }

  return _swift_deallocObject(v73, v28 + v71, v72 | v74 | 7);
}

uint64_t sub_22FD3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(type metadata accessor for ListShelfView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Shelf(0) - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_22C9B4(a1, a2, v3 + v8, v11, v12, a3);
}

uint64_t sub_22FE38()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_22FE70()
{
  result = qword_3C7588;
  if (!qword_3C7588)
  {
    sub_718D4(&qword_3C7558, &qword_2F67E8);
    sub_72B74(&qword_3C7580, &qword_3C7578, &qword_2F6838, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7588);
  }

  return result;
}

uint64_t sub_22FF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C7568, &qword_2F67F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2300B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2C28();
  *a1 = result;
  return result;
}

uint64_t sub_230108()
{
  v1 = type metadata accessor for ListShelfView(0);
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v30 = (v2 + 16) & ~v2;
  v31 = v0;
  v3 = v0 + v30;

  v4 = v0 + v30 + *(sub_6620C(&qword_3C0C50, &qword_2EA860) + 32);

  v5 = type metadata accessor for Page(0);
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[7];
  v12 = sub_2C1A28();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = v5[8];
  v14 = sub_2C1A68();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[10];
  v16 = sub_2C15F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v18 = v5[17];
  v19 = sub_2BEF78();
  (*(*(v19 - 8) + 8))(v4 + v18, v19);

  v20 = v5[19];
  v21 = sub_2C4BB8();
  (*(*(v21 - 8) + 8))(v4 + v20, v21);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v22 = v1[8];
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2BF0B8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v3 + v1[9];
  if (*(v24 + 40))
  {
    if (*(v24 + 24))
    {
      sub_68CD0(v24);
    }
  }

  else
  {
  }

  v25 = v1[10];
  v26 = sub_2BE808();
  (*(*(v26 - 8) + 8))(v3 + v25, v26);
  v27 = v3 + v1[11];
  if (*(v27 + 40))
  {
    sub_68CD0(v27);
  }

  else
  {
  }

  return _swift_deallocObject(v31, ((((v29 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_2305E0(uint64_t a1)
{
  v3 = *(type metadata accessor for ListShelfView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22DCA0(a1, v1 + v4, v6, v7);
}

unint64_t sub_230688()
{
  result = qword_3C75C8;
  if (!qword_3C75C8)
  {
    sub_718D4(&qword_3C75C0, &qword_2F68E8);
    sub_72B74(&qword_3C75D0, &qword_3C75D8, &qword_2F68F0, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C75C8);
  }

  return result;
}

uint64_t sub_230740()
{
  v1 = type metadata accessor for ListShelfView(0);
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v30 = (v2 + 16) & ~v2;
  v31 = v0;
  v3 = v0 + v30;

  v4 = v0 + v30 + *(sub_6620C(&qword_3C0C50, &qword_2EA860) + 32);

  v5 = type metadata accessor for Page(0);
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[7];
  v12 = sub_2C1A28();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = v5[8];
  v14 = sub_2C1A68();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[10];
  v16 = sub_2C15F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v18 = v5[17];
  v19 = sub_2BEF78();
  (*(*(v19 - 8) + 8))(v4 + v18, v19);

  v20 = v5[19];
  v21 = sub_2C4BB8();
  (*(*(v21 - 8) + 8))(v4 + v20, v21);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v22 = v1[8];
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2BF0B8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v3 + v1[9];
  if (*(v24 + 40))
  {
    if (*(v24 + 24))
    {
      sub_68CD0(v24);
    }
  }

  else
  {
  }

  v25 = v1[10];
  v26 = sub_2BE808();
  (*(*(v26 - 8) + 8))(v3 + v25, v26);
  v27 = v3 + v1[11];
  if (*(v27 + 40))
  {
    sub_68CD0(v27);
  }

  else
  {
  }

  return _swift_deallocObject(v31, v30 + v29, v2 | 7);
}

void sub_230BF8()
{
  type metadata accessor for ListShelfView(0);

  sub_22DE18();
}

unint64_t sub_230C58()
{
  result = qword_3C75E8;
  if (!qword_3C75E8)
  {
    sub_718D4(&qword_3C75A0, &qword_2F6898);
    sub_718D4(&qword_3C1BB8, &qword_2EBEE8);
    sub_718D4(&qword_3C1BC0, &qword_2EBEF0);
    sub_718D4(&qword_3C1BC8, &qword_2EBEF8);
    sub_718D4(&qword_3C1A60, &qword_2EBE30);
    sub_1239F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C75F0, &qword_3C75E0, &qword_2F68F8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C75E8);
  }

  return result;
}

uint64_t sub_230E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_230EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C8580;
  if (!qword_3C8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8580);
  }

  return result;
}

uint64_t sub_230F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, void *a5@<X3>, char a6@<W4>)
{
  v30 = a4;
  v11 = sub_2C30F8();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C2A88();
  v28 = *(v14 - 8);
  v29 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C7620, &unk_2F6BE0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_2312EC(a1, a5, a6 & 1, &v26 - v19);
  if ((a3 & 1) == 0)
  {

    sub_2C5DD8();
    v22 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(a2, 0);
    (*(v26 + 8))(v13, v27);
    if (v31 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2C2A78();
    v21 = v29;
    goto LABEL_6;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = _swiftEmptyArrayStorage;
  sub_232644(&qword_3C6CC0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  sub_6620C(&qword_3C6CC8, &qword_2F5970);
  sub_72B74(&qword_3C6CD0, &qword_3C6CC8, &qword_2F5970, &protocol conformance descriptor for [A]);
  v21 = v29;
  sub_2C6158();
LABEL_6:
  v23 = sub_718D4(&qword_3C7628, &qword_2F6BF0);
  v24 = sub_233270();
  v31 = v23;
  v32 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2C4118();
  (*(v28 + 8))(v16, v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_2312EC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v81 = a3;
  v84 = a2;
  v91 = a4;
  v88 = sub_6620C(&qword_3C7628, &qword_2F6BF0);
  __chkstk_darwin(v88);
  v89 = &v64 - v5;
  v90 = sub_2BE9B8();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BF3C8, &qword_2F1770);
  __chkstk_darwin(v7 - 8);
  v85 = &v64 - v8;
  v66 = sub_2C30F8();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C1FA8();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2C0E48();
  v75 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2C1348();
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2C07B8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_6620C(&qword_3C25E0, &qword_2F6C10);
  __chkstk_darwin(v67);
  v20 = &v64 - v19;
  v71 = sub_6620C(&qword_3C7658, &qword_2F6C18);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v22 = &v64 - v21;
  v69 = sub_6620C(&qword_3C7648, &qword_2F6C08);
  __chkstk_darwin(v69);
  v24 = &v64 - v23;
  v93 = sub_6620C(&qword_3C7640, &qword_2F6C00);
  v77 = *(v93 - 8);
  __chkstk_darwin(v93);
  v74 = &v64 - v25;
  v83 = sub_6620C(&qword_3C7638, &qword_2F6BF8);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v92 = &v64 - v26;
  v27 = type metadata accessor for ListItemComponentModel(0);
  v72 = *(v27 + 20);
  (*(v12 + 16))(v14, a1 + v72, v68);
  sub_2C07C8();
  sub_2C46B8();
  sub_2C2AD8();
  (*(v16 + 32))(v20, v18, v15);
  v28 = v76;
  v29 = &v20[*(v67 + 36)];
  v30 = v104;
  v31 = v105;
  *(v29 + 4) = v103;
  *(v29 + 5) = v30;
  *(v29 + 6) = v31;
  v32 = v100;
  *v29 = v99;
  *(v29 + 1) = v32;
  v33 = v102;
  *(v29 + 2) = v101;
  *(v29 + 3) = v33;
  v34 = v75;
  v35 = v73;
  v36 = v80;
  (*(v75 + 104))(v73, enum case for PageMarginType.padding(_:), v80);
  sub_146608();
  sub_2C3C28();
  (*(v34 + 8))(v35, v36);
  sub_69198(v20, &qword_3C25E0, &qword_2F6C10);
  (*(v70 + 32))(v24, v22, v71);
  v37 = v69;
  v24[*(v69 + 36)] = 0;
  sub_6620C(&qword_3C7660, &qword_2F6C20);
  sub_2C0048();
  *(swift_allocObject() + 16) = xmmword_2F1A80;
  sub_2BFFF8();
  sub_2C0008();
  sub_2C0038();
  sub_2C0018();
  sub_2BFFD8();
  sub_2BFFE8();
  v80 = v27;
  v97 = v27;
  v98 = sub_232644(&qword_3C7668, type metadata accessor for ListItemComponentModel, &protocol conformance descriptor for ListItemComponentModel);
  v38 = sub_720C8(v96);
  sub_232E88(a1, v38, type metadata accessor for ListItemComponentModel);
  v39 = sub_233448();
  v40 = v74;
  sub_2C4098();

  sub_69198(v24, &qword_3C7648, &qword_2F6C08);
  sub_68CD0(v96);
  v41 = a1;
  v94 = sub_2C12E8();
  v95 = v42;
  sub_2C61A8();
  v43 = v78;
  sub_2C1BF8();
  v94 = v37;
  v95 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_232644(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
  v46 = v93;
  sub_2C3BD8();
  v47 = v28;
  (*(v79 + 8))(v43, v28);
  sub_69198(v96, &qword_3BE008, &unk_2E5630);
  (*(v77 + 8))(v40, v46);
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2E4110;
  if (v81)
  {
    v49 = v84;
    v50 = v84;
  }

  else
  {
    v51 = v84;

    sub_2C5DD8();
    v52 = sub_2C3718();
    sub_2C0058();

    v53 = v64;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v51, 0);
    (*(v65 + 8))(v53, v66);
    v49 = v96[0];
  }

  v54 = v85;
  if (v49)
  {
    sub_2C1328();
    *(v48 + 56) = sub_2BE968();
    *(v48 + 64) = sub_232644(&qword_3BF460, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    *(v48 + 72) = sub_232644(&unk_3C4420, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    sub_720C8((v48 + 32));
    v55 = v49;
    sub_2BE928();
  }

  else
  {
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0u;
    *(v48 + 32) = 0u;
  }

  *(v48 + 104) = sub_2BECC8();
  *(v48 + 112) = sub_232644(&qword_3BF440, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  *(v48 + 120) = sub_232644(&qword_3BF448, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  sub_720C8((v48 + 80));
  sub_2BEC98();
  sub_23353C(v41 + *(v80 + 32), v54);
  v56 = sub_2BEE38();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v54, 1, v56) == 1)
  {
    sub_69198(v54, &qword_3BF3C8, &qword_2F1770);
    *(v48 + 128) = 0u;
    *(v48 + 144) = 0u;
    *(v48 + 160) = 0u;
  }

  else
  {
    *(v48 + 152) = v56;
    *(v48 + 160) = sub_232644(&qword_3BF450, &type metadata accessor for OnDevicePersonalizationPropertyData, &protocol conformance descriptor for OnDevicePersonalizationPropertyData);
    *(v48 + 168) = sub_232644(&qword_3BF458, &type metadata accessor for OnDevicePersonalizationPropertyData, &protocol conformance descriptor for OnDevicePersonalizationPropertyData);
    v58 = sub_720C8((v48 + 128));
    (*(v57 + 32))(v58, v54, v56);
  }

  sub_2BED18();
  sub_2C12E8();
  v59 = v86;
  sub_2BE9A8();
  v96[0] = v93;
  v96[1] = v47;
  v96[2] = OpaqueTypeConformance2;
  v97 = v45;
  swift_getOpaqueTypeConformance2();
  sub_232644(&qword_3BF428, &type metadata accessor for ContentExposureEvent, &protocol conformance descriptor for ContentExposureEvent);
  v60 = v89;
  v61 = v83;
  v62 = v92;
  sub_2C3D98();
  sub_233270();
  sub_2C3D88();

  sub_69198(v60, &qword_3C7628, &qword_2F6BF0);
  (*(v87 + 8))(v59, v90);
  return (*(v82 + 8))(v62, v61);
}

uint64_t sub_2322B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_232644(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  v4 = sub_720C8(a2);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  sub_691F8(v13, v11);
  sub_C04C8(v12, v10);
  sub_CC804(v11, v10, v4 + v3[5]);
  sub_72084(v13, v13[3]);
  v5 = sub_2BF3B8();
  v7 = v6;
  sub_C12F8(v12);
  v8 = (v4 + v3[6]);
  *v8 = v5;
  v8[1] = v7;
  *(v4 + v3[7]) = 0;
  return sub_68CD0(v13);
}

uint64_t sub_232400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_232E88(a1, a2, type metadata accessor for ListItemComponentModel);
  v3 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v4 = (a2 + *(v3 + 20));
  sub_2C1498();
  sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v4 = sub_2C2B48();
  v4[1] = v5;
  v6 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_2324C4(uint64_t a1)
{
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  sub_146B38(*v1, *(v1 + 8));
  v2 = sub_C9C28(v6, v7);
  sub_230EDC(v2, v3, v4);
  return sub_2BFD18();
}

unint64_t sub_232544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7600;
  if (!qword_3C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7600);
  }

  return result;
}

uint64_t sub_232644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2326C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v37 = a2;
  v2 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v36 = *(v2 - 8);
  v35 = *(v36 + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  __chkstk_darwin(v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2C3708();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BF880, &qword_2E8D30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v33 = sub_6620C(&qword_3C7610, &qword_2F6B40);
  v15 = *(v33 - 8);
  v16 = __chkstk_darwin(v33);
  v18 = &v30 - v17;
  (*(v8 + 16))(v10, v31, v7, v16);
  sub_2C43D8();
  v19 = v32;
  sub_232E88(v32, v6 + v4[5], type metadata accessor for ListItemComponentModel);
  *v6 = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v20 = v6 + v4[6];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v6 + v4[7];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = sub_72B74(&qword_3BF888, &qword_3BF880, &qword_2E8D30, &protocol conformance descriptor for Button<A>);
  v23 = sub_232644(&qword_3C7618, type metadata accessor for ListItemComponent.ListItemButtonStyle, &unk_2F6C84);
  sub_2C3E48();
  sub_232E2C(v6);
  (*(v12 + 8))(v14, v11);
  v24 = v19;
  v25 = v34;
  sub_232E88(v24, v34, type metadata accessor for ListItemComponent._ButtonStyle);
  v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v27 = swift_allocObject();
  sub_2331AC(v25, v27 + v26);
  v38 = v11;
  v39 = v4;
  v40 = v22;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_2C4088();

  return (*(v15 + 8))(v18, v28);
}

id sub_232B88(uint64_t a1)
{
  v2 = sub_2C30F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v7 = a1 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  else
  {

    sub_2C5DD8();
    v9 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v8, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v15[0]) == 1)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  type metadata accessor for ListItemComponentModel(0);
  sub_2C1328();
  sub_72084(v15, v15[3]);
  if (sub_2BF908())
  {
    v10 = *(a1 + *(v6 + 20));
    if (!v10)
    {
      sub_2C1498();
      sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      result = sub_2C2B38();
      __break(1u);
      return result;
    }

    v11 = v10;
    v12 = sub_2C1488();

    sub_68CD0(v15);
    if ((v12 & 1) == 0)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  else
  {
    sub_68CD0(v15);
  }

  return ListItemComponentModel.dragProvider.getter();
}

uint64_t sub_232E2C(uint64_t a1)
{
  v2 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232EF0()
{
  v1 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_2C5018();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = type metadata accessor for ListItemComponentModel(0);
  v9 = v8[5];
  v10 = sub_2C1348();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = (v5 + v8[6]);
  if (v11[3])
  {
    sub_68CD0(v11);
  }

  v12 = v8[7];
  v13 = sub_2C5658();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v8[8];
  v16 = sub_2BEE38();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  sub_71AF4(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2331AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_233210()
{
  v1 = *(type metadata accessor for ListItemComponent._ButtonStyle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_232B88(v2);
}

unint64_t sub_233270()
{
  result = qword_3C7630;
  if (!qword_3C7630)
  {
    sub_718D4(&qword_3C7628, &qword_2F6BF0);
    sub_718D4(&qword_3C7638, &qword_2F6BF8);
    sub_2BED18();
    sub_718D4(&qword_3C7640, &qword_2F6C00);
    sub_2C1FA8();
    sub_718D4(&qword_3C7648, &qword_2F6C08);
    sub_233448();
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3BF428, &type metadata accessor for ContentExposureEvent, &protocol conformance descriptor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7630);
  }

  return result;
}

unint64_t sub_233448()
{
  result = qword_3C7650;
  if (!qword_3C7650)
  {
    sub_718D4(&qword_3C7648, &qword_2F6C08);
    sub_718D4(&qword_3C25E0, &qword_2F6C10);
    sub_146608();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C25F0, &qword_3C25F8, &qword_2ED750, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7650);
  }

  return result;
}

uint64_t sub_23353C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BF3C8, &qword_2F1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2335C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for ListItemComponentModel(0);
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

uint64_t sub_2336F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ListItemComponentModel(0);
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

void sub_23380C(uint64_t a1)
{
  sub_AF178(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ListItemComponentModel(319);
    if (v2 <= 0x3F)
    {
      sub_1F012C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2338BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListItemComponentModel(0);
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

uint64_t sub_233998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListItemComponentModel(0);
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

void sub_233A50(uint64_t a1)
{
  type metadata accessor for ListItemComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_CEA1C(319);
    if (v2 <= 0x3F)
    {
      sub_1F012C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_233AEC()
{
  sub_718D4(&qword_3C7610, &qword_2F6B40);
  sub_718D4(&qword_3BF880, &qword_2E8D30);
  type metadata accessor for ListItemComponent.ListItemButtonStyle(255);
  sub_72B74(&qword_3BF888, &qword_3BF880, &qword_2E8D30, &protocol conformance descriptor for Button<A>);
  sub_232644(&qword_3C7618, type metadata accessor for ListItemComponent.ListItemButtonStyle, &unk_2F6C84);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_233C10()
{
  sub_718D4(&qword_3C7620, &unk_2F6BE0);
  sub_718D4(&qword_3C7628, &qword_2F6BF0);
  sub_233270();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_233CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_2C33E8();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C0D48();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_2C30F8();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2C3608();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C77A0, &qword_2F6CC0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_6620C(&qword_3C77A8, &qword_2F6CC8);
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v62 = &v53 - v16;
  v60 = sub_6620C(&qword_3C77B0, &unk_2F6CD0);
  __chkstk_darwin(v60);
  v67 = &v53 - v17;
  sub_2C3618();
  if (sub_2C3628())
  {
    v18 = [objc_opt_self() systemGray4Color];
    v19 = sub_2C4288();
    goto LABEL_8;
  }

  v20 = v1 + *(type metadata accessor for ListItemComponent.ListItemButtonStyle(0) + 28);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
LABEL_5:
      v19 = sub_2C4208();
      goto LABEL_8;
    }
  }

  else
  {

    sub_2C5DD8();
    v54 = v5;
    v22 = sub_2C3718();
    v53 = v6;
    v23 = v22;
    v24 = v57;
    sub_2C0058();

    v25 = v58;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v21, 0);
    v26 = v25;
    v27 = v24;
    v6 = v53;
    v5 = v54;
    (*(v59 + 8))(v26, v27);
    if (v69 != 1)
    {
      goto LABEL_5;
    }
  }

  v28 = v55;
  sub_29A87C(v55);
  v19 = sub_2C0CD8();
  (*(v56 + 8))(v28, v6);
LABEL_8:
  v29 = sub_2C3758();
  (*(v9 + 32))(v14, v11, v61);
  v30 = &v14[*(v12 + 36)];
  *v30 = v19;
  v30[8] = v29;
  sub_2C2B18();
  sub_2344EC();
  sub_232644(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v31 = v5;
  v32 = v62;
  sub_2C3E88();
  (*(v63 + 8))(v31, v3);
  sub_69198(v14, &qword_3C77A0, &qword_2F6CC0);
  v33 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  v34 = v2 + *(v33 + 20);
  v35 = *(type metadata accessor for ListItemComponentModel(0) + 20);
  v36 = v67;
  v37 = v67 + *(v60 + 36);
  v38 = type metadata accessor for SwipeActionsViewModifier(0);
  v39 = v2;
  v40 = *(v38 + 40);
  v41 = sub_2C1348();
  (*(*(v41 - 8) + 16))(v37 + v40, v34 + v35, v41);
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  *(v37 + 16) = swift_getKeyPath();
  *(v37 + 24) = 0;
  *(v37 + 32) = swift_getKeyPath();
  *(v37 + 40) = 0;
  sub_2C1498();
  sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *(v37 + 48) = sub_2C2B48();
  *(v37 + 56) = v42;
  *(v37 + 64) = swift_getKeyPath();
  *(v37 + 72) = 0;
  v43 = *(v38 + 36);
  *(v37 + v43) = swift_getKeyPath();
  sub_6620C(&qword_3BF850, &qword_2E8BE0);
  swift_storeEnumTagMultiPayload();
  (*(v64 + 32))(v36, v32, v65);
  v44 = v39 + *(v33 + 24);
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_2C5DD8();
    v46 = sub_2C3718();
    sub_2C0058();

    v47 = v58;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v45, 0);
    (*(v59 + 8))(v47, v57);
    LOBYTE(v45) = v68;
  }

  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v45 & 1;
  v50 = v66;
  sub_234604(v67, v66);
  result = sub_6620C(&qword_3C77C0, &qword_2F6DD8);
  v52 = (v50 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = sub_D0E3C;
  v52[2] = v49;
  return result;
}

unint64_t sub_2344EC()
{
  result = qword_3C77B8;
  if (!qword_3C77B8)
  {
    sub_718D4(&qword_3C77A0, &qword_2F6CC0);
    sub_232644(&qword_3BF958, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_72B74(&qword_3C7170, &qword_3C7178, &unk_2F5FC8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77B8);
  }

  return result;
}

uint64_t sub_234604(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C77B0, &unk_2F6CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_234678()
{
  result = qword_3C77C8;
  if (!qword_3C77C8)
  {
    sub_718D4(&qword_3C77C0, &qword_2F6DD8);
    sub_234730();
    sub_72B74(&qword_3BF8F8, &qword_3BF900, &unk_2E8D80, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77C8);
  }

  return result;
}

unint64_t sub_234730()
{
  result = qword_3C77D0;
  if (!qword_3C77D0)
  {
    sub_718D4(&qword_3C77B0, &unk_2F6CD0);
    sub_718D4(&qword_3C77A0, &qword_2F6CC0);
    sub_2C33E8();
    sub_2344EC();
    sub_232644(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3C77D8, type metadata accessor for SwipeActionsViewModifier, &protocol conformance descriptor for SwipeActionsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77D0);
  }

  return result;
}

uint64_t sub_234878(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E69;
  }

  else
  {
    v3 = 0x65526E4972616579;
  }

  if (v2)
  {
    v4 = 0xEC00000077656976;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E69;
  }

  else
  {
    v5 = 0x65526E4972616579;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEC00000077656976;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_234924()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

double sub_2349AC(uint64_t a1)
{
  sub_2C5958();

  return result;
}

Swift::Int sub_234A20(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

void sub_234AA4(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389D88;
  v7._object = v3;
  v5 = sub_2C63E8(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_234B04(uint64_t *a1@<X8>)
{
  v2 = 0x65526E4972616579;
  if (*v1)
  {
    v2 = 0x746E65746E69;
  }

  v3 = 0xEC00000077656976;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_234B48()
{
  if (*v0)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 0x65526E4972616579;
  }
}

void sub_234B88(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_389D88;
  v8._object = a2;
  v6 = sub_2C63E8(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_234BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_235248(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_234C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_235248(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_234C64()
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

Swift::Int sub_234CB8(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

void sub_234CFC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389DD8;
  v6._object = v3;
  v5 = sub_2C63E8(v4, v6);

  *a2 = v5 != 0;
}

void sub_234D60(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_38A220;
  v7._object = a2;
  v6 = sub_2C63E8(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_234DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_235300(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_234DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_235300(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t FlowAction.YearInReviewDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_6620C(&qword_3C77E0, &qword_2F6DE0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_6620C(&qword_3C77E8, &qword_2F6DE8);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_6620C(&qword_3C77F0, &qword_2F6DF0);
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_72084(a1, a1[3]);
  sub_235248(v14, v15, v16);
  v17 = v43;
  sub_2C67A8();
  if (v17)
  {
    v30 = a1;
  }

  else
  {
    v35 = v7;
    v36 = v8;
    v43 = a1;
    v19 = v38;
    v18 = v39;
    v21 = v40;
    v20 = v41;
    v47 = 0;
    v22 = v13;
    v23 = sub_2C64D8();
    if (v23)
    {
      v47 = 0;
      sub_235300(v23, v24, v25);
      v26 = v10;
      sub_2C63F8();
      v27 = v18;
      v34 = v22;
      v38 = v11;
      sub_23529C();
      v29 = v35;
      v28 = v36;
      sub_2C64A8();
      sub_2C13A8();
      (*(v27 + 8))(v29, v21);
      (*(v37 + 8))(v26, v28);
      v11 = v38;
    }

    else
    {
      v47 = 1;
      sub_23529C();
      sub_2C64A8();
      v34 = v13;
      sub_2C13A8();
      (*(v18 + 8))(v19, v21);
    }

    (*(v42 + 8))(v34, v11);
    v32 = v45;
    *v20 = v44;
    *(v20 + 16) = v32;
    *(v20 + 32) = v46;
    v30 = v43;
  }

  return sub_68CD0(v30);
}

unint64_t sub_235248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C77F8;
  if (!qword_3C77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77F8);
  }

  return result;
}

unint64_t sub_23529C()
{
  result = qword_3C7800;
  if (!qword_3C7800)
  {
    sub_718D4(&qword_3C77E0, &qword_2F6DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7800);
  }

  return result;
}

unint64_t sub_235300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7808;
  if (!qword_3C7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7808);
  }

  return result;
}

unint64_t sub_235358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7810;
  if (!qword_3C7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7810);
  }

  return result;
}

unint64_t sub_2353F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7818;
  if (!qword_3C7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7818);
  }

  return result;
}

unint64_t sub_235450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7820;
  if (!qword_3C7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7820);
  }

  return result;
}

unint64_t sub_2354A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7828;
  if (!qword_3C7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7828);
  }

  return result;
}

unint64_t sub_235500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7830;
  if (!qword_3C7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7830);
  }

  return result;
}

unint64_t sub_235558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7838;
  if (!qword_3C7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7838);
  }

  return result;
}

unint64_t sub_2355B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7840[0];
  if (!qword_3C7840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C7840);
  }

  return result;
}

uint64_t StoreCatalog.resources.getter()
{
  ContentInfoBuildOptions.rawValue.getter();
}

uint64_t sub_23562C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for StoreCatalog(0, *(a1 + a2 - 8), a2, a4);
  *a3 = ContentInfoBuildOptions.rawValue.getter();
}

uint64_t sub_2356B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_235708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t StoreCatalog.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v14 = a3;
  type metadata accessor for StoreCatalog.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v7 = sub_2C64E8();
  v13 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_72084(a1, a1[3]);
  sub_2C67A8();
  if (!v5)
  {
    v11 = v13;
    v10 = v14;
    sub_2C19C8();
    swift_getWitnessTable();
    sub_2C64A8();
    (*(v11 + 8))(v9, v7);
    *v10 = v15;
  }

  return sub_68CD0(a1);
}

unint64_t sub_235970@<X0>(void *a1@<X8>)
{
  result = static StoreCatalogIntent.kind.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t StoreCatalogIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19[0] = a1;
  v5 = sub_2BF4E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  sub_6620C(&unk_3C43A0, &unk_2EB530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 0x7344496D616461;
  *(inited + 40) = 0xE700000000000000;
  v11 = sub_6620C(&qword_3BCA70, &unk_2E7120);
  *(inited + 48) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 0x7079547465737361;
  *(inited + 88) = 0xE900000000000065;

  sub_2BFB18();
  v12 = sub_2BF4D8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  v15 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220, &qword_2F0750);
  swift_arrayDestroy();
  v19[19] = v15;
  sub_6620C(&qword_3BD860, &qword_2EB540);
  v16 = sub_2C6658();
  v17 = [objc_opt_self() valueWithObject:v16 inContext:v19[0]];
  swift_unknownObjectRelease();
  a2[3] = sub_6620C(&qword_3C13F8, &qword_2EB270);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v17;
  return result;
}

uint64_t sub_235C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_235C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AssetActionImplementation.init(pageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2BEF78();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t AssetActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_2C0638();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for AssetActionImplementation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_2361F8(v3, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v9 + 80) + v14) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_2363C8(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v9 + 32))(v16 + v15, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_6620C(&qword_3BDAB8, &unk_2E8250);

  v17 = sub_2C5738();
  v18 = sub_2C5C58();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2F7410;
  v19[5] = v16;
  v19[6] = v17;

  sub_1CDB58(0, 0, v7, &unk_2E4D80, v19);

  return v17;
}

uint64_t type metadata accessor for AssetActionImplementation(uint64_t a1)
{
  result = qword_3C7A20;
  if (!qword_3C7A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_2C5C18();
  v4[3] = sub_2C5C08();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_DD4E8;

  return sub_2365A0(a1, a3, a4);
}

uint64_t sub_2361F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetActionImplementation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23625C()
{
  v1 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2C0638();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_2BEF78();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_2363C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetActionImplementation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23642C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2C0638() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_88BE0;

  return sub_236120(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_2365A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2BE588();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_2BE3B8();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v4[16] = *(v8 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_2C0638();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v4[21] = *(v10 + 64);
  v4[22] = swift_task_alloc();
  v11 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v4[23] = v11;
  v4[24] = *(v11 + 64);
  v4[25] = swift_task_alloc();
  sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  v4[26] = swift_task_alloc();
  v12 = sub_2C0608();
  v4[27] = v12;
  v4[28] = *(v12 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = sub_2C5C18();
  v4[31] = sub_2C5C08();
  v14 = sub_2C5BB8();
  v4[32] = v14;
  v4[33] = v13;

  return _swift_task_switch(sub_236878, v14, v13);
}

uint64_t sub_236878()
{
  v0[34] = sub_2C0628();
  v0[35] = v1;
  v2 = sub_6620C(&qword_3C7A58, &qword_2F7490);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_236940;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_236940()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238694;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_236A5C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_236A5C()
{
  v0[38] = v0[2];
  v1 = sub_2C1498();
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_236B14;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v1, v1);
}

uint64_t sub_236B14()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238760;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_236C30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_236C30()
{
  v244 = v0;
  v1 = v0[3];
  v0[41] = v1;
  if ((sub_2C05B8() & 1) != 0 && (sub_2C1488() & 1) == 0)
  {

    if (qword_3BB758 != -1)
    {
      swift_once();
    }

    v22 = sub_2C00B8();
    sub_57AD8(v22, qword_3C2EB8);

    v23 = sub_2C0098();
    v24 = sub_2C5DE8();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[35];
    if (v25)
    {
      v27 = v0[34];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v243 = v29;
      *v28 = 136315138;
      v30 = sub_5CCF4(v27, v26, &v243);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_0, v23, v24, "Skipping the action for assetID: %s because the book is an explicit book and the restriction is set to CLEAN.", v28, 0xCu);
      sub_68CD0(v29);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v48 = v0[5];
    v49 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v48;
    v47 = v49;
    goto LABEL_21;
  }

  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  sub_2C0618();
  v5 = (*(v2 + 88))(v3, v4);
  if (v5 == enum case for AssetAction.Kind.addTo(_:))
  {
    v6 = v0[38];
    v224 = v0[34];
    v232 = v0[35];
    v7 = v0[28];
    v8 = v0[29];
    v9 = v0[26];
    v10 = v0[27];
    v11 = v0[7];
    v236 = v0[5];

    (*(v7 + 96))(v8, v10);
    v12 = *v8;
    v13 = v8[1];
    v14 = v1;
    v15 = *(v8 + 16);
    LOBYTE(v8) = *(v8 + 17);
    v16 = sub_2C5C58();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);

    swift_unknownObjectRetain();
    v17 = sub_2C5C08();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v11;
    *(v18 + 40) = v224;
    *(v18 + 48) = v232;
    *(v18 + 56) = v12;
    *(v18 + 64) = v13;
    *(v18 + 72) = v6;
    *(v18 + 80) = v15;
    *(v18 + 81) = v8;
    sub_249B98(0, 0, v9, &unk_2F7580, v18);

LABEL_17:
    swift_unknownObjectRelease();

    v43 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v236;
LABEL_18:
    v47 = v43;
LABEL_21:
    v45(v46, v47, v44);
LABEL_22:

    v50 = v0[1];

    return v50();
  }

  if (v5 != enum case for AssetAction.Kind.buy(_:))
  {
    if (v5 == enum case for AssetAction.Kind.cancelDownload(_:))
    {
      v31 = v0[38];
      v33 = v0[34];
      v32 = v0[35];
      v34 = v1;
      v36 = v0[28];
      v35 = v0[29];
      v37 = v0[26];
      v38 = v0[27];
      v236 = v0[5];

      (*(v36 + 8))(v35, v38);
      v39 = sub_2C5C58();
      (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
      swift_unknownObjectRetain();
      v40 = sub_2C5C08();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = &protocol witness table for MainActor;
      *(v41 + 32) = v31;
      *(v41 + 40) = v33;
      *(v41 + 48) = v32;
      v42 = &unk_2F7500;
LABEL_15:
      sub_249B98(0, 0, v37, v42, v41);
LABEL_16:

      goto LABEL_17;
    }

    if (v5 == enum case for AssetAction.Kind.download(_:))
    {
      v51 = v0[38];
      v225 = v0[35];
      v218 = v0[34];
      v52 = v0[28];
      v53 = v0[29];
      v237 = v1;
      v54 = v0[26];
      v55 = v0[27];
      v56 = v0[25];
      v195 = v0[24];
      v191 = v56;
      v193 = v0[23];
      v57 = v0[8];
      v189 = v0[7];
      v233 = v0[5];

      (*(v52 + 96))(v53, v55);
      v206 = v53[1];
      v211 = *v53;
      v214 = *(v53 + 16);
      v58 = v53[3];
      v59 = sub_2C5C58();
      (*(*(v59 - 8) + 56))(v54, 1, 1, v59);
      sub_2361F8(v57, v56);
      v203 = v58;

      v60 = v51;
      swift_unknownObjectRetain();
      v61 = sub_2C5C08();
      v62 = (*(v193 + 80) + 40) & ~*(v193 + 80);
      v63 = (v195 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v66[2] = v61;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v58;
      sub_2363C8(v191, v66 + v62);
      *(v66 + v63) = v189;
      v67 = (v66 + v64);
      *v67 = v211;
      v67[1] = v206;
      *(v66 + v65) = v60;
      v68 = v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v68 = v218;
      *(v68 + 1) = v225;
      v68[16] = v214;
      sub_1C0888(0, 0, v54, &unk_2F7510, v66);

      swift_unknownObjectRelease();
      v69 = v203;
    }

    else
    {
      if (v5 == enum case for AssetAction.Kind.preview(_:))
      {
        v70 = v0[38];
        v238 = v1;
        v71 = v0[34];
        v72 = v0[35];
        v73 = v0[28];
        v74 = v0[29];
        v75 = v0[26];
        v76 = v0[27];
        v77 = v0[7];
        v233 = v0[5];

        (*(v73 + 96))(v74, v76);
        v78 = *v74;
        v79 = sub_2C5C58();
        (*(*(v79 - 8) + 56))(v75, 1, 1, v79);

        swift_unknownObjectRetain();
        v80 = v78;
        v81 = sub_2C5C08();
        v82 = swift_allocObject();
        v82[2] = v81;
        v82[3] = &protocol witness table for MainActor;
        v82[4] = v77;
        v82[5] = v70;
        v82[6] = v71;
        v82[7] = v72;
        v82[8] = v80;
        sub_249B98(0, 0, v75, &unk_2F7520, v82);

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      if (v5 == enum case for AssetAction.Kind.removeFrom(_:))
      {
        v83 = v0[38];
        v226 = v0[34];
        v234 = v0[35];
        v84 = v0[28];
        v85 = v0[29];
        v37 = v0[26];
        v86 = v0[27];
        v87 = v0[7];
        v236 = v0[5];

        (*(v84 + 96))(v85, v86);
        v88 = *v85;
        v89 = v85[1];
        v34 = v1;
        v90 = *(v85 + 16);
        LOBYTE(v85) = *(v85 + 17);
        v91 = sub_2C5C58();
        (*(*(v91 - 8) + 56))(v37, 1, 1, v91);

        swift_unknownObjectRetain();
        v92 = sub_2C5C08();
        v41 = swift_allocObject();
        *(v41 + 16) = v92;
        *(v41 + 24) = &protocol witness table for MainActor;
        *(v41 + 32) = v87;
        *(v41 + 40) = v226;
        *(v41 + 48) = v234;
        *(v41 + 56) = v88;
        *(v41 + 64) = v89;
        *(v41 + 72) = v83;
        *(v41 + 80) = v90;
        *(v41 + 81) = v85;
        v42 = &unk_2F7570;
        goto LABEL_15;
      }

      if (v5 == enum case for AssetAction.Kind.sample(_:))
      {
        v204 = v0[34];
        v207 = v0[35];
        v188 = v0[38];
        v93 = v0[28];
        v94 = v0[29];
        v239 = v1;
        v95 = v0[26];
        v96 = v0[27];
        v190 = v95;
        v97 = v0[21];
        v215 = v0[22];
        v98 = v0[20];
        v99 = v0[18];
        v227 = v0[19];
        v235 = v0[17];
        v100 = v0[15];
        v101 = v0[14];
        v219 = v0[7];
        v186 = v0[6];
        v212 = v0[5];

        (*(v93 + 96))(v94, v96);
        v199 = *(v100 + 32);
        v192 = v99;
        v187 = v101;
        v199(v99, v94, v101);
        v102 = sub_2C5C58();
        (*(*(v102 - 8) + 56))(v95, 1, 1, v102);
        (*(v98 + 16))(v215, v186, v227);
        (*(v100 + 16))(v235, v99, v101);

        swift_unknownObjectRetain();
        v103 = sub_2C5C08();
        v104 = (*(v98 + 80) + 48) & ~*(v98 + 80);
        v105 = (v97 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
        v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
        v107 = (*(v100 + 80) + v106 + 8) & ~*(v100 + 80);
        v108 = swift_allocObject();
        *(v108 + 2) = v103;
        *(v108 + 3) = &protocol witness table for MainActor;
        *(v108 + 4) = v204;
        *(v108 + 5) = v207;
        (*(v98 + 32))(&v108[v104], v215, v227);
        *&v108[v105] = v219;
        *&v108[v106] = v188;
        v199(&v108[v107], v235, v187);
        sub_249B98(0, 0, v190, &unk_2F7530, v108);

        swift_unknownObjectRelease();
        (*(v100 + 8))(v192, v187);
        v43 = enum case for ActionOutcome.performed(_:);
        v44 = sub_2C4C08();
        v45 = *(*(v44 - 8) + 104);
        v46 = v212;
        goto LABEL_18;
      }

      if (v5 != enum case for AssetAction.Kind.update(_:))
      {
        if (v5 == enum case for AssetAction.Kind.opinion(_:))
        {
          v126 = v0[28];
          v127 = v0[29];
          v34 = v1;
          v128 = v0[26];
          v129 = v0[27];
          v130 = v0[7];
          v236 = v0[5];

          (*(v126 + 96))(v127, v129);
          LOBYTE(v126) = *v127;
          v131 = sub_2C5C58();
          (*(*(v131 - 8) + 56))(v128, 1, 1, v131);

          v132 = sub_2C5C08();
          v133 = swift_allocObject();
          *(v133 + 16) = v132;
          *(v133 + 24) = &protocol witness table for MainActor;
          *(v133 + 32) = v130;
          *(v133 + 40) = v126;
          sub_1C0888(0, 0, v128, &unk_2F74F0, v133);
          goto LABEL_16;
        }

        if (v5 == enum case for AssetAction.Kind.setFinishedDate(_:))
        {
          v209 = v0[38];
          v229 = v0[35];
          v134 = v0[28];
          v135 = v0[29];
          v136 = v0[26];
          v137 = v0[27];
          v194 = v136;
          v139 = v0[12];
          v138 = v0[13];
          v140 = v0[10];
          v221 = v0[34];
          v141 = v0[9];
          v241 = v1;
          v142 = v0[7];
          v233 = v0[5];

          (*(v134 + 96))(v135, v137);
          v197 = *(v135 + *(sub_6620C(&qword_3C7A68, &qword_2F74C0) + 48));
          v201 = *(v140 + 32);
          v205 = v138;
          v201(v138, v135, v141);
          v143 = sub_2C5C58();
          (*(*(v143 - 8) + 56))(v136, 1, 1, v143);
          (*(v140 + 16))(v139, v138, v141);

          swift_unknownObjectRetain();
          v144 = sub_2C5C08();
          v145 = (*(v140 + 80) + 72) & ~*(v140 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = v144;
          *(v146 + 24) = &protocol witness table for MainActor;
          *(v146 + 32) = v197;
          *(v146 + 40) = v142;
          *(v146 + 48) = v209;
          *(v146 + 56) = v221;
          *(v146 + 64) = v229;
          v201(v146 + v145, v139, v141);
          v147 = &unk_2F74D0;
        }

        else
        {
          if (v5 != enum case for AssetAction.Kind.setFinishedYear(_:))
          {
            if (v5 != enum case for AssetAction.Kind.open(_:))
            {
              v171 = v0[38];
              v172 = v0[35];
              if (v5 != enum case for AssetAction.Kind.unsetFinishedDate(_:))
              {
                v179 = v0[28];
                v180 = v0[29];
                v181 = v0[27];
                v182 = v0[5];

                swift_unknownObjectRelease();

                v183 = enum case for ActionOutcome.unsupported(_:);
                v184 = sub_2C4C08();
                (*(*(v184 - 8) + 104))(v182, v183, v184);
                (*(v179 + 8))(v180, v181);
                goto LABEL_22;
              }

              v173 = v0[34];
              v174 = v0[26];
              v175 = v0[5];

              v176 = sub_2C5C58();
              (*(*(v176 - 8) + 56))(v174, 1, 1, v176);
              swift_unknownObjectRetain();
              v177 = sub_2C5C08();
              v178 = swift_allocObject();
              v178[2] = v177;
              v178[3] = &protocol witness table for MainActor;
              v178[4] = v171;
              v178[5] = v173;
              v178[6] = v172;
              sub_249B98(0, 0, v174, &unk_2F74A0, v178);

              swift_unknownObjectRelease();

              v43 = enum case for ActionOutcome.performed(_:);
              v44 = sub_2C4C08();
              v45 = *(*(v44 - 8) + 104);
              v46 = v175;
              goto LABEL_18;
            }

            v158 = v0[38];
            v231 = v0[35];
            v159 = v0[26];
            v217 = v159;
            v223 = v0[34];
            v161 = v0[21];
            v160 = v0[22];
            v213 = v160;
            v163 = v0[19];
            v162 = v0[20];
            v242 = v1;
            v165 = v0[6];
            v164 = v0[7];
            v233 = v0[5];

            v166 = sub_2C5C58();
            (*(*(v166 - 8) + 56))(v159, 1, 1, v166);
            (*(v162 + 16))(v160, v165, v163);

            swift_unknownObjectRetain();
            v167 = sub_2C5C08();
            v168 = (*(v162 + 80) + 48) & ~*(v162 + 80);
            v169 = (v161 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
            v170 = swift_allocObject();
            *(v170 + 2) = v167;
            *(v170 + 3) = &protocol witness table for MainActor;
            *(v170 + 4) = v223;
            *(v170 + 5) = v231;
            (*(v162 + 32))(&v170[v168], v213, v163);
            *&v170[v169] = v164;
            *&v170[(v169 + 15) & 0xFFFFFFFFFFFFFFF8] = v158;
            sub_249B98(0, 0, v217, &unk_2F7540, v170);

            swift_unknownObjectRelease();
            goto LABEL_30;
          }

          v210 = v0[38];
          v230 = v0[35];
          v148 = v0[28];
          v149 = v0[29];
          v150 = v0[26];
          v151 = v0[27];
          v194 = v150;
          v153 = v0[12];
          v152 = v0[13];
          v140 = v0[10];
          v222 = v0[34];
          v141 = v0[9];
          v241 = v1;
          v154 = v0[7];
          v233 = v0[5];

          (*(v148 + 96))(v149, v151);
          v198 = *(v149 + *(sub_6620C(&qword_3C7A60, &unk_2FBCB0) + 48));
          v202 = *(v140 + 32);
          v205 = v152;
          v202(v152, v149, v141);
          v155 = sub_2C5C58();
          (*(*(v155 - 8) + 56))(v150, 1, 1, v155);
          (*(v140 + 16))(v153, v152, v141);

          swift_unknownObjectRetain();
          v156 = sub_2C5C08();
          v157 = (*(v140 + 80) + 72) & ~*(v140 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = v156;
          *(v146 + 24) = &protocol witness table for MainActor;
          *(v146 + 32) = v198;
          *(v146 + 40) = v154;
          *(v146 + 48) = v210;
          *(v146 + 56) = v222;
          *(v146 + 64) = v230;
          v202(v146 + v157, v153, v141);
          v147 = &unk_2F74B8;
        }

        sub_249B98(0, 0, v194, v147, v146);

        swift_unknownObjectRelease();
        (*(v140 + 8))(v205, v141);
        goto LABEL_31;
      }

      v109 = v0[38];
      v228 = v0[35];
      v220 = v0[34];
      v110 = v0[28];
      v111 = v0[29];
      v240 = v1;
      v112 = v0[26];
      v113 = v0[27];
      v114 = v0[25];
      v208 = v0[24];
      v196 = v114;
      v200 = v0[23];
      v116 = v0[7];
      v115 = v0[8];
      v233 = v0[5];

      (*(v110 + 96))(v111, v113);
      v117 = *v111;
      v118 = sub_2C5C58();
      (*(*(v118 - 8) + 56))(v112, 1, 1, v118);
      sub_2361F8(v115, v114);
      v216 = v117;

      v119 = v109;
      swift_unknownObjectRetain();
      v120 = sub_2C5C08();
      v121 = (*(v200 + 80) + 40) & ~*(v200 + 80);
      v122 = (v208 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
      v124 = swift_allocObject();
      v124[2] = v120;
      v124[3] = &protocol witness table for MainActor;
      v124[4] = v117;
      sub_2363C8(v196, v124 + v121);
      *(v124 + v122) = v116;
      *(v124 + v123) = v119;
      v125 = (v124 + ((v123 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v125 = v220;
      v125[1] = v228;
      sub_1C0888(0, 0, v112, &unk_2F74E0, v124);

      swift_unknownObjectRelease();
      v69 = v216;
    }

LABEL_30:

LABEL_31:
    v43 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v233;
    goto LABEL_18;
  }

  v19 = v0[29];
  (*(v0[28] + 96))(v19, v0[27]);
  v0[42] = *v19;
  v20 = sub_6620C(&qword_3BFEC8, &qword_2F7550);
  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_2382B0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 4, v20, v20);
}

uint64_t sub_2382B0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238838;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_2383CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2383CC()
{

  v1 = [*(v0 + 32) figaroPageContext];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_2C58C8();
    v26 = v3;
    v27 = v2;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v28 = *(v0 + 328);
  v25 = *(v0 + 280);
  v23 = *(v0 + 336);
  v24 = *(v0 + 272);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v29 = *(v0 + 40);
  v10 = sub_2C5C58();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_2361F8(v9, v5);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_2363C8(v5, v15 + v11);
  *(v15 + v12) = v23;
  *(v15 + v13) = v8;
  v16 = (v15 + v14);
  *v16 = v27;
  v16[1] = v26;
  v17 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v24;
  v17[1] = v25;

  v18 = v23;
  sub_23CD34(0, 0, v4, &unk_2F7560, v15);

  swift_unknownObjectRelease();
  sub_69198(v4, &unk_3BDBB0, &qword_2E47D0);
  v19 = enum case for ActionOutcome.performed(_:);
  v20 = sub_2C4C08();
  (*(*(v20 - 8) + 104))(v29, v19, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_238694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238760()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238838()
{
  v1 = *(v0 + 336);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 555) = v15;
  *(v8 + 264) = a8;
  *(v8 + 272) = v14;
  *(v8 + 248) = a6;
  *(v8 + 256) = a7;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v9 = sub_6620C(&qword_3BCB88, &qword_2E3C20);
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = sub_2C5C18();
  *(v8 + 312) = sub_2C5C08();
  v10 = sub_2BF028();
  v11 = swift_task_alloc();
  *(v8 + 320) = v11;
  *v11 = v8;
  v11[1] = sub_238A78;

  return BaseObjectGraph.inject<A>(_:)(v8 + 216, v10, v10);
}

uint64_t sub_238A78()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v5 = sub_239FE0;
  }

  else
  {
    *(v2 + 336) = v3;
    *(v2 + 344) = v4;
    v5 = sub_238BDC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_238BDC()
{
  v1 = *(v0 + 264);
  v14 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  *(v0 + 352) = v5;
  v6 = type metadata accessor for AssetActionModifyRequest();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_storeID];
  *v8 = v4;
  *(v8 + 1) = v2;
  v9 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID];
  *v9 = v3;
  *(v9 + 1) = v1;
  *&v7[OBJC_IVAR___BSUIAssetActionModifyRequest_tracker] = v5;
  *(v0 + 200) = v7;
  *(v0 + 208) = v6;
  v10 = v5;

  v11 = objc_msgSendSuper2((v0 + 200), "init");
  *(v0 + 360) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_238DAC;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_6620C(&qword_3C7A70, &qword_2F7588);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A434;
  *(v0 + 104) = &unk_393368;
  *(v0 + 112) = v12;
  [v14 performAddRequest:v11 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_238DAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_23A200;
  }

  else
  {
    v5 = sub_238EDC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_238EDC()
{
  v19 = v0;
  v1 = *(v0 + 224);
  *(v0 + 376) = v1;
  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  v3 = sub_2C0098();
  v4 = sub_2C5DE8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v18);
    _os_log_impl(&dword_0, v3, v4, "Add to collection %s completed, success", v7, 0xCu);
    sub_68CD0(v8);
  }

  if (*(v0 + 555) == 1)
  {
    v9 = *(v0 + 352);
    *(v0 + 384) = sub_66278(0, &qword_3C7A78, off_380DA0);
    v10 = &v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetID];
    *(v0 + 392) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetID];
    *(v0 + 400) = *(v10 + 1);
    *(v0 + 408) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetContentType];
    v11 = &v1[OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle];
    *(v0 + 416) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle];
    *(v0 + 424) = *(v11 + 1);

    *(v0 + 432) = sub_6864C(_swiftEmptyArrayStorage);
    v12 = v9;
    *(v0 + 440) = sub_2C5C08();
    v14 = sub_2C5BB8();
    *(v0 + 448) = v14;
    *(v0 + 456) = v13;

    return _swift_task_switch(sub_239194, v14, v13);
  }

  else
  {
    v15 = *(v0 + 360);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_239194()
{
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[44];
  v4 = v0[29];
  sub_6620C(&qword_3C7A80, &qword_2F7590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = sub_2C5CF8();
  v0[58] = sub_68788(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3C7A88, &qword_2F7598);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v0[60] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v0[61] = v8;
  v0[62] = v7;

  return _swift_task_switch(sub_2392C8, v8, v7);
}

uint64_t sub_2392C8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  if (sub_2C58C8() == v2 && v3 == v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2C65B8();
  }

  v6 = *(v0 + 556);

  v7 = objc_opt_self();
  sub_66278(0, &qword_3BC790, NSNumber_ptr);
  isa = sub_2C57C8().super.isa;

  v9 = sub_2C5888();
  v10 = [v7 _noticeMessageForAddingAssets:isa toCollectionNamed:v9 isAddingToWantToRead:v5 & 1 useNonSpecificDeterminerInMessage:v6];

  if (v10)
  {
    v11 = sub_2C58C8();
    v13 = v12;

    *(v0 + 504) = v11;
    *(v0 + 512) = v13;
    if (v5)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 288);
      v14 = *(v0 + 296);
      v16 = *(v0 + 280);
      v17 = sub_57AD8(v16, qword_3BF980);
      v18 = *(v15 + 16);
      v18(v14, v17, v16);
      sub_2BF448();
      v19 = *(v15 + 8);
      v19(v14, v16);
      if (*(v0 + 553) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v20 = *(v0 + 296);
        v21 = *(v0 + 280);
        v22 = sub_57AD8(v21, qword_3BF968);
        v18(v20, v22, v21);
        sub_2BF448();
        v19(v20, v21);
        v23 = *(v0 + 554);
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }

    *(v0 + 557) = v23;
    v26 = swift_task_alloc();
    *(v0 + 520) = v26;
    *v26 = v0;
    v26[1] = sub_239610;

    return sub_2A23F4(v5 & 1);
  }

  else
  {

    v24 = *(v0 + 448);
    v25 = *(v0 + 456);

    return _swift_task_switch(sub_239D8C, v24, v25);
  }
}

uint64_t sub_239610(char a1)
{
  v2 = *v1;
  *(*v1 + 558) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return _swift_task_switch(sub_239738, v4, v3);
}

uint64_t sub_239738()
{
  if (*(v0 + 557) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 528) = v1;
    *v1 = v0;
    v1[1] = sub_2398E4;
    v2 = *(v0 + 512);
    v3 = *(v0 + 432);
    v4 = *(v0 + 504);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 558) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 544) = v6;
    *v6 = v0;
    v6[1] = sub_239E80;
    v2 = *(v0 + 512);
    v3 = *(v0 + 432);
    v4 = *(v0 + 504);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 558);
  v9 = swift_task_alloc();
  *(v0 + 536) = v9;
  *v9 = v0;
  v9[1] = sub_239BDC;
  v10 = *(v0 + 472);
  v11 = *(v0 + 432);

  return sub_2A2CE8(v8 & 1, v11, sub_245A28, v10);
}

uint64_t sub_2398E4()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_239A28, v3, v2);
}

uint64_t sub_239A28()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 558);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 552) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 448);
    v7 = *(v0 + 456);

    return _swift_task_switch(sub_239D8C, v6, v7);
  }

  else
  {
    v8 = *(v0 + 558);
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_239BDC;
    v10 = *(v0 + 472);
    v11 = *(v0 + 432);

    return sub_2A2CE8(v8 & 1, v11, sub_245A28, v10);
  }
}

uint64_t sub_239BDC()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_239D20, v3, v2);
}

uint64_t sub_239D20()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return _swift_task_switch(sub_239D8C, v1, v2);
}

uint64_t sub_239D8C()
{
  v1 = v0[44];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_239DF8, v2, v3);
}

uint64_t sub_239DF8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_239E80()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_245F84, v3, v2);
}

uint64_t sub_239FE0()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Add to collection %s failed! error=%@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A200()
{
  v15 = v0;
  v1 = v0[45];
  v2 = v0[44];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v3 = sub_2C00B8();
  sub_57AD8(v3, qword_3C2EB8);

  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_5CCF4(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "Add to collection %s failed! error=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23A434(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_72084((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_6620C(&unk_3BF5A0, &qword_2EC790);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_23A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 200) = a8;
  *(v8 + 208) = v13;
  *(v8 + 184) = a6;
  *(v8 + 192) = a7;
  *(v8 + 176) = a5;
  *(v8 + 216) = sub_2C5C18();
  *(v8 + 224) = sub_2C5C08();
  v9 = sub_2BF028();
  v10 = swift_task_alloc();
  *(v8 + 232) = v10;
  *v10 = v8;
  v10[1] = sub_23A5FC;

  return BaseObjectGraph.inject<A>(_:)(v8 + 160, v9, v9);
}

uint64_t sub_23A5FC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v5 = sub_23AD38;
  }

  else
  {
    *(v2 + 248) = v3;
    *(v2 + 256) = v4;
    v5 = sub_23A760;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23A760()
{
  super_class = v0[12].super_class;
  receiver = v0[13].receiver;
  v2 = v0[11].super_class;
  v3 = v0[12].receiver;
  v4 = v0[11].receiver;
  v5 = v0[10].receiver;
  v0[16].super_class = v5;
  v6 = type metadata accessor for AssetActionModifyRequest();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_storeID];
  *v8 = v4;
  *(v8 + 1) = v2;
  v9 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID];
  *v9 = v3;
  *(v9 + 1) = super_class;
  *&v7[OBJC_IVAR___BSUIAssetActionModifyRequest_tracker] = v5;
  v0[9].receiver = v7;
  v0[9].super_class = v6;
  v10 = v5;

  v11 = objc_msgSendSuper2(v0 + 9, "init");
  v0[17].receiver = v11;
  v0[1].receiver = v0;
  v0[3].super_class = &v0[10].super_class;
  v0[1].super_class = sub_23A930;
  v12 = swift_continuation_init();
  v0[8].super_class = sub_6620C(&qword_3C7A70, &qword_2F7588);
  v0[5].receiver = _NSConcreteStackBlock;
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_23A434;
  v0[6].super_class = &unk_393390;
  v0[7].receiver = v12;
  [receiver performRemoveRequest:v11 completionHandler:&v0[5]];

  return _swift_continuation_await(&v0[1]);
}

uint64_t sub_23A930()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_23AF50;
  }

  else
  {
    v5 = sub_23AA60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23AA60()
{
  v20 = v0;

  v1 = *(v0 + 168);
  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  v3 = sub_2C0098();
  v4 = sub_2C5DE8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v19);
    _os_log_impl(&dword_0, v3, v4, "Remove from collection %s completed, success", v7, 0xCu);
    sub_68CD0(v8);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  if (*(v0 + 288) == 1)
  {
    v18 = *(v0 + 289);
    sub_6864C(_swiftEmptyArrayStorage);
    v11 = objc_opt_self();
    sub_6620C(&qword_3BFDD8, qword_2E9490);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2E9480;
    *(v12 + 32) = sub_2C5CF8();
    sub_66278(0, &qword_3BC790, NSNumber_ptr);
    isa = sub_2C5B18().super.isa;

    v14 = sub_2C5888();
    v15 = sub_2C57C8().super.isa;

    [v11 presentNoticeForRemovingBooks:isa fromCollectionNamed:v14 options:v15 useNonSpecificDeterminerInMessage:v18];
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23AD38()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Remove from collection %s failed! error=%@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23AF50()
{
  v15 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v3 = sub_2C00B8();
  sub_57AD8(v3, qword_3C2EB8);

  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_5CCF4(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "Remove from collection %s failed! error=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v15;
  v8[30] = v16;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v11 = sub_2BF558();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[34] = v12;
  *v12 = v8;
  v12[1] = sub_23B29C;

  return sub_23C004(a5, a6);
}

uint64_t sub_23B29C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = sub_2BF028();
    v7 = swift_task_alloc();
    *(v2 + 280) = v7;
    *v7 = v3;
    v7[1] = sub_23B430;

    return BaseObjectGraph.inject<A>(_:)(v2 + 184, v6, v6);
  }
}

uint64_t sub_23B430()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_23BE0C;
  }

  else
  {
    v2 = sub_23B544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B544()
{
  v44 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[23];
  v0[37] = v5;
  (*(v2 + 104))(v1, enum case for BooksFeatureFlag.unifiedProductPage(_:), v3);
  sub_245A30(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_1D2FBC();
  v6 = sub_2C5A78();
  (*(v2 + 8))(v1, v3);
  v7 = [v4 buyParams];
  if (v7)
  {
    v8 = v7;
    sub_2C58C8();
  }

  v9 = v0[25];
  v42 = sub_2BF828();
  v10 = [v9 isSG];
  if (v6)
  {
    v11 = v0[25];
    [v11 supportsUnifiedProductPage];
    v12.super.super.isa = sub_2C5BA8().super.super.isa;
    v13 = [v11 editionKind];
    if (v13)
    {
      v14 = v13;
      sub_2C58C8();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v12.super.super.isa = 0;
  }

  v17 = v5;
  v18 = sub_2C5888();

  if (v16)
  {
    v19 = sub_2C5888();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(BSUIPurchaseParameters) initWithBuyParams:v18 isAudiobook:v42 & 1 hasRacSupport:v10 supportsUnifiedProductPage:v12.super.super.isa editionKind:v19 tracker:v17];
  v0[38] = v20;

  sub_2BEF58();
  if (v21)
  {
    v22 = sub_2C5888();
  }

  else
  {
    v22 = 0;
  }

  v23 = v0[28];
  [v20 setPageId:v22];

  sub_2BEF68();
  v24 = sub_2C5888();

  [v20 setPageType:v24];

  if (v23)
  {
    v25 = sub_2C5888();
  }

  else
  {
    v25 = 0;
  }

  [v20 setPageContext:v25];

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v26 = sub_2C00B8();
  v0[39] = sub_57AD8(v26, qword_3C2EB8);

  v27 = v20;
  v28 = sub_2C0098();
  v29 = sub_2C5DE8();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[29];
    v30 = v0[30];
    v32 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_5CCF4(v31, v30, &v43);
    *(v32 + 12) = 2080;
    v33 = [v27 buyParams];
    v34 = sub_2C58C8();
    v36 = v35;

    v37 = sub_5CCF4(v34, v36, &v43);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_0, v28, v29, "%%Purchasing: assetID=%s, buyParams=%s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v38 = objc_opt_self();
  v39 = sub_2C5888();
  v0[40] = v39;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23BAD0;
  v40 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7A90, &unk_2F75B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23CC44;
  v0[13] = &unk_3933B8;
  v0[14] = v40;
  [v38 purchaseAsset:v39 parameters:v27 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23BAD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_23BE70;
  }

  else
  {
    v2 = sub_23BBE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23BBE0()
{
  v22 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = v3;

  v5 = sub_2C0098();
  v6 = sub_2C5DE8();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = *(v0 + 296);
    v20 = *(v0 + 304);
    log = v5;
    v7 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    *(v0 + 168) = v7;
    *(v0 + 176) = v2;
    sub_6620C(&qword_3BDB00, &qword_2E6E10);
    v11 = sub_2C5918();
    v13 = sub_5CCF4(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v4;
    *v9 = v3;
    v14 = v4;
    _os_log_impl(&dword_0, log, v6, "%%Purchase done! downloadID=%s, response=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v10);
  }

  else
  {
    v15 = *(v0 + 304);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23BE0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BE70(uint64_t a1)
{
  v2 = v1[40];
  swift_willThrow();

  swift_errorRetain();
  v3 = sub_2C0098();
  v4 = sub_2C5DE8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[37];
  v6 = v1[38];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v3, v4, "%%Purchase failed! error=%@", v8, 0xCu);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);
  }

  else
  {
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_23C004(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_2BEB98();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_66278(0, &qword_3BD1C0, BUBag_ptr);
  v5 = swift_task_alloc();
  v2[29] = v5;
  *v5 = v2;
  v5[1] = sub_23C124;

  return BaseObjectGraph.inject<A>(_:)(v2 + 22, v4, v4);
}

uint64_t sub_23C124()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_23C900;
  }

  else
  {
    v2 = sub_23C238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23C238()
{
  v0[31] = v0[22];
  v1 = sub_2BF028();
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_23C2F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 23, v1, v1);
}

uint64_t sub_23C2F0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_23C964;
  }

  else
  {
    v2 = sub_23C404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23C404()
{
  v1 = v0[31];
  v0[34] = v0[23];
  v2 = [v1 currencyCode];
  v0[35] = v2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23C544;
  v3 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7A98, &qword_2F75C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_244030;
  v0[13] = &unk_3933E0;
  v0[14] = v3;
  [v2 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23C544()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_23C9D0;
  }

  else
  {
    v2 = sub_23C654;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_23C654()
{
  v1 = *(v0 + 160);

  if (v1 >= 2)
  {
    v2 = v1;
    sub_2C58B8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(v0 + 192) version];
  if (v3)
  {
    v4 = v3;
    sub_2C58C8();
  }

  v5 = [*(v0 + 192) priceFormatted];
  if (v5)
  {
    v6 = v5;
    sub_2C58C8();
  }

  v7 = *(v0 + 192);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  [v7 averageRating];
  sub_2C5CB8();
  result = [v7 ratingCountForAnalytics];
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v15 = v2;
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    sub_2BEB88();
    sub_245A30(&qword_3C7AA0, &type metadata accessor for ContentStoreData, &protocol conformance descriptor for ContentStoreData);
    sub_245A30(&qword_3C7AA8, &type metadata accessor for ContentStoreData, &protocol conformance descriptor for ContentStoreData);
    sub_2BEFE8();

    (*(v11 + 8))(v12, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_23C900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C964()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_23C9D0(uint64_t a1)
{
  v2 = *(v1 + 280);
  swift_willThrow();

  v3 = [*(v1 + 192) version];
  if (v3)
  {
    v4 = v3;
    sub_2C58C8();
  }

  v5 = [*(v1 + 192) priceFormatted];
  if (v5)
  {
    v6 = v5;
    sub_2C58C8();
  }

  v7 = *(v1 + 192);
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  [v7 averageRating];
  sub_2C5CB8();
  result = [v7 ratingCountForAnalytics];
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v1 + 272);
    v14 = *(v1 + 248);
    v11 = *(v1 + 216);
    v10 = *(v1 + 224);
    v12 = *(v1 + 208);
    sub_2BEB88();
    sub_245A30(&qword_3C7AA0, &type metadata accessor for ContentStoreData, &protocol conformance descriptor for ContentStoreData);
    sub_245A30(&qword_3C7AA8, &type metadata accessor for ContentStoreData, &protocol conformance descriptor for ContentStoreData);
    sub_2BEFE8();

    (*(v11 + 8))(v10, v12);

    v13 = *(v1 + 8);

    return v13();
  }

  return result;
}

uint64_t sub_23CC44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *sub_72084((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_6620C(&unk_3BF5A0, &qword_2EC790);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = sub_2C58C8();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(*(v7 + 64) + 40);
    *v13 = v11;
    v13[1] = v12;
    v13[2] = a3;
    v14 = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_23CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[28] = a4;
  sub_2C5C18();
  v8[33] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[34] = v10;
  v8[35] = v9;

  return _swift_task_switch(sub_23D030, v10, v9);
}

uint64_t sub_23D030()
{
  v1 = v0[29];
  v2 = v0[28];
  sub_6620C(&unk_3C44C0, &unk_2F11D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000307420;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_677B4(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3BD8A0, &unk_2E4840);
  v0[26] = v4;
  v5 = sub_2C05A8();
  if (v6)
  {
    sub_1B6334(v5, v6, 0xD000000000000016, 0x8000000000307460);
  }

  v7 = sub_2BF028();
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_23D1AC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 27, v7, v7);
}

uint64_t sub_23D1AC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_23D614;
  }

  else
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_23D2C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23D2C8()
{
  v1 = v0[32];
  v2 = v0[27];
  v0[38] = v2;
  v3 = sub_2C5888();
  v0[39] = v3;
  sub_293488(v0[26]);

  isa = sub_2C57C8().super.isa;
  v0[40] = isa;

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_23D464;
  v5 = swift_continuation_init();
  v0[25] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23DA5C;
  v0[21] = &unk_393408;
  v0[22] = v5;
  [v1 openAssetID:v3 options:isa tracker:v2 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23D464()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_23D82C;
  }

  else
  {
    v5 = sub_23D594;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23D594()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23D614()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to open asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23D82C()
{
  v16 = v0;
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v4 = sub_2C00B8();
  sub_57AD8(v4, qword_3C2EB8);

  swift_errorRetain();
  v5 = sub_2C0098();
  v6 = sub_2C5DC8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[28];
    v7 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_5CCF4(v8, v7, &v15);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v5, v6, "Failed to open asset %s: %@", v9, 0x16u);
    sub_69198(v10, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}