double sub_100339770(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v49 = v48 - v10;
  v11 = sub_1007504F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  v19 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v21 = v48 - v20;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100743644();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_100752DF4();
  v50 = v21;
  sub_100752EB4();
  if ((sub_1007435E4() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_100743634())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    (*(v12 + 8))(v14, v11);
    sub_1007435E4();
  }

  v22 = sub_100743604();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_100743614();
    if (v24)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v25 = sub_100750534();
      sub_10000D0FC(v25, qword_100981920);
      v26 = sub_10074F3F4();
      v54 = v26;
      v55 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_10000D134(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();
    }

    v28 = sub_100743604();
    v48[1] = a6;
    v29 = [a6 traitCollection];
    v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];
    v31 = [v28 length];
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v29;
    *(v32 + 32) = v30;
    *(v32 + 40) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1002B1424;
    *(v33 + 24) = v32;
    v55 = sub_1002B1408;
    v56 = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v54 = &unk_100871A38;
    v34 = _Block_copy(aBlock);
    v35 = v29;
    v36 = v30;

    [v28 enumerateAttributesInRange:0 options:v31 usingBlock:{0x100000, v34}];

    _Block_release(v34);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v37 = qword_1009213F0;
      v28 = v36;
      if (v37 == -1)
      {
LABEL_12:
        v38 = sub_100750534();
        v39 = sub_10000D0FC(v38, qword_100981908);
        v40 = *(v38 - 8);
        v41 = v49;
        (*(v40 + 16))(v49, v39, v38);
        (*(v40 + 56))(v41, 0, 1, v38);
        v42 = sub_10074F3F4();
        v54 = v42;
        v55 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v43 = sub_10000D134(aBlock);
        (*(*(v42 - 8) + 104))(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10000C8CC(v41, &unk_100928A40, qword_1007A6630);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v44 = sub_100750B04();
        sub_10000D0FC(v44, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v44, qword_1009833F0);
        sub_100750554();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_100753B94();
  v46 = v45;
  (*(v51 + 8))(v50, v52);

  return v46;
}

double sub_10033A0E0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v114 = a6;
  ObjectType = a2;
  v8 = sub_100746D54();
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074CD14();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v108 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100745FF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v111 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = sub_100746D34();
  v105 = *(v20 - 8);
  v106 = v20;
  __chkstk_darwin(v20);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v84 - v27;
  v29 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v92 = *(v29 - 8);
  v93 = v29;
  __chkstk_darwin(v29);
  v31 = &v84 - v30;
  sub_10000C824(a1, v121);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100743804();
  swift_dynamicCast();
  (*(v26 + 16))(v28, ObjectType, v25);
  v32 = v114;
  sub_100752DF4();
  v91 = v31;
  sub_100752EB4();
  v33 = v121[5];
  v34 = sub_1007437F4();
  sub_1007437C4();
  ObjectType = swift_getObjectType();
  sub_10029F770(v34, v19, v32, v24);

  v35 = *(v15 + 8);
  v90 = v19;
  v35(v19, v14);
  v36 = sub_100750F34();
  swift_allocObject();
  v37 = sub_100750F14();
  swift_allocObject();
  v87 = sub_100750F14();
  swift_allocObject();
  v86 = sub_100750F14();
  v104 = v24;
  sub_100746D14();
  v113 = v36;
  v38 = v111;
  swift_allocObject();
  v39 = sub_100750F14();
  sub_1007437C4();
  v40 = (*(v15 + 88))(v38, v14);
  v88 = v37;
  v85 = v39;
  if (v40 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v40 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v40 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v47 = v108;
      if (qword_100921260 != -1)
      {
        swift_once();
      }

      v48 = v110;
      v49 = sub_10000D0FC(v110, qword_100981458);
      (*(v109 + 16))(v47, v49, v48);
      v46 = 4;
      goto LABEL_13;
    }

    v43 = v108;
    if (qword_100921258 != -1)
    {
      swift_once();
    }

    v44 = v110;
    v45 = sub_10000D0FC(v110, qword_100981440);
    (*(v109 + 16))(v43, v45, v44);
    v35(v38, v14);
    goto LABEL_9;
  }

  if (qword_100921258 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v41 = v110;
    v42 = sub_10000D0FC(v110, qword_100981440);
    (*(v109 + 16))(v108, v42, v41);
LABEL_9:
    v46 = 1;
LABEL_13:
    v111 = v46;
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    v50 = v114;
    v51 = [v114 traitCollection];
    v52 = sub_100753C14();

    sub_1007437D4();
    v53 = sub_10074F3F4();
    v121[3] = v53;
    v100 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v121[4] = v100;
    v54 = sub_10000D134(v121);
    v107 = v33;
    v55 = *(v53 - 8);
    v56 = *(v55 + 104);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v97 = v55 + 104;
    v98 = v56;
    v56(v54);
    v57 = v52;
    sub_10074FC74();
    sub_10000C620(v121);
    v58 = v101;
    v84 = v57;
    sub_10074CD04();
    sub_10074CCE4();
    v59 = v103;
    v33 = v102[1];
    v33(v58, v103);
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v110, qword_100981470);
    v60 = [v50 traitCollection];
    v61 = sub_100753C14();

    sub_1007437E4();
    v120[3] = v53;
    v120[4] = v100;
    v62 = sub_10000D134(v120);
    v98(v62, v99, v53);
    v63 = v61;
    sub_10074FC74();
    sub_10000C620(v120);
    sub_10074CD04();
    sub_10074CCE4();
    v33(v58, v59);
    v64 = sub_1007437A4();
    v65 = v64;
    if (v64 >> 62)
    {
      v76 = v64;
      v77 = sub_100754664();
      v65 = v76;
      v66 = v77;
      v102 = v63;
      if (!v77)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v63;
      if (!v66)
      {
        goto LABEL_29;
      }
    }

    v67 = v65;
    v111 = type metadata accessor for PrivacyCategoryView();
    if (v66 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v68 = 0;
  v69 = v67;
  v70 = _swiftEmptyArrayStorage;
  do
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = sub_100754574();
    }

    else
    {
      v71 = *(v69 + 8 * v68 + 32);
    }

    v73 = sub_1002EA814(v71, v114, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_100254E80(0, v70[2] + 1, 1, v70);
    }

    v75 = v70[2];
    v74 = v70[3];
    if (v75 >= v74 >> 1)
    {
      v70 = sub_100254E80((v74 > 1), v75 + 1, 1, v70);
    }

    ++v68;

    v118 = v113;
    v119 = &protocol witness table for LayoutViewPlaceholder;
    *&v117 = v73;
    v70[2] = v75 + 1;
    sub_100012160(&v117, &v70[5 * v75 + 4]);
    v69 = v67;
  }

  while (v66 != v68);
LABEL_29:

  v78 = [v114 traitCollection];
  sub_100751364();

  v79 = v113;
  swift_allocObject();
  v80 = sub_100750F14();
  (*(v105 + 16))(v89, v104, v106);
  v118 = v79;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  *&v117 = v88;
  v116[23] = v79;
  v116[24] = &protocol witness table for LayoutViewPlaceholder;
  v116[19] = &protocol witness table for LayoutViewPlaceholder;
  v116[20] = v87;
  v116[18] = v79;
  v116[14] = &protocol witness table for LayoutViewPlaceholder;
  v116[15] = v86;
  v116[13] = v79;
  v116[9] = &protocol witness table for LayoutViewPlaceholder;
  v116[10] = v80;
  ObjectType = v80;
  v116[8] = v79;
  v116[5] = v85;
  sub_10000C824(v121, v116);
  sub_10000C824(v120, &v115);

  sub_1007437C4();
  v81 = v94;
  sub_100746D44();
  sub_1003495BC(&unk_1009400D0, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v82 = v96;
  sub_100750404();

  (*(v95 + 8))(v81, v82);
  sub_10000C620(v120);
  sub_10000C620(v121);
  (*(v109 + 8))(v108, v110);
  (*(v105 + 8))(v104, v106);
  (*(v92 + 8))(v91, v93);

  return a3;
}

double sub_10033AE8C(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v49 = a5;
  v41 = a4;
  v42 = a3;
  v38 = sub_100754724();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100750304();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100751344();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100751374();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749A94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v46 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v43 = *(v46 - 8);
  v22 = __chkstk_darwin(v46);
  v24 = &v36 - v23;
  (*(v19 + 16))(v21, v42, v18, v22);
  sub_100752DF4();
  v42 = v24;
  sub_100752EB4();
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_100754324();
  v25 = v17;
  v26 = v39;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v40);
  *v9 = UIFontTextStyleBody;
  v27 = v45;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v45);
  v52 = sub_100750B04();
  v53 = &protocol witness table for StaticDimension;
  sub_10000D134(v51);
  v50[3] = v27;
  v50[4] = &protocol witness table for FontSource;
  v28 = sub_10000D134(v50);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v44;
    sub_100751354();
    sub_100751304();
    (*(v47 + 8))(v30, v48);
    v31 = v52;
    sub_10000C888(v51, v52);
    v32 = v36;
    sub_100536120(v31);
    v33 = v49;
    sub_100750564();
    (*(v37 + 8))(v32, v38);
    sub_10000C620(v51);
  }

  else
  {
    v34 = v44;
    sub_100751354();
    v33 = v49;
    sub_100751334();
    (*(v47 + 8))(v34, v48);
  }

  swift_getObjectType();
  sub_100229A94(v33);
  (*(v43 + 8))(v42, v46);
  return a1;
}

double sub_10033B5FC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a4;
  v38 = a5;
  v9 = sub_100754724();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100751374();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v37 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v33 - v24;
  (*(v19 + 16))(v21, v36, v18, v23);
  sub_100752DF4();
  sub_100752EB4();
  swift_getObjectType();
  sub_10024CF88(a6, v17);
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_100754324();
  v26 = (*(v12 + 8))(v14, v11);
  v26.n128_f64[0] = a1;
  v27 = sub_10024E818(a6, v26, a2);
  if (v21)
  {
    v28 = v27;
    sub_100751304();
    v29 = v42;
    sub_10000C888(v41, v42);
    v30 = v33;
    sub_100536120(v29);
    sub_100750564();
    (*(v34 + 8))(v30, v35);
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
    sub_10000C620(v41);
  }

  else
  {
    sub_100753BD4();
    v28 = v31;
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
  }

  return v28;
}

double sub_10033BAB0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_100754724();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007504F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744484();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_100752DF4();
  v63 = v23;
  sub_100752EB4();
  if ((sub_1007435E4() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_100744474();
  v26 = v66;
  if (v25)
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_1007435E4();
    if ((sub_1007435E4() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_10074F2A4();
      sub_100750504();
      sub_1007504B4();
      v29(v16, v13);
    }
  }

  v30 = sub_100743604();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_100743614();
    if (v32)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v33 = sub_100750534();
      sub_10000D0FC(v33, qword_100981920);
      v34 = sub_10074F3F4();
      v68 = v34;
      v69 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_10000D134(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();

      if (qword_100921F08 != -1)
      {
        swift_once();
      }

      v36 = sub_100750B04();
      sub_10000D0FC(v36, qword_1009833D8);
      sub_1007502D4();
      sub_100750564();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_100921F18 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v36, qword_100983408);
      sub_1007502D4();
      sub_100750564();
      v37(v26, v38);
      if (qword_100921F10 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v36, qword_1009833F0);
      sub_1007502D4();
      sub_100750564();
      v37(v26, v38);
    }

    v39 = sub_100743604();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1002B1424;
    *(v44 + 24) = v43;
    v69 = sub_1002B1408;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v68 = &unk_100871920;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_1009213F0;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_100750534();
        v50 = sub_10000D0FC(v49, qword_100981908);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_10074F3F4();
        v68 = v53;
        v69 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v54 = sub_10000D134(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10000C8CC(v52, &unk_100928A40, qword_1007A6630);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v55 = sub_100750B04();
        sub_10000D0FC(v55, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v55, qword_1009833F0);
        sub_100750554();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_100753B94();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_10033C6A0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v9 = sub_100748494();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007484B4();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10074CD14();
  v14 = *(v40 - 8);
  __chkstk_darwin(v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v41 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v21 = *(v41 - 8);
  __chkstk_darwin(v41);
  v23 = &v40 - v22;
  sub_10000C824(a1, v49);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007445B4();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_100752DF4();
  sub_100752EB4();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  sub_10000D0FC(v24, qword_100981410);
  v25 = [v47 traitCollection];
  v26 = sub_100753C14();

  sub_1007445A4();
  sub_100743E94();

  v27 = sub_100743074();

  v28 = sub_10074F3F4();
  v50 = v28;
  v51 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_10000D134(v49);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  v31 = v26;
  sub_10074FC74();
  sub_10000C620(v49);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v14 + 8))(v16, v40);
  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v32 = v43;
  v33 = sub_10000D0FC(v43, qword_10097DD00);
  (*(v42 + 16))(v44, v33, v32);
  v34 = v50;
  v35 = v51;
  v36 = sub_10000C888(v49, v50);
  v48[3] = v34;
  v48[4] = *(v35 + 8);
  v37 = sub_10000D134(v48);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  sub_1007484A4();
  sub_1003495BC(&unk_100923AC0, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v38 = v46;
  sub_100750404();

  (*(v45 + 8))(v13, v38);
  (*(v21 + 8))(v23, v41);
  sub_10000C620(v49);

  return a3;
}

void sub_10033CD20(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v70 = a7;
  v73 = a3;
  v74 = sub_10074CD14();
  v57 = *(v74 - 8);
  __chkstk_darwin(v74);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1007484E4();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100748504();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v65 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v22 = &v56 - v21;
  sub_10000C824(a1, v82);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007445F4();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_100752DF4();
  v61 = v22;
  sub_100752EB4();
  v23 = v85;
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v13, qword_1009813F8);
  v25 = [v70 traitCollection];
  v75 = sub_100753C14();

  (*(v14 + 16))(v16, v24, v13);
  v59 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v26 = objc_allocWithZone(v59);
  v27 = sub_10004DA8C(v16, 0, 0, 1);
  sub_1007445E4();
  v28 = sub_100743EA4();
  sub_1001D3738(v28, sub_100349614);
  v30 = v29;

  v31 = sub_100743E94();
  v58 = v27;
  sub_10004DF04(v31, 0, v30);

  v32 = sub_1007445D4();
  v33 = v32;
  if (v32 >> 62)
  {
    v54 = v32;
    v55 = sub_100754664();
    v33 = v54;
    v34 = v55;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v23;
  if (v34)
  {
    if (v34 < 1)
    {
      __break(1u);
      return;
    }

    v35 = 0;
    v72 = v33 & 0xC000000000000001;
    v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v36 = (v57 + 8);
    v37 = _swiftEmptyArrayStorage;
    v73 = v33;
    do
    {
      if (v72)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_10074CFD4();
      sub_100743E94();

      v38 = v75;
      v39 = sub_100743074();

      v40 = sub_10074F3F4();
      v83 = v40;
      v84 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v41 = sub_10000D134(v82);
      (*(*(v40 - 8) + 104))(v41, v71, v40);
      v42 = v39;
      v43 = v38;
      sub_10074FC74();
      sub_10000C620(v82);
      sub_10074CCD4();
      sub_10074CCE4();
      (*v36)(v10, v74);
      sub_10000C824(v82, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100254FA8(0, v37[2] + 1, 1, v37);
      }

      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        v37 = sub_100254FA8((v44 > 1), v45 + 1, 1, v37);
      }

      ++v35;

      sub_10000C620(v82);
      v37[2] = v45 + 1;
      sub_100012160(&v79, &v37[5 * v45 + 4]);
    }

    while (v34 != v35);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v46 = [v70 traitCollection];
  sub_100751364();

  v47 = sub_100750F34();
  swift_allocObject();
  v48 = sub_100750F14();
  if (qword_100920B80 != -1)
  {
    swift_once();
  }

  v49 = v64;
  v50 = sub_10000D0FC(v64, qword_100980170);
  (*(v62 + 16))(v66, v50, v49);
  sub_1007445C4();
  v83 = v59;
  v84 = &protocol witness table for UIView;
  v82[0] = v58;
  v51 = v58;
  sub_100157548(v37);

  v80 = v47;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  *&v79 = v48;
  v77 = v47;
  v76 = v48;
  swift_retain_n();
  v52 = v67;
  sub_1007484F4();
  sub_1003495BC(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v53 = v69;
  sub_100750404();

  (*(v68 + 8))(v52, v53);
  (*(v63 + 8))(v61, v65);
}

double sub_10033D778(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_1007486F4();
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100748714();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v30 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v30 - 8);
  v19 = __chkstk_darwin(v30);
  v21 = &v29 - v20;
  (*(v15 + 16))(v17, a4, v14, v19);
  sub_100752DF4();
  sub_100752EB4();
  sub_10011F99C(a6, v10);
  swift_getObjectType();
  sub_100120D24(a6);
  v22 = sub_100750F34();
  swift_allocObject();
  v23 = sub_100750F14();
  v36 = v22;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  swift_allocObject();
  v24 = sub_100750F14();
  v33 = v22;
  v34 = &protocol witness table for LayoutViewPlaceholder;
  v32 = v24;
  sub_100748704();
  sub_1003495BC(&qword_10092EDE0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  v25 = v31;
  sub_100750404();
  v27 = v26;
  (*(v11 + 8))(v13, v25);
  (*(v18 + 8))(v21, v30);
  return v27;
}

double sub_10033DB0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v32 = a7;
  v31 = a3;
  v33 = sub_100743184();
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  sub_10000C824(a1, &v34);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744C54();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_100752DF4();
  sub_100752EB4();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v22 = v34;
  sub_10074B274();
  if (sub_100743154())
  {
    v23 = sub_100744C24();
  }

  else
  {
    v23 = sub_100744C44();
  }

  v25 = v23;
  v26 = v24;
  v27 = v32;
  swift_getObjectType();
  v28.n128_f64[0] = a4;
  v29 = sub_100205448(v25, v26, v27, v28, a5);

  (*(v11 + 8))(v13, v33);
  (*(v19 + 8))(v21, v18);

  return v29;
}

double sub_10033DE44(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v54 = sub_100748B54();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100748B74();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10074CD14();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v55 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = v49 - v17;
  sub_10000C824(a1, &v69);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744D14();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_100752DF4();
  v51 = v18;
  sub_100752EB4();
  v19 = v72;
  [a5 pageMarginInsets];
  sub_100753BA4();
  v20 = [a5 traitCollection];
  LOBYTE(v13) = sub_1007537D4();

  v21 = 4;
  if ((v13 & 1) == 0)
  {
    v21 = 1;
  }

  v60 = v21;
  v50 = v19;
  sub_100744D04();
  v49[1] = v22;
  v23 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  sub_10000D0FC(v24, qword_10097F928);
  v25 = [a5 traitCollection];
  sub_100753C14();

  v26 = sub_10074F3F4();
  v61 = a5;
  v27 = v26;
  v70 = v26;
  v28 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v71 = v28;
  v29 = sub_10000D134(&v69);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v31 = *(v27 - 8);
  v49[0] = v23;
  v32 = *(v31 + 104);
  v32(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_10074FC74();
  sub_10000C620(&v69);
  sub_10074CD04();
  sub_10074CCE4();
  v33 = *(v63 + 8);
  v63 += 8;
  v33(v12, v62);
  v50 = sub_100744CF4();
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v24, qword_10097F940);
  v34 = [v61 traitCollection];
  sub_100753C14();

  v67 = v27;
  v68 = v28;
  v35 = sub_10000D134(v66);
  v32(v35, v30, v27);
  sub_10074FC74();
  sub_10000C620(v66);
  sub_10074CD04();
  sub_10074CCE4();
  v33(v12, v62);
  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = sub_10000D0FC(v54, qword_10097F910);
  (*(v52 + 16))(v56, v37, v36);
  v38 = v70;
  v39 = v71;
  v40 = sub_10000C888(&v69, v70);
  v65[3] = v38;
  v65[4] = *(v39 + 8);
  v41 = sub_10000D134(v65);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v67;
  v43 = v68;
  v44 = sub_10000C888(v66, v67);
  v64[3] = v42;
  v64[4] = *(v43 + 8);
  v45 = sub_10000D134(v64);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v46 = v57;
  sub_100748B64();
  sub_1003495BC(&unk_100933210, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v47 = v59;
  sub_100750404();
  (*(v58 + 8))(v46, v47);
  (*(v53 + 8))(v51, v55);
  sub_10000C620(v66);
  sub_10000C620(&v69);

  return a3;
}

double sub_10033E740(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_100744E04();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10000C824(a1, v26);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744E34();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  if (sub_100744DC4())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_100744E24();
  v22 = [v19 traitCollection];
  sub_100744DE4();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_10033EA3C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  sub_10000C824(a1, v21);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100745764();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_100752DF4();
  sub_100752EB4();
  v18 = v21[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v21[0] = sub_1002EA814(v18, a6, v19);
  sub_100750F34();
  sub_100750404();
  (*(v15 + 8))(v17, v14);

  return a3;
}

double sub_10033ECA4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  v13 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742954();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = v23;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = sub_1005867E4(v17, a5, ObjectType, v19, a3);
  (*(v14 + 8))(v16, v13);

  return v20;
}

double sub_10033EED0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_10074D544();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10074D574();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A534();
  __chkstk_darwin(v12 - 8);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10074A554();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10074CD14();
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  v43 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v23 = &v38 - v22;
  sub_10000C824(a1, v61);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746A24();
  swift_dynamicCast();
  (*(v19 + 16))(v21, a2, v18);
  sub_100752DF4();
  v41 = v23;
  sub_100752EB4();
  v53 = a6;
  v24 = [a6 traitCollection];
  v25 = sub_100750F34();
  swift_allocObject();
  v26 = sub_100750F14();
  sub_100746A14();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  sub_10000D0FC(v27, qword_100981B48);
  sub_100753C14();
  v28 = sub_10074F3F4();
  v39 = v24;
  v29 = v28;
  v61[3] = v28;
  v61[4] = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000D134(v61);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  sub_10074FC74();
  sub_10000C620(v61);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v15 + 8))(v17, v40);
  sub_1007469D4();
  v31 = v46;
  sub_10074D554();
  (*(v44 + 8))(v11, v45);
  sub_1006B1AD0(v31, v53, v47);
  (*(v48 + 8))(v31, v50);
  swift_allocObject();
  v32 = sub_100750F14();
  v59 = v25;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v58 = v32;
  sub_10000C824(v61, v57);
  v55 = v25;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v26;

  v33 = v49;
  sub_10074A544();
  sub_1003495BC(&unk_1009332D8, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v34 = v52;
  sub_100750404();
  v36 = v35;

  (*(v51 + 8))(v33, v34);
  sub_10000C620(v61);
  (*(v42 + 8))(v41, v43);

  return v36;
}

double sub_10033F6A8(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_10074A5B4();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10074A5D4();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10074CD14();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v48 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = v43 - v17;
  sub_10000C824(a1, v61);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746C64();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_100752DF4();
  v46 = v18;
  sub_100752EB4();
  v19 = v61[5];
  v20 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v44 = sub_100750534();
  sub_10000D0FC(v44, qword_1009814E8);
  v21 = [a6 traitCollection];
  v22 = sub_100753C14();

  sub_100746C54();
  v23 = sub_10074F3F4();
  v61[3] = v23;
  v24 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v61[4] = v24;
  v25 = sub_10000D134(v61);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(v23 - 8);
  v43[1] = v19;
  v28 = *(v27 + 104);
  v55 = a6;
  v28(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v29 = v22;
  v43[0] = v20;
  v30 = v29;
  sub_10074FC74();
  sub_10000C620(v61);
  v45 = v30;
  sub_10074CD04();
  sub_10074CCE4();
  v31 = *(v57 + 8);
  v57 += 8;
  v31(v12, v56);
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v44, qword_100981500);
  v32 = [v55 traitCollection];
  v33 = sub_100753C14();

  sub_100746C44();
  v60[3] = v23;
  v60[4] = v24;
  v34 = sub_10000D134(v60);
  v28(v34, v26, v23);
  v35 = v33;
  sub_10074FC74();
  sub_10000C620(v60);
  sub_10074CD04();
  sub_10074CCE4();
  v31(v12, v56);
  if (qword_100920348 != -1)
  {
    swift_once();
  }

  v36 = v50;
  v37 = sub_10000D0FC(v50, qword_10097DCE0);
  (*(v49 + 16))(v51, v37, v36);
  sub_10000C824(v61, v59);
  sub_10000C824(v60, v58);
  v38 = v52;
  sub_10074A5C4();
  sub_1003495BC(&unk_100933220, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v39 = v54;
  sub_100750404();
  v41 = v40;

  (*(v53 + 8))(v38, v39);
  sub_10000C620(v60);
  sub_10000C620(v61);
  (*(v47 + 8))(v46, v48);

  return v41;
}

double sub_10033FEC0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v90 = a6;
  v87 = sub_10074CD14();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v73 - v10;
  __chkstk_darwin(v11);
  v80 = &v73 - v12;
  v78 = sub_100748914();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10074AA44();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074AA24();
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v73 - v18;
  v19 = sub_10074FCD4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v76 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  v25 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  v94 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v30 = &v73 - v29;
  sub_10000C824(a1, v103);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100747324();
  swift_dynamicCast();
  (*(v26 + 16))(v28, a2, v25);
  sub_100752DF4();
  v92 = v30;
  sub_100752EB4();
  v31 = v103[5];
  v32 = sub_1007472E4();
  if (*(v32 + 16))
  {
    v33 = v20;
    v34 = v90;
    v75 = v33;
    v35 = *(v33 + 16);
    v36 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v88 = v24;
    v89 = v19;
    v35(v24, v36, v19);

    if (qword_100921838 != -1)
    {
      swift_once();
    }

    v37 = sub_10000D0FC(v15, qword_100982398);
    v38 = *(v96 + 16);
    v39 = v95;
    v38(v95, v37, v15);
    v40 = [v34 traitCollection];
    v41 = sub_100753804();

    if (v41)
    {
      v73 = v15;
      v38(v91, v39, v15);
      v35(v76, v88, v89);
      v42 = v31;
      sub_100747304();
      v43 = [v34 traitCollection];
      v44 = sub_1007537D4();

      v45 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v44 & 1) == 0)
      {
        v45 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v77 + 104))(v79, *v45, v78);
      v46 = sub_100748924();
      v47 = objc_allocWithZone(v46);
      v48 = sub_100748904();
      v103[3] = v46;
      v103[4] = &protocol witness table for UIView;
      v103[0] = v48;
      v49 = sub_100747314();
      v104._object = 0x8000000100773260;
      v104._countAndFlagsBits = 0xD000000000000032;
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      sub_10074B194(v104, v49, v105);
      v50 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
      if (qword_100921210 != -1)
      {
        swift_once();
      }

      v79 = sub_100750534();
      sub_10000D0FC(v79, qword_100981368);
      v78 = v50;
      sub_100753C04();
      v51 = sub_10074F3F4();
      v102[3] = v51;
      v77 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102[4] = v77;
      v52 = sub_10000D134(v102);
      v53 = *(*(v51 - 8) + 104);
      LODWORD(v76) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = v53;
      v53(v52);
      sub_10074FC74();
      sub_10000C620(v102);
      v54 = v80;
      sub_10074CD04();
      sub_10074CCE4();
      v55 = *(v86 + 8);
      v56 = v87;
      v55(v54, v87);
      v57 = [v34 traitCollection];
      sub_1006546E0();
      v86 = v42;

      if (qword_100921218 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v79, qword_100981380);
      sub_100753C04();
      v101[3] = v51;
      v101[4] = v77;
      v58 = sub_10000D134(v101);
      v74(v58, v76, v51);
      sub_10074FC74();
      sub_10000C620(v101);
      v59 = v81;
      sub_10074CD04();
      sub_10074CCE4();
      v55(v59, v56);
      sub_1007472F4();
      if (qword_100921220 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v79, qword_100981398);
      sub_100753C04();
      v100[3] = v51;
      v100[4] = v77;
      v60 = sub_10000D134(v100);
      v74(v60, v76, v51);
      sub_10074FC74();
      sub_10000C620(v100);
      v61 = v83;
      sub_10074CD04();
      sub_10074CCE4();
      v55(v61, v56);
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      v62 = v82;
      sub_10074AA34();
      sub_1003495BC(&unk_10092F610, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v63 = v85;
      sub_100750404();
      v65 = v64;
      (*(v84 + 8))(v62, v63);
      (*(v96 + 8))(v95, v73);
      (*(v75 + 8))(v88, v89);
    }

    else
    {
      [v34 pageContainerSize];
      if (v67 >= v66)
      {
        v69 = v89;
        v68 = v95;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v68 = v95;
        v69 = v89;
      }

      v70 = v88;
      sub_10074A9F4();
      v65 = v71;
      (*(v96 + 8))(v68, v15);
      (*(v75 + 8))(v70, v69);
    }
  }

  else
  {

    v65 = 0.0;
  }

  (*(v93 + 8))(v92, v94);

  return v65;
}

double sub_100340C40(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v28 = a6;
  v27 = sub_10074CD14();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v26 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v25 - v16;
  sub_10000C824(a1, v29);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100747A54();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  sub_100747A44();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921168 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  sub_10000D0FC(v18, qword_100981170);
  v19 = [v28 traitCollection];
  sub_100753C14();

  v20 = sub_10074F3F4();
  v30 = v20;
  v31 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_10000D134(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10074FC74();
  sub_10000C620(v29);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v8 + 8))(v10, v27);
  sub_10000C888(v29, v30);
  sub_100750414();
  v23 = v22;
  (*(v15 + 8))(v17, v26);
  sub_10000C620(v29);

  return v23;
}

double sub_100341098(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v51 = a6;
  v8 = sub_10074C764();
  __chkstk_darwin(v8 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074C784();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10074CD14();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - v17;
  v19 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  sub_10000C824(a1, v76);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100749CB4();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_100752DF4();
  v44 = v21;
  sub_100752EB4();
  v58 = v76[5];
  sub_100749C74();
  v22 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921550 != -1)
  {
    swift_once();
  }

  v57 = sub_100750534();
  sub_10000D0FC(v57, qword_100981D28);
  v23 = [v51 traitCollection];
  sub_100753C14();

  v24 = sub_10074F3F4();
  v76[3] = v24;
  v56 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v76[4] = v56;
  v25 = sub_10000D134(v76);
  v26 = *(*(v24 - 8) + 104);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v54 = v26;
  v26(v25);
  sub_10074FC74();
  v52 = v22;
  sub_10000C620(v76);
  sub_10074CD04();
  sub_10074CCE4();
  v53 = *(v12 + 8);
  v53(v14, v59);
  sub_100749C84();
  if (qword_100921558 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v57, qword_100981D40);
  v27 = v51;
  v28 = [v51 traitCollection];
  sub_100753C14();

  v75[3] = v24;
  v75[4] = v56;
  v29 = sub_10000D134(v75);
  v54(v29, v55, v24);
  sub_10074FC74();
  sub_10000C620(v75);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v14, v59);
  sub_100749CA4();
  if (qword_100921560 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v57, qword_100981D58);
  v30 = [v27 traitCollection];
  sub_100753C14();

  v74[3] = v24;
  v74[4] = v56;
  v31 = sub_10000D134(v74);
  v54(v31, v55, v24);
  sub_10074FC74();
  sub_10000C620(v74);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v14, v59);
  v32 = sub_100750F34();
  swift_allocObject();
  v33 = sub_100750F04();
  v34 = swift_allocObject();
  v34[2] = v58;
  v34[3] = v27;
  v34[4] = v43[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v35 = sub_100750EF4();
  sub_10027FF90(v27, v47);
  v73 = 0;
  *&v71[40] = 0u;
  v72 = 0u;
  sub_10000C824(v76, v71);
  sub_10000C824(v75, &v70);
  sub_10000C824(v74, &v69);
  v67 = v32;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v33;

  v36 = [v27 traitCollection];
  sub_100751364();

  swift_allocObject();
  v37 = sub_100750F14();
  v64 = v32;
  v65 = &protocol witness table for LayoutViewPlaceholder;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v63 = v37;
  v61 = v32;
  v60 = v35;

  v38 = v48;
  sub_10074C774();
  sub_1003495BC(&qword_100933280, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v39 = v50;
  sub_100750404();
  v41 = v40;

  (*(v49 + 8))(v38, v39);
  sub_10000C620(v74);
  sub_10000C620(v75);
  sub_10000C620(v76);
  (*(v45 + 8))(v44, v46);

  return v41;
}

double sub_1003419FC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a4;
  v36 = a5;
  v9 = sub_100754724();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100751374();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749A94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v37 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v32 - v24;
  (*(v19 + 16))(v21, v35, v18, v23);
  sub_100752DF4();
  sub_100752EB4();
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_100754324();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_100700E98(a6, v13);
  type metadata accessor for InAppPurchaseLockupView(0);
  v26 = sub_1005ACFB4(a6, a1, a2);
  if (v21)
  {
    v27 = v26;
    sub_100751304();
    v28 = v41;
    sub_10000C888(v40, v41);
    v29 = v32;
    sub_100536120(v28);
    sub_100750564();
    (*(v33 + 8))(v29, v34);
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
    sub_10000C620(v40);
  }

  else
  {
    sub_100753BD4();
    v27 = v30;
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
  }

  return v27;
}

uint64_t sub_100341EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10000C518(&unk_100933200, qword_1007BD1F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100749984();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_100752DF4();
    sub_100752994();
    v19 = sub_100749964();
    if (v20)
    {
      v21 = sub_100749974();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_100669490(v21, v9, 1, v24);

      sub_10000C8CC(v9, &unk_100933200, qword_1007BD1F0);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_100669194(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1003421B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100745794();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_100752DF4();
    sub_100752994();
    sub_100745784();
    sub_100745BD4();

    sub_100745774();
    if (v15)
    {
      v16 = sub_100743AD4();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_1004E30AC();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_10034243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007428B4();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    sub_100752DF4();
    sub_100752994();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100342644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742954();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    sub_100752DF4();
    sub_100752994();
    sub_1007454C4();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      sub_10074F8A4();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_10034288C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746DB4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_100752DF4();
    sub_100752994();
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
    v15 = v2;
    sub_100746D84();
    v16 = sub_100753064();

    [v14 setText:v16];

    sub_100746DA4();
    v17 = sub_100746D74();
    v18 = sub_100743EA4();
    sub_1001D3738(v18, sub_1000E12F0);
    v20 = v19;

    v21 = sub_100743E94();
    v24[0] = v9;
    sub_10004DF04(v21, v17, v20);

    v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
    v23 = sub_100746D64();
    [v22 setTintColor:v23];

    *&v15[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = sub_100746D94();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v24[0]);
  }

  return result;
}

uint64_t sub_100342BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744424();
  result = swift_dynamicCast();
  if (result)
  {
    v18[1] = v3;
    v15 = v19;
    (*(v7 + 16))(v9, a2, v6);
    sub_100752DF4();
    sub_100752994();
    sub_10000C518(&qword_100924B88, &unk_1007BD1D0);
    sub_100752764();
    sub_100752D34();
    v19 = v15;
    sub_100742DE4();

    v16 = v20[0];
    if ((~v20[0] & 0xF000000000000007) != 0)
    {
      v17 = v20[1];
    }

    else
    {

      v17 = 0;
      v16 = v15;
    }

    sub_100190DB8(v16, v17);
    sub_100079128(v16, v17);

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100342E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = sub_10074EAB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_10000C824(a1, v29);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074E8E4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    sub_100752DF4();
    sub_100752994();
    sub_10074E8C4();
    if (v18)
    {
      v19 = sub_100753064();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    sub_10074EA74();
    sub_1003495BC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v21 = sub_100754324();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = sub_10074E8D4();
      v23 = &v20[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_10032C34C();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1003431A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_1007504F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000C824(a1, v53);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074E934();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    sub_100752DF4();
    sub_100752994();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView];
    v24 = sub_10074E904();
    sub_10016E5F4(v24, v25);
    v26 = sub_10074E914();
    sub_10016ED68(v26, v27);
    v23[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] = sub_10074E8F4() & 1;
    sub_10016F158();
    if (sub_10074E924())
    {
      sub_10074F2A4();
      sub_10074F2A4();
      sub_100750504();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10006644C(v9, &v23[v28], &unk_1009281D0, qword_1007A82B0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      sub_1007477B4();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      sub_1007504C4();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10006644C(v9, &v23[v42], &unk_1009281D0, qword_1007A82B0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_100343734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000C824(a1, v18);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007428B4();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    sub_100752DF4();
    sub_100752994();
    sub_100195300(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100343958(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F524();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_100752DF4();
    sub_100752994();
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
    v15 = sub_10074F504();
    v16 = v14[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_10013F464(v16);
    v14[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] = (sub_10074F504() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
    sub_10074F514();
    v18 = sub_100753064();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100343BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[0] = a5;
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10000C518(&unk_100933230, &qword_1007BA6B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F984();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    sub_100752994();
    sub_100354424(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100343E08(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = sub_100746BA4();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100743584();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = sub_100744864();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = sub_100744894();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100747D94();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_10000C824(a1, v108);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074FBF4();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  sub_100752DF4();
  v104 = v43;
  sub_100752994();
  v85[1] = v45;
  sub_10074FBD4();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  sub_10074EC14();
  sub_10074F2A4();
  sub_100750504();

  v46 = sub_1007504F4();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  sub_10074EBB4();
  sub_10074EBF4();
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  v47 = v105;
  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  v48 = v108[0];
  sub_10074EB94();
  v49 = v97;
  sub_10074EC24();
  v50 = sub_100741264();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  sub_10074EBE4();
  v52 = v99;
  sub_10074EBD4();
  type metadata accessor for VideoView(0);
  sub_1003495BC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  v96 = v48;
  v53 = sub_1007464A4();
  sub_10000C8CC(v52, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v51, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v49, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v108, &unk_1009276E0, &unk_1007A5C70);
  v54 = *(v85[0] + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v59 = v54;
      v60 = sub_100753FC4();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    sub_100746E34();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_10093CB58] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView];
  v69 = sub_10074FBE4();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    sub_10074FBC4();
    sub_1005F8298(v71);
    v72 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView];
    v73 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = sub_100742E24();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = sub_100745E94();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = sub_10074F8B4();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_100656038(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10000C8CC(v82, &unk_100925520, &unk_1007A8120);
    v83[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v83 setNeedsLayout];

    sub_10000C8CC(v80, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v78, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v76, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v74, &unk_100925540, &qword_1007A8140);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}

uint64_t sub_100344C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v67 = a2;
  v6 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v6 - 8);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  v15 = sub_10000C518(&qword_100933260, &unk_1007BA6B8);
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_10000C518(&qword_10092ADB0, &unk_1007AF400);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_100742BB4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_10000C824(v25, v72);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v65 = v22;
    v66 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v67, v11);
    sub_100752994();
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems] = sub_100742B84();

    v30 = sub_100742B94();
    v31 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];

    v34 = sub_100753064();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = sub_100742BA4();
    v36 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_10027A9AC(v38);
    v39 = sub_100742B64();
    if (v39)
    {
      v72[0] = v39;
      sub_10074ECD4();
      sub_100752764();
      sub_1003495BC(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      sub_100752684();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    v43 = 1;
    (*(*(v42 - 8) + 56))(v10, v40, 1, v42);
    v44 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_100349358(v10, &v4[v44], &qword_100933090, &unk_1007B1B00);
    swift_endAccess();
    sub_10027AB34();
    sub_10000C8CC(v10, &qword_100933090, &unk_1007B1B00);
    sub_100349280();
    v45 = v70;
    v46 = v17;
    sub_100752964();
    if ((v72[0] & 1) == 0)
    {
      v43 = sub_100742B74();
    }

    sub_10027C5AC();
    v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] = v43 & 1;
    sub_10027A700();
    v47 = sub_100742B64();
    if (v47)
    {
      v72[0] = v47;
      sub_10074ECD4();
      sub_100752764();
      sub_1003495BC(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v48 = v68;
      sub_100752684();

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v68;
    }

    v50 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v50 - 8) + 56))(v48, v49, 1, v50);
    swift_beginAccess();
    sub_100349358(v48, &v4[v44], &qword_100933090, &unk_1007B1B00);
    swift_endAccess();
    sub_10027AB34();
    sub_10000C8CC(v48, &qword_100933090, &unk_1007B1B00);
    v51 = [v4 traitCollection];
    v52 = sub_1007537B4();

    v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v52 & 1) == 0;
    if (v52)
    {
      v53 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v54 = *&v4[v53];
      v55 = v65;
      if (v54)
      {
        [v54 removeFromSuperview];
        v56 = *&v4[v53];
      }

      else
      {
        v56 = 0;
      }

      v61 = v66;
      *&v4[v53] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v57 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v58 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v59 = *&v4[v58];
      if (v59)
      {
        [v59 removeFromSuperview];
        v60 = *&v4[v58];
      }

      else
      {
        v60 = 0;
      }

      *&v4[v58] = v57;
      v62 = v57;

      if (v62)
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v63 = sub_100753DB4();
        [v62 setBackgroundColor:v63];

        v64 = [v4 contentView];
        [v64 addSubview:v62];
      }

      [v4 setNeedsLayout];

      v55 = v65;
      v61 = v66;
    }

    (*(v69 + 8))(v46, v45);
    return (*(v55 + 8))(v24, v61);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10000C8CC(v20, &qword_10092ADB0, &unk_1007AF400);
  }
}

uint64_t sub_100345520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_10000C824(a1, v17);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074EFD4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_100752DF4();
    sub_100752994();
    sub_100377A2C();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100345730(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_100745FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  v24[0] = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v13 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v15 = v24 - v14;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100743804();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    sub_100752DF4();
    sub_100752994();
    v17 = v24[1];
    sub_1007437C4();
    v18 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 24))(v17 + v18, v8, v5);
    swift_endAccess();
    sub_1002A1400();
    (*(v6 + 8))(v8, v5);
    v19 = sub_1007437D4();
    sub_1002A01F4(v19, v20);
    v21 = sub_1007437E4();
    sub_1002A0200(v21, v22);
    *(v17 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_1007437F4();

    v23 = sub_1007437A4();
    sub_1002A3850();
    *(v17 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories) = v23;

    sub_1002A1184();

    return (*(v13 + 8))(v15, v24[0]);
  }

  return result;
}

uint64_t sub_100345A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    sub_100752DF4();
    sub_100752994();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100345C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744484();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  sub_100752DF4();
  sub_100752994();
  v19 = sub_100743604();
  v20 = [v19 length];

  v21 = &selRef_initWithTitle_style_target_action_;
  if (v20 <= 0)
  {
    [*&v6[qword_1009485E0] setText:0];
    v6[qword_100983438] = 0;
    v31 = *&v6[qword_1009485D0];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v46 = v17;
  v47 = v15;
  v48 = v14;
  v22 = sub_100743604();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v49 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100047814;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1000B18A8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_1008718A8;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_1009485E0];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_100921F20 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_100983420];
  v6[qword_100983438] = 1;
  v31 = *&v6[qword_1009485D0];
  [v31 setHidden:0];

  v15 = v47;
  v14 = v48;
  v17 = v46;
  v21 = &selRef_initWithTitle_style_target_action_;
LABEL_7:
  v32 = *&v6[qword_1009485D8];
  sub_100743614();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[105]];

  v6[qword_100983430] = (sub_1007435E4() & 1) == 0;
  sub_1000B18C8(v35);
  if ((sub_1007435E4() & 1) == 0 && v6[qword_100983438] != 1)
  {
    sub_1007433C4();
    sub_100743244();
  }

  sub_100746E74();
  if (sub_1007435E4())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v36 = sub_100753E34();
    [v31 setBackgroundColor:v36];
  }

  if (sub_100744474())
  {
    v37 = [v6 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v39 = v38;

    sub_10074F2A4();
    v41 = v40;
    sub_10074F2A4();
    v43 = v42;

    result = (*(v15 + 8))(v17, v14);
    v44 = &v6[qword_1009805D8];
    *v44 = v39;
    v44[1] = v39 * (v41 / v43);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_100346360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100935110, &unk_1007BD1E0);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = sub_100751344();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_10000C824(a1, v79);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007445F4();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    sub_100752DF4();
    sub_100752994();
    v79[0] = sub_1007445E4();
    sub_100743EB4();
    v28 = sub_100752764();
    sub_1003495BC(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    v73 = v28;
    v74 = a3;
    sub_100752684();

    v29 = sub_10000C518(&unk_1009332A0, &qword_1007ADB60);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_100349358(v18, v4 + v30, &unk_100933290, &unk_1007BA6D0);
    swift_endAccess();
    sub_1003DE7E0();
    sub_10000C8CC(v18, &unk_100933290, &unk_1007BA6D0);
    v31 = sub_1007445C4();
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v33 = v25;
    if (v31)
    {
      v34 = sub_100753DD4();
    }

    else
    {
      v34 = sub_100753DF4();
    }

    v35 = *(v32 + qword_100924048);
    *(v32 + qword_100924048) = v34;
    v36 = v34;
    if ((sub_100753FC4() & 1) == 0)
    {
      sub_10004E2D4();
    }

    v37 = sub_1007445D4();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_100754664();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_10001E2E8(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = sub_100754574();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        sub_10074CFE4();
        sub_1003495BC(&unk_100935120, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
        sub_100752684();

        v79[0] = v41;
        v45 = v41[2];
        v44 = v41[3];
        if (v45 >= v44 >> 1)
        {
          sub_10001E2E8((v44 > 1), v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        v41[2] = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_1003E000C();
    v47 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_1003DEA84();
    if (sub_1007445C4())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = sub_1007507D4();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_10000D134(v79);
      sub_1007507C4();
      v49 = v68;
      sub_100751354();
      v50 = sub_100751374();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_100349358(v49, v51 + v54, &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_1003DF240();
      sub_10000C8CC(v49, &qword_100933250, &unk_1007B3A50);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_10000D134(v79);
        sub_1007507C4();
        v55 = v67;
        sub_100751354();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_100349358(v55, v51 + v62, &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_1003DF254();

      sub_10000C8CC(v55, &qword_100933250, &unk_1007B3A50);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = sub_100751374();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_100349358(v59, v4 + v60, &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_1003DF240();
      sub_10000C8CC(v59, &qword_100933250, &unk_1007B3A50);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_100349358(v59, v4 + v61, &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_1003DF254();

      sub_10000C8CC(v59, &qword_100933250, &unk_1007B3A50);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_100346E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_10000C824(a1, v24);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744D14();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    sub_100752DF4();
    sub_100752994();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = sub_100744D04();
    sub_10030B4D8(v19, v20);
    v21 = sub_100744CF4();
    sub_10030B4E4(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100347078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100744E04();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000C824(a1, v18);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744E34();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_100752DF4();
    sub_100752994();
    sub_100744E24();
    sub_100561A0C(v6);
    v16 = sub_100744E14();
    sub_100562538(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_1003472DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_10000C824(a1, v15);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F474();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    sub_100752DF4();
    sub_100752994();
    sub_10017C808(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1003474D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  v9 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11 - 8];
  sub_10000C824(a1, v16);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100745764();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v15;
    (*(v6 + 16))(v8, a2, v5);
    sub_100752DF4();
    sub_100752994();
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = v14;

    sub_1002E8FB4();
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100347734(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v29 = a3;
  v26 = a2;
  v5 = sub_10074FE04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v16 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v27 = *(v16 - 8);
  v28 = v16;
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  sub_10000C824(a1, v31);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074CC64();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v30;
    (*(v13 + 16))(v15, v26, v12);
    sub_100752DF4();
    sub_100752994();
    sub_10074CC54();
    sub_10019F81C(v11);
    v21 = *(v6 + 8);
    v21(v8, v5);
    sub_10074FE84();
    v21(v11, v5);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v24 = v29;
    v23[2] = v20;
    v23[3] = v24;
    v23[4] = v22;

    sub_10074FE34();

    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = v24;

    sub_10074FE54();

    return (*(v27 + 8))(v18, v28);
  }

  return result;
}

uint64_t sub_100347AF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100347B30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100347B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742954();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_100752DF4();
    sub_100752994();
    sub_1007454C4();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_100586A7C(v18, a3);
    }

    else
    {
      sub_10074F8A4();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_100586C90(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100347E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_10000C824(a1, v18);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746C64();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_100752DF4();
    sub_100752994();
    v13 = sub_100746C54();
    sub_10014A070(v13, v14);
    v15 = sub_100746C44();
    sub_10014A07C(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100348030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v63 = a5;
  v9 = sub_10000C518(&qword_1009332E8, &unk_1007C9F60);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_100748914();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10074FCD4();
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v56 - v18;
  v19 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v64 = *(v23 - 8);
  v65 = v23;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_10000C824(a1, v68);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100747324();
  result = swift_dynamicCast();
  if (result)
  {
    v56 = v11;
    (*(v20 + 16))(v22, a2, v19);
    sub_100752DF4();
    v57 = v25;
    sub_100752994();
    v27 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_100747314();
    v69._object = 0x8000000100773260;
    v69._countAndFlagsBits = 0xD000000000000032;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_10074B194(v69, v28, v70);
    v29 = sub_100753064();

    [v27 setText:v29];

    v30 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = v63;
    v32 = [v63 traitCollection];
    sub_1006546E0();

    v33 = sub_100753064();

    [v30 setText:v33];

    v34 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel);
    sub_1007472F4();
    v35 = sub_100753064();

    [v34 setText:v35];

    v36 = sub_1007472E4();
    if (*(v36 + 16))
    {
      v37 = v66;
      v38 = *(v67 + 16);
      v39 = v60;
      v38(v66, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v60);

      v38(v16, v37, v39);
      sub_100747304();
      v40 = [v31 traitCollection];
      LOBYTE(v38) = sub_1007537D4();

      v41 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v38 & 1) == 0)
      {
        v41 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v58 + 104))(v14, *v41, v59);
      v42 = objc_allocWithZone(sub_100748924());
      v43 = sub_100748904();
      v44 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v45 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v45)
      {
        [v45 removeFromSuperview];
        v46 = *(v6 + v44);
      }

      else
      {
        v46 = 0;
      }

      v50 = v56;
      *(v6 + v44) = v43;
      v51 = v43;

      [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v51];
      if (sub_100747304() < 2)
      {
        v52 = v57;
        if (qword_100921828 != -1)
        {
          swift_once();
        }

        v53 = qword_100982368;
      }

      else
      {
        v52 = v57;
        if (qword_100921830 != -1)
        {
          swift_once();
        }

        v53 = qword_100982380;
      }

      v54 = v62;
      v55 = sub_10000D0FC(v62, v53);
      (*(v61 + 16))(v50, v55, v54);
      swift_beginAccess();
      sub_10074AA14();
      swift_endAccess();

      (*(v67 + 8))(v66, v39);
      return (*(v64 + 8))(v52, v65);
    }

    else
    {

      v47 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v6 + v47);
      }

      else
      {
        v49 = 0;
      }

      *(v6 + v47) = 0;

      return (*(v64 + 8))(v57, v65);
    }
  }

  return result;
}

uint64_t sub_100348788(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10000C824(a1, v17);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100747A54();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_100752DF4();
    sub_100752994();
    v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_100747A44();
    v15 = sub_100753064();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

double sub_1003489C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003489E4(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_10000C518(&unk_100933300, qword_1007BA6F0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = sub_10074FF24();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_10000C824(a1, v53);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074BC74();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    sub_100752DF4();
    sub_100752994();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    sub_10074BC64();
    v40 = v19;
    sub_10074BC24();
    sub_10074BC54();
    sub_10074BC44();
    sub_10074BC34();
    v32 = v46;
    v33 = sub_10074BC14();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_10032B79C;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_10000C518(&unk_100933310, &qword_1007BA480);
    sub_10032B7BC();
    v37 = v48;
    sub_100751DF4();
    sub_100751E54();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_10002DDC8(&qword_1009330F8, &unk_100933300, qword_1007BA6F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000D134(v53);
    sub_100751DE4();
    (*(v50 + 8))(v37, v38);
    sub_1007538E4();

    (*(v43 + 8))(v28, v44);
    sub_10000C8CC(v32, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v10, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v13, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v16, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v40, &qword_100927E40, &unk_1007BA470);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_100348FD8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5 + 8;
  v7 = sub_10000C518(&qword_100933260, &unk_1007BA6B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9 + 8;
  v11 = sub_100742BB4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_10000C824(a1, v18);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v17, v3);
  sub_100752994();
  if (sub_100279E58())
  {
    sub_100349280();
    sub_100752954();
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t sub_100349280()
{
  result = qword_100933268;
  if (!qword_100933268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933268);
  }

  return result;
}

uint64_t sub_1003492F0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100349358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C518(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1003493C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_10000C824(a1, v14);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746A24();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  sub_100752DF4();
  sub_100752994();
  if (sub_1007469B4())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_1003495BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100349640(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v12[2] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v11 = v9;
      (a1)(v12, &v11);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1003497C0(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_10001E3CC(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    for (i = a3 + 32; ; i += 40)
    {
      a1(v15, i);
      if (v3)
      {
        break;
      }

      v17 = v7;
      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_10001E3CC((v9 > 1), v10 + 1, 1);
        v7 = v17;
      }

      v7[2] = v10 + 1;
      v11 = &v7[9 * v10];
      *(v11 + 2) = v15[0];
      v12 = v15[1];
      v13 = v15[2];
      v14 = v15[3];
      v11[12] = v16;
      *(v11 + 4) = v13;
      *(v11 + 5) = v14;
      *(v11 + 3) = v12;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

double sub_10034990C(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_10000C518(&qword_100933380, &qword_1007BA740);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  v18 = sub_10074A274();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074EAE4();
  if (v22 >> 62)
  {
    v29 = a6;
    v30 = v22;
    v31 = sub_100754664();
    v22 = v30;
    a6 = v29;
    if (v31)
    {
LABEL_3:
      v32[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        sub_10000C8CC(v17, &qword_100933380, &qword_1007BA740);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v32[-2] = v21;
        sub_100349640(sub_10013DF7C, &v32[-4], v23);
        v27 = v26;

        v28._rawValue = v27;
        sub_100744224(v28);

        (*(v19 + 8))(v21, v18);
      }

      return result;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100349C00(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074E984();
  v10 = (*(*(v9 - 8) + 48))(a1, 1, v9);
  result = 0;
  if (((v10 != 1) & a2) == 1)
  {
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v12 = sub_100750B04();
    sub_10000D0FC(v12, qword_1009820C8);
    sub_1007502D4();
    sub_100750564();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    return v14;
  }

  return result;
}

uint64_t sub_100349DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007457B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074E984();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v25 = v7;
  v26 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = sub_1007457A4();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v17(v13, v16, v10);
  sub_10034B8E4();
  v20 = sub_100753014();
  v19(v13, v10);
  if (v20)
  {
    return 0;
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v21 = sub_100750B04();
  sub_10000D0FC(v21, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v23 = v22;
  (*(v25 + 8))(v9, v6);
  return v23;
}

double sub_10034AADC(__n128 a1)
{
  if (sub_10074EAE4() >> 62)
  {
    sub_100754664();
  }

  return result;
}

double sub_10034AB94(double a1, uint64_t a2, char a3)
{
  v4 = sub_10074A274();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = sub_10074EAE4();
  if (v11 >> 62)
  {
    v19 = v11;
    v20 = sub_100754664();
    v11 = v19;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v12 = v11;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_100920978 != -1)
    {
      swift_once();
    }

    v13 = sub_1007504F4();
    sub_10000D0FC(v13, qword_10097FAF8);
    sub_1007504C4();
    sub_10074A254();
    v14 = (*(v5 + 32))(v10, v7, v4);
    __chkstk_darwin(v14);
    *&v21[-16] = v10;
    sub_100349640(sub_10034BC54, &v21[-32], v12);
    v16 = v15;

    v17._rawValue = v16;
    sub_100744224(v17);

    (*(v5 + 8))(v10, v4);
    return result;
  }

  return result;
}

double sub_10034AE44()
{
  v0 = sub_10074A274();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10074EAE4();
  if (v4 >> 62)
  {
    v11 = v4;
    v12 = sub_100754664();
    v4 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = sub_10074A254();
    __chkstk_darwin(v6);
    *&v13[-16] = v3;
    sub_100349640(sub_10034BC54, &v13[-32], v5);
    v8 = v7;

    v9._rawValue = v8;
    sub_100744224(v9);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_10034B03C()
{
  v0 = sub_10074A274();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10074EAE4();
  if (v4 >> 62)
  {
    v12 = v4;
    v13 = sub_100754664();
    v4 = v12;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    if (qword_100920548 != -1)
    {
      swift_once();
    }

    v6 = sub_100747064();
    sub_10000D0FC(v6, qword_10097E3A8);
    sub_100746F34();
    v7 = sub_10074A254();
    __chkstk_darwin(v7);
    *&v14[-16] = v3;
    sub_100349640(sub_10034BC54, &v14[-32], v5);
    v9 = v8;

    v10._rawValue = v9;
    sub_100744224(v10);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_10034B244(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_100747814();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A274();
  v30 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074EAE4();
  if (v15 >> 62)
  {
    v24 = v12;
    v25 = v15;
    v26 = sub_100754664();
    v15 = v25;
    v12 = v24;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v28 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v27[1] = a3;
    v18 = v17;
    sub_10024BBC0(v11);

    sub_1007477E4();
    (*(v9 + 8))(v11, v8);
    v31 = a2;
    swift_unknownObjectRetain();
    sub_100743464();
    (*(v29 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = sub_10074A254();
    __chkstk_darwin(v19);
    v27[-2] = v14;
    sub_100349640(sub_10034BC54, &v27[-4], v16);
    v21 = v20;

    v22._rawValue = v21;
    sub_100744224(v22);

    (*(v30 + 8))(v14, v28);
    return result;
  }

  return result;
}

double sub_10034B5B4(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A274();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10074EAE4();
  if (v17 >> 62)
  {
    v24 = v17;
    v25 = sub_100754664();
    v17 = v24;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v27 = v17;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_100920960 != -1)
    {
      swift_once();
    }

    v18 = sub_100747674();
    sub_10000D0FC(v18, qword_10097FA38);
    sub_100747664();
    sub_1007504C4();
    (*(v7 + 8))(v9, v6);
    sub_10074A254();
    v19 = (*(v11 + 32))(v16, v13, v10);
    __chkstk_darwin(v19);
    *(&v26 - 2) = v16;
    sub_100349640(sub_10034BC54, (&v26 - 4), v27);
    v21 = v20;

    v22._rawValue = v21;
    sub_100744224(v22);

    (*(v11 + 8))(v16, v10);
    return result;
  }

  return result;
}

unint64_t sub_10034B8E4()
{
  result = qword_100940610;
  if (!qword_100940610)
  {
    sub_1007457B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940610);
  }

  return result;
}

uint64_t sub_10034B93C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_100028D40(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100933370, &unk_1007A8CE0);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

void sub_10034BB88(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_100754534(40);
  sub_1007548A4();

  v3._object = 0x8000000100777810;
  v3._countAndFlagsBits = 0xD000000000000026;
  sub_1007531B4(v3);
  sub_100754644();
  __break(1u);
}

void sub_10034BD3C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v48 = &v47 - v9;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007504F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007435E4();
  v47 = v11;
  if ((v18 & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_100744474())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v17, v14);
    sub_1007435E4();
    if ((sub_1007435E4() & 1) != 0 || v20 <= a2)
    {
    }

    else
    {
      sub_10074F2A4();
      sub_100750504();
      sub_1007504B4();
      v21(v17, v14);
    }
  }

  v22 = sub_100743604();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_100743614();
    if (v24)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v25 = sub_100750534();
      sub_10000D0FC(v25, qword_100981920);
      v26 = sub_10074F3F4();
      v50 = v26;
      v51 = sub_10034CC70(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_10000D134(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();

      if (qword_100921F08 != -1)
      {
        swift_once();
      }

      v28 = sub_100750B04();
      sub_10000D0FC(v28, qword_1009833D8);
      sub_1007502D4();
      sub_100750564();
      v29 = *(v47 + 8);
      v29(v13, v10);
      if (qword_100921F18 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v28, qword_100983408);
      sub_1007502D4();
      sub_100750564();
      v29(v13, v10);
      if (qword_100921F10 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v28, qword_1009833F0);
      sub_1007502D4();
      sub_100750564();
      v29(v13, v10);
    }

    v30 = sub_100743604();
    v31 = [a6 traitCollection];
    v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
    v33 = [v30 length];
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = v32;
    *(v34 + 40) = 1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1002B1424;
    *(v35 + 24) = v34;
    v51 = sub_1002B1408;
    v52 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v50 = &unk_100871B90;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = v32;

    [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v39 = qword_1009213F0;
      v30 = v38;
      if (v39 == -1)
      {
LABEL_21:
        v40 = sub_100750534();
        v41 = sub_10000D0FC(v40, qword_100981908);
        v42 = *(v40 - 8);
        v43 = v48;
        (*(v42 + 16))(v48, v41, v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = sub_10074F3F4();
        v50 = v44;
        v51 = sub_10034CC70(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v45 = sub_10000D134(aBlock);
        (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10006A144(v43);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v46 = sub_100750B04();
        sub_10000D0FC(v46, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v46, qword_1009833F0);
        sub_100750554();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_100753B94();
}

void sub_10034C758(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = sub_100743604();
  v10 = [v9 length];

  v11 = &selRef_initWithTitle_style_target_action_;
  if (v10 >= 1)
  {
    v12 = sub_100743604();
    v13 = [a6 traitCollection];
    v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
    v35 = [v12 length];
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14;
    *(v15 + 40) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100047814;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1000B18A8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    aBlock[3] = &unk_100871B18;
    v17 = _Block_copy(aBlock);
    v18 = v13;
    v19 = v14;

    [v12 enumerateAttributesInRange:0 options:v35 usingBlock:{0x100000, v17}];

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = *&v7[qword_1009485E0];
      [isEscapingClosureAtFileLocation setAttributedText:v19];
      if (qword_100921F20 == -1)
      {
LABEL_4:
        [isEscapingClosureAtFileLocation setTextColor:qword_100983420];
        v7[qword_100983438] = 1;
        v21 = *&v7[qword_1009485D0];
        [v21 setHidden:0];

        v11 = &selRef_initWithTitle_style_target_action_;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  [*&v7[qword_1009485E0] setText:0];
  v7[qword_100983438] = 0;
  v21 = *&v7[qword_1009485D0];
  [v21 setHidden:1];
LABEL_6:
  v22 = *&v7[qword_1009485D8];
  sub_100743614();
  if (v23)
  {
    v24 = sub_100753064();
  }

  else
  {
    v24 = 0;
  }

  [v22 v11[105]];

  v7[qword_100983430] = (sub_1007435E4() & 1) == 0;
  sub_1000B18C8(v25);
  if ((sub_1007435E4() & 1) == 0 && v7[qword_100983438] != 1)
  {
    sub_1007433C4();
    sub_100743244();
  }

  sub_100746E74();
  if (sub_1007435E4())
  {
    [v21 setBackgroundColor:0];
  }

  else
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v26 = sub_100753E34();
    [v21 setBackgroundColor:v26];
  }

  if (sub_100744474())
  {
    v27 = [v7 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v29 = v28;

    sub_10074F2A4();
    v31 = v30;
    sub_10074F2A4();
    v33 = v32;

    v34 = &v7[qword_1009805D8];
    *v34 = v29;
    v34[1] = v29 * (v31 / v33);
  }
}

double sub_10034CC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10034CC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10034CCB8(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = a5;
  v12 = a4;
  v14 = sub_1007504F4();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074EB24();
  v9 = *(v8 + 16);
  v16 = v8 + 32;
  v13 = (v5 + 8);
  v17 = v8;

  v10 = 0;
  while (1)
  {
    if (v10 == v9)
    {
      v25 = 0;
      v10 = v9;
      v23 = 0u;
      v24 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v17 + 16))
    {
      goto LABEL_18;
    }

    sub_10000C824(v16 + 40 * v10++, &v23);
LABEL_8:
    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    if (!*(&v24 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012160(v21, v20);
    sub_10000C824(v20, v18);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_100744484();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v19 = 0;
    }

    sub_10000C620(v20);
    if (v19)
    {
      if (sub_100744474())
      {

        if ((sub_1007435E4() & 1) == 0)
        {
          [v12 pageMarginInsets];
        }

        sub_10074F2A4();
        sub_100750504();
        sub_1007504C4();
        sub_1007435E4();

        sub_1007504B4();
        sub_10074F374();
        sub_100744214();

        (*v13)(v7, v14);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_10034D008()
{
  result = qword_1009333D0;
  if (!qword_1009333D0)
  {
    sub_10074BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009333D0);
  }

  return result;
}

uint64_t sub_10034D060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752624();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_100378B58(Strong);

  v17 = v9;
  sub_100032B70();
  v10 = v9;
  sub_10000C518(&qword_1009333D8, &qword_1007BA860);
  if (swift_dynamicCast())
  {
    sub_100012160(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_10000C888(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = sub_100752D84();

    sub_10000C620(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_10034D280(v15);
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_10034D2E8();
    swift_allocError();
    v13 = sub_100752D74();
  }

  return v13;
}

uint64_t sub_10034D280(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009333E0, &qword_1007BA868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034D2E8()
{
  result = qword_1009333E8;
  if (!qword_1009333E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009333E8);
  }

  return result;
}

unint64_t sub_10034D350()
{
  result = qword_1009333F0;
  if (!qword_1009333F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009333F0);
  }

  return result;
}

uint64_t type metadata accessor for TodayBrickPlaceholderView(uint64_t a1)
{
  result = qword_100933410;
  if (!qword_100933410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10034D444(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = qword_1009333F8;
  sub_1007433C4();
  v11 = sub_1007431E4();
  sub_100746E74();

  *&v5[v10] = v11;
  v12 = qword_100933400;
  sub_100743794();
  v13 = sub_100743754();
  v15 = v14;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100981A88);
  v18 = sub_10071B670(v13, v15, v17);

  *&v5[v12] = v18;
  v19 = qword_100933408;
  v20 = sub_100743784();
  v22 = v21;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v16, qword_100981AA0);
  v24 = sub_10071B670(v20, v22, v23);

  *&v5[v19] = v24;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for TodayBrickPlaceholderView(0);
  v25 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v26 = *&v25[qword_1009333F8];
  v27 = v25;
  [v27 addSubview:v26];
  [v27 addSubview:*&v27[qword_100933400]];
  [v27 addSubview:*&v27[qword_100933408]];

  return v27;
}

uint64_t sub_10034D69C@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v25 = sub_100748EA4();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748E94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v24 - v12;
  v14 = [v2 traitCollection];
  sub_10028FD28(v14, v13);

  v15 = *&v2[qword_1009333F8];
  v34 = sub_1007433C4();
  v35 = &protocol witness table for UIView;
  v33 = v15;
  v16 = *&v2[qword_100933400];
  v31 = sub_10034DB80();
  v32 = &protocol witness table for UIView;
  v29 = &protocol witness table for UIView;
  v30 = v16;
  v17 = *&v2[qword_100933408];
  v28 = v31;
  v27 = v17;
  (*(v7 + 16))(v9, v13, v6);
  v18 = v15;
  v19 = v16;
  v20 = v17;
  sub_100748E44();
  sub_10034DBCC(v21);
  v22 = v25;
  sub_100750434();
  (*(v3 + 8))(v5, v22);
  return (*(v7 + 8))(v13, v6);
}

void sub_10034D900()
{
  v1 = *(v0 + qword_100933408);
}

id sub_10034D950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickPlaceholderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10034D988(uint64_t a1)
{
  v2 = *(a1 + qword_100933408);
}

void sub_10034D9EC()
{
  v1 = v0;
  v2 = qword_1009333F8;
  sub_1007433C4();
  v3 = sub_1007431E4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = qword_100933400;
  sub_100743794();
  v5 = sub_100743754();
  v7 = v6;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981A88);
  v10 = sub_10071B670(v5, v7, v9);

  *(v1 + v4) = v10;
  v11 = qword_100933408;
  v12 = sub_100743784();
  v14 = v13;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v8, qword_100981AA0);
  v16 = sub_10071B670(v12, v14, v15);

  *(v1 + v11) = v16;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10034DB80()
{
  result = qword_1009236D0;
  if (!qword_1009236D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009236D0);
  }

  return result;
}

unint64_t sub_10034DBCC(__n128 a1)
{
  result = qword_100933460;
  if (!qword_100933460)
  {
    sub_100748EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933460);
  }

  return result;
}

uint64_t sub_10034DC24()
{
  result = JUScreenClassHasRoundedCorners();
  v1 = 8.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_100933468 = *&v1;
  return result;
}

BOOL sub_10034DC54()
{
  v1 = *(v0 + 16);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superview];
  if (v10)
  {
    v65 = v9;
    v66 = v7;
    v68 = v5;
    v70 = v3;
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v1 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v72.origin.x = v13;
    v72.origin.y = v15;
    v72.size.width = v17;
    v72.size.height = v19;
    Height = CGRectGetHeight(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v73.size.width = v25;
    v73.size.height = v27;
    v29 = Height - CGRectGetHeight(v73);
    if (qword_100920990 != -1)
    {
      swift_once();
    }

    v30 = v29 - *&qword_100933468;
    v5 = v68;
    v3 = v70;
    v9 = v65;
    v7 = v66;
  }

  else
  {
    v21 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  v74.origin.x = v3;
  v74.origin.y = v5;
  v74.size.width = v7;
  v74.size.height = v9;
  v31 = v21;
  v32 = v25;
  v33 = v27;
  if (CGRectEqualToRect(v74, *(&v30 - 1)))
  {
    return 0;
  }

  [v1 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v1 superview];
  if (v43)
  {
    v67 = v40;
    v69 = v38;
    v71 = v36;
    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [v1 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v59 = CGRectGetHeight(v75);
    if (qword_100920990 != -1)
    {
      v64 = v59;
      swift_once();
      v59 = v64;
    }

    v60 = v59 + *&qword_100933468;
    v38 = v69;
    v36 = v71;
    v40 = v67;
  }

  else
  {
    v54 = 0;
    v60 = 0.0;
    v56 = 0;
    v58 = 0;
  }

  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v42;
  v61 = v54;
  v62 = v56;
  v63 = v58;
  return !CGRectEqualToRect(v76, *(&v60 - 1));
}

void sub_10034DEEC(char a1, char a2)
{
  if (*(v2 + 72) == (a1 & 1) && !sub_10034DC54())
  {
    return;
  }

  v5 = *(v2 + 16);
  v6 = [v5 superview];
  if (a1)
  {
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = v15;
      Height = CGRectGetHeight(v48);
      v49.origin.x = v17;
      v49.origin.y = v19;
      v49.size.width = v21;
      v49.size.height = v23;
      v25 = Height - CGRectGetHeight(v49);
      if (qword_100920990 != -1)
      {
        swift_once();
      }

      v26 = v25 - *&qword_100933468;
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v27 = v6;
    [v6 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v5 frame];
    v17 = v36;
    v21 = v37;
    v23 = v38;
    v50.origin.x = v29;
    v50.origin.y = v31;
    v50.size.width = v33;
    v50.size.height = v35;
    v39 = CGRectGetHeight(v50);
    if (qword_100920990 != -1)
    {
      v46 = v39;
      swift_once();
      v39 = v46;
    }

    v26 = v39 + *&qword_100933468;
    goto LABEL_13;
  }

  v17 = 0.0;
  v26 = 0.0;
  v21 = 0.0;
  v23 = 0.0;
LABEL_13:
  v40 = swift_allocObject();
  *(v40 + 16) = v2;
  *(v40 + 24) = v17;
  *(v40 + 32) = v26;
  *(v40 + 40) = v21;
  *(v40 + 48) = v23;
  if (a2)
  {
    v41 = objc_opt_self();
    v47[4] = sub_10034E448;
    v47[5] = v40;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 1107296256;
    v47[2] = sub_1000CF7B0;
    v47[3] = &unk_100871CF0;
    v42 = _Block_copy(v47);

    [v41 _animateUsingSpringWithTension:1 friction:v42 interactive:0 animations:120.0 completion:12.0];
    _Block_release(v42);
  }

  else
  {

    [v5 setFrame:{v17, v26, v21, v23}];
  }

  v43 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v44 = *(v2 + 32);
  if (v44)
  {
    v45 = *(v2 + 40);

    v44(v43);

    sub_100046F70(v44, v45);
  }

  else
  {
  }
}

void sub_10034E248(char a1)
{
  v3 = *(v1 + 24);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_100753924();
  if (v4 & 1) != 0 || ([v3 contentSize], v9 = v8, objc_msgSend(v3, "bounds"), v10 = v9 - CGRectGetHeight(v15) - *(v1 + 48), objc_msgSend(v3, "bounds"), v10 < CGRectGetHeight(v16)) && (sub_100749474(), v11 = sub_100749464(), v12 = sub_100749454(), v11, (v12))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v10 > v13 && v13 > 0.0;
    v7 = a1 & 1;
  }

  sub_10034DEEC(v6, v7);
}

uint64_t sub_10034E38C()
{
  sub_100046F70(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10034E410()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10034E464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10034E47C()
{
  v1 = v0;
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell(0);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_10034EF90(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
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

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_10034F4E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v40 = a3;
  v41 = a4;
  v37[1] = a1;
  v38 = a2;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37[0] = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_10074F6E4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v37 - v20;
  v22 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = v37 - v24;
  sub_100016B4C(v38, v37 - v24, &unk_10093D6E0, &unk_1007A6080);
  v26 = *(v23 + 56);
  v27 = v16;
  v38 = v25;
  sub_100016B4C(v40, &v25[v26], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v28 = *(v17 + 104);
  v29 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v44)
  {
    v29 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v30 = *v29;
  v40 = v21;
  v31 = v21;
  v32 = v37[0];
  v28(v31, v30, v16);
  swift_getKeyPath();
  sub_1007525B4();

  (*(v11 + 104))(v32, enum case for Shelf.ContentType.appTrailerLockup(_:), v10);
  sub_1000F1E3C();
  sub_100753274();
  sub_100753274();
  if (v44 == v42 && v45 == v43)
  {
    v33 = 32.0;
  }

  else if (sub_100754754())
  {
    v33 = 32.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = *(v11 + 8);
  v34(v32, v10);
  v34(v15, v10);

  v35 = v40;
  (*(v17 + 16))(v39, v40, v27);
  sub_1006B089C(v33);
  sub_10074F6B4();
  (*(v17 + 8))(v35, v27);
  return sub_10000C8CC(v38, &qword_100923228, &unk_1007AB120);
}

uint64_t sub_10034F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10034FD20();

  return sub_100745684();
}

uint64_t sub_10034FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10034FD20();

  return sub_100745674();
}

uint64_t sub_10034FB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v30[5] = a5;
  v30[6] = a6;
  v30[4] = a4;
  *&v30[2] = a14;
  *&v30[3] = a15;
  v30[0] = a7;
  v30[1] = a1;
  v20 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v30 - v25;
  v27 = *v17;
  sub_100016B4C(a2, v30 - v25, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v26[*(v21 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v30[7] = v27;
  sub_100016B4C(v26, v23, &qword_100923228, &unk_1007AB120);
  v28 = *(v21 + 56);
  sub_100745684();
  sub_10000C8CC(v26, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(&v23[v28], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v23, &unk_10093D6E0, &unk_1007A6080);
}

unint64_t sub_10034FD20()
{
  result = qword_1009335B8;
  if (!qword_1009335B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009335B8);
  }

  return result;
}

uint64_t sub_10034FD7C()
{
  v0 = sub_10074A584();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_100039C50(v7, qword_10097FB68);
  v8 = sub_10000D0FC(v7, qword_10097FB68);
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v0, qword_10097D9F0);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_10000D198();
  v11 = sub_100753DF4();
  if (qword_100920230 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v0, qword_10097DA50);
  v10(v3, v12, v0);
  v13 = sub_100753DF4();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_10034FF9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100749D24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_1009336B8, &qword_1007BAD48);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10000C518(&qword_100924B30, &unk_1007A8690);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = sub_10074DDD4();
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v82 - v26;
  sub_10074DDB4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_100920998 != -1)
  {
    swift_once();
  }

  v87 = v10;
  v33 = sub_10000D0FC(v10, qword_10097FB68);
  sub_100352B50(v33, &v5[v32]);
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label] = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_100016B4C(&v34[v35], v17, &qword_100924B30, &unk_1007A8690);
  sub_100016B4C(v22, &v17[v36], &qword_100924B30, &unk_1007A8690);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v83;
    sub_100016B4C(v17, v83, &qword_100924B30, &unk_1007A8690);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v82;
      (*(v13 + 32))(v82, &v17[v36], v12);
      sub_100352C10(&qword_1009336C0, &type metadata accessor for MetadataRibbonItemType, &protocol conformance descriptor for MetadataRibbonItemType);
      v45 = v34;
      v46 = sub_100753014();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10000C8CC(v22, &qword_100924B30, &unk_1007A8690);
      v47(v41, v12);
      sub_10000C8CC(v17, &qword_100924B30, &unk_1007A8690);
      v40 = v87;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v84;
      sub_10074DDB4();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10000C8CC(v22, &qword_100924B30, &unk_1007A8690);
    (*(v13 + 8))(v41, v12);
    v40 = v87;
LABEL_8:
    sub_10000C8CC(v17, &qword_1009336B8, &qword_1007BAD48);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10000C8CC(v22, &qword_100924B30, &unk_1007A8690);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v87;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10000C8CC(v17, &qword_100924B30, &unk_1007A8690);
LABEL_11:
  v43 = v84;
  sub_10074DDC4();
LABEL_12:
  v48 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_metrics;
  v87 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v88 + 40))(&v34[v48], v43, v89);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  sub_1007432A4();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_configuration];
  v84 = v34;
  v57 = v85;
  sub_100352B50(&v52[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_configuration], v85);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = v59;
  v61.super.isa = sub_10074A564(v60).super.isa;
  v62 = [(objc_class *)v59 preferredContentSizeCategory];
  v63 = sub_100753924();

  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = [objc_opt_self() configurationWithFont:v61.super.isa scale:v64];

  sub_100352BB4(v57);
  sub_1007432D4();

  v66 = *&v56[*(v40 + 28)];
  v67 = *&v52[v53];
  v68 = v66;
  sub_100743254();

  v69 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v70 = *&v52[v69];
  v71 = sub_10074A584();
  v91[3] = v71;
  v91[4] = sub_100352C10(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v72 = sub_10000D134(v91);
  (*(*(v71 - 8) + 16))(v72, v56, v71);
  v73 = v70;
  sub_100745BC4();

  v74 = *&v52[v69];
  v75 = v88;
  v76 = v86;
  v77 = v89;
  (*(v88 + 16))(v86, &v84[v87], v89);
  v78 = v74;
  v79 = sub_10074DD94();
  (*(v75 + 8))(v76, v77);
  [v78 setNumberOfLines:v79];

  [v52 addSubview:*&v52[v69]];
  [v52 addSubview:*&v52[v53]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1007A5A00;
  *(v80 + 32) = sub_1007519E4();
  *(v80 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_100350A68()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = sub_100750354();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074DDD4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10074DDE4();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label];
  v27 = sub_100745C84();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView];
  v24 = sub_1007433C4();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  sub_10074DD64();
  sub_1007477B4();
  sub_10074DD84();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_100350D60(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = sub_10074DDD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074DDE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label);
  v20[12] = sub_100745C84();
  v20[13] = &protocol witness table for UILabel;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView);
  v20[7] = sub_1007433C4();
  v20[8] = &protocol witness table for UIView;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  sub_10074DD64();
  sub_10074DD74();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_100351020(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = sub_10074F284();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074DDD4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = sub_100753064();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_100351F6C(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = sub_100743304();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    sub_10074F294();
    sub_10074F254();
    (*(v8 + 8))(v10, v27);
    sub_10074F374();
    sub_1007442C4();
    sub_1007433C4();
    sub_100744244();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v29, &unk_1009276E0, &unk_1007A5C70);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_100351424(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkView);

    v13.is_nil = (a2 & 1) == 0;
    v13.value.super.isa = a1;
    sub_1007432F4(v13, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];
  }
}

void sub_100351620(uint64_t a1)
{
  sub_10074DDD4();
  if (v1 <= 0x3F)
  {
    sub_1000D9E5C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10035179C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074A584();
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

    return (v10 + 1);
  }
}

uint64_t sub_10035186C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10074A584();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100351924(uint64_t a1)
{
  result = sub_10074A584();
  if (v2 <= 0x3F)
  {
    result = sub_10000D198();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1003519B8(uint64_t a1, uint64_t a2)
{
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v2 = sub_1007478F4();
  v3 = sub_100747914();
  sub_100351020(v2, v3, v4, v6);

  return result;
}

uint64_t sub_100351A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30, &unk_1007A8690);
}

uint64_t sub_100351AD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30, &unk_1007A8690);
  return swift_endAccess();
}

void sub_100351BB0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_100351C7C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_100351D3C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100351D80(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100351E30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0, &unk_1007A5C70);
}

uint64_t sub_100351E98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0, &unk_1007A5C70);
  return swift_endAccess();
}

double sub_100351F6C(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = a4;
  v11.super.isa = sub_10074A564(v10).super.isa;
  v12 = [(objc_class *)a4 preferredContentSizeCategory];
  v13 = sub_100753924();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() configurationWithFont:v11.super.isa scale:v14];

  if (sub_10074F1A4())
  {
    v16 = v15;
    if (sub_10074F1D4())
    {
      v17 = sub_100743AC4();
      goto LABEL_11;
    }

    if (sub_10074F1C4())
    {
      v17 = sub_10056028C(v19, a1, v15);
LABEL_11:
      v20 = v17;

      if (v20)
      {
        [v20 size];
        v18 = v21;

        return v18;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((sub_10074F1D4() & 1) != 0 && (sub_10074F1F4(), v22))
  {
    v23 = v15;
    v24 = sub_100743AD4();

    [v24 size];
    v18 = v25;
  }

  else
  {

    sub_10074DDA4();
    sub_10000C888(v29, v29[3]);
    sub_100750574();
    sub_10000C620(v29);
    sub_10074F2A4();
    sub_100750504();
    sub_1007504B4();
    v18 = v26;

    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_100352270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003522C4(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v5 = sub_10074DDE4();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100750BD4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750E94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  __chkstk_darwin(v15);
  v48 = v41 - v16;
  v47 = sub_10074DDD4();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_1007478F4();
  v41[3] = sub_100747914();
  v41[2] = v22;
  sub_10074DDB4();
  if (qword_100920998 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v24 = sub_10000D0FC(v23, qword_10097FB68);
  v25 = [a4 traitCollection];
  sub_100351F6C(v21, v20, v24, v25);

  v26 = sub_100750F34();
  v41[1] = a4;
  v27 = v26;
  swift_allocObject();
  v28 = sub_100750F14();
  v41[0] = v21;
  v29 = v28;
  sub_100750E84();
  v30 = sub_10074A584();
  v56[3] = v30;
  v56[4] = sub_100352C10(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v31 = sub_10000D134(v56);
  (*(*(v30 - 8) + 16))(v31, v24, v30);
  sub_100750DE4();
  v32 = *(v9 + 8);
  v32(v11, v8);
  sub_10000C620(v56);
  sub_10074DD94();
  v33 = v48;
  sub_100750E74();
  v32(v14, v8);
  (*(v9 + 16))(v14, v33, v8);
  sub_100750BB4();
  v34 = v43;
  sub_100750BF4();
  sub_100750BA4();
  (*(v44 + 8))(v34, v46);
  sub_10000C824(v56, v55);
  v53 = v27;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v29;
  v35 = v45;
  v36 = v47;
  (*(v45 + 16))(v42, v20, v47);

  v37 = v49;
  sub_10074DD64();
  sub_10074DD74();
  v39 = v38;

  (*(v50 + 8))(v37, v51);
  sub_10000C620(v56);
  v32(v33, v8);
  (*(v35 + 8))(v20, v36);
  return v39;
}

uint64_t sub_1003528E8(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = v1;
  v3.super.isa = sub_10074A564(v2).super.isa;
  v4 = [(objc_class *)v1 preferredContentSizeCategory];
  v5 = sub_100753924();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() configurationWithFont:v3.super.isa scale:v6];

  return sub_1007432D4();
}

void sub_1003529D4(__n128 a1)
{
  sub_10074DDB4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artwork) = 0;
  v2 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_id;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_itemType;
  v4 = sub_100749D24();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v7 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_artworkSize);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_100920998 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v10 = sub_10000D0FC(v9, qword_10097FB68);
  sub_100352B50(v10, v1 + v8);
  sub_100754644();
  __break(1u);
}

uint64_t sub_100352B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100352BB4(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100352C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100352CA4(void *a1, double a2, double a3)
{
  v4 = sub_1007479B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100741FA4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921958 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v11, qword_100982728);
  (*(v12 + 16))(v14, v15, v11);
  v16 = [a1 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v17 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v17 = qword_10093FF58;
  }

  v18 = sub_10000D0FC(v4, v17);
  (*(v5 + 16))(v7, v18, v4);

  (*(v5 + 32))(v10, v7, v4);
  sub_100747964();
  sub_100747994();
  sub_100741F64();
  sub_100741FC4();
  sub_100353310(&qword_1009336D0, &type metadata accessor for InAppPurchaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseLockupViewLayout);
  sub_100750D34();
  v20 = v19;
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v11);
  return v20;
}

uint64_t sub_100353024()
{
  v26 = sub_10074EAB4();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_100747B94();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v17 = objc_msgSendSuper2(&v27, "init");
  sub_100747B84();
  sub_10074F674();
  v19 = v18;
  v21 = v20;
  v12(v9, v6);
  sub_100352CA4(v17, v19, v21);

  sub_100747BD4();
  sub_10074EA84();
  sub_100353310(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  sub_100754324();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_100353310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100353358()
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_1009820B0);
  qword_1009336F0 = v0;
  unk_1009336F8 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_1009336D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_100353414()
{
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_1009820C8);
  qword_100933718 = v0;
  unk_100933720 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_100933700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1003534F0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_100921000 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100980D38);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003536F4()
{
  sub_10000C518(&unk_100933230, &qword_1007BA6B0);
  sub_100168504();
  sub_100752954();
  return 3;
}

unint64_t sub_100353770(__n128 a1)
{
  result = qword_10092A000;
  if (!qword_10092A000)
  {
    sub_10074F984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A000);
  }

  return result;
}

unint64_t sub_1003537D0()
{
  result = qword_1009337A0;
  if (!qword_1009337A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009337A0);
  }

  return result;
}

unint64_t sub_100353828()
{
  result = qword_1009337A8;
  if (!qword_1009337A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009337A8);
  }

  return result;
}

BOOL sub_10035387C(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = fabs(a7);
  if (a7 > 1.79769313e308)
  {
    v19 = 1.79769313e308;
  }

  v20 = 0.0;
  if (v19 != 0.0)
  {
    v21 = a1;
    v22 = [a2 traitCollection];
    v23 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    *&v24[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = 4;
    v26 = &v24[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
    *v26 = a7;
    *(v26 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v24[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v22;
    *&v24[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v21;
    v47.receiver = v24;
    v47.super_class = v23;
    v27 = objc_msgSendSuper2(&v47, "init");
    if (qword_1009206A8 != -1)
    {
      swift_once();
    }

    v28 = qword_10092F470;
    v29 = [qword_10092F470 objectForKey:v27];
    if (v29)
    {
      v30 = v29;

      v20 = *&v30[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements + 8];
    }

    else
    {
      v31 = qword_1009206A0;
      v30 = v21;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_100750534();
      v33 = sub_10000D0FC(v32, qword_10092F458);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v18, v33, v32);
      (*(v34 + 56))(v18, 0, 1, v32);
      sub_100750964();
      sub_100750984();
      sub_100750974();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_10000C8CC(v18, &unk_100928A40, qword_1007A6630);
      v20 = a3 + a5 + v36;
      v41 = type metadata accessor for ExpandableTextView.CacheValue();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      *v43 = a7;
      v43[1] = v20;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      v46.receiver = v42;
      v46.super_class = v41;
      v44 = objc_msgSendSuper2(&v46, "init");
      [v28 setObject:v44 forKey:v27];
    }
  }

  return v20 > a8;
}

double sub_100353C14(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F944();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (sub_10074F8F4())
  {
    return v13;
  }

  sub_10074F954();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_1009209A0 != -1)
    {
      swift_once();
    }

    v15 = qword_1009336F0;
    sub_10000C888(qword_1009336D8, qword_1009336F0);
    sub_100536120(v15);
    sub_100750564();
    v13 = v16;
    v17 = *(v4 + 8);
    v17(v6, v3);
    if (qword_1009209A8 != -1)
    {
      swift_once();
    }

    v18 = qword_100933718;
    sub_10000C888(qword_100933700, qword_100933718);
    sub_100536120(v18);
    sub_100750564();
    v17(v6, v3);
    return v13;
  }

  if (qword_1009209B0 != -1)
  {
    swift_once();
  }

  v34 = sub_100750B04();
  sub_10000D0FC(v34, qword_100933728);
  if (qword_100921000 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  sub_10000D0FC(v19, qword_100980D38);
  v20 = [a2 traitCollection];
  sub_1007502D4();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v21 = sub_100753C14();
  sub_100750AD4();
  v23 = v22;
  sub_100753C24();
  v25 = v24;

  v26 = *(v4 + 8);
  v26(v6, v3);
  v27 = v23 - v25;
  if (qword_1009209B8 != -1)
  {
    swift_once();
  }

  v13 = ceil(v27);
  sub_10000D0FC(v34, qword_100933740);
  v28 = [a2 traitCollection];
  sub_1007502D4();
  v29 = sub_100753C14();
  sub_100750AD4();
  [v29 descender];

  v26(v6, v3);
  return v13;
}

void sub_10035414C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10000C518(&unk_100933240, &qword_1007AE3E8);
  sub_100168504();
  sub_100752E84();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = sub_10074F8D4();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = sub_10074F914();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002B1424;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1002B1408;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_100871F10;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_1002D8C5C(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_100353C14(a1, a6);
  }
}

void sub_100354424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v117 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_10074F964();
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v108 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v106 - v11;
  __chkstk_darwin(v12);
  v106 = &v106 - v13;
  __chkstk_darwin(v14);
  v107 = &v106 - v15;
  v16 = sub_10000C518(&qword_100930640, &qword_1007B7378);
  __chkstk_darwin(v16 - 8);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v106 - v19;
  __chkstk_darwin(v20);
  v110 = &v106 - v21;
  __chkstk_darwin(v22);
  v111 = &v106 - v23;
  v116 = sub_10074F944();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v106 - v27;
  v124 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_100353C14(a1, a5)}];

  v121 = a1;
  v30 = sub_10074F914();
  v113 = swift_getObjectType();
  v31 = [a5 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100047814;
  *(v35 + 24) = v34;
  v129 = sub_1000B18A8;
  v130 = v35;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_100047044;
  v128 = &unk_100871E20;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a5 pageMarginInsets];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v124;
  v48 = [v124 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v50 = v49;
  v52 = v51;

  v120 = v38;
  LODWORD(v113) = sub_10035387C(v38, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10074F954();
  v54 = v115;
  v55 = v114;
  v56 = v116;
  (*(v115 + 16))(v114, v28, v116);
  v57 = v55;
  v58 = v55;
  v59 = v56;
  v60 = (*(v54 + 88))(v58, v56);
  v61 = v122;
  v62 = v123;
  if (v60 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v60 == enum case for Paragraph.Style.article(_:))
  {
    v63 = a5;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v64 = sub_100753DF4();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    v63 = a5;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v64 = sub_100753DD4();
LABEL_6:
    v65 = v64;
    (*(v54 + 8))(v28, v59);
    goto LABEL_7;
  }

  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v65 = sub_100753DD4();
  ObjectType = a5;
  v97 = *(v54 + 8);
  v97(v28, v59);
  v97(v57, v59);
  v63 = ObjectType;
LABEL_7:
  ObjectType = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
  [*(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setTextColor:v65];

  sub_10000C518(&unk_100933230, &qword_1007BA6B0);
  sub_100168504();
  sub_100752964();
  v66 = aBlock;
  v67 = v118;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = sub_10074F8D4();
  }

  if ((v66 & v113 & 1) == 0)
  {
    v90 = v120;
    sub_10074F974();
    (*(v61 + 56))(v67, 0, 1, v62);
    v91 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
    v92 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = 0;
    v93 = *&ObjectType[v53];
    v94 = v90;
    [v93 setNumberOfLines:0];
    if (v92 != *(v53 + v91))
    {
      sub_100260550();
    }

    v86 = v94;
    sub_10025FF08(v94);
    *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v95 = v112;
    sub_1002B111C(v67, v112);
    v96 = (*(v68 + 48))(v95, 1, v62);
    v89 = v124;
    if (v96 == 1)
    {
      sub_10000C8CC(v95, &qword_100930640, &qword_1007B7378);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_10000C8CC(v67, &qword_100930640, &qword_1007B7378);
      [v89 setNeedsLayout];

      return;
    }

    v98 = v109;
    (*(v68 + 32))(v109, v95, v62);
    v99 = v108;
    (*(v68 + 16))(v108, v98, v62);
    v100 = (*(v68 + 88))(v99, v62);
    if (v100 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v100 == enum case for Paragraph.Alignment.center(_:))
      {
        v101 = 1;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.right(_:))
      {
        v101 = 2;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.justified(_:))
      {
        v101 = 3;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.localized(_:))
      {
        v101 = 4;
        goto LABEL_41;
      }

      (*(v68 + 8))(v99, v62);
    }

    v101 = 0;
LABEL_41:
    [*&ObjectType[v53] setTextAlignment:v101];
    (*(v68 + 8))(v98, v62);
    goto LABEL_42;
  }

  v69 = sub_10074F8E4();
  v70 = [v63 traitCollection];
  v71 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v69];
  v72 = [v69 length];
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = v70;
  *(v73 + 32) = v71;
  *(v73 + 40) = 1;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1002B1424;
  *(v74 + 24) = v73;
  v129 = sub_1002B1408;
  v130 = v74;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_100047044;
  v128 = &unk_100871E98;
  v75 = _Block_copy(&aBlock);
  v76 = v70;
  v77 = v71;

  [v69 enumerateAttributesInRange:0 options:v72 usingBlock:{0x100000, v75}];

  _Block_release(v75);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if ((v69 & 1) == 0)
  {
    v78 = v77;
    v67 = v111;
    sub_10074F974();
    v80 = v122;
    v79 = v123;
    (*(v122 + 56))(v67, 0, 1, v123);
    v81 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
    v82 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = 1;
    v83 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
    v84 = *&ObjectType[v53];
    v85 = v78;
    [v84 setNumberOfLines:v83];
    if (v82 != *(v53 + v81))
    {
      sub_100260550();
    }

    v86 = v85;
    sub_10025FF08(v85);
    *(v53 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v87 = v110;
    sub_1002B111C(v67, v110);
    v88 = (*(v80 + 48))(v87, 1, v79);
    v89 = v124;
    if (v88 == 1)
    {
      sub_10000C8CC(v87, &qword_100930640, &qword_1007B7378);
LABEL_46:
      [v53 setNeedsLayout];

      goto LABEL_47;
    }

    v102 = v107;
    (*(v80 + 32))(v107, v87, v79);
    v103 = v106;
    (*(v80 + 16))(v106, v102, v79);
    v104 = (*(v80 + 88))(v103, v79);
    if (v104 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v104 == enum case for Paragraph.Alignment.center(_:))
      {
        v105 = 1;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.right(_:))
      {
        v105 = 2;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.justified(_:))
      {
        v105 = 3;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.localized(_:))
      {
        v105 = 4;
        goto LABEL_45;
      }

      (*(v80 + 8))(v103, v79);
    }

    v105 = 0;
LABEL_45:
    [v84 setTextAlignment:v105];
    (*(v80 + 8))(v102, v79);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}

double sub_100355288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003552D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = sub_100749A94();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100750304();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100751344();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100751374();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = sub_100750B04();
  v90 = &protocol witness table for StaticDimension;
  sub_10000D134(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_10000D134(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  sub_100751354();
  sub_100749A44();
  sub_10035600C(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v27) = sub_100754324();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_1002A39F8(v37, &v40[v39]);
    swift_endAccess();
    sub_100228B80();
    sub_10000C8CC(v37, &qword_100933250, &unk_1007B3A50);
    sub_100749A54();
    v41 = v74;
    v42 = sub_100754324();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      sub_100751304();
      sub_10000C888(v88, v89);
      sub_100750574();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_10000C620(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_1002A39F8(v48, &v51[v50]);
    swift_endAccess();
    sub_100228B80();
    sub_10000C8CC(v48, &qword_100933250, &unk_1007B3A50);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    sub_100749A24();
    v53 = v74;
    v54 = sub_100754324();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = sub_100742E24();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = sub_100745E94();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = sub_10074F8B4();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_100656038(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10000C8CC(v68, &unk_100925520, &unk_1007A8120);
  v58[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v58 setNeedsLayout];
  sub_10000C8CC(v66, &unk_100925990, qword_1007BB900);
  sub_10000C8CC(v64, &unk_1009259A0, &unk_1007B0610);
  sub_10000C8CC(v62, &unk_100925530, &unk_1007A8130);
  sub_10000C8CC(v60, &unk_100925540, &qword_1007A8140);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_100355EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v2 = sub_100747064();
  sub_10000D0FC(v2, qword_10097E3A8);
  sub_100746F34();
  sub_10074A254();
  v3 = sub_10074A274();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10035600C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100356054(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v5 = sub_100754724();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100751344();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100751374();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100749A94();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749A44();
  sub_10035600C(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v21 = sub_100754324();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v40 = sub_100750B04();
  v41 = &protocol witness table for StaticDimension;
  sub_10000D134(v39);
  v38[3] = v7;
  v38[4] = &protocol witness table for FontSource;
  v22 = sub_10000D134(v38);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v34;
    sub_100751354();
    sub_100751304();
    (*(v35 + 8))(v24, v36);
    v25 = v40;
    sub_10000C888(v39, v40);
    v26 = v31;
    sub_100536120(v25);
    v27 = v37;
    sub_100750564();
    (*(v32 + 8))(v26, v33);
    sub_10000C620(v39);
  }

  else
  {
    v28 = v34;
    sub_100751354();
    v27 = v37;
    sub_100751334();
    (*(v35 + 8))(v28, v36);
  }

  swift_getObjectType();
  sub_100229A94(v27);
  return a1;
}

uint64_t sub_100356600(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100751344();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100751374();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = sub_100750B04();
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v5 + 8))(v7, v4);
  sub_100751354();
  swift_getObjectType();
  sub_100751334();
  (*(v13 + 8))(v16, v12);
  sub_100229A94(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = sub_100749A04();

  return v21;
}

unint64_t sub_10035694C()
{
  result = qword_1009337F8;
  if (!qword_1009337F8)
  {
    type metadata accessor for SmallContactCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009337F8);
  }

  return result;
}

double sub_1003569A4()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100356A88();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100356A88()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FEA4();
  sub_100747B84();
  sub_10074F674();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100747B84();
  sub_10074F5C4();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_100747B94();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_10074FE74();
  v13 = v12;

  return v13;
}

char *sub_100356C40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100921168 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981170);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v18] = sub_100745C74();
  v24 = OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = sub_1007469A4();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  sub_100745BF4();

  v35 = *&v30[v32];
  sub_10000D198();
  v36 = v35;
  v37 = sub_100753DF4();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_100357070()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AEE4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = sub_100745C84();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  sub_10074AEC4();
  [v0 bounds];
  sub_10074AED4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell(uint64_t a1)
{
  result = qword_100933830;
  if (!qword_100933830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100357328()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100921168 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100981170);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  sub_100754644();
  __break(1u);
}

unint64_t sub_1003575BC()
{
  result = qword_10093DD00;
  if (!qword_10093DD00)
  {
    type metadata accessor for VideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DD00);
  }

  return result;
}

void sub_100357614(uint64_t a1, char a2)
{
  v5 = *&v2[qword_10093CB50];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_100357938();
    v8 = v2;
    v9 = sub_100753974();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_1003579BC;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000CF7B0;
    v13[3] = &unk_100872048;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_1003577E0()
{
  v1 = [*(v0 + qword_10093CB50) image];

  return v1;
}

void sub_100357824(void *a1)
{
  [*(v1 + qword_10093CB50) setImage:a1];
}

void (*sub_100357878(void *a1))(id *a1)
{
  v3 = *(v1 + qword_10093CB50);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_1003578E0;
}

void sub_1003578E0(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

unint64_t sub_100357938()
{
  result = qword_100933840;
  if (!qword_100933840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100933840);
  }

  return result;
}

uint64_t sub_100357984()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003579E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003579F8()
{
  v1 = sub_10000C518(&qword_1009308D8, &qword_1007B76B8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000C518(&unk_1009308E0, &unk_1007B76C0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000C518(&qword_100933FF0, &qword_1007BB1D8);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000C518(&unk_100930838, &qword_1007BB150);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10097EE08);
  sub_100749244();
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_10000C518(&qword_100933FF8, &qword_1007BB1E0);
  sub_100752584();

  sub_10000C620(v31);
  (*(v10 + 8))(v12, v9);
  sub_100749254();
  sub_10000C518(&qword_100930848, &qword_1007B76A0);
  v13 = sub_10002DDC8(&qword_100930850, &qword_100930848, &qword_1007B76A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v14 = v21;
  v20[1] = v13;
  sub_100752584();

  sub_10000C620(v31);
  (*(v29 + 8))(v14, v30);
  sub_10074B874();
  sub_10000C518(&qword_100934000, qword_1007BB1E8);
  sub_10002DDC8(&qword_100934008, &qword_100934000, qword_1007BB1E8, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v15 = v22;
  sub_100752584();

  sub_10000C620(v31);
  (*(v23 + 8))(v15, v24);
  sub_1007492B4();
  sub_10000C518(&qword_100930900, &unk_1007BB170);
  sub_10002DDC8(&qword_100930908, &qword_100930900, &unk_1007BB170, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v16 = v25;
  sub_100752584();

  sub_10000C620(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_100930690))
  {

    sub_100752574();
    v17 = v28;
    sub_100752584();

    sub_10000C620(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000C8CC(v17, &qword_1009308D8, &qword_1007B76B8);
}

uint64_t sub_1003580A0()
{
  v1 = sub_10000C518(&qword_1009308D8, &qword_1007B76B8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000C518(&unk_1009308E0, &unk_1007B76C0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000C518(&qword_100933FC8, &qword_1007BB1C0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000C518(&unk_100930838, &qword_1007BB150);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10097EE08);
  sub_100749244();
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_10000C518(&qword_100933FD0, &qword_1007BB1C8);
  sub_100752584();

  sub_10000C620(v31);
  (*(v10 + 8))(v12, v9);
  sub_100749254();
  sub_10000C518(&qword_100930848, &qword_1007B76A0);
  v13 = sub_10002DDC8(&qword_100930850, &qword_100930848, &qword_1007B76A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v14 = v21;
  v20[1] = v13;
  sub_100752584();

  sub_10000C620(v31);
  (*(v29 + 8))(v14, v30);
  sub_10074B874();
  sub_10000C518(&qword_100933FD8, &qword_1007BB1D0);
  sub_10002DDC8(&qword_100933FE0, &qword_100933FD8, &qword_1007BB1D0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v15 = v22;
  sub_100752584();

  sub_10000C620(v31);
  (*(v23 + 8))(v15, v24);
  sub_1007492B4();
  sub_10000C518(&qword_100930900, &unk_1007BB170);
  sub_10002DDC8(&qword_100930908, &qword_100930900, &unk_1007BB170, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v16 = v25;
  sub_100752584();

  sub_10000C620(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_100930690))
  {

    sub_100752574();
    v17 = v28;
    sub_100752584();

    sub_10000C620(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000C8CC(v17, &qword_1009308D8, &qword_1007B76B8);
}

uint64_t sub_100358748()
{
  v1 = sub_10000C518(&qword_1009308D8, &qword_1007B76B8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000C518(&unk_1009308E0, &unk_1007B76C0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000C518(&qword_100933FB0, &qword_1007BB1A8);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000C518(&unk_100930838, &qword_1007BB150);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10097EE08);
  sub_100749244();
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_10000C518(&qword_100927D90, &qword_1007BB1B0);
  sub_100752584();

  sub_10000C620(v31);
  (*(v10 + 8))(v12, v9);
  sub_100749254();
  sub_10000C518(&qword_100930848, &qword_1007B76A0);
  v13 = sub_10002DDC8(&qword_100930850, &qword_100930848, &qword_1007B76A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v14 = v21;
  v20[1] = v13;
  sub_100752584();

  sub_10000C620(v31);
  (*(v29 + 8))(v14, v30);
  sub_10074B874();
  sub_10000C518(&qword_100933FB8, &qword_1007BB1B8);
  sub_10002DDC8(&qword_100933FC0, &qword_100933FB8, &qword_1007BB1B8, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v15 = v22;
  sub_100752584();

  sub_10000C620(v31);
  (*(v23 + 8))(v15, v24);
  sub_1007492B4();
  sub_10000C518(&qword_100930900, &unk_1007BB170);
  sub_10002DDC8(&qword_100930908, &qword_100930900, &unk_1007BB170, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v16 = v25;
  sub_100752584();

  sub_10000C620(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_100930690))
  {

    sub_100752574();
    v17 = v28;
    sub_100752584();

    sub_10000C620(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000C8CC(v17, &qword_1009308D8, &qword_1007B76B8);
}

uint64_t sub_100358DF0()
{
  v1 = sub_10000C518(&qword_1009308D8, &qword_1007B76B8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000C518(&unk_1009308E0, &unk_1007B76C0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000C518(&qword_100933F58, &qword_1007BB148);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000C518(&unk_100930838, &qword_1007BB150);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10097EE08);
  sub_100749244();
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_10000C518(&qword_100933F60, &unk_1007BB158);
  sub_100752584();

  sub_10000C620(v31);
  (*(v10 + 8))(v12, v9);
  sub_100749254();
  sub_10000C518(&qword_100930848, &qword_1007B76A0);
  v13 = sub_10002DDC8(&qword_100930850, &qword_100930848, &qword_1007B76A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v14 = v21;
  v20[1] = v13;
  sub_100752584();

  sub_10000C620(v31);
  (*(v29 + 8))(v14, v30);
  sub_10074B874();
  sub_10000C518(&qword_100933F68, &qword_1007BB168);
  sub_10002DDC8(&qword_100933F70, &qword_100933F68, &qword_1007BB168, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v15 = v22;
  sub_100752584();

  sub_10000C620(v31);
  (*(v23 + 8))(v15, v24);
  sub_1007492B4();
  sub_10000C518(&qword_100930900, &unk_1007BB170);
  sub_10002DDC8(&qword_100930908, &qword_100930900, &unk_1007BB170, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v16 = v25;
  sub_100752584();

  sub_10000C620(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_100930690))
  {

    sub_100752574();
    v17 = v28;
    sub_100752584();

    sub_10000C620(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000C8CC(v17, &qword_1009308D8, &qword_1007B76B8);
}

uint64_t sub_100359498()
{
  v1 = sub_10000C518(&qword_1009308D8, &qword_1007B76B8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000C518(&unk_1009308E0, &unk_1007B76C0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000C518(&qword_100933F88, &qword_1007BB190);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000C518(&unk_100930838, &qword_1007BB150);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10097EE08);
  sub_100749244();
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_10000C518(&qword_100933F90, &qword_1007BB198);
  sub_100752584();

  sub_10000C620(v31);
  (*(v10 + 8))(v12, v9);
  sub_100749254();
  sub_10000C518(&qword_100930848, &qword_1007B76A0);
  v13 = sub_10002DDC8(&qword_100930850, &qword_100930848, &qword_1007B76A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v14 = v21;
  v20[1] = v13;
  sub_100752584();

  sub_10000C620(v31);
  (*(v29 + 8))(v14, v30);
  sub_10074B874();
  sub_10000C518(&qword_100933F98, &qword_1007BB1A0);
  sub_10002DDC8(&qword_100933FA0, &qword_100933F98, &qword_1007BB1A0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v15 = v22;
  sub_100752584();

  sub_10000C620(v31);
  (*(v23 + 8))(v15, v24);
  sub_1007492B4();
  sub_10000C518(&qword_100930900, &unk_1007BB170);
  sub_10002DDC8(&qword_100930908, &qword_100930900, &unk_1007BB170, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v16 = v25;
  sub_100752584();

  sub_10000C620(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_100930690))
  {

    sub_100752574();
    v17 = v28;
    sub_100752584();

    sub_10000C620(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000C8CC(v17, &qword_1009308D8, &qword_1007B76B8);
}

void sub_100359B40(uint64_t a1, void (*a2)(char *), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v7 = v5;
  v32 = sub_10000C518(&qword_1009308D0, &qword_1007A9960);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v31 - v10;
  v12 = sub_10000C518(&qword_100930828, &qword_1007B7688);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_10000C518(&qword_100930830, &unk_1007B7690);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  a2(v14);
  sub_10000C8CC(v14, &qword_100930828, &qword_1007B7688);
  v17 = sub_1007451B4();
  v18 = qword_100930688;
  if (v17)
  {
    swift_beginAccess();
    v19 = *&v7[v18];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    sub_1007451A4();
    sub_10074CD24();
  }

  else
  {
    swift_beginAccess();
    v21 = *&v7[v18];
    if (!v21)
    {
      goto LABEL_7;
    }

    v20 = v21;
    sub_1007451A4();
    sub_1007451C4();
    sub_10074CD94();
  }

  (*(v9 + 8))(v11, v32);
LABEL_7:
  v22 = v33;
  v23 = v35;
  sub_10000C518(v33, v35);
  sub_10002DDC8(v34, v22, v23, &unk_1007B7520);
  sub_10074E6E4();
  v24 = [v7 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 window];

  if (v26)
  {

    v27 = [v7 collectionView];
    if (!v27)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v28 = v27;
    sub_100749AB4();
  }

  v29 = [v7 view];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  [v29 bounds];

  sub_10074DA54();
  if (sub_100745194())
  {
    sub_100744294();
  }
}

void sub_100359F58(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_100752294();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016B4C(a2, v97, &unk_100923520, &qword_1007A5A70);
  if (v98)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      *v17 = sub_100753774();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = sub_1007522C4();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_100931330;
        v82 = xmmword_100931340;
        v83 = xmmword_100931350;
        v79 = xmmword_100931310;
        v80 = xmmword_100931320;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_100931310;
        v92 = xmmword_100931320;
        v94 = xmmword_100931340;
        v95 = xmmword_100931350;
        v84 = qword_100931360;
        v90 = v78;
        v96 = qword_100931360;
        v93 = xmmword_100931330;
        sub_100016B4C(&v79, &v67, &unk_1009308C0, &unk_1007A8BB0);
        xmmword_100931330 = v87;
        xmmword_100931340 = v88;
        xmmword_100931350 = v89;
        qword_100931360 = v90;
        xmmword_100931310 = v85;
        xmmword_100931320 = v86;
        sub_10000C8CC(&v91, &unk_1009308C0, &unk_1007A8BB0);
        v29 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
        v30 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1001664D8(&v73, &v67);
        sub_1007526C4();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10000C8CC(v13, &unk_100923960, &qword_1007A6240);
        }

        else
        {
          sub_1003C0E00(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_100931330;
        v70 = xmmword_100931340;
        v71 = xmmword_100931350;
        v72 = qword_100931360;
        v67 = xmmword_100931310;
        v68 = xmmword_100931320;
        xmmword_100931310 = v79;
        xmmword_100931320 = v80;
        xmmword_100931330 = v81;
        xmmword_100931340 = v82;
        xmmword_100931350 = v83;
        qword_100931360 = v84;
        sub_10000C8CC(&v67, &unk_1009308C0, &unk_1007A8BB0);
        sub_100166534(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10000C8CC(v97, &unk_100923520, &qword_1007A5A70);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v57 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10000C8CC(v10, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = sub_1007532A4();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = sub_100741704().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  *v17 = sub_100753774();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = sub_1007522C4();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_100931330;
  v82 = xmmword_100931340;
  v83 = xmmword_100931350;
  v79 = xmmword_100931310;
  v80 = xmmword_100931320;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_100931310;
  v92 = xmmword_100931320;
  v94 = xmmword_100931340;
  v95 = xmmword_100931350;
  v84 = qword_100931360;
  v90 = v78;
  v96 = qword_100931360;
  v93 = xmmword_100931330;
  sub_100016B4C(&v79, &v67, &unk_1009308C0, &unk_1007A8BB0);
  xmmword_100931330 = v87;
  xmmword_100931340 = v88;
  xmmword_100931350 = v89;
  qword_100931360 = v90;
  xmmword_100931310 = v85;
  xmmword_100931320 = v86;
  sub_10000C8CC(&v91, &unk_1009308C0, &unk_1007A8BB0);
  v52 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v53 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1001664D8(&v73, &v67);
  v54 = v61;
  sub_1007526C4();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10000C8CC(v54, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    sub_1003C0E00(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_100931330;
  v70 = xmmword_100931340;
  v71 = xmmword_100931350;
  v72 = qword_100931360;
  v67 = xmmword_100931310;
  v68 = xmmword_100931320;
  xmmword_100931310 = v79;
  xmmword_100931320 = v80;
  xmmword_100931330 = v81;
  xmmword_100931340 = v82;
  xmmword_100931350 = v83;
  qword_100931360 = v84;
  sub_10000C8CC(&v67, &unk_1009308C0, &unk_1007A8BB0);
  sub_100166534(&v73);

  (*(v51 + 8))(v63, v60);
}

uint64_t (*sub_10035A97C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AA0C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AA9C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AB2C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035ABBC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100362F3C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AC4C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035ACDC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AD6C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100362CC8;
}

uint64_t (*sub_10035ADFC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

uint64_t (*sub_10035AE8C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10036316C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100363178;
}

void (*sub_10035AF50(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100363060;
}

void (*sub_10035AFB4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362FDC;
}

void (*sub_10035B018(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362F58;
}

void (*sub_10035B07C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362D2C;
}

void (*sub_10035B0E0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362EB4;
}

uint64_t (*sub_10035B144(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003631A0;
}

uint64_t (*sub_10035B1A8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003631A0;
}

uint64_t (*sub_10035B20C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362F38;
}

uint64_t (*sub_10035B270(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003631A0;
}

uint64_t (*sub_10035B2D4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003631A0;
}

id sub_10035B338(int a1, id a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  result = [a2 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_10000C518(a3, a4);
    sub_10002DDC8(a5, a3, a4, &unk_1007B7520);
    return sub_10074DA54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_10035B400(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10036302C;
}

id (*sub_10035B464(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362FA8;
}

id (*sub_10035B4C8(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362F04;
}

id (*sub_10035B52C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362CF8;
}

id (*sub_10035B590(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362E80;
}

uint64_t sub_10035B5F4(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_100016B4C(a2, &v9, &unk_100923520, &qword_1007A5A70);
  sub_100016B4C(&v8, &v6, &unk_100930870, &unk_1007BB180);
  v4 = v6;
  sub_100016B4C(v7, v5, &unk_100923520, &qword_1007A5A70);

  sub_100359F58(v2, v5);

  sub_10000C8CC(&v8, &unk_100930870, &unk_1007BB180);
  sub_10000C8CC(&v4, &unk_100930870, &unk_1007BB180);
  return sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
}

char *sub_10035B708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_100933848) = 0x4024000000000000;
  *(v2 + qword_100933850) = 0;
  *(v2 + qword_100933858) = 0;
  *(v2 + qword_10097FBB8) = 0;
  *(v2 + qword_10097FBC0) = 0;
  *(v2 + qword_10097FBC8) = 0;
  v6 = qword_10097FBD0;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_10097FBD8) = 0;
  *(v3 + qword_100933860) = 0;
  *(v3 + qword_10097FBE0) = 0;
  *(v3 + qword_10097FBE8) = 0;
  *(v3 + qword_100933870) = 0;
  v7 = qword_100933880;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_100933888) = 0;
  *(v3 + qword_100933890) = _swiftEmptySetSingleton;
  sub_100744AC4();
  sub_1007526E4();
  *(v3 + qword_100933868) = sub_1007448A4() & 1;
  sub_10074D4D4();
  sub_1007526E4();
  *(v3 + qword_100933878) = v19;

  v9 = sub_100466910(a1, a2);
  v10 = qword_10097EE38;
  v11 = *&v9[qword_10097EE38];
  v12 = v9;
  v13 = v11;
  sub_10035BA88();
  sub_100362DF0(&qword_100933E88, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_1007D8564);
  sub_100749AD4();

  v14 = *&v9[v10];

  sub_100749AD4();

  v15 = *&v9[v10];

  v16 = qword_100933880;
  sub_100362DF0(&qword_100933E90, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_1007B515C);

  sub_100749AD4();

  v17 = *&v12[v16];
  sub_10000C518(&qword_100933E98, &unk_1007BB0A0);

  sub_1007526C4();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_10035BA88()
{
  v1 = qword_100933888;
  if (*&v0[qword_100933888])
  {
    v2 = *&v0[qword_100933888];
  }

  else
  {
    v3 = *&v0[qword_10097EE08];
    v4 = *&v0[qword_10097EE18];
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v5 = v0;
    v2 = sub_10072C9D4(v3, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10035BB6C()
{
  v1 = qword_100933858;
  if (*(v0 + qword_100933858))
  {
    v2 = *(v0 + qword_100933858);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008720A0;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_1003625F4;
    *(v2 + 80) = v3;

    sub_1000164A8(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10035BC80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100743B04();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = sub_100743AE4();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v43._object = 0x80000001007785B0;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_1007458B4(v43, v45);
  v15 = sub_100753064();

  [v14 setTitle:v15];

  v16 = v14;
  v44._countAndFlagsBits = 0xD00000000000002BLL;
  v44._object = 0x80000001007785E0;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_1007458B4(v44, v46);
  v17 = sub_100753064();

  [v16 setAccessibilityLabel:v17];

  v18 = qword_100933860;
  v19 = *&v1[qword_100933860];
  *&v1[qword_100933860] = v16;
  v20 = v16;

  v21 = *&v1[v18];
  if (v21)
  {
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v22 = v21;
    sub_100752A74();
    sub_10000C8CC(v39, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(&v40, &unk_100923520, &qword_1007A5A70);
    sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    sub_100753A74();

    (*(v4 + 8))(v6, v3);
  }

  v23 = [v1 navigationItem];
  v24 = [v23 rightBarButtonItems];

  if (v24)
  {
    sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    v25 = sub_1007532A4();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  *&v39[0] = v25;
  if (v25 >> 62 && sub_100754664() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v20;
  sub_10015D700(0, 0, v26);

  v27 = [v1 navigationItem];
  sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
  isa = sub_100753294().super.isa;
  [v27 setRightBarButtonItems:isa];

  sub_10035BB6C();
  sub_100362DF0(&qword_100933F80, type metadata accessor for UberedPageScrollObserver, &unk_1007BDF9C);
  sub_100749AD4();

  v29 = [v1 navigationItem];
  [v29 setTitleView:*&v1[qword_10097FBD0]];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v40 = 0u;
  v41 = 0u;
  sub_100752A84();
  sub_10000C8CC(&v40, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v4 + 8))(v6, v3);
  v32 = [v1 view];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v34 = swift_allocObject();
  v38 = xmmword_1007A5A00;
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_1007519E4();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_100753D44();
  swift_unknownObjectRelease();

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 32) = sub_1007516F4();
    *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100753D44();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_10035C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];
    [v5 invalidateLayout];

    v6 = [v4 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10035C4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10074C8A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = [v8 traitCollection];
    v10 = sub_1007537D4();

    v11 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v10 & 1) == 0)
    {
      v11 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v4 + 104))(v6, *v11, v3);
    sub_10074C894();

    (*(v4 + 8))(v6, v3);
    v12 = [v8 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10035C658(void *a1)
{
  v1 = a1;
  sub_10035BC80();
}

uint64_t sub_10035C6A0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10074D4C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074BC04();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_10035C91C();
  if (*(v2 + qword_100933868) == 1)
  {
    v14 = qword_100933870;
    if ((*(v2 + qword_100933870) & 1) == 0)
    {
      sub_10074B294();
      sub_100752764();
      sub_100752D34();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      sub_10074B284();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  sub_10074D484();
  return (*(v6 + 8))(v8, v5);
}