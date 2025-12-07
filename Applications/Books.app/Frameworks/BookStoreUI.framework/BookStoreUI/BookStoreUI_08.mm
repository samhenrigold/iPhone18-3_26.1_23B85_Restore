uint64_t sub_11E0EC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();

  v3 = sub_25B524(v2, 0, _swiftEmptyDictionarySingleton);

  *a1 = v3;
  return result;
}

uint64_t sub_11E14C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_2BE9B8();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2C1958();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_6620C(&qword_3C1A38, &qword_2EBE20);
  __chkstk_darwin(v42);
  v8 = &v41 - v7;
  v46 = sub_6620C(&qword_3C1A30, &qword_2EBE18);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v41 - v9;
  v49 = sub_6620C(&qword_3C1A28, &qword_2EBE10);
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - v11;
  v53 = sub_6620C(&qword_3C1A20, &qword_2EBE08);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v41 - v12;
  v52 = sub_6620C(&qword_3C1A18, &qword_2EBE00);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v41 - v13;
  v14 = sub_2BFCF8();
  sub_9F8B8(v14, v15, v16);
  sub_2BFCA8();
  KeyPath = swift_getKeyPath();
  v18 = sub_2BFD08();
  v19 = &v8[*(sub_6620C(&qword_3C1A60, &qword_2EBE30) + 36)];
  *v19 = KeyPath;
  v19[1] = v18;
  v20 = swift_getKeyPath();
  sub_11F890(v6);
  v21 = sub_2C1918();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v23 = &v8[*(sub_6620C(&qword_3C1A50, &qword_2EBE28) + 36)];
  *v23 = v20;
  v23[1] = v21;
  v24 = swift_getKeyPath();
  sub_11F890(v6);
  v25 = sub_2C1948();
  v22(v6, v3);
  v26 = v42;
  v27 = &v8[*(v42 + 36)];
  *v27 = v24;
  v27[1] = v25;
  sub_2BFCF8();
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3BDF98, &qword_2E5558);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  sub_1153E4(v58);
  v28 = sub_123910(&qword_3C1A40, &qword_3C1A38, &qword_2EBE20, sub_1239C0);
  sub_2C3CE8();
  sub_68CD0(v58);
  sub_69198(v8, &qword_3C1A38, &qword_2EBE20);
  sub_69198(&v59, &qword_3BDFA0, &qword_2E5560);
  sub_2BFD08();
  v62 = v26;
  v63 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  v31 = v46;
  sub_2C3D08();
  (*(v44 + 8))(v10, v31);
  sub_2BFD08();
  v62 = v31;
  v63 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v49;
  sub_2C3D78();
  (*(v45 + 8))(v30, v34);
  sub_2BFCF8();
  sub_72084(&v62, v64);
  sub_2C4CF8();
  sub_2BFCF8();
  sub_72084(&v59, *(&v60 + 1));
  v35 = v54;
  sub_2C4CE8();
  v58[0] = v34;
  v58[1] = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v53;
  sub_2C3D88();

  (*(v55 + 8))(v35, v56);
  (*(v50 + 8))(v33, v38);
  sub_68CD0(&v59);
  sub_68CD0(&v62);
  v62 = v38;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  sub_2C3C78();
  return (*(v51 + 8))(v37, v39);
}

uint64_t sub_11E99C@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v91 = type metadata accessor for TextComponent(0) - 8;
  __chkstk_darwin(v91);
  v108 = (v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_6620C(&qword_3C1C58, &unk_2F8C00);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = v81 - v2;
  v89 = (type metadata accessor for SheetHeaderComponent(0) - 8);
  __chkstk_darwin(v89);
  v107 = (v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for SeriesRoomHeaderComponent(0) - 8;
  __chkstk_darwin(v88);
  v87 = (v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ReviewBrickComponent(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v102 = (v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_2C13C8();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v112 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2C3918();
  v85 = *(v99 - 8);
  __chkstk_darwin(v99);
  v84 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InfoItemComponent(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v111 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_2C0DD8();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v110 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DescriptionHeaderComponent(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ChartComponent(0);
  __chkstk_darwin(v18 - 8);
  v109 = (v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_9BBC4(v109);
  KeyPath = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  v81[2] = sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);

  v101 = sub_2C2568();
  v86 = v20;
  *v17 = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v21 = v15[7];
  *(v17 + v21) = swift_getKeyPath();
  v22 = v17;
  v81[1] = sub_6620C(&qword_3C0C88, &unk_2EAD00);
  swift_storeEnumTagMultiPayload();
  v23 = v15[8];
  *(v22 + v23) = swift_getKeyPath();
  v106 = v22;
  v81[0] = sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v24 = v15[9];
  *(v22 + v24) = swift_getKeyPath();
  sub_6620C(&qword_3C0F18, &qword_2EAD10);
  swift_storeEnumTagMultiPayload();

  sub_2C0DC8();
  v103 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = v111;
  *v111 = v25;
  swift_storeEnumTagMultiPayload();
  v27 = *(v11 + 28);
  *(v26 + v27) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v119 = 0x4014000000000000;
  v28 = v85[13](v84, enum case for Font.TextStyle.largeTitle(_:), v99);
  sub_AB620(v28, v29, v30);

  sub_2C2658();
  sub_2C13B8();
  v99 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = v102;
  *v102 = v31;
  swift_storeEnumTagMultiPayload();
  v33 = v32 + v6[7];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v6[8];
  *(v32 + v34) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v32 + v6[9];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  sub_2C1498();
  sub_12598C(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);

  v83 = sub_2C2B48();
  v84 = v36;
  v85 = v83;
  v37 = sub_2C2568();
  v38 = v87;
  *v87 = v37;
  *(v38 + 8) = v39 & 1;
  v40 = v88;
  v41 = *(v88 + 28);
  *(v38 + v41) = swift_getKeyPath();
  sub_6620C(&qword_3C0C78, &qword_2F3F00);
  swift_storeEnumTagMultiPayload();
  v42 = v38 + *(v40 + 32);
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = v38 + *(v40 + 36);
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v44 = swift_getKeyPath();
  v45 = v107;
  *v107 = v44;
  swift_storeEnumTagMultiPayload();
  v46 = v89;
  v47 = v89[7];
  *(v45 + v47) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v48 = v46[8];
  *(v45 + v48) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v89 = swift_getKeyPath();
  type metadata accessor for SwooshSetChildSwooshShelfContent(0);
  type metadata accessor for SwooshSetChildSwooshShelfModel(0);
  sub_12598C(&qword_3C1C60, type metadata accessor for SwooshSetChildSwooshShelfContent, &unk_2F3CE4);

  v49 = v90;
  sub_2C14F8();
  v50 = swift_getKeyPath();
  v51 = v108;
  *v108 = v50;
  swift_storeEnumTagMultiPayload();
  v52 = *(v91 + 28);
  *(v51 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = sub_25D9A4(_swiftEmptyDictionarySingleton);
  v54 = sub_25D778(v109, v53);

  v118 = 0;
  v117 = 0;
  v55 = sub_25D4F0(KeyPath, 0, v104, 0, v54);

  v116 = 0;
  v115 = v86 & 1;
  v56 = sub_25AF0C(v100, 0, v101, v86 & 1, v55);

  v57 = sub_25D2C4(v106, v56);

  v58 = sub_25B3B8(v57);

  v59 = sub_25D084(v110, v58);

  v60 = sub_25CF18(v59);

  v61 = sub_25CDAC(v60);

  v62 = sub_25CB84(v103, 0, v61);

  v63 = sub_25C958(v111, v62);

  v64 = sub_25C718(v112, v63);

  v114 = 0;
  v113 = 0;
  v65 = sub_25AC84(v99, 0, v82, 0, v64);

  v66 = sub_25C5AC(v65);

  v67 = v102;
  v68 = sub_25C380(v102, v66);

  v69 = sub_25C198(v83, v84, v68);

  v70 = v85;

  v71 = sub_25BF6C(v38, v69);

  v72 = v107;
  v73 = sub_25BD40(v107, v71);

  v74 = sub_25BBD4(v73);

  v75 = sub_25B524(v89, 0, v74);

  v76 = v49;
  v77 = sub_25B978(v49, v75);

  v78 = v108;
  v79 = sub_25B74C(v108, v77);

  sub_1259D4(v78, type metadata accessor for TextComponent);
  (*(v96 + 8))(v76, v97);
  sub_1259D4(v72, type metadata accessor for SheetHeaderComponent);
  sub_1259D4(v38, type metadata accessor for SeriesRoomHeaderComponent);
  sub_1259D4(v67, type metadata accessor for ReviewBrickComponent);
  (*(v94 + 8))(v112, v95);
  sub_1259D4(v111, type metadata accessor for InfoItemComponent);
  (*(v92 + 8))(v110, v93);
  sub_1259D4(v106, type metadata accessor for DescriptionHeaderComponent);
  result = sub_1259D4(v109, type metadata accessor for ChartComponent);
  *v98 = v79;
  return result;
}

uint64_t sub_11F83C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2CA8();
  *a1 = result;
  return result;
}

uint64_t sub_11F890@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_2C13F8();
  __chkstk_darwin(v2 - 8);
  v38 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0B28();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  __chkstk_darwin(v4);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v33 = sub_2C0C98();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (v31 - v13);
  v15 = sub_2C29C8();
  __chkstk_darwin(v15 - 8);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31[0] = v17;
  v18 = sub_2C0A78();
  __chkstk_darwin(v18 - 8);
  v31[2] = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C14C8();
  __chkstk_darwin(v20 - 8);
  v31[3] = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1 + *(type metadata accessor for ShelfView(0) + 88);
  v31[4] = *(*(v22 + *(type metadata accessor for Shelf(0) + 68)) + 16);
  sub_6620C(&qword_3C17F8, &qword_2EB940);
  sub_2C4378();
  sub_2C0AA8();
  v31[1] = sub_2C0AC8();
  sub_11455C(v17);
  sub_114154(v14);
  sub_2C0B88();
  v23 = *(v10 + 8);
  v24 = v33;
  v23(v14, v33);
  sub_2C0B08();
  v25 = *(v35 + 8);
  v26 = v9;
  v27 = v34;
  v25(v26, v34);
  v28 = v32;
  sub_114154(v32);
  v29 = v36;
  sub_2C0B88();
  v23(v28, v24);
  sub_2C0B18();
  v25(v29, v27);
  sub_11528C();
  return sub_2C1908();
}

uint64_t sub_11FC88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2CE8();
  *a1 = result;
  return result;
}

uint64_t sub_11FCDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v119 = a1;
  v123 = a2;
  v3 = sub_2C1958();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BFD68();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_6620C(&qword_3C1C28, &qword_2EC020);
  v96 = *(v118 - 8);
  __chkstk_darwin(v118);
  v95 = &v86 - v7;
  v121 = sub_6620C(&qword_3C1C30, &qword_2EC028);
  __chkstk_darwin(v121);
  v122 = &v86 - v8;
  v115 = sub_6620C(&qword_3C1C38, &qword_2EC030);
  __chkstk_darwin(v115);
  v116 = &v86 - v9;
  v120 = sub_6620C(&qword_3C1A78, &qword_2EBE38);
  __chkstk_darwin(v120);
  v117 = &v86 - v10;
  v106 = sub_6620C(&qword_3C1C40, &qword_2EC038);
  __chkstk_darwin(v106);
  v108 = &v86 - v11;
  v12 = sub_2C0E48();
  v112 = *(v12 - 8);
  v113 = v12;
  __chkstk_darwin(v12);
  v111 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C3918();
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2C0C98();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2C0D48();
  v109 = *(v17 - 8);
  v110 = v17;
  __chkstk_darwin(v17);
  v19 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_6620C(&qword_3C1C48, &qword_2EC040);
  v104 = *(v20 - 8);
  v105 = v20;
  __chkstk_darwin(v20);
  v103 = &v86 - v21;
  v114 = sub_6620C(&qword_3C1A88, &qword_2EBE40);
  __chkstk_darwin(v114);
  v107 = &v86 - v22;
  v23 = sub_2C1FD8();
  v88 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_6620C(&qword_3C1C50, &qword_2EC048);
  __chkstk_darwin(v26 - 8);
  v28 = &v86 - v27;
  v29 = type metadata accessor for ListItemComponentModel(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BFCF8();
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  v33 = swift_dynamicCast();
  v34 = *(v30 + 56);
  if (v33)
  {
    v34(v28, 0, 1, v29);
    sub_125868(v28, v32, type metadata accessor for ListItemComponentModel);
    if (sub_2BFCE8())
    {
      type metadata accessor for ShelfView(0);
      type metadata accessor for Shelf(0);
      sub_2C1C88();
      if (!swift_dynamicCast())
      {
        swift_storeEnumTagMultiPayload();
        v81 = sub_718D4(&qword_3C1A90, &qword_2EBE48);
        v82 = sub_123D20();
        *&v129[0] = v81;
        *(&v129[0] + 1) = v82;
        swift_getOpaqueTypeConformance2();
        v61 = v107;
        sub_2C33C8();
        v63 = v32;
        goto LABEL_12;
      }

      (*(v88 + 8))(v25, v23);
    }

    sub_114354(v19);
    v35 = sub_2C0CC8();
    (*(v109 + 8))(v19, v110);
    v36 = sub_2C3788();
    v37 = v97;
    sub_114154(v97);
    v87 = v32;
    sub_114C98();
    sub_1148B4();
    sub_2C12B8();
    *&v124 = v38;
    v40 = v101;
    v39 = v102;
    v41 = v99;
    v42 = (*(v101 + 104))(v99, enum case for Font.TextStyle.body(_:), v102);
    sub_85AF8(v42, v43, v44);
    sub_2C0B38();
    (*(v40 + 8))(v41, v39);
    (*(v98 + 8))(v37, v100);
    sub_2C24D8();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LOBYTE(v124) = 0;
    sub_115130();
    sub_2C46A8();
    sub_2C2708();
    *&v128[39] = v135;
    *&v128[23] = v134;
    *&v128[7] = v133;
    *&v124 = v35;
    WORD4(v124) = 256;
    LOBYTE(v125) = v36;
    *(&v125 + 1) = v46;
    *&v126 = v48;
    *(&v126 + 1) = v50;
    *&v127[0] = v52;
    BYTE8(v127[0]) = 0;
    *(v127 + 9) = *v128;
    *(&v127[1] + 9) = *&v128[16];
    *(&v127[2] + 9) = *&v128[32];
    *(&v127[3] + 1) = *(&v135 + 1);
    v54 = v111;
    v53 = v112;
    v55 = v113;
    (*(v112 + 104))(v111, enum case for PageMarginType.padding(_:), v113);
    v56 = sub_6620C(&qword_3C1A90, &qword_2EBE48);
    v57 = sub_123D20();
    v58 = v103;
    sub_2C3C28();
    (*(v53 + 8))(v54, v55);
    v129[4] = v127[1];
    v129[5] = v127[2];
    v129[6] = v127[3];
    v129[0] = v124;
    v129[1] = v125;
    v129[2] = v126;
    v129[3] = v127[0];
    sub_69198(v129, &qword_3C1A90, &qword_2EBE48);
    v60 = v104;
    v59 = v105;
    (*(v104 + 16))(v108, v58, v105);
    swift_storeEnumTagMultiPayload();
    *&v124 = v56;
    *(&v124 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    v61 = v107;
    sub_2C33C8();
    v62 = v58;
    v63 = v87;
    (*(v60 + 8))(v62, v59);
LABEL_12:
    sub_6932C(v61, v116, &qword_3C1A88, &qword_2EBE40);
    swift_storeEnumTagMultiPayload();
    sub_123C58();
    v83 = sub_718D4(&qword_3C1AC0, &unk_2F1DF0);
    v84 = sub_123DCC(&qword_3C1AC8, &qword_3C1AC0, &unk_2F1DF0, &protocol witness table for _FrameLayout);
    *&v129[0] = v83;
    *(&v129[0] + 1) = v84;
    swift_getOpaqueTypeConformance2();
    v85 = v117;
    sub_2C33C8();
    sub_6932C(v85, v122, &qword_3C1A78, &qword_2EBE38);
    swift_storeEnumTagMultiPayload();
    sub_123B60();
    sub_2C33C8();
    sub_69198(v85, &qword_3C1A78, &qword_2EBE38);
    sub_69198(v61, &qword_3C1A88, &qword_2EBE40);
    return sub_1259D4(v63, type metadata accessor for ListItemComponentModel);
  }

  v34(v28, 1, 1, v29);
  sub_69198(v28, &qword_3C1C50, &qword_2EC048);
  v64 = v119 + *(type metadata accessor for ShelfView(0) + 88);
  if (*(v64 + *(type metadata accessor for Shelf(0) + 44)))
  {
    sub_114354(v19);
    v65 = sub_2C0CC8();
    (*(v109 + 8))(v19, v110);
    sub_115130();
    sub_2C46A8();
    sub_2C2708();
    *&v132[38] = v135;
    *&v132[22] = v134;
    *&v132[6] = v133;
    *&v129[0] = v65;
    WORD4(v129[0]) = 256;
    *(v129 + 10) = *v132;
    *(&v129[1] + 10) = *&v132[16];
    *(&v129[2] + 10) = *&v132[32];
    *(&v129[3] + 1) = *(&v135 + 1);
    v66 = v90;
    sub_11F890(v90);
    v67 = v89;
    sub_2C0AD8();
    (*(v93 + 8))(v66, v94);
    v68 = sub_11528C();
    v69 = sub_2BFD48(v68 & 1);
    (*(v91 + 8))(v67, v92);
    if (v69)
    {
      sub_2C0A98();
      swift_conformsToProtocol2();
    }

    v71 = v111;
    v70 = v112;
    v72 = v113;
    (*(v112 + 104))(v111, enum case for PageMarginType.padding(_:), v113);
    v73 = sub_6620C(&qword_3C1AC0, &unk_2F1DF0);
    v74 = sub_123DCC(&qword_3C1AC8, &qword_3C1AC0, &unk_2F1DF0, &protocol witness table for _FrameLayout);
    v75 = v95;
    sub_2C3C28();
    (*(v70 + 8))(v71, v72);
    v124 = v129[0];
    v125 = v129[1];
    v126 = v129[2];
    v127[0] = v129[3];
    sub_69198(&v124, &qword_3C1AC0, &unk_2F1DF0);
    v76 = v96;
    v77 = v75;
    v78 = v118;
    (*(v96 + 16))(v116, v75, v118);
    swift_storeEnumTagMultiPayload();
    sub_123C58();
    v130 = v73;
    v131 = v74;
    swift_getOpaqueTypeConformance2();
    v79 = v117;
    sub_2C33C8();
    sub_6932C(v79, v122, &qword_3C1A78, &qword_2EBE38);
    swift_storeEnumTagMultiPayload();
    sub_123B60();
    sub_2C33C8();
    sub_69198(v79, &qword_3C1A78, &qword_2EBE38);
    return (*(v76 + 8))(v77, v78);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_123B60();
    return sub_2C33C8();
  }
}

uint64_t sub_120DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_115A40();
  v8 = v7;
  v9 = type metadata accessor for ShelfView(0);
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = (a2 + *(v9 + 88));
  if (v6 == *v10 && v8 == v10[1])
  {
  }

  else
  {
    v12 = sub_2C65B8();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      goto LABEL_12;
    }
  }

  type metadata accessor for Shelf(0);
  *&v23 = 1;
  sub_6620C(&qword_3C1938, &qword_2EBD28);
  sub_72B74(&qword_3C1940, &qword_3C1938, &qword_2EBD28, &protocol conformance descriptor for [A]);
  sub_2C5D38();
  if (v22)
  {
    sub_72084(v21, v22);
    sub_2C4CC8();
    sub_68CD0(v21);
  }

  else
  {
    sub_69198(v21, &qword_3C8330, &qword_2EBD30);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

LABEL_12:
  v13 = a3 + *(sub_6620C(&qword_3C17A8, &qword_2EB880) + 36);
  v14 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  sub_6932C(&v23, v13 + *(v14 + 36), &unk_3BDC90, &unk_2E5620);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = swift_getKeyPath();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  type metadata accessor for HostProxy(0);
  sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v15 = sub_2C2568();
  v17 = v16;
  sub_69198(&v23, &unk_3BDC90, &unk_2E5620);
  *(v13 + 48) = v15;
  *(v13 + 56) = v17 & 1;
  *(v13 + 64) = swift_getKeyPath();
  *(v13 + 104) = 0;
  v18 = *(v14 + 32);
  *(v13 + v18) = swift_getKeyPath();
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  v19 = sub_6620C(&qword_3C17A0, &qword_2EB878);
  return (*(*(v19 - 8) + 16))(a3, a1, v19);
}

uint64_t sub_1210B0@<X0>(uint64_t a1@<X8>)
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
  type metadata accessor for ShelfView(0);
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

uint64_t EnvironmentValues.shelfID.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_122B30(a1, a2, a3);
  sub_2C3108();
  return v4;
}

double sub_1217BC@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_122B30(a2, a3, a4);
  sub_2C3108();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_12180C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_122B30(a1, a2, a3);

  return sub_2C3118();
}

void *sub_1218A8()
{
  v1 = v0;
  v2 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_2BEA28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ShelfView(0);
  v13 = sub_2BE7F8();
  sub_6932C(v1 + *(v12 + 92), v4, &qword_3BDE70, &qword_2E52F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_69198(v4, &qword_3BDE70, &qword_2E52F0);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v14 = *(v6 + 16);
    v14(v8, v11, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_5BCAC(0, v13[2] + 1, 1, v13);
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_5BCAC((v15 > 1), v16 + 1, 1, v13);
    }

    v17 = *(v6 + 8);
    v17(v11, v5);
    v21 = v5;
    v22 = sub_12598C(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v23 = sub_12598C(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v18 = sub_720C8(&v20);
    v14(v18, v8, v5);
    v13[2] = v16 + 1;
    sub_9FB74(&v20, &v13[6 * v16 + 4]);
    v17(v8, v5);
  }

  return v13;
}

uint64_t sub_121BBC@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for TextComponent(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2C1D28();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeriesRoomListHeaderComponent(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ReviewsHeaderComponent(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2C0DD8();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2C1E88();
  v37 = *(v18 - 8);
  v38 = v18;
  __chkstk_darwin(v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E78();
  sub_2C0DC8();
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v21 = v12[7];
  *&v14[v21] = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v22 = &v14[v12[8]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = v12[9];
  *&v14[v23] = swift_getKeyPath();
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  *v10 = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v24 = v10 + *(v8 + 28);
  *v24 = swift_getKeyPath();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v36;
  sub_2C1D18();
  *v4 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = *(v2 + 28);
  *(v4 + v26) = swift_getKeyPath();
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  swift_storeEnumTagMultiPayload();
  v27 = sub_25E314(v20, _swiftEmptyDictionarySingleton);
  v28 = sub_25B3B8(v27);

  v29 = sub_25D084(v17, v28);

  v30 = sub_25E1A8(v29);

  v31 = sub_25DF7C(v14, v30);

  v32 = sub_25DD50(v10, v31);

  v33 = sub_25DB10(v25, v32);

  v34 = sub_25B74C(v4, v33);

  sub_1259D4(v4, type metadata accessor for TextComponent);
  (*(v41 + 8))(v25, v42);
  sub_1259D4(v10, type metadata accessor for SeriesRoomListHeaderComponent);
  sub_1259D4(v14, type metadata accessor for ReviewsHeaderComponent);
  (*(v39 + 8))(v17, v40);
  result = (*(v37 + 8))(v20, v38);
  *v43 = v34;
  return result;
}

uint64_t sub_1220F8@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v17 = sub_2C1E48();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0DD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C1E68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E58();
  sub_2C0DC8();
  sub_2C1E38();
  v12 = sub_25E794(v11, _swiftEmptyDictionarySingleton);
  v13 = sub_25B3B8(v12);

  v14 = sub_25D084(v7, v13);

  v15 = sub_25E554(v3, v14);

  (*(v1 + 8))(v3, v17);
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v18 = v15;
  return result;
}

uint64_t sub_122368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_12383C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.shelfID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_122B30(v3, v4, v5);
  sub_2C3108();
  *v6 = v6[1];
  return sub_122464;
}

void sub_122464(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_2C3118();
  }

  else
  {
    sub_2C3118();
  }

  free(v2);
}

uint64_t sub_122548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_122658()
{
  result = qword_3C17E0;
  if (!qword_3C17E0)
  {
    sub_718D4(&qword_3C1748, &qword_2EB820);
    sub_122710();
    sub_72B74(&qword_3BE858, &qword_3BE860, &qword_2E6F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17E0);
  }

  return result;
}

unint64_t sub_122710()
{
  result = qword_3C17E8;
  if (!qword_3C17E8)
  {
    sub_718D4(&qword_3C1740, &qword_2EB818);
    sub_718D4(&qword_3C8300, &qword_2E5510);
    sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
    swift_getOpaqueTypeConformance2();
    sub_718D4(&qword_3C1778, &qword_2EB850);
    sub_718D4(&qword_3C1780, &qword_2EB858);
    sub_2C4E28();
    sub_718D4(&qword_3C1788, &qword_2EB860);
    sub_718D4(&qword_3C1790, &qword_2EB868);
    sub_2C1FA8();
    sub_718D4(&qword_3C1798, &qword_2EB870);
    sub_2BED28();
    sub_718D4(&qword_3C17A0, &qword_2EB878);
    sub_718D4(&qword_3C17A8, &qword_2EB880);
    sub_718D4(&qword_3C17B0, &qword_2EB888);
    sub_72B74(&qword_3C17B8, &qword_3C17B0, &qword_2EB888, &protocol conformance descriptor for IDView<A, B>);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_118844(OpaqueTypeConformance2, v2, v3);
    sub_118898();
    swift_getOpaqueTypeConformance2();
    sub_12598C(&qword_3C17D8, &type metadata accessor for SectionExposureEvent, &protocol conformance descriptor for SectionExposureEvent);
    swift_getOpaqueTypeConformance2();
    sub_12598C(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17E8);
  }

  return result;
}

double sub_122ADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>)
{
  sub_122B30(a1, a2, a4);
  sub_2C3108();
  result = *&v6;
  *a3 = v6;
  return result;
}

unint64_t sub_122B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C17F0;
  if (!qword_3C17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17F0);
  }

  return result;
}

uint64_t sub_122BB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
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

  v14 = sub_6620C(&qword_3BEDA0, &qword_2E7560);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = sub_6620C(&qword_3C17F8, &qword_2EB940);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v18 = sub_6620C(&qword_3C1800, &qword_2EB948);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[12];
    goto LABEL_7;
  }

  v19 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[17];
    goto LABEL_7;
  }

  v20 = sub_2BE808();
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[20];
    goto LABEL_7;
  }

  v21 = type metadata accessor for Shelf(0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[22];
    goto LABEL_7;
  }

  v22 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[23];

  return v23(v24, a2, v22);
}

uint64_t sub_122F3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_6620C(&qword_3BEDA0, &qword_2E7560);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
    return result;
  }

  v17 = sub_6620C(&qword_3C17F8, &qword_2EB940);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_6620C(&qword_3C1800, &qword_2EB948);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  v19 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  v20 = sub_2BE808();
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[20];
    goto LABEL_7;
  }

  v21 = type metadata accessor for Shelf(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[22];
    goto LABEL_7;
  }

  v22 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[23];

  return v23(v24, a2, a2, v22);
}

void sub_1232B4(uint64_t a1)
{
  sub_123688(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_123688(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_123688(319, &unk_3BEE10, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_123688(319, &qword_3BDD88, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_123688(319, &qword_3C1870, &type metadata accessor for ShelfGridBreakpoint, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_9DC2C(319, &qword_3BC858, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_CEAF8(319, &qword_3C1878, &qword_3C1880, &qword_2F61C0);
              if (v7 <= 0x3F)
              {
                sub_9DC2C(319, &qword_3C1888, &type metadata for CGFloat);
                if (v8 <= 0x3F)
                {
                  sub_CEAF8(319, &qword_3BDD90, &qword_3BD200, &qword_2FA030);
                  if (v9 <= 0x3F)
                  {
                    sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0, &qword_2E5200);
                    if (v10 <= 0x3F)
                    {
                      sub_123688(319, &qword_3BDDA8, &type metadata accessor for DataStack, &type metadata accessor for Environment);
                      if (v11 <= 0x3F)
                      {
                        sub_CEAF8(319, &qword_3BDDB0, &unk_3BDDB8, &qword_2E5208);
                        if (v12 <= 0x3F)
                        {
                          sub_CEAF8(319, &qword_3C1700, &qword_3BDB00, &qword_2E6E10);
                          if (v13 <= 0x3F)
                          {
                            sub_2BE808();
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for Shelf(319);
                              if (v15 <= 0x3F)
                              {
                                sub_123688(319, &unk_3C1890, &type metadata accessor for SectionData, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
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
  }
}

void sub_123688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1237DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2B88();
  *a1 = result & 1;
  return result;
}

unint64_t sub_12383C()
{
  result = qword_3C1918;
  if (!qword_3C1918)
  {
    sub_718D4(&qword_3BDB00, &qword_2E6E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1918);
  }

  return result;
}

double sub_1238D4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_123910(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    sub_72B74(&qword_3BDFC0, &qword_3BDFC8, &qword_2E55D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1239F0()
{
  result = qword_3C1A58;
  if (!qword_3C1A58)
  {
    sub_718D4(&qword_3C1A60, &qword_2EBE30);
    sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
    sub_72B74(&qword_3BDFC0, &qword_3BDFC8, &qword_2E55D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1A58);
  }

  return result;
}

unint64_t sub_123AD4()
{
  result = qword_3C1A68;
  if (!qword_3C1A68)
  {
    sub_718D4(&qword_3C1A10, &qword_2EBDF8);
    sub_123B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1A68);
  }

  return result;
}

unint64_t sub_123B60()
{
  result = qword_3C1A70;
  if (!qword_3C1A70)
  {
    sub_718D4(&qword_3C1A78, &qword_2EBE38);
    sub_123C58();
    sub_718D4(&qword_3C1AC0, &unk_2F1DF0);
    sub_123DCC(&qword_3C1AC8, &qword_3C1AC0, &unk_2F1DF0, &protocol witness table for _FrameLayout);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1A70);
  }

  return result;
}

unint64_t sub_123C58()
{
  result = qword_3C1A80;
  if (!qword_3C1A80)
  {
    sub_718D4(&qword_3C1A88, &qword_2EBE40);
    sub_718D4(&qword_3C1A90, &qword_2EBE48);
    sub_123D20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1A80);
  }

  return result;
}

unint64_t sub_123D20()
{
  result = qword_3C1A98;
  if (!qword_3C1A98)
  {
    sub_718D4(&qword_3C1A90, &qword_2EBE48);
    sub_123DCC(&qword_3C1AA0, &qword_3C1AA8, &qword_2EBE50, &protocol witness table for _PaddingLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1A98);
  }

  return result;
}

uint64_t sub_123DCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    sub_72B74(&qword_3C1AB0, &qword_3C1AB8, &qword_2EBE58, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_123E70@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C2D48();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_123ED4()
{
  result = qword_3C1AD0;
  if (!qword_3C1AD0)
  {
    sub_718D4(&qword_3C1998, &qword_2EBD88);
    sub_718D4(&qword_3C1988, &qword_2EBD78);
    sub_72B74(&qword_3C1AD8, &qword_3C1988, &qword_2EBD78, &protocol conformance descriptor for ShelfCollage<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_718D4(&qword_3C1970, &qword_2EBD60);
    sub_72B74(&qword_3C1AE0, &qword_3C1970, &qword_2EBD60, &protocol conformance descriptor for ShelfCollage2<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1AD0);
  }

  return result;
}

unint64_t sub_124034()
{
  result = qword_3C1AE8;
  if (!qword_3C1AE8)
  {
    sub_718D4(&qword_3C1950, &qword_2EBD40);
    type metadata accessor for Shelf(255);
    sub_718D4(&qword_3C1A08, &qword_2EBDF0);
    sub_718D4(&qword_3C1A10, &qword_2EBDF8);
    sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    sub_718D4(&qword_3C1A18, &qword_2EBE00);
    sub_718D4(&qword_3C1A20, &qword_2EBE08);
    sub_718D4(&qword_3C1A28, &qword_2EBE10);
    sub_718D4(&qword_3C1A30, &qword_2EBE18);
    sub_718D4(&qword_3C1A38, &qword_2EBE20);
    sub_123910(&qword_3C1A40, &qword_3C1A38, &qword_2EBE20, sub_1239C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_123AD4();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1AF0, &qword_3C1AF8, &qword_2EBE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1AE8);
  }

  return result;
}

unint64_t sub_124310()
{
  result = qword_3C1B00;
  if (!qword_3C1B00)
  {
    sub_718D4(&qword_3C19D0, &qword_2EBDC0);
    sub_12439C();
    sub_1245E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B00);
  }

  return result;
}

unint64_t sub_12439C()
{
  result = qword_3C1B08;
  if (!qword_3C1B08)
  {
    sub_718D4(&qword_3C19F8, &qword_2EBDE8);
    sub_124428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B08);
  }

  return result;
}

unint64_t sub_124428()
{
  result = qword_3C1B10;
  if (!qword_3C1B10)
  {
    sub_718D4(&qword_3C19F0, &qword_2EBDE0);
    sub_1244B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B10);
  }

  return result;
}

unint64_t sub_1244B4()
{
  result = qword_3C1B18;
  if (!qword_3C1B18)
  {
    sub_718D4(&qword_3C19E8, &qword_2EBDD8);
    sub_718D4(&qword_3C19D8, &qword_2EBDC8);
    sub_718D4(&qword_3C8300, &qword_2E5510);
    sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B18);
  }

  return result;
}

unint64_t sub_1245E8()
{
  result = qword_3C1B20;
  if (!qword_3C1B20)
  {
    sub_718D4(&qword_3C19B8, &qword_2EBDA8);
    sub_718D4(&qword_3C19B0, &qword_2EBDA0);
    sub_718D4(&qword_3C19A8, &qword_2EBD98);
    sub_2C28A8();
    sub_718D4(&qword_3C19A0, &qword_2EBD90);
    sub_72B74(&qword_3C1B28, &qword_3C19A0, &qword_2EBD90, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B20);
  }

  return result;
}

unint64_t sub_1247B0()
{
  result = qword_3C1B40;
  if (!qword_3C1B40)
  {
    sub_718D4(&qword_3C1960, &qword_2EBD50);
    sub_123ED4();
    sub_124034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B40);
  }

  return result;
}

uint64_t sub_124854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1248E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ShelfView(0);

  return sub_11D290(a1, a2);
}

unint64_t sub_124970()
{
  result = qword_3C1B90;
  if (!qword_3C1B90)
  {
    sub_718D4(&qword_3C1B88, &qword_2EBED0);
    sub_1249F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B90);
  }

  return result;
}

unint64_t sub_1249F4()
{
  result = qword_3C1B98;
  if (!qword_3C1B98)
  {
    sub_718D4(&qword_3C1BA0, &qword_2EBED8);
    sub_718D4(&qword_3C1BA8, &qword_2EBEE0);
    sub_124AE8();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1BE0, &qword_3C1BE8, &qword_2EBF08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1B98);
  }

  return result;
}

unint64_t sub_124AE8()
{
  result = qword_3C1BB0;
  if (!qword_3C1BB0)
  {
    sub_718D4(&qword_3C1BA8, &qword_2EBEE0);
    sub_718D4(&qword_3C1BB8, &qword_2EBEE8);
    sub_718D4(&qword_3C1BC0, &qword_2EBEF0);
    sub_718D4(&qword_3C1BC8, &qword_2EBEF8);
    sub_718D4(&qword_3C1A60, &qword_2EBE30);
    sub_1239F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1BD0, &qword_3C1BD8, &qword_2EBF00, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1BB0);
  }

  return result;
}

uint64_t sub_124CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_124D18()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfView(0);
  v3 = *(*(v2 - 1) + 80);
  v65 = *(*(v2 - 1) + 64);
  v66 = (v3 + 16) & ~v3;
  v4 = v0 + v66;
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C0C98();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  v6 = v2[5];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C0D48();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = v2[6];
  sub_6620C(&qword_3BECA0, &qword_2E74E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2C29C8();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  v10 = v4 + v2[8];
  v11 = sub_2C14C8();
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_6620C(&qword_3C17F8, &qword_2EB940);

  sub_71AF4(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  sub_71AF4(*(v4 + v2[10]), *(v4 + v2[10] + 8));
  sub_71AF4(*(v4 + v2[11]), *(v4 + v2[11] + 8));
  v12 = v2[12];
  sub_6620C(&qword_3C1910, &qword_2EBB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C1A68();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v4 + v12, 1, v13))
    {
      (*(v14 + 8))(v4 + v12, v13);
    }
  }

  else
  {
  }

  sub_71AF4(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  sub_71AF4(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  v15 = v4 + v2[15];
  if (*(v15 + 40))
  {
    sub_68CD0(v15);
  }

  else
  {
  }

  sub_9E94C(*(v4 + v2[16]), *(v4 + v2[16] + 8));
  v16 = v2[17];
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2BF0B8();
    (*(*(v17 - 8) + 8))(v4 + v16, v17);
  }

  else
  {
  }

  v18 = v4 + v2[18];
  if (*(v18 + 40))
  {
    if (*(v18 + 24))
    {
      sub_68CD0(v18);
    }
  }

  else
  {
  }

  sub_113C80(*(v4 + v2[19]), *(v4 + v2[19] + 8), *(v4 + v2[19] + 16));
  v19 = v2[20];
  v20 = sub_2BE808();
  (*(*(v20 - 8) + 8))(v4 + v19, v20);
  sub_1238D4(*(v4 + v2[21]), *(v4 + v2[21] + 8), *(v4 + v2[21] + 9));
  v21 = v4 + v2[22];

  v22 = type metadata accessor for Shelf(0);
  v23 = v22[6];
  v24 = sub_2C0AF8();
  (*(*(v24 - 8) + 8))(v21 + v23, v24);
  v25 = v22[8];
  v26 = sub_2C5018();
  v27 = *(v26 - 8);
  v64 = *(v27 + 48);
  if (!v64(v21 + v25, 1, v26))
  {
    (*(v27 + 8))(v21 + v25, v26);
  }

  v63 = v27;
  v28 = v22[9];
  v29 = sub_2C22F8();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v21 + v28, 1, v29))
  {
    (*(v30 + 8))(v21 + v28, v29);
  }

  sub_68CD0((v21 + v22[10]));
  v31 = v22[12];
  v32 = sub_2BFE68();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v21 + v31, 1, v32))
  {
    (*(v33 + 8))(v21 + v31, v32);
  }

  v34 = v22[13];
  v35 = sub_2C1B98();
  (*(*(v35 - 8) + 8))(v21 + v34, v35);
  v36 = v22[14];
  v37 = sub_2C1D08();
  (*(*(v37 - 8) + 8))(v21 + v36, v37);
  v38 = v22[15];
  v39 = sub_2C1CB8();
  (*(*(v39 - 8) + 8))(v21 + v38, v39);
  v40 = v21 + v22[16];
  v41 = type metadata accessor for ContentUnavailableComponentModel(0);
  if (!(*(*(v41 - 1) + 48))(v40, 1, v41))
  {
    v60 = v26;
    v61 = v3;
    v62 = v1;

    v42 = v41[5];
    v43 = sub_2BFDD8();
    v44 = *(v43 - 8);
    v59 = *(v44 + 8);
    v59(v40 + v42, v43);
    v45 = v41[6];
    if (!(*(v44 + 48))(v40 + v45, 1, v43))
    {
      v59(v40 + v45, v43);
    }

    v46 = v41[9];
    v47 = sub_2C1DC8();
    (*(*(v47 - 8) + 8))(v40 + v46, v47);
    sub_68CD0((v40 + v41[10]));
    v48 = v41[11];
    v3 = v61;
    v1 = v62;
    if (!v64(v40 + v48, 1, v60))
    {
      (*(v63 + 8))(v40 + v48, v60);
    }
  }

  v49 = v22[18];
  v50 = sub_2C0E58();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v21 + v49, 1, v50))
  {
    (*(v51 + 8))(v21 + v49, v50);
  }

  v52 = (v21 + v22[19]);
  if (v52[3])
  {
    sub_68CD0(v52);
  }

  v53 = v22[20];
  v54 = sub_2BEA28();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (!v56(v21 + v53, 1, v54))
  {
    (*(v55 + 8))(v21 + v53, v54);
  }

  v57 = v2[23];
  if (!v56(v4 + v57, 1, v54))
  {
    (*(v55 + 8))(v4 + v57, v54);
  }

  return _swift_deallocObject(v1, v66 + v65, v3 | 7);
}

double sub_125768@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ShelfView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_11C4F4(a1, a2, v8, a3);
}

uint64_t sub_1257F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_125868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1258D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2CA8();
  *a1 = result;
  return result;
}

uint64_t sub_125924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2CE8();
  *a1 = result;
  return result;
}

uint64_t sub_12598C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1259D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_125A4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  *a6 = a1;
  a6[4] = a4;
  a6[5] = a5;
  v17 = sub_720C8(a6 + 1);
  (*(v12 + 16))(v17, v15, a4);
  if (a2)
  {

    sub_77E84(a2, a3);
    v18 = a2(a1, v15);
    v20 = v19;

    sub_77BDC(a2, a3);
    sub_77BDC(a2, a3);
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  result = (*(v12 + 8))(v15, a4);
  a6[6] = v18;
  a6[7] = v20;
  return result;
}

void *RootHostingController.DependencyInjectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v3 - 8);
  v47 = &v42 - v4;
  v46 = sub_6620C(&qword_3C1C90, &qword_2EC1A8);
  __chkstk_darwin(v46);
  v6 = &v42 - v5;
  v45 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C1C98, &qword_2EC1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_6620C(&qword_3C1CA0, &qword_2EC1B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_6620C(&qword_3C1CA8, &qword_2EC1C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = sub_6620C(&qword_3C1CB0, &qword_2EC1C8);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  v22 = sub_72084(v2 + 1, v2[4]);
  v23 = __chkstk_darwin(v22);
  (*(v25 + 16))(&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = sub_2C44B8();
  v27 = *v2;
  sub_12616C(v26, v11);

  sub_126534(v27, v14);
  sub_69198(v11, &qword_3C1C98, &qword_2EC1B0);
  sub_1269EC(v17);
  sub_69198(v14, &qword_3C1CA0, &qword_2EC1B8);
  sub_2C4DB8();
  KeyPath = swift_getKeyPath();
  v29 = *v8;
  sub_6932C(v17, v6, &qword_3C1CA8, &qword_2EC1C0);
  v30 = v46;
  v31 = v47;
  v32 = &v6[*(v46 + 36)];
  *v32 = KeyPath;
  v32[8] = v29;
  sub_2C3838();
  v33 = sub_1271FC();
  sub_2C3E08();
  sub_69198(v31, &qword_3BCB28, &qword_2E3B60);
  sub_69198(v6, &qword_3C1C90, &qword_2EC1A8);
  sub_E060C(v8);
  sub_69198(v17, &qword_3C1CA8, &qword_2EC1C0);
  v50 = v30;
  v51 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v43;
  sub_2C3B98();
  (*(v44 + 8))(v21, v35);
  v36 = v34 + *(sub_6620C(&qword_3C1DC8, &qword_2EC2A8) + 36);
  v37 = [objc_opt_self() defaultCenter];
  v38 = sub_2C5888();
  sub_2C5EB8();

  v39 = v36 + *(type metadata accessor for ObserveReachabilityViewModifier(0) + 20);
  v49 = [objc_opt_self() isOffline] ^ 1;
  result = sub_2C4368();
  v41 = v51;
  *v39 = v50;
  *(v39 + 8) = v41;
  return result;
}

uint64_t sub_12616C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v4 = sub_6620C(&qword_3C1D70, &qword_2EC268);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_6620C(&qword_3C1D68, &qword_2EC260);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v32[5] = a2;
  sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  sub_2C4DB8();
  v12 = sub_2C09A8();
  sub_2C4DB8();
  v13 = v28;
  v30 = v12;
  v31 = sub_128824(&qword_3C1E20, &type metadata accessor for GeometryCache, &protocol conformance descriptor for GeometryCache);
  v25 = v13;
  v28 = v13;

  sub_2C3D68();
  sub_68CD0(&v28);
  v28 = &type metadata for AnyView;
  v29 = &protocol witness table for AnyView;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3DB8();
  (*(v5 + 8))(v7, v4);
  v28 = v4;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = v26;
  sub_2C3CA8();
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  v27 = 0;
  sub_2C4368();
  LOBYTE(v9) = v28;
  v17 = v29;
  v18 = v15 + *(sub_6620C(&qword_3C1D60, &qword_2EC258) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  *(v18 + 16) = v9;
  *(v18 + 24) = v17;
  sub_2C4DB8();
  LOBYTE(v9) = v28;
  v19 = swift_getKeyPath();
  v20 = v15 + *(sub_6620C(&qword_3C1D50, &qword_2EC250) + 36);
  *v20 = v19;
  *(v20 + 8) = v9;
  v21 = swift_getKeyPath();
  sub_2BEED8();
  sub_2C4DB8();

  sub_68CD0(v32);
  v22 = v28;
  result = sub_6620C(&qword_3C1C98, &qword_2EC1B0);
  v24 = (v15 + *(result + 36));
  *v24 = v21;
  v24[1] = v22;
  return result;
}

uint64_t sub_126534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = sub_6620C(&qword_3C1D38, &qword_2EC248);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v25 - v3;
  v5 = sub_6620C(&qword_3C1D30, &qword_2EC240);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v31 = sub_6620C(&qword_3C1D28, &qword_2EC238);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v25 - v8;
  v33 = sub_6620C(&qword_3C1E18, &unk_2EC570);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v26 = &v25 - v10;
  sub_2C4DB8();
  if (v35 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v11 = sub_6620C(&qword_3C1C98, &qword_2EC1B0);
  v12 = sub_2C4E28();
  v13 = sub_12796C();
  sub_2C3AC8();

  v35 = v11;
  v36 = v12;
  v37 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v32;
  sub_2C3B58();
  (*(v29 + 8))(v4, v15);
  v35 = v15;
  v36 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  sub_2C3AE8();
  (*(v28 + 8))(v7, v5);
  v35 = v5;
  v36 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v26;
  v18 = v31;
  sub_2C3D18();
  (*(v27 + 8))(v9, v18);
  type metadata accessor for HostProxy(0);
  sub_128824(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v19 = sub_2C2568();
  v21 = v20;
  v22 = v34;
  (*(v30 + 32))(v34, v17, v33);
  v23 = v22 + *(sub_6620C(&qword_3C1CA0, &qword_2EC1B8) + 36);
  *v23 = v19;
  *(v23 + 8) = v21 & 1;
  *(v23 + 16) = a1;
}

void *sub_1269EC@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v4 = sub_6620C(&qword_3C1D18, &qword_2EC230);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = sub_6620C(&qword_3C1D00, &qword_2EC228);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v50 = sub_6620C(&qword_3C1CF8, &qword_2EC220);
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v44 - v11;
  v49 = sub_6620C(&qword_3C1CE8, &qword_2EC218);
  __chkstk_darwin(v49);
  v14 = &v44 - v13;
  v52 = sub_6620C(&qword_3C1CE0, &qword_2EC210);
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - v15;
  v51 = sub_6620C(&qword_3C1CD8, &qword_2EC208);
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v44 = &v44 - v16;
  KeyPath = swift_getKeyPath();
  sub_6620C(&qword_3BF730, &unk_2E8940);
  v18 = &v7[*(v5 + 44)];
  sub_2C4E28();
  sub_2C5668();
  *v18 = KeyPath;
  sub_6932C(v3, v7, &qword_3C1CA0, &qword_2EC1B8);
  sub_6620C(&qword_3BCE30, qword_2E3D60);
  sub_2C4DB8();
  type metadata accessor for NavigationProvider();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_6932C(v7, v10, &qword_3C1D18, &qword_2EC230);
  v22 = &v10[*(v8 + 36)];
  *v22 = v20;
  v22[1] = sub_12869C;
  v22[2] = v21;
  sub_69198(v7, &qword_3C1D18, &qword_2EC230);
  v23 = sub_127660();
  sub_2C3BE8();
  sub_69198(v10, &qword_3C1D00, &qword_2EC228);
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();

  v54 = v8;
  v55 = v23;
  swift_getOpaqueTypeConformance2();
  sub_128824(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v24 = v50;
  sub_2C3E68();

  v25 = swift_getKeyPath();
  v26 = sub_C160C();

  (*(v46 + 8))(v12, v24);
  v27 = v49;
  v28 = &v14[*(v49 + 36)];
  *v28 = v25;
  v28[8] = v26 & 1;
  v29 = sub_1274E0();
  v30 = v45;
  sub_2C3C88();
  sub_69198(v14, &qword_3C1CE8, &qword_2EC218);
  v54 = v27;
  v55 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v52;
  sub_2C3C58();
  (*(v48 + 8))(v30, v33);
  v54 = v33;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v53;
  v35 = v51;
  sub_2C3CC8();
  (*(v47 + 8))(v32, v35);
  v36 = swift_getKeyPath();
  v37 = sub_2C4DB8();
  v56 = &type metadata for ConvertRectFromGlobalHandler;
  v57 = sub_128758(v37, v38, v39);
  v40 = (v34 + *(sub_6620C(&qword_3C1CD0, &qword_2EC200) + 36));
  sub_1287AC(&v54, (v40 + 1));
  *v40 = v36;
  sub_69198(&v54, &qword_3C1E10, &qword_2EC530);
  v41 = swift_getKeyPath();
  v42 = (v34 + *(sub_6620C(&qword_3C1CA8, &qword_2EC1C0) + 36));
  sub_6620C(&qword_3BD200, &qword_2FA030);
  result = sub_2C4DB8();
  *v42 = v41;
  return result;
}

uint64_t sub_12714C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_12717C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E48();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1271FC()
{
  result = qword_3C1CB8;
  if (!qword_3C1CB8)
  {
    sub_718D4(&qword_3C1C90, &qword_2EC1A8);
    sub_1272B4();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1CB8);
  }

  return result;
}

unint64_t sub_1272B4()
{
  result = qword_3C1CC0;
  if (!qword_3C1CC0)
  {
    sub_718D4(&qword_3C1CA8, &qword_2EC1C0);
    sub_12736C();
    sub_72B74(&qword_3C1DB8, &qword_3C1DC0, &qword_2EC2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1CC0);
  }

  return result;
}

unint64_t sub_12736C()
{
  result = qword_3C1CC8;
  if (!qword_3C1CC8)
  {
    sub_718D4(&qword_3C1CD0, &qword_2EC200);
    sub_718D4(&qword_3C1CD8, &qword_2EC208);
    sub_718D4(&qword_3C1CE0, &qword_2EC210);
    sub_718D4(&qword_3C1CE8, &qword_2EC218);
    sub_1274E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1DA8, &qword_3C1DB0, &qword_2EC298, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1CC8);
  }

  return result;
}

unint64_t sub_1274E0()
{
  result = qword_3C1CF0;
  if (!qword_3C1CF0)
  {
    sub_718D4(&qword_3C1CE8, &qword_2EC218);
    sub_718D4(&qword_3C1CF8, &qword_2EC220);
    type metadata accessor for HostProxy(255);
    sub_718D4(&qword_3C1D00, &qword_2EC228);
    sub_127660();
    swift_getOpaqueTypeConformance2();
    sub_128824(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1B30, &qword_3C1B38, &qword_2EC290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1CF0);
  }

  return result;
}

unint64_t sub_127660()
{
  result = qword_3C1D08;
  if (!qword_3C1D08)
  {
    sub_718D4(&qword_3C1D00, &qword_2EC228);
    sub_127718();
    sub_72B74(&qword_3C0448, &qword_3C0440, &unk_2E9E80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D08);
  }

  return result;
}

unint64_t sub_127718()
{
  result = qword_3C1D10;
  if (!qword_3C1D10)
  {
    sub_718D4(&qword_3C1D18, &qword_2EC230);
    sub_1277D0();
    sub_72B74(&qword_3C0438, &qword_3C0430, &unk_2EC280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D10);
  }

  return result;
}

unint64_t sub_1277D0()
{
  result = qword_3C1D20;
  if (!qword_3C1D20)
  {
    sub_718D4(&qword_3C1CA0, &qword_2EC1B8);
    sub_718D4(&qword_3C1D28, &qword_2EC238);
    sub_718D4(&qword_3C1D30, &qword_2EC240);
    sub_718D4(&qword_3C1D38, &qword_2EC248);
    sub_718D4(&qword_3C1C98, &qword_2EC1B0);
    sub_2C4E28();
    sub_12796C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_127C6C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D20);
  }

  return result;
}

unint64_t sub_12796C()
{
  result = qword_3C1D40;
  if (!qword_3C1D40)
  {
    sub_718D4(&qword_3C1C98, &qword_2EC1B0);
    sub_127A24();
    sub_72B74(&qword_3C1D90, &qword_3C1D98, &qword_2EC278, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D40);
  }

  return result;
}

unint64_t sub_127A24()
{
  result = qword_3C1D48;
  if (!qword_3C1D48)
  {
    sub_718D4(&qword_3C1D50, &qword_2EC250);
    sub_127ADC();
    sub_72B74(&qword_3C1D80, &qword_3C1D88, &qword_2EC270, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D48);
  }

  return result;
}

unint64_t sub_127ADC()
{
  result = qword_3C1D58;
  if (!qword_3C1D58)
  {
    sub_718D4(&qword_3C1D60, &qword_2EC258);
    sub_718D4(&qword_3C1D68, &qword_2EC260);
    sub_718D4(&qword_3C1D70, &qword_2EC268);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_127C18(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D58);
  }

  return result;
}

unint64_t sub_127C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1D78;
  if (!qword_3C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D78);
  }

  return result;
}

unint64_t sub_127C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1DA0;
  if (!qword_3C1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1DA0);
  }

  return result;
}

__n128 sub_127CF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_127D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_127D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_127DB0()
{
  result = qword_3C1DD0;
  if (!qword_3C1DD0)
  {
    sub_718D4(&qword_3C1DC8, &qword_2EC2A8);
    sub_718D4(&qword_3C1CB0, &qword_2EC1C8);
    sub_718D4(&qword_3C1C90, &qword_2EC1A8);
    sub_1271FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_128824(&qword_3C1DD8, type metadata accessor for ObserveReachabilityViewModifier, &unk_2FB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1DD0);
  }

  return result;
}

uint64_t sub_127EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_127F40(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_127FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X8>)
{
  v9 = sub_6620C(&qword_3C1DE0, &qword_2EC460);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_6620C(&qword_3C1DE8, &qword_2EC468);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = sub_1282B4(a2, a3 & 1);
  if (v16)
  {
    v17 = v16;
    v18 = sub_6620C(&qword_3C1DF0, &qword_2EC470);
    v24 = a5;
    v19 = v18;
    v20 = sub_72B74(&qword_3C1DF8, &qword_3C1DF0, &qword_2EC470, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_2C3AB8();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    v25 = v19;
    v26 = v20;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v22 = sub_6620C(&qword_3C1DF0, &qword_2EC470);
    (*(*(v22 - 8) + 16))(v11, a1, v22);
    swift_storeEnumTagMultiPayload();
    v23 = sub_72B74(&qword_3C1DF8, &qword_3C1DF0, &qword_2EC470, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v25 = v22;
    v26 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_2C33C8();
  }
}

id sub_1282B4(uint64_t a1, char a2)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong bc_windowForViewControllerWithFallbackToKeyWindow:0], v9, v10) && (v11 = objc_msgSend(v10, "windowScene"), v10, v11))
  {
    v12 = [v11 session];

    if (v12)
    {
      return v12;
    }
  }

  else
  {
  }

  if (qword_3BB788 != -1)
  {
    swift_once();
  }

  v14 = sub_2C00B8();
  sub_57AD8(v14, qword_3C2F48);
  v15 = sub_2C0098();
  v16 = sub_2C5DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "RootHostingController does not have a UISceneSession when rendering DependencyInjectionView", v17, 2u);
  }

  sub_6620C(&qword_3C1E00, &qword_2EC478);
  sub_2C4DB8();
  v18 = v25;
  v19 = v26;
  sub_72084(v24, v25);
  v20 = (*(v19 + 8))(v18, v19);
  sub_68CD0(v24);
  if (v20)
  {
    return v20;
  }

  v21 = sub_2C0098();
  v22 = sub_2C5DD8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Could not find a fallback UISceneSession", v23, 2u);
  }

  return 0;
}

uint64_t sub_128664()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1286A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2B98();
  *a1 = result & 1;
  return result;
}

unint64_t sub_128758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1E08;
  if (!qword_3C1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1E08);
  }

  return result;
}

uint64_t sub_1287AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C1E10, &qword_2EC530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_128824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_128880()
{
  result = qword_3C1E28;
  if (!qword_3C1E28)
  {
    sub_718D4(&qword_3C1E30, &qword_2EC5D8);
    sub_718D4(&qword_3C1DF0, &qword_2EC470);
    sub_72B74(&qword_3C1DF8, &qword_3C1DF0, &qword_2EC470, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1E28);
  }

  return result;
}

uint64_t PageContent.initialPage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PageContent.PageInfo(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_6932C(&v5[*(v3 + 28)], a1, &qword_3BEF88, &unk_2E7D40);
  return sub_12D8F4(v5, type metadata accessor for PageContent.PageInfo);
}

uint64_t PageContent.init(pageIntent:initialPage:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v4 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for PageAlert(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PageContent(0);
  v14 = sub_2C0368();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  sub_69198(v12, &qword_3C1E38, &unk_2EC5F0);
  v15(v12, 1, 1, v14);
  sub_12EF48(v12, v9, type metadata accessor for PageAlert);
  sub_2C4368();
  sub_12D8F4(v12, type metadata accessor for PageAlert);
  v16 = a3 + *(v13 + 24);
  type metadata accessor for HostProxy(0);
  sub_131614(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  *v16 = sub_2C2568();
  *(v16 + 8) = v17 & 1;
  v18 = v25;
  sub_691F8(v25, a3);
  v19 = v26;
  sub_6932C(v26, v6, &qword_3BEF88, &unk_2E7D40);
  v20 = type metadata accessor for PageContent.PageInfo(0);
  v21 = v20[5];
  v22 = type metadata accessor for Page(0);
  v23 = *(*(v22 - 8) + 56);
  v23(a3 + v21, 1, 1, v22);
  v23(a3 + v20[6], 1, 1, v22);
  v23(a3 + v20[7], 1, 1, v22);
  *(a3 + v20[8]) = 0;
  sub_2BFC78();
  sub_69198(v19, &qword_3BEF88, &unk_2E7D40);
  sub_68CD0(v18);
  v23(a3 + v20[10], 1, 1, v22);
  sub_12D954(v6, a3 + v21);
  result = sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  *(a3 + *(result + 28)) = 0;
  return result;
}

uint64_t PageContent.contentType.getter@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v23 = sub_6620C(&qword_3C0C30, &qword_2EC600);
  __chkstk_darwin(v23);
  v22 = &v22 - v5;
  v6 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_12BAAC(v8);
  sub_12D8F4(v14, type metadata accessor for PageContent.PageInfo);
  v15 = type metadata accessor for Page(0);
  v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_69198(v8, &qword_3BEF88, &unk_2E7D40);
  if (v16 == 1 || (v17 = sub_12D9E4(), swift_getKeyPath(), v25 = v17, sub_131614(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy), sub_2BE6F8(), , swift_beginAccess(), v18 = *(v17 + 56), , (v18 & 1) != 0))
  {
    sub_2C4378();
    (*(v2 + 16))(v4, &v11[*(v9 + 36)], v1);
    sub_12D8F4(v11, type metadata accessor for PageContent.PageInfo);
    v19 = sub_2BFC88();
    (*(v2 + 8))(v4, v1);
    if (v19)
    {
      *v24 = v19;
    }

    type metadata accessor for PageContent.ContentType(0);
  }

  else
  {
    v20 = v22;
    sub_2C4398();
    swift_getKeyPath();
    sub_2C44E8();

    sub_69198(v20, &qword_3C0C30, &qword_2EC600);
    type metadata accessor for PageContent.ContentType(0);
  }

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall PageContent.refresh(resetToLoading:)(Swift::Bool resetToLoading)
{
  v2 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v2);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_6620C(&qword_3C09E8, &qword_2EA650);
  sub_2BFC58(resetToLoading);
  sub_12AC84();
  sub_2C4388();
}

uint64_t View.dispatch(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v20[1] = a3;
  v21 = a1;
  v20[0] = sub_2C4478();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C0C30, &qword_2EC600);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = sub_6620C(&qword_3C0C38, &qword_2EA820);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v15 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v15 - 8);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_691F8(v17, v23);
  sub_12D8F4(v17, type metadata accessor for PageContent.PageInfo);
  sub_2C4398();
  swift_getKeyPath();
  sub_2C44E8();

  sub_69198(v8, &qword_3C0C30, &qword_2EC600);
  sub_2C4468();
  sub_2C46F8();
  (*(v3 + 8))(v5, v20[0]);
  sub_2C4518();

  sub_69198(v11, &qword_3C0C38, &qword_2EA820);
  v18 = type metadata accessor for Page(0);
  sub_12ED70(v23, v14, v21, v18, v22);
  sub_69198(v14, &qword_3C0C38, &qword_2EA820);
  return sub_68CD0(v23);
}

uint64_t PageContent.dispatchState.getter()
{
  v0 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = type metadata accessor for PageContent.PageInfo(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  (*(v1 + 16))(v3, &v7[*(v5 + 44)], v0);
  sub_12D8F4(v7, type metadata accessor for PageContent.PageInfo);
  sub_2BFC48();
  return (*(v1 + 8))(v3, v0);
}

uint64_t PageContent.isLoadingNewPageIntent.getter()
{
  v0 = type metadata accessor for PageContent.PageInfo(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  v4 = v3[*(v1 + 40)];
  sub_12D8F4(v3, type metadata accessor for PageContent.PageInfo);
  return v4;
}

void PageContent.update(with:animated:)(uint64_t a1, int a2)
{
  v125 = a2;
  v3 = sub_2C3698();
  v123 = *(v3 - 8);
  __chkstk_darwin(v3);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2C4478();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v6 - 8);
  v137 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v110 - v9;
  v133 = type metadata accessor for PageContent(0);
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v138 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v124 = &v110 - v12;
  __chkstk_darwin(v13);
  v118 = &v110 - v14;
  __chkstk_darwin(v15);
  v117 = &v110 - v16;
  __chkstk_darwin(v17);
  v135 = &v110 - v18;
  v132 = v19;
  __chkstk_darwin(v20);
  v127 = &v110 - v21;
  v22 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v22);
  v136 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v128 = &v110 - v25;
  __chkstk_darwin(v26);
  v28 = (&v110 - v27);
  v29 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v126 = (&v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = (&v110 - v33);
  __chkstk_darwin(v35);
  v37 = (&v110 - v36);
  v39 = __chkstk_darwin(v38);
  v41 = (&v110 - v40);
  v42 = *(v30 + 16);
  v134 = a1;
  v155 = v42;
  v141 = v30 + 16;
  (v42)(&v110 - v40, a1, v29, v39);
  v143 = *(v30 + 88);
  v43 = v143(v41, v29);
  LODWORD(v142) = enum case for PageUpdateInstruction.replacePage<A, B>(_:);
  if (v43 == enum case for PageUpdateInstruction.replacePage<A, B>(_:))
  {
    (*(v30 + 96))(v41, v29);
    sub_68D1C(v41, &v152);
    sub_691F8(&v152, &v149);
    sub_6620C(&qword_3BEF90, &unk_2EC5E0);
    sub_2C4378();
    sub_68CD0(v28);
    sub_68D1C(&v149, v28);
    *(v28 + *(v22 + 32)) = 1;
    sub_2C4388();
    goto LABEL_26;
  }

  v130 = v30;
  v113 = v28;
  v114 = v22;
  v116 = v3;
  if (v43 == enum case for PageUpdateInstruction.compound<A, B>(_:))
  {
    v44 = v130;
    v45 = v130 + 96;
    v111 = *(v130 + 96);
    v111(v41, v29);
    v46 = *v41;
    v47 = *(*v41 + 16);
    v112 = v45;
    v48 = (v45 - 88);
    v115 = v46;
    if (v47)
    {
      v49 = 0;
      v50 = v46 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v51 = *(v44 + 72);
      while (1)
      {
        v52 = v47;
        v155(v37, v50, v29);
        v53 = v143(v37, v29);
        if (v53 == v142)
        {
          break;
        }

        (*v48)(v37, v29);
        ++v49;
        v50 += v51;
        v47 = v52;
        if (v52 == v49)
        {
          v49 = v52;
          goto LABEL_18;
        }
      }

      v111(v37, v29);
      sub_68D1C(v37, &v149);
      if (*(&v150 + 1))
      {
        sub_68CD0(&v149);
      }

LABEL_18:
      v46 = v115;
      v44 = v130;
    }

    else
    {
      v49 = 0;
    }

    v66 = *(v46 + 16);
    if (v49 == v66)
    {
      v154 = 0;
      v152 = 0u;
      v153 = 0u;

      v55 = v140;
      v54 = v139;
      v56 = v138;
      v57 = v137;
      if (*(&v153 + 1))
      {
        goto LABEL_21;
      }

      goto LABEL_48;
    }

    if (!v66)
    {
      __break(1u);
      goto LABEL_59;
    }

    v79 = v66 - 1;
    v80 = *(v44 + 72);
    v81 = v46 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v80 * (v66 - 1);
    v82 = -v80;
    while (1)
    {
      v155(v34, v81, v29);
      v83 = v143(v34, v29);
      if (v83 == v142)
      {
        break;
      }

      (*v48)(v34, v29);
      --v79;
      v81 += v82;
      if (v79 >= v66)
      {
        __break(1u);
        break;
      }
    }

    v111(v34, v29);
    sub_68D1C(v34, &v149);
    if (*(&v150 + 1))
    {
      sub_68CD0(&v149);
    }

    v84 = v126;
    v155(v126, v81, v29);
    v85 = v143(v84, v29);
    v54 = v139;
    if (v85 == v142)
    {
      v111(v84, v29);
      sub_68D1C(v84, &v149);
      v55 = v140;
      v56 = v138;
      v57 = v137;
      if (*(&v150 + 1))
      {
        sub_691F8(&v149, &v146);
        goto LABEL_44;
      }
    }

    else
    {
      (*v48)(v84, v29);
      v151 = 0;
      v149 = 0u;
      v150 = 0u;
      v55 = v140;
      v56 = v138;
      v57 = v137;
    }

    v146 = v149;
    v147 = v150;
    v148 = v151;
LABEL_44:
    if (*(&v147 + 1))
    {
      sub_68D1C(&v146, &v152);
      if (*(&v150 + 1))
      {
        sub_68CD0(&v149);
      }

      if (*(&v153 + 1))
      {
LABEL_21:
        sub_691F8(&v152, &v146);
        if (*(&v147 + 1))
        {
          sub_68D1C(&v146, &v149);
          v67 = v127;
          sub_12EF48(v54, v127, type metadata accessor for PageContent);
          sub_691F8(&v149, &v146);
          sub_12EF48(v67, v135, type metadata accessor for PageContent);
          sub_691F8(&v146, &v145);
          v68 = (*(v131 + 80) + 16) & ~*(v131 + 80);
          v69 = (v132 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = swift_allocObject();
          v143 = v68;
          sub_12EFB4(v67, v70 + v68, type metadata accessor for PageContent);
          v155 = v69;
          sub_68D1C(&v146, v70 + v69);
          v71 = type metadata accessor for Page(0);
          v72 = swift_allocBox();
          v74 = v73;
          v75 = sub_6620C(&qword_3BEF90, &unk_2EC5E0);
          v76 = v128;
          v142 = v75;
          sub_2C4378();
          v77 = v129;
          sub_12BAAC(v129);
          v78 = v77;
          sub_12D8F4(v76, type metadata accessor for PageContent.PageInfo);
          if ((*(*(v71 - 8) + 48))(v77, 1, v71) == 1)
          {
            sub_69198(v77, &qword_3BEF88, &unk_2E7D40);
            swift_deallocBox();
          }

          else
          {
            v86 = v72;
            sub_12EFB4(v78, v74, type metadata accessor for Page);
            type metadata accessor for PageAlert(0);
            v87 = swift_allocBox();
            v88 = v54;
            v90 = v89;
            sub_6620C(&qword_3C0B28, &qword_2EC690);
            sub_2C4378();
            v91 = v140;
            sub_12DDB4(v74, v90, v134);
            v140 = v91;
            if (v91)
            {

              sub_12D8F4(v135, type metadata accessor for PageContent);
              sub_68CD0(&v145);
              sub_68CD0(&v149);
              if (*(&v153 + 1))
              {
                goto LABEL_26;
              }

              return;
            }

            v100 = v117;
            sub_12EF48(v88, v117, type metadata accessor for PageContent);
            v101 = v118;
            sub_12EF48(v100, v118, type metadata accessor for PageContent);
            v102 = v155;
            v103 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
            v104 = swift_allocObject();
            sub_12EFB4(v100, v143 + v104, type metadata accessor for PageContent);
            *(v102 + v104) = v86;
            *(v104 + v103) = v87;

            if (v125)
            {
              sub_12D8F4(v101, type metadata accessor for PageContent);
              v106 = v119;
              sub_2C4468();
              sub_2C46F8();
              v107 = (*(v120 + 8))(v106, v121);
              __chkstk_darwin(v107);
              *(&v110 - 2) = sub_131678;
              *(&v110 - 1) = v104;

              v108 = v122;
              sub_2C3688();
              sub_2C2838();
              (*(v123 + 8))(v108, v116);

LABEL_25:
              sub_12D8F4(v135, type metadata accessor for PageContent);
              sub_68CD0(&v145);
              sub_68CD0(&v149);
              if (*(&v153 + 1))
              {
LABEL_26:
                sub_68CD0(&v152);
                return;
              }

              return;
            }

            sub_12E8E4(v105, v101, v86, v87);
            sub_12D8F4(v101, type metadata accessor for PageContent);
            sub_691F8(&v145, &v144);
            v109 = v113;
            sub_2C4378();
            sub_68CD0(v109);
            sub_68D1C(&v144, v109);
            *(v109 + *(v114 + 32)) = 1;
            sub_2C4388();
          }

          goto LABEL_25;
        }

LABEL_49:
        if (*(&v153 + 1))
        {
          sub_68CD0(&v152);
          if (*(&v147 + 1))
          {
            sub_68CD0(&v146);
          }
        }

        goto LABEL_11;
      }

LABEL_48:
      v146 = v152;
      v147 = v153;
      v148 = v154;
      goto LABEL_49;
    }

LABEL_59:
    __break(1u);
    return;
  }

  (*(v130 + 8))(v41, v29);
  v54 = v139;
  v55 = v140;
  v56 = v138;
  v57 = v137;
LABEL_11:
  v58 = type metadata accessor for Page(0);
  v59 = swift_allocBox();
  v61 = v60;
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  v62 = v136;
  sub_2C4378();
  sub_12BAAC(v57);
  sub_12D8F4(v62, type metadata accessor for PageContent.PageInfo);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    sub_69198(v57, &qword_3BEF88, &unk_2E7D40);
    swift_deallocBox();
    return;
  }

  sub_12EFB4(v57, v61, type metadata accessor for Page);
  type metadata accessor for PageAlert(0);
  v63 = swift_allocBox();
  v65 = v64;
  sub_6620C(&qword_3C0B28, &qword_2EC690);
  sub_2C4378();
  sub_12DDB4(v61, v65, v134);
  if (v55)
  {
  }

  else
  {
    v92 = v124;
    sub_12EF48(v54, v124, type metadata accessor for PageContent);
    sub_12EF48(v92, v56, type metadata accessor for PageContent);
    v93 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v94 = (v132 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    sub_12EFB4(v92, v95 + v93, type metadata accessor for PageContent);
    *(v95 + v94) = v59;
    *(v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;

    if (v125)
    {
      sub_12D8F4(v56, type metadata accessor for PageContent);
      v97 = v119;
      sub_2C4468();
      sub_2C46F8();
      v98 = (*(v120 + 8))(v97, v121);
      __chkstk_darwin(v98);
      *(&v110 - 2) = sub_12F01C;
      *(&v110 - 1) = v95;

      v99 = v122;
      sub_2C3688();
      sub_2C2838();
      (*(v123 + 8))(v99, v116);

      return;
    }

    sub_12E8E4(v96, v56, v59, v63);
    sub_12D8F4(v56, type metadata accessor for PageContent);
  }
}

uint64_t sub_12AC84()
{
  v1 = v0;
  v2 = type metadata accessor for Page(0);
  v97 = *(v2 - 8);
  __chkstk_darwin(v2);
  v90 = &v82[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v4 - 8);
  v95 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v85 = &v82[-v7];
  __chkstk_darwin(v8);
  v86 = &v82[-v9];
  __chkstk_darwin(v10);
  v93 = &v82[-v11];
  __chkstk_darwin(v12);
  v91 = &v82[-v13];
  __chkstk_darwin(v14);
  v92 = &v82[-v15];
  __chkstk_darwin(v16);
  v87 = &v82[-v17];
  v18 = sub_2C5268();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v84 = &v82[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_6620C(&qword_3C2060, &unk_2EC780);
  __chkstk_darwin(v21);
  v23 = &v82[-v22];
  v24 = sub_6620C(&qword_3C0BF8, &qword_2EA788);
  __chkstk_darwin(v24 - 8);
  v26 = &v82[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v82[-v28];
  __chkstk_darwin(v30);
  v32 = &v82[-v31];
  v96 = type metadata accessor for PageContent.PageInfo(0);
  v33 = v96[9];
  v34 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v94 = v33;
  v98 = v34;
  v35 = sub_2BFC88();
  if (!v35)
  {
    goto LABEL_17;
  }

  v88 = v35;
  v89 = v2;
  v99 = v35;
  swift_errorRetain();
  sub_6620C(&unk_3BF5A0, &qword_2EC790);
  v36 = swift_dynamicCast();
  v37 = *(v19 + 56);
  v37(v32, v36 ^ 1u, 1, v18);
  (*(v19 + 104))(v29, enum case for IntentDispatcherError.unsupported(_:), v18);
  v37(v29, 0, 1, v18);
  v38 = *(v21 + 48);
  sub_6932C(v32, v23, &qword_3C0BF8, &qword_2EA788);
  sub_6932C(v29, &v23[v38], &qword_3C0BF8, &qword_2EA788);
  v39 = *(v19 + 48);
  if (v39(v23, 1, v18) == 1)
  {
    sub_69198(v29, &qword_3C0BF8, &qword_2EA788);
    v40 = v39(&v23[v38], 1, v18);
    v41 = v97;
    if (v40 == 1)
    {
      sub_69198(v23, &qword_3C0BF8, &qword_2EA788);
      sub_69198(v32, &qword_3C0BF8, &qword_2EA788);
      v2 = v89;
      v42 = v96;
LABEL_9:
      v45 = v87;
      sub_6932C(&v1[v42[5]], v87, &qword_3BEF88, &unk_2E7D40);
      if ((*(v41 + 48))(v45, 1, v2) != 1)
      {

        sub_69198(v45, &qword_3BEF88, &unk_2E7D40);
        goto LABEL_17;
      }

      sub_69198(v45, &qword_3BEF88, &unk_2E7D40);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  sub_6932C(v23, v26, &qword_3C0BF8, &qword_2EA788);
  if (v39(&v23[v38], 1, v18) == 1)
  {
    sub_69198(v29, &qword_3C0BF8, &qword_2EA788);
    (*(v19 + 8))(v26, v18);
LABEL_7:
    sub_69198(v23, &qword_3C2060, &unk_2EC780);
    sub_69198(v32, &qword_3C0BF8, &qword_2EA788);
    v2 = v89;
    goto LABEL_11;
  }

  v43 = v84;
  (*(v19 + 32))(v84, &v23[v38], v18);
  sub_131614(&qword_3C2068, &type metadata accessor for IntentDispatcherError, &protocol conformance descriptor for IntentDispatcherError);
  v83 = sub_2C5878();
  v44 = *(v19 + 8);
  v44(v43, v18);
  sub_69198(v29, &qword_3C0BF8, &qword_2EA788);
  v44(v26, v18);
  sub_69198(v23, &qword_3C0BF8, &qword_2EA788);
  sub_69198(v32, &qword_3C0BF8, &qword_2EA788);
  v2 = v89;
  v42 = v96;
  v41 = v97;
  if (v83)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_72084(v1, *(v1 + 3));
  v46 = sub_2C4A88();
  v48 = v47;
  if (qword_3BB7F0 != -1)
  {
    swift_once();
  }

  v49 = sub_2C00B8();
  sub_57AD8(v49, qword_3C3080);
  swift_errorRetain();

  v50 = sub_2C0098();
  v51 = sub_2C5DC8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v99 = v54;
    *v52 = 136315394;
    v55 = sub_5CCF4(v46, v48, &v99);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2112;
    v56 = sub_2BE348();
    *(v52 + 14) = v56;
    *v53 = v56;
    _os_log_impl(&dword_0, v50, v51, "Error occurred when loading page intent %s: %@", v52, 0x16u);
    sub_69198(v53, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v54);
  }

  else
  {
  }

LABEL_17:
  if (sub_2BFC88())
  {

    v57 = v96;
    v58 = v91;
    sub_6932C(&v1[v96[10]], v91, &qword_3BEF88, &unk_2E7D40);
    v59 = v97;
    v60 = *(v97 + 48);
    if (v60(v58, 1, v2) == 1)
    {
      v61 = v92;
      sub_6932C(&v1[v57[5]], v92, &qword_3BEF88, &unk_2E7D40);
      if (v60(v58, 1, v2) != 1)
      {
        sub_69198(v58, &qword_3BEF88, &unk_2E7D40);
      }
    }

    else
    {
      v61 = v92;
      sub_12EFB4(v58, v92, type metadata accessor for Page);
      (*(v59 + 56))(v61, 0, 1, v2);
    }

    sub_12D954(v61, &v1[v57[6]]);
  }

  else
  {
    v57 = v96;
    v62 = v96[6];
    sub_69198(&v1[v62], &qword_3BEF88, &unk_2E7D40);
    v59 = v97;
    (*(v97 + 56))(&v1[v62], 1, 1, v2);
  }

  v63 = v2;
  v64 = v93;
  sub_2BFC68();
  v65 = *(v59 + 48);
  v66 = v65(v64, 1, v63);
  sub_69198(v64, &qword_3BEF88, &unk_2E7D40);
  if (v66 != 1)
  {
    goto LABEL_27;
  }

  if (sub_2BFC88())
  {

LABEL_27:
    v67 = v57[7];
    sub_69198(&v1[v67], &qword_3BEF88, &unk_2E7D40);
    (*(v59 + 56))(&v1[v67], 1, 1, v63);
    v68 = v63;
    v69 = v95;
    goto LABEL_28;
  }

  v79 = v85;
  sub_6932C(&v1[v57[10]], v85, &qword_3BEF88, &unk_2E7D40);
  v68 = v63;
  if (v65(v79, 1, v63) == 1)
  {
    v80 = v86;
    sub_6932C(&v1[v57[5]], v86, &qword_3BEF88, &unk_2E7D40);
    v81 = v65(v79, 1, v63);
    v69 = v95;
    if (v81 != 1)
    {
      sub_69198(v79, &qword_3BEF88, &unk_2E7D40);
    }
  }

  else
  {
    v80 = v86;
    sub_12EFB4(v79, v86, type metadata accessor for Page);
    (*(v59 + 56))(v80, 0, 1, v63);
    v69 = v95;
  }

  sub_12D954(v80, &v1[v57[7]]);
LABEL_28:
  v70 = v57[8];
  if (v1[v70] == 1)
  {
    v1[v70] = 0;
    v71 = v57[5];
    sub_69198(&v1[v71], &qword_3BEF88, &unk_2E7D40);
    (*(v59 + 56))(&v1[v71], 1, 1, v68);
  }

  sub_2BFC68();
  if (v65(v69, 1, v68) == 1)
  {
    sub_69198(v69, &qword_3BEF88, &unk_2E7D40);
    v72 = v57[10];
    sub_69198(&v1[v72], &qword_3BEF88, &unk_2E7D40);
    return (*(v59 + 56))(&v1[v72], 1, 1, v68);
  }

  else
  {
    v74 = v69;
    v75 = v90;
    sub_12EFB4(v74, v90, type metadata accessor for Page);
    v76 = v57[10];
    sub_69198(&v1[v76], &qword_3BEF88, &unk_2E7D40);
    sub_12EFB4(v75, &v1[v76], type metadata accessor for Page);
    v77 = *(v59 + 56);
    v77(&v1[v76], 0, 1, v68);
    v78 = v57[5];
    sub_69198(&v1[v78], &qword_3BEF88, &unk_2E7D40);
    return v77(&v1[v78], 1, 1, v68);
  }
}

uint64_t sub_12BA24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageContent.PageInfo(0) + 36);
  v4 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_12BAAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PageContent.PageInfo(0);
  sub_6620C(&qword_3C09E8, &qword_2EA650);
  if (sub_2BFC88())
  {

    v11 = *(v10 + 20);
    sub_6932C(v1 + v11, v6, &qword_3BEF88, &unk_2E7D40);
    v12 = type metadata accessor for Page(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      sub_69198(v6, &qword_3BEF88, &unk_2E7D40);
    }

    else
    {
      v18 = v6[*(v12 + 80)];
      sub_12D8F4(v6, type metadata accessor for Page);
      if (v18 == 1)
      {
        return sub_6932C(v2 + v11, a1, &qword_3BEF88, &unk_2E7D40);
      }
    }

    return (*(v13 + 56))(a1, 1, 1, v12);
  }

  else
  {
    sub_6932C(v1 + *(v10 + 40), v9, &qword_3BEF88, &unk_2E7D40);
    v14 = type metadata accessor for Page(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v9, 1, v14) == 1)
    {
      sub_6932C(v2 + *(v10 + 20), a1, &qword_3BEF88, &unk_2E7D40);
      result = v16(v9, 1, v14);
      if (result != 1)
      {
        return sub_69198(v9, &qword_3BEF88, &unk_2E7D40);
      }
    }

    else
    {
      sub_12EFB4(v9, a1, type metadata accessor for Page);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  return result;
}

double sub_12BDB0(uint64_t a1)
{
  v3 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for Page(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v51 = (&v49 - v13);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  sub_6932C(a1, v8, &qword_3BEF88, &unk_2E7D40);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_69198(a1, &qword_3BEF88, &unk_2E7D40);
    sub_69198(v8, &qword_3BEF88, &unk_2E7D40);
    return result;
  }

  v49 = a1;
  sub_12EFB4(v8, v16, type metadata accessor for Page);
  v19 = type metadata accessor for PageContent.PageInfo(0);
  v20 = *(v19 + 40);
  sub_6932C(v1 + v20, v5, &qword_3BEF88, &unk_2E7D40);
  if (v17(v5, 1, v9) != 1)
  {
    sub_69198(v49, &qword_3BEF88, &unk_2E7D40);
    sub_69198(v5, &qword_3BEF88, &unk_2E7D40);
    sub_69198(v1 + v20, &qword_3BEF88, &unk_2E7D40);
    sub_12EFB4(v16, v1 + v20, type metadata accessor for Page);
    (*(v10 + 56))(v1 + v20, 0, 1, v9);
    return result;
  }

  sub_69198(v5, &qword_3BEF88, &unk_2E7D40);
  sub_6620C(&qword_3C09E8, &qword_2EA650);
  v21 = v16;
  if (sub_2BFC88())
  {

    if (v16[*(v9 + 80)] == 1)
    {
      sub_69198(v49, &qword_3BEF88, &unk_2E7D40);
      v22 = *(v19 + 20);
      sub_69198(v1 + v22, &qword_3BEF88, &unk_2E7D40);
      sub_12EFB4(v16, v1 + v22, type metadata accessor for Page);
      (*(v10 + 56))(v1 + v22, 0, 1, v9);
      return result;
    }
  }

  if (!sub_2BFC88())
  {
    v37 = v49;
    if (qword_3BB7F0 != -1)
    {
      swift_once();
    }

    v38 = sub_2C00B8();
    sub_57AD8(v38, qword_3C3080);
    v39 = v50;
    sub_12EF48(v16, v50, type metadata accessor for Page);
    v40 = sub_2C0098();
    v41 = sub_2C5DC8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      v44 = v21;
      v45 = *v39;
      v46 = v39[1];

      sub_12D8F4(v39, type metadata accessor for Page);
      v47 = sub_5CCF4(v45, v46, &v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v40, v41, "Received updated page model for %s, but the page intent result hasn't been loaded yet.", v42, 0xCu);
      sub_68CD0(v43);

      sub_69198(v37, &qword_3BEF88, &unk_2E7D40);
      v36 = v44;
      goto LABEL_20;
    }

    sub_69198(v37, &qword_3BEF88, &unk_2E7D40);
    v48 = v39;
LABEL_19:
    sub_12D8F4(v48, type metadata accessor for Page);
    v36 = v21;
    goto LABEL_20;
  }

  if (qword_3BB7F0 != -1)
  {
    swift_once();
  }

  v23 = sub_2C00B8();
  sub_57AD8(v23, qword_3C3080);
  v24 = v16;
  v25 = v51;
  sub_12EF48(v24, v51, type metadata accessor for Page);
  swift_errorRetain();
  v26 = sub_2C0098();
  v27 = sub_2C5DC8();

  if (!os_log_type_enabled(v26, v27))
  {

    sub_69198(v49, &qword_3BEF88, &unk_2E7D40);
    v48 = v25;
    goto LABEL_19;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v50 = v21;
  v30 = v29;
  v31 = swift_slowAlloc();
  v52 = v31;
  *v28 = 136315394;
  v32 = *v25;
  v33 = v25[1];

  sub_12D8F4(v25, type metadata accessor for Page);
  v34 = sub_5CCF4(v32, v33, &v52);

  *(v28 + 4) = v34;
  *(v28 + 12) = 2112;
  v35 = sub_2BE348();
  *(v28 + 14) = v35;
  *v30 = v35;
  _os_log_impl(&dword_0, v26, v27, "Received updated page model for %s, but the intent is in error state (%@) and the page is invalid as an error fallback.", v28, 0x16u);
  sub_69198(v30, &qword_3BFEE0, &unk_2E9520);

  sub_68CD0(v31);

  sub_69198(v49, &qword_3BEF88, &unk_2E7D40);
  v36 = v50;
LABEL_20:
  sub_12D8F4(v36, type metadata accessor for Page);
  return result;
}

double sub_12C558@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v77 = sub_2BE5C8();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Page(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2C1A68();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v96 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2C1A28();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_6620C(&qword_3C2070, &qword_2EC798);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v74 - v9;
  v10 = sub_6620C(&qword_3C1598, &unk_2EB570);
  __chkstk_darwin(v10 - 8);
  v93 = &v74 - v11;
  v12 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v12 - 8);
  v101 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v74 - v15;
  v16 = sub_2C4BB8();
  v91 = *(v16 - 8);
  v92 = v16;
  __chkstk_darwin(v16);
  v99 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2BEF78();
  v89 = *(v18 - 8);
  v90 = v18;
  __chkstk_darwin(v18);
  v98 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v20);
  v79 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v22 - 8);
  v88 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  __chkstk_darwin(v27);
  v87 = &v74 - v28;
  __chkstk_darwin(v29);
  v31 = &v74 - v30;
  __chkstk_darwin(v32);
  v34 = &v74 - v33;
  v86 = v20;
  sub_6620C(&qword_3C09E8, &qword_2EA650);
  sub_2BFC68();
  v78 = v5;
  v35 = *(v5 + 48);
  v36 = v35(v34, 1, v4);
  sub_69198(v34, &qword_3BEF88, &unk_2E7D40);
  if (v36 == 1)
  {
    if (sub_2BFC88())
    {
    }

    else
    {
      sub_6932C(v2 + *(v86 + 28), v31, &qword_3BEF88, &unk_2E7D40);
      if (v35(v31, 1, v4) != 1)
      {
        goto LABEL_18;
      }

      sub_69198(v31, &qword_3BEF88, &unk_2E7D40);
    }
  }

  v37 = v4;
  if (sub_2BFC88())
  {

    sub_12BAAC(v26);
    if (v35(v26, 1, v4) == 1)
    {
      v31 = v87;
      sub_6932C(v2 + *(v86 + 24), v87, &qword_3BEF88, &unk_2E7D40);
      if (v35(v26, 1, v4) != 1)
      {
        sub_69198(v26, &qword_3BEF88, &unk_2E7D40);
      }
    }

    else
    {
      v31 = v87;
      sub_12EFB4(v26, v87, type metadata accessor for Page);
      (*(v78 + 56))(v31, 0, 1, v4);
    }

    if (v35(v31, 1, v4) != 1)
    {
      goto LABEL_18;
    }

    sub_69198(v31, &qword_3BEF88, &unk_2E7D40);
  }

  v31 = v88;
  sub_12BAAC(v88);
  if (v35(v31, 1, v4) != 1)
  {
LABEL_18:
    v43 = v31;
    goto LABEL_24;
  }

  sub_69198(v31, &qword_3BEF88, &unk_2E7D40);
  if (qword_3BB7F0 != -1)
  {
    swift_once();
  }

  v38 = sub_2C00B8();
  sub_57AD8(v38, qword_3C3080);
  v39 = v79;
  sub_12EF48(v2, v79, type metadata accessor for PageContent.PageInfo);
  v40 = sub_2C0098();
  v41 = sub_2C5DD8();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v85;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v103 = v45;
    *v44 = 136315138;
    v46 = sub_12D398();
    v48 = v47;
    sub_12D8F4(v39, type metadata accessor for PageContent.PageInfo);
    v49 = sub_5CCF4(v46, v48, &v103);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "Trying to get a page from %s when the page isn't loaded. Probably a bug in RootView.", v44, 0xCu);
    sub_68CD0(v45);
  }

  else
  {

    sub_12D8F4(v39, type metadata accessor for PageContent.PageInfo);
  }

  sub_2BEF48();
  sub_2C4BA8();
  v50 = sub_2BFDD8();
  v51 = *(*(v50 - 8) + 56);
  v51(v100, 1, 1, v50);
  v51(v101, 1, 1, v50);
  v52 = sub_2C15F8();
  (*(*(v52 - 8) + 56))(v93, 1, 1, v52);
  sub_6620C(&qword_3BD478, &unk_2E4090);
  v53 = v80;
  sub_2C23F8();
  sub_72B74(&qword_3C2078, &qword_3C2070, &qword_2EC798, &protocol conformance descriptor for Empty<A, B>);
  v54 = v82;
  v88 = sub_2C2408();
  (*(v81 + 8))(v53, v54);
  (*(v95 + 104))(v94, enum case for NavigationBarTitleStyle.automatic(_:), v97);
  sub_2C1A58();
  v55 = sub_67F44(_swiftEmptyArrayStorage);
  v56 = &v43[v37[24]];
  *v56 = 0;
  *(v56 + 1) = 0;
  v57 = &v43[v37[25]];
  *(v57 + 4) = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v103 = sub_2BEF68();
  v104 = v58;
  v105._countAndFlagsBits = 45;
  v105._object = 0xE100000000000000;
  sub_2C5978(v105);
  v59._countAndFlagsBits = sub_2BEF58();
  if (v59._object)
  {
    object = v59._object;
  }

  else
  {
    v61 = v75;
    sub_2BE5B8();
    v62 = sub_2BE598();
    object = v63;
    (*(v76 + 8))(v61, v77);
    v59._countAndFlagsBits = v62;
  }

  v59._object = object;
  sub_2C5978(v59);

  v64 = v104;
  *v43 = v103;
  *(v43 + 1) = v64;
  (*(v89 + 16))(&v43[v37[17]], v98, v90);
  *&v43[v37[18]] = _swiftEmptyArrayStorage;
  v43[v37[14]] = 0;
  *&v43[v37[15]] = _swiftEmptyArrayStorage;
  (*(v91 + 16))(&v43[v37[19]], v99, v92);
  v65 = &v43[v37[16]];
  *v65 = 0;
  *(v65 + 1) = 0;
  sub_6932C(v100, &v43[v37[5]], &qword_3BEF80, &qword_2E8D50);
  sub_6932C(v101, &v43[v37[6]], &qword_3BEF80, &qword_2E8D50);
  v66 = v94;
  v67 = v95;
  v68 = v97;
  (*(v95 + 16))(&v43[v37[7]], v94, v97);
  v69 = v83;
  v70 = v96;
  v71 = v84;
  (*(v83 + 16))(&v43[v37[8]], v96, v84);
  v43[v37[9]] = 0;
  *&v43[v37[21]] = v55;
  v72 = v93;
  sub_6932C(v93, &v43[v37[10]], &qword_3C1598, &unk_2EB570);
  *&v43[v37[11]] = _swiftEmptyArrayStorage;
  *&v43[v37[12]] = _swiftEmptyArrayStorage;
  v43[v37[13]] = 0;
  *&v43[v37[22]] = v88;
  v43[v37[23]] = 0;
  v43[v37[20]] = 0;
  sub_17E898();
  (*(v69 + 8))(v70, v71);
  (*(v67 + 8))(v66, v68);
  sub_69198(v72, &qword_3C1598, &unk_2EB570);
  sub_69198(v101, &qword_3BEF80, &qword_2E8D50);
  sub_69198(v100, &qword_3BEF80, &qword_2E8D50);
  (*(v91 + 8))(v99, v92);
  (*(v89 + 8))(v98, v90);
LABEL_24:
  sub_12EFB4(v43, v102, type metadata accessor for Page);
  return result;
}

unint64_t sub_12D398()
{
  v1 = v0;
  v2 = type metadata accessor for Page(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v34 - v9);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v35 = type metadata accessor for PageContent.PageInfo(0);
  sub_6620C(&qword_3C09E8, &qword_2EA650);
  sub_2BFC68();
  sub_6932C(v16, v13, &qword_3BEF88, &unk_2E7D40);
  v17 = *(v3 + 48);
  v37 = v3 + 48;
  v38 = v2;
  v39 = v17;
  if (v17(v13, 1, v2) == 1)
  {
    sub_69198(v16, &qword_3BEF88, &unk_2E7D40);
    v18 = 0xE700000000000000;
    if (sub_2BFC88())
    {
      v40 = 0x203A726F727265;
      v41 = 0xE700000000000000;
      swift_errorRetain();
      v19 = sub_2BE348();
      v20 = [v19 description];
      v21 = sub_2C58C8();
      v23 = v22;

      v42._countAndFlagsBits = v21;
      v42._object = v23;
      sub_2C5978(v42);

      v24 = v40;
      v18 = v41;
    }

    else
    {
      v24 = 0x676E6964616F6CLL;
    }
  }

  else
  {
    sub_12EFB4(v13, v5, type metadata accessor for Page);
    v40 = 0x203A646564616F6CLL;
    v41 = 0xE800000000000000;
    sub_2C5978(*v5);
    v24 = v40;
    v18 = v41;
    sub_12D8F4(v5, type metadata accessor for Page);
    sub_69198(v16, &qword_3BEF88, &unk_2E7D40);
  }

  v25 = v38;
  v26 = 0xD000000000000010;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_2C61F8(42);

  v40 = 0xD000000000000015;
  v41 = 0x8000000000303AF0;
  sub_72084(v1, v1[3]);
  v43._countAndFlagsBits = sub_2C4A88();
  sub_2C5978(v43);

  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  sub_2C5978(v44);
  v45._countAndFlagsBits = v24;
  v45._object = v18;
  sub_2C5978(v45);

  v46._countAndFlagsBits = 0x616974696E69202CLL;
  v46._object = 0xEB00000000203A6CLL;
  sub_2C5978(v46);
  v27 = *(v35 + 20);
  sub_6932C(v1 + v27, v10, &qword_3BEF88, &unk_2E7D40);
  if (v39(v10, 1, v25) == 1)
  {
    sub_69198(v10, &qword_3BEF88, &unk_2E7D40);
    v28 = 0xE300000000000000;
    v29 = 7104878;
  }

  else
  {
    v29 = *v10;
    v28 = v10[1];

    sub_12D8F4(v10, type metadata accessor for Page);
  }

  v47._countAndFlagsBits = v29;
  v47._object = v28;
  sub_2C5978(v47);

  v30 = v36;
  sub_6932C(v1 + v27, v36, &qword_3BEF88, &unk_2E7D40);
  if (v39(v30, 1, v25) == 1)
  {
    sub_69198(v30, &qword_3BEF88, &unk_2E7D40);
LABEL_13:
    v26 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_14;
  }

  v31 = *(v30 + *(v25 + 80));
  sub_12D8F4(v30, type metadata accessor for Page);
  if (v31 != 1)
  {
    goto LABEL_13;
  }

  v32 = 0x8000000000303B10;
LABEL_14:
  v48._countAndFlagsBits = v26;
  v48._object = v32;
  sub_2C5978(v48);

  return v40;
}

uint64_t sub_12D8F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_12D954(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_12D9E4()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PageContent(0) + 24));
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

uint64_t sub_12DB60(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Page(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12EF48(a1, v8, type metadata accessor for Page);
  sub_12EF48(v8, v4, type metadata accessor for Page);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_12BDB0(v4);
  return sub_12D8F4(v8, type metadata accessor for Page);
}

uint64_t sub_12DCE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageContent.PageInfo(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_691F8(a2, v9);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_68CD0(v6);
  sub_68D1C(v9, v6);
  *(v6 + *(v4 + 40)) = 1;
  return sub_2C4388();
}

void sub_12DDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v74 = a1;
  v73 = type metadata accessor for Page(0);
  __chkstk_darwin(v73);
  v65 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v65 - v6;
  __chkstk_darwin(v7);
  v69 = &v65 - v8;
  __chkstk_darwin(v9);
  v70 = &v65 - v10;
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  __chkstk_darwin(v14);
  v71 = &v65 - v15;
  __chkstk_darwin(v16);
  v72 = &v65 - v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  v24 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v67 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = (&v65 - v29);
  v31 = *(v25 + 16);
  v31(&v65 - v29, a3, v24, v28);
  v32 = (*(v25 + 88))(v30, v24);
  if (v32 == enum case for PageUpdateInstruction.replacePage<A, B>(_:))
  {
    goto LABEL_2;
  }

  if (v32 == enum case for PageUpdateInstruction.appendShelves<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v33 = *v30;
    if (*(*v30 + 16))
    {
      v34 = v74;
      sub_12EF48(v74, v23, type metadata accessor for Page);
      sub_10F650(v33);
      sub_17E898();
    }

    else
    {

      v34 = v74;
      sub_12EF48(v74, v23, type metadata accessor for Page);
    }

    sub_12D8F4(v34, type metadata accessor for Page);
    sub_12EFB4(v23, v34, type metadata accessor for Page);
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.replaceShelves<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v35 = v74;
    v36 = v75;
    Page.updatingShelves(from:)(*v30, v20);
    if (!v36)
    {
      sub_12D8F4(v35, type metadata accessor for Page);

      sub_12EFB4(v20, v35, type metadata accessor for Page);
      return;
    }

LABEL_8:

    return;
  }

  v37 = v75;
  if (v32 == enum case for PageUpdateInstruction.removeShelves<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v38 = *v30;
    v39 = v74;
    v40 = v72;
    sub_12EFB4(v74, v72, type metadata accessor for Page);
    v41 = sub_2B62AC(v38);

    if (!*(v41 + 16))
    {

      sub_12EFB4(v40, v39, type metadata accessor for Page);
      return;
    }

    sub_12EF48(v40, v39, type metadata accessor for Page);
    v42 = v73[15];

    v43 = sub_181808((v39 + v42), v41);

    v44 = *(*(v39 + v42) + 16);
    if (v44 >= v43)
    {
      sub_181CFC(v43, v44);

      sub_12D8F4(v40, type metadata accessor for Page);
      return;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v32 == enum case for PageUpdateInstruction.removeShelvesAfter<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v45 = *v30;
    v46 = v30[1];
    v47 = v74;
    v48 = v71;
    sub_12EFB4(v74, v71, type metadata accessor for Page);
    Page.removingShelves(after:)(v45, v46, v47);

    sub_12D8F4(v48, type metadata accessor for Page);
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.appendItems<A, B>(_:))
  {
    v49 = v75;
    (*(v25 + 96))(v30, v24);
    v50 = v74;
    Page.appendingItems(from:)(*v30, v13);
    if (v49)
    {
      goto LABEL_8;
    }

    sub_12D8F4(v50, type metadata accessor for Page);

    v51 = v13;
LABEL_29:
    sub_12EFB4(v51, v50, type metadata accessor for Page);
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.removeItems<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v52 = v70;
    v50 = v74;
    Page.removingItems(from:)(*v30, v70);
LABEL_26:
    if (v37)
    {
      goto LABEL_8;
    }

    sub_12D8F4(v50, type metadata accessor for Page);

    v51 = v52;
    goto LABEL_29;
  }

  if (v32 == enum case for PageUpdateInstruction.replaceItems<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v52 = v69;
    v50 = v74;
    Page.updatingItems(from:)(*v30, v69);
    goto LABEL_26;
  }

  if (v32 == enum case for PageUpdateInstruction.replaceTrailingToolbarItems<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v53 = *v30;
    v54 = v74;
    v55 = v71;
    sub_12EFB4(v74, v71, type metadata accessor for Page);
    sub_12EFB4(v55, v54, type metadata accessor for Page);
    v56 = v73[12];

    *(v54 + v56) = v53;
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.replaceShelfHeaders<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v52 = v66;
    v50 = v74;
    Page.updatingShelfHeader(from:)(*v30, v66);
    goto LABEL_26;
  }

  if (v32 == enum case for PageUpdateInstruction.replaceShelfFooters<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v52 = v65;
    v50 = v74;
    Page.updatingShelfFooter(from:)(*v30, v65);
    goto LABEL_26;
  }

  if (v32 == enum case for PageUpdateInstruction.presentAlert<A, B>(_:))
  {
    (*(v25 + 96))(v30, v24);
    v57 = v68;
    sub_69198(v68, &qword_3C1E38, &unk_2EC5F0);
    v58 = sub_2C0368();
    v59 = *(v58 - 8);
    (*(v59 + 32))(v57, v30, v58);
    (*(v59 + 56))(v57, 0, 1, v58);
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.compound<A, B>(_:))
  {
    v60 = v75;
    (*(v25 + 96))(v30, v24);
    v61 = *v30;
    v73 = *(*v30 + 16);
    if (!v73)
    {
      goto LABEL_8;
    }

    v62 = 0;
    v63 = (v25 + 8);
    while (1)
    {
      v64 = v67;
      if (v62 >= *(v61 + 16))
      {
        break;
      }

      (v31)(v67, v61 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v62, v24);
      sub_12DDB4(v74, v68, v64);
      if (v60)
      {
        (*v63)(v64, v24);
        goto LABEL_8;
      }

      v62 = (v62 + 1);
      (*v63)(v64, v24);
      if (v73 == v62)
      {
        goto LABEL_8;
      }
    }

LABEL_53:
    __break(1u);
    return;
  }

  if (v32 == enum case for PageUpdateInstruction.startPendingData<A, B>(_:))
  {
    *(v74 + v73[23]) = 1;
  }

  else
  {
    if (v32 != enum case for PageUpdateInstruction.stopPendingData<A, B>(_:))
    {
LABEL_2:
      (*(v25 + 8))(v30, v24);
      return;
    }

    *(v74 + v73[23]) = 0;
  }
}

uint64_t sub_12E8E4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PageAlert(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for PageContent.PageInfo(0);
  __chkstk_darwin(v10 - 8);
  v11 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v11 - 8);
  v13 = &v18[-v12];
  v14 = type metadata accessor for Page(0);
  v15 = swift_projectBox();
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_12EF48(v15, v13, type metadata accessor for Page);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_12BDB0(v13);
  sub_2C4388();
  swift_beginAccess();
  sub_12EF48(v16, v9, type metadata accessor for PageAlert);
  type metadata accessor for PageContent(0);
  sub_12EF48(v9, v6, type metadata accessor for PageAlert);
  sub_6620C(&qword_3C0B28, &qword_2EC690);
  sub_2C4388();
  return sub_12D8F4(v9, type metadata accessor for PageAlert);
}

uint64_t sub_12EBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PageContent.PageInfo(0) + 36);
  v5 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_12EC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a1, v4, v6);
  v9 = type metadata accessor for PageContent.PageInfo(0);
  (*(v5 + 24))(a2 + *(v9 + 36), v8, v4);
  sub_12AC84();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_12ED70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v6 = sub_2C4C78();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = sub_72084(a1, a1[3]);
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_2C4C88();
  swift_getWitnessTable();
  sub_2C3B48();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_12EF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12EFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12F048()
{
  v82 = type metadata accessor for PageContent(0);
  v83 = *(*(v82 - 8) + 80);
  v80 = *(*(v82 - 8) + 64);
  v81 = (v83 + 16) & ~v83;
  v84 = v0;
  v1 = v0 + v81;
  sub_68CD0((v0 + v81));
  v2 = type metadata accessor for PageContent.PageInfo(0);
  v3 = v0 + v81 + v2[5];
  v4 = type metadata accessor for Page(0);
  v5 = *(*(v4 - 1) + 48);
  v85 = v5;
  if (!v5(v3, 1, v4))
  {

    v6 = v4[5];
    v7 = sub_2BFDD8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }

    v10 = v4[6];
    if (!v9(v3 + v10, 1, v7))
    {
      (*(v8 + 8))(v3 + v10, v7);
    }

    v11 = v4[7];
    v12 = sub_2C1A28();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
    v13 = v4[8];
    v14 = sub_2C1A68();
    (*(*(v14 - 8) + 8))(v3 + v13, v14);
    v15 = v4[10];
    v16 = sub_2C15F8();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v3 + v15, 1, v16))
    {
      (*(v17 + 8))(v3 + v15, v16);
    }

    v18 = v4[17];
    v19 = sub_2BEF78();
    (*(*(v19 - 8) + 8))(v3 + v18, v19);

    v20 = v4[19];
    v21 = sub_2C4BB8();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);

    v5 = v85;
    if (*(v3 + v4[25] + 8))
    {
    }
  }

  v22 = v1 + v2[6];
  if (!v5(v22, 1, v4))
  {

    v23 = v4[5];
    v24 = sub_2BFDD8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v22 + v23, 1, v24))
    {
      (*(v25 + 8))(v22 + v23, v24);
    }

    v27 = v4[6];
    if (!v26(v22 + v27, 1, v24))
    {
      (*(v25 + 8))(v22 + v27, v24);
    }

    v28 = v4[7];
    v29 = sub_2C1A28();
    (*(*(v29 - 8) + 8))(v22 + v28, v29);
    v30 = v4[8];
    v31 = sub_2C1A68();
    (*(*(v31 - 8) + 8))(v22 + v30, v31);
    v32 = v4[10];
    v33 = sub_2C15F8();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v4[17];
    v36 = sub_2BEF78();
    (*(*(v36 - 8) + 8))(v22 + v35, v36);

    v37 = v4[19];
    v38 = sub_2C4BB8();
    (*(*(v38 - 8) + 8))(v22 + v37, v38);

    v5 = v85;
    if (*(v22 + v4[25] + 8))
    {
    }
  }

  v39 = v1 + v2[7];
  if (!v5(v39, 1, v4))
  {

    v40 = v4[5];
    v41 = sub_2BFDD8();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    if (!v43(v39 + v40, 1, v41))
    {
      (*(v42 + 8))(v39 + v40, v41);
    }

    v44 = v4[6];
    if (!v43(v39 + v44, 1, v41))
    {
      (*(v42 + 8))(v39 + v44, v41);
    }

    v45 = v4[7];
    v46 = sub_2C1A28();
    (*(*(v46 - 8) + 8))(v39 + v45, v46);
    v47 = v4[8];
    v48 = sub_2C1A68();
    (*(*(v48 - 8) + 8))(v39 + v47, v48);
    v49 = v4[10];
    v50 = sub_2C15F8();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v39 + v49, 1, v50))
    {
      (*(v51 + 8))(v39 + v49, v50);
    }

    v52 = v4[17];
    v53 = sub_2BEF78();
    (*(*(v53 - 8) + 8))(v39 + v52, v53);

    v54 = v4[19];
    v55 = sub_2C4BB8();
    (*(*(v55 - 8) + 8))(v39 + v54, v55);

    v5 = v85;
    if (*(v39 + v4[25] + 8))
    {
    }
  }

  v56 = v2[9];
  v57 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  (*(*(v57 - 8) + 8))(v1 + v56, v57);
  v58 = v1 + v2[10];
  if (!v5(v58, 1, v4))
  {

    v59 = v4[5];
    v60 = sub_2BFDD8();
    v61 = *(v60 - 8);
    v62 = *(v61 + 48);
    if (!v62(v58 + v59, 1, v60))
    {
      (*(v61 + 8))(v58 + v59, v60);
    }

    v63 = v4[6];
    if (!v62(v58 + v63, 1, v60))
    {
      (*(v61 + 8))(v58 + v63, v60);
    }

    v64 = v4[7];
    v65 = sub_2C1A28();
    (*(*(v65 - 8) + 8))(v58 + v64, v65);
    v66 = v4[8];
    v67 = sub_2C1A68();
    (*(*(v67 - 8) + 8))(v58 + v66, v67);
    v68 = v4[10];
    v69 = sub_2C15F8();
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v58 + v68, 1, v69))
    {
      (*(v70 + 8))(v58 + v68, v69);
    }

    v71 = v4[17];
    v72 = sub_2BEF78();
    (*(*(v72 - 8) + 8))(v58 + v71, v72);

    v73 = v4[19];
    v74 = sub_2C4BB8();
    (*(*(v74 - 8) + 8))(v58 + v73, v74);

    if (*(v58 + v4[25] + 8))
    {
    }
  }

  sub_6620C(&qword_3BEF90, &unk_2EC5E0);

  v75 = v1 + *(v82 + 20);
  v76 = sub_2C0368();
  v77 = *(v76 - 8);
  if (!(*(v77 + 48))(v75, 1, v76))
  {
    (*(v77 + 8))(v75, v76);
  }

  v78 = (v80 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_6620C(&qword_3C0B28, &qword_2EC690);

  sub_68CD0((v84 + v78));

  return _swift_deallocObject(v84, v78 + 40, v83 | 7);
}

uint64_t sub_12FD9C()
{
  v1 = *(type metadata accessor for PageContent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_12DCE0(v0 + v2, v3);
}

uint64_t sub_12FE28()
{
  v81 = type metadata accessor for PageContent(0);
  v82 = *(*(v81 - 8) + 80);
  v79 = *(*(v81 - 8) + 64);
  v80 = (v82 + 16) & ~v82;
  v83 = v0;
  v1 = v0 + v80;
  sub_68CD0((v0 + v80));
  v2 = type metadata accessor for PageContent.PageInfo(0);
  v3 = v0 + v80 + v2[5];
  v4 = type metadata accessor for Page(0);
  v5 = *(*(v4 - 1) + 48);
  v84 = v5;
  if (!v5(v3, 1, v4))
  {

    v6 = v4[5];
    v7 = sub_2BFDD8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }

    v10 = v4[6];
    if (!v9(v3 + v10, 1, v7))
    {
      (*(v8 + 8))(v3 + v10, v7);
    }

    v11 = v4[7];
    v12 = sub_2C1A28();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
    v13 = v4[8];
    v14 = sub_2C1A68();
    (*(*(v14 - 8) + 8))(v3 + v13, v14);
    v15 = v4[10];
    v16 = sub_2C15F8();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v3 + v15, 1, v16))
    {
      (*(v17 + 8))(v3 + v15, v16);
    }

    v18 = v4[17];
    v19 = sub_2BEF78();
    (*(*(v19 - 8) + 8))(v3 + v18, v19);

    v20 = v4[19];
    v21 = sub_2C4BB8();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);

    v5 = v84;
    if (*(v3 + v4[25] + 8))
    {
    }
  }

  v22 = v1 + v2[6];
  if (!v5(v22, 1, v4))
  {

    v23 = v4[5];
    v24 = sub_2BFDD8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v22 + v23, 1, v24))
    {
      (*(v25 + 8))(v22 + v23, v24);
    }

    v27 = v4[6];
    if (!v26(v22 + v27, 1, v24))
    {
      (*(v25 + 8))(v22 + v27, v24);
    }

    v28 = v4[7];
    v29 = sub_2C1A28();
    (*(*(v29 - 8) + 8))(v22 + v28, v29);
    v30 = v4[8];
    v31 = sub_2C1A68();
    (*(*(v31 - 8) + 8))(v22 + v30, v31);
    v32 = v4[10];
    v33 = sub_2C15F8();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v4[17];
    v36 = sub_2BEF78();
    (*(*(v36 - 8) + 8))(v22 + v35, v36);

    v37 = v4[19];
    v38 = sub_2C4BB8();
    (*(*(v38 - 8) + 8))(v22 + v37, v38);

    v5 = v84;
    if (*(v22 + v4[25] + 8))
    {
    }
  }

  v39 = v1 + v2[7];
  if (!v5(v39, 1, v4))
  {

    v40 = v4[5];
    v41 = sub_2BFDD8();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    if (!v43(v39 + v40, 1, v41))
    {
      (*(v42 + 8))(v39 + v40, v41);
    }

    v44 = v4[6];
    if (!v43(v39 + v44, 1, v41))
    {
      (*(v42 + 8))(v39 + v44, v41);
    }

    v45 = v4[7];
    v46 = sub_2C1A28();
    (*(*(v46 - 8) + 8))(v39 + v45, v46);
    v47 = v4[8];
    v48 = sub_2C1A68();
    (*(*(v48 - 8) + 8))(v39 + v47, v48);
    v49 = v4[10];
    v50 = sub_2C15F8();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v39 + v49, 1, v50))
    {
      (*(v51 + 8))(v39 + v49, v50);
    }

    v52 = v4[17];
    v53 = sub_2BEF78();
    (*(*(v53 - 8) + 8))(v39 + v52, v53);

    v54 = v4[19];
    v55 = sub_2C4BB8();
    (*(*(v55 - 8) + 8))(v39 + v54, v55);

    v5 = v84;
    if (*(v39 + v4[25] + 8))
    {
    }
  }

  v56 = v2[9];
  v57 = sub_6620C(&qword_3C09E8, &qword_2EA650);
  (*(*(v57 - 8) + 8))(v1 + v56, v57);
  v58 = v1 + v2[10];
  if (!v5(v58, 1, v4))
  {

    v59 = v4[5];
    v60 = sub_2BFDD8();
    v61 = *(v60 - 8);
    v62 = *(v61 + 48);
    if (!v62(v58 + v59, 1, v60))
    {
      (*(v61 + 8))(v58 + v59, v60);
    }

    v63 = v4[6];
    if (!v62(v58 + v63, 1, v60))
    {
      (*(v61 + 8))(v58 + v63, v60);
    }

    v64 = v4[7];
    v65 = sub_2C1A28();
    (*(*(v65 - 8) + 8))(v58 + v64, v65);
    v66 = v4[8];
    v67 = sub_2C1A68();
    (*(*(v67 - 8) + 8))(v58 + v66, v67);
    v68 = v4[10];
    v69 = sub_2C15F8();
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v58 + v68, 1, v69))
    {
      (*(v70 + 8))(v58 + v68, v69);
    }

    v71 = v4[17];
    v72 = sub_2BEF78();
    (*(*(v72 - 8) + 8))(v58 + v71, v72);

    v73 = v4[19];
    v74 = sub_2C4BB8();
    (*(*(v74 - 8) + 8))(v58 + v73, v74);

    if (*(v58 + v4[25] + 8))
    {
    }
  }

  sub_6620C(&qword_3BEF90, &unk_2EC5E0);

  v75 = v1 + *(v81 + 20);
  v76 = sub_2C0368();
  v77 = *(v76 - 8);
  if (!(*(v77 + 48))(v75, 1, v76))
  {
    (*(v77 + 8))(v75, v76);
  }

  sub_6620C(&qword_3C0B28, &qword_2EC690);

  return _swift_deallocObject(v83, ((((v79 + v80 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v82 | 7);
}

uint64_t sub_130B8C()
{
  v1 = *(type metadata accessor for PageContent(0) - 8);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_12E8E4(v2, v0 + v3, v5, v6);
}

uint64_t sub_130C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_6620C(&qword_3C0B28, &qword_2EC690);
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

uint64_t sub_130D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_6620C(&qword_3C0B28, &qword_2EC690);
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

void sub_130EBC(uint64_t a1)
{
  sub_130FE8(319, &qword_3C1EA8, type metadata accessor for PageContent.PageInfo, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_130FE8(319, &unk_3C1EB0, type metadata accessor for PageAlert, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_130FE8(319, &unk_3C0BB8, type metadata accessor for HostProxy, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_130FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_13104C(uint64_t a1)
{
  sub_130FE8(319, &qword_3C1F68, type metadata accessor for Page, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1310F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1310F0()
{
  result = qword_3C1F70;
  if (!qword_3C1F70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3C1F70);
  }

  return result;
}

uint64_t sub_131154(void *a1)
{
  sub_718D4(&qword_3C0B08, &qword_2EA718);
  sub_72B74(&qword_3C0B10, &qword_3C0B08, &qword_2EA718, &protocol conformance descriptor for AnyIntentModel<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_131210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
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
      v13 = sub_6620C(&qword_3C09E8, &qword_2EA650);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_131360(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
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
      v13 = sub_6620C(&qword_3C09E8, &qword_2EA650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_13149C(uint64_t a1)
{
  sub_1315A8();
  if (v1 <= 0x3F)
  {
    sub_130FE8(319, &qword_3C2010, type metadata accessor for Page, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_130FE8(319, &unk_3C2018, type metadata accessor for Page, &type metadata accessor for IntentResult);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1315A8()
{
  result = qword_3C2008;
  if (!qword_3C2008)
  {
    type metadata accessor for Page(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_3C2008);
  }

  return result;
}

uint64_t sub_131614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13167C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a3;
  v8 = sub_2C1278();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4[4];
  v13 = sub_2C5888();
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    v15 = type metadata accessor for LibraryAssetStateObserver(0);
  }

  else
  {
    (*(v9 + 16))(v11, v25, v8);
    v16 = v4[2];
    v17 = v4[3];
    v15 = type metadata accessor for LibraryAssetStateObserver(0);
    v18 = objc_allocWithZone(v15);

    swift_unknownObjectRetain();
    v19 = v17;
    sub_1345F4(a1, a2, v11, v16, v19);
    v21 = v20;
    swift_unknownObjectRelease();

    v14 = v21;
    v22 = sub_2C5888();
    [v12 setObject:v14 forKey:v22];
  }

  result = sub_1350A4(&unk_3C21B0, type metadata accessor for LibraryAssetStateObserver, &protocol conformance descriptor for LibraryAssetStateObserver);
  a4[3] = v15;
  a4[4] = result;
  *a4 = v14;
  return result;
}

uint64_t LibraryAssetStateObserver.__allocating_init(id:initialState:libraryItemStateProvider:downloadProgressCenter:)(uint64_t a1, unint64_t a2, objc_class *a3, uint64_t a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  sub_1345F4(a1, a2, a3, a4, a5);
  v13 = v12;
  swift_unknownObjectRelease();

  return v13;
}

void sub_1318F4(uint64_t a2@<X8>)
{
  v4 = v2[4];
  v5 = sub_2C5888();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_untrackedLibraryAssetState;
    swift_beginAccess();
    v8 = sub_2C1278();
    (*(*(v8 - 8) + 16))(a2, &v6[v7], v8);
  }

  else
  {
    v9 = v2[2];
    v10 = sub_2C5888();
    v11 = [v9 itemStateWithIdentifier:v10];

    v12 = v2[3];
    v13 = sub_2C5888();
    v14 = sub_2C5888();
    v15 = [v12 dynamicProgressForKind:v13 instance:v14 parameters:0];

    if (v15)
    {
      v16 = [v15 progress];
      [v16 doubleValue];
      v18 = v17;

      sub_131AE0(v11, a2, v18);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_131AE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v50 = a2;
  v49 = sub_2C1208();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v35 - v7;
  v46 = sub_2C1218();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (v35 - v13);
  v15 = sub_2C1258();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = v35 - v21;
  v23 = [a1 itemIdentifier];
  sub_2C6128();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v24 = v52;
    v44 = v51;
  }

  else
  {
    v44 = 0;
    v24 = 0xE000000000000000;
  }

  v45 = v24;
  v25 = [a1 download];
  v43 = v25 != &dword_0 + 1;
  v26 = a3;
  if (v25 != &dword_0 + 1)
  {
    v26 = 0.0;
  }

  v42 = v26;
  sub_133FB8(v22);
  v27.n128_f64[0] = a3;
  sub_134140(v14, v27);
  sub_134550(v8);
  [a1 readingProgressValue];
  v40 = [a1 isFinished];
  v37 = [a1 hasSpecifiedFinishedDate];
  v41 = [a1 isInSamples];
  v28 = [a1 isSample];
  v36 = v14;
  v35[5] = v28;
  v35[4] = [a1 wantToRead];
  v29 = [a1 isPurchased];
  v39 = v22;
  v35[3] = v29;
  v30 = *(v16 + 16);
  v38 = v15;
  v30(v18, v22, v15);
  v31 = v46;
  (*(v9 + 16))(v11, v14, v46);
  v32 = v47;
  v33 = v49;
  (*(v47 + 16))(v48, v8, v49);
  sub_2C1248();
  swift_unknownObjectRelease();
  (*(v32 + 8))(v8, v33);
  (*(v9 + 8))(v36, v31);
  return (*(v16 + 8))(v39, v38);
}

uint64_t sub_131F90()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t LibraryAssetStateObserver.libraryAssetState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1350A4(&qword_3C2088, type metadata accessor for LibraryAssetStateObserver, &protocol conformance descriptor for LibraryAssetStateObserver);
  sub_2BE6F8();

  v3 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState;
  swift_beginAccess();
  v4 = sub_2C1278();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_132118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1350A4(&qword_3C2088, type metadata accessor for LibraryAssetStateObserver, &protocol conformance descriptor for LibraryAssetStateObserver);
  sub_2BE6F8();

  v4 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState;
  swift_beginAccess();
  v5 = sub_2C1278();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_132210(uint64_t a1)
{
  v2 = sub_2C1278();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1322DC(v5);
}

uint64_t sub_1322DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2C1278();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1350A4(&qword_3C21C0, &type metadata accessor for LibraryAssetState, &protocol conformance descriptor for LibraryAssetState);
  v9 = sub_2C5878();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1350A4(&qword_3C2088, type metadata accessor for LibraryAssetStateObserver, &protocol conformance descriptor for LibraryAssetStateObserver);
    sub_2BE6E8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_13255C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState;
  swift_beginAccess();
  v5 = sub_2C1278();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t LibraryAssetStateObserver.init(id:initialState:libraryItemStateProvider:downloadProgressCenter:)(uint64_t a1, unint64_t a2, objc_class *a3, uint64_t a4, void *a5)
{
  sub_1345F4(a1, a2, a3, a4, a5);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

id LibraryAssetStateObserver.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData];

  os_unfair_lock_lock(v3 + 10);
  sub_134D80(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);

  v4 = [*&v0[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_libraryItemStateProvider] stateCenter];
  [v4 removeObserver:v1];

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_132874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_libraryItemStateProvider;
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_libraryItemStateProvider) stateCenter];
    v5 = v3;

    v6 = sub_2C5888();

    [v4 addObserver:v5 forItemIdentifier:v6];

    v7 = *&v3[v2];

    v8 = sub_2C5888();

    v9 = [v7 itemStateWithIdentifier:v8];

    v10 = *&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData];
    v11 = swift_task_alloc();
    *(v11 + 16) = v9;
    *(v11 + 24) = v5;

    os_unfair_lock_lock((v10 + 40));
    sub_135464((v10 + 16));
    os_unfair_lock_unlock((v10 + 40));

    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_132A58(double *a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_2C1278();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  v14 = a1[2];
  v15 = swift_unknownObjectRetain();
  sub_131AE0(v15, v13, v14);
  v16 = sub_2C5C58();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, v13, v7);
  sub_2C5C18();

  v18 = sub_2C5C08();
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v17;
  (*(v8 + 32))(&v20[v19], v10, v7);

  sub_249E98(0, 0, v6, &unk_2EC990, v20);

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_132D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  v6 = sub_2C1278();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  sub_2C5C18();
  v5[17] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_132E04, v8, v7);
}

uint64_t sub_132E04()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    v5 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_untrackedLibraryAssetState;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v6(v2, &Strong[v5], v4);
    sub_1350A4(&qword_3C21C0, &type metadata accessor for LibraryAssetState, &protocol conformance descriptor for LibraryAssetState);
    v7 = sub_2C5878();
    (*(v3 + 8))(v2, v4);
    if ((v7 & 1) == 0)
    {
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      swift_beginAccess();
      (*(v9 + 24))(&Strong[v5], v11, v10);
      swift_endAccess();
      v6(v8, v11, v10);
      sub_1322DC(v8);
    }
  }

  **(v0 + 88) = Strong == 0;

  v12 = *(v0 + 8);

  return v12();
}

void LibraryAssetStateObserver.libraryItemStateCenter(_:didUpdate:for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  os_unfair_lock_lock((v1 + 40));
  sub_134DB8((v1 + 16), v2);
  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_133030(double *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v63 = a5;
  v55 = a4;
  v57 = sub_2C1218();
  __chkstk_darwin(v57);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2C1258();
  __chkstk_darwin(v54);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - v12;
  v59 = &v53 - v12;
  v14 = sub_2C1278();
  v58 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v61 = &v53 - v18;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  v25 = a1[2];
  v26 = swift_unknownObjectRetain();
  sub_131AE0(v26, v24, v25);
  v27 = sub_2C5C58();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v60 = *(v15 + 16);
  v60(v21, v24, v14);
  sub_2C5C18();
  v28 = a3;
  v29 = sub_2C5C08();
  v30 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v28;
  v64 = v15;
  v32 = v31 + v30;
  v33 = v58;
  (*(v15 + 32))(v32, v21, v58);
  sub_249B98(0, 0, v59, &unk_2EC968, v31);

  if (qword_3BB7D0 != -1)
  {
    swift_once();
  }

  v34 = sub_2C00B8();
  sub_57AD8(v34, qword_3C3020);
  v35 = v60;
  v36 = v61;
  v60(v61, v24, v33);
  v37 = v62;
  v35(v62, v24, v33);
  v38 = v63;

  v39 = sub_2C0098();
  v40 = sub_2C5DA8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v24;
    v65 = v59;
    *v41 = 136315650;
    *(v41 + 4) = sub_5CCF4(v55, v38, &v65);
    *(v41 + 12) = 2080;
    LODWORD(v63) = v40;
    sub_2C1268();
    v42 = sub_2C5918();
    v44 = v43;
    v45 = *(v64 + 8);
    v45(v36, v33);
    v46 = sub_5CCF4(v42, v44, &v65);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2080;
    sub_2C1228();
    v47 = sub_2C5918();
    v49 = v48;
    v45(v37, v33);
    v50 = sub_5CCF4(v47, v49, &v65);

    *(v41 + 24) = v50;
    _os_log_impl(&dword_0, v39, v63, "LibraryAssetState changed: id=%s, ownership=%s, localState=%s", v41, 0x20u);
    swift_arrayDestroy();

    return (v45)(v60, v33);
  }

  else
  {

    v52 = *(v64 + 8);
    v52(v37, v33);
    v52(v36, v33);
    return (v52)(v24, v33);
  }
}

uint64_t sub_133630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2C1278();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_2C5C18();
  v5[13] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_133724, v8, v7);
}

uint64_t sub_133724()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];

  v5 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_untrackedLibraryAssetState;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  sub_1350A4(&qword_3C21C0, &type metadata accessor for LibraryAssetState, &protocol conformance descriptor for LibraryAssetState);
  v7 = sub_2C5878();
  (*(v3 + 8))(v1, v2);
  if ((v7 & 1) == 0)
  {
    v9 = v0[11];
    v8 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    swift_beginAccess();
    (*(v9 + 24))(v4 + v5, v11, v10);
    swift_endAccess();
    v6(v8, v11, v10);
    sub_1322DC(v8);
  }

  v12 = v0[1];

  return v12();
}

void LibraryAssetStateObserver.dynamicProgressChanged(_:)(void *a1)
{
  v2 = [a1 progress];
  [v2 doubleValue];

  v3 = *(v1 + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  os_unfair_lock_lock((v3 + 40));
  sub_134DD8((v3 + 16));
  os_unfair_lock_unlock((v3 + 40));
}

void sub_1339F8(double *a1, uint64_t a2, void *a3, double a4)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_2C1278();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v28 - v18;
  if (*(a1 + 1) == a2)
  {
    a1[2] = a4;
    if (*a1)
    {
      v20 = v17;
      v28[0] = v17;
      v21 = swift_unknownObjectRetain_n();
      sub_131AE0(v21, v19, a4);
      v22 = sub_2C5C58();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      (*(v13 + 16))(v15, v19, v20);
      sub_2C5C18();
      v28[1] = v4;
      v23 = a3;
      v24 = sub_2C5C08();
      v25 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = v24;
      *(v26 + 3) = &protocol witness table for MainActor;
      *(v26 + 4) = v23;
      v27 = v28[0];
      (*(v13 + 32))(&v26[v25], v15, v28[0]);
      sub_249B98(0, 0, v11, &unk_2EC958, v26);
      swift_unknownObjectRelease();

      (*(v13 + 8))(v19, v27);
    }
  }
}

uint64_t sub_133CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2C1278();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_2C5C18();
  v5[13] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_135660, v8, v7);
}

uint64_t sub_133EC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1350A4(&qword_3C2088, type metadata accessor for LibraryAssetStateObserver, &protocol conformance descriptor for LibraryAssetStateObserver);
  sub_2BE6F8();

  v4 = OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState;
  swift_beginAccess();
  v5 = sub_2C1278();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_133FB8@<X0>(uint64_t a1@<X8>)
{
  if ([v1 library] == &dword_4 || objc_msgSend(v1, "library") == &dword_0 + 3 && (objc_msgSend(v1, "assetIsPreorderable") & 1) == 0)
  {
    v3 = &enum case for LibraryAssetState.Ownership.purchased(_:);
  }

  else if ([v1 library] == &dword_4 + 1 || objc_msgSend(v1, "download") == &dword_0 + 2 && (objc_msgSend(v1, "isSample") & 1) == 0)
  {
    v3 = &enum case for LibraryAssetState.Ownership.sideloaded(_:);
  }

  else
  {
    if ([v1 library] != &dword_0 + 3)
    {
      v11 = [v1 library];
      v7 = sub_2C1258();
      v6 = *(*(v7 - 8) + 104);
      if (v11 == &dword_0 + 2)
      {
        v12 = &enum case for LibraryAssetState.Ownership.purchasing(_:);
      }

      else
      {
        v12 = &enum case for LibraryAssetState.Ownership.unowned(_:);
      }

      v9 = *v12;
      v8 = a1;
      goto LABEL_12;
    }

    v3 = &enum case for LibraryAssetState.Ownership.preordered(_:);
  }

  v4 = *v3;
  v5 = sub_2C1258();
  v6 = *(*(v5 - 8) + 104);
  v7 = v5;
  v8 = a1;
  v9 = v4;
LABEL_12:

  return v6(v8, v9, v7);
}

uint64_t sub_134140@<X0>(unint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  v3 = v2;
  v4 = a2.n128_u64[0];
  v28 = a1;
  v5 = sub_2C1258();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  sub_133FB8(&v27 - v10);
  v12 = *(v6 + 104);
  v12(v8, enum case for LibraryAssetState.Ownership.purchased(_:), v5);
  sub_1350A4(&qword_3C21A8, &type metadata accessor for LibraryAssetState.Ownership, &protocol conformance descriptor for LibraryAssetState.Ownership);
  v13 = sub_2C5878();
  v14 = *(v6 + 8);
  v14(v8, v5);
  if ((v13 & 1) == 0)
  {
    v12(v8, enum case for LibraryAssetState.Ownership.sideloaded(_:), v5);
    v15 = sub_2C5878();
    v14(v8, v5);
    if ((v15 & 1) == 0)
    {
      v12(v8, enum case for LibraryAssetState.Ownership.redownload(_:), v5);
      v16 = sub_2C5878();
      v14(v8, v5);
      if ((v16 & 1) == 0)
      {
        v14(v11, v5);
        v17 = &enum case for LibraryAssetState.LocalState.unavailable(_:);
        goto LABEL_11;
      }
    }
  }

  if ([v3 isUpdateAvailable])
  {
    v14(v11, v5);
    v17 = &enum case for LibraryAssetState.LocalState.outdated(_:);
LABEL_11:
    v18 = *v17;
    v19 = sub_2C1218();
    v20 = *(*(v19 - 8) + 104);
    v21 = v28;
LABEL_12:
    v22 = v18;
    return v20(v21, v22, v19);
  }

  if ([v3 download] == &dword_0 + 2)
  {
    v14(v11, v5);
    v17 = &enum case for LibraryAssetState.LocalState.latest(_:);
    goto LABEL_11;
  }

  if ([v3 isStreamable])
  {
    v14(v11, v5);
    v17 = &enum case for LibraryAssetState.LocalState.streamable(_:);
    goto LABEL_11;
  }

  if ([v3 download] == &dword_0 + 1)
  {
    v14(v11, v5);
    v24 = v28;
    *v28 = v4;
    v18 = enum case for LibraryAssetState.LocalState.downloading(_:);
    v19 = sub_2C1218();
    v20 = *(*(v19 - 8) + 104);
    v21 = v24;
    goto LABEL_12;
  }

  v25 = [v3 download];
  v14(v11, v5);
  v19 = sub_2C1218();
  v20 = *(*(v19 - 8) + 104);
  if (v25)
  {
    v26 = &enum case for LibraryAssetState.LocalState.unavailable(_:);
  }

  else
  {
    v26 = &enum case for LibraryAssetState.LocalState.downloadable(_:);
  }

  v22 = *v26;
  v21 = v28;
  return v20(v21, v22, v19);
}

uint64_t sub_134550@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 play];
  v4 = sub_2C1208();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for LibraryAssetState.PlayState.notActive(_:);
  if (v3 == &dword_0 + 1)
  {
    v6 = &enum case for LibraryAssetState.PlayState.playing(_:);
  }

  if (v3 == &dword_0 + 2)
  {
    v6 = &enum case for LibraryAssetState.PlayState.paused(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_1345F4(uint64_t a1, unint64_t a2, objc_class *a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v11 - 8);
  v63 = v54 - v12;
  v58 = sub_2C1218();
  __chkstk_darwin(v58);
  v57 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2C1258();
  __chkstk_darwin(v55);
  v54[1] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2C1278();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v62 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v54 - v19;
  sub_2BE728();
  v21 = &v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_id];
  *v21 = a1;
  *(v21 + 1) = a2;
  *&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_libraryItemStateProvider] = a4;
  *&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_downloadProgressCenter] = a5;

  swift_unknownObjectRetain();
  v22 = a5;
  v23 = sub_2C5888();
  v56 = a1;
  v24 = sub_2C5888();
  v25 = [v22 dynamicProgressForKind:v23 instance:v24 parameters:0];

  if (v25)
  {
    sub_6620C(&qword_3C21C8, &qword_2EC970);
    v26 = swift_allocObject();
    *(v26 + 40) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = v25;
    *&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData] = v26;
    *(v26 + 32) = 0;
    v64 = v16;
    v27 = *(v16 + 16);
    v27(&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver__libraryAssetState], a3, v15);
    v27(&v5[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_untrackedLibraryAssetState], a3, v15);
    v66.receiver = v5;
    v66.super_class = ObjectType;
    v60 = v25;
    swift_unknownObjectRetain();
    v28 = objc_msgSendSuper2(&v66, "init");
    v29 = qword_3BB7D0;
    v59 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_2C00B8();
    sub_57AD8(v30, qword_3C3020);
    v31 = v20;
    v27(v20, a3, v15);
    v32 = v62;
    ObjectType = a3;
    v27(v62, a3, v15);

    v33 = sub_2C0098();
    v34 = sub_2C5DA8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      v65[0] = v54[0];
      *v35 = 136315650;
      v36 = sub_5CCF4(v56, a2, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      sub_2C1268();
      v37 = sub_2C5918();
      v39 = v38;
      v40 = *(v64 + 8);
      v40(v31, v15);
      v41 = sub_5CCF4(v37, v39, v65);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2080;
      sub_2C1228();
      v42 = sub_2C5918();
      v44 = v43;
      v40(v32, v15);
      v45 = sub_5CCF4(v42, v44, v65);

      *(v35 + 24) = v45;
      _os_log_impl(&dword_0, v33, v34, "LibraryAssetState initial: id=%s, ownership=%s, localState=%s", v35, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v40 = *(v64 + 8);
      v40(v32, v15);
      v40(v31, v15);
    }

    v47 = v59;
    v46 = v60;
    v48 = [v60 registerProgressObserver:v59];
    v49 = *&v47[OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData];
    __chkstk_darwin(v48);
    v54[-2] = v46;

    os_unfair_lock_lock(v49 + 10);
    sub_1352CC(&v49[4]);
    os_unfair_lock_unlock(v49 + 10);

    v50 = sub_2C5C58();
    v51 = v63;
    (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v52;
    sub_249B98(0, 0, v51, &unk_2EC980, v53);
    swift_unknownObjectRelease();

    v40(ObjectType, v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LibraryAssetStateObserver(uint64_t a1)
{
  result = qword_3C2198;
  if (!qword_3C2198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_134E70(uint64_t a1)
{
  result = sub_2C1278();
  if (v2 <= 0x3F)
  {
    result = sub_2BE738();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_134FAC(uint64_t a1)
{
  v4 = *(sub_2C1278() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_133CA4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1350A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_135108()
{
  v1 = sub_2C1278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1351D4(uint64_t a1)
{
  v4 = *(sub_2C1278() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_133630(a1, v6, v7, v8, v1 + v5);
}

void sub_1352CC(uint64_t a1)
{
  v3 = [*(v1 + 16) progress];
  [v3 doubleValue];
  v5 = v4;

  *(a1 + 16) = v5;
}

uint64_t sub_135338()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_135370()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1353B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_88BE0;

  return sub_132854(a1, v4, v5, v6);
}

uint64_t sub_135480()
{
  v1 = sub_2C1278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_13554C(uint64_t a1)
{
  v4 = *(sub_2C1278() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_132D0C(a1, v6, v7, v8, v1 + v5);
}

id MicaFileProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaFileProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id MicaFileProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MicaFileProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_1357CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_2C5A28();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_5C180(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_5C180((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2C5A08();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2C5968();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2C5968();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2C5A28();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_5C180(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2C5A28();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_5C180(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_5C180((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2C5968();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_135B8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C5888();
  v5 = [v4 pathExtension];

  v6 = sub_2C58C8();
  v8 = v7;

  v28[0] = 47;
  v28[1] = 0xE100000000000000;
  v27 = v28;

  v10 = sub_1357CC(0x7FFFFFFFFFFFFFFFLL, 1, sub_111B38, v26, a1, a2, v9);
  if (v6 == 1918984547 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = sub_2C65B8();

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v10[2] != 2)
  {
LABEL_15:

    return 0;
  }

  v13 = v10[4];
  v14 = v10[5];
  v16 = v10[6];
  v15 = v10[7];

  v17 = sub_2C60E8();
  if (!v15)
  {

    goto LABEL_15;
  }

  if (v16 == v19 && v15 == v20 && v13 >> 16 == v17 >> 16 && v14 >> 16 == v18 >> 16)
  {
  }

  else
  {
    v22 = sub_2C6558();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 currentPackage];

  if (v24)
  {
    v25 = sub_2C0238();

    return v25;
  }

  return 0;
}

uint64_t sub_135E54(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_A3DDC(result, a2);
  }

  return result;
}

unint64_t sub_135E7C()
{
  result = qword_3C21F8;
  if (!qword_3C21F8)
  {
    type metadata accessor for SeriesListFilterAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C21F8);
  }

  return result;
}

uint64_t sub_135ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = sub_6620C(&qword_3BE240, &qword_2E5AC0);
  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v3;
  v5[1] = sub_135F94;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_135F94()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1363F4;
  }

  else
  {
    v2 = sub_1360A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1360A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_72084((v0 + 16), v2);
  *(v0 + 104) = *v1;
  sub_72084((v1 + 8), *(v1 + 32));
  v4 = sub_2BF3B8();
  v6 = v5;
  *(v0 + 88) = v5;
  v9 = (*(v3 + 72) + **(v3 + 72));
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_13622C;

  return v9(v0 + 104, v4, v6, v2, v3);
}

uint64_t sub_13622C()
{

  return _swift_task_switch(sub_136344, 0, 0);
}

uint64_t sub_136344()
{
  v1 = v0[7];
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_2C4C08();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  sub_68CD0(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_13640C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SeriesListFilterAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_136630(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_136800(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_6620C(&qword_3BDAB8, &unk_2E8250);

  v12 = sub_2C5738();
  v13 = sub_2C5C58();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2ECA48;
  v14[5] = v11;
  v14[6] = v12;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v14);

  return v12;
}

uint64_t sub_136630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesListFilterAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_136694()
{
  v1 = (type metadata accessor for SeriesListFilterAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_68CD0((v0 + v3 + 8));
  v5 = v1[9];
  v6 = sub_2C4BF8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[10];
  v8 = sub_2BF088();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_136800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesListFilterAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_136864(uint64_t a1)
{
  v4 = *(type metadata accessor for SeriesListFilterAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_135ED4(a1, v6, v1 + v5);
}

uint64_t sub_136948()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t ContentKind.segmentedItemTitleForAnalytics.getter()
{
  v1 = sub_2BF408();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = *(v2 + 16);
  v9(&v13 - v7, v0, v1, v6);
  v10 = (*(v2 + 88))(v8, v1);
  if (v10 == enum case for ContentKind.pdf(_:))
  {
    return 4605008;
  }

  if (v10 == enum case for ContentKind.audiobook(_:))
  {
    return 0x6F6F626F69647541;
  }

  if (v10 == enum case for ContentKind.regularBook(_:))
  {
    return 0x736B6F6F42;
  }

  if (v10 == enum case for ContentKind.manga(_:))
  {
    return 0x61676E614DLL;
  }

  if (v10 == enum case for ContentKind.unknownBook(_:))
  {
    return 0x206E776F6E6B6E55;
  }

  (v9)(v4, v0, v1);
  v12 = sub_2C5928();
  (*(v2 + 8))(v8, v1);
  return v12;
}

uint64_t SeriesRoomListHeaderSegmentedItem.init(contentKind:pageIntent:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  *a3 = 0;
  *(a3 + 1) = 0;
  v7 = v6[5];
  v8 = sub_2BFDD8();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  a3[v6[6]] = 0;
  v9 = v6[7];
  v10 = sub_2BF408();
  (*(*(v10 - 8) + 32))(&a3[v9], a1, v10);
  v11 = &a3[v6[8]];

  return sub_68D1C(a2, v11);
}

uint64_t type metadata accessor for SeriesRoomListHeaderSegmentedItem(uint64_t a1)
{
  result = qword_3C2288;
  if (!qword_3C2288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeriesRoomListHeaderSegmentedItem.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) + 28);
  v4 = sub_2BF408();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesRoomListHeaderSegmentedItem.pageIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) + 32);

  return sub_691F8(v3, a1);
}

uint64_t SeriesRoomListHeaderSegmentedItem.action(with:containingShelfID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v205 = a3;
  v190 = a2;
  v212 = a1;
  v187 = a4;
  v180 = sub_2C22F8();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v177 = v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2C2208();
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2C2178();
  v173 = *(v175 - 8);
  __chkstk_darwin(v175);
  v172 = v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2BF408();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2BEB28();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_2BF048();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v10 - 8);
  v195 = v154 - v11;
  v12 = sub_6620C(&qword_3C2200, &unk_2ECA50);
  v208 = *(v12 - 8);
  v211 = v208;
  __chkstk_darwin(v12);
  v14 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v210 = v154 - v16;
  __chkstk_darwin(v17);
  v188 = v154 - v18;
  __chkstk_darwin(v19);
  v191 = v154 - v20;
  v206 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v207 = *(v206 - 8);
  __chkstk_darwin(v206);
  v209 = v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v168 = (v154 - v23);
  __chkstk_darwin(v24);
  v159 = v154 - v25;
  __chkstk_darwin(v26);
  v161 = (v154 - v27);
  v199 = sub_2C4BF8();
  v186 = *(v199 - 8);
  __chkstk_darwin(v199);
  v198 = v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v154 - v30;
  __chkstk_darwin(v32);
  v194 = v154 - v33;
  __chkstk_darwin(v34);
  v192 = v154 - v35;
  v197 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v204 = v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v203 = v154 - v38;
  v39 = type metadata accessor for SeriesRoomListHeaderComponentModel(0);
  __chkstk_darwin(v39);
  v41 = v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  __chkstk_darwin(v193);
  v43 = v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_6620C(&qword_3C0370, &qword_2E9D20);
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44);
  v48 = v154 - v47;
  v182 = v45;
  v49 = *(v45 + 16);
  v49(v154 - v47, v212, v44, v46);
  sub_13A4C4(v202, v43, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_2C1C58();
  v181 = v48;
  v183 = v44;
  (v49)(v41, v48, v44);
  v50 = v205;
  v51 = sub_6620C(&qword_3C2208, &unk_2ECA60);
  v52 = v211[80];
  v53 = (v52 + 32) & ~v52;
  v208 = *(v208 + 72);
  v160 = 2 * v208;
  v156 = v52;
  v157 = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2E15C0;
  v158 = v53;
  v154[1] = v54;
  v55 = (v54 + v53);
  v185 = v31;
  v184 = v41;
  if (v50)
  {
    sub_6620C(&qword_3C2210, &qword_2ECA70);
    sub_6620C(&qword_3C2218, &qword_2ECA78);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2E3F30;
    *(&v220 + 1) = v39;
    v221 = sub_13A638(&qword_3C1690, type metadata accessor for SeriesRoomListHeaderComponentModel, &protocol conformance descriptor for SeriesRoomListHeaderComponentModel);
    v57 = sub_720C8(&v219);
    sub_13A4C4(v41, v57, type metadata accessor for SeriesRoomListHeaderComponentModel);
    type metadata accessor for Page(0);
    type metadata accessor for Shelf(0);
    sub_13A638(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
    sub_13A638(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);

    sub_2C16B8();
    *v55 = v56;
    v58 = v207;
    v59 = v206;
    (*(v207 + 104))(v55, enum case for PageUpdateInstruction.replaceShelfHeaders<A, B>(_:), v206);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v206;
    v58 = v207;
  }

  v61 = v58[7];
  v61(v55, v60, 1, v59);
  v62 = v208;
  sub_691F8(v202 + *(v193 + 32), v55 + v208);
  v63 = v58[13];
  v201 = v58 + 13;
  v63(v55 + v62, enum case for PageUpdateInstruction.replacePage<A, B>(_:), v59);
  v155 = v61;
  v189 = v58 + 7;
  v61((v55 + v62), 0, 1, v59);
  sub_2C4BE8();
  v64 = v191;
  sub_6932C(v55, v191, &qword_3C2200, &unk_2ECA50);
  v65 = v64;
  v66 = v188;
  sub_13A3BC(v65, v188);
  v68 = v58[6];
  v67 = v58 + 6;
  v69 = (v67 - 2);
  v212 = v67;
  v211 = v68;
  v70 = (v68)(v66, 1, v59);
  v200 = v63;
  if (v70 == 1)
  {
    sub_69198(v66, &qword_3C2200, &unk_2ECA50);
    v71 = _swiftEmptyArrayStorage;
  }

  else
  {
    v72 = *v69;
    v73 = v159;
    (*v69)(v159, v66, v59);
    v71 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_5C2B0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v75 = *(v71 + 2);
    v74 = *(v71 + 3);
    if (v75 >= v74 >> 1)
    {
      v71 = sub_5C2B0((v74 > 1), v75 + 1, 1, v71);
    }

    *(v71 + 2) = v75 + 1;
    v72(&v71[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v75], v73, v59);
    v63 = v200;
    v66 = v188;
  }

  v76 = v191;
  sub_6932C(v55 + v208, v191, &qword_3C2200, &unk_2ECA50);
  sub_13A3BC(v76, v66);
  if ((v211)(v66, 1, v59) == 1)
  {
    sub_69198(v66, &qword_3C2200, &unk_2ECA50);
  }

  else
  {
    v77 = *v69;
    v78 = v159;
    (*v69)(v159, v66, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_5C2B0(0, *(v71 + 2) + 1, 1, v71);
    }

    v80 = *(v71 + 2);
    v79 = *(v71 + 3);
    if (v80 >= v79 >> 1)
    {
      v71 = sub_5C2B0((v79 > 1), v80 + 1, 1, v71);
    }

    *(v71 + 2) = v80 + 1;
    v59 = v206;
    v77(&v71[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v80], v78, v206);
    v63 = v200;
  }

  v81 = v161;
  *v161 = v71;
  LODWORD(v159) = enum case for PageUpdateInstruction.compound<A, B>(_:);
  (v63)(v81);
  (*(v162 + 104))(v163, enum case for ClickData.TargetType.navigate(_:), v164);
  (*(v166 + 13))(v165, enum case for LinkActionType.click(_:), v167);
  v82 = v195;
  sub_2BF058();
  v83 = sub_2BF088();
  v84 = *(v83 - 8);
  v85 = *(v84 + 56);
  v167 = v83;
  v166 = v85;
  v165 = (v84 + 56);
  (v85)(v82, 0, 1);
  v86 = type metadata accessor for Page(0);
  v87 = type metadata accessor for Shelf(0);
  v88 = sub_13A638(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  v89 = sub_13A638(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v192 = v86;
  v191 = v87;
  v188 = v88;
  v90 = v89;
  sub_2C10D8();
  v91 = v208;
  v92 = v158;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_2E4110;
  v163 = v93;
  v94 = v93 + v92;
  v63((v93 + v92), enum case for PageUpdateInstruction.startPendingData<A, B>(_:), v59);
  v95 = v155;
  v155(v94, 0, 1, v59);
  v164 = v90;
  if (v205)
  {
    sub_6620C(&qword_3C2210, &qword_2ECA70);
    sub_6620C(&qword_3C2218, &qword_2ECA78);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_2E3F30;
    *(&v220 + 1) = sub_2C2008();
    v221 = sub_13A638(&qword_3C2220, &type metadata accessor for DefaultShelfFooterComponentModel, &protocol conformance descriptor for DefaultShelfFooterComponentModel);
    sub_720C8(&v219);
    sub_2C1FF8();

    v97 = v205;
    sub_2C16B8();
    *(v94 + v91) = v96;
    v98 = v200;
    v200(v94 + v91, enum case for PageUpdateInstruction.replaceShelfFooters<A, B>(_:), v59);
    v95(v94 + v91, 0, 1, v59);
    v99 = (v94 + v160);
    *v99 = v190;
    v99[1] = v97;
    v98(v99, enum case for PageUpdateInstruction.removeShelvesAfter<A, B>(_:), v59);
    v95(v99, 0, 1, v59);
  }

  else
  {
    v95(v94 + v91, 1, 1, v59);
    v95(v94 + v160, 1, 1, v59);
  }

  sub_2C4BE8();
  v100 = _swiftEmptyArrayStorage;
  v101 = 3;
  v102 = v208;
  do
  {
    v103 = v210;
    sub_6932C(v94, v210, &qword_3C2200, &unk_2ECA50);
    sub_13A3BC(v103, v14);
    if ((v211)(v14, 1, v59) == 1)
    {
      sub_69198(v14, &qword_3C2200, &unk_2ECA50);
    }

    else
    {
      v104 = *v69;
      (*v69)(v209, v14, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_5C2B0(0, *(v100 + 2) + 1, 1, v100);
      }

      v106 = *(v100 + 2);
      v105 = *(v100 + 3);
      if (v106 >= v105 >> 1)
      {
        v100 = sub_5C2B0((v105 > 1), v106 + 1, 1, v100);
      }

      *(v100 + 2) = v106 + 1;
      v59 = v206;
      v104(&v100[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v106], v209, v206);
      v102 = v208;
    }

    v94 += v102;
    --v101;
  }

  while (v101);

  v107 = v168;
  *v168 = v100;
  v200(v107, v159, v59);
  v166(v195, 1, 1, v167);
  sub_2C10D8();
  v108 = v170;
  v109 = v169;
  v110 = v171;
  (*(v170 + 16))(v169, v202 + *(v193 + 28), v171);
  v111 = (*(v108 + 88))(v109, v110);
  if (v111 == enum case for ContentKind.pdf(_:))
  {
    v112 = v198;
    v113 = v185;
LABEL_32:
    v212 = 0x6E776F6E6B6E55;
    goto LABEL_37;
  }

  v112 = v198;
  v113 = v185;
  if (v111 == enum case for ContentKind.audiobook(_:))
  {
    v114 = 0x6F6F626F69647541;
  }

  else
  {
    v114 = 0x736B6F6F42;
    if (v111 != enum case for ContentKind.regularBook(_:))
    {
      if (v111 == enum case for ContentKind.manga(_:))
      {
        goto LABEL_32;
      }

      if (v111 != enum case for ContentKind.unknownBook(_:))
      {
        (*(v108 + 8))(v109, v110);
        goto LABEL_32;
      }
    }
  }

  v212 = v114;
LABEL_37:
  v115 = v173;
  v116 = v172;
  v117 = v175;
  (*(v173 + 104))(v172, enum case for Metrics.TargetType.filter(_:), v175);
  v118 = v176;
  v119 = v174;
  v120 = v178;
  (*(v176 + 104))(v174, enum case for Metrics.ClickActionType.navigate(_:), v178);
  v121 = v177;
  sub_2C22A8();
  sub_2C2118();

  (*(v179 + 8))(v121, v180);
  (*(v118 + 8))(v119, v120);
  (*(v115 + 8))(v116, v117);
  v122 = v186;
  (*(v186 + 16))(v112, v113, v199);
  v123 = v197;
  v223[3] = v197;
  v124 = sub_D30CC();
  v223[4] = v124;
  v125 = sub_720C8(v223);
  v126 = *(v196 + 16);
  v126(v125, v203, v123);
  v224[3] = v123;
  v224[4] = v124;
  v127 = sub_720C8(v224);
  v126(v127, v204, v123);
  sub_6932C(v223, &v219, &unk_3BDC90, &unk_2E5620);
  v214 = v220;
  v213 = v219;
  v215 = v221;
  if (*(&v220 + 1))
  {
    sub_68D1C(&v213, &v216);
    v128 = _swiftEmptyArrayStorage;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v222 = _swiftEmptyArrayStorage;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v128 = sub_5C28C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      v222 = v128;
    }

    v131 = v128[2];
    v130 = v128[3];
    if (v131 >= v130 >> 1)
    {
      v128 = sub_5C28C((v130 > 1), v131 + 1, 1, v128);
      v222 = v128;
    }

    v132 = v217;
    v133 = v218;
    v134 = sub_8C564(&v216, v217);
    v135 = __chkstk_darwin(v134);
    v137 = v154 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v138 + 16))(v137, v135);
    sub_13A42C(v131, v137, &v222, v132, v133);
    sub_68CD0(&v216);
  }

  else
  {
    sub_69198(&v213, &unk_3BDC90, &unk_2E5620);
    v128 = _swiftEmptyArrayStorage;
  }

  sub_6932C(v224, &v219, &unk_3BDC90, &unk_2E5620);
  v214 = v220;
  v213 = v219;
  v215 = v221;
  if (*(&v220 + 1))
  {
    sub_68D1C(&v213, &v216);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v222 = v128;
    if ((v139 & 1) == 0)
    {
      v128 = sub_5C28C(0, v128[2] + 1, 1, v128);
      v222 = v128;
    }

    v141 = v128[2];
    v140 = v128[3];
    if (v141 >= v140 >> 1)
    {
      v222 = sub_5C28C((v140 > 1), v141 + 1, 1, v128);
    }

    v142 = v217;
    v143 = v218;
    v144 = sub_8C564(&v216, v217);
    v145 = __chkstk_darwin(v144);
    v147 = v154 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v148 + 16))(v147, v145);
    sub_13A42C(v141, v147, &v222, v142, v143);
    sub_68CD0(&v216);
  }

  else
  {
    sub_69198(&v213, &unk_3BDC90, &unk_2E5620);
  }

  sub_6620C(&unk_3BDC90, &unk_2E5620);
  swift_arrayDestroy();
  v149 = sub_2C4D28();
  v150 = v187;
  v187[3] = v149;
  v150[4] = &protocol witness table for CompoundAction;
  sub_720C8(v150);
  sub_2C4D18();
  (*(v122 + 8))(v113, v199);
  v151 = *(v196 + 8);
  v152 = v197;
  v151(v204, v197);
  v151(v203, v152);
  (*(v182 + 8))(v181, v183);
  return sub_13A590(v184, type metadata accessor for SeriesRoomListHeaderComponentModel);
}

uint64_t SeriesRoomListHeaderSegmentedItem.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v59 = sub_2BF408();
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v49 - v5;
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_2C21D8();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v65 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2C2258();
  v11 = *(v56 - 8);
  __chkstk_darwin(v56);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C2168();
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3C15B0, &unk_2ECA80);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for SeriesRoomPageIntent(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  v24 = v2;
  sub_691F8(v2 + *(v23 + 32), v67);
  sub_6620C(&qword_3C0C00, &qword_2ECA90);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (!v25)
  {
    v39 = 1;
    v26(v18, 1, 1, v19);
    sub_69198(v18, &qword_3C15B0, &unk_2ECA80);
    v40 = v66;
    goto LABEL_25;
  }

  v26(v18, 0, 1, v19);
  sub_13A52C(v18, v22);
  v27 = v22[1];
  v52 = *v22;
  v53 = v22;
  v28 = *(v11 + 104);
  v54 = v13;
  v28(v13, enum case for Metrics.IdType.itsId(_:), v56);
  (*(v57 + 13))(v65, enum case for Metrics.ImpressionType.filter(_:), v58);
  v29 = *(v23 + 28);
  v30 = v64;
  v31 = *(v64 + 16);
  v56 = v24;
  v57 = v31;
  v32 = v59;
  v31(v8, v24 + v29, v59);
  v33 = *(v30 + 88);
  v34 = v8;
  v35 = v8;
  v36 = v32;
  v37 = v33(v35, v32);
  v38 = enum case for ContentKind.pdf(_:);
  v58 = v27;
  if (v37 == enum case for ContentKind.pdf(_:))
  {

    v51 = 0xE300000000000000;
  }

  else
  {
    if (v37 == enum case for ContentKind.audiobook(_:))
    {

      sub_2C2278();
    }

    else if (v37 == enum case for ContentKind.regularBook(_:))
    {

      sub_2C2288();
    }

    else
    {
      if (v37 != enum case for ContentKind.manga(_:))
      {
        v51 = 0xEC0000006B6F6F62;
        if (v37 == enum case for ContentKind.unknownBook(_:))
        {
        }

        else
        {
          v50 = *(v64 + 8);

          v50(v34, v36);
        }

        goto LABEL_12;
      }

      sub_2C2298();
    }

    v51 = v41;
  }

LABEL_12:
  v42 = v56;
  v43 = v60;
  v57(v60, v56 + v29, v36);
  v44 = v33(v43, v36);
  if (v44 == v38)
  {
    v45 = v53;
  }

  else
  {
    v45 = v53;
    if (v44 != enum case for ContentKind.audiobook(_:) && v44 != enum case for ContentKind.regularBook(_:) && v44 != enum case for ContentKind.manga(_:) && v44 != enum case for ContentKind.unknownBook(_:))
    {
      v57(v55, v42 + v29, v36);
      sub_2C5928();
      (*(v64 + 8))(v43, v36);
    }
  }

  v46 = v61;
  sub_2C2158();
  v40 = v66;
  sub_2C2138();
  (*(v62 + 8))(v46, v63);
  sub_13A590(v45, type metadata accessor for SeriesRoomPageIntent);
  v39 = 0;
LABEL_25:
  v47 = sub_2C5018();
  return (*(*(v47 - 8) + 56))(v40, v39, 1, v47);
}

uint64_t SeriesRoomListHeaderSegmentedItem.kindForAnalytics.getter()
{
  v1 = sub_2BF408();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 28), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ContentKind.pdf(_:))
  {
    return 6710384;
  }

  if (v6 == enum case for ContentKind.audiobook(_:))
  {
    return sub_2C2278();
  }

  if (v6 == enum case for ContentKind.regularBook(_:))
  {
    return sub_2C2288();
  }

  if (v6 == enum case for ContentKind.manga(_:))
  {
    return sub_2C2298();
  }

  v8 = v6;
  result = 0x206E776F6E6B6E55;
  if (v8 != enum case for ContentKind.unknownBook(_:))
  {
    (*(v2 + 8))(v4, v1);
    return 0x206E776F6E6B6E55;
  }

  return result;
}

uint64_t SeriesRoomListHeaderSegmentedItem.titleForAnalytics.getter()
{
  v1 = sub_2BF408();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) + 28);
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for ContentKind.pdf(_:))
  {
    return 4605008;
  }

  if (v10 == enum case for ContentKind.audiobook(_:))
  {
    return 0x6F6F626F69647541;
  }

  if (v10 == enum case for ContentKind.regularBook(_:))
  {
    return 0x736B6F6F42;
  }

  if (v10 == enum case for ContentKind.manga(_:))
  {
    return 0x61676E614DLL;
  }

  if (v10 == enum case for ContentKind.unknownBook(_:))
  {
    return 0x206E776F6E6B6E55;
  }

  v9(v4, v0 + v8, v1);
  v12 = sub_2C5928();
  (*(v2 + 8))(v7, v1);
  return v12;
}

uint64_t SeriesRoomListHeaderSegmentedItem.id.getter()
{
  v1 = sub_2BF408();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) + 28);
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for ContentKind.pdf(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for ContentKind.audiobook(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for ContentKind.regularBook(_:))
  {
    return 0xD000000000000011;
  }

  if (v10 == enum case for ContentKind.manga(_:))
  {
    return 0xD000000000000012;
  }

  if (v10 == enum case for ContentKind.unknownBook(_:))
  {
    return 0xD000000000000018;
  }

  v9(v4, v0 + v8, v1);
  v12 = sub_2C5928();
  (*(v2 + 8))(v7, v1);
  return v12;
}

uint64_t ContentKind.segmentedItemKindForAnalytics.getter()
{
  v1 = v0;
  v2 = sub_2BF408();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ContentKind.pdf(_:))
  {
    return 6710384;
  }

  if (v7 == enum case for ContentKind.audiobook(_:))
  {
    return sub_2C2278();
  }

  if (v7 == enum case for ContentKind.regularBook(_:))
  {
    return sub_2C2288();
  }

  if (v7 == enum case for ContentKind.manga(_:))
  {
    return sub_2C2298();
  }

  v9 = v7;
  result = 0x206E776F6E6B6E55;
  if (v9 != enum case for ContentKind.unknownBook(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0x206E776F6E6B6E55;
  }

  return result;
}

uint64_t SeriesRoomListHeaderSegmentedItem.localizableTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C5418();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C5288();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BF408();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  (*(v11 + 16))(v13, v1 + *(v14 + 28), v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for ContentKind.pdf(_:))
  {
    return sub_2BFDC8();
  }

  v17 = a1;
  if (v15 == enum case for ContentKind.audiobook(_:) || v15 == enum case for ContentKind.regularBook(_:) || v15 == enum case for ContentKind.manga(_:) || v15 == enum case for ContentKind.unknownBook(_:))
  {
    sub_2C5278();
    (*(v4 + 104))(v6, enum case for LocalizerLookupStrategy.default(_:), v3);
    sub_2BFD98();
    (*(v4 + 8))(v6, v3);
    return (*(v18 + 8))(v9, v7);
  }

  else
  {
    sub_2BFDC8();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_13A03C@<X0>(unint64_t *a1@<X8>)
{
  result = SeriesRoomListHeaderSegmentedItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_13A064(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_2BF408();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  v11 = *(v4 + 16);
  v11(v9, a1 + *(v10 + 28), v3);
  v19 = v4;
  v12 = *(v4 + 88);
  v13 = v12(v9, v3);
  v14 = enum case for ContentKind.pdf(_:);
  if (v13 == enum case for ContentKind.pdf(_:))
  {
    goto LABEL_2;
  }

  if (v13 == enum case for ContentKind.audiobook(_:))
  {
    v15 = 1;
    goto LABEL_9;
  }

  if (v13 == enum case for ContentKind.regularBook(_:))
  {
    goto LABEL_6;
  }

  if (v13 != enum case for ContentKind.manga(_:))
  {
    if (v13 != enum case for ContentKind.unknownBook(_:))
    {
      (*(v19 + 8))(v9, v3);
LABEL_2:
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_9;
  }

  v15 = 2;
LABEL_9:
  v11(v6, v20 + *(v10 + 28), v3);
  v16 = v12(v6, v3);
  if (v16 != v14)
  {
    if (v16 == enum case for ContentKind.audiobook(_:))
    {
      v17 = 1;
      return v15 < v17;
    }

    if (v16 == enum case for ContentKind.regularBook(_:))
    {
      goto LABEL_14;
    }

    if (v16 == enum case for ContentKind.manga(_:))
    {
      v17 = 2;
      return v15 < v17;
    }

    if (v16 == enum case for ContentKind.unknownBook(_:))
    {
LABEL_14:
      v17 = 0;
      return v15 < v17;
    }

    (*(v19 + 8))(v6, v3);
  }

  v17 = 0x7FFFFFFFFFFFFFFFLL;
  return v15 < v17;
}

void sub_13A310(uint64_t *a1)
{
  v2 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1812E4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10F9B4(v5);
  *a1 = v3;
}

uint64_t sub_13A3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2200, &unk_2ECA50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13A42C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_720C8(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_68D1C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_13A4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13A52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesRoomPageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13A590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_13A638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13A6A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_2BF408();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_13A7CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_2BF408();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_13A8E0(uint64_t a1)
{
  sub_A63F4();
  if (v1 <= 0x3F)
  {
    sub_13A99C(319);
    if (v2 <= 0x3F)
    {
      sub_2BF408();
      if (v3 <= 0x3F)
      {
        sub_1315A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_13A99C(uint64_t a1)
{
  if (!qword_3C2298)
  {
    sub_2BFDD8();
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3C2298);
    }
  }
}

uint64_t sub_13A9F4()
{
  v1 = v0;
  v2 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C11F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for SwooshItemComponentModel(0) + 32);
  sub_13D2E8(v1 + v9, v4, type metadata accessor for CodeGridItemViewModel);
  v10 = *(v6 + 32);
  v10(v8, v4, v5);
  v11 = sub_2C1198();
  v12 = *(v6 + 8);
  v12(v8, v5);
  result = 0;
  if (v11)
  {
    sub_13D2E8(v1 + v9, v4, type metadata accessor for CodeGridItemViewModel);
    v10(v8, v4, v5);
    v14 = sub_2C11A8();
    v12(v8, v5);
    return v14;
  }

  return result;
}

uint64_t sub_13ABCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v43);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  __chkstk_darwin(v42);
  v5 = &v38 - v4;
  v6 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_6620C(&qword_3C23E0, &unk_2ECF78);
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SwooshItemComponentModel(0);
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v51 = v14 + 40;
  sub_A9708(&v52, (v14 + 40), &unk_3BDC90, &unk_2E5620);
  v15 = *(v12 + 24);
  v16 = sub_2C5018();
  v17 = *(*(v16 - 8) + 56);
  v48 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 28);
  v19 = sub_2BEE38();
  v20 = *(*(v19 - 8) + 56);
  v50 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v49 = a1;
  v22 = sub_72084(a1, v21);
  sub_13D8B0(v22, v23, v24);
  v46 = v11;
  v25 = v47;
  sub_2C67A8();
  if (v25)
  {
    v26 = v48;
    v27 = v51;
    sub_68CD0(v49);
    sub_69198(v27, &qword_3BE370, &qword_2E7520);
    sub_69198(&v14[v26], &qword_3BF898, &unk_2EA240);
    return sub_69198(&v14[v50], &qword_3BF3C0, &unk_2ECCC0);
  }

  else
  {
    v47 = v8;
    v38 = v12;
    v39 = v5;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v55 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v28 = v53;
    *v14 = v52;
    *(v14 + 1) = v28;
    *(v14 + 4) = v54;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v55 = 1;
    v29 = v45;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    v30 = v48;
    sub_A9708(&v52, v51, &qword_3BE370, &qword_2E7520);
    LOBYTE(v52) = 2;
    sub_13D904(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    v31 = v47;
    sub_2C64A8();
    v32 = v44;
    sub_A9708(v31, &v14[v30], &qword_3BF898, &unk_2EA240);
    LOBYTE(v52) = 3;
    sub_13D904(&qword_3C23F0, &qword_3BF3C0, &unk_2ECCC0, sub_13D980);
    v33 = v39;
    sub_2C64A8();
    sub_A9708(v33, &v14[v50], &qword_3BF3C0, &unk_2ECCC0);
    LOBYTE(v52) = 4;
    sub_13DAF8(&qword_3C2408, type metadata accessor for CodeGridItemViewModel, &protocol conformance descriptor for CodeGridItemViewModel);
    v34 = v29;
    v35 = v41;
    v36 = v46;
    sub_2C64A8();
    (*(v32 + 8))(v36, v34);
    sub_13DA34(v35, &v14[*(v38 + 32)], type metadata accessor for CodeGridItemViewModel);
    sub_13D2E8(v14, v40, type metadata accessor for SwooshItemComponentModel);
    sub_68CD0(v49);
    return sub_13DA9C(v14);
  }
}

unint64_t sub_13B314()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000023;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_13B3A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_13DCBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_13B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_13D8B0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_13B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_13D8B0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_13B448(uint64_t a1)
{
  v3 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C11F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13D2E8(v1 + *(a1 + 32), v5, type metadata accessor for CodeGridItemViewModel);
  (*(v7 + 32))(v9, v5, v6);
  sub_2C11D8();
  (*(v7 + 8))(v9, v6);
  sub_72084(v14, v14[3]);
  sub_2BF9F8();
  v11 = v10;
  sub_68CD0(v14);
  return v11;
}

uint64_t sub_13B5FC(uint64_t a1)
{
  v2 = sub_13DAF8(&qword_3C2410, type metadata accessor for SwooshItemComponentModel, &unk_2ECDA0);

  return LibraryAssetStateRequiring.assetIDsToObserveState.getter(a1, v2);
}

uint64_t sub_13B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_69130(v7, a2, &qword_3BDF58, &unk_2E5B70);
}

uint64_t sub_13B730(uint64_t a1)
{
  v3 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C11F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13D2E8(v1 + *(a1 + 32), v5, type metadata accessor for CodeGridItemViewModel);
  (*(v7 + 32))(v9, v5, v6);
  sub_2C11B8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_13B894()
{
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_13DAF8(&qword_3BF440, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  *(v0 + 72) = sub_13DAF8(&qword_3BF448, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t type metadata accessor for SwooshItemComponentModel(uint64_t a1)
{
  result = qword_3C2338;
  if (!qword_3C2338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13BA20(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for CodeGridItemViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_13BBB8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for CodeGridItemViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_13BD3C(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_D7504(319, &qword_3C0940, &qword_3BDF58, &unk_2E5B70);
      if (v3 <= 0x3F)
      {
        sub_D7504(319, &unk_3C2348, &qword_3BF3C8, &qword_2F1770);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CodeGridItemViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_13BF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C85B0;
  if (!qword_3C85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C85B0);
  }

  return result;
}

uint64_t sub_13BFB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v82 = a2;
  v75 = a1;
  v94 = a4;
  v93 = sub_6620C(&qword_3C23B0, &qword_2ECF20);
  __chkstk_darwin(v93);
  v92 = &v67 - v4;
  v5 = sub_2BE9B8();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v89 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  __chkstk_darwin(v7 - 8);
  v86 = &v67 - v8;
  v9 = sub_6620C(&qword_3BF3C8, &qword_2F1770);
  __chkstk_darwin(v9 - 8);
  v88 = &v67 - v10;
  v69 = sub_2C30F8();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C1FA8();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2C33E8();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SwooshItemComponentModel(0);
  v98 = *(v14 - 8);
  v15 = *(v98 + 8);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2C11F8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2C0798();
  v71 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_6620C(&qword_3C23B8, &qword_2ECF28);
  v73 = *(v100 - 8);
  __chkstk_darwin(v100);
  v27 = &v67 - v26;
  v87 = sub_6620C(&qword_3C23C0, &qword_2ECF30);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v70 = &v67 - v28;
  v81 = v14;
  v97 = *(v14 + 32);
  v29 = v75;
  sub_13D2E8(v75 + v97, v18, type metadata accessor for CodeGridItemViewModel);
  v83 = v20;
  v30 = *(v20 + 32);
  v99 = v18;
  v84 = v19;
  v95 = v30;
  v96 = v20 + 32;
  v30(v22, v18, v19);
  sub_13D2E8(v29, &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SwooshItemComponentModel);
  v31 = (v98[80] + 16) & ~v98[80];
  v32 = swift_allocObject();
  v33 = v29;
  sub_13DA34(&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for SwooshItemComponentModel);
  v98 = v22;
  sub_2C07A8();
  v34 = v72;
  sub_2C2B18();
  v35 = sub_13DAF8(&qword_3C23C8, &type metadata accessor for GridItemView, &protocol conformance descriptor for GridItemView);
  v36 = sub_13DAF8(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v37 = v78;
  sub_2C3E88();
  v38 = v34;
  v39 = v37;
  (*(v79 + 8))(v38, v37);
  (*(v71 + 8))(v25, v23);
  sub_6932C(v29, v105, &qword_3BE378, &qword_2E5DB0);
  v40 = v74;
  sub_2C1BF8();
  v101 = v23;
  v102 = v39;
  v41 = v70;
  v103 = v35;
  v104 = v36;
  v42 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_13DAF8(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
  v45 = v100;
  v79 = OpaqueTypeConformance2;
  v78 = v44;
  sub_2C3BD8();
  (*(v77 + 8))(v40, v42);
  sub_69198(v105, &qword_3BE008, &unk_2E5630);
  (*(v73 + 8))(v27, v45);
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2E4110;
  v47 = v82;
  if (v80)
  {
    v48 = v82;
  }

  else
  {

    sub_2C5DD8();
    v49 = sub_2C3718();
    sub_2C0058();

    v50 = v67;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v47, 0);
    (*(v68 + 8))(v50, v69);
    v47 = v105[0];
  }

  v51 = v88;
  v52 = v84;
  v53 = v83;
  if (v47)
  {
    v54 = v99;
    sub_13D2E8(v33 + v97, v99, type metadata accessor for CodeGridItemViewModel);
    v55 = v98;
    v95(v98, v54, v52);
    sub_2C11D8();
    (*(v53 + 8))(v55, v52);
    *(v46 + 56) = sub_2BE968();
    *(v46 + 64) = sub_13DAF8(&qword_3BF460, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    *(v46 + 72) = sub_13DAF8(&unk_3C4420, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    sub_720C8((v46 + 32));
    v56 = v47;
    sub_2BE928();
  }

  else
  {
    *(v46 + 48) = 0u;
    *(v46 + 64) = 0u;
    *(v46 + 32) = 0u;
  }

  *(v46 + 104) = sub_2BECC8();
  *(v46 + 112) = sub_13DAF8(&qword_3BF440, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  *(v46 + 120) = sub_13DAF8(&qword_3BF448, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  sub_720C8((v46 + 80));
  sub_2BEC98();
  v57 = v86;
  sub_6932C(v33 + *(v81 + 28), v86, &qword_3BF3C0, &unk_2ECCC0);
  sub_69130(v57, v51, &qword_3BF3C8, &qword_2F1770);
  v58 = sub_2BEE38();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v51, 1, v58) == 1)
  {
    sub_69198(v51, &qword_3BF3C8, &qword_2F1770);
    *(v46 + 128) = 0u;
    *(v46 + 144) = 0u;
    *(v46 + 160) = 0u;
  }

  else
  {
    *(v46 + 152) = v58;
    *(v46 + 160) = sub_13DAF8(&qword_3BF450, &type metadata accessor for OnDevicePersonalizationPropertyData, &protocol conformance descriptor for OnDevicePersonalizationPropertyData);
    *(v46 + 168) = sub_13DAF8(&qword_3BF458, &type metadata accessor for OnDevicePersonalizationPropertyData, &protocol conformance descriptor for OnDevicePersonalizationPropertyData);
    v60 = sub_720C8((v46 + 128));
    (*(v59 + 32))(v60, v51, v58);
  }

  sub_2BED18();
  v61 = v99;
  sub_13D2E8(v33 + v97, v99, type metadata accessor for CodeGridItemViewModel);
  v62 = v98;
  v95(v98, v61, v52);
  sub_2C11D8();
  (*(v53 + 8))(v62, v52);
  sub_72084(v105, v106);
  sub_2BF3B8();
  v63 = v89;
  sub_2BE9A8();
  sub_68CD0(v105);
  v105[0] = v100;
  v105[1] = v42;
  v105[2] = v79;
  v106 = v78;
  swift_getOpaqueTypeConformance2();
  sub_13DAF8(&qword_3BF428, &type metadata accessor for ContentExposureEvent, &protocol conformance descriptor for ContentExposureEvent);
  v64 = v92;
  v65 = v87;
  sub_2C3D98();
  sub_13D5F4();
  sub_2C3D88();

  sub_13D840(v64);
  (*(v90 + 8))(v63, v91);
  return (*(v85 + 8))(v41, v65);
}

uint64_t sub_13CEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CodeGridItemViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_2C11F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_691F8(a1, v25);
  v13 = type metadata accessor for SwooshItemComponentModel(0);
  sub_13D2E8(a2 + *(v13 + 32), v8, type metadata accessor for CodeGridItemViewModel);
  (*(v10 + 32))(v12, v8, v9);
  LOBYTE(a1) = sub_2C1198();
  (*(v10 + 8))(v12, v9);
  v24[0] = xmmword_2ECB90;
  v14 = type metadata accessor for ContextActionMenuView(0);
  memset(&v24[1], 0, 32);
  a3[3] = v14;
  a3[4] = sub_13DAF8(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  v15 = sub_720C8(a3);
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  sub_691F8(v25, v23);
  sub_C04C8(v24, v22);
  sub_CC804(v23, v22, v15 + v14[5]);
  sub_72084(v25, v25[3]);
  v16 = sub_2BF3B8();
  v18 = v17;
  sub_C12F8(v24);
  v19 = (v15 + v14[6]);
  *v19 = v16;
  v19[1] = v18;
  *(v15 + v14[7]) = (a1 & 1) == 0;
  return sub_68CD0(v25);
}

uint64_t sub_13D13C(uint64_t a1)
{
  v2 = sub_C9C28(*v1, *(v1 + 8));
  sub_13BF60(v2, v3, v4);
  return sub_2BFD18();
}

unint64_t sub_13D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C23A8;
  if (!qword_3C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C23A8);
  }

  return result;
}

uint64_t sub_13D2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13D350()
{
  v1 = type metadata accessor for SwooshItemComponentModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0((v0 + v3));
  if (*(v0 + v3 + 64))
  {
    sub_68CD0((v5 + 40));
  }

  v6 = v1[6];
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[7];
  v10 = sub_2BEE38();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[8];
  v13 = sub_2C11F8();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_13D574@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SwooshItemComponentModel(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_13CEB0(a1, v6, a2);
}

unint64_t sub_13D5F4()
{
  result = qword_3C23D0;
  if (!qword_3C23D0)
  {
    sub_718D4(&qword_3C23B0, &qword_2ECF20);
    sub_718D4(&qword_3C23C0, &qword_2ECF30);
    sub_2BED18();
    sub_718D4(&qword_3C23B8, &qword_2ECF28);
    sub_2C1FA8();
    sub_2C0798();
    sub_2C33E8();
    sub_13DAF8(&qword_3C23C8, &type metadata accessor for GridItemView, &protocol conformance descriptor for GridItemView);
    sub_13DAF8(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_13DAF8(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
    swift_getOpaqueTypeConformance2();
    sub_13DAF8(&qword_3BF428, &type metadata accessor for ContentExposureEvent, &protocol conformance descriptor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C23D0);
  }

  return result;
}

uint64_t sub_13D840(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C23B0, &qword_2ECF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C23E8;
  if (!qword_3C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C23E8);
  }

  return result;
}

uint64_t sub_13D904(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_13D980()
{
  result = qword_3C23F8;
  if (!qword_3C23F8)
  {
    sub_718D4(&qword_3BF3C8, &qword_2F1770);
    sub_13DAF8(&qword_3C2400, &type metadata accessor for OnDevicePersonalizationPropertyData, &protocol conformance descriptor for OnDevicePersonalizationPropertyData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C23F8);
  }

  return result;
}

uint64_t sub_13DA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_13DA9C(uint64_t a1)
{
  v2 = type metadata accessor for SwooshItemComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13DAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13DB50()
{
  sub_718D4(&qword_3C23B0, &qword_2ECF20);
  sub_13D5F4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_13DBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C2418;
  if (!qword_3C2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2418);
  }

  return result;
}

unint64_t sub_13DC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C2420;
  if (!qword_3C2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2420);
  }

  return result;
}

unint64_t sub_13DC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C2428[0];
  if (!qword_3C2428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C2428);
  }

  return result;
}

uint64_t sub_13DCBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000003004E0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000303DD0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_13DE70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_6932C(v2, v11, &unk_3C24B0, &qword_2F2640);
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

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_13DFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2C30F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&unk_3C4360, qword_2ED140);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_6932C(v2 + *(a1 + 36), &v15 - v10, &unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2BFF28();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_13E1E8(uint64_t a1)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    v11 = sub_113C80(v8, v9, 0);
    (*(v4 + 8))(v6, v3, v11);
    return v13;
  }

  return v8;
}

uint64_t PerformActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_2BFF28();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  v19 = *(v2 + *(a1 + 44));
  sub_13DE70(v22);
  sub_13DFE4(a1, v6);
  v15 = sub_13E1E8(a1);
  v19(v22, v6, v15, v16);

  (*(v4 + 8))(v6, v20);
  sub_13E580(v22);
  sub_16A4E4();
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_16A4E4();
  return (v17)(v14, v7);
}

uint64_t sub_13E580(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BC840, &qword_2ED0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_13E638(uint64_t a1)
{
  sub_CEAF8(319, &qword_3BC838, &qword_3BC840, &qword_2ED0A0);
  if (v1 <= 0x3F)
  {
    sub_13E8F0(319);
    if (v2 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3C1700, &qword_3BDB00, &qword_2E6E10);
      if (v3 <= 0x3F)
      {
        sub_85DC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_13E730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_13E810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7B8, &unk_2ED100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_13E8F0(uint64_t a1)
{
  if (!qword_3BC848)
  {
    sub_2BFF28();
    v1 = sub_2C2558();
    if (!v2)
    {
      atomic_store(v1, &qword_3BC848);
    }
  }
}

void sub_13E9A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();

  *a2 = *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle);
}

void sub_13EAA8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_13F91C();
    sub_2BE6E8();
  }
}

uint64_t sub_13EB8C()
{
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();
}

double sub_13EC08(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_13F91C();
    sub_2BE6E8();
  }

  return result;
}

void sub_13ED14()
{
  v1 = v0;
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();

  v2 = *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender);
  if (v2 == *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant))
  {
    *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2BE6E8();
  }
}

uint64_t sub_13EE38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_13F91C();
  sub_2BE6F8();

  v3 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  return sub_E452C(v5 + v3, a1);
}

uint64_t sub_13EED0(uint64_t a1, uint64_t a2)
{
  sub_E452C(a2, v5);
  v3 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  sub_DD334(v5, a1 + v3);
  swift_endAccess();
  sub_13ED14();
  return sub_13FA10(v5);
}

uint64_t sub_13EF68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();

  return *(v2 + *a2);
}

void sub_13EFD8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) = a1 & 1;

    sub_13ED14();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_13F91C();
    sub_2BE6E8();
  }
}

uint64_t sub_13F11C()
{
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();
}

void sub_13F198(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__engagementWTRModel) = a2;
}

double sub_13F1DC()
{
  swift_getKeyPath();
  sub_13F91C();
  sub_2BE6F8();

  return *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight);
}

void sub_13F254(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight) == a1)
  {
    *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_13F91C();
    sub_2BE6E8();
  }
}

id sub_13F354()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  v19[0] = v0;
  sub_13F91C();
  sub_2BE6F8();

  v14 = *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant);
  swift_getKeyPath();
  v19[0] = v0;
  sub_2BE6F8();

  v13 = *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle);
  swift_getKeyPath();
  sub_2BE6F8();

  v2 = *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded);
  swift_getKeyPath();
  v19[0] = v0;
  sub_2BE6F8();

  v3 = *(v0 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph);
  swift_getKeyPath();

  sub_2BE6F8();

  v4 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  sub_E452C(v1 + v4, v19);
  swift_getKeyPath();
  *&v17[0] = v1;
  sub_2BE6F8();

  v5 = *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender);
  swift_getKeyPath();
  *&v17[0] = v1;
  sub_2BE6F8();

  v6 = *(v1 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight);
  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *&v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__engagementWTRModel] = 0;
  swift_unknownObjectWeakInit();
  sub_2BE728();
  v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant] = v14;
  v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle] = v13;
  v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded] = v2;
  *&v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph] = v3;
  sub_E452C(v19, v17);

  sub_13FA10(v8);
  v9 = v18;
  v10 = v17[1];
  *v8 = v17[0];
  *(v8 + 16) = v10;
  *(v8 + 32) = v9;
  v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender] = v5;
  *&v7[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight] = v6;
  v16.receiver = v7;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");

  sub_13FA10(v19);
  return v11;
}

uint64_t type metadata accessor for CardAuxiliaryNavigationBarViewModel(uint64_t a1)
{
  result = qword_3C2538;
  if (!qword_3C2538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13F7B0(uint64_t a1)
{
  result = sub_2BE738();
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

unint64_t sub_13F91C()
{
  result = qword_3C2548;
  if (!qword_3C2548)
  {
    type metadata accessor for CardAuxiliaryNavigationBarViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2548);
  }

  return result;
}

void sub_13F97C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph) = *(v0 + 24);
}

uint64_t sub_13FA10(uint64_t a1)
{
  v2 = sub_6620C(&unk_3C2550, &qword_2E4E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_13FA88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight) = result;
  return result;
}

id sub_13FB28(uint64_t a1)
{
  v2 = type metadata accessor for CardAuxiliaryNavigationBarViewModel(0);
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo];
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *&v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__engagementWTRModel] = 0;
  swift_unknownObjectWeakInit();
  sub_2BE728();
  v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant] = 0;
  v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle] = 0;
  v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded] = 1;
  *&v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph] = a1;
  sub_E452C(v12, v10);

  sub_13FA10(v4);
  v5 = v11;
  v6 = v10[1];
  *v4 = v10[0];
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender] = 0;
  *&v3[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight] = 0;
  v9.receiver = v3;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_13FA10(v12);
  return v7;
}

void sub_13FC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2C58C8();
  v7 = v6;
  v8._rawValue = &off_389FC0;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v9 = sub_2C63E8(v8, v12);

  if (!v9)
  {
    if (((a2 == 3) ^ *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_13F91C();
      sub_2BE6E8();
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__showTitle) = a2 == 3;
    }

    sub_13ED14();
    if (a2 == 3)
    {
      if (*(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant))
      {
        v11 = swift_getKeyPath();
        __chkstk_darwin(v11);
        sub_13F91C();
        sub_2BE6E8();
      }

      else
      {
        *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant) = 0;
      }
    }

    else
    {
      swift_getKeyPath();
      sub_13F91C();
      sub_2BE6F8();

      *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant) = *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant);
    }
  }
}